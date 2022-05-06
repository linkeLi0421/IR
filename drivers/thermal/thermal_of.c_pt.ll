; ModuleID = '/llk/IR/drivers/thermal/thermal_of.c_pt.bc'
source_filename = "../drivers/thermal/thermal_of.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_thermal_get_ntrips:\09\09\09\09\09"
module asm "\09.asciz \09\22of_thermal_get_ntrips\22\09\09\09\09\09"
module asm "__kstrtabns_of_thermal_get_ntrips:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_thermal_is_trip_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22of_thermal_is_trip_valid\22\09\09\09\09\09"
module asm "__kstrtabns_of_thermal_is_trip_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_thermal_get_trip_points:\09\09\09\09\09"
module asm "\09.asciz \09\22of_thermal_get_trip_points\22\09\09\09\09\09"
module asm "__kstrtabns_of_thermal_get_trip_points:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_of_get_sensor_id:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_of_get_sensor_id\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_of_get_sensor_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_of_sensor_register:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_of_sensor_register\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_of_sensor_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_thermal_zone_of_sensor_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22thermal_zone_of_sensor_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_thermal_zone_of_sensor_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_thermal_zone_of_sensor_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_thermal_zone_of_sensor_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_thermal_zone_of_sensor_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_thermal_zone_of_sensor_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_thermal_zone_of_sensor_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_thermal_zone_of_sensor_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.__thermal_zone = type { i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_trip = type { ptr, i32, i32, i32 }
%struct.__thermal_bind_params = type { ptr, i32, i32, i32 }
%struct.__thermal_cooling_bind_param = type { ptr, i32, i32 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@__kstrtab_of_thermal_get_ntrips = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_thermal_get_ntrips = external dso_local constant [0 x i8], align 1
@__ksymtab_of_thermal_get_ntrips = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_thermal_get_ntrips to i32), ptr @__kstrtab_of_thermal_get_ntrips, ptr @__kstrtabns_of_thermal_get_ntrips }, section "___ksymtab_gpl+of_thermal_get_ntrips", align 4
@__kstrtab_of_thermal_is_trip_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_thermal_is_trip_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_of_thermal_is_trip_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_thermal_is_trip_valid to i32), ptr @__kstrtab_of_thermal_is_trip_valid, ptr @__kstrtabns_of_thermal_is_trip_valid }, section "___ksymtab_gpl+of_thermal_is_trip_valid", align 4
@__kstrtab_of_thermal_get_trip_points = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_thermal_get_trip_points = external dso_local constant [0 x i8], align 1
@__ksymtab_of_thermal_get_trip_points = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_thermal_get_trip_points to i32), ptr @__kstrtab_of_thermal_get_trip_points, ptr @__kstrtabns_of_thermal_get_trip_points }, section "___ksymtab_gpl+of_thermal_get_trip_points", align 4
@.str = private unnamed_addr constant [16 x i8] c"thermal-sensors\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"#thermal-sensor-cells\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"\014thermal_sys: %pOFn: too many cells in sensor specifier %d\0A\00", align 1
@__kstrtab_thermal_zone_of_get_sensor_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_of_get_sensor_id = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_of_get_sensor_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_of_get_sensor_id to i32), ptr @__kstrtab_thermal_zone_of_get_sensor_id, ptr @__kstrtabns_thermal_zone_of_get_sensor_id }, section "___ksymtab_gpl+thermal_zone_of_get_sensor_id", align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"thermal-zones\00", align 1
@__kstrtab_thermal_zone_of_sensor_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_of_sensor_register = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_of_sensor_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_of_sensor_register to i32), ptr @__kstrtab_thermal_zone_of_sensor_register, ptr @__kstrtabns_thermal_zone_of_sensor_register }, section "___ksymtab_gpl+thermal_zone_of_sensor_register", align 4
@__kstrtab_thermal_zone_of_sensor_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_thermal_zone_of_sensor_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_thermal_zone_of_sensor_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @thermal_zone_of_sensor_unregister to i32), ptr @__kstrtab_thermal_zone_of_sensor_unregister, ptr @__kstrtabns_thermal_zone_of_sensor_unregister }, section "___ksymtab_gpl+thermal_zone_of_sensor_unregister", align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"devm_thermal_zone_of_sensor_release\00", align 1
@__kstrtab_devm_thermal_zone_of_sensor_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_thermal_zone_of_sensor_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_thermal_zone_of_sensor_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_thermal_zone_of_sensor_register to i32), ptr @__kstrtab_devm_thermal_zone_of_sensor_register, ptr @__kstrtabns_devm_thermal_zone_of_sensor_register }, section "___ksymtab_gpl+devm_thermal_zone_of_sensor_register", align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"drivers/thermal/thermal_of.c\00", align 1
@__kstrtab_devm_thermal_zone_of_sensor_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_thermal_zone_of_sensor_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_thermal_zone_of_sensor_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_thermal_zone_of_sensor_unregister to i32), ptr @__kstrtab_devm_thermal_zone_of_sensor_unregister, ptr @__kstrtabns_devm_thermal_zone_of_sensor_unregister }, section "___ksymtab_gpl+devm_thermal_zone_of_sensor_unregister", align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"\013thermal_sys: failed to build thermal zone %pOFn: %ld\0A\00", align 1
@of_thermal_ops = internal global %struct.thermal_zone_device_ops { ptr @of_thermal_bind, ptr @of_thermal_unbind, ptr null, ptr null, ptr null, ptr @of_thermal_get_trip_type, ptr @of_thermal_get_trip_temp, ptr @of_thermal_set_trip_temp, ptr @of_thermal_get_trip_hyst, ptr @of_thermal_set_trip_hyst, ptr @of_thermal_get_crit_temp, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"sustainable-power\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"\013thermal_sys: Failed to build %pOFn zone %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"\013thermal_sys: no thermal zone np\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"polling-delay-passive\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"\013thermal_sys: %pOFn: missing polling-delay-passive property\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"polling-delay\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"\013thermal_sys: %pOFn: missing polling-delay property\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"coefficients\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"trips\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"cooling-maps\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"\013thermal_sys: missing temperature property\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"hysteresis\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"\013thermal_sys: missing hysteresis property\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"\013thermal_sys: wrong trip type property\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"hot\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"contribution\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"trip\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"\013thermal_sys: missing trip property\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"cooling-device\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"#cooling-cells\00", align 1
@.str.32 = private unnamed_addr constant [71 x i8] c"\013thermal_sys: Add a cooling_device property with at least one device\0A\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"\013thermal_sys: Invalid cooling-device entry\0A\00", align 1
@.str.34 = private unnamed_addr constant [66 x i8] c"\013thermal_sys: wrong reference to cooling device, missing limits\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_devm_thermal_zone_of_sensor_register, ptr @__ksymtab_devm_thermal_zone_of_sensor_unregister, ptr @__ksymtab_of_thermal_get_ntrips, ptr @__ksymtab_of_thermal_get_trip_points, ptr @__ksymtab_of_thermal_is_trip_valid, ptr @__ksymtab_thermal_zone_of_get_sensor_id, ptr @__ksymtab_thermal_zone_of_sensor_register, ptr @__ksymtab_thermal_zone_of_sensor_unregister], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @of_thermal_get_ntrips(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.__thermal_zone, ptr %3, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ -19, %1 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @of_thermal_is_trip_valid(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.__thermal_zone, ptr %4, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, %1
  %10 = icmp sgt i32 %1, -1
  %11 = and i1 %10, %9
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i1 [ false, %2 ], [ %11, %6 ]
  ret i1 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @of_thermal_get_trip_points(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.__thermal_zone, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @thermal_zone_of_get_sensor_id(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false), !annotation !8
  %5 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %4) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 4
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.of_phandle_args, ptr %4, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %1, i32 noundef %12) #14
  %16 = load i32, ptr %11, align 4
  %17 = load ptr, ptr %4, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi ptr [ %17, %14 ], [ %1, %10 ]
  %20 = phi i32 [ %16, %14 ], [ %12, %10 ]
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.of_phandle_args, ptr %4, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = select i1 %21, i32 0, i32 %23
  store i32 %24, ptr %2, align 4
  br label %25

