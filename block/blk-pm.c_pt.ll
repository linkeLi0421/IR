; ModuleID = '/llk/IR/block/blk-pm.c_pt.bc'
source_filename = "../block/blk-pm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_pm_runtime_init:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_pm_runtime_init\22\09\09\09\09\09"
module asm "__kstrtabns_blk_pm_runtime_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_pre_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_pre_runtime_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_blk_pre_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_post_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_post_runtime_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_blk_post_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_pre_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_pre_runtime_resume\22\09\09\09\09\09"
module asm "__kstrtabns_blk_pre_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_post_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_post_runtime_resume\22\09\09\09\09\09"
module asm "__kstrtabns_blk_post_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_set_runtime_active:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_set_runtime_active\22\09\09\09\09\09"
module asm "__kstrtabns_blk_set_runtime_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lockdep_map = type {}
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@__kstrtab_blk_pm_runtime_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_pm_runtime_init = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_pm_runtime_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_pm_runtime_init to i32), ptr @__kstrtab_blk_pm_runtime_init, ptr @__kstrtabns_blk_pm_runtime_init }, section "___ksymtab+blk_pm_runtime_init", align 4
@blk_pre_runtime_suspend.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [15 x i8] c"block/blk-pm.c\00", align 1
@__kstrtab_blk_pre_runtime_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_pre_runtime_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_pre_runtime_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_pre_runtime_suspend to i32), ptr @__kstrtab_blk_pre_runtime_suspend, ptr @__kstrtabns_blk_pre_runtime_suspend }, section "___ksymtab+blk_pre_runtime_suspend", align 4
@__kstrtab_blk_post_runtime_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_post_runtime_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_post_runtime_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_post_runtime_suspend to i32), ptr @__kstrtab_blk_post_runtime_suspend, ptr @__kstrtabns_blk_post_runtime_suspend }, section "___ksymtab+blk_post_runtime_suspend", align 4
@__kstrtab_blk_pre_runtime_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_pre_runtime_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_pre_runtime_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_pre_runtime_resume to i32), ptr @__kstrtab_blk_pre_runtime_resume, ptr @__kstrtabns_blk_pre_runtime_resume }, section "___ksymtab+blk_pre_runtime_resume", align 4
@__kstrtab_blk_post_runtime_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_post_runtime_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_post_runtime_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_post_runtime_resume to i32), ptr @__kstrtab_blk_post_runtime_resume, ptr @__kstrtabns_blk_post_runtime_resume }, section "___ksymtab+blk_post_runtime_resume", align 4
@__kstrtab_blk_set_runtime_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_set_runtime_active = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_set_runtime_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_set_runtime_active to i32), ptr @__kstrtab_blk_set_runtime_active, ptr @__kstrtabns_blk_set_runtime_active }, section "___ksymtab+blk_set_runtime_active", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_blk_pm_runtime_init, ptr @__ksymtab_blk_post_runtime_resume, ptr @__ksymtab_blk_post_runtime_suspend, ptr @__ksymtab_blk_pre_runtime_resume, ptr @__ksymtab_blk_pre_runtime_suspend, ptr @__ksymtab_blk_set_runtime_active], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_pm_runtime_init(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 18
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 19
  store i32 0, ptr %4, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %1, i32 noundef -1) #2
  %5 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %5, i1 noundef zeroext true) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_pre_runtime_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 19
  %7 = load i32, ptr %6, align 8
  %8 = icmp ne i32 %7, 0
  %9 = load i1, ptr @blk_pre_runtime_suspend.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %5
  store i1 true, ptr @blk_pre_runtime_suspend.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef null) #2
  br label %13

13:                                               ; preds = %12, %5
  %14 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %14) #2
  store i32 3, ptr %6, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  %15 = load i16, ptr %14, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #2, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !13
  tail call void @blk_set_pm_only(ptr noundef %0) #2
  tail call void @blk_freeze_queue_start(ptr noundef %0) #2
  %17 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 2
  tail call void @percpu_ref_switch_to_atomic_sync(ptr noundef %17) #2
  %18 = tail call zeroext i1 @percpu_ref_is_zero(ptr noundef %17) #2
  tail call void @blk_mq_unfreeze_queue(ptr noundef %0) #2
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  tail call void @_raw_spin_lock_irq(ptr noundef %14) #2
  store i32 0, ptr %6, align 8
  %20 = load ptr, ptr %2, align 4
  %21 = tail call i64 @ktime_get_mono_fast_ns() #2
  %22 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 11, i32 22
  store volatile i64 %21, ptr %22, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  %23 = load i16, ptr %14, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #2, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !13
  tail call void @blk_clear_pm_only(ptr noundef %0) #2
  br label %25

25:                                               ; preds = %19, %13, %1
  %26 = phi i32 [ 0, %1 ], [ -16, %19 ], [ 0, %13 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_set_pm_only(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_freeze_queue_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_switch_to_atomic_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @percpu_ref_is_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_clear_pm_only(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_post_runtime_suspend(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 18
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #2
  %8 = icmp eq i32 %1, 0
  %9 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 19
  br i1 %8, label %10, label %13

10:                                               ; preds = %6
  store i32 2, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  %11 = load i16, ptr %7, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #2, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !13
  br label %19

13:                                               ; preds = %6
  store i32 0, ptr %9, align 8
  %14 = load ptr, ptr %3, align 4
  %15 = tail call i64 @ktime_get_mono_fast_ns() #2
  %16 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 22
  store volatile i64 %15, ptr %16, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  %17 = load i16, ptr %7, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #2, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !13
  tail call void @blk_clear_pm_only(ptr noundef %0) #2
  br label %19

19:                                               ; preds = %13, %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_pre_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #2
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 19
  store i32 1, ptr %7, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  %8 = load i16, ptr %6, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #2, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !13
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_post_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #2
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 19
  %8 = load i32, ptr %7, align 8
  store i32 0, ptr %7, align 8
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i64 @ktime_get_mono_fast_ns() #2
  %11 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 11, i32 22
  store volatile i64 %10, ptr %11, align 8
  %12 = load ptr, ptr %2, align 4
  %13 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 9) #2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  %14 = load i16, ptr %6, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #2, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !13
  %16 = icmp eq i32 %8, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  tail call void @blk_clear_pm_only(ptr noundef %0) #2
  br label %18

18:                                               ; preds = %17, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_set_runtime_active(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #2
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 19
  %8 = load i32, ptr %7, align 8
  store i32 0, ptr %7, align 8
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i64 @ktime_get_mono_fast_ns() #2
  %11 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 11, i32 22
  store volatile i64 %10, ptr %11, align 8
  %12 = load ptr, ptr %2, align 4
  %13 = tail call i32 @__pm_runtime_suspend(ptr noundef %12, i32 noundef 9) #2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !9
  %14 = load i16, ptr %6, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #2, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !13
  %16 = icmp eq i32 %8, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  tail call void @blk_clear_pm_only(ptr noundef %0) #2
  br label %18

18:                                               ; preds = %17, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

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
!9 = !{i64 2149244314}
!10 = !{i64 2149240138}
!11 = !{i64 2149240213, i64 2149240240, i64 2149240287, i64 2149240309, i64 2149240337, i64 2149240357}
!12 = !{i64 625093}
!13 = !{i64 2149268458}
