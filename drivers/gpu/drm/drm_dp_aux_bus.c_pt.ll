; ModuleID = '/llk/IR/drivers/gpu/drm/drm_dp_aux_bus.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_dp_aux_bus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dp_aux_depopulate_ep_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dp_aux_depopulate_ep_devices\22\09\09\09\09\09"
module asm "__kstrtabns_of_dp_aux_depopulate_ep_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_dp_aux_populate_ep_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_dp_aux_populate_ep_devices\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_dp_aux_populate_ep_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___dp_aux_dp_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__dp_aux_dp_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns___dp_aux_dp_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dp_aux_dp_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22dp_aux_dp_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_dp_aux_dp_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.dp_aux_ep_device = type { %struct.device, ptr }
%struct.dp_aux_ep_driver = type { ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_of_dp_aux_depopulate_ep_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dp_aux_depopulate_ep_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dp_aux_depopulate_ep_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dp_aux_depopulate_ep_devices to i32), ptr @__kstrtab_of_dp_aux_depopulate_ep_devices, ptr @__kstrtabns_of_dp_aux_depopulate_ep_devices }, section "___ksymtab_gpl+of_dp_aux_depopulate_ep_devices", align 4
@of_dp_aux_populate_ep_devices.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [33 x i8] c"drivers/gpu/drm/drm_dp_aux_bus.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"aux-bus\00", align 1
@dp_aux_bus_type = internal global %struct.bus_type { ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dp_aux_ep_match, ptr null, ptr @dp_aux_ep_probe, ptr null, ptr @dp_aux_ep_remove, ptr @dp_aux_ep_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@dp_aux_device_type_type = internal global %struct.device_type { ptr null, ptr @dp_aux_ep_dev_groups, ptr @of_device_uevent_modalias, ptr null, ptr @dp_aux_ep_dev_release, ptr null }, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"aux-%s\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to create AUX EP for %pOF: %d\0A\00", align 1
@__kstrtab_devm_of_dp_aux_populate_ep_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_dp_aux_populate_ep_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_dp_aux_populate_ep_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_dp_aux_populate_ep_devices to i32), ptr @__kstrtab_devm_of_dp_aux_populate_ep_devices, ptr @__kstrtabns_devm_of_dp_aux_populate_ep_devices }, section "___ksymtab_gpl+devm_of_dp_aux_populate_ep_devices", align 4
@__kstrtab___dp_aux_dp_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___dp_aux_dp_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab___dp_aux_dp_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__dp_aux_dp_driver_register to i32), ptr @__kstrtab___dp_aux_dp_driver_register, ptr @__kstrtabns___dp_aux_dp_driver_register }, section "___ksymtab_gpl+__dp_aux_dp_driver_register", align 4
@__kstrtab_dp_aux_dp_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_dp_aux_dp_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_dp_aux_dp_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dp_aux_dp_driver_unregister to i32), ptr @__kstrtab_dp_aux_dp_driver_unregister, ptr @__kstrtabns_dp_aux_dp_driver_unregister }, section "___ksymtab_gpl+dp_aux_dp_driver_unregister", align 4
@__initcall__kmod_drm_dp_aux_bus__261_318_dp_aux_bus_init4 = internal global ptr @dp_aux_bus_init, section ".initcall4.init", align 4
@__exitcall_dp_aux_bus_exit = internal global ptr @dp_aux_bus_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author262 = internal constant [63 x i8] c"drm_dp_aux_bus.author=Douglas Anderson <dianders@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description263 = internal constant [51 x i8] c"drm_dp_aux_bus.description=DRM DisplayPort AUX bus\00", section ".modinfo", align 1
@__UNIQUE_ID_file264 = internal constant [51 x i8] c"drm_dp_aux_bus.file=drivers/gpu/drm/drm_dp_aux_bus\00", section ".modinfo", align 1
@__UNIQUE_ID_license265 = internal constant [30 x i8] c"drm_dp_aux_bus.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"dp-aux\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to attach to PM Domain\0A\00", align 1
@dp_aux_ep_dev_groups = internal global [2 x ptr] [ptr @dp_aux_ep_dev_group, ptr null], align 4
@dp_aux_ep_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dp_aux_ep_dev_attrs, ptr null }, align 4
@dp_aux_ep_dev_attrs = internal global [2 x ptr] [ptr @dev_attr_modalias, ptr null], align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @modalias_show, ptr null }, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_file264, ptr @__UNIQUE_ID_license265, ptr @__exitcall_dp_aux_bus_exit, ptr @__initcall__kmod_drm_dp_aux_bus__261_318_dp_aux_bus_init4, ptr @__ksymtab___dp_aux_dp_driver_register, ptr @__ksymtab_devm_of_dp_aux_populate_ep_devices, ptr @__ksymtab_dp_aux_dp_driver_unregister, ptr @__ksymtab_of_dp_aux_depopulate_ep_devices, ptr @dp_aux_bus_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_dp_aux_depopulate_ep_devices(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @device_for_each_child_reverse(ptr noundef %3, ptr noundef null, ptr noundef nonnull @of_dp_aux_ep_destroy) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child_reverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_dp_aux_ep_destroy(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @dp_aux_bus_type
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 10
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %9) #5
  tail call void @of_node_put(ptr noundef %4) #5
  tail call void @device_unregister(ptr noundef %0) #5
  br label %14

14:                                               ; preds = %13, %8, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_dp_aux_populate_ep_devices(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 1, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = load i1, ptr @of_dp_aux_populate_ep_devices.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  store i1 true, ptr @of_dp_aux_populate_ep_devices.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #5
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %55, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %13, ptr noundef nonnull @.str.1) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %55, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %16, ptr noundef null) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %54, label %21

