; ModuleID = '/llk/IR/lib/timerqueue.c_pt.bc'
source_filename = "../lib/timerqueue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timerqueue_add:\09\09\09\09\09"
module asm "\09.asciz \09\22timerqueue_add\22\09\09\09\09\09"
module asm "__kstrtabns_timerqueue_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timerqueue_del:\09\09\09\09\09"
module asm "\09.asciz \09\22timerqueue_del\22\09\09\09\09\09"
module asm "__kstrtabns_timerqueue_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timerqueue_iterate_next:\09\09\09\09\09"
module asm "\09.asciz \09\22timerqueue_iterate_next\22\09\09\09\09\09"
module asm "__kstrtabns_timerqueue_iterate_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@timerqueue_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [17 x i8] c"lib/timerqueue.c\00", align 1
@__kstrtab_timerqueue_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_timerqueue_add = external dso_local constant [0 x i8], align 1
@__ksymtab_timerqueue_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timerqueue_add to i32), ptr @__kstrtab_timerqueue_add, ptr @__kstrtabns_timerqueue_add }, section "___ksymtab_gpl+timerqueue_add", align 4
@timerqueue_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_timerqueue_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_timerqueue_del = external dso_local constant [0 x i8], align 1
@__ksymtab_timerqueue_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timerqueue_del to i32), ptr @__kstrtab_timerqueue_del, ptr @__kstrtabns_timerqueue_del }, section "___ksymtab_gpl+timerqueue_del", align 4
@__kstrtab_timerqueue_iterate_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_timerqueue_iterate_next = external dso_local constant [0 x i8], align 1
@__ksymtab_timerqueue_iterate_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timerqueue_iterate_next to i32), ptr @__kstrtab_timerqueue_iterate_next, ptr @__kstrtabns_timerqueue_iterate_next }, section "___ksymtab_gpl+timerqueue_iterate_next", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_timerqueue_add, ptr @__ksymtab_timerqueue_del, ptr @__ksymtab_timerqueue_iterate_next], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @timerqueue_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %1, align 8
  %4 = ptrtoint ptr %1 to i32
  %5 = icmp ne i32 %3, %4
  %6 = load i1, ptr @timerqueue_add.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %2
  store i1 true, ptr @timerqueue_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef null) #2
  br label %10

10:                                               ; preds = %9, %2
  %11 = load ptr, ptr %0, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.timerqueue_node, ptr %1, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %11, %13 ], [ %26, %16 ]
  %18 = phi i1 [ true, %13 ], [ %25, %16 ]
  %19 = getelementptr inbounds %struct.timerqueue_node, ptr %17, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = icmp slt i64 %15, %20
  %22 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  %23 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  %24 = select i1 %21, ptr %22, ptr %23
  %25 = select i1 %21, i1 %18, i1 false
  %26 = load ptr, ptr %24, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %16

28:                                               ; preds = %16
  %29 = ptrtoint ptr %17 to i32
  store i32 %29, ptr %1, align 4
  %30 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  store ptr null, ptr %30, align 4
  %31 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  store ptr null, ptr %31, align 4
  store ptr %1, ptr %24, align 4
  br i1 %25, label %35, label %38

32:                                               ; preds = %10
  store i32 0, ptr %1, align 4
  %33 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  store ptr null, ptr %33, align 4
  %34 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  store ptr null, ptr %34, align 4
  store ptr %1, ptr %0, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 1
  store ptr %1, ptr %36, align 4
  %37 = icmp ne ptr %1, null
  br label %38

38:                                               ; preds = %35, %28
  %39 = phi i1 [ false, %28 ], [ %37, %35 ]
  tail call void @rb_insert_color(ptr noundef %1, ptr noundef %0) #2
  ret i1 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @timerqueue_del(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %1, align 8
  %4 = ptrtoint ptr %1 to i32
  %5 = icmp eq i32 %3, %4
  %6 = load i1, ptr @timerqueue_del.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %2
  store i1 true, ptr @timerqueue_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 55, i32 noundef 9, ptr noundef null) #2
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.rb_root_cached, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call ptr @rb_next(ptr noundef %1) #2
  store ptr %15, ptr %11, align 4
  br label %16

16:                                               ; preds = %14, %10
  tail call void @rb_erase(ptr noundef %1, ptr noundef %0) #2
  store i32 %4, ptr %1, align 8
  %17 = load volatile ptr, ptr %0, align 4
  %18 = icmp ne ptr %17, null
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @timerqueue_iterate_next(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @rb_next(ptr noundef nonnull %0) #2
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi ptr [ null, %1 ], [ %4, %3 ]
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
