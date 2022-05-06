; ModuleID = '/llk/IR/drivers/iio/light/cros_ec_light_prox.c_pt.bc'
source_filename = "../drivers/iio/light/cros_ec_light_prox.c"
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
%struct.anon.23 = type { i8, i8, i8 }
%struct.cros_ec_light_prox_state = type { %struct.cros_ec_sensors_core_state, [2 x %struct.iio_chan_spec] }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.5 = type { i8, i8, i8, i8, i8, i32 }
%struct.anon.26 = type { i16, [3 x i16] }
%struct.anon.12 = type <{ i8, i16, i16, [3 x i16] }>

@cros_ec_light_prox_ids = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"cros-ec-prox\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"cros-ec-light\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_description170 = internal constant [55 x i8] c"description=ChromeOS EC light/proximity sensors driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@cros_ec_light_prox_platform_driver = internal global %struct.platform_driver { ptr @cros_ec_light_prox_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_sensors_pm_ops, ptr null, ptr null }, ptr @cros_ec_light_prox_ids, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [19 x i8] c"cros-ec-light-prox\00", align 1
@cros_ec_sensors_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@cros_ec_light_prox_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @cros_ec_light_prox_read, ptr null, ptr @cros_ec_sensors_core_read_avail, ptr @cros_ec_light_prox_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@cros_ec_sensors_ext_info = external dso_local constant [0 x %struct.iio_chan_spec_ext_info], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown motion sensor\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_description170, ptr @__UNIQUE_ID_license171], section "llvm.metadata"

@__mod_platform__cros_ec_light_prox_ids_device_table = dso_local alias [3 x %struct.platform_device_id], ptr @cros_ec_light_prox_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_light_prox_platform_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_light_prox_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_light_prox_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @devm_iio_device_alloc(ptr noundef %2, i32 noundef 304) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @cros_ec_sensors_core_init(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true, ptr noundef nonnull @cros_ec_sensors_capture, ptr noundef nonnull @cros_ec_sensors_push_data) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 17
  store ptr @cros_ec_light_prox_info, ptr %9, align 8
  %10 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %11, i32 0, i32 5
  store i32 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.anon.23, ptr %13, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %11, i32 0, i32 6
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1
  %22 = getelementptr inbounds %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1, i32 0, i32 12
  store i32 4096, ptr %22, align 4
  %23 = getelementptr inbounds %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1, i32 0, i32 13
  store i32 4096, ptr %23, align 4
  %24 = getelementptr inbounds %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1, i32 0, i32 5
  %25 = getelementptr inbounds %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1, i32 0, i32 5, i32 1
  store i8 16, ptr %25, align 1
  %26 = getelementptr inbounds %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1, i32 0, i32 5, i32 2
  store i8 16, ptr %26, align 2
  %27 = getelementptr inbounds %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1, i32 0, i32 5, i32 3
  store i8 0, ptr %27, align 1
  %28 = getelementptr inbounds %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1, i32 0, i32 4
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1, i32 0, i32 16
  store ptr @cros_ec_sensors_ext_info, ptr %29, align 4
  store i8 117, ptr %24, align 4
  switch i8 %14, label %31 [
    i8 4, label %32
    i8 3, label %30
  ]

30:                                               ; preds = %8
  br label %32

31:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %46

32:                                               ; preds = %30, %8
  %33 = phi i32 [ 8, %30 ], [ 6, %8 ]
  %34 = phi i32 [ 49, %30 ], [ 50, %8 ]
  store i32 %33, ptr %21, align 4
  %35 = getelementptr inbounds %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1, i32 0, i32 6
  store i32 %34, ptr %35, align 4
  %36 = getelementptr %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1, i32 1
  store i32 13, ptr %36, align 4
  %37 = getelementptr %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1, i32 1, i32 1
  store i32 -1, ptr %37, align 4
  %38 = getelementptr %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1, i32 1, i32 4
  store i32 1, ptr %38, align 4
  %39 = getelementptr %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1, i32 1, i32 5
  store i8 115, ptr %39, align 4
  %40 = getelementptr %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1, i32 1, i32 5, i32 1
  store i8 64, ptr %40, align 1
  %41 = getelementptr %struct.cros_ec_light_prox_state, ptr %11, i32 0, i32 1, i32 1, i32 5, i32 2
  store i8 64, ptr %41, align 2
  %42 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 13
  store ptr %21, ptr %42, align 8
  %43 = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 14
  store i32 2, ptr %43, align 4
  %44 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %11, i32 0, i32 13
  store ptr @cros_ec_sensors_read_cmd, ptr %44, align 8
  %45 = tail call i32 @__devm_iio_device_register(ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull @__this_module) #5
  br label %46