21:                                               ; preds = %51, %18
  %22 = phi ptr [ %52, %51 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.device_node, ptr %22, i32 0, i32 10
  %24 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %23) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 480) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.dp_aux_ep_device, ptr %28, i32 0, i32 1
  store ptr %0, ptr %31, align 8
  %32 = load ptr, ptr %10, align 8
  %33 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 5
  store ptr @dp_aux_bus_type, ptr %34, align 4
  %35 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 4
  store ptr @dp_aux_device_type_type, ptr %35, align 8
  %36 = tail call ptr @of_node_get(ptr noundef nonnull %22) #5
  %37 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 25
  store ptr %36, ptr %37, align 8
  %38 = load ptr, ptr %10, align 8
  %39 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load ptr, ptr %38, align 4
  br label %44

44:                                               ; preds = %42, %30
  %45 = phi ptr [ %43, %42 ], [ %40, %30 ]
  %46 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %28, ptr noundef nonnull @.str.2, ptr noundef %45) #5
  %47 = tail call i32 @device_register(ptr noundef nonnull %28) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.3, ptr noundef nonnull %22, i32 noundef %47) #7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %23) #5
  tail call void @of_node_put(ptr noundef nonnull %22) #5
  tail call void @put_device(ptr noundef nonnull %28) #5
  br label %51

51:                                               ; preds = %49, %44, %26, %21
  %52 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %16, ptr noundef nonnull %22) #5
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %21

54:                                               ; preds = %51, %18
  tail call void @of_node_put(ptr noundef nonnull %16) #5
  br label %55

55:                                               ; preds = %54, %15, %9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_of_dp_aux_populate_ep_devices(ptr noundef %0) #0 {
  %2 = tail call i32 @of_dp_aux_populate_ep_devices(ptr noundef %0)
  %3 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @devm_add_action(ptr noundef %4, ptr noundef nonnull @of_dp_aux_depopulate_ep_devices_void, ptr noundef %0) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call i32 @device_for_each_child_reverse(ptr noundef %8, ptr noundef null, ptr noundef nonnull @of_dp_aux_ep_destroy) #5
  br label %10

10:                                               ; preds = %7, %1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @of_dp_aux_depopulate_ep_devices_void(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @device_for_each_child_reverse(ptr noundef %3, ptr noundef null, ptr noundef nonnull @of_dp_aux_ep_destroy) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__dp_aux_dp_driver_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dp_aux_ep_driver, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.dp_aux_ep_driver, ptr %0, i32 0, i32 3, i32 2
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dp_aux_ep_driver, ptr %0, i32 0, i32 3, i32 1
  store ptr @dp_aux_bus_type, ptr %5, align 4
  %6 = tail call i32 @driver_register(ptr noundef %3) #5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_aux_dp_driver_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dp_aux_ep_driver, ptr %0, i32 0, i32 3
  tail call void @driver_unregister(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dp_aux_bus_exit() #3 section ".exit.text" {
  tail call void @bus_unregister(ptr noundef nonnull @dp_aux_bus_type) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dp_aux_bus_init() #3 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @dp_aux_bus_type) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_aux_ep_match(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @of_match_device(ptr noundef %4, ptr noundef %0) #5
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_aux_ep_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @dev_pm_domain_attach(ptr noundef %0, i1 noundef zeroext true) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef %4, ptr noundef nonnull @.str.5) #5
  br label %14

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %3, i32 -12
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext true) #5
  br label %14

14:                                               ; preds = %13, %8, %6
  %15 = phi i32 [ %7, %6 ], [ %11, %13 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dp_aux_ep_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #5
  br label %8

8:                                                ; preds = %7, %1
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext true) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dp_aux_ep_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void %7(ptr noundef %0) #5
  br label %10

10:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_domain_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_uevent_modalias(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dp_aux_ep_dev_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @of_device_modalias(ptr noundef %0, ptr noundef %2, i32 noundef 4096) #5
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_modalias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
