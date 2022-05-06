; ModuleID = '/llk/IR/drivers/iio/common/cros_ec_sensors/cros_ec_sensors.c_pt.bc'
source_filename = "../drivers/iio/common/cros_ec_sensors/cros_ec_sensors.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device_id = type { [20 x i8], i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.cros_ec_sensors_core_state = type { ptr, %struct.mutex, ptr, %struct.ec_params_motion_sense, ptr, i32, i32, i8, i32, [3 x %struct.calib_data], [3 x i8], i8, [16 x i8], ptr, i32, [6 x i32] }
%struct.ec_params_motion_sense = type <{ i8, %union.anon.7 }>
%union.anon.7 = type { %struct.anon.11, [4 x i8] }
%struct.anon.11 = type { i8, i8, i16, i32 }
%struct.calib_data = type { i16, i16 }
%struct.cros_ec_sensors_state = type { %struct.cros_ec_sensors_core_state, [4 x %struct.iio_chan_spec] }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.5 = type { i8, i8, i8, i8, i8, i32 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.26 = type { i16, [3 x i16] }
%struct.anon.27 = type { i16, [3 x i16] }
%struct.anon.12 = type <{ i8, i16, i16, [3 x i16] }>
%struct.anon.13 = type <{ i8, i16, i16, [3 x i16] }>

@cros_ec_sensors_ids = internal constant [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"cros-ec-accel\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"cros-ec-gyro\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"cros-ec-mag\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_description170 = internal constant [46 x i8] c"description=ChromeOS EC 3-axis sensors driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@cros_ec_sensors_platform_driver = internal global %struct.platform_driver { ptr @cros_ec_sensors_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_sensors_pm_ops, ptr null, ptr null }, ptr @cros_ec_sensors_ids, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"cros-ec-sensors\00", align 1
@cros_ec_sensors_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@ec_sensors_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @cros_ec_sensors_read, ptr null, ptr @cros_ec_sensors_core_read_avail, ptr @cros_ec_sensors_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@cros_ec_sensors_ext_info = external dso_local constant [0 x %struct.iio_chan_spec_ext_info], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown motion sensor\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_description170, ptr @__UNIQUE_ID_license171], section "llvm.metadata"

@__mod_platform__cros_ec_sensors_ids_device_table = dso_local alias [4 x %struct.platform_device_id], ptr @cros_ec_sensors_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_sensors_platform_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_sensors_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_sensors_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @devm_iio_device_alloc(ptr noundef %2, i32 noundef 480) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %79, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @cros_ec_sensors_core_init(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true, ptr noundef nonnull @cros_ec_sensors_capture, ptr noundef nonnull @cros_ec_sensors_push_data) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %79

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 17
  store ptr @ec_sensors_info, ptr %9, align 8
  %10 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 0, i32 6
  store i32 49, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 0, i32 12
  store i32 4100, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 0, i32 13
  store i32 4096, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 0, i32 5
  %17 = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 0, i32 5, i32 1
  store i8 16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 0, i32 5, i32 2
  store i8 16, ptr %18, align 2
  %19 = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 0, i32 4
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 0, i32 16
  store ptr @cros_ec_sensors_ext_info, ptr %20, align 4
  %21 = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 0, i32 19
  %22 = load i8, ptr %21, align 4
  %23 = or i8 %22, 1
  store i8 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 0, i32 2
  store i32 1, ptr %24, align 4
  store i8 115, ptr %16, align 4
  %25 = load i32, ptr %12, align 8
  %26 = icmp ult i32 %25, 3
  br i1 %26, label %28, label %27

27:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %79

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1
  %30 = add i32 %25, 3
  store i32 %30, ptr %29, align 4
  %31 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 1
  %32 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 1, i32 6
  store i32 49, ptr %32, align 4
  %33 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 1, i32 12
  store i32 4100, ptr %33, align 4
  %34 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 1, i32 13
  store i32 4096, ptr %34, align 4
  %35 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 1, i32 5
  %36 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 1, i32 5, i32 1
  store i8 16, ptr %36, align 1
  %37 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 1, i32 5, i32 2
  store i8 16, ptr %37, align 2
  %38 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 1, i32 4
  store i32 1, ptr %38, align 4
  %39 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 1, i32 16
  store ptr @cros_ec_sensors_ext_info, ptr %39, align 4
  %40 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 1, i32 19
  %41 = load i8, ptr %40, align 4
  %42 = or i8 %41, 1
  store i8 %42, ptr %40, align 4
  %43 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 1, i32 2
  store i32 2, ptr %43, align 4
  store i8 115, ptr %35, align 4
  %44 = add i32 %25, 3
  store i32 %44, ptr %31, align 4
  %45 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 2
  %46 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 2, i32 6
  store i32 49, ptr %46, align 4
  %47 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 2, i32 12
  store i32 4100, ptr %47, align 4
  %48 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 2, i32 13
  store i32 4096, ptr %48, align 4
  %49 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 2, i32 5
  %50 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 2, i32 5, i32 1
  store i8 16, ptr %50, align 1
  %51 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 2, i32 5, i32 2
  store i8 16, ptr %51, align 2
  %52 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 2, i32 4
  store i32 2, ptr %52, align 4
  %53 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 2, i32 16
  store ptr @cros_ec_sensors_ext_info, ptr %53, align 4
  %54 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 2, i32 19
  %55 = load i8, ptr %54, align 4
  %56 = or i8 %55, 1
  store i8 %56, ptr %54, align 4
  %57 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 2, i32 2
  store i32 3, ptr %57, align 4
  store i8 115, ptr %49, align 4
  %58 = add i32 %25, 3
  store i32 %58, ptr %45, align 4
  %59 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 3
  store i32 13, ptr %59, align 4
  %60 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 3, i32 1
  store i32 -1, ptr %60, align 4
  %61 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 3, i32 4
  store i32 3, ptr %61, align 4
  %62 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 3, i32 5
  store i8 115, ptr %62, align 4
  %63 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 3, i32 5, i32 1
  store i8 64, ptr %63, align 1
  %64 = getelementptr %struct.cros_ec_sensors_state, ptr %11, i32 0, i32 1, i32 3, i32 5, i32 2
  store i8 64, ptr %64, align 2
  %65 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 13
  store ptr %29, ptr %65, align 8
  %66 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 14
  store i32 4, ptr %66, align 4
  %67 = load ptr, ptr %11, align 8
  %68 = getelementptr inbounds %struct.cros_ec_device, ptr %67, i32 0, i32 4
  %69 = load ptr, ptr %68, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %28
  %72 = load i32, ptr %12, align 8
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %28
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi ptr [ @cros_ec_sensors_read_cmd, %74 ], [ @cros_ec_sensors_read_lpc, %71 ]
  %77 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %11, i32 0, i32 13
  store ptr %76, ptr %77, align 8
  %78 = tail call i32 @__devm_iio_device_register(ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull @__this_module) #5
  br label %79

79:                                               ; preds = %75, %27, %5, %1
  %80 = phi i32 [ -22, %27 ], [ %78, %75 ], [ -12, %1 ], [ %6, %5 ]
  ret i32 %80
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_core_init(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_capture(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_push_data(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_read_lpc(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_read_cmd(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_sensors_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #5
  store i16 0, ptr %8, align 2
  %11 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #5
  switch i32 %4, label %91 [
    i32 0, label %14
    i32 5, label %23
    i32 4, label %43
    i32 2, label %70
  ]

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 13
  %16 = load ptr, ptr %15, align 8
  %17 = shl nuw i32 1, %12
  %18 = call i32 %16(ptr noundef %0, i32 noundef %17, ptr noundef nonnull %8) #5
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %93, label %20

20:                                               ; preds = %14
  %21 = load i16, ptr %8, align 2
  %22 = sext i16 %21 to i32
  store i32 %22, ptr %2, align 4
  br label %93

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 3
  store i8 11, ptr %24, align 4
  %25 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 3, i32 1, i32 0, i32 1
  store i16 0, ptr %25, align 1
  %26 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %10, i16 noundef zeroext 0) #5
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %93, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr %struct.anon.26, ptr %30, i32 0, i32 1, i32 0
  %32 = load i16, ptr %31, align 1
  %33 = getelementptr %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 9, i32 0
  store i16 %32, ptr %33, align 4
  %34 = getelementptr %struct.anon.26, ptr %30, i32 0, i32 1, i32 1
  %35 = load i16, ptr %34, align 1
  %36 = getelementptr %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 9, i32 1
  store i16 %35, ptr %36, align 4
  %37 = getelementptr %struct.anon.26, ptr %30, i32 0, i32 1, i32 2
  %38 = load i16, ptr %37, align 1
  %39 = getelementptr %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 9, i32 2
  store i16 %38, ptr %39, align 4
  %40 = getelementptr %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 9, i32 %12
  %41 = load i16, ptr %40, align 4
  %42 = sext i16 %41 to i32
  store i32 %42, ptr %2, align 4
  br label %93

43:                                               ; preds = %5
  %44 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 3
  store i8 18, ptr %44, align 4
  %45 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 3, i32 1, i32 0, i32 1
  store i16 0, ptr %45, align 1
  %46 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %10, i16 noundef zeroext 0) #5
  switch i32 %46, label %93 [
    i32 -71, label %69
    i32 -95, label %69
    i32 0, label %47
  ]

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr %struct.anon.27, ptr %49, i32 0, i32 1, i32 0
  %51 = load i16, ptr %50, align 1
  %52 = getelementptr %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 9, i32 0, i32 1
  store i16 %51, ptr %52, align 2
  %53 = getelementptr %struct.anon.27, ptr %49, i32 0, i32 1, i32 1
  %54 = load i16, ptr %53, align 1
  %55 = getelementptr %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 9, i32 1, i32 1
  store i16 %54, ptr %55, align 2
  %56 = getelementptr %struct.anon.27, ptr %49, i32 0, i32 1, i32 2
  %57 = load i16, ptr %56, align 1
  %58 = getelementptr %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 9, i32 2, i32 1
  store i16 %57, ptr %58, align 2
  %59 = getelementptr %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 9, i32 %12, i32 1
  %60 = load i16, ptr %59, align 2
  %61 = lshr i16 %60, 15
  %62 = zext i16 %61 to i32
  store i32 %62, ptr %2, align 4
  %63 = load i16, ptr %59, align 2
  %64 = and i16 %63, 32767
  %65 = zext i16 %64 to i64
  %66 = mul nuw nsw i64 %65, 1000000
  %67 = lshr i64 %66, 15
  %68 = trunc i64 %67 to i32
  store i32 %68, ptr %3, align 4
  br label %93

69:                                               ; preds = %43, %43
  store i32 1, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %93

70:                                               ; preds = %5
  %71 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 3
  store i8 4, ptr %71, align 4
  %72 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 3, i32 1, i32 0, i32 3
  store i32 -1, ptr %72, align 1
  %73 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %10, i16 noundef zeroext 0) #5
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  %78 = load i32, ptr %77, align 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %10, i32 0, i32 5
  %81 = load i32, ptr %80, align 8
  switch i32 %81, label %93 [
    i32 0, label %82
    i32 1, label %86
    i32 2, label %90
  ]

82:                                               ; preds = %75
  %83 = mul nsw i64 %79, 980665
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 0, ptr %7, align 4, !annotation !8
  %84 = call i64 @div_s64_rem(i64 noundef %83, i32 noundef 10, ptr noundef nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  %85 = trunc i64 %84 to i32
  store i32 %85, ptr %2, align 4
  store i32 327680000, ptr %3, align 4
  br label %93

86:                                               ; preds = %75
  store i32 0, ptr %2, align 4
  %87 = mul nsw i64 %79, 3141592653
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 0, ptr %6, align 4, !annotation !8
  %88 = call i64 @div_s64_rem(i64 noundef %87, i32 noundef 5898240, ptr noundef nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  %89 = trunc i64 %88 to i32
  store i32 %89, ptr %3, align 4
  br label %93

90:                                               ; preds = %75
  store i32 %78, ptr %2, align 4
  store i32 3276800, ptr %3, align 4
  br label %93

91:                                               ; preds = %5
  %92 = tail call i32 @cros_ec_sensors_core_read(ptr noundef %10, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #5
  br label %93

93:                                               ; preds = %91, %90, %86, %82, %75, %70, %69, %47, %43, %28, %23, %20, %14
  %94 = phi i32 [ %92, %91 ], [ %73, %70 ], [ 10, %90 ], [ 3, %86 ], [ 10, %82 ], [ 2, %69 ], [ 2, %47 ], [ %26, %23 ], [ 1, %28 ], [ %18, %14 ], [ 1, %20 ], [ %46, %43 ], [ -22, %75 ]
  call void @mutex_unlock(ptr noundef %13) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #5
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_core_read_avail(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_sensors_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #5
  switch i32 %4, label %58 [
    i32 5, label %11
    i32 4, label %28
    i32 2, label %45
  ]

11:                                               ; preds = %5
  %12 = trunc i32 %2 to i16
  %13 = getelementptr %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 9, i32 %9
  store i16 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3
  store i8 11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3, i32 1
  %16 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3, i32 1, i32 0, i32 1
  store i16 1, ptr %16, align 1
  %17 = getelementptr %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 9, i32 0
  %18 = load i16, ptr %17, align 4
  %19 = getelementptr %struct.anon.12, ptr %15, i32 0, i32 3, i32 0
  store i16 %18, ptr %19, align 1
  %20 = getelementptr %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 9, i32 1
  %21 = load i16, ptr %20, align 4
  %22 = getelementptr %struct.anon.12, ptr %15, i32 0, i32 3, i32 1
  store i16 %21, ptr %22, align 1
  %23 = getelementptr %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 9, i32 2
  %24 = load i16, ptr %23, align 4
  %25 = getelementptr %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3, i32 1, i32 1, i32 1
  store i16 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.anon.12, ptr %15, i32 0, i32 2
  store i16 -32768, ptr %26, align 1
  %27 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %7, i16 noundef zeroext 0) #5
  br label %60

28:                                               ; preds = %5
  %29 = trunc i32 %2 to i16
  %30 = getelementptr %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 9, i32 %9, i32 1
  store i16 %29, ptr %30, align 2
  %31 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3
  store i8 18, ptr %31, align 4
  %32 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3, i32 1
  %33 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3, i32 1, i32 0, i32 1
  store i16 1, ptr %33, align 1
  %34 = getelementptr %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 9, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = getelementptr %struct.anon.13, ptr %32, i32 0, i32 3, i32 0
  store i16 %35, ptr %36, align 1
  %37 = getelementptr %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 9, i32 1, i32 1
  %38 = load i16, ptr %37, align 2
  %39 = getelementptr %struct.anon.13, ptr %32, i32 0, i32 3, i32 1
  store i16 %38, ptr %39, align 1
  %40 = getelementptr %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 9, i32 2, i32 1
  %41 = load i16, ptr %40, align 2
  %42 = getelementptr %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3, i32 1, i32 1, i32 1
  store i16 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.anon.13, ptr %32, i32 0, i32 2
  store i16 -32768, ptr %43, align 1
  %44 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %7, i16 noundef zeroext 0) #5
  br label %60

45:                                               ; preds = %5
  %46 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 5
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3
  store i8 4, ptr %50, align 4
  %51 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3, i32 1, i32 0, i32 3
  store i32 %2, ptr %51, align 1
  %52 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3, i32 1, i32 0, i32 1
  store i8 1, ptr %52, align 1
  %53 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %7, i16 noundef zeroext 0) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 7
  store i8 1, ptr %56, align 8
  %57 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 8
  store i32 %2, ptr %57, align 4
  br label %60

58:                                               ; preds = %5
  %59 = tail call i32 @cros_ec_sensors_core_write(ptr noundef %7, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #5
  br label %60

60:                                               ; preds = %58, %55, %49, %45, %28, %11
  %61 = phi i32 [ %59, %58 ], [ 0, %55 ], [ %53, %49 ], [ %44, %28 ], [ %27, %11 ], [ -22, %45 ]
  tail call void @mutex_unlock(ptr noundef %10) #5
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_motion_send_host_cmd(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_core_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_core_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{!"auto-init"}