25:                                               ; preds = %18, %7
  %26 = phi ptr [ %19, %18 ], [ %8, %7 ]
  %27 = phi i32 [ 0, %18 ], [ -19, %7 ]
  call void @of_node_put(ptr noundef %26) #13
  br label %28

28:                                               ; preds = %25, %3
  %29 = phi i32 [ %5, %3 ], [ %27, %25 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #13
  ret i32 %29
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @thermal_zone_of_sensor_register(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.3) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %84, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %0, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %8
  tail call void @of_node_put(ptr noundef nonnull %6) #13
  br label %84

15:                                               ; preds = %10
  %16 = tail call ptr @of_node_get(ptr noundef nonnull %12) #13
  %17 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %6, ptr noundef null) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %82, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.of_phandle_args, ptr %5, i32 0, i32 1
  %21 = getelementptr inbounds %struct.of_phandle_args, ptr %5, i32 0, i32 2
  br label %22

22:                                               ; preds = %79, %19
  %23 = phi ptr [ %17, %19 ], [ %80, %79 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #13, !annotation !8
  %24 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %5) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #13
  br label %79

27:                                               ; preds = %22
  %28 = load ptr, ptr %5, align 4
  %29 = icmp eq ptr %28, %16
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, ptr %20, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %16, i32 noundef %31) #14
  %35 = load i32, ptr %20, align 4
  %36 = load ptr, ptr %5, align 4
  br label %38

37:                                               ; preds = %27
  call void @of_node_put(ptr noundef %28) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #13
  br label %79

38:                                               ; preds = %33, %30
  %39 = phi ptr [ %36, %33 ], [ %16, %30 ]
  %40 = phi i32 [ %35, %33 ], [ %31, %30 ]
  %41 = icmp eq i32 %40, 0
  %42 = load i32, ptr %21, align 4
  %43 = select i1 %41, i32 0, i32 %42
  call void @of_node_put(ptr noundef %39) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #13
  %44 = icmp eq i32 %43, %1
  br i1 %44, label %45, label %79

45:                                               ; preds = %38
  %46 = load ptr, ptr %23, align 4
  %47 = call ptr @thermal_zone_get_zone_by_name(ptr noundef %46) #13
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %77, label %49

49:                                               ; preds = %45
  %50 = icmp eq ptr %3, null
  br i1 %50, label %77, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.thermal_zone_device, ptr %47, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.thermal_zone_device, ptr %47, i32 0, i32 26
  call void @mutex_lock(ptr noundef %54) #13
  %55 = getelementptr inbounds %struct.__thermal_zone, ptr %53, i32 0, i32 9
  store ptr %3, ptr %55, align 4
  %56 = getelementptr inbounds %struct.__thermal_zone, ptr %53, i32 0, i32 8
  store ptr %2, ptr %56, align 4
  %57 = getelementptr inbounds %struct.thermal_zone_device, ptr %47, i32 0, i32 20
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %58, i32 0, i32 2
  store ptr @of_thermal_get_temp, ptr %59, align 4
  %60 = load ptr, ptr %57, align 4
  %61 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %60, i32 0, i32 12
  store ptr @of_thermal_get_trend, ptr %61, align 4
  %62 = getelementptr inbounds %struct.thermal_zone_of_device_ops, ptr %3, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %51
  %66 = load ptr, ptr %57, align 4
  %67 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %66, i32 0, i32 3
  store ptr @of_thermal_set_trips, ptr %67, align 4
  br label %68

68:                                               ; preds = %65, %51
  %69 = getelementptr inbounds %struct.thermal_zone_of_device_ops, ptr %3, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %57, align 4
  %74 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %73, i32 0, i32 11
  store ptr @of_thermal_set_emul_temp, ptr %74, align 4
  br label %75

