; ModuleID = 'C:/Users/juan_/Documents/FPGA/JA-RM-IPD432/EucHLS/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_eucDistHW_ir(i32* %A, i32* %B, i32* %C) local_unnamed_addr #1 {
entry:
  %A_copy_0 = alloca i32, align 512
  %A_copy_1 = alloca i32, align 512
  %A_copy_2 = alloca i32, align 512
  %A_copy_3 = alloca i32, align 512
  %A_copy_4 = alloca i32, align 512
  %A_copy_5 = alloca i32, align 512
  %A_copy_6 = alloca i32, align 512
  %A_copy_7 = alloca i32, align 512
  %A_copy_8 = alloca i32, align 512
  %A_copy_9 = alloca i32, align 512
  %A_copy_10 = alloca i32, align 512
  %A_copy_11 = alloca i32, align 512
  %A_copy_12 = alloca i32, align 512
  %A_copy_13 = alloca i32, align 512
  %A_copy_14 = alloca i32, align 512
  %A_copy_15 = alloca i32, align 512
  %B_copy_0 = alloca i32, align 512
  %B_copy_1 = alloca i32, align 512
  %B_copy_2 = alloca i32, align 512
  %B_copy_3 = alloca i32, align 512
  %B_copy_4 = alloca i32, align 512
  %B_copy_5 = alloca i32, align 512
  %B_copy_6 = alloca i32, align 512
  %B_copy_7 = alloca i32, align 512
  %B_copy_8 = alloca i32, align 512
  %B_copy_9 = alloca i32, align 512
  %B_copy_10 = alloca i32, align 512
  %B_copy_11 = alloca i32, align 512
  %B_copy_12 = alloca i32, align 512
  %B_copy_13 = alloca i32, align 512
  %B_copy_14 = alloca i32, align 512
  %B_copy_15 = alloca i32, align 512
  %C_copy = alloca [1 x i32], align 512
  %0 = bitcast i32* %A to [16 x i32]*
  %1 = bitcast i32* %B to [16 x i32]*
  %2 = bitcast i32* %C to [1 x i32]*
  call void @copy_in([16 x i32]* %0, i32* nonnull align 512 %A_copy_0, i32* nonnull align 512 %A_copy_1, i32* nonnull align 512 %A_copy_2, i32* nonnull align 512 %A_copy_3, i32* nonnull align 512 %A_copy_4, i32* nonnull align 512 %A_copy_5, i32* nonnull align 512 %A_copy_6, i32* nonnull align 512 %A_copy_7, i32* nonnull align 512 %A_copy_8, i32* nonnull align 512 %A_copy_9, i32* nonnull align 512 %A_copy_10, i32* nonnull align 512 %A_copy_11, i32* nonnull align 512 %A_copy_12, i32* nonnull align 512 %A_copy_13, i32* nonnull align 512 %A_copy_14, i32* nonnull align 512 %A_copy_15, [16 x i32]* %1, i32* nonnull align 512 %B_copy_0, i32* nonnull align 512 %B_copy_1, i32* nonnull align 512 %B_copy_2, i32* nonnull align 512 %B_copy_3, i32* nonnull align 512 %B_copy_4, i32* nonnull align 512 %B_copy_5, i32* nonnull align 512 %B_copy_6, i32* nonnull align 512 %B_copy_7, i32* nonnull align 512 %B_copy_8, i32* nonnull align 512 %B_copy_9, i32* nonnull align 512 %B_copy_10, i32* nonnull align 512 %B_copy_11, i32* nonnull align 512 %B_copy_12, i32* nonnull align 512 %B_copy_13, i32* nonnull align 512 %B_copy_14, i32* nonnull align 512 %B_copy_15, [1 x i32]* %2, [1 x i32]* nonnull align 512 %C_copy)
  %3 = bitcast [1 x i32]* %C_copy to i32*
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i32* %3, i32 2, i32 0, i32 1) ], !dbg !5
  call void @apatb_eucDistHW_hw(i32* %A_copy_0, i32* %A_copy_1, i32* %A_copy_2, i32* %A_copy_3, i32* %A_copy_4, i32* %A_copy_5, i32* %A_copy_6, i32* %A_copy_7, i32* %A_copy_8, i32* %A_copy_9, i32* %A_copy_10, i32* %A_copy_11, i32* %A_copy_12, i32* %A_copy_13, i32* %A_copy_14, i32* %A_copy_15, i32* %B_copy_0, i32* %B_copy_1, i32* %B_copy_2, i32* %B_copy_3, i32* %B_copy_4, i32* %B_copy_5, i32* %B_copy_6, i32* %B_copy_7, i32* %B_copy_8, i32* %B_copy_9, i32* %B_copy_10, i32* %B_copy_11, i32* %B_copy_12, i32* %B_copy_13, i32* %B_copy_14, i32* %B_copy_15, i32* %3)
  call void @copy_out([16 x i32]* %0, i32* nonnull align 512 %A_copy_0, i32* nonnull align 512 %A_copy_1, i32* nonnull align 512 %A_copy_2, i32* nonnull align 512 %A_copy_3, i32* nonnull align 512 %A_copy_4, i32* nonnull align 512 %A_copy_5, i32* nonnull align 512 %A_copy_6, i32* nonnull align 512 %A_copy_7, i32* nonnull align 512 %A_copy_8, i32* nonnull align 512 %A_copy_9, i32* nonnull align 512 %A_copy_10, i32* nonnull align 512 %A_copy_11, i32* nonnull align 512 %A_copy_12, i32* nonnull align 512 %A_copy_13, i32* nonnull align 512 %A_copy_14, i32* nonnull align 512 %A_copy_15, [16 x i32]* %1, i32* nonnull align 512 %B_copy_0, i32* nonnull align 512 %B_copy_1, i32* nonnull align 512 %B_copy_2, i32* nonnull align 512 %B_copy_3, i32* nonnull align 512 %B_copy_4, i32* nonnull align 512 %B_copy_5, i32* nonnull align 512 %B_copy_6, i32* nonnull align 512 %B_copy_7, i32* nonnull align 512 %B_copy_8, i32* nonnull align 512 %B_copy_9, i32* nonnull align 512 %B_copy_10, i32* nonnull align 512 %B_copy_11, i32* nonnull align 512 %B_copy_12, i32* nonnull align 512 %B_copy_13, i32* nonnull align 512 %B_copy_14, i32* nonnull align 512 %B_copy_15, [1 x i32]* %2, [1 x i32]* nonnull align 512 %C_copy)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed", [1 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq [1 x i32]* %0, null
  %3 = icmp eq [1 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  %5 = bitcast [1 x i32]* %0 to i8*
  %6 = bitcast [1 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #4

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a16i32.15.16(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_8, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_9, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_10, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_11, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_12, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_13, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_14, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_15, [16 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #3 {
entry:
  %1 = icmp eq i32* %_0, null
  %2 = icmp eq [16 x i32]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  %_01 = bitcast i32* %_0 to i8*
  %_16 = bitcast i32* %_1 to i8*
  %_27 = bitcast i32* %_2 to i8*
  %_38 = bitcast i32* %_3 to i8*
  %_49 = bitcast i32* %_4 to i8*
  %_510 = bitcast i32* %_5 to i8*
  %_611 = bitcast i32* %_6 to i8*
  %_712 = bitcast i32* %_7 to i8*
  %_813 = bitcast i32* %_8 to i8*
  %_914 = bitcast i32* %_9 to i8*
  %_1015 = bitcast i32* %_10 to i8*
  %_1116 = bitcast i32* %_11 to i8*
  %_1217 = bitcast i32* %_12 to i8*
  %_1318 = bitcast i32* %_13 to i8*
  %_1419 = bitcast i32* %_14 to i8*
  %_1520 = bitcast i32* %_15 to i8*
  br label %for.loop

for.loop:                                         ; preds = %.exit, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %.exit ]
  %src.addr.gep2 = getelementptr [16 x i32], [16 x i32]* %0, i64 0, i64 %for.loop.idx3
  %4 = bitcast i32* %src.addr.gep2 to i8*
  switch i64 %for.loop.idx3, label %.case.15 [
    i64 0, label %.case.0
    i64 1, label %.case.1
    i64 2, label %.case.2
    i64 3, label %.case.3
    i64 4, label %.case.4
    i64 5, label %.case.5
    i64 6, label %.case.6
    i64 7, label %.case.7
    i64 8, label %.case.8
    i64 9, label %.case.9
    i64 10, label %.case.10
    i64 11, label %.case.11
    i64 12, label %.case.12
    i64 13, label %.case.13
    i64 14, label %.case.14
  ]

.case.0:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_01, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.1:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_16, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.2:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_27, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.3:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_38, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.4:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_49, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.5:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_510, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.6:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_611, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.7:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_712, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.8:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_813, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.9:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_914, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.10:                                         ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1015, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.11:                                         ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1116, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.12:                                         ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1217, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.13:                                         ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1318, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.14:                                         ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1419, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.case.15:                                         ; preds = %for.loop
  %5 = icmp eq i64 %for.loop.idx3, 15
  call void @llvm.assume(i1 %5)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1520, i8* align 1 %4, i64 4, i1 false)
  br label %.exit

.exit:                                            ; preds = %.case.15, %.case.14, %.case.13, %.case.12, %.case.11, %.case.10, %.case.9, %.case.8, %.case.7, %.case.6, %.case.5, %.case.4, %.case.3, %.case.2, %.case.1, %.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_in([16 x i32]* readonly "orig.arg.no"="0", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, [16 x i32]* readonly "orig.arg.no"="2", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_16, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_27, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_38, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_49, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_510, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_611, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_712, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_813, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_914, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1015, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1116, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1217, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1318, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1419, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1520, [1 x i32]* readonly "orig.arg.no"="4", [1 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5") #5 {
entry:
  call void @onebyonecpy_hls.p0a16i32.15.16(i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5, i32* align 512 %_6, i32* align 512 %_7, i32* align 512 %_8, i32* align 512 %_9, i32* align 512 %_10, i32* align 512 %_11, i32* align 512 %_12, i32* align 512 %_13, i32* align 512 %_14, i32* align 512 %_15, [16 x i32]* %0)
  call void @onebyonecpy_hls.p0a16i32.15.16(i32* align 512 %_01, i32* align 512 %_16, i32* align 512 %_27, i32* align 512 %_38, i32* align 512 %_49, i32* align 512 %_510, i32* align 512 %_611, i32* align 512 %_712, i32* align 512 %_813, i32* align 512 %_914, i32* align 512 %_1015, i32* align 512 %_1116, i32* align 512 %_1217, i32* align 512 %_1318, i32* align 512 %_1419, i32* align 512 %_1520, [16 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* align 512 %3, [1 x i32]* %2)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a16i32.21.22([16 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15) #3 {
entry:
  %1 = icmp eq [16 x i32]* %0, null
  %2 = icmp eq i32* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  %_01 = bitcast i32* %_0 to i8*
  %_16 = bitcast i32* %_1 to i8*
  %_27 = bitcast i32* %_2 to i8*
  %_38 = bitcast i32* %_3 to i8*
  %_49 = bitcast i32* %_4 to i8*
  %_510 = bitcast i32* %_5 to i8*
  %_611 = bitcast i32* %_6 to i8*
  %_712 = bitcast i32* %_7 to i8*
  %_813 = bitcast i32* %_8 to i8*
  %_914 = bitcast i32* %_9 to i8*
  %_1015 = bitcast i32* %_10 to i8*
  %_1116 = bitcast i32* %_11 to i8*
  %_1217 = bitcast i32* %_12 to i8*
  %_1318 = bitcast i32* %_13 to i8*
  %_1419 = bitcast i32* %_14 to i8*
  %_1520 = bitcast i32* %_15 to i8*
  br label %for.loop

for.loop:                                         ; preds = %.exit, %copy
  %for.loop.idx3 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %.exit ]
  %dst.addr.gep1 = getelementptr [16 x i32], [16 x i32]* %0, i64 0, i64 %for.loop.idx3
  %4 = bitcast i32* %dst.addr.gep1 to i8*
  switch i64 %for.loop.idx3, label %.case.15 [
    i64 0, label %.case.0
    i64 1, label %.case.1
    i64 2, label %.case.2
    i64 3, label %.case.3
    i64 4, label %.case.4
    i64 5, label %.case.5
    i64 6, label %.case.6
    i64 7, label %.case.7
    i64 8, label %.case.8
    i64 9, label %.case.9
    i64 10, label %.case.10
    i64 11, label %.case.11
    i64 12, label %.case.12
    i64 13, label %.case.13
    i64 14, label %.case.14
  ]

.case.0:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_01, i64 4, i1 false)
  br label %.exit

.case.1:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_16, i64 4, i1 false)
  br label %.exit

.case.2:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_27, i64 4, i1 false)
  br label %.exit

.case.3:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_38, i64 4, i1 false)
  br label %.exit

.case.4:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_49, i64 4, i1 false)
  br label %.exit

