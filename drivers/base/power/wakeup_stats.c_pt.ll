; ModuleID = '/llk/IR/drivers/base/power/wakeup_stats.c_pt.bc'
source_filename = "../drivers/base/power/wakeup_stats.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.lock_class_key = type {}
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wakeup_source = type { ptr, i32, %struct.list_head, %struct.spinlock, ptr, %struct.timer_list, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_wakeup_stats__166_217_wakeup_sources_sysfs_init2 = internal global ptr @wakeup_sources_sysfs_init, section ".initcall2.init", align 4
@wakeup_class = internal unnamed_addr global ptr null, align 4
@wakeup_source_groups = internal global [2 x ptr] [ptr @wakeup_source_group, ptr null], align 4
@.str = private unnamed_addr constant [9 x i8] c"wakeup%d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@wakeup_source_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @wakeup_source_attrs, ptr null }, align 4
@wakeup_source_attrs = internal global [11 x ptr] [ptr @dev_attr_name, ptr @dev_attr_active_count, ptr @dev_attr_event_count, ptr @dev_attr_wakeup_count, ptr @dev_attr_expire_count, ptr @dev_attr_active_time_ms, ptr @dev_attr_total_time_ms, ptr @dev_attr_max_time_ms, ptr @dev_attr_last_change_ms, ptr @dev_attr_prevent_suspend_time_ms, ptr null], align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @name_show, ptr null }, align 4
@dev_attr_active_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @active_count_show, ptr null }, align 4
@dev_attr_event_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @event_count_show, ptr null }, align 4
@dev_attr_wakeup_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @wakeup_count_show, ptr null }, align 4
@dev_attr_expire_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @expire_count_show, ptr null }, align 4
@dev_attr_active_time_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @active_time_ms_show, ptr null }, align 4
@dev_attr_total_time_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @total_time_ms_show, ptr null }, align 4
@dev_attr_max_time_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @max_time_ms_show, ptr null }, align 4
@dev_attr_last_change_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @last_change_ms_show, ptr null }, align 4
@dev_attr_prevent_suspend_time_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @prevent_suspend_time_ms_show, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"active_count\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"event_count\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"wakeup_count\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"expire_count\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"active_time_ms\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"total_time_ms\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"max_time_ms\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"last_change_ms\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"prevent_suspend_time_ms\00", align 1
@wakeup_sources_sysfs_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_wakeup_stats__166_217_wakeup_sources_sysfs_init2], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wakeup_source_sysfs_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 472) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  tail call void @device_initialize(ptr noundef nonnull %4) #6
  %7 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  store i32 0, ptr %7, align 8
  %8 = load ptr, ptr @wakeup_class, align 4
  %9 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 31
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 32
  store ptr @wakeup_source_groups, ptr %11, align 8
  %12 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 33
  store ptr @device_create_release, ptr %12, align 4
  %13 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  store ptr %1, ptr %13, align 8
  %14 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = or i16 %15, 128
  store i16 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef %18) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = tail call i32 @device_add(ptr noundef nonnull %4) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %6, %2
  %25 = phi i32 [ %19, %6 ], [ %22, %21 ], [ -12, %2 ]
  tail call void @put_device(ptr noundef %4) #6
  %26 = inttoptr i32 %25 to ptr
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %26, %24 ], [ %4, %21 ]
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = ptrtoint ptr %28 to i32
  br label %34

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 17
  store ptr %28, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ 0, %32 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_wakeup_source_sysfs_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %3, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 @wakeup_source_sysfs_add(ptr noundef %0, ptr noundef nonnull %3)
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = phi i32 [ %10, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wakeup_source_sysfs_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  tail call void @device_unregister(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @wakeup_sources_sysfs_init() #2 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @wakeup_sources_sysfs_init.__key) #6
  store ptr %1, ptr @wakeup_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %1 to i32
  %4 = select i1 %2, i32 %3, i32 0
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @device_create_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef %6) #6
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @active_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %7) #6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @event_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 12
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %7) #6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 16
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %7) #6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @expire_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %7) #6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @active_time_ms_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 18
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = tail call i64 @ktime_get() #6
  %12 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 9
  %13 = load i64, ptr %12, align 8
  %14 = sub i64 %11, %13
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi i64 [ %14, %10 ], [ 0, %3 ]
  %17 = tail call i64 @llvm.abs.i64(i64 %16, i1 false) #6
  %18 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %17) #7, !srcloc !8
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %17, i64 %18, i32 0) #7, !srcloc !9
  %20 = extractvalue { i64, i32 } %19, 0
  %21 = icmp slt i64 %16, 0
  %22 = lshr i64 %20, 18
  %23 = sub nsw i64 0, %22
  %24 = select i1 %21, i64 %23, i64 %22
  %25 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.9, i64 noundef %24) #6
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @total_time_ms_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 7
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 18
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = tail call i64 @ktime_get() #6
  %14 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 9
  %15 = load i64, ptr %14, align 8
  %16 = add i64 %13, %7
  %17 = sub i64 %16, %15
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i64 [ %17, %12 ], [ %7, %3 ]
  %20 = tail call i64 @llvm.abs.i64(i64 %19, i1 false) #6
  %21 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %20) #7, !srcloc !8
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %20, i64 %21, i32 0) #7, !srcloc !9
  %23 = extractvalue { i64, i32 } %22, 0
  %24 = icmp slt i64 %19, 0
  %25 = lshr i64 %23, 18
  %26 = sub nsw i64 0, %25
  %27 = select i1 %24, i64 %26, i64 %25
  %28 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.9, i64 noundef %27) #6
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_time_ms_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 8
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 18
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = tail call i64 @ktime_get() #6
  %14 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 9
  %15 = load i64, ptr %14, align 8
  %16 = sub i64 %13, %15
  %17 = tail call i64 @llvm.smax.i64(i64 %16, i64 %7)
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i64 [ %7, %3 ], [ %17, %12 ]
  %20 = tail call i64 @llvm.abs.i64(i64 %19, i1 false) #6
  %21 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %20) #7, !srcloc !8
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %20, i64 %21, i32 0) #7, !srcloc !9
  %23 = extractvalue { i64, i32 } %22, 0
  %24 = icmp slt i64 %19, 0
  %25 = lshr i64 %23, 18
  %26 = sub nsw i64 0, %25
  %27 = select i1 %24, i64 %26, i64 %25
  %28 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.9, i64 noundef %27) #6
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @last_change_ms_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 9
  %7 = load i64, ptr %6, align 8
  %8 = tail call i64 @llvm.abs.i64(i64 %7, i1 false) #6
  %9 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %8) #7, !srcloc !8
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %8, i64 %9, i32 0) #7, !srcloc !9
  %11 = extractvalue { i64, i32 } %10, 0
  %12 = icmp slt i64 %7, 0
  %13 = lshr i64 %11, 18
  %14 = sub nsw i64 0, %13
  %15 = select i1 %12, i64 %14, i64 %13
  %16 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.9, i64 noundef %15) #6
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @prevent_suspend_time_ms_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 11
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 18
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 3
  %11 = icmp eq i8 %10, 3
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = tail call i64 @ktime_get() #6
  %14 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 10
  %15 = load i64, ptr %14, align 8
  %16 = add i64 %13, %7
  %17 = sub i64 %16, %15
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i64 [ %17, %12 ], [ %7, %3 ]
  %20 = tail call i64 @llvm.abs.i64(i64 %19, i1 false) #6
  %21 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %20) #7, !srcloc !8
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %20, i64 %21, i32 0) #7, !srcloc !9
  %23 = extractvalue { i64, i32 } %22, 0
  %24 = icmp slt i64 %19, 0
  %25 = lshr i64 %23, 18
  %26 = sub nsw i64 0, %25
  %27 = select i1 %24, i64 %26, i64 %25
  %28 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.9, i64 noundef %27) #6
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{i64 1135560, i64 1135587}
!9 = !{i64 1136255, i64 1136282, i64 1136315, i64 1136336, i64 1136363, i64 1136389}