75:                                               ; preds = %72, %68
  call void @mutex_unlock(ptr noundef %54) #13
  %76 = call i32 @thermal_zone_device_enable(ptr noundef %47) #13
  br label %77

77:                                               ; preds = %75, %49, %45
  %78 = phi ptr [ %47, %75 ], [ inttoptr (i32 -22 to ptr), %49 ], [ inttoptr (i32 -517 to ptr), %45 ]
  call void @of_node_put(ptr noundef nonnull %23) #13
  br label %82

79:                                               ; preds = %38, %37, %26
  %80 = call ptr @of_get_next_available_child(ptr noundef nonnull %6, ptr noundef nonnull %23) #13
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %22

82:                                               ; preds = %79, %77, %15
  %83 = phi ptr [ %78, %77 ], [ inttoptr (i32 -19 to ptr), %15 ], [ inttoptr (i32 -19 to ptr), %79 ]
  call void @of_node_put(ptr noundef %16) #13
  call void @of_node_put(ptr noundef nonnull %6) #13
  br label %84

84:                                               ; preds = %82, %14, %4
  %85 = phi ptr [ %83, %82 ], [ inttoptr (i32 -19 to ptr), %14 ], [ inttoptr (i32 -19 to ptr), %4 ]
  ret ptr %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thermal_zone_of_sensor_unregister(ptr noundef readnone %0, ptr noundef %1) #2 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @thermal_zone_device_disable(ptr noundef nonnull %1) #13
  %12 = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 20
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %14, i32 0, i32 2
  store ptr null, ptr %15, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %16, i32 0, i32 12
  store ptr null, ptr %17, align 4
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %18, i32 0, i32 11
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.__thermal_zone, ptr %8, i32 0, i32 9
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.__thermal_zone, ptr %8, i32 0, i32 8
  store ptr null, ptr %21, align 4
  tail call void @mutex_unlock(ptr noundef %12) #13
  br label %22

22:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_thermal_zone_of_sensor_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @thermal_zone_of_sensor_register(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @devres_free(ptr noundef nonnull %5) #13
  br label %12

11:                                               ; preds = %7
  store ptr %8, ptr %5, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %5) #13
  br label %12

12:                                               ; preds = %11, %10, %4
  %13 = phi ptr [ %8, %10 ], [ %8, %11 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_thermal_zone_of_sensor_release(ptr noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %3, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @thermal_zone_device_disable(ptr noundef nonnull %3) #13
  %13 = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 20
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %15, i32 0, i32 2
  store ptr null, ptr %16, align 4
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %17, i32 0, i32 12
  store ptr null, ptr %18, align 4
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %19, i32 0, i32 11
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.__thermal_zone, ptr %9, i32 0, i32 9
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.__thermal_zone, ptr %9, i32 0, i32 8
  store ptr null, ptr %22, align 4
  tail call void @mutex_unlock(ptr noundef %13) #13
  br label %23

23:                                               ; preds = %11, %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_thermal_zone_of_sensor_unregister(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_thermal_zone_of_sensor_release, ptr noundef nonnull @devm_thermal_zone_of_sensor_match, ptr noundef %1) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 656, i32 noundef 9, ptr noundef null) #13
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_thermal_zone_of_sensor_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2) #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 590, i32 noundef 9, ptr noundef null) #13
  br label %12

9:                                                ; preds = %5
  %10 = icmp eq ptr %6, %2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ 0, %8 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @of_parse_thermal_zones() local_unnamed_addr #6 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.3) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %63, label %4

4:                                                ; preds = %0
  %5 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %2, ptr noundef null) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %61, label %7

7:                                                ; preds = %58, %4
  %8 = phi ptr [ %59, %58 ], [ %5, %4 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #13
  store i32 0, ptr %1, align 4, !annotation !8
  %9 = call fastcc ptr @thermal_of_build_thermal_zone(ptr noundef nonnull %8) #15
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = ptrtoint ptr %9 to i32
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %8, i32 noundef %12) #14
  br label %58

14:                                               ; preds = %7
  %15 = call ptr @kmemdup(ptr noundef nonnull @of_thermal_ops, i32 noundef 60, i32 noundef 3264) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %62, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 64) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call void @kfree(ptr noundef nonnull %15) #13
  br label %62

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.thermal_zone_params, ptr %19, i32 0, i32 1
  store i8 1, ptr %23, align 4
  %24 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.7, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0) #13
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, ptr %1, align 4
  %28 = getelementptr inbounds %struct.thermal_zone_params, ptr %19, i32 0, i32 4
  store i32 %27, ptr %28, align 8
  br label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.__thermal_zone, ptr %9, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %33, %29
  %34 = phi i32 [ %37, %33 ], [ 0, %29 ]
  %35 = phi i32 [ %38, %33 ], [ 0, %29 ]
  %36 = shl nuw i32 1, %35
  %37 = or i32 %34, %36
  %38 = add nuw nsw i32 %35, 1
  %39 = icmp eq i32 %38, %31
  br i1 %39, label %40, label %33

40:                                               ; preds = %33, %29
  %41 = phi i32 [ 0, %29 ], [ %37, %33 ]
  %42 = getelementptr inbounds %struct.__thermal_zone, ptr %9, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.thermal_zone_params, ptr %19, i32 0, i32 10
  store i32 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.__thermal_zone, ptr %9, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.thermal_zone_params, ptr %19, i32 0, i32 11
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr %8, align 4
  %49 = load i32, ptr %30, align 4
  %50 = load i32, ptr %9, align 4
  %51 = getelementptr inbounds %struct.__thermal_zone, ptr %9, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = call ptr @thermal_zone_device_register(ptr noundef %48, i32 noundef %49, i32 noundef %41, ptr noundef %9, ptr noundef nonnull %15, ptr noundef nonnull %19, i32 noundef %50, i32 noundef %52) #13
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %58