.case.5:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_510, i64 4, i1 false)
  br label %.exit

.case.6:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_611, i64 4, i1 false)
  br label %.exit

.case.7:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_712, i64 4, i1 false)
  br label %.exit

.case.8:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_813, i64 4, i1 false)
  br label %.exit

.case.9:                                          ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_914, i64 4, i1 false)
  br label %.exit

.case.10:                                         ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_1015, i64 4, i1 false)
  br label %.exit

.case.11:                                         ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_1116, i64 4, i1 false)
  br label %.exit

.case.12:                                         ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_1217, i64 4, i1 false)
  br label %.exit

.case.13:                                         ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_1318, i64 4, i1 false)
  br label %.exit

.case.14:                                         ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_1419, i64 4, i1 false)
  br label %.exit

.case.15:                                         ; preds = %for.loop
  %5 = icmp eq i64 %for.loop.idx3, 15
  call void @llvm.assume(i1 %5)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_1520, i64 4, i1 false)
  br label %.exit

.exit:                                            ; preds = %.case.15, %.case.14, %.case.13, %.case.12, %.case.11, %.case.10, %.case.9, %.case.8, %.case.7, %.case.6, %.case.5, %.case.4, %.case.3, %.case.2, %.case.1, %.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx3, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_out([16 x i32]* "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, [16 x i32]* "orig.arg.no"="2", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_16, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_27, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_38, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_49, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_510, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_611, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_712, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_813, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_914, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1015, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1116, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1217, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1318, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1419, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1520, [1 x i32]* "orig.arg.no"="4", [1 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5") #6 {
entry:
  call void @onebyonecpy_hls.p0a16i32.21.22([16 x i32]* %0, i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5, i32* align 512 %_6, i32* align 512 %_7, i32* align 512 %_8, i32* align 512 %_9, i32* align 512 %_10, i32* align 512 %_11, i32* align 512 %_12, i32* align 512 %_13, i32* align 512 %_14, i32* align 512 %_15)
  call void @onebyonecpy_hls.p0a16i32.21.22([16 x i32]* %1, i32* align 512 %_01, i32* align 512 %_16, i32* align 512 %_27, i32* align 512 %_38, i32* align 512 %_49, i32* align 512 %_510, i32* align 512 %_611, i32* align 512 %_712, i32* align 512 %_813, i32* align 512 %_914, i32* align 512 %_1015, i32* align 512 %_1116, i32* align 512 %_1217, i32* align 512 %_1318, i32* align 512 %_1419, i32* align 512 %_1520)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %2, [1 x i32]* align 512 %3)
  ret void
}

