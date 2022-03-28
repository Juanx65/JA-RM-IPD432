; ModuleID = 'C:/Users/juan_/Documents/FPGA/JA-RM-IPD432/VITIS_SRCS/EucHLS/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_eucHW_ir(i32* %y_sqrt, i8* %x) local_unnamed_addr #1 {
entry:
  %y_sqrt_copy = alloca i32, align 512
  %x_copy_0 = alloca [64 x i8], align 512
  %x_copy_1 = alloca [64 x i8], align 512
  %x_copy_2 = alloca [64 x i8], align 512
  %x_copy_3 = alloca [64 x i8], align 512
  %x_copy_4 = alloca [64 x i8], align 512
  %x_copy_5 = alloca [64 x i8], align 512
  %x_copy_6 = alloca [64 x i8], align 512
  %x_copy_7 = alloca [64 x i8], align 512
  %x_copy_8 = alloca [64 x i8], align 512
  %x_copy_9 = alloca [64 x i8], align 512
  %x_copy_10 = alloca [64 x i8], align 512
  %x_copy_11 = alloca [64 x i8], align 512
  %x_copy_12 = alloca [64 x i8], align 512
  %x_copy_13 = alloca [64 x i8], align 512
  %x_copy_14 = alloca [64 x i8], align 512
  %x_copy_15 = alloca [64 x i8], align 512
  %x_copy_16 = alloca [64 x i8], align 512
  %x_copy_17 = alloca [64 x i8], align 512
  %x_copy_18 = alloca [64 x i8], align 512
  %x_copy_19 = alloca [64 x i8], align 512
  %x_copy_20 = alloca [64 x i8], align 512
  %x_copy_21 = alloca [64 x i8], align 512
  %x_copy_22 = alloca [64 x i8], align 512
  %x_copy_23 = alloca [64 x i8], align 512
  %x_copy_24 = alloca [64 x i8], align 512
  %x_copy_25 = alloca [64 x i8], align 512
  %x_copy_26 = alloca [64 x i8], align 512
  %x_copy_27 = alloca [64 x i8], align 512
  %x_copy_28 = alloca [64 x i8], align 512
  %x_copy_29 = alloca [64 x i8], align 512
  %x_copy_30 = alloca [64 x i8], align 512
  %x_copy_31 = alloca [64 x i8], align 512
  %0 = bitcast i8* %x to [2048 x i8]*
  call void @copy_in(i32* %y_sqrt, i32* nonnull align 512 %y_sqrt_copy, [2048 x i8]* %0, [64 x i8]* nonnull align 512 %x_copy_0, [64 x i8]* nonnull align 512 %x_copy_1, [64 x i8]* nonnull align 512 %x_copy_2, [64 x i8]* nonnull align 512 %x_copy_3, [64 x i8]* nonnull align 512 %x_copy_4, [64 x i8]* nonnull align 512 %x_copy_5, [64 x i8]* nonnull align 512 %x_copy_6, [64 x i8]* nonnull align 512 %x_copy_7, [64 x i8]* nonnull align 512 %x_copy_8, [64 x i8]* nonnull align 512 %x_copy_9, [64 x i8]* nonnull align 512 %x_copy_10, [64 x i8]* nonnull align 512 %x_copy_11, [64 x i8]* nonnull align 512 %x_copy_12, [64 x i8]* nonnull align 512 %x_copy_13, [64 x i8]* nonnull align 512 %x_copy_14, [64 x i8]* nonnull align 512 %x_copy_15, [64 x i8]* nonnull align 512 %x_copy_16, [64 x i8]* nonnull align 512 %x_copy_17, [64 x i8]* nonnull align 512 %x_copy_18, [64 x i8]* nonnull align 512 %x_copy_19, [64 x i8]* nonnull align 512 %x_copy_20, [64 x i8]* nonnull align 512 %x_copy_21, [64 x i8]* nonnull align 512 %x_copy_22, [64 x i8]* nonnull align 512 %x_copy_23, [64 x i8]* nonnull align 512 %x_copy_24, [64 x i8]* nonnull align 512 %x_copy_25, [64 x i8]* nonnull align 512 %x_copy_26, [64 x i8]* nonnull align 512 %x_copy_27, [64 x i8]* nonnull align 512 %x_copy_28, [64 x i8]* nonnull align 512 %x_copy_29, [64 x i8]* nonnull align 512 %x_copy_30, [64 x i8]* nonnull align 512 %x_copy_31)
  %_0 = bitcast [64 x i8]* %x_copy_0 to i8*
  %_1 = bitcast [64 x i8]* %x_copy_1 to i8*
  %_2 = bitcast [64 x i8]* %x_copy_2 to i8*
  %_3 = bitcast [64 x i8]* %x_copy_3 to i8*
  %_4 = bitcast [64 x i8]* %x_copy_4 to i8*
  %_5 = bitcast [64 x i8]* %x_copy_5 to i8*
  %_6 = bitcast [64 x i8]* %x_copy_6 to i8*
  %_7 = bitcast [64 x i8]* %x_copy_7 to i8*
  %_8 = bitcast [64 x i8]* %x_copy_8 to i8*
  %_9 = bitcast [64 x i8]* %x_copy_9 to i8*
  %_10 = bitcast [64 x i8]* %x_copy_10 to i8*
  %_11 = bitcast [64 x i8]* %x_copy_11 to i8*
  %_12 = bitcast [64 x i8]* %x_copy_12 to i8*
  %_13 = bitcast [64 x i8]* %x_copy_13 to i8*
  %_14 = bitcast [64 x i8]* %x_copy_14 to i8*
  %_15 = bitcast [64 x i8]* %x_copy_15 to i8*
  %_16 = bitcast [64 x i8]* %x_copy_16 to i8*
  %_17 = bitcast [64 x i8]* %x_copy_17 to i8*
  %_18 = bitcast [64 x i8]* %x_copy_18 to i8*
  %_19 = bitcast [64 x i8]* %x_copy_19 to i8*
  %_20 = bitcast [64 x i8]* %x_copy_20 to i8*
  %_21 = bitcast [64 x i8]* %x_copy_21 to i8*
  %_22 = bitcast [64 x i8]* %x_copy_22 to i8*
  %_23 = bitcast [64 x i8]* %x_copy_23 to i8*
  %_24 = bitcast [64 x i8]* %x_copy_24 to i8*
  %_25 = bitcast [64 x i8]* %x_copy_25 to i8*
  %_26 = bitcast [64 x i8]* %x_copy_26 to i8*
  %_27 = bitcast [64 x i8]* %x_copy_27 to i8*
  %_28 = bitcast [64 x i8]* %x_copy_28 to i8*
  %_29 = bitcast [64 x i8]* %x_copy_29 to i8*
  %_30 = bitcast [64 x i8]* %x_copy_30 to i8*
  %_31 = bitcast [64 x i8]* %x_copy_31 to i8*
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_0, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_1, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_2, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_3, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_4, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_5, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_6, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_7, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_8, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_9, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_10, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_11, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_12, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_13, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_14, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_15, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_16, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_17, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_18, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_19, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_20, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_21, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_22, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_23, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_24, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_25, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_26, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_27, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_28, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_29, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_30, i32 0, i32 1, i32 0) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(i8* %_31, i32 0, i32 1, i32 0) ], !dbg !5
  call void @apatb_eucHW_hw(i32* %y_sqrt_copy, [64 x i8]* %x_copy_0, [64 x i8]* %x_copy_1, [64 x i8]* %x_copy_2, [64 x i8]* %x_copy_3, [64 x i8]* %x_copy_4, [64 x i8]* %x_copy_5, [64 x i8]* %x_copy_6, [64 x i8]* %x_copy_7, [64 x i8]* %x_copy_8, [64 x i8]* %x_copy_9, [64 x i8]* %x_copy_10, [64 x i8]* %x_copy_11, [64 x i8]* %x_copy_12, [64 x i8]* %x_copy_13, [64 x i8]* %x_copy_14, [64 x i8]* %x_copy_15, [64 x i8]* %x_copy_16, [64 x i8]* %x_copy_17, [64 x i8]* %x_copy_18, [64 x i8]* %x_copy_19, [64 x i8]* %x_copy_20, [64 x i8]* %x_copy_21, [64 x i8]* %x_copy_22, [64 x i8]* %x_copy_23, [64 x i8]* %x_copy_24, [64 x i8]* %x_copy_25, [64 x i8]* %x_copy_26, [64 x i8]* %x_copy_27, [64 x i8]* %x_copy_28, [64 x i8]* %x_copy_29, [64 x i8]* %x_copy_30, [64 x i8]* %x_copy_31)
  call void @copy_out(i32* %y_sqrt, i32* nonnull align 512 %y_sqrt_copy, [2048 x i8]* %0, [64 x i8]* nonnull align 512 %x_copy_0, [64 x i8]* nonnull align 512 %x_copy_1, [64 x i8]* nonnull align 512 %x_copy_2, [64 x i8]* nonnull align 512 %x_copy_3, [64 x i8]* nonnull align 512 %x_copy_4, [64 x i8]* nonnull align 512 %x_copy_5, [64 x i8]* nonnull align 512 %x_copy_6, [64 x i8]* nonnull align 512 %x_copy_7, [64 x i8]* nonnull align 512 %x_copy_8, [64 x i8]* nonnull align 512 %x_copy_9, [64 x i8]* nonnull align 512 %x_copy_10, [64 x i8]* nonnull align 512 %x_copy_11, [64 x i8]* nonnull align 512 %x_copy_12, [64 x i8]* nonnull align 512 %x_copy_13, [64 x i8]* nonnull align 512 %x_copy_14, [64 x i8]* nonnull align 512 %x_copy_15, [64 x i8]* nonnull align 512 %x_copy_16, [64 x i8]* nonnull align 512 %x_copy_17, [64 x i8]* nonnull align 512 %x_copy_18, [64 x i8]* nonnull align 512 %x_copy_19, [64 x i8]* nonnull align 512 %x_copy_20, [64 x i8]* nonnull align 512 %x_copy_21, [64 x i8]* nonnull align 512 %x_copy_22, [64 x i8]* nonnull align 512 %x_copy_23, [64 x i8]* nonnull align 512 %x_copy_24, [64 x i8]* nonnull align 512 %x_copy_25, [64 x i8]* nonnull align 512 %x_copy_26, [64 x i8]* nonnull align 512 %x_copy_27, [64 x i8]* nonnull align 512 %x_copy_28, [64 x i8]* nonnull align 512 %x_copy_29, [64 x i8]* nonnull align 512 %x_copy_30, [64 x i8]* nonnull align 512 %x_copy_31)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512, i32* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i32* %0 to i8*
  %6 = bitcast i32* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: nounwind
