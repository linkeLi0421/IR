; ModuleID = '/llk/IR/drivers/ptp/ptp_sysfs.c_pt.bc'
source_filename = "../drivers/ptp/ptp_sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.ptp_clock = type { %struct.posix_clock, %struct.device, ptr, i32, i32, ptr, i32, %struct.timestamp_event_queue, %struct.mutex, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, %struct.attribute_group, [2 x ptr], ptr, %struct.kthread_delayed_work, i32, i32, ptr, %struct.mutex, i8 }
%struct.posix_clock = type { %struct.posix_clock_operations, %struct.cdev, ptr, %struct.rw_semaphore, i8 }
%struct.posix_clock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.timestamp_event_queue = type { [128 x %struct.ptp_extts_event], i32, i32, %struct.spinlock }
%struct.ptp_extts_event = type { %struct.ptp_clock_time, i32, i32, [2 x i32] }
%struct.ptp_clock_time = type { i64, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.ptp_clock_request = type { i32, %union.anon.68 }
%union.anon.68 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.69, %struct.ptp_clock_time, i32, i32, %union.anon.70 }
%union.anon.69 = type { %struct.ptp_clock_time }
%union.anon.70 = type { %struct.ptp_clock_time }
%struct.ptp_vclock = type { ptr, %struct.ptp_clock_info, ptr, %struct.cyclecounter, %struct.timecounter, %struct.spinlock }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }

@ptp_group = internal constant %struct.attribute_group { ptr null, ptr @ptp_is_attribute_visible, ptr null, ptr @ptp_attrs, ptr null }, align 4
@ptp_groups = dso_local local_unnamed_addr global [2 x ptr] [ptr @ptp_group, ptr null], align 4
@.str = private unnamed_addr constant [5 x i8] c"pins\00", align 1
@ptp_attrs = internal global [14 x ptr] [ptr @dev_attr_clock_name, ptr @dev_attr_max_adjustment, ptr @dev_attr_n_alarms, ptr @dev_attr_n_external_timestamps, ptr @dev_attr_n_periodic_outputs, ptr @dev_attr_n_programmable_pins, ptr @dev_attr_pps_available, ptr @dev_attr_extts_enable, ptr @dev_attr_fifo, ptr @dev_attr_period, ptr @dev_attr_pps_enable, ptr @dev_attr_n_vclocks, ptr @dev_attr_max_vclocks, ptr null], align 4
@dev_attr_extts_enable = internal global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 144 }, ptr null, ptr @extts_enable_store }, align 4
@dev_attr_fifo = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @extts_fifo_show, ptr null }, align 4
@dev_attr_period = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 144 }, ptr null, ptr @period_store }, align 4
@dev_attr_pps_enable = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 144 }, ptr null, ptr @pps_enable_store }, align 4
@dev_attr_n_vclocks = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420 }, ptr @n_vclocks_show, ptr @n_vclocks_store }, align 4
@dev_attr_max_vclocks = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420 }, ptr @max_vclocks_show, ptr @max_vclocks_store }, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"extts_enable\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%u %d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%u %lld %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%u %lld %u %lld %u\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"pps_enable\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"n_vclocks\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"max value is %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"new virtual clock ptp%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"only physical clock in use now\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"guarantee physical clock free running\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"delete virtual clock ptp%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"max_vclocks\00", align 1
@dev_attr_clock_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @clock_name_show, ptr null }, align 4
@dev_attr_max_adjustment = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @max_adj_show, ptr null }, align 4
@dev_attr_n_alarms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @n_alarm_show, ptr null }, align 4
@dev_attr_n_external_timestamps = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @n_ext_ts_show, ptr null }, align 4
@dev_attr_n_periodic_outputs = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @n_per_out_show, ptr null }, align 4
@dev_attr_n_programmable_pins = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @n_pins_show, ptr null }, align 4
@dev_attr_pps_available = internal global %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @pps_show, ptr null }, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"clock_name\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"max_adjustment\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"n_alarms\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"n_external_timestamps\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"n_periodic_outputs\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"n_programmable_pins\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"pps_available\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"%u %u\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"%u %u\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ptp_populate_pin_groups(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %45, label %7

