; ModuleID = '/llk/IR/kernel/stacktrace.c_pt.bc'
source_filename = "../kernel/stacktrace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stack_trace_print:\09\09\09\09\09"
module asm "\09.asciz \09\22stack_trace_print\22\09\09\09\09\09"
module asm "__kstrtabns_stack_trace_print:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stack_trace_snprint:\09\09\09\09\09"
module asm "\09.asciz \09\22stack_trace_snprint\22\09\09\09\09\09"
module asm "__kstrtabns_stack_trace_snprint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stack_trace_save:\09\09\09\09\09"
module asm "\09.asciz \09\22stack_trace_save\22\09\09\09\09\09"
module asm "__kstrtabns_stack_trace_save:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filter_irq_stacks:\09\09\09\09\09"
module asm "\09.asciz \09\22filter_irq_stacks\22\09\09\09\09\09"
module asm "__kstrtabns_filter_irq_stacks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stack_trace = type { i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [20 x i8] c"kernel/stacktrace.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%*c%pS\0A\00", align 1
@__kstrtab_stack_trace_print = external dso_local constant [0 x i8], align 1
@__kstrtabns_stack_trace_print = external dso_local constant [0 x i8], align 1
@__ksymtab_stack_trace_print = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stack_trace_print to i32), ptr @__kstrtab_stack_trace_print, ptr @__kstrtabns_stack_trace_print }, section "___ksymtab_gpl+stack_trace_print", align 4
@__kstrtab_stack_trace_snprint = external dso_local constant [0 x i8], align 1
@__kstrtabns_stack_trace_snprint = external dso_local constant [0 x i8], align 1
@__ksymtab_stack_trace_snprint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stack_trace_snprint to i32), ptr @__kstrtab_stack_trace_snprint, ptr @__kstrtabns_stack_trace_snprint }, section "___ksymtab_gpl+stack_trace_snprint", align 4
@save_stack_trace_tsk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\016save_stack_trace_tsk() not implemented yet.\0A\00", align 1
@save_stack_trace_regs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"\016save_stack_trace_regs() not implemented yet.\0A\00", align 1
@__kstrtab_stack_trace_save = external dso_local constant [0 x i8], align 1
@__kstrtabns_stack_trace_save = external dso_local constant [0 x i8], align 1
@__ksymtab_stack_trace_save = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stack_trace_save to i32), ptr @__kstrtab_stack_trace_save, ptr @__kstrtabns_stack_trace_save }, section "___ksymtab_gpl+stack_trace_save", align 4
@__kstrtab_filter_irq_stacks = external dso_local constant [0 x i8], align 1
@__kstrtabns_filter_irq_stacks = external dso_local constant [0 x i8], align 1
@__ksymtab_filter_irq_stacks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filter_irq_stacks to i32), ptr @__kstrtab_filter_irq_stacks, ptr @__kstrtabns_filter_irq_stacks }, section "___ksymtab_gpl+filter_irq_stacks", align 4
@__irqentry_text_start = external dso_local global [0 x i8], align 1
@__irqentry_text_end = external dso_local global [0 x i8], align 1
@__softirqentry_text_start = external dso_local global [0 x i8], align 1
@__softirqentry_text_end = external dso_local global [0 x i8], align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_filter_irq_stacks, ptr @__ksymtab_stack_trace_print, ptr @__ksymtab_stack_trace_save, ptr @__ksymtab_stack_trace_snprint], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stack_trace_print(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5, !prof !8

5:                                                ; preds = %3
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %5
  %8 = add i32 %2, 1
  br label %10

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 9, ptr noundef null) #8
  br label %18

10:                                               ; preds = %10, %7
  %11 = phi i32 [ 0, %7 ], [ %16, %10 ]
  %12 = getelementptr i32, ptr %0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %8, i32 noundef 32, ptr noundef %14) #9
  %16 = add nuw i32 %11, 1
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %9, %5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stack_trace_snprint(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %13, label %7, !prof !8

7:                                                ; preds = %5
  %8 = icmp ne i32 %3, 0
  %9 = icmp ne i32 %1, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = add i32 %4, 1
  br label %14

13:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef null) #8
  br label %31

