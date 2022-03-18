; ModuleID = 'C:/Users/juan_/Documents/FPGA/JA-RM-IPD432/EucHLS/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_eucHW_ir(i8* %A, i8* %B, float* %C) local_unnamed_addr #0 {
entry:
  %A_copy1 = alloca i8192, align 512
  %B_copy = alloca [1024 x i8], align 512
  %C_copy = alloca [1 x float], align 512
  %0 = bitcast i8* %A to [1024 x i8]*
  %1 = bitcast i8* %B to [1024 x i8]*
  %2 = bitcast float* %C to [1 x float]*
  call void @copy_in([1024 x i8]* %0, i8192* nonnull align 512 %A_copy1, [1024 x i8]* %1, [1024 x i8]* nonnull align 512 %B_copy, [1 x float]* %2, [1 x float]* nonnull align 512 %C_copy)
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %B_copy, i32 0, i32 0
  %4 = getelementptr inbounds [1 x float], [1 x float]* %C_copy, i32 0, i32 0
  call void @apatb_eucHW_hw(i8192* %A_copy1, i8* %3, float* %4)
  call void @copy_out([1024 x i8]* %0, i8192* nonnull align 512 %A_copy1, [1024 x i8]* %1, [1024 x i8]* nonnull align 512 %B_copy, [1 x float]* %2, [1 x float]* nonnull align 512 %C_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [1024 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") unnamed_addr #1 {
entry:
  %2 = icmp eq [1024 x i8]* %0, null
  %3 = icmp eq [1024 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1024 x i8], [1024 x i8]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1024 x i8], [1024 x i8]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i8, i8* %src.addr, align 1
  store i8 %5, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a1f32([1 x float]* noalias align 512, [1 x float]* noalias readonly) unnamed_addr #1 {
entry:
  %2 = icmp eq [1 x float]* %0, null
  %3 = icmp eq [1 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %for.loop

for.loop:                                         ; preds = %entry
  %5 = bitcast [1 x float]* %0 to i8*
  %6 = bitcast [1 x float]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a1024i8.3.4(i8192* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [1024 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %2 = icmp eq i8192* %0, null
  %3 = icmp eq [1024 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.promoted = load i8192, i8192* %0, align 512
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %5 = phi i8192 [ %.promoted, %copy ], [ %21, %for.loop ]
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %6 = mul nuw nsw i64 8, %for.loop.idx1
  %src.addr = getelementptr [1024 x i8], [1024 x i8]* %1, i64 0, i64 %for.loop.idx1
  %7 = load i8, i8* %src.addr, align 1
  %8 = zext i8 %7 to i8192
  %9 = add i64 %6, 7
  %10 = zext i64 %6 to i8192
  %11 = shl i8192 %8, %10
  %12 = zext i64 %9 to i8192
  %13 = add nuw nsw i8192 %12, 1
  %14 = shl i8192 1, %13
  %15 = icmp uge i8192 %13, 8192
  %16 = select i1 %15, i8192 0, i8192 %14
  %17 = shl i8192 1, %10
  %18 = sub i8192 %16, %17
  %19 = xor i8192 %18, -1
  %20 = and i8192 %5, %19
  %21 = or i8192 %20, %11
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret.loopexit

ret.loopexit:                                     ; preds = %for.loop
  store i8192 %21, i8192* %0, align 512
  br label %ret

ret:                                              ; preds = %ret.loopexit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_in([1024 x i8]* readonly "orig.arg.no"="0", i8192* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [1024 x i8]* readonly "orig.arg.no"="2", [1024 x i8]* noalias align 512 "orig.arg.no"="3", [1 x float]* readonly "orig.arg.no"="4", [1 x float]* noalias align 512 "orig.arg.no"="5") #3 {
entry:
  call void @onebyonecpy_hls.p0a1024i8.3.4(i8192* align 512 %1, [1024 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* align 512 %3, [1024 x i8]* %2)
  call fastcc void @onebyonecpy_hls.p0a1f32([1 x float]* align 512 %5, [1 x float]* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a1024i8.9.10([1024 x i8]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i8192* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %2 = icmp eq [1024 x i8]* %0, null
  %3 = icmp eq i8192* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i8192, i8192* %1, align 512
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1024 x i8], [1024 x i8]* %0, i64 0, i64 %for.loop.idx1
  %6 = mul nuw nsw i64 8, %for.loop.idx1
  %7 = add i64 %6, 7
  %8 = zext i64 %6 to i8192
  %9 = zext i64 %7 to i8192
  %10 = add nuw nsw i8192 %9, 1
  %11 = shl i8192 1, %10
  %12 = icmp uge i8192 %10, 8192
  %13 = select i1 %12, i8192 0, i8192 %11
  %14 = shl i8192 1, %8
  %15 = sub i8192 %13, %14
  %16 = and i8192 %5, %15
  %17 = lshr i8192 %16, %8
  %18 = trunc i8192 %17 to i8
  store i8 %18, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_out([1024 x i8]* "orig.arg.no"="0", i8192* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [1024 x i8]* "orig.arg.no"="2", [1024 x i8]* noalias readonly align 512 "orig.arg.no"="3", [1 x float]* "orig.arg.no"="4", [1 x float]* noalias readonly align 512 "orig.arg.no"="5") #4 {
entry:
  call void @onebyonecpy_hls.p0a1024i8.9.10([1024 x i8]* %0, i8192* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a1024i8([1024 x i8]* %2, [1024 x i8]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a1f32([1 x float]* %4, [1 x float]* align 512 %5)
  ret void
}

declare void @apatb_eucHW_hw(i8192*, i8*, float*)

define void @eucHW_hw_stub_wrapper(i8192*, i8*, float*) #5 {
entry:
  %3 = alloca [1024 x i8]
  %4 = bitcast i8* %1 to [1024 x i8]*
  %5 = bitcast float* %2 to [1 x float]*
  call void @copy_out([1024 x i8]* %3, i8192* %0, [1024 x i8]* null, [1024 x i8]* %4, [1 x float]* null, [1 x float]* %5)
  %6 = bitcast [1024 x i8]* %3 to i8*
  %7 = bitcast [1024 x i8]* %4 to i8*
  %8 = bitcast [1 x float]* %5 to float*
  call void @eucHW_hw_stub(i8* %6, i8* %7, float* %8)
  call void @copy_in([1024 x i8]* %3, i8192* %0, [1024 x i8]* null, [1024 x i8]* %4, [1 x float]* null, [1 x float]* %5)
  ret void
}

declare void @eucHW_hw_stub(i8*, i8*, float*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