55:                                               ; preds = %40
  %56 = ptrtoint ptr %53 to i32
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %8, i32 noundef %56) #14
  call void @kfree(ptr noundef nonnull %19) #13
  call void @kfree(ptr noundef nonnull %15) #13
  call fastcc void @of_thermal_free_zone(ptr noundef %9) #15
  br label %58

58:                                               ; preds = %55, %40, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #13
  %59 = call ptr @of_get_next_available_child(ptr noundef nonnull %2, ptr noundef nonnull %8) #13
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %7

61:                                               ; preds = %58, %4
  call void @of_node_put(ptr noundef nonnull %2) #13
  br label %63

62:                                               ; preds = %21, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #13
  call void @of_node_put(ptr noundef nonnull %8) #13
  call void @of_node_put(ptr noundef nonnull %2) #13
  call fastcc void @of_thermal_free_zone(ptr noundef %9) #15
  call fastcc void @of_thermal_destroy_zones() #15
  br label %63

63:                                               ; preds = %62, %61, %0
  %64 = phi i32 [ -12, %62 ], [ 0, %61 ], [ 0, %0 ]
  ret i32 %64
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @thermal_of_build_thermal_zone(ptr noundef %0) unnamed_addr #6 section ".init.text" {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store i64 0, ptr %8, align 8, !annotation !8
  %9 = icmp eq ptr %0, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #14
  br label %279

12:                                               ; preds = %1
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 40) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %279, label %16

16:                                               ; preds = %12
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #13
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %0) #14
  br label %275

21:                                               ; preds = %16
  %22 = load i32, ptr %7, align 4
  store i32 %22, ptr %14, align 8
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #13
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %0) #14
  br label %275

27:                                               ; preds = %21
  %28 = load i32, ptr %7, align 4
  %29 = getelementptr inbounds %struct.__thermal_zone, ptr %14, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %8, i32 noundef 2, i32 noundef 0) #13
  %31 = icmp sgt i32 %30, -1
  %32 = load i32, ptr %8, align 8
  %33 = getelementptr inbounds [2 x i32], ptr %8, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = select i1 %31, i32 %32, i32 1
  %36 = select i1 %31, i32 %34, i32 0
  %37 = getelementptr inbounds %struct.__thermal_zone, ptr %14, i32 0, i32 2
  store i32 %35, ptr %37, align 8
  %38 = getelementptr inbounds %struct.__thermal_zone, ptr %14, i32 0, i32 3
  store i32 %36, ptr %38, align 4
  %39 = call ptr @of_get_child_by_name(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #13
  %40 = icmp eq ptr %39, null
  br i1 %40, label %237, label %41

41:                                               ; preds = %27
  %42 = call ptr @of_get_next_child(ptr noundef nonnull %39, ptr noundef null) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.__thermal_zone, ptr %14, i32 0, i32 4
  br label %234

46:                                               ; preds = %46, %41
  %47 = phi i32 [ %49, %46 ], [ 0, %41 ]
  %48 = phi ptr [ %50, %46 ], [ %42, %41 ]
  %49 = add i32 %47, 1
  %50 = call ptr @of_get_next_child(ptr noundef nonnull %39, ptr noundef nonnull %48) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %46

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.__thermal_zone, ptr %14, i32 0, i32 4
  store i32 %49, ptr %53, align 8
  %54 = icmp eq i32 %49, 0
  br i1 %54, label %237, label %55

55:                                               ; preds = %52
  %56 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %49, i32 16) #13
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %58, label %60, !prof !10

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.__thermal_zone, ptr %14, i32 0, i32 5
  store ptr null, ptr %59, align 4
  br label %275

60:                                               ; preds = %55
  %61 = extractvalue { i32, i1 } %56, 0
  %62 = call noalias align 64 ptr @__kmalloc(i32 noundef %61, i32 noundef 3520) #17
  %63 = getelementptr inbounds %struct.__thermal_zone, ptr %14, i32 0, i32 5
  store ptr %62, ptr %63, align 4
  %64 = icmp eq ptr %62, null
  br i1 %64, label %275, label %65

65:                                               ; preds = %60
  %66 = call ptr @of_get_next_child(ptr noundef nonnull %39, ptr noundef null) #13
  %67 = icmp eq ptr %66, null
  br i1 %67, label %111, label %68

68:                                               ; preds = %105, %65
  %69 = phi ptr [ %109, %105 ], [ %66, %65 ]
  %70 = phi i32 [ %108, %105 ], [ 0, %65 ]
  %71 = load ptr, ptr %63, align 4
  %72 = getelementptr %struct.thermal_trip, ptr %71, i32 %70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  %73 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %69, ptr noundef nonnull @.str.17, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #13
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %101, label %75

75:                                               ; preds = %68
  %76 = load i32, ptr %6, align 4
  %77 = getelementptr %struct.thermal_trip, ptr %71, i32 %70, i32 1
  store i32 %76, ptr %77, align 4
  %78 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %69, ptr noundef nonnull @.str.19, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #13
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %75
  %81 = load i32, ptr %6, align 4
  %82 = getelementptr %struct.thermal_trip, ptr %71, i32 %70, i32 2
  store i32 %81, ptr %82, align 4
  %83 = getelementptr %struct.thermal_trip, ptr %71, i32 %70, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !8
  %84 = call i32 @of_property_read_string(ptr noundef nonnull %69, ptr noundef nonnull @.str.22, ptr noundef nonnull %5) #13
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %5, align 4
  %88 = call i32 @strcasecmp(ptr noundef %87, ptr noundef nonnull @.str.23) #13
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %86
  %91 = call i32 @strcasecmp(ptr noundef %87, ptr noundef nonnull @.str.24) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %90
  %94 = call i32 @strcasecmp(ptr noundef %87, ptr noundef nonnull @.str.25) #13
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %93
  %97 = call i32 @strcasecmp(ptr noundef %87, ptr noundef nonnull @.str.26) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96, %80
  %100 = phi i32 [ -19, %96 ], [ %84, %80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %101

101:                                              ; preds = %99, %75, %68
  %102 = phi ptr [ @.str.21, %99 ], [ @.str.18, %68 ], [ @.str.20, %75 ]
  %103 = phi i32 [ %100, %99 ], [ %73, %68 ], [ %78, %75 ]
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %102) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %260