14:                                               ; preds = %14, %11
  %15 = phi i32 [ 0, %11 ], [ %23, %14 ]
  %16 = phi i32 [ 0, %11 ], [ %27, %14 ]
  %17 = phi ptr [ %0, %11 ], [ %26, %14 ]
  %18 = phi i32 [ %1, %11 ], [ %24, %14 ]
  %19 = getelementptr i32, ptr %2, i32 %16
  %20 = load i32, ptr %19, align 4
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %17, i32 noundef %18, ptr noundef nonnull @.str.1, i32 noundef %12, i32 noundef 32, ptr noundef %21)
  %23 = add i32 %22, %15
  %24 = tail call i32 @llvm.usub.sat.i32(i32 %18, i32 %22)
  %25 = tail call i32 @llvm.umin.i32(i32 %18, i32 %22)
  %26 = getelementptr i8, ptr %17, i32 %25
  %27 = add nuw i32 %16, 1
  %28 = icmp ult i32 %27, %3
  %29 = icmp ugt i32 %18, %22
  %30 = and i1 %28, %29
  br i1 %30, label %14, label %31

31:                                               ; preds = %14, %13, %7
  %32 = phi i32 [ 0, %13 ], [ 0, %7 ], [ %23, %14 ]
  ret i32 %32
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @save_stack_trace_tsk(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i1, ptr @save_stack_trace_tsk.__already_done, align 1
  br i1 %3, label %5, label %4, !prof !9

4:                                                ; preds = %2
  store i1 true, ptr @save_stack_trace_tsk.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 253, i32 noundef 9, ptr noundef nonnull @.str.2) #8
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @save_stack_trace_regs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i1, ptr @save_stack_trace_regs.__already_done, align 1
  br i1 %3, label %5, label %4, !prof !9

4:                                                ; preds = %2
  store i1 true, ptr @save_stack_trace_regs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef nonnull @.str.3) #8
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stack_trace_save(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.stack_trace, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.stack_trace, ptr %4, i32 0, i32 1
  store i32 0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.stack_trace, ptr %4, i32 0, i32 2
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.stack_trace, ptr %4, i32 0, i32 3
  %8 = add i32 %2, 1
  store i32 %8, ptr %7, align 4
  call void @save_stack_trace(ptr noundef nonnull %4) #8
  %9 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @save_stack_trace(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stack_trace_save_tsk(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.stack_trace, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct.stack_trace, ptr %5, i32 0, i32 1
  store i32 0, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.stack_trace, ptr %5, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.stack_trace, ptr %5, i32 0, i32 3
  %9 = tail call ptr @llvm.thread.pointer() #8
  %10 = icmp eq ptr %9, %0
  %11 = zext i1 %10 to i32
  %12 = add i32 %11, %3
  store i32 %12, ptr %8, align 4
  call void @save_stack_trace_tsk(ptr noundef %0, ptr noundef nonnull %5)
  %13 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stack_trace_save_regs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.stack_trace, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct.stack_trace, ptr %5, i32 0, i32 1
  store i32 0, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.stack_trace, ptr %5, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.stack_trace, ptr %5, i32 0, i32 3
  store i32 %3, ptr %8, align 4
  call void @save_stack_trace_regs(ptr noundef %0, ptr noundef nonnull %5)
  %9 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  ret i32 %9
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @filter_irq_stacks(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %20, label %4

4:                                                ; preds = %17, %2
  %5 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %6 = getelementptr i32, ptr %0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = icmp uge i32 %7, ptrtoint (ptr @__irqentry_text_start to i32)
  %9 = icmp ult i32 %7, ptrtoint (ptr @__irqentry_text_end to i32)
  %10 = and i1 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = icmp uge i32 %7, ptrtoint (ptr @__softirqentry_text_start to i32)
  %13 = icmp ult i32 %7, ptrtoint (ptr @__softirqentry_text_end to i32)
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %4
  %16 = add nuw i32 %5, 1
  br label %20

17:                                               ; preds = %11
  %18 = add nuw i32 %5, 1
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %4

20:                                               ; preds = %17, %15, %2
  %21 = phi i32 [ %16, %15 ], [ 0, %2 ], [ %1, %17 ]
  ret i32 %21
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