declare void @llvm.assume(i1) #4

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a2048i8.15.16([64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_4, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_5, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_6, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_7, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_8, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_9, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_10, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_11, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_12, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_13, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_14, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_15, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_16, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_17, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_18, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_19, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_20, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_21, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_22, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_23, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_24, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_25, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_26, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_27, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_28, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_29, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_30, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_31, [2048 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [64 x i8]* %_0, null
  %2 = icmp eq [2048 x i8]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = urem i64 %for.loop.idx1, 32
  %5 = udiv i64 %for.loop.idx1, 32
  %dst.addr_0 = getelementptr [64 x i8], [64 x i8]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [64 x i8], [64 x i8]* %_1, i64 0, i64 %5
  %dst.addr_2 = getelementptr [64 x i8], [64 x i8]* %_2, i64 0, i64 %5
  %dst.addr_3 = getelementptr [64 x i8], [64 x i8]* %_3, i64 0, i64 %5
  %dst.addr_4 = getelementptr [64 x i8], [64 x i8]* %_4, i64 0, i64 %5
  %dst.addr_5 = getelementptr [64 x i8], [64 x i8]* %_5, i64 0, i64 %5
  %dst.addr_6 = getelementptr [64 x i8], [64 x i8]* %_6, i64 0, i64 %5
  %dst.addr_7 = getelementptr [64 x i8], [64 x i8]* %_7, i64 0, i64 %5
  %dst.addr_8 = getelementptr [64 x i8], [64 x i8]* %_8, i64 0, i64 %5
  %dst.addr_9 = getelementptr [64 x i8], [64 x i8]* %_9, i64 0, i64 %5
  %dst.addr_10 = getelementptr [64 x i8], [64 x i8]* %_10, i64 0, i64 %5
  %dst.addr_11 = getelementptr [64 x i8], [64 x i8]* %_11, i64 0, i64 %5
  %dst.addr_12 = getelementptr [64 x i8], [64 x i8]* %_12, i64 0, i64 %5
  %dst.addr_13 = getelementptr [64 x i8], [64 x i8]* %_13, i64 0, i64 %5
  %dst.addr_14 = getelementptr [64 x i8], [64 x i8]* %_14, i64 0, i64 %5
  %dst.addr_15 = getelementptr [64 x i8], [64 x i8]* %_15, i64 0, i64 %5
  %dst.addr_16 = getelementptr [64 x i8], [64 x i8]* %_16, i64 0, i64 %5
  %dst.addr_17 = getelementptr [64 x i8], [64 x i8]* %_17, i64 0, i64 %5
  %dst.addr_18 = getelementptr [64 x i8], [64 x i8]* %_18, i64 0, i64 %5
  %dst.addr_19 = getelementptr [64 x i8], [64 x i8]* %_19, i64 0, i64 %5
  %dst.addr_20 = getelementptr [64 x i8], [64 x i8]* %_20, i64 0, i64 %5
  %dst.addr_21 = getelementptr [64 x i8], [64 x i8]* %_21, i64 0, i64 %5
  %dst.addr_22 = getelementptr [64 x i8], [64 x i8]* %_22, i64 0, i64 %5
  %dst.addr_23 = getelementptr [64 x i8], [64 x i8]* %_23, i64 0, i64 %5
  %dst.addr_24 = getelementptr [64 x i8], [64 x i8]* %_24, i64 0, i64 %5
  %dst.addr_25 = getelementptr [64 x i8], [64 x i8]* %_25, i64 0, i64 %5
  %dst.addr_26 = getelementptr [64 x i8], [64 x i8]* %_26, i64 0, i64 %5
  %dst.addr_27 = getelementptr [64 x i8], [64 x i8]* %_27, i64 0, i64 %5
  %dst.addr_28 = getelementptr [64 x i8], [64 x i8]* %_28, i64 0, i64 %5
  %dst.addr_29 = getelementptr [64 x i8], [64 x i8]* %_29, i64 0, i64 %5
  %dst.addr_30 = getelementptr [64 x i8], [64 x i8]* %_30, i64 0, i64 %5
  %dst.addr_31 = getelementptr [64 x i8], [64 x i8]* %_31, i64 0, i64 %5
  %src.addr = getelementptr [2048 x i8], [2048 x i8]* %0, i64 0, i64 %for.loop.idx1
  switch i64 %4, label %dst.addr.case.31 [
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_0, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_1, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_2, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_3, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_4, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_5, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.6:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_6, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.7:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_7, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.8:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_8, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.9:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_9, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.10:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_10, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.11:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_11, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.12:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_12, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.13:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_13, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.14:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_14, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.15:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_15, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.16:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_16, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.17:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_17, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.18:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_18, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.19:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_19, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.20:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_20, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.21:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_21, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.22:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_22, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.23:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_23, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.24:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_24, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.25:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_25, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.26:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_26, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.27:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_27, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.28:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_28, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.29:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_29, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.30:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_30, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.case.31:                                 ; preds = %for.loop
  %6 = icmp eq i64 %4, 31
  call void @llvm.assume(i1 %6)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr_31, i8* align 1 %src.addr, i64 1, i1 false)
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.31, %dst.addr.case.30, %dst.addr.case.29, %dst.addr.case.28, %dst.addr.case.27, %dst.addr.case.26, %dst.addr.case.25, %dst.addr.case.24, %dst.addr.case.23, %dst.addr.case.22, %dst.addr.case.21, %dst.addr.case.20, %dst.addr.case.19, %dst.addr.case.18, %dst.addr.case.17, %dst.addr.case.16, %dst.addr.case.15, %dst.addr.case.14, %dst.addr.case.13, %dst.addr.case.12, %dst.addr.case.11, %dst.addr.case.10, %dst.addr.case.9, %dst.addr.case.8, %dst.addr.case.7, %dst.addr.case.6, %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2048
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_in(i32* readonly "orig.arg.no"="0", i32* noalias align 512 "orig.arg.no"="1", [2048 x i8]* readonly "orig.arg.no"="2", [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_4, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_5, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_6, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_7, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_8, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_9, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_10, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_11, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_13, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_14, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_15, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_16, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_17, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_18, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_19, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_20, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_21, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_22, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_24, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_25, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_26, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_27, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_28, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_29, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_30, [64 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_31) #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %1, i32* %0)
  call void @onebyonecpy_hls.p0a2048i8.15.16([64 x i8]* align 512 %_0, [64 x i8]* align 512 %_1, [64 x i8]* align 512 %_2, [64 x i8]* align 512 %_3, [64 x i8]* align 512 %_4, [64 x i8]* align 512 %_5, [64 x i8]* align 512 %_6, [64 x i8]* align 512 %_7, [64 x i8]* align 512 %_8, [64 x i8]* align 512 %_9, [64 x i8]* align 512 %_10, [64 x i8]* align 512 %_11, [64 x i8]* align 512 %_12, [64 x i8]* align 512 %_13, [64 x i8]* align 512 %_14, [64 x i8]* align 512 %_15, [64 x i8]* align 512 %_16, [64 x i8]* align 512 %_17, [64 x i8]* align 512 %_18, [64 x i8]* align 512 %_19, [64 x i8]* align 512 %_20, [64 x i8]* align 512 %_21, [64 x i8]* align 512 %_22, [64 x i8]* align 512 %_23, [64 x i8]* align 512 %_24, [64 x i8]* align 512 %_25, [64 x i8]* align 512 %_26, [64 x i8]* align 512 %_27, [64 x i8]* align 512 %_28, [64 x i8]* align 512 %_29, [64 x i8]* align 512 %_30, [64 x i8]* align 512 %_31, [2048 x i8]* %2)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a2048i8.21.22([2048 x i8]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_4, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_5, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_6, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_7, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_8, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_9, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_10, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_11, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_12, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_13, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_14, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_15, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_16, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_17, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_18, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_19, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_20, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_21, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_22, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_23, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_24, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_25, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_26, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_27, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_28, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_29, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_30, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_31) #2 {
entry:
  %1 = icmp eq [2048 x i8]* %0, null
  %2 = icmp eq [64 x i8]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [2048 x i8], [2048 x i8]* %0, i64 0, i64 %for.loop.idx1
  %4 = urem i64 %for.loop.idx1, 32
  %5 = udiv i64 %for.loop.idx1, 32
  %src.addr_0 = getelementptr [64 x i8], [64 x i8]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [64 x i8], [64 x i8]* %_1, i64 0, i64 %5
  %src.addr_2 = getelementptr [64 x i8], [64 x i8]* %_2, i64 0, i64 %5
  %src.addr_3 = getelementptr [64 x i8], [64 x i8]* %_3, i64 0, i64 %5
  %src.addr_4 = getelementptr [64 x i8], [64 x i8]* %_4, i64 0, i64 %5
  %src.addr_5 = getelementptr [64 x i8], [64 x i8]* %_5, i64 0, i64 %5
  %src.addr_6 = getelementptr [64 x i8], [64 x i8]* %_6, i64 0, i64 %5
  %src.addr_7 = getelementptr [64 x i8], [64 x i8]* %_7, i64 0, i64 %5
  %src.addr_8 = getelementptr [64 x i8], [64 x i8]* %_8, i64 0, i64 %5
  %src.addr_9 = getelementptr [64 x i8], [64 x i8]* %_9, i64 0, i64 %5
  %src.addr_10 = getelementptr [64 x i8], [64 x i8]* %_10, i64 0, i64 %5
  %src.addr_11 = getelementptr [64 x i8], [64 x i8]* %_11, i64 0, i64 %5
  %src.addr_12 = getelementptr [64 x i8], [64 x i8]* %_12, i64 0, i64 %5
  %src.addr_13 = getelementptr [64 x i8], [64 x i8]* %_13, i64 0, i64 %5
  %src.addr_14 = getelementptr [64 x i8], [64 x i8]* %_14, i64 0, i64 %5
  %src.addr_15 = getelementptr [64 x i8], [64 x i8]* %_15, i64 0, i64 %5
  %src.addr_16 = getelementptr [64 x i8], [64 x i8]* %_16, i64 0, i64 %5
  %src.addr_17 = getelementptr [64 x i8], [64 x i8]* %_17, i64 0, i64 %5
  %src.addr_18 = getelementptr [64 x i8], [64 x i8]* %_18, i64 0, i64 %5
  %src.addr_19 = getelementptr [64 x i8], [64 x i8]* %_19, i64 0, i64 %5
  %src.addr_20 = getelementptr [64 x i8], [64 x i8]* %_20, i64 0, i64 %5
  %src.addr_21 = getelementptr [64 x i8], [64 x i8]* %_21, i64 0, i64 %5
  %src.addr_22 = getelementptr [64 x i8], [64 x i8]* %_22, i64 0, i64 %5
  %src.addr_23 = getelementptr [64 x i8], [64 x i8]* %_23, i64 0, i64 %5
  %src.addr_24 = getelementptr [64 x i8], [64 x i8]* %_24, i64 0, i64 %5
  %src.addr_25 = getelementptr [64 x i8], [64 x i8]* %_25, i64 0, i64 %5
  %src.addr_26 = getelementptr [64 x i8], [64 x i8]* %_26, i64 0, i64 %5
  %src.addr_27 = getelementptr [64 x i8], [64 x i8]* %_27, i64 0, i64 %5
  %src.addr_28 = getelementptr [64 x i8], [64 x i8]* %_28, i64 0, i64 %5
  %src.addr_29 = getelementptr [64 x i8], [64 x i8]* %_29, i64 0, i64 %5
  %src.addr_30 = getelementptr [64 x i8], [64 x i8]* %_30, i64 0, i64 %5
  %src.addr_31 = getelementptr [64 x i8], [64 x i8]* %_31, i64 0, i64 %5
  switch i64 %4, label %src.addr.case.31 [
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_0, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_1, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_2, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_3, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_4, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_5, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.6:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_6, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.7:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_7, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.8:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_8, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.9:                                  ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_9, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.10:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_10, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.11:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_11, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.12:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_12, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.13:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_13, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.14:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_14, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.15:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_15, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.16:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_16, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.17:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_17, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.18:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_18, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.19:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_19, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.20:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_20, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.21:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_21, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.22:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_22, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.23:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_23, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.24:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_24, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.25:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_25, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.26:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_26, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.27:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_27, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.28:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_28, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.29:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_29, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.30:                                 ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_30, i64 1, i1 false)
  br label %src.addr.exit

src.addr.case.31:                                 ; preds = %for.loop
  %6 = icmp eq i64 %4, 31
  call void @llvm.assume(i1 %6)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr, i8* align 1 %src.addr_31, i64 1, i1 false)
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.31, %src.addr.case.30, %src.addr.case.29, %src.addr.case.28, %src.addr.case.27, %src.addr.case.26, %src.addr.case.25, %src.addr.case.24, %src.addr.case.23, %src.addr.case.22, %src.addr.case.21, %src.addr.case.20, %src.addr.case.19, %src.addr.case.18, %src.addr.case.17, %src.addr.case.16, %src.addr.case.15, %src.addr.case.14, %src.addr.case.13, %src.addr.case.12, %src.addr.case.11, %src.addr.case.10, %src.addr.case.9, %src.addr.case.8, %src.addr.case.7, %src.addr.case.6, %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2048
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_out(i32* "orig.arg.no"="0", i32* noalias readonly align 512 "orig.arg.no"="1", [2048 x i8]* "orig.arg.no"="2", [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_0, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_1, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_2, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_3, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_4, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_5, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_6, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_7, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_8, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_9, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_10, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_11, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_13, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_14, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_15, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_16, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_17, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_18, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_19, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_20, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_21, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_22, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_24, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_25, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_26, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_27, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_28, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_29, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_30, [64 x i8]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_31) #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* %0, i32* align 512 %1)
  call void @onebyonecpy_hls.p0a2048i8.21.22([2048 x i8]* %2, [64 x i8]* align 512 %_0, [64 x i8]* align 512 %_1, [64 x i8]* align 512 %_2, [64 x i8]* align 512 %_3, [64 x i8]* align 512 %_4, [64 x i8]* align 512 %_5, [64 x i8]* align 512 %_6, [64 x i8]* align 512 %_7, [64 x i8]* align 512 %_8, [64 x i8]* align 512 %_9, [64 x i8]* align 512 %_10, [64 x i8]* align 512 %_11, [64 x i8]* align 512 %_12, [64 x i8]* align 512 %_13, [64 x i8]* align 512 %_14, [64 x i8]* align 512 %_15, [64 x i8]* align 512 %_16, [64 x i8]* align 512 %_17, [64 x i8]* align 512 %_18, [64 x i8]* align 512 %_19, [64 x i8]* align 512 %_20, [64 x i8]* align 512 %_21, [64 x i8]* align 512 %_22, [64 x i8]* align 512 %_23, [64 x i8]* align 512 %_24, [64 x i8]* align 512 %_25, [64 x i8]* align 512 %_26, [64 x i8]* align 512 %_27, [64 x i8]* align 512 %_28, [64 x i8]* align 512 %_29, [64 x i8]* align 512 %_30, [64 x i8]* align 512 %_31)
  ret void
}

declare void @apatb_eucHW_hw(i32*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*)

define void @eucHW_hw_stub_wrapper(i32*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*, [64 x i8]*) #7 {
entry:
  %33 = alloca [2048 x i8]
  call void @copy_out(i32* null, i32* %0, [2048 x i8]* %33, [64 x i8]* %1, [64 x i8]* %2, [64 x i8]* %3, [64 x i8]* %4, [64 x i8]* %5, [64 x i8]* %6, [64 x i8]* %7, [64 x i8]* %8, [64 x i8]* %9, [64 x i8]* %10, [64 x i8]* %11, [64 x i8]* %12, [64 x i8]* %13, [64 x i8]* %14, [64 x i8]* %15, [64 x i8]* %16, [64 x i8]* %17, [64 x i8]* %18, [64 x i8]* %19, [64 x i8]* %20, [64 x i8]* %21, [64 x i8]* %22, [64 x i8]* %23, [64 x i8]* %24, [64 x i8]* %25, [64 x i8]* %26, [64 x i8]* %27, [64 x i8]* %28, [64 x i8]* %29, [64 x i8]* %30, [64 x i8]* %31, [64 x i8]* %32)
  %34 = bitcast [2048 x i8]* %33 to i8*
  call void @eucHW_hw_stub(i32* %0, i8* %34)
  call void @copy_in(i32* null, i32* %0, [2048 x i8]* %33, [64 x i8]* %1, [64 x i8]* %2, [64 x i8]* %3, [64 x i8]* %4, [64 x i8]* %5, [64 x i8]* %6, [64 x i8]* %7, [64 x i8]* %8, [64 x i8]* %9, [64 x i8]* %10, [64 x i8]* %11, [64 x i8]* %12, [64 x i8]* %13, [64 x i8]* %14, [64 x i8]* %15, [64 x i8]* %16, [64 x i8]* %17, [64 x i8]* %18, [64 x i8]* %19, [64 x i8]* %20, [64 x i8]* %21, [64 x i8]* %22, [64 x i8]* %23, [64 x i8]* %24, [64 x i8]* %25, [64 x i8]* %26, [64 x i8]* %27, [64 x i8]* %28, [64 x i8]* %29, [64 x i8]* %30, [64 x i8]* %31, [64 x i8]* %32)
  ret void
}

declare void @eucHW_hw_stub(i32*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }

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
!6 = distinct !DISubprogram(name: "eucHW", linkageName: "_Z5eucHWPiPh", scope: !7, file: !7, line: 3, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !19, variables: !4)
!7 = !DIFile(filename: "src/EucHW_RC.cpp", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432\5CVITIS_SRCS")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !14}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tout", file: !12, line: 7, baseType: !13)
!12 = !DIFile(filename: "src/specs.h", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432\5CVITIS_SRCS")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "T", file: !12, line: 6, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !17, line: 36, baseType: !18)
!17 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cstdint.h", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432\5CVITIS_SRCS")
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !20, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, imports: !21)
!20 = !DIFile(filename: "C:/Users/juan_/Documents/FPGA/JA-RM-IPD432/VITIS_SRCS/EucHLS/solution1/.autopilot/db\5CEucHW_RC.pp.0.cpp", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432\5CVITIS_SRCS")
!21 = !{!22, !27, !30, !32, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !57, !58, !61, !64, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !88, !95, !97, !99, !103, !105, !107, !109, !111, !113, !115, !117, !122, !126, !128, !130, !135, !137, !139, !141, !143, !145, !147, !149, !152, !154, !158, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !187, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !225, !229, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !255, !259, !263, !265, !267, !269, !273, !277, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !309, !313, !317, !319, !321, !323, !330, !334, !338, !340, !342, !344, !346, !348, !350, !354, !358, !360, !362, !364, !366, !370, !374, !378, !380, !382, !384, !386, !388, !390, !394, !398, !402, !404, !408, !412, !414, !416, !418, !420, !422, !424, !430, !435, !441, !445, !450, !452, !456, !460, !471, !475, !479, !483, !487, !492, !496, !500, !504, !508, !516, !520, !524, !528, !532, !536, !542, !546, !550, !552, !560, !564, !571, !573, !577, !581, !585, !589, !593, !597, !601, !602, !603, !604, !606, !607, !608, !609, !610, !611, !612, !614, !615, !616, !617, !618, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!22 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !24, file: !26, line: 48)
!23 = !DINamespace(name: "std", scope: null)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !17, line: 35, baseType: !25)
!25 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccstdint", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432\5CVITIS_SRCS")
!27 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !28, file: !26, line: 49)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !17, line: 37, baseType: !29)
!29 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!30 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !31, file: !26, line: 50)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !17, line: 39, baseType: !13)
!32 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !33, file: !26, line: 51)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !17, line: 41, baseType: !34)
!34 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!35 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !36, file: !26, line: 53)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !17, line: 58, baseType: !25)
!37 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !38, file: !26, line: 54)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !17, line: 60, baseType: !29)
!39 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !40, file: !26, line: 55)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !17, line: 62, baseType: !13)
!41 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !42, file: !26, line: 56)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !17, line: 64, baseType: !34)
!43 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !44, file: !26, line: 58)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !17, line: 45, baseType: !25)
!45 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !46, file: !26, line: 59)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !17, line: 47, baseType: !29)
!47 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !48, file: !26, line: 60)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !17, line: 49, baseType: !13)
!49 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !50, file: !26, line: 61)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !17, line: 51, baseType: !34)
!51 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !52, file: !26, line: 63)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !17, line: 68, baseType: !34)
!53 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !54, file: !26, line: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !55, line: 62, baseType: !56)
!55 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Ccrtdefs.h", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432\5CVITIS_SRCS")
!56 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!57 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !16, file: !26, line: 66)
!58 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !59, file: !26, line: 67)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !17, line: 38, baseType: !60)
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !62, file: !26, line: 68)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !17, line: 40, baseType: !63)
!63 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!64 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !65, file: !26, line: 69)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !17, line: 42, baseType: !66)
!66 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !68, file: !26, line: 71)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !17, line: 59, baseType: !18)
!69 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !70, file: !26, line: 72)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !17, line: 61, baseType: !60)
!71 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !72, file: !26, line: 73)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !17, line: 63, baseType: !63)
!73 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !74, file: !26, line: 74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !17, line: 65, baseType: !66)
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !76, file: !26, line: 76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !17, line: 46, baseType: !18)
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !78, file: !26, line: 77)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !17, line: 48, baseType: !60)
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !80, file: !26, line: 78)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !17, line: 50, baseType: !63)
!81 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !82, file: !26, line: 79)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !17, line: 52, baseType: !66)
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !84, file: !26, line: 81)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !17, line: 69, baseType: !66)
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !86, file: !26, line: 82)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !55, line: 75, baseType: !87)
!87 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !89, file: !94, line: 106)
!89 = !DISubprogram(name: "acos", scope: !90, file: !90, line: 190, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!90 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cmath.h", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432\5CVITIS_SRCS")
!91 = !DISubroutineType(types: !92)
!92 = !{!93, !93}
!93 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!94 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccmath", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432\5CVITIS_SRCS")
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !96, file: !94, line: 125)
!96 = !DISubprogram(name: "asin", scope: !90, file: !90, line: 189, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !98, file: !94, line: 144)
!98 = !DISubprogram(name: "atan", scope: !90, file: !90, line: 191, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !100, file: !94, line: 163)
!100 = !DISubprogram(name: "atan2", scope: !90, file: !90, line: 192, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!101 = !DISubroutineType(types: !102)
!102 = !{!93, !93, !93}
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !104, file: !94, line: 184)
!104 = !DISubprogram(name: "ceil", scope: !90, file: !90, line: 198, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !106, file: !94, line: 203)
!106 = !DISubprogram(name: "cos", scope: !90, file: !90, line: 184, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !108, file: !94, line: 222)
!108 = !DISubprogram(name: "cosh", scope: !90, file: !90, line: 187, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !110, file: !94, line: 241)
!110 = !DISubprogram(name: "exp", scope: !90, file: !90, line: 193, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !112, file: !94, line: 260)
!112 = !DISubprogram(name: "fabs", scope: !90, file: !90, line: 204, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !114, file: !94, line: 279)
!114 = !DISubprogram(name: "floor", scope: !90, file: !90, line: 199, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !116, file: !94, line: 298)
!116 = !DISubprogram(name: "fmod", scope: !90, file: !90, line: 246, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !118, file: !94, line: 319)
!118 = !DISubprogram(name: "frexp", scope: !90, file: !90, line: 244, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DISubroutineType(types: !120)
!120 = !{!93, !93, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !123, file: !94, line: 338)
!123 = !DISubprogram(name: "ldexp", scope: !90, file: !90, line: 243, type: !124, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!124 = !DISubroutineType(types: !125)
!125 = !{!93, !93, !13}
!126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !127, file: !94, line: 357)
!127 = !DISubprogram(name: "log", scope: !90, file: !90, line: 194, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !129, file: !94, line: 376)
!129 = !DISubprogram(name: "log10", scope: !90, file: !90, line: 195, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !131, file: !94, line: 395)
!131 = !DISubprogram(name: "modf", scope: !90, file: !90, line: 245, type: !132, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!132 = !DISubroutineType(types: !133)
!133 = !{!93, !93, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !136, file: !94, line: 407)
!136 = !DISubprogram(name: "pow", scope: !90, file: !90, line: 196, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !138, file: !94, line: 444)
!138 = !DISubprogram(name: "sin", scope: !90, file: !90, line: 183, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !140, file: !94, line: 463)
!140 = !DISubprogram(name: "sinh", scope: !90, file: !90, line: 186, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !142, file: !94, line: 482)
!142 = !DISubprogram(name: "sqrt", scope: !90, file: !90, line: 197, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !144, file: !94, line: 501)
!144 = !DISubprogram(name: "tan", scope: !90, file: !90, line: 185, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !146, file: !94, line: 520)
!146 = !DISubprogram(name: "tanh", scope: !90, file: !90, line: 188, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !148, file: !94, line: 1077)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !90, line: 373, baseType: !93)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !150, file: !94, line: 1078)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !90, line: 372, baseType: !151)
!151 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !153, file: !94, line: 1081)
!153 = !DISubprogram(name: "acosh", scope: !90, file: !90, line: 705, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !155, file: !94, line: 1082)
!155 = !DISubprogram(name: "acoshf", scope: !90, file: !90, line: 706, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!156 = !DISubroutineType(types: !157)
!157 = !{!151, !151}
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !159, file: !94, line: 1083)
!159 = !DISubprogram(name: "acoshl", scope: !90, file: !90, line: 707, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !162}
!162 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !164, file: !94, line: 1085)
!164 = !DISubprogram(name: "asinh", scope: !90, file: !90, line: 710, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !166, file: !94, line: 1086)
!166 = !DISubprogram(name: "asinhf", scope: !90, file: !90, line: 711, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !168, file: !94, line: 1087)
!168 = !DISubprogram(name: "asinhl", scope: !90, file: !90, line: 712, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !170, file: !94, line: 1089)
!170 = !DISubprogram(name: "atanh", scope: !90, file: !90, line: 715, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !172, file: !94, line: 1090)
!172 = !DISubprogram(name: "atanhf", scope: !90, file: !90, line: 716, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !174, file: !94, line: 1091)
!174 = !DISubprogram(name: "atanhl", scope: !90, file: !90, line: 717, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !176, file: !94, line: 1093)
!176 = !DISubprogram(name: "cbrt", scope: !90, file: !90, line: 877, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !178, file: !94, line: 1094)
!178 = !DISubprogram(name: "cbrtf", scope: !90, file: !90, line: 878, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !180, file: !94, line: 1095)
!180 = !DISubprogram(name: "cbrtl", scope: !90, file: !90, line: 879, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !182, file: !94, line: 1097)
!182 = !DISubprogram(name: "copysign", scope: !90, file: !90, line: 1063, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !184, file: !94, line: 1098)
!184 = !DISubprogram(name: "copysignf", scope: !90, file: !90, line: 1064, type: !185, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!185 = !DISubroutineType(types: !186)
!186 = !{!151, !151, !151}
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !188, file: !94, line: 1099)
!188 = !DISubprogram(name: "copysignl", scope: !90, file: !90, line: 1065, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DISubroutineType(types: !190)
!190 = !{!162, !162, !162}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !192, file: !94, line: 1101)
!192 = !DISubprogram(name: "erf", scope: !90, file: !90, line: 901, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !194, file: !94, line: 1102)
!194 = !DISubprogram(name: "erff", scope: !90, file: !90, line: 902, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !196, file: !94, line: 1103)
!196 = !DISubprogram(name: "erfl", scope: !90, file: !90, line: 903, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !198, file: !94, line: 1105)
!198 = !DISubprogram(name: "erfc", scope: !90, file: !90, line: 906, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !200, file: !94, line: 1106)
!200 = !DISubprogram(name: "erfcf", scope: !90, file: !90, line: 907, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !202, file: !94, line: 1107)
!202 = !DISubprogram(name: "erfcl", scope: !90, file: !90, line: 908, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !204, file: !94, line: 1109)
!204 = !DISubprogram(name: "exp2", scope: !90, file: !90, line: 728, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !206, file: !94, line: 1110)
!206 = !DISubprogram(name: "exp2f", scope: !90, file: !90, line: 729, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !208, file: !94, line: 1111)
!208 = !DISubprogram(name: "exp2l", scope: !90, file: !90, line: 730, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !210, file: !94, line: 1113)
!210 = !DISubprogram(name: "expm1", scope: !90, file: !90, line: 734, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !212, file: !94, line: 1114)
!212 = !DISubprogram(name: "expm1f", scope: !90, file: !90, line: 735, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !214, file: !94, line: 1115)
!214 = !DISubprogram(name: "expm1l", scope: !90, file: !90, line: 736, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !216, file: !94, line: 1117)
!216 = !DISubprogram(name: "fdim", scope: !90, file: !90, line: 1109, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !218, file: !94, line: 1118)
!218 = !DISubprogram(name: "fdimf", scope: !90, file: !90, line: 1110, type: !185, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !220, file: !94, line: 1119)
!220 = !DISubprogram(name: "fdiml", scope: !90, file: !90, line: 1111, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !222, file: !94, line: 1121)
!222 = !DISubprogram(name: "fma", scope: !90, file: !90, line: 1130, type: !223, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!223 = !DISubroutineType(types: !224)
!224 = !{!93, !93, !93, !93}
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !226, file: !94, line: 1122)
!226 = !DISubprogram(name: "fmaf", scope: !90, file: !90, line: 1131, type: !227, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DISubroutineType(types: !228)
!228 = !{!151, !151, !151, !151}
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !230, file: !94, line: 1123)
!230 = !DISubprogram(name: "fmal", scope: !90, file: !90, line: 1132, type: !231, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!231 = !DISubroutineType(types: !232)
!232 = !{!162, !162, !162, !162}
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !234, file: !94, line: 1125)
!234 = !DISubprogram(name: "fmax", scope: !90, file: !90, line: 1119, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !236, file: !94, line: 1126)
!236 = !DISubprogram(name: "fmaxf", scope: !90, file: !90, line: 1120, type: !185, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !238, file: !94, line: 1127)
!238 = !DISubprogram(name: "fmaxl", scope: !90, file: !90, line: 1121, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !240, file: !94, line: 1129)
!240 = !DISubprogram(name: "fmin", scope: !90, file: !90, line: 1124, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !242, file: !94, line: 1130)
!242 = !DISubprogram(name: "fminf", scope: !90, file: !90, line: 1125, type: !185, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !244, file: !94, line: 1131)
!244 = !DISubprogram(name: "fminl", scope: !90, file: !90, line: 1126, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !246, file: !94, line: 1133)
!246 = !DISubprogram(name: "hypot", scope: !90, file: !90, line: 882, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !248, file: !94, line: 1134)
!248 = !DISubprogram(name: "hypotf", scope: !90, file: !90, line: 883, type: !185, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !250, file: !94, line: 1135)
!250 = !DISubprogram(name: "hypotl", scope: !90, file: !90, line: 887, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !252, file: !94, line: 1137)
!252 = !DISubprogram(name: "ilogb", scope: !90, file: !90, line: 748, type: !253, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DISubroutineType(types: !254)
!254 = !{!13, !93}
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !256, file: !94, line: 1138)
!256 = !DISubprogram(name: "ilogbf", scope: !90, file: !90, line: 749, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!257 = !DISubroutineType(types: !258)
!258 = !{!13, !151}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !260, file: !94, line: 1139)
!260 = !DISubprogram(name: "ilogbl", scope: !90, file: !90, line: 750, type: !261, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!261 = !DISubroutineType(types: !262)
!262 = !{!13, !162}
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !264, file: !94, line: 1141)
!264 = !DISubprogram(name: "lgamma", scope: !90, file: !90, line: 911, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !266, file: !94, line: 1142)
!266 = !DISubprogram(name: "lgammaf", scope: !90, file: !90, line: 912, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !268, file: !94, line: 1143)
!268 = !DISubprogram(name: "lgammal", scope: !90, file: !90, line: 913, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !270, file: !94, line: 1145)
!270 = !DISubprogram(name: "llrint", scope: !90, file: !90, line: 946, type: !271, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!271 = !DISubroutineType(types: !272)
!272 = !{!34, !93}
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !274, file: !94, line: 1146)
!274 = !DISubprogram(name: "llrintf", scope: !90, file: !90, line: 947, type: !275, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!275 = !DISubroutineType(types: !276)
!276 = !{!34, !151}
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !278, file: !94, line: 1147)
!278 = !DISubprogram(name: "llrintl", scope: !90, file: !90, line: 948, type: !279, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!279 = !DISubroutineType(types: !280)
!280 = !{!34, !162}
!281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !282, file: !94, line: 1149)
!282 = !DISubprogram(name: "llround", scope: !90, file: !90, line: 1038, type: !271, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !284, file: !94, line: 1150)
!284 = !DISubprogram(name: "llroundf", scope: !90, file: !90, line: 1039, type: !275, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !286, file: !94, line: 1151)
!286 = !DISubprogram(name: "llroundl", scope: !90, file: !90, line: 1040, type: !279, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !288, file: !94, line: 1153)
!288 = !DISubprogram(name: "log1p", scope: !90, file: !90, line: 768, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !290, file: !94, line: 1154)
!290 = !DISubprogram(name: "log1pf", scope: !90, file: !90, line: 769, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !292, file: !94, line: 1155)
!292 = !DISubprogram(name: "log1pl", scope: !90, file: !90, line: 770, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !294, file: !94, line: 1157)
!294 = !DISubprogram(name: "log2", scope: !90, file: !90, line: 773, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !296, file: !94, line: 1158)
!296 = !DISubprogram(name: "log2f", scope: !90, file: !90, line: 774, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !298, file: !94, line: 1159)
!298 = !DISubprogram(name: "log2l", scope: !90, file: !90, line: 775, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !300, file: !94, line: 1161)
!300 = !DISubprogram(name: "logb", scope: !90, file: !90, line: 778, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !302, file: !94, line: 1162)
!302 = !DISubprogram(name: "logbf", scope: !90, file: !90, line: 779, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !304, file: !94, line: 1163)
!304 = !DISubprogram(name: "logbl", scope: !90, file: !90, line: 780, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !306, file: !94, line: 1165)
!306 = !DISubprogram(name: "lrint", scope: !90, file: !90, line: 942, type: !307, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!307 = !DISubroutineType(types: !308)
!308 = !{!56, !93}
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !310, file: !94, line: 1166)
!310 = !DISubprogram(name: "lrintf", scope: !90, file: !90, line: 943, type: !311, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!311 = !DISubroutineType(types: !312)
!312 = !{!56, !151}
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !314, file: !94, line: 1167)
!314 = !DISubprogram(name: "lrintl", scope: !90, file: !90, line: 944, type: !315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!315 = !DISubroutineType(types: !316)
!316 = !{!56, !162}
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !318, file: !94, line: 1169)
!318 = !DISubprogram(name: "lround", scope: !90, file: !90, line: 1035, type: !307, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !320, file: !94, line: 1170)
!320 = !DISubprogram(name: "lroundf", scope: !90, file: !90, line: 1036, type: !311, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !322, file: !94, line: 1171)
!322 = !DISubprogram(name: "lroundl", scope: !90, file: !90, line: 1037, type: !315, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !324, file: !94, line: 1173)
!324 = !DISubprogram(name: "nan", scope: !90, file: !90, line: 1087, type: !325, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!325 = !DISubroutineType(types: !326)
!326 = !{!93, !327}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !331, file: !94, line: 1174)
!331 = !DISubprogram(name: "nanf", scope: !90, file: !90, line: 1088, type: !332, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DISubroutineType(types: !333)
!333 = !{!151, !327}
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !335, file: !94, line: 1175)
!335 = !DISubprogram(name: "nanl", scope: !90, file: !90, line: 1089, type: !336, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!336 = !DISubroutineType(types: !337)
!337 = !{!162, !327}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !339, file: !94, line: 1177)
!339 = !DISubprogram(name: "nearbyint", scope: !90, file: !90, line: 931, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !341, file: !94, line: 1178)
!341 = !DISubprogram(name: "nearbyintf", scope: !90, file: !90, line: 932, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !343, file: !94, line: 1179)
!343 = !DISubprogram(name: "nearbyintl", scope: !90, file: !90, line: 933, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !345, file: !94, line: 1181)
!345 = !DISubprogram(name: "nextafter", scope: !90, file: !90, line: 1098, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !347, file: !94, line: 1182)
!347 = !DISubprogram(name: "nextafterf", scope: !90, file: !90, line: 1099, type: !185, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !349, file: !94, line: 1183)
!349 = !DISubprogram(name: "nextafterl", scope: !90, file: !90, line: 1100, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !351, file: !94, line: 1185)
!351 = !DISubprogram(name: "nexttoward", scope: !90, file: !90, line: 1103, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!352 = !DISubroutineType(types: !353)
!353 = !{!93, !93, !162}
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !355, file: !94, line: 1186)
!355 = !DISubprogram(name: "nexttowardf", scope: !90, file: !90, line: 1104, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!356 = !DISubroutineType(types: !357)
!357 = !{!151, !151, !162}
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !359, file: !94, line: 1187)
!359 = !DISubprogram(name: "nexttowardl", scope: !90, file: !90, line: 1105, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !361, file: !94, line: 1189)
!361 = !DISubprogram(name: "remainder", scope: !90, file: !90, line: 1053, type: !101, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !363, file: !94, line: 1190)
!363 = !DISubprogram(name: "remainderf", scope: !90, file: !90, line: 1054, type: !185, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !365, file: !94, line: 1191)
!365 = !DISubprogram(name: "remainderl", scope: !90, file: !90, line: 1055, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !367, file: !94, line: 1193)
!367 = !DISubprogram(name: "remquo", scope: !90, file: !90, line: 1058, type: !368, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!368 = !DISubroutineType(types: !369)
!369 = !{!93, !93, !93, !121}
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !371, file: !94, line: 1194)
!371 = !DISubprogram(name: "remquof", scope: !90, file: !90, line: 1059, type: !372, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!372 = !DISubroutineType(types: !373)
!373 = !{!151, !151, !151, !121}
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !375, file: !94, line: 1195)
!375 = !DISubprogram(name: "remquol", scope: !90, file: !90, line: 1060, type: !376, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!376 = !DISubroutineType(types: !377)
!377 = !{!162, !162, !162, !121}
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !379, file: !94, line: 1197)
!379 = !DISubprogram(name: "rint", scope: !90, file: !90, line: 937, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !381, file: !94, line: 1198)
!381 = !DISubprogram(name: "rintf", scope: !90, file: !90, line: 938, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !383, file: !94, line: 1199)
!383 = !DISubprogram(name: "rintl", scope: !90, file: !90, line: 939, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !385, file: !94, line: 1201)
!385 = !DISubprogram(name: "round", scope: !90, file: !90, line: 1030, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !387, file: !94, line: 1202)
!387 = !DISubprogram(name: "roundf", scope: !90, file: !90, line: 1031, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !389, file: !94, line: 1203)
!389 = !DISubprogram(name: "roundl", scope: !90, file: !90, line: 1032, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !391, file: !94, line: 1205)
!391 = !DISubprogram(name: "scalbln", scope: !90, file: !90, line: 871, type: !392, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!392 = !DISubroutineType(types: !393)
!393 = !{!93, !93, !56}
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !395, file: !94, line: 1206)
!395 = !DISubprogram(name: "scalblnf", scope: !90, file: !90, line: 872, type: !396, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!396 = !DISubroutineType(types: !397)
!397 = !{!151, !151, !56}
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !399, file: !94, line: 1207)
!399 = !DISubprogram(name: "scalblnl", scope: !90, file: !90, line: 873, type: !400, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!400 = !DISubroutineType(types: !401)
!401 = !{!162, !162, !56}
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !403, file: !94, line: 1209)
!403 = !DISubprogram(name: "scalbn", scope: !90, file: !90, line: 867, type: !124, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !405, file: !94, line: 1210)
!405 = !DISubprogram(name: "scalbnf", scope: !90, file: !90, line: 868, type: !406, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!406 = !DISubroutineType(types: !407)
!407 = !{!151, !151, !13}
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !409, file: !94, line: 1211)
!409 = !DISubprogram(name: "scalbnl", scope: !90, file: !90, line: 869, type: !410, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!410 = !DISubroutineType(types: !411)
!411 = !{!162, !162, !13}
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !413, file: !94, line: 1213)
!413 = !DISubprogram(name: "tgamma", scope: !90, file: !90, line: 918, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !415, file: !94, line: 1214)
!415 = !DISubprogram(name: "tgammaf", scope: !90, file: !90, line: 919, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !417, file: !94, line: 1215)
!417 = !DISubprogram(name: "tgammal", scope: !90, file: !90, line: 920, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !419, file: !94, line: 1217)
!419 = !DISubprogram(name: "trunc", scope: !90, file: !90, line: 1044, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !421, file: !94, line: 1218)
!421 = !DISubprogram(name: "truncf", scope: !90, file: !90, line: 1045, type: !156, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !423, file: !94, line: 1219)
!423 = !DISubprogram(name: "truncl", scope: !90, file: !90, line: 1046, type: !160, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !425, file: !429, line: 54)
!425 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !23, file: !94, line: 403, type: !426, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!426 = !DISubroutineType(types: !427)
!427 = !{!162, !162, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!429 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Cmath.h", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432\5CVITIS_SRCS")
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !431, file: !434, line: 124)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !432, line: 53, baseType: !433)
!432 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cstdlib.h", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432\5CVITIS_SRCS")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_div_t", file: !432, line: 50, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS6_div_t")
!434 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Ccstdlib", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432\5CVITIS_SRCS")
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !436, file: !434, line: 125)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !432, line: 58, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ldiv_t", file: !432, line: 55, size: 128, flags: DIFlagTypePassByValue, elements: !438, identifier: "_ZTS7_ldiv_t")
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !437, file: !432, line: 56, baseType: !56, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !437, file: !432, line: 57, baseType: !56, size: 64, offset: 64)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !442, file: !434, line: 127)
!442 = !DISubprogram(name: "abort", scope: !432, file: !432, line: 320, type: !443, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!443 = !DISubroutineType(types: !444)
!444 = !{null}
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !446, file: !434, line: 129)
!446 = !DISubprogram(name: "atexit", scope: !432, file: !432, line: 340, type: !447, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!447 = !DISubroutineType(types: !448)
!448 = !{!13, !449}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !451, file: !434, line: 135)
!451 = !DISubprogram(name: "atof", scope: !90, file: !90, line: 259, type: !325, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !453, file: !434, line: 136)
!453 = !DISubprogram(name: "atoi", scope: !432, file: !432, line: 346, type: !454, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!454 = !DISubroutineType(types: !455)
!455 = !{!13, !327}
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !457, file: !434, line: 137)
!457 = !DISubprogram(name: "atol", scope: !432, file: !432, line: 348, type: !458, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!458 = !DISubroutineType(types: !459)
!459 = !{!56, !327}
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !461, file: !434, line: 138)
!461 = !DISubprogram(name: "bsearch", scope: !432, file: !432, line: 352, type: !462, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!462 = !DISubroutineType(types: !463)
!463 = !{!464, !465, !465, !467, !467, !468}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 35, baseType: !87)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!13, !465, !465}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !472, file: !434, line: 139)
!472 = !DISubprogram(name: "calloc", scope: !432, file: !432, line: 446, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DISubroutineType(types: !474)
!474 = !{!464, !467, !467}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !476, file: !434, line: 140)
!476 = !DISubprogram(name: "div", scope: !432, file: !432, line: 358, type: !477, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DISubroutineType(types: !478)
!478 = !{!431, !13, !13}
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !480, file: !434, line: 141)
!480 = !DISubprogram(name: "exit", scope: !432, file: !432, line: 306, type: !481, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !13}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !484, file: !434, line: 142)
!484 = !DISubprogram(name: "free", scope: !432, file: !432, line: 447, type: !485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !464}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !488, file: !434, line: 143)
!488 = !DISubprogram(name: "getenv", scope: !432, file: !432, line: 359, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!489 = !DISubroutineType(types: !490)
!490 = !{!491, !327}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !493, file: !434, line: 144)
!493 = !DISubprogram(name: "labs", scope: !90, file: !90, line: 255, type: !494, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!494 = !DISubroutineType(types: !495)
!495 = !{!56, !56}
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !497, file: !434, line: 145)
!497 = !DISubprogram(name: "ldiv", scope: !432, file: !432, line: 369, type: !498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!498 = !DISubroutineType(types: !499)
!499 = !{!436, !56, !56}
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !501, file: !434, line: 146)
!501 = !DISubprogram(name: "malloc", scope: !432, file: !432, line: 448, type: !502, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!502 = !DISubroutineType(types: !503)
!503 = !{!464, !467}
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !505, file: !434, line: 148)
!505 = !DISubprogram(name: "mblen", scope: !432, file: !432, line: 371, type: !506, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!506 = !DISubroutineType(types: !507)
!507 = !{!13, !327, !467}
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !509, file: !434, line: 149)
!509 = !DISubprogram(name: "mbstowcs", scope: !432, file: !432, line: 379, type: !510, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!510 = !DISubroutineType(types: !511)
!511 = !{!467, !512, !515, !467}
!512 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!515 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !327)
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !517, file: !434, line: 150)
!517 = !DISubprogram(name: "mbtowc", scope: !432, file: !432, line: 377, type: !518, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!518 = !DISubroutineType(types: !519)
!519 = !{!13, !512, !515, !467}
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !521, file: !434, line: 152)
!521 = !DISubprogram(name: "qsort", scope: !432, file: !432, line: 353, type: !522, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !464, !467, !467, !468}
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !525, file: !434, line: 158)
!525 = !DISubprogram(name: "rand", scope: !432, file: !432, line: 382, type: !526, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!526 = !DISubroutineType(types: !527)
!527 = !{!13}
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !529, file: !434, line: 159)
!529 = !DISubprogram(name: "realloc", scope: !432, file: !432, line: 449, type: !530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!530 = !DISubroutineType(types: !531)
!531 = !{!464, !464, !467}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !533, file: !434, line: 160)
!533 = !DISubprogram(name: "srand", scope: !432, file: !432, line: 384, type: !534, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !63}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !537, file: !434, line: 161)
!537 = !DISubprogram(name: "strtod", scope: !432, file: !432, line: 396, type: !538, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!538 = !DISubroutineType(types: !539)
!539 = !{!93, !515, !540}
!540 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !543, file: !434, line: 162)
!543 = !DISubprogram(name: "strtol", scope: !432, file: !432, line: 430, type: !544, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!544 = !DISubroutineType(types: !545)
!545 = !{!56, !515, !540, !13}
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !547, file: !434, line: 163)
!547 = !DISubprogram(name: "strtoul", scope: !432, file: !432, line: 432, type: !548, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!548 = !DISubroutineType(types: !549)
!549 = !{!87, !515, !540, !13}
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !551, file: !434, line: 164)
!551 = !DISubprogram(name: "system", scope: !432, file: !432, line: 436, type: !454, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !553, file: !434, line: 166)
!553 = !DISubprogram(name: "wcstombs", scope: !432, file: !432, line: 441, type: !554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DISubroutineType(types: !555)
!555 = !{!467, !556, !557, !467}
!556 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !491)
!557 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !561, file: !434, line: 167)
!561 = !DISubprogram(name: "wctomb", scope: !432, file: !432, line: 439, type: !562, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!562 = !DISubroutineType(types: !563)
!563 = !{!13, !491, !514}
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !565, entity: !566, file: !434, line: 220)
!565 = !DINamespace(name: "__gnu_cxx", scope: null)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !432, line: 644, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !432, line: 644, size: 128, flags: DIFlagTypePassByValue, elements: !568, identifier: "_ZTS7lldiv_t")
!568 = !{!569, !570}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !567, file: !432, line: 644, baseType: !34, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !567, file: !432, line: 644, baseType: !34, size: 64, offset: 64)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !565, entity: !572, file: !434, line: 226)
!572 = !DISubprogram(name: "_Exit", scope: !432, file: !432, line: 311, type: !481, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !565, entity: !574, file: !434, line: 230)
!574 = !DISubprogram(name: "llabs", scope: !432, file: !432, line: 648, type: !575, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!575 = !DISubroutineType(types: !576)
!576 = !{!34, !34}
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !565, entity: !578, file: !434, line: 236)
!578 = !DISubprogram(name: "lldiv", scope: !432, file: !432, line: 646, type: !579, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!579 = !DISubroutineType(types: !580)
!580 = !{!566, !34, !34}
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !565, entity: !582, file: !434, line: 247)
!582 = !DISubprogram(name: "atoll", scope: !432, file: !432, line: 657, type: !583, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!583 = !DISubroutineType(types: !584)
!584 = !{!34, !327}
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !565, entity: !586, file: !434, line: 248)
!586 = !DISubprogram(name: "strtoll", scope: !432, file: !432, line: 653, type: !587, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!587 = !DISubroutineType(types: !588)
!588 = !{!34, !515, !540, !13}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !565, entity: !590, file: !434, line: 249)
!590 = !DISubprogram(name: "strtoull", scope: !432, file: !432, line: 654, type: !591, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!591 = !DISubroutineType(types: !592)
!592 = !{!66, !515, !540, !13}
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !565, entity: !594, file: !434, line: 251)
!594 = !DISubprogram(name: "strtof", scope: !432, file: !432, line: 403, type: !595, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!595 = !DISubroutineType(types: !596)
!596 = !{!151, !515, !540}
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !565, entity: !598, file: !434, line: 252)
!598 = !DISubprogram(name: "strtold", scope: !432, file: !432, line: 414, type: !599, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!599 = !DISubroutineType(types: !600)
!600 = !{!162, !515, !540}
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !566, file: !434, line: 260)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !572, file: !434, line: 262)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !574, file: !434, line: 264)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !605, file: !434, line: 265)
!605 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !565, file: !434, line: 233, type: !579, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !578, file: !434, line: 266)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !582, file: !434, line: 268)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !594, file: !434, line: 269)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !586, file: !434, line: 270)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !590, file: !434, line: 271)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !23, entity: !598, file: !434, line: 272)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !442, file: !613, line: 38)
!613 = !DIFile(filename: "C:/Xilinx/Vitis_HLS/2021.1/tps/mingw/6.2.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C6.2.0\5Cinclude\5Cc++\5Cstdlib.h", directory: "C:\5CUsers\5Cjuan_\5CDocuments\5CFPGA\5CJA-RM-IPD432\5CVITIS_SRCS")
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !446, file: !613, line: 39)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !480, file: !613, line: 40)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !431, file: !613, line: 51)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !436, file: !613, line: 52)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !619, file: !613, line: 54)
!619 = !DISubprogram(name: "abs", linkageName: "_ZSt3absl", scope: !23, file: !434, line: 172, type: !494, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !451, file: !613, line: 55)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !453, file: !613, line: 56)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !457, file: !613, line: 57)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !461, file: !613, line: 58)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !472, file: !613, line: 59)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !605, file: !613, line: 60)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !484, file: !613, line: 61)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !488, file: !613, line: 62)
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !493, file: !613, line: 63)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !497, file: !613, line: 64)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !501, file: !613, line: 65)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !505, file: !613, line: 67)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !509, file: !613, line: 68)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !517, file: !613, line: 69)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !521, file: !613, line: 71)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !525, file: !613, line: 72)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !529, file: !613, line: 73)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !533, file: !613, line: 74)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !537, file: !613, line: 75)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !543, file: !613, line: 76)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !547, file: !613, line: 77)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !551, file: !613, line: 78)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !553, file: !613, line: 80)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !19, entity: !561, file: !613, line: 81)