declare void @apatb_eucDistHW_hw(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

define void @eucDistHW_hw_stub_wrapper(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #7 {
entry:
  %33 = alloca [16 x i32]
  %34 = alloca [16 x i32]
  %35 = bitcast i32* %32 to [1 x i32]*
  call void @copy_out([16 x i32]* %33, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, [16 x i32]* %34, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, [1 x i32]* null, [1 x i32]* %35)
  %36 = bitcast [16 x i32]* %33 to i32*
  %37 = bitcast [16 x i32]* %34 to i32*
  %38 = bitcast [1 x i32]* %35 to i32*
  call void @eucDistHW_hw_stub(i32* %36, i32* %37, i32* %38)
  call void @copy_in([16 x i32]* %33, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, [16 x i32]* %34, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, [1 x i32]* null, [1 x i32]* %35)
  ret void
}

declare void @eucDistHW_hw_stub(i32*, i32*, i32*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { nounwind }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !DILocation(line: 7, column: 9, scope: !6)
!6 = distinct !DISubprogram(name: "eucDistHW", linkageName: "_Z9eucDistHWPiS_S_", scope: !7, file: !7, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !4)
!7 = !DIFile(filename: "src/EucHW.cpp", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "T", file: !12, line: 4, baseType: !13)
!12 = !DIFile(filename: "src/specs.h", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !15, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, imports: !16)
!15 = !DIFile(filename: "C:/Users/juan_/Documents/FPGA/JA-RM-IPD432/EucHLS/solution1/.autopilot/db\5CEucHW.pp.0.cpp", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432")
!16 = !{!17, !25, !27, !29, !33, !35, !37, !39, !41, !43, !45, !47, !52, !56, !58, !60, !65, !67, !69, !71, !73, !75, !77, !79, !82, !84, !88, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !117, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !155, !159, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !185, !189, !193, !195, !197, !199, !204, !208, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !241, !245, !249, !251, !253, !255, !262, !266, !270, !272, !274, !276, !278, !280, !282, !286, !290, !292, !294, !296, !298, !302, !306, !310, !312, !314, !316, !318, !320, !322, !326, !330, !334, !336, !340, !344, !346, !348, !350, !352, !354, !356, !362, !367, !373, !377, !382, !384, !388, !392, !405, !409, !413, !417, !421, !426, !430, !434, !438, !442, !450, !454, !458, !462, !466, !471, !477, !481, !485, !487, !495, !499, !506, !508, !512, !516, !520, !524, !529, !533, !537, !538, !539, !540, !542, !543, !544, !545, !546, !547, !548, !550, !551, !552, !553, !554, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!17 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !19, file: !24, line: 106)
!18 = !DINamespace(name: "std", scope: null)
!19 = !DISubprogram(name: "acos", scope: !20, file: !20, line: 190, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!20 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cmath.h", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432")
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !23}
!23 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!24 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccmath", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432")
!25 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !26, file: !24, line: 125)
!26 = !DISubprogram(name: "asin", scope: !20, file: !20, line: 189, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!27 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !28, file: !24, line: 144)
!28 = !DISubprogram(name: "atan", scope: !20, file: !20, line: 191, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!29 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !30, file: !24, line: 163)
!30 = !DISubprogram(name: "atan2", scope: !20, file: !20, line: 192, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!31 = !DISubroutineType(types: !32)
!32 = !{!23, !23, !23}
!33 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !34, file: !24, line: 184)
!34 = !DISubprogram(name: "ceil", scope: !20, file: !20, line: 198, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!35 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !36, file: !24, line: 203)
!36 = !DISubprogram(name: "cos", scope: !20, file: !20, line: 184, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!37 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !38, file: !24, line: 222)
!38 = !DISubprogram(name: "cosh", scope: !20, file: !20, line: 187, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!39 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !40, file: !24, line: 241)
!40 = !DISubprogram(name: "exp", scope: !20, file: !20, line: 193, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!41 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !42, file: !24, line: 260)
!42 = !DISubprogram(name: "fabs", scope: !20, file: !20, line: 204, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!43 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !44, file: !24, line: 279)
!44 = !DISubprogram(name: "floor", scope: !20, file: !20, line: 199, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!45 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !46, file: !24, line: 298)
!46 = !DISubprogram(name: "fmod", scope: !20, file: !20, line: 246, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!47 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !48, file: !24, line: 319)
!48 = !DISubprogram(name: "frexp", scope: !20, file: !20, line: 244, type: !49, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!49 = !DISubroutineType(types: !50)
!50 = !{!23, !23, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!52 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !53, file: !24, line: 338)
!53 = !DISubprogram(name: "ldexp", scope: !20, file: !20, line: 243, type: !54, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!54 = !DISubroutineType(types: !55)
!55 = !{!23, !23, !13}
!56 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !57, file: !24, line: 357)
!57 = !DISubprogram(name: "log", scope: !20, file: !20, line: 194, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !59, file: !24, line: 376)
!59 = !DISubprogram(name: "log10", scope: !20, file: !20, line: 195, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !61, file: !24, line: 395)
!61 = !DISubprogram(name: "modf", scope: !20, file: !20, line: 245, type: !62, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!62 = !DISubroutineType(types: !63)
!63 = !{!23, !23, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!65 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !66, file: !24, line: 407)
!66 = !DISubprogram(name: "pow", scope: !20, file: !20, line: 196, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !68, file: !24, line: 444)
!68 = !DISubprogram(name: "sin", scope: !20, file: !20, line: 183, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!69 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !70, file: !24, line: 463)
!70 = !DISubprogram(name: "sinh", scope: !20, file: !20, line: 186, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!71 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !72, file: !24, line: 482)
!72 = !DISubprogram(name: "sqrt", scope: !20, file: !20, line: 197, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!73 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !74, file: !24, line: 501)
!74 = !DISubprogram(name: "tan", scope: !20, file: !20, line: 185, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !76, file: !24, line: 520)
!76 = !DISubprogram(name: "tanh", scope: !20, file: !20, line: 188, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !78, file: !24, line: 1077)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !20, line: 373, baseType: !23)
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !80, file: !24, line: 1078)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !20, line: 372, baseType: !81)
!81 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !83, file: !24, line: 1081)
!83 = !DISubprogram(name: "acosh", scope: !20, file: !20, line: 705, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !85, file: !24, line: 1082)
!85 = !DISubprogram(name: "acoshf", scope: !20, file: !20, line: 706, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DISubroutineType(types: !87)
!87 = !{!81, !81}
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !89, file: !24, line: 1083)
!89 = !DISubprogram(name: "acoshl", scope: !20, file: !20, line: 707, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!90 = !DISubroutineType(types: !91)
!91 = !{!92, !92}
!92 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !94, file: !24, line: 1085)
!94 = !DISubprogram(name: "asinh", scope: !20, file: !20, line: 710, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !96, file: !24, line: 1086)
!96 = !DISubprogram(name: "asinhf", scope: !20, file: !20, line: 711, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !98, file: !24, line: 1087)
!98 = !DISubprogram(name: "asinhl", scope: !20, file: !20, line: 712, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !100, file: !24, line: 1089)
!100 = !DISubprogram(name: "atanh", scope: !20, file: !20, line: 715, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !102, file: !24, line: 1090)
!102 = !DISubprogram(name: "atanhf", scope: !20, file: !20, line: 716, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !104, file: !24, line: 1091)
!104 = !DISubprogram(name: "atanhl", scope: !20, file: !20, line: 717, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !106, file: !24, line: 1093)
!106 = !DISubprogram(name: "cbrt", scope: !20, file: !20, line: 877, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !108, file: !24, line: 1094)
!108 = !DISubprogram(name: "cbrtf", scope: !20, file: !20, line: 878, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !110, file: !24, line: 1095)
!110 = !DISubprogram(name: "cbrtl", scope: !20, file: !20, line: 879, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !112, file: !24, line: 1097)
!112 = !DISubprogram(name: "copysign", scope: !20, file: !20, line: 1063, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !114, file: !24, line: 1098)
!114 = !DISubprogram(name: "copysignf", scope: !20, file: !20, line: 1064, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DISubroutineType(types: !116)
!116 = !{!81, !81, !81}
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !118, file: !24, line: 1099)
!118 = !DISubprogram(name: "copysignl", scope: !20, file: !20, line: 1065, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DISubroutineType(types: !120)
!120 = !{!92, !92, !92}
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !122, file: !24, line: 1101)
!122 = !DISubprogram(name: "erf", scope: !20, file: !20, line: 901, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !124, file: !24, line: 1102)
!124 = !DISubprogram(name: "erff", scope: !20, file: !20, line: 902, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !126, file: !24, line: 1103)
!126 = !DISubprogram(name: "erfl", scope: !20, file: !20, line: 903, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !128, file: !24, line: 1105)
!128 = !DISubprogram(name: "erfc", scope: !20, file: !20, line: 906, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !130, file: !24, line: 1106)
!130 = !DISubprogram(name: "erfcf", scope: !20, file: !20, line: 907, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !132, file: !24, line: 1107)
!132 = !DISubprogram(name: "erfcl", scope: !20, file: !20, line: 908, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !134, file: !24, line: 1109)
!134 = !DISubprogram(name: "exp2", scope: !20, file: !20, line: 728, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !136, file: !24, line: 1110)
!136 = !DISubprogram(name: "exp2f", scope: !20, file: !20, line: 729, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !138, file: !24, line: 1111)
!138 = !DISubprogram(name: "exp2l", scope: !20, file: !20, line: 730, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !140, file: !24, line: 1113)
!140 = !DISubprogram(name: "expm1", scope: !20, file: !20, line: 734, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !142, file: !24, line: 1114)
!142 = !DISubprogram(name: "expm1f", scope: !20, file: !20, line: 735, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !144, file: !24, line: 1115)
!144 = !DISubprogram(name: "expm1l", scope: !20, file: !20, line: 736, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !146, file: !24, line: 1117)
!146 = !DISubprogram(name: "fdim", scope: !20, file: !20, line: 1109, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !148, file: !24, line: 1118)
!148 = !DISubprogram(name: "fdimf", scope: !20, file: !20, line: 1110, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !150, file: !24, line: 1119)
!150 = !DISubprogram(name: "fdiml", scope: !20, file: !20, line: 1111, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !152, file: !24, line: 1121)
!152 = !DISubprogram(name: "fma", scope: !20, file: !20, line: 1130, type: !153, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!153 = !DISubroutineType(types: !154)
!154 = !{!23, !23, !23, !23}
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !156, file: !24, line: 1122)
!156 = !DISubprogram(name: "fmaf", scope: !20, file: !20, line: 1131, type: !157, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DISubroutineType(types: !158)
!158 = !{!81, !81, !81, !81}
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !160, file: !24, line: 1123)
!160 = !DISubprogram(name: "fmal", scope: !20, file: !20, line: 1132, type: !161, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DISubroutineType(types: !162)
!162 = !{!92, !92, !92, !92}
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !164, file: !24, line: 1125)
!164 = !DISubprogram(name: "fmax", scope: !20, file: !20, line: 1119, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !166, file: !24, line: 1126)
!166 = !DISubprogram(name: "fmaxf", scope: !20, file: !20, line: 1120, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !168, file: !24, line: 1127)
!168 = !DISubprogram(name: "fmaxl", scope: !20, file: !20, line: 1121, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !170, file: !24, line: 1129)
!170 = !DISubprogram(name: "fmin", scope: !20, file: !20, line: 1124, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !172, file: !24, line: 1130)
!172 = !DISubprogram(name: "fminf", scope: !20, file: !20, line: 1125, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !174, file: !24, line: 1131)
!174 = !DISubprogram(name: "fminl", scope: !20, file: !20, line: 1126, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !176, file: !24, line: 1133)
!176 = !DISubprogram(name: "hypot", scope: !20, file: !20, line: 882, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !178, file: !24, line: 1134)
!178 = !DISubprogram(name: "hypotf", scope: !20, file: !20, line: 883, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !180, file: !24, line: 1135)
!180 = !DISubprogram(name: "hypotl", scope: !20, file: !20, line: 887, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !182, file: !24, line: 1137)
!182 = !DISubprogram(name: "ilogb", scope: !20, file: !20, line: 748, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{!13, !23}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !186, file: !24, line: 1138)
!186 = !DISubprogram(name: "ilogbf", scope: !20, file: !20, line: 749, type: !187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DISubroutineType(types: !188)
!188 = !{!13, !81}
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !190, file: !24, line: 1139)
!190 = !DISubprogram(name: "ilogbl", scope: !20, file: !20, line: 750, type: !191, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DISubroutineType(types: !192)
!192 = !{!13, !92}
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !194, file: !24, line: 1141)
!194 = !DISubprogram(name: "lgamma", scope: !20, file: !20, line: 911, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !196, file: !24, line: 1142)
!196 = !DISubprogram(name: "lgammaf", scope: !20, file: !20, line: 912, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !198, file: !24, line: 1143)
!198 = !DISubprogram(name: "lgammal", scope: !20, file: !20, line: 913, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !200, file: !24, line: 1145)
!200 = !DISubprogram(name: "llrint", scope: !20, file: !20, line: 946, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !23}
!203 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !205, file: !24, line: 1146)
!205 = !DISubprogram(name: "llrintf", scope: !20, file: !20, line: 947, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{!203, !81}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !209, file: !24, line: 1147)
!209 = !DISubprogram(name: "llrintl", scope: !20, file: !20, line: 948, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!210 = !DISubroutineType(types: !211)
!211 = !{!203, !92}
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !213, file: !24, line: 1149)
!213 = !DISubprogram(name: "llround", scope: !20, file: !20, line: 1038, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !215, file: !24, line: 1150)
!215 = !DISubprogram(name: "llroundf", scope: !20, file: !20, line: 1039, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !217, file: !24, line: 1151)
!217 = !DISubprogram(name: "llroundl", scope: !20, file: !20, line: 1040, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !219, file: !24, line: 1153)
!219 = !DISubprogram(name: "log1p", scope: !20, file: !20, line: 768, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !221, file: !24, line: 1154)
!221 = !DISubprogram(name: "log1pf", scope: !20, file: !20, line: 769, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !223, file: !24, line: 1155)
!223 = !DISubprogram(name: "log1pl", scope: !20, file: !20, line: 770, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !225, file: !24, line: 1157)
!225 = !DISubprogram(name: "log2", scope: !20, file: !20, line: 773, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !227, file: !24, line: 1158)
!227 = !DISubprogram(name: "log2f", scope: !20, file: !20, line: 774, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !229, file: !24, line: 1159)
!229 = !DISubprogram(name: "log2l", scope: !20, file: !20, line: 775, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !231, file: !24, line: 1161)
!231 = !DISubprogram(name: "logb", scope: !20, file: !20, line: 778, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !233, file: !24, line: 1162)
!233 = !DISubprogram(name: "logbf", scope: !20, file: !20, line: 779, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !235, file: !24, line: 1163)
!235 = !DISubprogram(name: "logbl", scope: !20, file: !20, line: 780, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !237, file: !24, line: 1165)
!237 = !DISubprogram(name: "lrint", scope: !20, file: !20, line: 942, type: !238, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DISubroutineType(types: !239)
!239 = !{!240, !23}
!240 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !242, file: !24, line: 1166)
!242 = !DISubprogram(name: "lrintf", scope: !20, file: !20, line: 943, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!240, !81}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !246, file: !24, line: 1167)
!246 = !DISubprogram(name: "lrintl", scope: !20, file: !20, line: 944, type: !247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubroutineType(types: !248)
!248 = !{!240, !92}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !250, file: !24, line: 1169)
!250 = !DISubprogram(name: "lround", scope: !20, file: !20, line: 1035, type: !238, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !252, file: !24, line: 1170)
!252 = !DISubprogram(name: "lroundf", scope: !20, file: !20, line: 1036, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !254, file: !24, line: 1171)
!254 = !DISubprogram(name: "lroundl", scope: !20, file: !20, line: 1037, type: !247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !256, file: !24, line: 1173)
!256 = !DISubprogram(name: "nan", scope: !20, file: !20, line: 1087, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!257 = !DISubroutineType(types: !258)
!258 = !{!23, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !263, file: !24, line: 1174)
!263 = !DISubprogram(name: "nanf", scope: !20, file: !20, line: 1088, type: !264, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubroutineType(types: !265)
!265 = !{!81, !259}
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !267, file: !24, line: 1175)
!267 = !DISubprogram(name: "nanl", scope: !20, file: !20, line: 1089, type: !268, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!268 = !DISubroutineType(types: !269)
!269 = !{!92, !259}
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !271, file: !24, line: 1177)
!271 = !DISubprogram(name: "nearbyint", scope: !20, file: !20, line: 931, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !273, file: !24, line: 1178)
!273 = !DISubprogram(name: "nearbyintf", scope: !20, file: !20, line: 932, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !275, file: !24, line: 1179)
!275 = !DISubprogram(name: "nearbyintl", scope: !20, file: !20, line: 933, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !277, file: !24, line: 1181)
!277 = !DISubprogram(name: "nextafter", scope: !20, file: !20, line: 1098, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !279, file: !24, line: 1182)
!279 = !DISubprogram(name: "nextafterf", scope: !20, file: !20, line: 1099, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !281, file: !24, line: 1183)
!281 = !DISubprogram(name: "nextafterl", scope: !20, file: !20, line: 1100, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !283, file: !24, line: 1185)
!283 = !DISubprogram(name: "nexttoward", scope: !20, file: !20, line: 1103, type: !284, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!284 = !DISubroutineType(types: !285)
!285 = !{!23, !23, !92}
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !287, file: !24, line: 1186)
!287 = !DISubprogram(name: "nexttowardf", scope: !20, file: !20, line: 1104, type: !288, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DISubroutineType(types: !289)
!289 = !{!81, !81, !92}
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !291, file: !24, line: 1187)
!291 = !DISubprogram(name: "nexttowardl", scope: !20, file: !20, line: 1105, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !293, file: !24, line: 1189)
!293 = !DISubprogram(name: "remainder", scope: !20, file: !20, line: 1053, type: !31, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !295, file: !24, line: 1190)
!295 = !DISubprogram(name: "remainderf", scope: !20, file: !20, line: 1054, type: !115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !297, file: !24, line: 1191)
!297 = !DISubprogram(name: "remainderl", scope: !20, file: !20, line: 1055, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !299, file: !24, line: 1193)
!299 = !DISubprogram(name: "remquo", scope: !20, file: !20, line: 1058, type: !300, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!300 = !DISubroutineType(types: !301)
!301 = !{!23, !23, !23, !51}
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !303, file: !24, line: 1194)
!303 = !DISubprogram(name: "remquof", scope: !20, file: !20, line: 1059, type: !304, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!304 = !DISubroutineType(types: !305)
!305 = !{!81, !81, !81, !51}
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !307, file: !24, line: 1195)
!307 = !DISubprogram(name: "remquol", scope: !20, file: !20, line: 1060, type: !308, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!308 = !DISubroutineType(types: !309)
!309 = !{!92, !92, !92, !51}
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !311, file: !24, line: 1197)
!311 = !DISubprogram(name: "rint", scope: !20, file: !20, line: 937, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !313, file: !24, line: 1198)
!313 = !DISubprogram(name: "rintf", scope: !20, file: !20, line: 938, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !315, file: !24, line: 1199)
!315 = !DISubprogram(name: "rintl", scope: !20, file: !20, line: 939, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !317, file: !24, line: 1201)
!317 = !DISubprogram(name: "round", scope: !20, file: !20, line: 1030, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !319, file: !24, line: 1202)
!319 = !DISubprogram(name: "roundf", scope: !20, file: !20, line: 1031, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !321, file: !24, line: 1203)
!321 = !DISubprogram(name: "roundl", scope: !20, file: !20, line: 1032, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !323, file: !24, line: 1205)
!323 = !DISubprogram(name: "scalbln", scope: !20, file: !20, line: 871, type: !324, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DISubroutineType(types: !325)
!325 = !{!23, !23, !240}
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !327, file: !24, line: 1206)
!327 = !DISubprogram(name: "scalblnf", scope: !20, file: !20, line: 872, type: !328, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!328 = !DISubroutineType(types: !329)
!329 = !{!81, !81, !240}
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !331, file: !24, line: 1207)
!331 = !DISubprogram(name: "scalblnl", scope: !20, file: !20, line: 873, type: !332, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DISubroutineType(types: !333)
!333 = !{!92, !92, !240}
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !335, file: !24, line: 1209)
!335 = !DISubprogram(name: "scalbn", scope: !20, file: !20, line: 867, type: !54, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !337, file: !24, line: 1210)
!337 = !DISubprogram(name: "scalbnf", scope: !20, file: !20, line: 868, type: !338, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!338 = !DISubroutineType(types: !339)
!339 = !{!81, !81, !13}
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !341, file: !24, line: 1211)
!341 = !DISubprogram(name: "scalbnl", scope: !20, file: !20, line: 869, type: !342, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!342 = !DISubroutineType(types: !343)
!343 = !{!92, !92, !13}
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !345, file: !24, line: 1213)
!345 = !DISubprogram(name: "tgamma", scope: !20, file: !20, line: 918, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !347, file: !24, line: 1214)
!347 = !DISubprogram(name: "tgammaf", scope: !20, file: !20, line: 919, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !349, file: !24, line: 1215)
!349 = !DISubprogram(name: "tgammal", scope: !20, file: !20, line: 920, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !351, file: !24, line: 1217)
!351 = !DISubprogram(name: "trunc", scope: !20, file: !20, line: 1044, type: !21, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !353, file: !24, line: 1218)
!353 = !DISubprogram(name: "truncf", scope: !20, file: !20, line: 1045, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !355, file: !24, line: 1219)
!355 = !DISubprogram(name: "truncl", scope: !20, file: !20, line: 1046, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !357, file: !361, line: 54)
!357 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !18, file: !24, line: 403, type: !358, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!358 = !DISubroutineType(types: !359)
!359 = !{!92, !92, !360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!361 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Cmath.h", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432")
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !363, file: !366, line: 124)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !364, line: 53, baseType: !365)
!364 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cstdlib.h", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432")
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_div_t", file: !364, line: 50, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS6_div_t")
!366 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccstdlib", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432")
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !368, file: !366, line: 125)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !364, line: 58, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ldiv_t", file: !364, line: 55, size: 128, flags: DIFlagTypePassByValue, elements: !370, identifier: "_ZTS7_ldiv_t")
!370 = !{!371, !372}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !369, file: !364, line: 56, baseType: !240, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !369, file: !364, line: 57, baseType: !240, size: 64, offset: 64)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !374, file: !366, line: 127)
!374 = !DISubprogram(name: "abort", scope: !364, file: !364, line: 320, type: !375, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!375 = !DISubroutineType(types: !376)
!376 = !{null}
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !378, file: !366, line: 129)
!378 = !DISubprogram(name: "atexit", scope: !364, file: !364, line: 340, type: !379, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!379 = !DISubroutineType(types: !380)
!380 = !{!13, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !383, file: !366, line: 135)
!383 = !DISubprogram(name: "atof", scope: !20, file: !20, line: 259, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !385, file: !366, line: 136)
!385 = !DISubprogram(name: "atoi", scope: !364, file: !364, line: 346, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DISubroutineType(types: !387)
!387 = !{!13, !259}
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !389, file: !366, line: 137)
!389 = !DISubprogram(name: "atol", scope: !364, file: !364, line: 348, type: !390, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DISubroutineType(types: !391)
!391 = !{!240, !259}
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !393, file: !366, line: 138)
!393 = !DISubprogram(name: "bsearch", scope: !364, file: !364, line: 352, type: !394, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DISubroutineType(types: !395)
!395 = !{!396, !397, !397, !399, !399, !402}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !400, line: 35, baseType: !401)
!400 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Ccrtdefs.h", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432")
!401 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!13, !397, !397}
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !406, file: !366, line: 139)
!406 = !DISubprogram(name: "calloc", scope: !364, file: !364, line: 446, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!407 = !DISubroutineType(types: !408)
!408 = !{!396, !399, !399}
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !410, file: !366, line: 140)
!410 = !DISubprogram(name: "div", scope: !364, file: !364, line: 358, type: !411, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!411 = !DISubroutineType(types: !412)
!412 = !{!363, !13, !13}
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !414, file: !366, line: 141)
!414 = !DISubprogram(name: "exit", scope: !364, file: !364, line: 306, type: !415, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !13}
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !418, file: !366, line: 142)
!418 = !DISubprogram(name: "free", scope: !364, file: !364, line: 447, type: !419, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !396}
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !422, file: !366, line: 143)
!422 = !DISubprogram(name: "getenv", scope: !364, file: !364, line: 359, type: !423, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!423 = !DISubroutineType(types: !424)
!424 = !{!425, !259}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !427, file: !366, line: 144)
!427 = !DISubprogram(name: "labs", scope: !20, file: !20, line: 255, type: !428, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!428 = !DISubroutineType(types: !429)
!429 = !{!240, !240}
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !431, file: !366, line: 145)
!431 = !DISubprogram(name: "ldiv", scope: !364, file: !364, line: 369, type: !432, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!432 = !DISubroutineType(types: !433)
!433 = !{!368, !240, !240}
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !435, file: !366, line: 146)
!435 = !DISubprogram(name: "malloc", scope: !364, file: !364, line: 448, type: !436, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!436 = !DISubroutineType(types: !437)
!437 = !{!396, !399}
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !439, file: !366, line: 148)
!439 = !DISubprogram(name: "mblen", scope: !364, file: !364, line: 371, type: !440, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!440 = !DISubroutineType(types: !441)
!441 = !{!13, !259, !399}
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !443, file: !366, line: 149)
!443 = !DISubprogram(name: "mbstowcs", scope: !364, file: !364, line: 379, type: !444, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!444 = !DISubroutineType(types: !445)
!445 = !{!399, !446, !449, !399}
!446 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!449 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !259)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !451, file: !366, line: 150)
!451 = !DISubprogram(name: "mbtowc", scope: !364, file: !364, line: 377, type: !452, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!452 = !DISubroutineType(types: !453)
!453 = !{!13, !446, !449, !399}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !455, file: !366, line: 152)
!455 = !DISubprogram(name: "qsort", scope: !364, file: !364, line: 353, type: !456, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !396, !399, !399, !402}
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !459, file: !366, line: 158)
!459 = !DISubprogram(name: "rand", scope: !364, file: !364, line: 382, type: !460, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!460 = !DISubroutineType(types: !461)
!461 = !{!13}
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !463, file: !366, line: 159)
!463 = !DISubprogram(name: "realloc", scope: !364, file: !364, line: 449, type: !464, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!464 = !DISubroutineType(types: !465)
!465 = !{!396, !396, !399}
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !467, file: !366, line: 160)
!467 = !DISubprogram(name: "srand", scope: !364, file: !364, line: 384, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !470}
!470 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !472, file: !366, line: 161)
!472 = !DISubprogram(name: "strtod", scope: !364, file: !364, line: 396, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DISubroutineType(types: !474)
!474 = !{!23, !449, !475}
!475 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !478, file: !366, line: 162)
!478 = !DISubprogram(name: "strtol", scope: !364, file: !364, line: 430, type: !479, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!479 = !DISubroutineType(types: !480)
!480 = !{!240, !449, !475, !13}
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !482, file: !366, line: 163)
!482 = !DISubprogram(name: "strtoul", scope: !364, file: !364, line: 432, type: !483, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DISubroutineType(types: !484)
!484 = !{!401, !449, !475, !13}
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !486, file: !366, line: 164)
!486 = !DISubprogram(name: "system", scope: !364, file: !364, line: 436, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !488, file: !366, line: 166)
!488 = !DISubprogram(name: "wcstombs", scope: !364, file: !364, line: 441, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!489 = !DISubroutineType(types: !490)
!490 = !{!399, !491, !492, !399}
!491 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !425)
!492 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !496, file: !366, line: 167)
!496 = !DISubprogram(name: "wctomb", scope: !364, file: !364, line: 439, type: !497, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!497 = !DISubroutineType(types: !498)
!498 = !{!13, !425, !448}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !500, entity: !501, file: !366, line: 220)
!500 = !DINamespace(name: "__gnu_cxx", scope: null)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !364, line: 644, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 644, size: 128, flags: DIFlagTypePassByValue, elements: !503, identifier: "_ZTS7lldiv_t")
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !502, file: !364, line: 644, baseType: !203, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !502, file: !364, line: 644, baseType: !203, size: 64, offset: 64)
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !500, entity: !507, file: !366, line: 226)
!507 = !DISubprogram(name: "_Exit", scope: !364, file: !364, line: 311, type: !415, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !500, entity: !509, file: !366, line: 230)
!509 = !DISubprogram(name: "llabs", scope: !364, file: !364, line: 648, type: !510, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!510 = !DISubroutineType(types: !511)
!511 = !{!203, !203}
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !500, entity: !513, file: !366, line: 236)
!513 = !DISubprogram(name: "lldiv", scope: !364, file: !364, line: 646, type: !514, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!514 = !DISubroutineType(types: !515)
!515 = !{!501, !203, !203}
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !500, entity: !517, file: !366, line: 247)
!517 = !DISubprogram(name: "atoll", scope: !364, file: !364, line: 657, type: !518, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!518 = !DISubroutineType(types: !519)
!519 = !{!203, !259}
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !500, entity: !521, file: !366, line: 248)
!521 = !DISubprogram(name: "strtoll", scope: !364, file: !364, line: 653, type: !522, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!522 = !DISubroutineType(types: !523)
!523 = !{!203, !449, !475, !13}
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !500, entity: !525, file: !366, line: 249)
!525 = !DISubprogram(name: "strtoull", scope: !364, file: !364, line: 654, type: !526, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!526 = !DISubroutineType(types: !527)
!527 = !{!528, !449, !475, !13}
!528 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !500, entity: !530, file: !366, line: 251)
!530 = !DISubprogram(name: "strtof", scope: !364, file: !364, line: 403, type: !531, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!531 = !DISubroutineType(types: !532)
!532 = !{!81, !449, !475}
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !500, entity: !534, file: !366, line: 252)
!534 = !DISubprogram(name: "strtold", scope: !364, file: !364, line: 414, type: !535, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!535 = !DISubroutineType(types: !536)
!536 = !{!92, !449, !475}
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !501, file: !366, line: 260)
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !507, file: !366, line: 262)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !509, file: !366, line: 264)
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !541, file: !366, line: 265)
!541 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !500, file: !366, line: 233, type: !514, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !513, file: !366, line: 266)
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !517, file: !366, line: 268)
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !530, file: !366, line: 269)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !521, file: !366, line: 270)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !525, file: !366, line: 271)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !18, entity: !534, file: !366, line: 272)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !374, file: !549, line: 38)
!549 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Cstdlib.h", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432")
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !378, file: !549, line: 39)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !414, file: !549, line: 40)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !363, file: !549, line: 51)
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !368, file: !549, line: 52)
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !555, file: !549, line: 54)
!555 = !DISubprogram(name: "abs", linkageName: "_ZSt3absl", scope: !18, file: !366, line: 172, type: !428, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !383, file: !549, line: 55)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !385, file: !549, line: 56)
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !389, file: !549, line: 57)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !393, file: !549, line: 58)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !406, file: !549, line: 59)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !541, file: !549, line: 60)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !418, file: !549, line: 61)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !422, file: !549, line: 62)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !427, file: !549, line: 63)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !431, file: !549, line: 64)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !435, file: !549, line: 65)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !439, file: !549, line: 67)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !443, file: !549, line: 68)
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !451, file: !549, line: 69)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !455, file: !549, line: 71)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !459, file: !549, line: 72)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !463, file: !549, line: 73)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !467, file: !549, line: 74)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !472, file: !549, line: 75)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !478, file: !549, line: 76)
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !482, file: !549, line: 77)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !486, file: !549, line: 78)
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !488, file: !549, line: 80)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !14, entity: !496, file: !549, line: 81)