7:                                                ; preds = %1
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 16) #12
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 12
  store ptr null, ptr %11, align 8
  br label %45

12:                                               ; preds = %7
  %13 = extractvalue { i32, i1 } %8, 0
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #13
  %15 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 12
  store ptr %14, ptr %15, align 8
  %16 = icmp eq ptr %14, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %12
  %18 = shl i32 %5, 2
  %19 = add i32 %18, 4
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #13
  %21 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 13
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ptp_clock_info, ptr %3, i32 0, i32 8
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i32 [ 0, %23 ], [ %36, %25 ]
  %27 = load ptr, ptr %15, align 8
  %28 = getelementptr %struct.device_attribute, ptr %27, i32 %26
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr %struct.ptp_pin_desc, ptr %29, i32 %26
  store ptr %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.attribute, ptr %28, i32 0, i32 1
  store i16 420, ptr %31, align 4
  %32 = getelementptr %struct.device_attribute, ptr %27, i32 %26, i32 1
  store ptr @ptp_pin_show, ptr %32, align 4
  %33 = getelementptr %struct.device_attribute, ptr %27, i32 %26, i32 2
  store ptr @ptp_pin_store, ptr %33, align 4
  %34 = load ptr, ptr %21, align 4
  %35 = getelementptr ptr, ptr %34, i32 %26
  store ptr %28, ptr %35, align 4
  %36 = add nuw nsw i32 %26, 1
  %37 = icmp eq i32 %36, %5
  br i1 %37, label %38, label %25

38:                                               ; preds = %25
  %39 = load ptr, ptr %21, align 4
  %40 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 14
  store ptr @.str, ptr %40, align 8
  %41 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 14, i32 3
  store ptr %39, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 15
  store ptr %40, ptr %42, align 4
  br label %45

43:                                               ; preds = %17
  %44 = load ptr, ptr %15, align 8
  tail call void @kfree(ptr noundef %44) #12
  br label %45

45:                                               ; preds = %43, %38, %12, %10, %1
  %46 = phi i32 [ 0, %38 ], [ 0, %1 ], [ -12, %12 ], [ -12, %43 ], [ -12, %10 ]
  ret i32 %46
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_pin_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ptp_clock_info, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ptp_clock_info, ptr %8, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %20, %12
  %16 = phi i32 [ 0, %12 ], [ %21, %20 ]
  %17 = getelementptr %struct.ptp_pin_desc, ptr %14, i32 %16
  %18 = tail call i32 @strcmp(ptr noundef %17, ptr noundef %6) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = add nuw nsw i32 %16, 1
  %22 = icmp eq i32 %21, %10
  br i1 %22, label %36, label %15

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 9
  %25 = tail call i32 @mutex_lock_interruptible(ptr noundef %24) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds %struct.ptp_clock_info, ptr %28, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %16, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.ptp_pin_desc, ptr %30, i32 %16, i32 3
  %34 = load i32, ptr %33, align 4
  tail call void @mutex_unlock(ptr noundef %24) #12
  %35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.26, i32 noundef %32, i32 noundef %34)
  br label %36

