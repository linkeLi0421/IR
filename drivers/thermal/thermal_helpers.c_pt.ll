; ModuleID = '/llk/IR/drivers/thermal/thermal_helpers.c_pt.bc'
source_filename = "../drivers/thermal/thermal_helpers.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_tz_trend:\09\09\09\09\09"
module asm "\09.asciz \09\22get_tz_trend\22\09\09\09\09\09"
module asm "__kstrtabns_get_tz_trend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_thermal_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22get_thermal_instance\22\09\09\09\09\09"
module asm "__kstrtabns_get_thermal_instance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_get_temp:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_get_temp\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_get_temp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_cdev_update:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_cdev_update\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_cdev_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_get_slope:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_get_slope\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_get_slope:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_get_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_get_offset\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_get_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_get_tz_trend = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_tz_trend = external dso_local constant [0 x i8], align 1
@__ksymtab_get_tz_trend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_tz_trend to i32), ptr @__kstrtab_get_tz_trend, ptr @__kstrtabns_get_tz_trend }, section "___ksymtab+get_tz_trend", align 4
@__kstrtab_get_thermal_instance = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_thermal_instance = external dso_local constant [0 x i8], align 1
@__ksymtab_get_thermal_instance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_thermal_instance to i32), ptr @__kstrtab_get_thermal_instance, ptr @__kstrtabns_get_thermal_instance }, section "___ksymtab+get_thermal_instance", align 4
@__kstrtab_thermal_zone_get_temp = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_get_temp = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_get_temp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_get_temp to i32), ptr @__kstrtab_thermal_zone_get_temp, ptr @__kstrtabns_thermal_zone_get_temp }, section "___ksymtab_gpl+thermal_zone_get_temp", align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to set trips: %d\0A\00", align 1
@__kstrtab_thermal_cdev_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_cdev_update = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_cdev_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_cdev_update to i32), ptr @__kstrtab_thermal_cdev_update, ptr @__kstrtabns_thermal_cdev_update }, section "___ksymtab+thermal_cdev_update", align 4
@__kstrtab_thermal_zone_get_slope = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_get_slope = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_get_slope = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_get_slope to i32), ptr @__kstrtab_thermal_zone_get_slope, ptr @__kstrtabns_thermal_zone_get_slope }, section "___ksymtab_gpl+thermal_zone_get_slope", align 4
@__kstrtab_thermal_zone_get_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_get_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_get_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_get_offset to i32), ptr @__kstrtab_thermal_zone_get_offset, ptr @__kstrtabns_thermal_zone_get_offset }, section "___ksymtab_gpl+thermal_zone_get_offset", align 4
@__tracepoint_cdev_update = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_get_thermal_instance, ptr @__ksymtab_get_tz_trend, ptr @__ksymtab_thermal_cdev_update, ptr @__ksymtab_thermal_zone_get_offset, ptr @__ksymtab_thermal_zone_get_slope, ptr @__ksymtab_thermal_zone_get_temp], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_tz_trend(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %9, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = call i32 %11(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, ptr %3, align 4
  br label %27

18:                                               ; preds = %13, %7, %2
  %19 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 13
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 14
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = icmp slt i32 %20, %22
  %26 = select i1 %25, i32 2, i32 0
  br label %27

27:                                               ; preds = %24, %18, %16
  %28 = phi i32 [ %17, %16 ], [ 1, %18 ], [ %26, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_thermal_instance(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %27, label %9

9:                                                ; preds = %22, %3
  %10 = phi ptr [ %23, %22 ], [ %7, %3 ]
  %11 = getelementptr i8, ptr %10, i32 -100
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %10, i32 -92
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %10, i32 -96
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %25, label %22

22:                                               ; preds = %18, %14, %9
  %23 = load ptr, ptr %10, align 4
  %24 = icmp eq ptr %23, %6
  br i1 %24, label %27, label %9

25:                                               ; preds = %18
  %26 = getelementptr i8, ptr %10, i32 -124
  br label %27

27:                                               ; preds = %25, %22, %3
  %28 = phi ptr [ %26, %25 ], [ null, %3 ], [ null, %22 ]
  tail call void @mutex_unlock(ptr noundef %5) #6
  tail call void @mutex_unlock(ptr noundef %4) #6
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @thermal_zone_get_temp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %13) #6
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef nonnull %0, ptr noundef %1) #6
  tail call void @mutex_unlock(ptr noundef %13) #6
  br label %18

18:                                               ; preds = %12, %6, %2
  %19 = phi i32 [ %17, %12 ], [ -22, %6 ], [ -22, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thermal_zone_set_trips(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %68, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %6, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %68, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 8
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 13
  br label %20

20:                                               ; preds = %47, %18
  %21 = phi ptr [ %6, %18 ], [ %48, %47 ]
  %22 = phi i32 [ 0, %18 ], [ %44, %47 ]
  %23 = phi i32 [ 2147483647, %18 ], [ %43, %47 ]
  %24 = phi i32 [ -2147483647, %18 ], [ %39, %47 ]
  %25 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %21, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %26(ptr noundef %0, i32 noundef %22, ptr noundef nonnull %2) #6
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %28, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %0, i32 noundef %22, ptr noundef nonnull %3) #6
  %32 = load i32, ptr %2, align 4
  %33 = load i32, ptr %3, align 4
  %34 = sub i32 %32, %33
  %35 = load i32, ptr %19, align 8
  %36 = icmp slt i32 %34, %35
  %37 = icmp sgt i32 %34, %24
  %38 = select i1 %36, i1 %37, i1 false
  %39 = select i1 %38, i32 %34, i32 %24
  %40 = icmp sgt i32 %32, %35
  %41 = icmp slt i32 %32, %23
  %42 = select i1 %40, i1 %41, i1 false
  %43 = select i1 %42, i32 %32, i32 %23
  %44 = add nuw nsw i32 %22, 1
  %45 = load i32, ptr %15, align 8
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %20
  %48 = load ptr, ptr %5, align 4
  br label %20

49:                                               ; preds = %20, %14
  %50 = phi i32 [ -2147483647, %14 ], [ %39, %20 ]
  %51 = phi i32 [ 2147483647, %14 ], [ %43, %20 ]
  %52 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 17
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, %50
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 18
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, %51
  br i1 %58, label %68, label %59

59:                                               ; preds = %55, %49
  store i32 %50, ptr %52, align 8
  %60 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 18
  store i32 %51, ptr %60, align 4
  %61 = load ptr, ptr %5, align 4
  %62 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = call i32 %63(ptr noundef %0, i32 noundef %50, i32 noundef %51) #6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str, i32 noundef %64) #7
  br label %68

68:                                               ; preds = %66, %59, %55, %10, %1
  call void @mutex_unlock(ptr noundef %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thermal_set_delay_jiffies(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #6
  store i32 %3, ptr %0, align 4
  %4 = icmp sgt i32 %1, 1000
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @round_jiffies(i32 noundef %3) #6
  store i32 %6, ptr %0, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__thermal_cdev_update(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %16, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %14, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %13, %5 ], [ 0, %1 ]
  %8 = getelementptr i8, ptr %6, i32 -84
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne i32 %9, -1
  %11 = icmp ugt i32 %9, %7
  %12 = select i1 %10, i1 %11, i1 false
  %13 = select i1 %12, i32 %9, i32 %7
  %14 = load ptr, ptr %6, align 4
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %5

16:                                               ; preds = %5, %1
  %17 = phi i32 [ 0, %1 ], [ %13, %5 ]
  %18 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %0, i32 noundef %17) #6
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdev_update, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %16
  %26 = tail call ptr @llvm.thread.pointer() #6
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 5
  %30 = getelementptr i32, ptr @__cpu_online_mask, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %28, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %37 = tail call i32 @__traceiter_cdev_update(ptr noundef null, ptr noundef %0, i32 noundef %17) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  br label %38

38:                                               ; preds = %36, %25, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thermal_cdev_update(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %2) #6
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 7
  %4 = load i8, ptr %3, align 8, !range !11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %21, label %10

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %19, %10 ], [ %8, %6 ]
  %12 = phi i32 [ %18, %10 ], [ 0, %6 ]
  %13 = getelementptr i8, ptr %11, i32 -84
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, -1
  %16 = icmp ugt i32 %14, %12
  %17 = select i1 %15, i1 %16, i1 false
  %18 = select i1 %17, i32 %14, i32 %12
  %19 = load ptr, ptr %11, align 4
  %20 = icmp eq ptr %19, %7
  br i1 %20, label %21, label %10

21:                                               ; preds = %10, %6
  %22 = phi i32 [ 0, %6 ], [ %18, %10 ]
  %23 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %0, i32 noundef %22) #6
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdev_update, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %21
  %31 = tail call ptr @llvm.thread.pointer() #6
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %42 = tail call i32 @__traceiter_cdev_update(ptr noundef null, ptr noundef %0, i32 noundef %22) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  br label %43

43:                                               ; preds = %41, %30, %21
  store i8 1, ptr %3, align 8
  br label %44

44:                                               ; preds = %43, %1
  tail call void @mutex_unlock(ptr noundef %2) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @thermal_zone_get_slope(ptr noundef readonly %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.thermal_zone_params, ptr %5, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3, %1
  %11 = phi i32 [ %9, %7 ], [ 1, %3 ], [ 1, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @thermal_zone_get_offset(ptr noundef readonly %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.thermal_zone_params, ptr %5, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3, %1
  %11 = phi i32 [ %9, %7 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cdev_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i64 2151475949}
!10 = !{i64 2151476107}
!11 = !{i8 0, i8 2}