105:                                              ; preds = %96, %93, %90, %86
  %106 = phi i32 [ 0, %86 ], [ 1, %90 ], [ 2, %93 ], [ 3, %96 ]
  store i32 %106, ptr %83, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  store ptr %69, ptr %72, align 4
  %107 = call ptr @of_node_get(ptr noundef nonnull %69) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %108 = add i32 %70, 1
  %109 = call ptr @of_get_next_child(ptr noundef nonnull %39, ptr noundef nonnull %69) #13
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %68

111:                                              ; preds = %105, %65
  call void @of_node_put(ptr noundef nonnull %39) #13
  %112 = call ptr @of_get_child_by_name(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #13
  %113 = icmp eq ptr %112, null
  br i1 %113, label %237, label %114

114:                                              ; preds = %111
  %115 = call ptr @of_get_next_child(ptr noundef nonnull %112, ptr noundef null) #13
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.__thermal_zone, ptr %14, i32 0, i32 6
  br label %234

119:                                              ; preds = %119, %114
  %120 = phi i32 [ %122, %119 ], [ 0, %114 ]
  %121 = phi ptr [ %123, %119 ], [ %115, %114 ]
  %122 = add i32 %120, 1
  %123 = call ptr @of_get_next_child(ptr noundef nonnull %112, ptr noundef nonnull %121) #13
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %119

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.__thermal_zone, ptr %14, i32 0, i32 6
  store i32 %122, ptr %126, align 8
  %127 = icmp eq i32 %122, 0
  br i1 %127, label %237, label %128

128:                                              ; preds = %125
  %129 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %122, i32 16) #13
  %130 = extractvalue { i32, i1 } %129, 1
  br i1 %130, label %131, label %133, !prof !10

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.__thermal_zone, ptr %14, i32 0, i32 7
  store ptr null, ptr %132, align 4
  br label %260

133:                                              ; preds = %128
  %134 = extractvalue { i32, i1 } %129, 0
  %135 = call noalias align 64 ptr @__kmalloc(i32 noundef %134, i32 noundef 3520) #17
  %136 = getelementptr inbounds %struct.__thermal_zone, ptr %14, i32 0, i32 7
  store ptr %135, ptr %136, align 4
  %137 = icmp eq ptr %135, null
  br i1 %137, label %260, label %138

138:                                              ; preds = %133
  %139 = call ptr @of_get_next_child(ptr noundef nonnull %112, ptr noundef null) #13
  %140 = icmp eq ptr %139, null
  br i1 %140, label %237, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 1
  %143 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %144 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2, i32 1
  br label %145

145:                                              ; preds = %230, %141
  %146 = phi ptr [ %139, %141 ], [ %232, %230 ]
  %147 = phi i32 [ 0, %141 ], [ %231, %230 ]
  %148 = load ptr, ptr %136, align 4
  %149 = getelementptr %struct.__thermal_bind_params, ptr %148, i32 %147
  %150 = load ptr, ptr %63, align 4
  %151 = load i32, ptr %53, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #13, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %152 = getelementptr %struct.__thermal_bind_params, ptr %148, i32 %147, i32 3
  store i32 0, ptr %152, align 4
  %153 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %146, ptr noundef nonnull @.str.27, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #13
  %154 = icmp sgt i32 %153, -1
  br i1 %154, label %155, label %157

155:                                              ; preds = %145
  %156 = load i32, ptr %4, align 4
  store i32 %156, ptr %152, align 4
  br label %157

157:                                              ; preds = %155, %145
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #13, !annotation !8
  %158 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %146, ptr noundef nonnull @.str.28, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #13
  %159 = icmp ne i32 %158, 0
  %160 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #13
  %161 = icmp eq ptr %160, null
  %162 = select i1 %159, i1 true, i1 %161
  br i1 %162, label %165, label %163

163:                                              ; preds = %157
  %164 = icmp sgt i32 %151, 0
  br i1 %164, label %167, label %177

165:                                              ; preds = %157
  %166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #13
  br label %227

167:                                              ; preds = %174, %163
  %168 = phi i32 [ %175, %174 ], [ 0, %163 ]
  %169 = getelementptr %struct.thermal_trip, ptr %150, i32 %168
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %160, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = getelementptr %struct.__thermal_bind_params, ptr %148, i32 %147, i32 2
  store i32 %168, ptr %173, align 4
  br label %177

174:                                              ; preds = %167
  %175 = add nuw nsw i32 %168, 1
  %176 = icmp eq i32 %175, %151
  br i1 %176, label %223, label %167

177:                                              ; preds = %172, %163
  %178 = phi i32 [ %168, %172 ], [ 0, %163 ]
  %179 = icmp eq i32 %178, %151
  br i1 %179, label %223, label %180

180:                                              ; preds = %177
  %181 = call i32 @of_count_phandle_with_args(ptr noundef nonnull %146, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #13
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #14
  br label %223

185:                                              ; preds = %180
  %186 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %181, i32 12) #13
  %187 = extractvalue { i32, i1 } %186, 1
  br i1 %187, label %223, label %188, !prof !10

188:                                              ; preds = %185
  %189 = extractvalue { i32, i1 } %186, 0
  %190 = call noalias align 64 ptr @__kmalloc(i32 noundef %189, i32 noundef 3520) #17
  %191 = icmp eq ptr %190, null
  br i1 %191, label %223, label %192

192:                                              ; preds = %211, %188
  %193 = phi i32 [ %212, %211 ], [ 0, %188 ]
  %194 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %146, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef -1, i32 noundef %193, ptr noundef nonnull %3) #13
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #14
  %198 = icmp eq i32 %193, 0
  br i1 %198, label %222, label %216

