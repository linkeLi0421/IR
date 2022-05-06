; ModuleID = '/llk/IR/drivers/platform/chrome/cros_ec_sensorhub.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_sensorhub.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.lock_class_key = type {}
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.cros_ec_sensor_platform = type { i8 }
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
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.cros_ec_sensorhub = type { ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, %struct.notifier_block, ptr, [2 x i64], ptr, i32, ptr, %struct.cros_ec_sensors_ec_overflow_state, %struct.cros_ec_sensors_ec_overflow_state, %struct.cros_ec_sensors_ts_filter_state, i32, i32, i64, ptr }
%struct.cros_ec_sensors_ec_overflow_state = type { i64, i64 }
%struct.cros_ec_sensors_ts_filter_state = type { i64, i64, [64 x i64], [64 x i64], [64 x i64], i32, [64 x i64], i64, i64 }
%struct.ec_params_motion_sense = type <{ i8, %union.anon.6 }>
%union.anon.6 = type { %struct.anon.10, [4 x i8] }
%struct.anon.10 = type { i8, i8, i16, i32 }

@__UNIQUE_ID_alias168 = internal constant [33 x i8] c"alias=platform:cros-ec-sensorhub\00", section ".modinfo", align 1
@__UNIQUE_ID_author169 = internal constant [46 x i8] c"author=Gwendal Grignou <gwendal@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description170 = internal constant [47 x i8] c"description=ChromeOS EC MEMS Sensor Hub Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@cros_ec_sensorhub_driver = internal global %struct.platform_driver { ptr @cros_ec_sensorhub_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_sensorhub_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [18 x i8] c"cros-ec-sensorhub\00", align 1
@cros_ec_sensorhub_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @cros_ec_sensorhub_suspend, ptr @cros_ec_sensorhub_resume, ptr @cros_ec_sensorhub_suspend, ptr @cros_ec_sensorhub_resume, ptr @cros_ec_sensorhub_suspend, ptr @cros_ec_sensorhub_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@cros_ec_sensorhub_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"&data->cmd_lock\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Unable to retrieve sensor information (err:%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Zero sensors reported.\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"cros-ec-accel-legacy\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"no info for EC sensor %d : %d/%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"cros-ec-accel\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"cros-ec-baro\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"cros-ec-gyro\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"cros-ec-mag\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"cros-ec-prox\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"cros-ec-light\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"cros-ec-activity\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"unknown type %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"cros-ec-lid-angle\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias168, ptr @__UNIQUE_ID_author169, ptr @__UNIQUE_ID_description170, ptr @__UNIQUE_ID_license171], section "llvm.metadata"
@switch.table.cros_ec_sensorhub_probe = private unnamed_addr constant [7 x ptr] [ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.7], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_sensorhub_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_sensorhub_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_sensorhub_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.platform_device_info, align 8
  %3 = alloca %struct.cros_ec_sensor_platform, align 1
  %4 = alloca %struct.platform_device_info, align 8
  %5 = alloca %struct.cros_ec_sensor_platform, align 1
  %6 = alloca %struct.platform_device_info, align 8
  %7 = alloca %struct.cros_ec_sensor_platform, align 1
  %8 = alloca [8 x i32], align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.cros_ec_dev, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.cros_ec_device, ptr %15, i32 0, i32 6
  %17 = load i16, ptr %16, align 2
  %18 = tail call i16 @llvm.umax.i16(i16 %17, i16 13)
  %19 = zext i16 %18 to i32
  %20 = add nuw nsw i32 %19, 20
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %20, i32 noundef 3520) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %167, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.cros_ec_dev, ptr %13, i32 0, i32 5
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = add nuw nsw i32 %26, 43
  %28 = getelementptr inbounds %struct.cros_ec_command, ptr %21, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 2240, i32 noundef 3520) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %167, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %29, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %32, ptr noundef nonnull @.str.1, ptr noundef nonnull @cros_ec_sensorhub_probe.__key) #7
  store ptr %9, ptr %29, align 8
  %33 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %29, i32 0, i32 1
  store ptr %13, ptr %33, align 4
  %34 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %29, i32 0, i32 3
  store ptr %21, ptr %34, align 4
  %35 = getelementptr inbounds %struct.cros_ec_command, ptr %21, i32 0, i32 5
  %36 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %29, i32 0, i32 4
  store ptr %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %29, i32 0, i32 5
  store ptr %35, ptr %37, align 4
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %29, ptr %38, align 8
  %39 = tail call zeroext i1 @cros_ec_check_features(ptr noundef %13, i32 noundef 6) #7
  br i1 %39, label %40, label %144

40:                                               ; preds = %31
  %41 = tail call i32 @cros_ec_get_sensor_count(ptr noundef %13) #7
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef %41) #8
  br label %167