36:                                               ; preds = %27, %23, %20, %3
  %37 = phi i32 [ %35, %27 ], [ -512, %23 ], [ -22, %3 ], [ -22, %20 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_pin_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  %9 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.27, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %39

11:                                               ; preds = %4
  %12 = load ptr, ptr %1, align 4
  %13 = getelementptr inbounds %struct.ptp_clock, ptr %8, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.ptp_clock_info, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ptp_clock_info, ptr %14, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %26, %18
  %22 = phi i32 [ 0, %18 ], [ %27, %26 ]
  %23 = getelementptr %struct.ptp_pin_desc, ptr %20, i32 %22
  %24 = call i32 @strcmp(ptr noundef %23, ptr noundef %12) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = add nuw nsw i32 %22, 1
  %28 = icmp eq i32 %27, %16
  br i1 %28, label %39, label %21

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.ptp_clock, ptr %8, i32 0, i32 9
  %31 = call i32 @mutex_lock_interruptible(ptr noundef %30) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, ptr %5, align 4
  %35 = load i32, ptr %6, align 4
  %36 = call i32 @ptp_set_pinfunc(ptr noundef %8, i32 noundef %22, i32 noundef %34, i32 noundef %35) #12
  call void @mutex_unlock(ptr noundef %30) #12
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 %3, i32 %36
  br label %39

39:                                               ; preds = %33, %29, %26, %11, %4
  %40 = phi i32 [ -22, %4 ], [ -512, %29 ], [ %38, %33 ], [ -22, %11 ], [ -22, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ptp_cleanup_pin_groups(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.ptp_clock, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %5) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ptp_is_attribute_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq ptr %1, @dev_attr_extts_enable
  %11 = icmp eq ptr %1, @dev_attr_fifo
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ptp_clock_info, ptr %7, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i16 0, i16 %9
  br label %41

18:                                               ; preds = %3
  %19 = icmp eq ptr %1, @dev_attr_period
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ptp_clock_info, ptr %7, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i16 0, i16 %9
  br label %41

25:                                               ; preds = %18
  %26 = icmp eq ptr %1, @dev_attr_pps_enable
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.ptp_clock_info, ptr %7, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i16 0, i16 %9
  br label %41

32:                                               ; preds = %25
  %33 = icmp eq ptr %1, @dev_attr_n_vclocks
  %34 = icmp eq ptr %1, @dev_attr_max_vclocks
  %35 = or i1 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 22
  %38 = load i8, ptr %37, align 8, !range !10
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i16 %9, i16 0
  br label %41

41:                                               ; preds = %36, %32, %27, %20, %13
  %42 = phi i16 [ %9, %32 ], [ %17, %13 ], [ %24, %20 ], [ %31, %27 ], [ %40, %36 ]
  ret i16 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @extts_enable_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.ptp_clock_request, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ptp_clock, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i32 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  %11 = getelementptr inbounds %struct.ptp_clock_request, ptr %5, i32 0, i32 1
  %12 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef %11, ptr noundef nonnull %6)
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = load i32, ptr %11, align 8
  %16 = getelementptr inbounds %struct.ptp_clock_info, ptr %10, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ptp_clock_info, ptr %10, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 %21(ptr noundef %10, ptr noundef nonnull %5, i32 noundef %24) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %19, %14, %4
  %28 = phi i32 [ -22, %4 ], [ -22, %14 ], [ %25, %19 ]
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi i32 [ %28, %27 ], [ %3, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  ret i32 %30
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @extts_fifo_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 7
  %7 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 8
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 7, i32 3
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #12
  %13 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 7, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 7, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = sub i32 %14, %16
  %18 = icmp slt i32 %17, 0
  %19 = add i32 %17, 128
  %20 = select i1 %18, i32 %19, i32 %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #12
  br label %33

23:                                               ; preds = %10
  %24 = getelementptr [128 x %struct.ptp_extts_event], ptr %6, i32 0, i32 %16
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds i8, ptr %24, i32 8
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds i8, ptr %24, i32 16
  %29 = load i32, ptr %28, align 8
  %30 = add i32 %16, 1
  %31 = srem i32 %30, 128
  store i32 %31, ptr %15, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #12
  %32 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.4, i32 noundef %29, i64 noundef %25, i32 noundef %27)
  br label %33

33:                                               ; preds = %23, %22
  %34 = phi i32 [ %32, %23 ], [ 0, %22 ]
  tail call void @mutex_unlock(ptr noundef %7) #12
  br label %35

35:                                               ; preds = %33, %3
  %36 = phi i32 [ %34, %33 ], [ -512, %3 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @period_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.ptp_clock_request, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ptp_clock, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i32 64, i1 false)
  store i32 1, ptr %5, align 8
  %10 = getelementptr inbounds %struct.ptp_clock_request, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.ptp_clock_request, ptr %5, i32 0, i32 1, i32 0, i32 2
  %12 = getelementptr inbounds %struct.ptp_clock_request, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.ptp_clock_request, ptr %5, i32 0, i32 1, i32 0, i32 1
  %14 = getelementptr inbounds %struct.ptp_clock_request, ptr %5, i32 0, i32 1, i32 0, i32 1, i32 1
  %15 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %11, ptr noundef %10, ptr noundef %12, ptr noundef %13, ptr noundef %14)
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %33