199:                                              ; preds = %192
  %200 = load ptr, ptr %3, align 4
  %201 = getelementptr %struct.__thermal_cooling_bind_param, ptr %190, i32 %193
  store ptr %200, ptr %201, align 4
  %202 = load i32, ptr %142, align 4
  %203 = icmp sgt i32 %202, 1
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load i32, ptr %143, align 4
  %206 = getelementptr %struct.__thermal_cooling_bind_param, ptr %190, i32 %193, i32 1
  store i32 %205, ptr %206, align 4
  %207 = load i32, ptr %144, align 4
  %208 = getelementptr %struct.__thermal_cooling_bind_param, ptr %190, i32 %193, i32 2
  store i32 %207, ptr %208, align 4
  br label %211

209:                                              ; preds = %199
  %210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  br label %211

211:                                              ; preds = %209, %204
  %212 = add nuw nsw i32 %193, 1
  %213 = icmp eq i32 %212, %181
  br i1 %213, label %214, label %192

214:                                              ; preds = %211
  store ptr %190, ptr %149, align 4
  %215 = getelementptr %struct.__thermal_bind_params, ptr %148, i32 %147, i32 1
  store i32 %181, ptr %215, align 4
  br label %225

216:                                              ; preds = %216, %196
  %217 = phi i32 [ %218, %216 ], [ %193, %196 ]
  %218 = add nsw i32 %217, -1
  %219 = getelementptr %struct.__thermal_cooling_bind_param, ptr %190, i32 %218
  %220 = load ptr, ptr %219, align 4
  call void @of_node_put(ptr noundef %220) #13
  %221 = icmp sgt i32 %217, 1
  br i1 %221, label %216, label %222

222:                                              ; preds = %216, %196
  call void @kfree(ptr noundef nonnull %190) #13
  br label %225

223:                                              ; preds = %188, %185, %183, %177, %174
  %224 = phi i32 [ -2, %183 ], [ -19, %174 ], [ -12, %185 ], [ -12, %188 ], [ -19, %177 ]
  call void @of_node_put(ptr noundef nonnull %160) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #13
  br label %227

225:                                              ; preds = %222, %214
  call void @of_node_put(ptr noundef nonnull %160) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #13
  %226 = icmp eq i32 %194, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %225, %223, %165
  %228 = phi i32 [ -19, %165 ], [ %224, %223 ], [ %194, %225 ]
  %229 = icmp sgt i32 %147, -1
  br i1 %229, label %239, label %258

230:                                              ; preds = %225
  %231 = add i32 %147, 1
  %232 = call ptr @of_get_next_child(ptr noundef nonnull %112, ptr noundef nonnull %146) #13
  %233 = icmp eq ptr %232, null
  br i1 %233, label %237, label %145

234:                                              ; preds = %117, %44
  %235 = phi ptr [ %118, %117 ], [ %45, %44 ]
  %236 = phi ptr [ %112, %117 ], [ %39, %44 ]
  store i32 0, ptr %235, align 8
  br label %237

237:                                              ; preds = %234, %230, %138, %125, %111, %52, %27
  %238 = phi ptr [ %39, %52 ], [ %112, %125 ], [ null, %111 ], [ null, %27 ], [ %112, %138 ], [ %236, %234 ], [ %112, %230 ]
  call void @of_node_put(ptr noundef %238) #13
  br label %279

239:                                              ; preds = %254, %227
  %240 = phi i32 [ %256, %254 ], [ %147, %227 ]
  %241 = load ptr, ptr %136, align 4
  %242 = getelementptr %struct.__thermal_bind_params, ptr %241, i32 %240
  %243 = getelementptr %struct.__thermal_bind_params, ptr %241, i32 %240, i32 1
  %244 = load i32, ptr %243, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %254, label %246

246:                                              ; preds = %246, %239
  %247 = phi i32 [ %251, %246 ], [ 0, %239 ]
  %248 = load ptr, ptr %242, align 4
  %249 = getelementptr %struct.__thermal_cooling_bind_param, ptr %248, i32 %247
  %250 = load ptr, ptr %249, align 4
  call void @of_node_put(ptr noundef %250) #13
  %251 = add nuw i32 %247, 1
  %252 = load i32, ptr %243, align 4
  %253 = icmp ult i32 %251, %252
  br i1 %253, label %246, label %254

254:                                              ; preds = %246, %239
  %255 = load ptr, ptr %242, align 4
  call void @kfree(ptr noundef %255) #13
  %256 = add nsw i32 %240, -1
  %257 = icmp sgt i32 %240, 0
  br i1 %257, label %239, label %258

258:                                              ; preds = %254, %227
  %259 = load ptr, ptr %136, align 4
  call void @kfree(ptr noundef %259) #13
  br label %260

260:                                              ; preds = %258, %133, %131, %101
  %261 = phi i32 [ %228, %258 ], [ -12, %133 ], [ %103, %101 ], [ -12, %131 ]
  %262 = phi ptr [ %146, %258 ], [ null, %133 ], [ %69, %101 ], [ null, %131 ]
  %263 = phi ptr [ %112, %258 ], [ %112, %133 ], [ %39, %101 ], [ %112, %131 ]
  %264 = load i32, ptr %53, align 8
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %266, %260
  %267 = phi i32 [ %271, %266 ], [ 0, %260 ]
  %268 = load ptr, ptr %63, align 4
  %269 = getelementptr %struct.thermal_trip, ptr %268, i32 %267
  %270 = load ptr, ptr %269, align 4
  call void @of_node_put(ptr noundef %270) #13
  %271 = add nuw nsw i32 %267, 1
  %272 = icmp slt i32 %271, %264
  br i1 %272, label %266, label %273

273:                                              ; preds = %266, %260
  %274 = load ptr, ptr %63, align 4
  call void @kfree(ptr noundef %274) #13
  call void @of_node_put(ptr noundef %262) #13
  br label %275