44:                                               ; preds = %40
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3) #8
  br label %167

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %29, i32 0, i32 2
  store i32 %41, ptr %48, align 8
  %49 = tail call zeroext i1 @cros_ec_check_features(ptr noundef %13, i32 noundef 24) #7
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = tail call i32 @cros_ec_sensorhub_ring_allocate(ptr noundef nonnull %29) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %167

53:                                               ; preds = %50, %47
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %8, i8 0, i32 32, i1 false) #7
  %54 = load ptr, ptr %34, align 4
  %55 = load ptr, ptr %33, align 4
  store i32 1, ptr %54, align 4
  %56 = getelementptr inbounds %struct.cros_ec_command, ptr %54, i32 0, i32 3
  store i32 16, ptr %56, align 4
  %57 = getelementptr inbounds %struct.cros_ec_command, ptr %54, i32 0, i32 2
  store i32 13, ptr %57, align 4
  %58 = load i32, ptr %48, align 8
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %113

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.cros_ec_dev, ptr %55, i32 0, i32 1
  %62 = getelementptr inbounds i8, ptr %6, i32 8
  %63 = getelementptr inbounds %struct.platform_device_info, ptr %6, i32 0, i32 1
  %64 = getelementptr inbounds %struct.platform_device_info, ptr %6, i32 0, i32 3
  %65 = getelementptr inbounds %struct.platform_device_info, ptr %6, i32 0, i32 4
  %66 = getelementptr inbounds %struct.platform_device_info, ptr %6, i32 0, i32 7
  %67 = getelementptr inbounds %struct.platform_device_info, ptr %6, i32 0, i32 8
  %68 = getelementptr inbounds %struct.cros_ec_command, ptr %54, i32 0, i32 4
  br label %69

69:                                               ; preds = %104, %60
  %70 = phi i32 [ 0, %60 ], [ %105, %104 ]
  %71 = load ptr, ptr %36, align 8
  store i8 1, ptr %71, align 1
  %72 = trunc i32 %70 to i8
  %73 = load ptr, ptr %36, align 8
  %74 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %73, i32 0, i32 1
  store i8 %72, ptr %74, align 1
  %75 = load ptr, ptr %61, align 8
  %76 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %75, ptr noundef %54) #7
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, ptr %68, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef %70, i32 noundef %76, i32 noundef %79) #8
  br label %104

80:                                               ; preds = %69
  %81 = load ptr, ptr %37, align 4
  %82 = load i8, ptr %81, align 1
  %83 = icmp ult i8 %82, 7
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = zext i8 %82 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef %85) #8
  br label %104