46:                                               ; preds = %32, %31, %5, %1
  %47 = phi i32 [ -22, %31 ], [ %45, %32 ], [ -12, %1 ], [ %6, %5 ]
  ret i32 %47
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
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_read_cmd(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_light_prox_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #2 {
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #5
  store i16 0, ptr %6, align 2
  %9 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %8, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #5
  switch i32 %4, label %58 [
    i32 0, label %12
    i32 1, label %22
    i32 5, label %32
    i32 4, label %46
  ]

12:                                               ; preds = %5
  %13 = load i32, ptr %1, align 4
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %60

15:                                               ; preds = %12
  %16 = shl nuw i32 1, %10
  %17 = call i32 @cros_ec_sensors_read_cmd(ptr noundef %0, i32 noundef %16, ptr noundef nonnull %6) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = load i16, ptr %6, align 2
  %21 = zext i16 %20 to i32
  store i32 %21, ptr %2, align 4
  br label %60

22:                                               ; preds = %5
  %23 = load i32, ptr %1, align 4
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %60

25:                                               ; preds = %22
  %26 = shl nuw i32 1, %10
  %27 = call i32 @cros_ec_sensors_read_cmd(ptr noundef %0, i32 noundef %26, ptr noundef nonnull %6) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %25
  %30 = load i16, ptr %6, align 2
  %31 = zext i16 %30 to i32
  store i32 %31, ptr %2, align 4
  br label %60

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %8, i32 0, i32 3
  store i8 11, ptr %33, align 4
  %34 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %8, i32 0, i32 3, i32 1, i32 0, i32 1
  store i16 0, ptr %34, align 1
  %35 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %8, i16 noundef zeroext 0) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %8, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.anon.26, ptr %39, i32 0, i32 1
  %41 = load i16, ptr %40, align 1
  %42 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %8, i32 0, i32 9
  store i16 %41, ptr %42, align 8
  %43 = getelementptr %struct.cros_ec_sensors_core_state, ptr %8, i32 0, i32 9, i32 %10
  %44 = load i16, ptr %43, align 4
  %45 = sext i16 %44 to i32
  store i32 %45, ptr %2, align 4
  br label %60

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %8, i32 0, i32 3
  store i8 4, ptr %47, align 4
  %48 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %8, i32 0, i32 3, i32 1, i32 0, i32 3
  store i32 -1, ptr %48, align 1
  %49 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %8, i16 noundef zeroext 0) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %8, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %53, align 1
  %55 = ashr i32 %54, 16
  store i32 %55, ptr %2, align 4
  %56 = and i32 %54, 65535
  %57 = mul nuw nsw i32 %56, 100
  store i32 %57, ptr %3, align 4
  br label %60

58:                                               ; preds = %5
  %59 = tail call i32 @cros_ec_sensors_core_read(ptr noundef %8, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #5
  br label %60

60:                                               ; preds = %58, %51, %46, %37, %32, %29, %25, %22, %19, %15, %12
  %61 = phi i32 [ %59, %58 ], [ %49, %46 ], [ 2, %51 ], [ %35, %32 ], [ 1, %37 ], [ %27, %25 ], [ 1, %29 ], [ %17, %15 ], [ 1, %19 ], [ -22, %12 ], [ -22, %22 ]
  call void @mutex_unlock(ptr noundef %11) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #5
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_core_read_avail(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_light_prox_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #5
  switch i32 %4, label %33 [
    i32 5, label %11
    i32 4, label %22
  ]

11:                                               ; preds = %5
  %12 = trunc i32 %2 to i16
  %13 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 9
  %14 = getelementptr %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 9, i32 %9
  store i16 %12, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3
  store i8 11, ptr %15, align 4
  %16 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3, i32 1
  %17 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3, i32 1, i32 0, i32 1
  store i16 1, ptr %17, align 1
  %18 = load i16, ptr %13, align 8
  %19 = getelementptr inbounds %struct.anon.12, ptr %16, i32 0, i32 3
  store i16 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.anon.12, ptr %16, i32 0, i32 2
  store i16 -32768, ptr %20, align 1
  %21 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %7, i16 noundef zeroext 0) #5
  br label %35

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3
  store i8 4, ptr %23, align 4
  %24 = shl i32 %2, 16
  %25 = sdiv i32 %3, 100
  %26 = or i32 %25, %24
  %27 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 8
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 3, i32 1, i32 0, i32 3
  store i32 %26, ptr %28, align 1
  %29 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %7, i16 noundef zeroext 0) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %7, i32 0, i32 7
  store i8 1, ptr %32, align 8
  br label %35

33:                                               ; preds = %5
  %34 = tail call i32 @cros_ec_sensors_core_write(ptr noundef %7, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #5
  br label %35

35:                                               ; preds = %33, %31, %22, %11
  %36 = phi i32 [ %34, %33 ], [ 0, %31 ], [ %29, %22 ], [ %21, %11 ]
  tail call void @mutex_unlock(ptr noundef %10) #5
  ret i32 %36
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