275:                                              ; preds = %273, %60, %58, %25, %19
  %276 = phi i32 [ %17, %19 ], [ %23, %25 ], [ %261, %273 ], [ -12, %60 ], [ -12, %58 ]
  %277 = phi ptr [ null, %19 ], [ null, %25 ], [ %263, %273 ], [ %39, %60 ], [ %39, %58 ]
  call void @kfree(ptr noundef nonnull %14) #13
  call void @of_node_put(ptr noundef %277) #13
  %278 = inttoptr i32 %276 to ptr
  br label %279

279:                                              ; preds = %275, %237, %12, %10
  %280 = phi ptr [ %278, %275 ], [ %14, %237 ], [ inttoptr (i32 -22 to ptr), %10 ], [ inttoptr (i32 -12 to ptr), %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  ret ptr %280
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_device_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @of_thermal_free_zone(ptr noundef %0) unnamed_addr #6 section ".init.text" {
  %2 = getelementptr inbounds %struct.__thermal_zone, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.__thermal_zone, ptr %0, i32 0, i32 7
  br label %7

7:                                                ; preds = %22, %5
  %8 = phi i32 [ 0, %5 ], [ %24, %22 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr %struct.__thermal_bind_params, ptr %9, i32 %8
  %11 = getelementptr %struct.__thermal_bind_params, ptr %9, i32 %8, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %14, %7
  %15 = phi i32 [ %19, %14 ], [ 0, %7 ]
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr %struct.__thermal_cooling_bind_param, ptr %16, i32 %15
  %18 = load ptr, ptr %17, align 4
  tail call void @of_node_put(ptr noundef %18) #13
  %19 = add nuw i32 %15, 1
  %20 = load i32, ptr %11, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %14, label %22

22:                                               ; preds = %14, %7
  %23 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %23) #13
  %24 = add nuw nsw i32 %8, 1
  %25 = load i32, ptr %2, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %7, label %27

27:                                               ; preds = %22, %1
  %28 = getelementptr inbounds %struct.__thermal_zone, ptr %0, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %29) #13
  %30 = getelementptr inbounds %struct.__thermal_zone, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.__thermal_zone, ptr %0, i32 0, i32 5
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i32 [ 0, %33 ], [ %40, %35 ]
  %37 = load ptr, ptr %34, align 4
  %38 = getelementptr %struct.thermal_trip, ptr %37, i32 %36
  %39 = load ptr, ptr %38, align 4
  tail call void @of_node_put(ptr noundef %39) #13
  %40 = add nuw nsw i32 %36, 1
  %41 = load i32, ptr %30, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %35, label %43

