; ModuleID = 'C:/Users/juan_/Documents/FPGA/JA-RM-IPD432/EucHLS/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_eucHW_ir(i8* %A, i8* %B, i32* %C) local_unnamed_addr #0 {
entry:
  %A_copy1 = alloca [2 x i4096], align 512
  %B_copy2 = alloca [2 x i4096], align 512
  %C_copy = alloca [1 x i32], align 512
  %0 = bitcast i8* %A to [1024 x i8]*
  %1 = bitcast i8* %B to [1024 x i8]*
  %2 = bitcast i32* %C to [1 x i32]*
  call void @copy_in([1024 x i8]* %0, [2 x i4096]* nonnull align 512 %A_copy1, [1024 x i8]* %1, [2 x i4096]* nonnull align 512 %B_copy2, [1 x i32]* %2, [1 x i32]* nonnull align 512 %C_copy)
  %3 = getelementptr inbounds [1 x i32], [1 x i32]* %C_copy, i32 0, i32 0
  call void @apatb_eucHW_hw([2 x i4096]* %A_copy1, [2 x i4096]* %B_copy2, i32* %3)
  call void @copy_out([1024 x i8]* %0, [2 x i4096]* nonnull align 512 %A_copy1, [1024 x i8]* %1, [2 x i4096]* nonnull align 512 %B_copy2, [1 x i32]* %2, [1 x i32]* nonnull align 512 %C_copy)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* noalias align 512, [1 x i32]* noalias readonly) unnamed_addr #2 {
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

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a1024i8.15.16([2 x i4096]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [1024 x i8]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [2 x i4096]* %0, null
  %3 = icmp eq [1024 x i8]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = urem i64 %for.loop.idx1, 512
  %6 = mul i64 8, %5
  %7 = udiv i64 %for.loop.idx1, 512
  %dst.addr1 = getelementptr [2 x i4096], [2 x i4096]* %0, i64 0, i64 %7
  %src.addr = getelementptr [1024 x i8], [1024 x i8]* %1, i64 0, i64 %for.loop.idx1
  %8 = load i8, i8* %src.addr, align 1
  %9 = zext i8 %8 to i4096
  %10 = add i64 %6, 7
  %11 = load i4096, i4096* %dst.addr1, align 512
  %12 = zext i64 %6 to i4096
  %13 = shl i4096 %9, %12
  %14 = zext i64 %10 to i4096
  %15 = add nuw nsw i4096 %14, 1
  %16 = shl i4096 1, %15
  %17 = icmp uge i4096 %15, 4096
  %18 = select i1 %17, i4096 0, i4096 %16
  %19 = shl i4096 1, %12
  %20 = sub i4096 %18, %19
  %21 = xor i4096 %20, -1
  %22 = and i4096 %11, %21
  %23 = or i4096 %22, %13
  store i4096 %23, i4096* %dst.addr1, align 512
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_in([1024 x i8]* readonly "orig.arg.no"="0", [2 x i4096]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [1024 x i8]* readonly "orig.arg.no"="2", [2 x i4096]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [1 x i32]* readonly "orig.arg.no"="4", [1 x i32]* noalias align 512 "orig.arg.no"="5") #3 {
entry:
  call void @onebyonecpy_hls.p0a1024i8.15.16([2 x i4096]* align 512 %1, [1024 x i8]* %0)
  call void @onebyonecpy_hls.p0a1024i8.15.16([2 x i4096]* align 512 %3, [1024 x i8]* %2)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* align 512 %5, [1 x i32]* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a1024i8.21.22([1024 x i8]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [2 x i4096]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %2 = icmp eq [1024 x i8]* %0, null
  %3 = icmp eq [2 x i4096]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1024 x i8], [1024 x i8]* %0, i64 0, i64 %for.loop.idx1
  %5 = urem i64 %for.loop.idx1, 512
  %6 = mul i64 8, %5
  %7 = udiv i64 %for.loop.idx1, 512
  %src.addr1 = getelementptr [2 x i4096], [2 x i4096]* %1, i64 0, i64 %7
  %8 = load i4096, i4096* %src.addr1, align 512
  %9 = add i64 %6, 7
  %10 = zext i64 %6 to i4096
  %11 = zext i64 %9 to i4096
  %12 = add nuw nsw i4096 %11, 1
  %13 = shl i4096 1, %12
  %14 = icmp uge i4096 %12, 4096
  %15 = select i1 %14, i4096 0, i4096 %13
  %16 = shl i4096 1, %10
  %17 = sub i4096 %15, %16
  %18 = and i4096 %8, %17
  %19 = lshr i4096 %18, %10
  %20 = trunc i4096 %19 to i8
  store i8 %20, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_out([1024 x i8]* "orig.arg.no"="0", [2 x i4096]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1", [1024 x i8]* "orig.arg.no"="2", [2 x i4096]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3", [1 x i32]* "orig.arg.no"="4", [1 x i32]* noalias readonly align 512 "orig.arg.no"="5") #4 {
entry:
  call void @onebyonecpy_hls.p0a1024i8.21.22([1024 x i8]* %0, [2 x i4096]* align 512 %1)
  call void @onebyonecpy_hls.p0a1024i8.21.22([1024 x i8]* %2, [2 x i4096]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %4, [1 x i32]* align 512 %5)
  ret void
}

declare void @apatb_eucHW_hw([2 x i4096]*, [2 x i4096]*, i32*)

define void @eucHW_hw_stub_wrapper([2 x i4096]*, [2 x i4096]*, i32*) #5 {
entry:
  %3 = alloca [1024 x i8]
  %4 = alloca [1024 x i8]
  %5 = bitcast i32* %2 to [1 x i32]*
  call void @copy_out([1024 x i8]* %3, [2 x i4096]* %0, [1024 x i8]* %4, [2 x i4096]* %1, [1 x i32]* null, [1 x i32]* %5)
  %6 = bitcast [1024 x i8]* %3 to i8*
  %7 = bitcast [1024 x i8]* %4 to i8*
  %8 = bitcast [1 x i32]* %5 to i32*
  call void @eucHW_hw_stub(i8* %6, i8* %7, i32* %8)
  call void @copy_in([1024 x i8]* %3, [2 x i4096]* %0, [1024 x i8]* %4, [2 x i4096]* %1, [1 x i32]* null, [1 x i32]* %5)
  ret void
}

declare void @eucHW_hw_stub(i8*, i8*, i32*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
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
