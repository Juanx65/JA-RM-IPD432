; ModuleID = 'C:/Users/juan_/Documents/FPGA/JA-RM-IPD432/EucHLS/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_eucHW_ir(float* %y_add, float* %y_sqrt, i8* %x) local_unnamed_addr #0 {
entry:
  %y_add_copy = alloca float, align 512
  %y_sqrt_copy = alloca float, align 512
  %x_copy_0 = alloca i8, align 512
  %x_copy_1 = alloca i8, align 512
  %x_copy_2 = alloca i8, align 512
  %x_copy_3 = alloca i8, align 512
  %x_copy_4 = alloca i8, align 512
  %x_copy_5 = alloca i8, align 512
  %x_copy_6 = alloca i8, align 512
  %x_copy_7 = alloca i8, align 512
  %x_copy_8 = alloca i8, align 512
  %x_copy_9 = alloca i8, align 512
  %x_copy_10 = alloca i8, align 512
  %x_copy_11 = alloca i8, align 512
  %x_copy_12 = alloca i8, align 512
  %x_copy_13 = alloca i8, align 512
  %x_copy_14 = alloca i8, align 512
  %x_copy_15 = alloca i8, align 512
  %x_copy_16 = alloca i8, align 512
  %x_copy_17 = alloca i8, align 512
  %x_copy_18 = alloca i8, align 512
  %x_copy_19 = alloca i8, align 512
  %x_copy_20 = alloca i8, align 512
  %x_copy_21 = alloca i8, align 512
  %x_copy_22 = alloca i8, align 512
  %x_copy_23 = alloca i8, align 512
  %x_copy_24 = alloca i8, align 512
  %x_copy_25 = alloca i8, align 512
  %x_copy_26 = alloca i8, align 512
  %x_copy_27 = alloca i8, align 512
  %x_copy_28 = alloca i8, align 512
  %x_copy_29 = alloca i8, align 512
  %x_copy_30 = alloca i8, align 512
  %x_copy_31 = alloca i8, align 512
  %0 = bitcast i8* %x to [32 x i8]*
  call void @copy_in(float* %y_add, float* nonnull align 512 %y_add_copy, float* %y_sqrt, float* nonnull align 512 %y_sqrt_copy, [32 x i8]* %0, i8* nonnull align 512 %x_copy_0, i8* nonnull align 512 %x_copy_1, i8* nonnull align 512 %x_copy_2, i8* nonnull align 512 %x_copy_3, i8* nonnull align 512 %x_copy_4, i8* nonnull align 512 %x_copy_5, i8* nonnull align 512 %x_copy_6, i8* nonnull align 512 %x_copy_7, i8* nonnull align 512 %x_copy_8, i8* nonnull align 512 %x_copy_9, i8* nonnull align 512 %x_copy_10, i8* nonnull align 512 %x_copy_11, i8* nonnull align 512 %x_copy_12, i8* nonnull align 512 %x_copy_13, i8* nonnull align 512 %x_copy_14, i8* nonnull align 512 %x_copy_15, i8* nonnull align 512 %x_copy_16, i8* nonnull align 512 %x_copy_17, i8* nonnull align 512 %x_copy_18, i8* nonnull align 512 %x_copy_19, i8* nonnull align 512 %x_copy_20, i8* nonnull align 512 %x_copy_21, i8* nonnull align 512 %x_copy_22, i8* nonnull align 512 %x_copy_23, i8* nonnull align 512 %x_copy_24, i8* nonnull align 512 %x_copy_25, i8* nonnull align 512 %x_copy_26, i8* nonnull align 512 %x_copy_27, i8* nonnull align 512 %x_copy_28, i8* nonnull align 512 %x_copy_29, i8* nonnull align 512 %x_copy_30, i8* nonnull align 512 %x_copy_31)
  call void @apatb_eucHW_hw(float* %y_add_copy, float* %y_sqrt_copy, i8* %x_copy_0, i8* %x_copy_1, i8* %x_copy_2, i8* %x_copy_3, i8* %x_copy_4, i8* %x_copy_5, i8* %x_copy_6, i8* %x_copy_7, i8* %x_copy_8, i8* %x_copy_9, i8* %x_copy_10, i8* %x_copy_11, i8* %x_copy_12, i8* %x_copy_13, i8* %x_copy_14, i8* %x_copy_15, i8* %x_copy_16, i8* %x_copy_17, i8* %x_copy_18, i8* %x_copy_19, i8* %x_copy_20, i8* %x_copy_21, i8* %x_copy_22, i8* %x_copy_23, i8* %x_copy_24, i8* %x_copy_25, i8* %x_copy_26, i8* %x_copy_27, i8* %x_copy_28, i8* %x_copy_29, i8* %x_copy_30, i8* %x_copy_31)
  call void @copy_out(float* %y_add, float* nonnull align 512 %y_add_copy, float* %y_sqrt, float* nonnull align 512 %y_sqrt_copy, [32 x i8]* %0, i8* nonnull align 512 %x_copy_0, i8* nonnull align 512 %x_copy_1, i8* nonnull align 512 %x_copy_2, i8* nonnull align 512 %x_copy_3, i8* nonnull align 512 %x_copy_4, i8* nonnull align 512 %x_copy_5, i8* nonnull align 512 %x_copy_6, i8* nonnull align 512 %x_copy_7, i8* nonnull align 512 %x_copy_8, i8* nonnull align 512 %x_copy_9, i8* nonnull align 512 %x_copy_10, i8* nonnull align 512 %x_copy_11, i8* nonnull align 512 %x_copy_12, i8* nonnull align 512 %x_copy_13, i8* nonnull align 512 %x_copy_14, i8* nonnull align 512 %x_copy_15, i8* nonnull align 512 %x_copy_16, i8* nonnull align 512 %x_copy_17, i8* nonnull align 512 %x_copy_18, i8* nonnull align 512 %x_copy_19, i8* nonnull align 512 %x_copy_20, i8* nonnull align 512 %x_copy_21, i8* nonnull align 512 %x_copy_22, i8* nonnull align 512 %x_copy_23, i8* nonnull align 512 %x_copy_24, i8* nonnull align 512 %x_copy_25, i8* nonnull align 512 %x_copy_26, i8* nonnull align 512 %x_copy_27, i8* nonnull align 512 %x_copy_28, i8* nonnull align 512 %x_copy_29, i8* nonnull align 512 %x_copy_30, i8* nonnull align 512 %x_copy_31)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0f32(float* noalias align 512, float* noalias readonly) unnamed_addr #1 {