43:                                               ; preds = %35, %27
  %44 = getelementptr inbounds %struct.__thermal_zone, ptr %0, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  tail call void @kfree(ptr noundef %45) #13
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @of_thermal_destroy_zones() unnamed_addr #6 section ".init.text" {
  %1 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.3) #13
  %2 = icmp eq ptr %1, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %18, %3
  %7 = phi ptr [ %19, %18 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @thermal_zone_get_zone_by_name(ptr noundef %8) #13
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  tail call void @thermal_zone_device_unregister(ptr noundef %9) #13
  %12 = getelementptr inbounds %struct.thermal_zone_device, ptr %9, i32 0, i32 21
  %13 = load ptr, ptr %12, align 8
  tail call void @kfree(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.thermal_zone_device, ptr %9, i32 0, i32 20
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #13
  %16 = getelementptr inbounds %struct.thermal_zone_device, ptr %9, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  tail call fastcc void @of_thermal_free_zone(ptr noundef %17) #15
  br label %18

18:                                               ; preds = %11, %6
  %19 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %7) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %6

21:                                               ; preds = %18, %3
  tail call void @of_node_put(ptr noundef nonnull %1) #13
  br label %22

22:                                               ; preds = %21, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_get_zone_by_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_thermal_get_temp(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.__thermal_zone, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__thermal_zone, ptr %4, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %9(ptr noundef %13, ptr noundef %1) #13
  br label %15

15:                                               ; preds = %11, %8, %2
  %16 = phi i32 [ %14, %11 ], [ -22, %8 ], [ -22, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_thermal_get_trend(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.thermal_zone_of_device_ops, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %11(ptr noundef %15, i32 noundef %1, ptr noundef %2) #13
  br label %17

17:                                               ; preds = %13, %9, %3
  %18 = phi i32 [ %16, %13 ], [ -22, %9 ], [ -22, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_thermal_set_trips(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.thermal_zone_of_device_ops, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %11(ptr noundef %15, i32 noundef %1, i32 noundef %2) #13
  br label %17

17:                                               ; preds = %13, %9, %3
  %18 = phi i32 [ %16, %13 ], [ -22, %9 ], [ -22, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_thermal_set_emul_temp(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.__thermal_zone, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.thermal_zone_of_device_ops, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.__thermal_zone, ptr %4, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %10(ptr noundef %14, i32 noundef %1) #13
  br label %16

16:                                               ; preds = %12, %8, %2
  %17 = phi i32 [ %15, %12 ], [ -22, %8 ], [ -22, %2 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_thermal_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %55, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.__thermal_zone, ptr %4, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.__thermal_zone, ptr %4, i32 0, i32 7
  %14 = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 3
  br label %15

15:                                               ; preds = %51, %12
  %16 = phi i32 [ %10, %12 ], [ %52, %51 ]
  %17 = phi i32 [ 0, %12 ], [ %53, %51 ]
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr %struct.__thermal_bind_params, ptr %18, i32 %17
  %20 = getelementptr %struct.__thermal_bind_params, ptr %18, i32 %17, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %15
  %24 = getelementptr %struct.__thermal_bind_params, ptr %18, i32 %17, i32 2
  %25 = getelementptr %struct.__thermal_bind_params, ptr %18, i32 %17, i32 3
  br label %26

26:                                               ; preds = %45, %23
  %27 = phi i32 [ %21, %23 ], [ %46, %45 ]
  %28 = phi i32 [ 0, %23 ], [ %47, %45 ]
  %29 = load ptr, ptr %19, align 4
  %30 = getelementptr %struct.__thermal_cooling_bind_param, ptr %29, i32 %28
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %14, align 8
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load i32, ptr %24, align 4
  %36 = getelementptr %struct.__thermal_cooling_bind_param, ptr %29, i32 %28, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.__thermal_cooling_bind_param, ptr %29, i32 %28, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %25, align 4
  %41 = tail call i32 @thermal_zone_bind_cooling_device(ptr noundef %0, i32 noundef %35, ptr noundef %1, i32 noundef %37, i32 noundef %39, i32 noundef %40) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %34
  %44 = load i32, ptr %20, align 4
  br label %45

45:                                               ; preds = %43, %26
  %46 = phi i32 [ %44, %43 ], [ %27, %26 ]
  %47 = add nuw i32 %28, 1
  %48 = icmp ult i32 %47, %46
  br i1 %48, label %26, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %9, align 4
  br label %51

51:                                               ; preds = %49, %15
  %52 = phi i32 [ %50, %49 ], [ %16, %15 ]
  %53 = add nuw nsw i32 %17, 1
  %54 = icmp slt i32 %53, %52
  br i1 %54, label %15, label %55

55:                                               ; preds = %51, %34, %8, %2
  %56 = phi i32 [ -19, %2 ], [ 0, %8 ], [ %41, %34 ], [ 0, %51 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_thermal_unbind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %49, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.__thermal_zone, ptr %4, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.__thermal_zone, ptr %4, i32 0, i32 7
  %14 = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 3
  br label %15

15:                                               ; preds = %45, %12
  %16 = phi i32 [ %10, %12 ], [ %46, %45 ]
  %17 = phi i32 [ 0, %12 ], [ %47, %45 ]
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr %struct.__thermal_bind_params, ptr %18, i32 %17
  %20 = getelementptr %struct.__thermal_bind_params, ptr %18, i32 %17, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %15
  %24 = getelementptr %struct.__thermal_bind_params, ptr %18, i32 %17, i32 2
  br label %25

25:                                               ; preds = %39, %23
  %26 = phi i32 [ %21, %23 ], [ %40, %39 ]
  %27 = phi i32 [ 0, %23 ], [ %41, %39 ]
  %28 = load ptr, ptr %19, align 4
  %29 = getelementptr %struct.__thermal_cooling_bind_param, ptr %28, i32 %27
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %14, align 8
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i32, ptr %24, align 4
  %35 = tail call i32 @thermal_zone_unbind_cooling_device(ptr noundef %0, i32 noundef %34, ptr noundef %1) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i32, ptr %20, align 4
  br label %39

39:                                               ; preds = %37, %25
  %40 = phi i32 [ %38, %37 ], [ %26, %25 ]
  %41 = add nuw i32 %27, 1
  %42 = icmp ult i32 %41, %40
  br i1 %42, label %25, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %9, align 4
  br label %45

45:                                               ; preds = %43, %15
  %46 = phi i32 [ %44, %43 ], [ %16, %15 ]
  %47 = add nuw nsw i32 %17, 1
  %48 = icmp slt i32 %47, %46
  br i1 %48, label %15, label %49

49:                                               ; preds = %45, %33, %8, %2
  %50 = phi i32 [ -19, %2 ], [ 0, %8 ], [ %35, %33 ], [ 0, %45 ]
  ret i32 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @of_thermal_get_trip_type(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp sle i32 %7, %1
  %9 = icmp slt i32 %1, 0
  %10 = or i1 %9, %8
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.thermal_trip, ptr %13, i32 %1, i32 3
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %2, align 4
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i32 [ 0, %11 ], [ -33, %3 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @of_thermal_get_trip_temp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp sle i32 %7, %1
  %9 = icmp slt i32 %1, 0
  %10 = or i1 %9, %8
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.thermal_trip, ptr %13, i32 %1, i32 1
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %2, align 4
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i32 [ 0, %11 ], [ -33, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_thermal_set_trip_temp(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp sle i32 %7, %1
  %9 = icmp slt i32 %1, 0
  %10 = or i1 %9, %8
  br i1 %10, label %28, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.thermal_zone_of_device_ops, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %17(ptr noundef %21, i32 noundef %1, i32 noundef %2) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19, %15, %11
  %25 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr %struct.thermal_trip, ptr %26, i32 %1, i32 1
  store i32 %2, ptr %27, align 4
  br label %28

28:                                               ; preds = %24, %19, %3
  %29 = phi i32 [ 0, %24 ], [ %22, %19 ], [ -33, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @of_thermal_get_trip_hyst(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp sle i32 %7, %1
  %9 = icmp slt i32 %1, 0
  %10 = or i1 %9, %8
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.thermal_trip, ptr %13, i32 %1, i32 2
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %2, align 4
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i32 [ 0, %11 ], [ -33, %3 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @of_thermal_set_trip_hyst(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #11 {
  %4 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp sle i32 %7, %1
  %9 = icmp slt i32 %1, 0
  %10 = or i1 %9, %8
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.__thermal_zone, ptr %5, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.thermal_trip, ptr %13, i32 %1, i32 2
  store i32 %2, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i32 [ 0, %11 ], [ -33, %3 ]
  ret i32 %16
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_thermal_get_crit_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.__thermal_zone, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.__thermal_zone, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %19, %8
  %12 = phi i32 [ 0, %8 ], [ %20, %19 ]
  %13 = getelementptr %struct.thermal_trip, ptr %10, i32 %12, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = getelementptr %struct.thermal_trip, ptr %10, i32 %12, i32 1
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %1, align 4
  br label %22

19:                                               ; preds = %11
  %20 = add nuw nsw i32 %12, 1
  %21 = icmp eq i32 %20, %6
  br i1 %21, label %22, label %11

22:                                               ; preds = %19, %16, %2
  %23 = phi i32 [ 0, %16 ], [ -22, %2 ], [ -22, %19 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_bind_cooling_device(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_unbind_cooling_device(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_unregister(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { cold }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
