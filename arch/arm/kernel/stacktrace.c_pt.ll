; ModuleID = '/llk/IR/arch/arm/kernel/stacktrace.c_pt.bc'
source_filename = "../arch/arm/kernel/stacktrace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_walk_stackframe:\09\09\09\09\09"
module asm "\09.asciz \09\22walk_stackframe\22\09\09\09\09\09"
module asm "__kstrtabns_walk_stackframe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_save_stack_trace_tsk:\09\09\09\09\09"
module asm "\09.asciz \09\22save_stack_trace_tsk\22\09\09\09\09\09"
module asm "__kstrtabns_save_stack_trace_tsk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_save_stack_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22save_stack_trace\22\09\09\09\09\09"
module asm "__kstrtabns_save_stack_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stackframe = type { i32, i32, i32, i32 }
%struct.stack_trace = type { i32, i32, ptr, i32 }
%struct.pt_regs = type { [18 x i32] }

@__kstrtab_walk_stackframe = external dso_local constant [0 x i8], align 1
@__kstrtabns_walk_stackframe = external dso_local constant [0 x i8], align 1
@__ksymtab_walk_stackframe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @walk_stackframe to i32), ptr @__kstrtab_walk_stackframe, ptr @__kstrtabns_walk_stackframe }, section "___ksymtab+walk_stackframe", align 4
@__kstrtab_save_stack_trace_tsk = external dso_local constant [0 x i8], align 1
@__kstrtabns_save_stack_trace_tsk = external dso_local constant [0 x i8], align 1
@__ksymtab_save_stack_trace_tsk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @save_stack_trace_tsk to i32), ptr @__kstrtab_save_stack_trace_tsk, ptr @__kstrtabns_save_stack_trace_tsk }, section "___ksymtab+save_stack_trace_tsk", align 4
@__kstrtab_save_stack_trace = external dso_local constant [0 x i8], align 1
@__kstrtabns_save_stack_trace = external dso_local constant [0 x i8], align 1
@__ksymtab_save_stack_trace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @save_stack_trace to i32), ptr @__kstrtab_save_stack_trace, ptr @__kstrtabns_save_stack_trace }, section "___ksymtab_gpl+save_stack_trace", align 4
@__entry_text_start = external dso_local global [0 x i8], align 1
@__entry_text_end = external dso_local global [0 x i8], align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_save_stack_trace, ptr @__ksymtab_save_stack_trace_tsk, ptr @__ksymtab_walk_stackframe], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @walk_stackframe(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %7, %3
  %5 = tail call i32 %1(ptr noundef %0, ptr noundef %2) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = tail call i32 @unwind_frame(ptr noundef %0) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %4

10:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unwind_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @save_stack_trace_regs(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stackframe, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.stack_trace, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [18 x i32], ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %3, align 4
  %8 = getelementptr [18 x i32], ptr %0, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stackframe, ptr %3, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr [18 x i32], ptr %0, i32 0, i32 14
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stackframe, ptr %3, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.stackframe, ptr %3, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.stack_trace, ptr %1, i32 0, i32 2
  %18 = getelementptr inbounds %struct.stack_trace, ptr %1, i32 0, i32 1
  br label %19

19:                                               ; preds = %57, %2
  %20 = phi i32 [ %5, %2 ], [ %58, %57 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = add i32 %20, -1
  br label %57

24:                                               ; preds = %19
  %25 = load i32, ptr %16, align 4
  %26 = load ptr, ptr %17, align 4
  %27 = load i32, ptr %1, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %1, align 4
  %29 = getelementptr i32, ptr %26, i32 %27
  store i32 %25, ptr %29, align 4
  %30 = load i32, ptr %1, align 4
  %31 = load i32, ptr %18, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %24
  %34 = load i32, ptr %16, align 4
  %35 = inttoptr i32 %34 to ptr
  %36 = icmp uge ptr %35, @__entry_text_start
  %37 = getelementptr i8, ptr %35, i32 1
  %38 = icmp ule ptr %37, @__entry_text_end
  %39 = and i1 %36, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %33
  %41 = load i32, ptr %10, align 4
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr %struct.pt_regs, ptr %42, i32 1
  %44 = ptrtoint ptr %43 to i32
  %45 = add i32 %41, 8191
  %46 = and i32 %45, -8192
  %47 = icmp ult i32 %46, %44
  br i1 %47, label %57, label %48

48:                                               ; preds = %40
  %49 = getelementptr [18 x i32], ptr %42, i32 0, i32 15
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %17, align 4
  %52 = add nuw i32 %30, 1
  store i32 %52, ptr %1, align 4
  %53 = getelementptr i32, ptr %51, i32 %30
  store i32 %50, ptr %53, align 4
  %54 = load i32, ptr %1, align 4
  %55 = load i32, ptr %18, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %48, %40, %33, %22
  %58 = phi i32 [ 0, %48 ], [ %23, %22 ], [ 0, %33 ], [ 0, %40 ]
  %59 = call i32 @unwind_frame(ptr noundef nonnull %3) #6
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %19

61:                                               ; preds = %57, %48, %24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @save_stack_trace_tsk(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @__save_stack_trace(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__save_stack_trace(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = alloca %struct.stackframe, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  %5 = tail call ptr @llvm.thread.pointer() #6
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %70

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.stack_trace, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 2
  %11 = tail call ptr @llvm.frameaddress.p0(i32 0)
  %12 = ptrtoint ptr %11 to i32
  store i32 %12, ptr %4, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !0)
  %14 = getelementptr inbounds %struct.stackframe, ptr %4, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = tail call ptr @llvm.returnaddress(i32 0)
  %16 = ptrtoint ptr %15 to i32
  %17 = getelementptr inbounds %struct.stackframe, ptr %4, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.stackframe, ptr %4, i32 0, i32 3
  store i32 ptrtoint (ptr @__save_stack_trace to i32), ptr %18, align 4
  %19 = getelementptr inbounds %struct.stack_trace, ptr %1, i32 0, i32 2
  %20 = icmp eq i32 %2, 0
  %21 = getelementptr inbounds %struct.stack_trace, ptr %1, i32 0, i32 1
  br label %22

22:                                               ; preds = %68, %7
  %23 = phi i32 [ ptrtoint (ptr @__save_stack_trace to i32), %7 ], [ %69, %68 ]
  %24 = phi i32 [ %10, %7 ], [ %65, %68 ]
  br i1 %20, label %28, label %25

25:                                               ; preds = %22
  %26 = call i32 @in_sched_functions(i32 noundef %23) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %25, %22
  %29 = icmp eq i32 %24, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = add i32 %24, -1
  br label %64

32:                                               ; preds = %28
  %33 = load ptr, ptr %19, align 4
  %34 = load i32, ptr %1, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %1, align 4
  %36 = getelementptr i32, ptr %33, i32 %34
  store i32 %23, ptr %36, align 4
  %37 = load i32, ptr %1, align 4
  %38 = load i32, ptr %21, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %32
  %41 = load i32, ptr %18, align 4
  %42 = inttoptr i32 %41 to ptr
  %43 = icmp uge ptr %42, @__entry_text_start
  %44 = getelementptr i8, ptr %42, i32 1
  %45 = icmp ule ptr %44, @__entry_text_end
  %46 = and i1 %43, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = load i32, ptr %14, align 4
  %49 = inttoptr i32 %48 to ptr
  %50 = getelementptr %struct.pt_regs, ptr %49, i32 1
  %51 = ptrtoint ptr %50 to i32
  %52 = add i32 %48, 8191
  %53 = and i32 %52, -8192
  %54 = icmp ult i32 %53, %51
  br i1 %54, label %64, label %55

55:                                               ; preds = %47
  %56 = getelementptr [18 x i32], ptr %49, i32 0, i32 15
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %19, align 4
  %59 = add nuw i32 %37, 1
  store i32 %59, ptr %1, align 4
  %60 = getelementptr i32, ptr %58, i32 %37
  store i32 %57, ptr %60, align 4
  %61 = load i32, ptr %1, align 4
  %62 = load i32, ptr %21, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %55, %47, %40, %30, %25
  %65 = phi i32 [ 0, %55 ], [ %24, %25 ], [ %31, %30 ], [ 0, %40 ], [ 0, %47 ]
  %66 = call i32 @unwind_frame(ptr noundef nonnull %4) #6
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %18, align 4
  br label %22

70:                                               ; preds = %64, %55, %32, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @save_stack_trace(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #6
  tail call void @__save_stack_trace(ptr noundef %2, ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_sched_functions(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
