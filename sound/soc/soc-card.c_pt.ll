; ModuleID = '/llk/IR/sound/soc/soc-card.c_pt.bc'
source_filename = "../sound/soc/soc-card.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_card_get_kcontrol:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_card_get_kcontrol\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_card_get_kcontrol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_card_jack_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_card_jack_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_card_jack_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_card_add_dai_link:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_card_add_dai_link\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_card_add_dai_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_card_remove_dai_link:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_card_remove_dai_link\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_card_remove_dai_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.7, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.7 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }

@__kstrtab_snd_soc_card_get_kcontrol = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_card_get_kcontrol = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_card_get_kcontrol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_card_get_kcontrol to i32), ptr @__kstrtab_snd_soc_card_get_kcontrol, ptr @__kstrtabns_snd_soc_card_get_kcontrol }, section "___ksymtab_gpl+snd_soc_card_get_kcontrol", align 4
@snd_soc_card_jack_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [13 x i8] c"&jack->mutex\00", align 1
@snd_soc_card_jack_new.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"&(&jack->notifier)->rwsem\00", align 1
@__func__.snd_soc_card_jack_new = private unnamed_addr constant [22 x i8] c"snd_soc_card_jack_new\00", align 1
@__kstrtab_snd_soc_card_jack_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_card_jack_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_card_jack_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_card_jack_new to i32), ptr @__kstrtab_snd_soc_card_jack_new, ptr @__kstrtabns_snd_soc_card_jack_new }, section "___ksymtab_gpl+snd_soc_card_jack_new", align 4
@__func__.snd_soc_card_suspend_pre = private unnamed_addr constant [25 x i8] c"snd_soc_card_suspend_pre\00", align 1
@__func__.snd_soc_card_suspend_post = private unnamed_addr constant [26 x i8] c"snd_soc_card_suspend_post\00", align 1
@__func__.snd_soc_card_resume_pre = private unnamed_addr constant [24 x i8] c"snd_soc_card_resume_pre\00", align 1
@__func__.snd_soc_card_resume_post = private unnamed_addr constant [25 x i8] c"snd_soc_card_resume_post\00", align 1
@__func__.snd_soc_card_probe = private unnamed_addr constant [19 x i8] c"snd_soc_card_probe\00", align 1
@__func__.snd_soc_card_late_probe = private unnamed_addr constant [24 x i8] c"snd_soc_card_late_probe\00", align 1
@__func__.snd_soc_card_remove = private unnamed_addr constant [20 x i8] c"snd_soc_card_remove\00", align 1
@__func__.snd_soc_card_set_bias_level = private unnamed_addr constant [28 x i8] c"snd_soc_card_set_bias_level\00", align 1
@__func__.snd_soc_card_set_bias_level_post = private unnamed_addr constant [33 x i8] c"snd_soc_card_set_bias_level_post\00", align 1
@__func__.snd_soc_card_add_dai_link = private unnamed_addr constant [26 x i8] c"snd_soc_card_add_dai_link\00", align 1
@__kstrtab_snd_soc_card_add_dai_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_card_add_dai_link = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_card_add_dai_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_card_add_dai_link to i32), ptr @__kstrtab_snd_soc_card_add_dai_link, ptr @__kstrtabns_snd_soc_card_add_dai_link }, section "___ksymtab_gpl+snd_soc_card_add_dai_link", align 4
@__kstrtab_snd_soc_card_remove_dai_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_card_remove_dai_link = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_card_remove_dai_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_card_remove_dai_link to i32), ptr @__kstrtab_snd_soc_card_remove_dai_link, ptr @__kstrtabns_snd_soc_card_remove_dai_link }, section "___ksymtab_gpl+snd_soc_card_remove_dai_link", align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"ASoC: error at %s on %s: %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_snd_soc_card_add_dai_link, ptr @__ksymtab_snd_soc_card_get_kcontrol, ptr @__ksymtab_snd_soc_card_jack_new, ptr @__ksymtab_snd_soc_card_remove_dai_link], section "llvm.metadata"

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @snd_soc_card_get_kcontrol(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4, !prof !8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 18
  br label %8

8:                                                ; preds = %12, %4
  %9 = phi ptr [ %7, %4 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_kcontrol, ptr %10, i32 0, i32 1, i32 4
  %14 = tail call i32 @strncmp(ptr noundef %13, ptr noundef nonnull %1, i32 noundef 44)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %8

16:                                               ; preds = %12, %8, %2
  %17 = phi ptr [ null, %2 ], [ null, %8 ], [ %10, %12 ]
  ret ptr %17
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_jack_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #2 {
  tail call void @__mutex_init(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @snd_soc_card_jack_new.__key) #5
  %7 = getelementptr inbounds %struct.snd_soc_jack, ptr %3, i32 0, i32 2
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.snd_soc_jack, ptr %3, i32 0, i32 3
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.snd_soc_jack, ptr %3, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.snd_soc_jack, ptr %3, i32 0, i32 6
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.snd_soc_jack, ptr %3, i32 0, i32 6, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.snd_soc_jack, ptr %3, i32 0, i32 5
  tail call void @__init_rwsem(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_soc_card_jack_new.__key.1) #5
  %13 = getelementptr inbounds %struct.snd_soc_jack, ptr %3, i32 0, i32 5, i32 1
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_soc_jack, ptr %3, i32 0, i32 1
  %17 = tail call i32 @snd_jack_new(ptr noundef %15, ptr noundef %1, i32 noundef %2, ptr noundef %16, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %18 = icmp eq i32 %17, 0
  %19 = icmp ne i32 %5, 0
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = tail call i32 @snd_soc_jack_add_pins(ptr noundef %3, i32 noundef %5, ptr noundef %4) #5
  br label %23

23:                                               ; preds = %21, %6
  %24 = phi i32 [ %22, %21 ], [ %17, %6 ]
  switch i32 %24, label %25 [
    i32 -517, label %29
    i32 -524, label %29
    i32 0, label %29
  ]

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_jack_new, ptr noundef %28, i32 noundef %24) #6
  br label %29

29:                                               ; preds = %25, %23, %23, %23
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_jack_add_pins(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_suspend_pre(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0) #5
  switch i32 %6, label %7 [
    i32 -517, label %11
    i32 -524, label %11
    i32 0, label %11
  ]

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_suspend_pre, ptr noundef %10, i32 noundef %6) #6
  br label %11

11:                                               ; preds = %7, %5, %5, %5, %1
  %12 = phi i32 [ %6, %5 ], [ %6, %5 ], [ %6, %5 ], [ %6, %7 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_suspend_post(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0) #5
  switch i32 %6, label %7 [
    i32 -517, label %11
    i32 -524, label %11
    i32 0, label %11
  ]

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_suspend_post, ptr noundef %10, i32 noundef %6) #6
  br label %11

11:                                               ; preds = %7, %5, %5, %5, %1
  %12 = phi i32 [ %6, %5 ], [ %6, %5 ], [ %6, %5 ], [ %6, %7 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_resume_pre(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0) #5
  switch i32 %6, label %7 [
    i32 -517, label %11
    i32 -524, label %11
    i32 0, label %11
  ]

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_resume_pre, ptr noundef %10, i32 noundef %6) #6
  br label %11

11:                                               ; preds = %7, %5, %5, %5, %1
  %12 = phi i32 [ %6, %5 ], [ %6, %5 ], [ %6, %5 ], [ %6, %7 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_resume_post(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0) #5
  switch i32 %6, label %7 [
    i32 -517, label %11
    i32 -524, label %11
    i32 0, label %11
  ]

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_resume_post, ptr noundef %10, i32 noundef %6) #6
  br label %11

11:                                               ; preds = %7, %5, %5, %5, %1
  %12 = phi i32 [ %6, %5 ], [ %6, %5 ], [ %6, %5 ], [ %6, %7 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_probe(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  switch i32 %6, label %9 [
    i32 -517, label %17
    i32 -524, label %17
  ]

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_probe, ptr noundef %12, i32 noundef %6) #6
  br label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 57
  %15 = load i8, ptr %14, align 4
  %16 = or i8 %15, 16
  store i8 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %13, %9, %8, %8, %1
  %18 = phi i32 [ 0, %13 ], [ 0, %1 ], [ %6, %9 ], [ %6, %8 ], [ %6, %8 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_late_probe(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  switch i32 %6, label %9 [
    i32 -517, label %17
    i32 -524, label %17
  ]

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_late_probe, ptr noundef %12, i32 noundef %6) #6
  br label %17

13:                                               ; preds = %5, %1
  %14 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 57
  %15 = load i8, ptr %14, align 4
  %16 = or i8 %15, 16
  store i8 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %13, %9, %8, %8
  %18 = phi i32 [ 0, %13 ], [ %6, %9 ], [ %6, %8 ], [ %6, %8 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_remove(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 57
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %1
  %11 = and i8 %3, -17
  store i8 %11, ptr %2, align 4
  br label %20

12:                                               ; preds = %6
  %13 = tail call i32 %8(ptr noundef %0) #5
  %14 = load i8, ptr %2, align 4
  %15 = and i8 %14, -17
  store i8 %15, ptr %2, align 4
  switch i32 %13, label %16 [
    i32 -517, label %20
    i32 -524, label %20
    i32 0, label %20
  ]

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_remove, ptr noundef %19, i32 noundef %13) #6
  br label %20

20:                                               ; preds = %16, %12, %12, %12, %10
  %21 = phi i32 [ 0, %10 ], [ %13, %12 ], [ %13, %12 ], [ %13, %12 ], [ %13, %16 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_set_bias_level(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #5
  switch i32 %10, label %11 [
    i32 -517, label %15
    i32 -524, label %15
    i32 0, label %15
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_set_bias_level, ptr noundef %14, i32 noundef %10) #6
  br label %15

15:                                               ; preds = %11, %9, %9, %9, %5, %3
  %16 = phi i32 [ %10, %9 ], [ %10, %9 ], [ %10, %9 ], [ %10, %11 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_set_bias_level_post(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #5
  switch i32 %10, label %11 [
    i32 -517, label %15
    i32 -524, label %15
    i32 0, label %15
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_set_bias_level_post, ptr noundef %14, i32 noundef %10) #6
  br label %15

15:                                               ; preds = %11, %9, %9, %9, %5, %3
  %16 = phi i32 [ %10, %9 ], [ %10, %9 ], [ %10, %9 ], [ %10, %11 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_add_dai_link(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = tail call i32 %4(ptr noundef %0, ptr noundef %1) #5
  switch i32 %7, label %8 [
    i32 -517, label %12
    i32 -524, label %12
    i32 0, label %12
  ]

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_add_dai_link, ptr noundef %11, i32 noundef %7) #6
  br label %12

12:                                               ; preds = %8, %6, %6, %6, %2
  %13 = phi i32 [ %7, %6 ], [ %7, %6 ], [ %7, %6 ], [ %7, %8 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_soc_card_remove_dai_link(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %0, ptr noundef %1) #5
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