entry:
  %2 = icmp eq float* %0, null
  %3 = icmp eq float* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast float* %0 to i8*
  %6 = bitcast float* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: nounwind
declare void @llvm.assume(i1) #3

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a32i8.3.4(i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_8, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_9, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_10, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_11, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_12, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_13, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_14, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_15, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_16, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_17, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_18, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_19, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_20, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_21, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_22, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_23, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_24, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_25, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_26, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_27, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_28, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_29, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_30, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_31, [32 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %1 = icmp eq i8* %_0, null
  %2 = icmp eq [32 x i8]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [32 x i8], [32 x i8]* %0, i64 0, i64 %for.loop.idx1
  switch i64 %for.loop.idx1, label %dst.addr.case.31 [
    i64 0, label %dst.addr.case.0
    i64 1, label %dst.addr.case.1
    i64 2, label %dst.addr.case.2
    i64 3, label %dst.addr.case.3
    i64 4, label %dst.addr.case.4
    i64 5, label %dst.addr.case.5
    i64 6, label %dst.addr.case.6
    i64 7, label %dst.addr.case.7
    i64 8, label %dst.addr.case.8
    i64 9, label %dst.addr.case.9
    i64 10, label %dst.addr.case.10
    i64 11, label %dst.addr.case.11
    i64 12, label %dst.addr.case.12
    i64 13, label %dst.addr.case.13
    i64 14, label %dst.addr.case.14
    i64 15, label %dst.addr.case.15
    i64 16, label %dst.addr.case.16
    i64 17, label %dst.addr.case.17
    i64 18, label %dst.addr.case.18
    i64 19, label %dst.addr.case.19
    i64 20, label %dst.addr.case.20
    i64 21, label %dst.addr.case.21
    i64 22, label %dst.addr.case.22
    i64 23, label %dst.addr.case.23
    i64 24, label %dst.addr.case.24
    i64 25, label %dst.addr.case.25
    i64 26, label %dst.addr.case.26
    i64 27, label %dst.addr.case.27
    i64 28, label %dst.addr.case.28
    i64 29, label %dst.addr.case.29
    i64 30, label %dst.addr.case.30
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_0, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_4, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_5, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.6:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_6, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.7:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_7, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.8:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_8, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.9:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_9, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.10:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_10, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.11:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_11, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.12:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_12, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.13:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_13, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.14:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_14, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.15:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_15, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.16:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_16, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.17:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_17, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.18:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_18, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.19:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_19, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.20:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_20, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.21:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_21, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.22:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_22, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.23:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_23, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.24:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_24, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.25:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_25, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.26:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_26, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.27:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_27, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.28:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_28, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.29:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_29, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.30:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_30, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.31:                                 ; preds = %for.loop
  %4 = icmp eq i64 %for.loop.idx1, 31
  call void @llvm.assume(i1 %4)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_31, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.31, %dst.addr.case.30, %dst.addr.case.29, %dst.addr.case.28, %dst.addr.case.27, %dst.addr.case.26, %dst.addr.case.25, %dst.addr.case.24, %dst.addr.case.23, %dst.addr.case.22, %dst.addr.case.21, %dst.addr.case.20, %dst.addr.case.19, %dst.addr.case.18, %dst.addr.case.17, %dst.addr.case.16, %dst.addr.case.15, %dst.addr.case.14, %dst.addr.case.13, %dst.addr.case.12, %dst.addr.case.11, %dst.addr.case.10, %dst.addr.case.9, %dst.addr.case.8, %dst.addr.case.7, %dst.addr.case.6, %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_in(float* readonly "orig.arg.no"="0", float* noalias align 512 "orig.arg.no"="1", float* readonly "orig.arg.no"="2", float* noalias align 512 "orig.arg.no"="3", [32 x i8]* readonly "orig.arg.no"="4", i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_0, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_2, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_3, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_4, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_5, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_6, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_7, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_8, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_9, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_10, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_11, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_12, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_13, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_14, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_15, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_17, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_18, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_19, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_20, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_21, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_22, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_23, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_24, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_25, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_26, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_28, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_29, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_30, i8* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_31) #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %1, float* %0)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %3, float* %2)
  call void @onebyonecpy_hls.p0a32i8.3.4(i8* align 512 %_0, i8* align 512 %_1, i8* align 512 %_2, i8* align 512 %_3, i8* align 512 %_4, i8* align 512 %_5, i8* align 512 %_6, i8* align 512 %_7, i8* align 512 %_8, i8* align 512 %_9, i8* align 512 %_10, i8* align 512 %_11, i8* align 512 %_12, i8* align 512 %_13, i8* align 512 %_14, i8* align 512 %_15, i8* align 512 %_16, i8* align 512 %_17, i8* align 512 %_18, i8* align 512 %_19, i8* align 512 %_20, i8* align 512 %_21, i8* align 512 %_22, i8* align 512 %_23, i8* align 512 %_24, i8* align 512 %_25, i8* align 512 %_26, i8* align 512 %_27, i8* align 512 %_28, i8* align 512 %_29, i8* align 512 %_30, i8* align 512 %_31, [32 x i8]* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a32i8.9.10([32 x i8]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_16, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_17, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_18, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_19, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_20, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_21, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_22, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_23, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_24, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_25, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_26, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_27, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_28, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_29, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_30, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_31) #1 {
entry:
  %1 = icmp eq [32 x i8]* %0, null
  %2 = icmp eq i8* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [32 x i8], [32 x i8]* %0, i64 0, i64 %for.loop.idx1
  switch i64 %for.loop.idx1, label %src.addr.case.31 [
    i64 0, label %src.addr.case.0
    i64 1, label %src.addr.case.1
    i64 2, label %src.addr.case.2
    i64 3, label %src.addr.case.3
    i64 4, label %src.addr.case.4
    i64 5, label %src.addr.case.5
    i64 6, label %src.addr.case.6
    i64 7, label %src.addr.case.7
    i64 8, label %src.addr.case.8
    i64 9, label %src.addr.case.9
    i64 10, label %src.addr.case.10
    i64 11, label %src.addr.case.11
    i64 12, label %src.addr.case.12
    i64 13, label %src.addr.case.13
    i64 14, label %src.addr.case.14
    i64 15, label %src.addr.case.15
    i64 16, label %src.addr.case.16
    i64 17, label %src.addr.case.17
    i64 18, label %src.addr.case.18
    i64 19, label %src.addr.case.19
    i64 20, label %src.addr.case.20
    i64 21, label %src.addr.case.21
    i64 22, label %src.addr.case.22
    i64 23, label %src.addr.case.23
    i64 24, label %src.addr.case.24
    i64 25, label %src.addr.case.25
    i64 26, label %src.addr.case.26
    i64 27, label %src.addr.case.27
    i64 28, label %src.addr.case.28
    i64 29, label %src.addr.case.29
    i64 30, label %src.addr.case.30
  ]

src.addr.case.0:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_0, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_1, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_2, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_3, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_4, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_5, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.6:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_6, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.7:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_7, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.8:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_8, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.9:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_9, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.10:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_10, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.11:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_11, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.12:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_12, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.13:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_13, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.14:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_14, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.15:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_15, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.16:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_16, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.17:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_17, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.18:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_18, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.19:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_19, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.20:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_20, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.21:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_21, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.22:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_22, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.23:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_23, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.24:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_24, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.25:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_25, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.26:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_26, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.27:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_27, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.28:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_28, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.29:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_29, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.30:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_30, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.31:                                 ; preds = %for.loop
  %4 = icmp eq i64 %for.loop.idx1, 31
  call void @llvm.assume(i1 %4)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %_31, i64 1, i1 false)
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.31, %src.addr.case.30, %src.addr.case.29, %src.addr.case.28, %src.addr.case.27, %src.addr.case.26, %src.addr.case.25, %src.addr.case.24, %src.addr.case.23, %src.addr.case.22, %src.addr.case.21, %src.addr.case.20, %src.addr.case.19, %src.addr.case.18, %src.addr.case.17, %src.addr.case.16, %src.addr.case.15, %src.addr.case.14, %src.addr.case.13, %src.addr.case.12, %src.addr.case.11, %src.addr.case.10, %src.addr.case.9, %src.addr.case.8, %src.addr.case.7, %src.addr.case.6, %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 32
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_out(float* "orig.arg.no"="0", float* noalias readonly align 512 "orig.arg.no"="1", float* "orig.arg.no"="2", float* noalias readonly align 512 "orig.arg.no"="3", [32 x i8]* "orig.arg.no"="4", i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_0, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_1, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_2, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_3, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_4, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_5, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_6, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_7, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_8, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_9, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_10, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_11, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_12, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_13, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_14, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_15, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_17, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_18, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_19, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_20, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_21, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_22, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_23, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_24, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_25, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_26, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_28, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_29, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_30, i8* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_31) #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0f32(float* %0, float* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0f32(float* %2, float* align 512 %3)
  call void @onebyonecpy_hls.p0a32i8.9.10([32 x i8]* %4, i8* align 512 %_0, i8* align 512 %_1, i8* align 512 %_2, i8* align 512 %_3, i8* align 512 %_4, i8* align 512 %_5, i8* align 512 %_6, i8* align 512 %_7, i8* align 512 %_8, i8* align 512 %_9, i8* align 512 %_10, i8* align 512 %_11, i8* align 512 %_12, i8* align 512 %_13, i8* align 512 %_14, i8* align 512 %_15, i8* align 512 %_16, i8* align 512 %_17, i8* align 512 %_18, i8* align 512 %_19, i8* align 512 %_20, i8* align 512 %_21, i8* align 512 %_22, i8* align 512 %_23, i8* align 512 %_24, i8* align 512 %_25, i8* align 512 %_26, i8* align 512 %_27, i8* align 512 %_28, i8* align 512 %_29, i8* align 512 %_30, i8* align 512 %_31)
  ret void
}

declare void @apatb_eucHW_hw(float*, float*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

define void @eucHW_hw_stub_wrapper(float*, float*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #6 {
entry:
  %34 = alloca [32 x i8]
  call void @copy_out(float* null, float* %0, float* null, float* %1, [32 x i8]* %34, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12, i8* %13, i8* %14, i8* %15, i8* %16, i8* %17, i8* %18, i8* %19, i8* %20, i8* %21, i8* %22, i8* %23, i8* %24, i8* %25, i8* %26, i8* %27, i8* %28, i8* %29, i8* %30, i8* %31, i8* %32, i8* %33)
  %35 = bitcast [32 x i8]* %34 to i8*
  call void @eucHW_hw_stub(float* %0, float* %1, i8* %35)
  call void @copy_in(float* null, float* %0, float* null, float* %1, [32 x i8]* %34, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12, i8* %13, i8* %14, i8* %15, i8* %16, i8* %17, i8* %18, i8* %19, i8* %20, i8* %21, i8* %22, i8* %23, i8* %24, i8* %25, i8* %26, i8* %27, i8* %28, i8* %29, i8* %30, i8* %31, i8* %32, i8* %33)
  ret void
}

declare void @eucHW_hw_stub(float*, float*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