86:                                               ; preds = %80
  %87 = sext i8 %82 to i32
  %88 = getelementptr inbounds [7 x ptr], ptr @switch.table.cros_ec_sensorhub_probe, i32 0, i32 %87
  %89 = load ptr, ptr %88, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 %72, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %62, i8 0, i32 48, i1 false) #7, !annotation !8
  store ptr %9, ptr %6, align 8
  store ptr null, ptr %63, align 4
  store ptr %89, ptr %64, align 4
  store i32 -2, ptr %65, align 8
  store ptr %7, ptr %66, align 4
  store i32 1, ptr %67, align 8
  %90 = call ptr @platform_device_register_full(ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #7
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %103, label %92

92:                                               ; preds = %86
  %93 = call i32 @devm_add_action(ptr noundef %9, ptr noundef nonnull @cros_ec_sensorhub_free_sensor, ptr noundef %90) #7
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  %96 = load ptr, ptr %37, align 4
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = getelementptr [8 x i32], ptr %8, i32 0, i32 %98
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %99, align 4
  br label %104

102:                                              ; preds = %92
  call void @platform_device_unregister(ptr noundef %90) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  br label %132

103:                                              ; preds = %86
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  br label %134

104:                                              ; preds = %95, %84, %78
  %105 = add nuw nsw i32 %70, 1
  %106 = load i32, ptr %48, align 8
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %69, label %108

108:                                              ; preds = %104
  %109 = load i32, ptr %8, align 4
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.cros_ec_dev, ptr %55, i32 0, i32 4
  store i8 1, ptr %112, align 4
  br label %113

113:                                              ; preds = %111, %108, %53
  %114 = call zeroext i1 @cros_ec_check_features(ptr noundef %55, i32 noundef 37) #7
  br i1 %114, label %115, label %130

115:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #7
  %116 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %116, i8 0, i32 48, i1 false) #7, !annotation !8
  store ptr %9, ptr %4, align 8
  %117 = getelementptr inbounds %struct.platform_device_info, ptr %4, i32 0, i32 1
  store ptr null, ptr %117, align 4
  %118 = getelementptr inbounds %struct.platform_device_info, ptr %4, i32 0, i32 3
  store ptr @.str.14, ptr %118, align 4
  %119 = getelementptr inbounds %struct.platform_device_info, ptr %4, i32 0, i32 4
  store i32 -2, ptr %119, align 8
  %120 = getelementptr inbounds %struct.platform_device_info, ptr %4, i32 0, i32 7
  store ptr %5, ptr %120, align 4
  %121 = getelementptr inbounds %struct.platform_device_info, ptr %4, i32 0, i32 8
  store i32 1, ptr %121, align 8
  %122 = call ptr @platform_device_register_full(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #7
  %123 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %129, label %124

124:                                              ; preds = %115
  %125 = call i32 @devm_add_action(ptr noundef %9, ptr noundef nonnull @cros_ec_sensorhub_free_sensor, ptr noundef %122) #7
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  br label %130

128:                                              ; preds = %124
  call void @platform_device_unregister(ptr noundef %122) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  br label %132

129:                                              ; preds = %115
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  br label %134

130:                                              ; preds = %127, %113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  %131 = call zeroext i1 @cros_ec_check_features(ptr noundef %13, i32 noundef 24) #7
  br i1 %131, label %137, label %167

132:                                              ; preds = %128, %102
  %133 = phi i32 [ %125, %128 ], [ %93, %102 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  br label %167

134:                                              ; preds = %129, %103
  %135 = phi ptr [ %90, %103 ], [ %122, %129 ]
  %136 = ptrtoint ptr %135 to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  br label %167

137:                                              ; preds = %130
  %138 = call i32 @cros_ec_sensorhub_ring_add(ptr noundef nonnull %29) #7
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %167

140:                                              ; preds = %137
  %141 = call i32 @devm_add_action(ptr noundef %9, ptr noundef nonnull @cros_ec_sensorhub_ring_remove, ptr noundef nonnull %29) #7
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %167, label %143

143:                                              ; preds = %140
  call void @cros_ec_sensorhub_ring_remove(ptr noundef nonnull %29) #7, !callees !9
  br label %167

144:                                              ; preds = %31
  %145 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %29, i32 0, i32 2
  store i32 2, ptr %145, align 8
  %146 = getelementptr inbounds i8, ptr %2, i32 8
  %147 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 1
  %148 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 3
  %149 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 4
  %150 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 7
  %151 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 8
  br label %152

152:                                              ; preds = %160, %144
  %153 = phi i32 [ 0, %144 ], [ %161, %160 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  %154 = trunc i32 %153 to i8
  store i8 %154, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %146, i8 0, i32 48, i1 false) #7, !annotation !8
  store ptr %9, ptr %2, align 8
  store ptr null, ptr %147, align 4
  store ptr @.str.4, ptr %148, align 4
  store i32 -2, ptr %149, align 8
  store ptr %3, ptr %150, align 4
  store i32 1, ptr %151, align 8
  %155 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #7
  %156 = icmp ugt ptr %155, inttoptr (i32 -4096 to ptr)
  br i1 %156, label %165, label %157

157:                                              ; preds = %152
  %158 = call i32 @devm_add_action(ptr noundef %9, ptr noundef nonnull @cros_ec_sensorhub_free_sensor, ptr noundef %155) #7
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %161 = add nuw nsw i32 %153, 1
  %162 = load i32, ptr %145, align 8
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %152, label %167

164:                                              ; preds = %157
  call void @platform_device_unregister(ptr noundef %155) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br label %167

165:                                              ; preds = %152
  %166 = ptrtoint ptr %155 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br label %167

167:                                              ; preds = %165, %164, %160, %143, %140, %137, %134, %132, %130, %50, %46, %43, %23, %1
  %168 = phi i32 [ %41, %43 ], [ -22, %46 ], [ -12, %1 ], [ -12, %23 ], [ %51, %50 ], [ %136, %134 ], [ %138, %137 ], [ %166, %165 ], [ 0, %130 ], [ %133, %132 ], [ 0, %140 ], [ %141, %143 ], [ %158, %164 ], [ 0, %160 ]
  ret i32 %168
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cros_ec_check_features(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_get_sensor_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensorhub_ring_allocate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensorhub_ring_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cros_ec_sensorhub_ring_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cros_ec_sensorhub_free_sensor(ptr noundef %0) #2 {
  tail call void @platform_device_unregister(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_sensorhub_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i1 @cros_ec_check_features(ptr noundef %5, i32 noundef 24) #7
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @cros_ec_sensorhub_ring_fifo_enable(ptr noundef %3, i1 noundef zeroext false) #7
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cros_ec_sensorhub_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i1 @cros_ec_check_features(ptr noundef %5, i32 noundef 24) #7
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @cros_ec_sensorhub_ring_fifo_enable(ptr noundef %3, i1 noundef zeroext true) #7
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensorhub_ring_fifo_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{ptr @cros_ec_sensorhub_free_sensor, ptr @cros_ec_sensorhub_ring_remove}
