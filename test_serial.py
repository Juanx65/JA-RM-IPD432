from serial import Serial
from random import randint
import time

class zynqTest():
    def __init__(self, port='COM8', baudrate=115200, vectorSize=128 ,tests=1):
        self.serial = Serial(port = port,baudrate = baudrate)
        self.expected = 0
        self.vectorA  = []
        self.vectorB = []
        self.vectorConcat = []
        self.tests = tests
        self.vectorSize = vectorSize

    def sendVector(self, vector):
        for element in vector:
            self.serial.write((str(element) + "\n").encode('ascii'))
            time.sleep(0.01)

    def recieveResult(self):

        line = self.serial.readline().decode('ascii')


        while (line == None or line == "\n"):
            time.sleep(0.2)
        y_add, y_sqrt = line.strip().split(":")[1].split(";")
        return float(y_add), float(y_sqrt)

    def generateVecs(self):
        res = 0

        self.vectorA = []
        self.vectorB = []

        for i in range(self.vectorSize):
            randA = randint(0,256)
            randB = randint(0,256)

            self.vectorA.append(randA)
            self.vectorB.append(randB)

            res += (randA - randB)**2

        self.expected = res**0.5

        self.vectorConcat = self.vectorA + self.vectorB

    def closeSerial(self):
        self.serial.close()
        self.serial = None

    def runTest(self):

        result = 0

        for tst in range(self.tests):
            self.generateVecs()
            self.sendVector(self.vectorConcat)
            y_add, y_sqrt  = self.recieveResult()

            res_err = 100*abs((y_sqrt - self.expected)/self.expected)

            print("HARDARE RESULT:", y_sqrt, "\t SOFTWARE RESULT: ", self.expected)


            if (res_err > 5):
                result+=1
                print("TRIAL: %d FAILED", tst)




        return result


if __name__ == "__main__":
    zynqDev = zynqTest('COM10', 115200, 16, 10)

    print("Listening...")


    zynqDev.generateVecs()

    print(zynqDev.vectorA)
    print(zynqDev.vectorB)

    res = zynqDev.runTest()

    if res:
        print(50*"*")
        print("*" + 22 * "" + "FAIL" + 22*"" + "*")
        print(50*"*")
    else:
        print(50*"*")
        print("*" + 22 * "" + "PASS" + 22*"" + "*")
        print(50*"*")

    print(res)

    zynqDev.closeSerial()