17:                                               ; preds = %4
  %18 = load i32, ptr %11, align 8
  %19 = getelementptr inbounds %struct.ptp_clock_info, ptr %9, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load i64, ptr %13, align 8
  %24 = icmp ne i64 %23, 0
  %25 = load i32, ptr %14, align 8
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 true, i1 %26
  %28 = zext i1 %27 to i32
  %29 = getelementptr inbounds %struct.ptp_clock_info, ptr %9, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %9, ptr noundef nonnull %5, i32 noundef %28) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22, %17, %4
  %34 = phi i32 [ -22, %4 ], [ -22, %17 ], [ %31, %22 ]
  br label %35

35:                                               ; preds = %33, %22
  %36 = phi i32 [ %34, %33 ], [ %3, %22 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pps_enable_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.ptp_clock_request, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ptp_clock, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i32 64, i1 false)
  store i32 2, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  %11 = tail call zeroext i1 @capable(i32 noundef 25) #12
  br i1 %11, label %12, label %25

12:                                               ; preds = %4
  %13 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %6)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ptp_clock_info, ptr %10, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %6, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 %17(ptr noundef %10, ptr noundef nonnull %5, i32 noundef %20) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %15, %12
  %24 = phi i32 [ -22, %12 ], [ %21, %15 ]
  br label %25

25:                                               ; preds = %23, %15, %4
  %26 = phi i32 [ %24, %23 ], [ -1, %4 ], [ %3, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @n_vclocks_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 21
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 19
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.10, i32 noundef %11)
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ %12, %9 ], [ -512, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @n_vclocks_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  %9 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %81

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ptp_clock, ptr %8, i32 0, i32 21
  %13 = call i32 @mutex_lock_interruptible(ptr noundef %12) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %81

15:                                               ; preds = %11
  %16 = load i32, ptr %5, align 4
  %17 = getelementptr inbounds %struct.ptp_clock, ptr %8, i32 0, i32 18
  %18 = load i32, ptr %17, align 8
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %18) #14
  br label %79

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ptp_clock, ptr %8, i32 0, i32 19
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %16, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  store i32 0, ptr %6, align 4
  %26 = getelementptr inbounds %struct.ptp_clock, ptr %8, i32 0, i32 20
  br label %27

27:                                               ; preds = %31, %25
  %28 = phi i32 [ 0, %25 ], [ %44, %31 ]
  %29 = call ptr @ptp_vclock_register(ptr noundef %8) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %79, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ptp_vclock, ptr %29, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.ptp_clock, ptr %33, i32 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = load ptr, ptr %26, align 8
  %37 = load i32, ptr %22, align 4
  %38 = getelementptr i32, ptr %36, i32 %37
  %39 = getelementptr i32, ptr %38, i32 %28
  store i32 %35, ptr %39, align 4
  %40 = load ptr, ptr %32, align 8
  %41 = getelementptr inbounds %struct.ptp_clock, ptr %40, i32 0, i32 4
  %42 = load i32, ptr %41, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %42) #14
  %43 = load i32, ptr %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %6, align 4
  %45 = load i32, ptr %5, align 4
  %46 = load i32, ptr %22, align 4
  %47 = sub i32 %45, %46
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %27, label %49

