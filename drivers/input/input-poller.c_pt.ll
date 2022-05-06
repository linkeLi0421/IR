; ModuleID = '/llk/IR/drivers/input/input-poller.c_pt.bc'
source_filename = "../drivers/input/input-poller.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_setup_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22input_setup_polling\22\09\09\09\09\09"
module asm "__kstrtabns_input_setup_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_set_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22input_set_poll_interval\22\09\09\09\09\09"
module asm "__kstrtabns_input_set_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_set_min_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22input_set_min_poll_interval\22\09\09\09\09\09"
module asm "__kstrtabns_input_set_min_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_set_max_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22input_set_max_poll_interval\22\09\09\09\09\09"
module asm "__kstrtabns_input_set_max_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_get_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22input_get_poll_interval\22\09\09\09\09\09"
module asm "__kstrtabns_input_get_poll_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.input_dev_poller = type { ptr, i32, i32, i32, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [41 x i8] c"%s: unable to allocate poller structure\0A\00", align 1
@__func__.input_setup_polling = private unnamed_addr constant [20 x i8] c"input_setup_polling\00", align 1
@__kstrtab_input_setup_polling = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_setup_polling = external dso_local constant [0 x i8], align 1
@__ksymtab_input_setup_polling = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_setup_polling to i32), ptr @__kstrtab_input_setup_polling, ptr @__kstrtabns_input_setup_polling }, section "___ksymtab+input_setup_polling", align 4
@__kstrtab_input_set_poll_interval = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_set_poll_interval = external dso_local constant [0 x i8], align 1
@__ksymtab_input_set_poll_interval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_set_poll_interval to i32), ptr @__kstrtab_input_set_poll_interval, ptr @__kstrtabns_input_set_poll_interval }, section "___ksymtab+input_set_poll_interval", align 4
@__kstrtab_input_set_min_poll_interval = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_set_min_poll_interval = external dso_local constant [0 x i8], align 1
@__ksymtab_input_set_min_poll_interval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_set_min_poll_interval to i32), ptr @__kstrtab_input_set_min_poll_interval, ptr @__kstrtabns_input_set_min_poll_interval }, section "___ksymtab+input_set_min_poll_interval", align 4
@__kstrtab_input_set_max_poll_interval = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_set_max_poll_interval = external dso_local constant [0 x i8], align 1
@__ksymtab_input_set_max_poll_interval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_set_max_poll_interval to i32), ptr @__kstrtab_input_set_max_poll_interval, ptr @__kstrtabns_input_set_max_poll_interval }, section "___ksymtab+input_set_max_poll_interval", align 4
@__kstrtab_input_get_poll_interval = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_get_poll_interval = external dso_local constant [0 x i8], align 1
@__ksymtab_input_get_poll_interval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_get_poll_interval to i32), ptr @__kstrtab_input_get_poll_interval, ptr @__kstrtabns_input_get_poll_interval }, section "___ksymtab+input_get_poll_interval", align 4
@input_poller_attrs = internal global [4 x ptr] [ptr @dev_attr_poll, ptr @dev_attr_max, ptr @dev_attr_min, ptr null], align 4
@input_poller_attribute_group = dso_local local_unnamed_addr global %struct.attribute_group { ptr null, ptr @input_poller_attrs_visible, ptr null, ptr @input_poller_attrs, ptr null }, align 4
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"poller structure has not been set up\0A\00", align 1
@dev_attr_poll = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420 }, ptr @input_dev_get_poll_interval, ptr @input_dev_set_poll_interval }, align 4
@dev_attr_max = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @input_dev_get_poll_max, ptr null }, align 4
@dev_attr_min = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @input_dev_get_poll_min, ptr null }, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_input_get_poll_interval, ptr @__ksymtab_input_set_max_poll_interval, ptr @__ksymtab_input_set_min_poll_interval, ptr @__ksymtab_input_set_poll_interval, ptr @__ksymtab_input_setup_polling], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @input_dev_poller_finalize(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.input_dev_poller, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 500, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i32 [ 500, %5 ], [ %3, %1 ]
  %8 = getelementptr inbounds %struct.input_dev_poller, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i32 %7, ptr %8, align 4
  br label %12

12:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_dev_poller_start(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.input_dev_poller, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.input_dev_poller, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void %6(ptr noundef %8) #10
  %9 = load i32, ptr %2, align 4
  %10 = tail call i32 @__msecs_to_jiffies(i32 noundef %9) #10
  %11 = icmp ugt i32 %10, 99
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = tail call i32 @round_jiffies_relative(i32 noundef %10) #10
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i32 [ %13, %12 ], [ %10, %5 ]
  %16 = load ptr, ptr @system_freezable_wq, align 4
  %17 = getelementptr inbounds %struct.input_dev_poller, ptr %0, i32 0, i32 5
  %18 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %16, ptr noundef %17, i32 noundef %15) #10
  br label %19

19:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_dev_poller_stop(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.input_dev_poller, ptr %0, i32 0, i32 5
  %3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_setup_polling(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  %8 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr %7, ptr %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.input_setup_polling) #12
  br label %20

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.input_dev_poller, ptr %4, i32 0, i32 5
  store i32 -32, ptr %13, align 4
  %14 = getelementptr inbounds %struct.input_dev_poller, ptr %4, i32 0, i32 5, i32 0, i32 1
  store volatile ptr %14, ptr %14, align 8
  %15 = getelementptr inbounds %struct.input_dev_poller, ptr %4, i32 0, i32 5, i32 0, i32 1, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.input_dev_poller, ptr %4, i32 0, i32 5, i32 0, i32 2
  store ptr @input_dev_poller_work, ptr %16, align 8
  %17 = getelementptr inbounds %struct.input_dev_poller, ptr %4, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %17, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #10
  %18 = getelementptr inbounds %struct.input_dev_poller, ptr %4, i32 0, i32 4
  store ptr %0, ptr %18, align 8
  store ptr %1, ptr %4, align 8
  %19 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 21
  store ptr %4, ptr %19, align 4
  br label %20

20:                                               ; preds = %12, %6
  %21 = phi i32 [ 0, %12 ], [ -12, %6 ]
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @input_dev_poller_work(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  tail call void %3(ptr noundef %5) #10
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @__msecs_to_jiffies(i32 noundef %7) #10
  %9 = icmp ugt i32 %8, 99
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = tail call i32 @round_jiffies_relative(i32 noundef %8) #10
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i32 [ %11, %10 ], [ %8, %1 ]
  %14 = load ptr, ptr @system_freezable_wq, align 4
  %15 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %14, ptr noundef %0, i32 noundef %13) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_set_poll_interval(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 21
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  %8 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr %7, ptr %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.1) #12
  br label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.input_dev_poller, ptr %4, i32 0, i32 1
  store i32 %1, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_set_min_poll_interval(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 21
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  %8 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr %7, ptr %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.1) #12
  br label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.input_dev_poller, ptr %4, i32 0, i32 3
  store i32 %1, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_set_max_poll_interval(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 21
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  %8 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr %7, ptr %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.1) #12
  br label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.input_dev_poller, ptr %4, i32 0, i32 2
  store i32 %1, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @input_get_poll_interval(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.input_dev_poller, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ -22, %1 ]
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @input_poller_attrs_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 -204
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i16 [ %9, %7 ], [ 0, %3 ]
  ret i16 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_get_poll_interval(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 -204
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.input_dev_poller, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_set_poll_interval(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -400
  %7 = getelementptr i8, ptr %0, i32 -204
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %9 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %4
  %12 = load i32, ptr %5, align 4
  %13 = getelementptr inbounds %struct.input_dev_poller, ptr %8, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %40, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.input_dev_poller, ptr %8, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %12, %18
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 -28
  call void @mutex_lock(ptr noundef %21) #10
  %22 = load i32, ptr %5, align 4
  %23 = getelementptr inbounds %struct.input_dev_poller, ptr %8, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = call zeroext i1 @input_device_enabled(ptr noundef %6) #10
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.input_dev_poller, ptr %8, i32 0, i32 5
  %27 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %26) #10
  %28 = load i32, ptr %23, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = call i32 @__msecs_to_jiffies(i32 noundef %28) #10
  %32 = icmp ugt i32 %31, 99
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @round_jiffies_relative(i32 noundef %31) #10
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %34, %33 ], [ %31, %30 ]
  %37 = load ptr, ptr @system_freezable_wq, align 4
  %38 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %37, ptr noundef %26, i32 noundef %36) #10
  br label %39

39:                                               ; preds = %35, %25, %20
  call void @mutex_unlock(ptr noundef %21) #10
  br label %40

40:                                               ; preds = %39, %16, %11, %4
  %41 = phi i32 [ %3, %39 ], [ %9, %4 ], [ -22, %11 ], [ -22, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %41
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_get_poll_max(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 -204
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.input_dev_poller, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_get_poll_min(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 -204
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.input_dev_poller, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %7)
  ret i32 %8
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!8 = !{!"auto-init"}
