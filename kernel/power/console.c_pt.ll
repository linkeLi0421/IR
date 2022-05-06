; ModuleID = '/llk/IR/kernel/power/console.c_pt.bc'
source_filename = "../kernel/power/console.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_vt_switch_required:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_vt_switch_required\22\09\09\09\09\09"
module asm "__kstrtabns_pm_vt_switch_required:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_vt_switch_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_vt_switch_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_pm_vt_switch_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pm_vt_switch = type { %struct.list_head, ptr, i8 }

@vt_switch_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vt_switch_mutex, i64 12), ptr getelementptr (i8, ptr @vt_switch_mutex, i64 12) } }, align 4
@pm_vt_switch_list = internal global %struct.list_head { ptr @pm_vt_switch_list, ptr @pm_vt_switch_list }, align 4
@__kstrtab_pm_vt_switch_required = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_vt_switch_required = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_vt_switch_required = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_vt_switch_required to i32), ptr @__kstrtab_pm_vt_switch_required, ptr @__kstrtabns_pm_vt_switch_required }, section "___ksymtab+pm_vt_switch_required", align 4
@__kstrtab_pm_vt_switch_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_vt_switch_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_vt_switch_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_vt_switch_unregister to i32), ptr @__kstrtab_pm_vt_switch_unregister, ptr @__kstrtabns_pm_vt_switch_unregister }, section "___ksymtab+pm_vt_switch_unregister", align 4
@orig_fgconsole = internal unnamed_addr global i32 0, align 4
@orig_kmsg = internal unnamed_addr global i32 0, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_pm_vt_switch_required, ptr @__ksymtab_pm_vt_switch_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_vt_switch_required(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = zext i1 %1 to i8
  tail call void @mutex_lock(ptr noundef nonnull @vt_switch_mutex) #3
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ @pm_vt_switch_list, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @pm_vt_switch_list
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pm_vt_switch, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pm_vt_switch, ptr %6, i32 0, i32 2
  store i8 %3, ptr %13, align 4
  br label %24

14:                                               ; preds = %4
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 16) #4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.pm_vt_switch, ptr %16, i32 0, i32 2
  store i8 %3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.pm_vt_switch, ptr %16, i32 0, i32 1
  store ptr %0, ptr %20, align 8
  %21 = load ptr, ptr @pm_vt_switch_list, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %16, ptr %22, align 4
  store ptr %21, ptr %16, align 8
  %23 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr @pm_vt_switch_list, ptr %23, align 4
  store volatile ptr %16, ptr @pm_vt_switch_list, align 4
  br label %24

24:                                               ; preds = %18, %14, %12
  tail call void @mutex_unlock(ptr noundef nonnull @vt_switch_mutex) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_vt_switch_unregister(ptr noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @vt_switch_mutex) #3
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @pm_vt_switch_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @pm_vt_switch_list
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pm_vt_switch, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @kfree(ptr noundef %4) #3
  br label %15

15:                                               ; preds = %10, %2
  tail call void @mutex_unlock(ptr noundef nonnull @vt_switch_mutex) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_prepare_console() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @vt_switch_mutex) #3
  %1 = load volatile ptr, ptr @pm_vt_switch_list, align 4
  %2 = icmp eq ptr %1, @pm_vt_switch_list
  %3 = load i8, ptr @console_suspend_enabled, align 1
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %15, label %6

6:                                                ; preds = %11, %0
  %7 = phi ptr [ %12, %11 ], [ %1, %0 ]
  %8 = getelementptr inbounds %struct.pm_vt_switch, ptr %7, i32 0, i32 2
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 4
  %13 = icmp eq ptr %12, @pm_vt_switch_list
  br i1 %13, label %14, label %6

14:                                               ; preds = %11
  tail call void @mutex_unlock(ptr noundef nonnull @vt_switch_mutex) #3
  br label %20

15:                                               ; preds = %6, %0
  tail call void @mutex_unlock(ptr noundef nonnull @vt_switch_mutex) #3
  %16 = tail call i32 @vt_move_to_console(i32 noundef 62, i32 noundef 1) #3
  store i32 %16, ptr @orig_fgconsole, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @vt_kmsg_redirect(i32 noundef 62) #3
  store i32 %19, ptr @orig_kmsg, align 4
  br label %20

20:                                               ; preds = %18, %15, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_move_to_console(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_kmsg_redirect(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_restore_console() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @vt_switch_mutex) #3
  %1 = load volatile ptr, ptr @pm_vt_switch_list, align 4
  %2 = icmp eq ptr %1, @pm_vt_switch_list
  %3 = load i8, ptr @console_suspend_enabled, align 1
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %16, label %6

6:                                                ; preds = %11, %0
  %7 = phi ptr [ %12, %11 ], [ %1, %0 ]
  %8 = getelementptr inbounds %struct.pm_vt_switch, ptr %7, i32 0, i32 2
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 4
  %13 = icmp eq ptr %12, @pm_vt_switch_list
  br i1 %13, label %14, label %6

14:                                               ; preds = %11, %6
  %15 = xor i1 %10, true
  br label %16

16:                                               ; preds = %14, %0
  %17 = phi i1 [ true, %0 ], [ %15, %14 ]
  tail call void @mutex_unlock(ptr noundef nonnull @vt_switch_mutex) #3
  %18 = load i32, ptr @orig_fgconsole, align 4
  %19 = icmp sgt i32 %18, -1
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = tail call i32 @vt_move_to_console(i32 noundef %18, i32 noundef 0) #3
  %23 = load i32, ptr @orig_kmsg, align 4
  %24 = tail call i32 @vt_kmsg_redirect(i32 noundef %23) #3
  br label %25

25:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