49:                                               ; preds = %31, %21
  %50 = phi i32 [ %23, %21 ], [ %46, %31 ]
  %51 = phi i32 [ %16, %21 ], [ %45, %31 ]
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = sub i32 %50, %51
  store i32 %54, ptr %6, align 4
  %55 = call i32 @device_for_each_child_reverse(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @unregister_vclock) #12
  store i32 1, ptr %6, align 4
  %56 = load i32, ptr %22, align 4
  %57 = load i32, ptr %5, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %74, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.ptp_clock, ptr %8, i32 0, i32 20
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi i32 [ %56, %59 ], [ %70, %61 ]
  %63 = phi i32 [ -1, %59 ], [ %68, %61 ]
  %64 = load ptr, ptr %60, align 8
  %65 = getelementptr i32, ptr %64, i32 %62
  %66 = getelementptr i32, ptr %65, i32 %63
  store i32 -1, ptr %66, align 4
  %67 = load i32, ptr %6, align 4
  %68 = xor i32 %67, -1
  %69 = add i32 %67, 1
  store i32 %69, ptr %6, align 4
  %70 = load i32, ptr %22, align 4
  %71 = load i32, ptr %5, align 4
  %72 = sub i32 %70, %71
  %73 = icmp ugt i32 %69, %72
  br i1 %73, label %74, label %61

74:                                               ; preds = %61, %53, %49
  %75 = phi i32 [ %51, %49 ], [ %56, %53 ], [ %71, %61 ]
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, ptr @.str.13, ptr @.str.14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull %77) #14
  %78 = load i32, ptr %5, align 4
  store i32 %78, ptr %22, align 4
  br label %79

79:                                               ; preds = %74, %27, %20
  %80 = phi i32 [ %3, %74 ], [ -22, %20 ], [ -22, %27 ]
  call void @mutex_unlock(ptr noundef %12) #12
  br label %81

81:                                               ; preds = %79, %11, %4
  %82 = phi i32 [ -22, %4 ], [ -512, %11 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %82
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_vclock_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child_reverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unregister_vclock(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ptp_clock, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %6, i32 108
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ptp_clock, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.15, i32 noundef %13) #14
  tail call void @ptp_vclock_unregister(ptr noundef %7) #12
  %14 = load i32, ptr %1, align 4
  %15 = add i32 %14, -1
  store i32 %15, ptr %1, align 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 -22, i32 0
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_vclock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_vclocks_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 18
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.10, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_vclocks_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #12
  %9 = icmp ne i32 %8, 0
  %10 = load i32, ptr %5, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %39, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ptp_clock, ptr %7, i32 0, i32 18
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %10, %15
  br i1 %16, label %39, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ptp_clock, ptr %7, i32 0, i32 21
  %19 = call i32 @mutex_lock_interruptible(ptr noundef %18) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load i32, ptr %5, align 4
  %23 = getelementptr inbounds %struct.ptp_clock, ptr %7, i32 0, i32 19
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = shl i32 %22, 2
  %28 = call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %23, align 4
  %32 = shl i32 %31, 2
  %33 = getelementptr inbounds %struct.ptp_clock, ptr %7, i32 0, i32 20
  %34 = load ptr, ptr %33, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %28, ptr align 4 %34, i32 %32, i1 false)
  %35 = load ptr, ptr %33, align 8
  call void @kfree(ptr noundef %35) #12
  store ptr %28, ptr %33, align 8
  %36 = load i32, ptr %5, align 4
  store i32 %36, ptr %14, align 8
  br label %37

37:                                               ; preds = %30, %26, %21
  %38 = phi i32 [ %3, %30 ], [ -22, %21 ], [ -12, %26 ]
  call void @mutex_unlock(ptr noundef %18) #12
  br label %39

39:                                               ; preds = %37, %17, %13, %4
  %40 = phi i32 [ -22, %4 ], [ %3, %13 ], [ -512, %17 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clock_name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ptp_clock_info, ptr %7, i32 0, i32 1
  %9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.18, ptr noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_adj_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ptp_clock_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.20, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @n_alarm_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ptp_clock_info, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.20, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @n_ext_ts_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ptp_clock_info, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.20, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @n_per_out_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ptp_clock_info, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.20, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @n_pins_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ptp_clock_info, ptr %7, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.20, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pps_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ptp_clock, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ptp_clock_info, ptr %7, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.20, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_set_pinfunc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
