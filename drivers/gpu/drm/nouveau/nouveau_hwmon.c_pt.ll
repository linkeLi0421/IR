; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_hwmon.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_hwmon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.75 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.82, %struct.anon.83, %struct.anon.85, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.87, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.99 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.82 = type { ptr, i32, i32, i8 }
%struct.anon.83 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.84] }
%struct.anon.84 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.85 = type { i64, i64 }
%struct.anon.86 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.78 }
%struct.anon.78 = type { ptr, i64 }
%struct.anon.87 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.94, %struct.anon.95, %struct.anon.96, %struct.anon.97 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.88, i8 }
%union.anon.88 = type { %struct.anon.92 }
%struct.anon.92 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.94 = type { i32 }
%struct.anon.95 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.96 = type { i16, i16 }
%struct.anon.97 = type { i16, i16, i16, %struct.anon.98, i16 }
%struct.anon.98 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.99 = type { ptr, %struct.mutex, i8 }
%struct.anon.175 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.151, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.151 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_therm = type { ptr, %struct.nvkm_subdev, %struct.nvkm_alarm, %struct.spinlock, ptr, i32, i32, i32, %struct.nvbios_therm_sensor, ptr, %struct.anon.155, %struct.anon.156, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_alarm = type { %struct.list_head, %struct.list_head, i64, ptr }
%struct.nvbios_therm_sensor = type { i16, i16, i16, i16, i8, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold }
%struct.nvbios_therm_threshold = type { i8, i8 }
%struct.anon.155 = type { %struct.spinlock, %struct.nvkm_alarm, [4 x i32] }
%struct.anon.156 = type { ptr, ptr }
%struct.nouveau_hwmon = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.anon.178 = type { %struct.nvkm_object, ptr }
%struct.anon.179 = type { %struct.nvkm_object, ptr }
%struct.anon.180 = type { %struct.nvkm_object, ptr }
%struct.anon.181 = type { %struct.nvkm_object, ptr }
%struct.anon.182 = type { %struct.nvkm_object, ptr }
%struct.anon.183 = type { %struct.nvkm_object, ptr }
%struct.anon.184 = type { %struct.nvkm_object, ptr }
%struct.anon.185 = type { %struct.nvkm_object, ptr }
%struct.anon.186 = type { %struct.nvkm_object, ptr }
%struct.anon.187 = type { %struct.nvkm_object, ptr }
%struct.anon.188 = type { %struct.nvkm_object, ptr }
%struct.anon.189 = type { %struct.nvkm_object, ptr }
%struct.anon.190 = type { %struct.nvkm_object, ptr }
%struct.nvkm_iccsense = type { %struct.nvkm_subdev, i8, %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.191 = type { %struct.nvkm_object, ptr }
%struct.anon.192 = type { %struct.nvkm_object, ptr }
%struct.anon.193 = type { %struct.nvkm_object, ptr }
%struct.nvkm_volt = type { ptr, %struct.nvkm_subdev, i8, i8, [256 x %struct.anon.157], i32, i32, i8, i8, i8, i32 }
%struct.anon.157 = type { i32, i8 }
%struct.anon.194 = type { %struct.nvkm_object, ptr }
%struct.anon.195 = type { %struct.nvkm_object, ptr }
%struct.anon.196 = type { %struct.nvkm_object, ptr }
%struct.anon.197 = type { %struct.nvkm_object, ptr }

@.str = private unnamed_addr constant [33 x i8] c"%s: Skipping hwmon registration\0A\00", align 1
@temp1_auto_point_sensor_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @temp1_auto_point_sensor_attrs, ptr null }, align 4
@pwm_fan_sensor_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pwm_fan_sensor_attrs, ptr null }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"nouveau\00", align 1
@nouveau_chip_info = internal constant %struct.hwmon_chip_info { ptr @nouveau_hwmon_ops, ptr @nouveau_info }, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: Unable to register hwmon device: %d\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@temp1_auto_point_sensor_attrs = internal global [4 x ptr] [ptr @sensor_dev_attr_temp1_auto_point1_pwm, ptr @sensor_dev_attr_temp1_auto_point1_temp, ptr @sensor_dev_attr_temp1_auto_point1_temp_hyst, ptr null], align 4
@sensor_dev_attr_temp1_auto_point1_pwm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @nouveau_hwmon_show_temp1_auto_point1_pwm, ptr null }, i32 0 }, align 4
@sensor_dev_attr_temp1_auto_point1_temp = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @nouveau_hwmon_temp1_auto_point1_temp, ptr @nouveau_hwmon_set_temp1_auto_point1_temp }, i32 0 }, align 4
@sensor_dev_attr_temp1_auto_point1_temp_hyst = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420 }, ptr @nouveau_hwmon_temp1_auto_point1_temp_hyst, ptr @nouveau_hwmon_set_temp1_auto_point1_temp_hyst }, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"temp1_auto_point1_pwm\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"temp1_auto_point1_temp\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"temp1_auto_point1_temp_hyst\00", align 1
@pwm_fan_sensor_attrs = internal global [3 x ptr] [ptr @sensor_dev_attr_pwm1_min, ptr @sensor_dev_attr_pwm1_max, ptr null], align 4
@sensor_dev_attr_pwm1_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420 }, ptr @nouveau_hwmon_get_pwm1_min, ptr @nouveau_hwmon_set_pwm1_min }, i32 0 }, align 4
@sensor_dev_attr_pwm1_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420 }, ptr @nouveau_hwmon_get_pwm1_max, ptr @nouveau_hwmon_set_pwm1_max }, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"pwm1_min\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"pwm1_max\00", align 1
@nouveau_hwmon_ops = internal constant %struct.hwmon_ops { ptr @nouveau_is_visible, ptr @nouveau_read, ptr @nouveau_read_string, ptr @nouveau_write }, align 4
@nouveau_info = internal global [7 x ptr] [ptr @nouveau_chip, ptr @nouveau_temp, ptr @nouveau_fan, ptr @nouveau_in, ptr @nouveau_pwm, ptr @nouveau_power, ptr null], align 4
@input_label = internal constant [9 x i8] c"GPU core\00", align 1
@nouveau_chip = internal constant %struct.hwmon_channel_info { i32 0, ptr @nouveau_config_chip }, align 4
@nouveau_temp = internal constant %struct.hwmon_channel_info { i32 1, ptr @nouveau_config_temp }, align 4
@nouveau_fan = internal constant %struct.hwmon_channel_info { i32 7, ptr @nouveau_config_fan }, align 4
@nouveau_in = internal constant %struct.hwmon_channel_info { i32 2, ptr @nouveau_config_in }, align 4
@nouveau_pwm = internal constant %struct.hwmon_channel_info { i32 8, ptr @nouveau_config_pwm }, align 4
@nouveau_power = internal constant %struct.hwmon_channel_info { i32 4, ptr @nouveau_config_power }, align 4
@nouveau_config_chip = internal constant [2 x i32] [i32 32, i32 0], align 4
@nouveau_config_temp = internal constant [2 x i32] [i32 8066, i32 0], align 4
@nouveau_config_fan = internal constant [2 x i32] [i32 2, i32 0], align 4
@nouveau_config_in = internal constant [2 x i32] [i32 1038, i32 0], align 4
@nouveau_config_pwm = internal constant [2 x i32] [i32 3, i32 0], align 4
@nouveau_config_power = internal constant [2 x i32] [i32 1114624, i32 0], align 4
@switch.table.nouveau_is_visible = private unnamed_addr constant [12 x i16] [i16 292, i16 0, i16 0, i16 0, i16 0, i16 0, i16 420, i16 420, i16 420, i16 420, i16 420, i16 420], align 2
@switch.table.nouveau_is_visible.10 = private unnamed_addr constant [10 x i16] [i16 292, i16 292, i16 292, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 292], align 2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_hwmon_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x ptr], align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.anon.175, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 41
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 42
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 40
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !8
  %15 = icmp ne ptr %10, null
  %16 = icmp ne ptr %12, null
  %17 = select i1 %15, i1 true, i1 %16
  %18 = icmp ne ptr %14, null
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %1
  %21 = load i32, ptr @__drm_debug, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %79, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str, ptr noundef %31) #10
  br label %79

32:                                               ; preds = %1
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 8) #11
  %35 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 25
  store ptr %34, ptr %35, align 4
  %36 = icmp eq ptr %34, null
  br i1 %36, label %79, label %37

37:                                               ; preds = %32
  store ptr %0, ptr %34, align 8
  br i1 %16, label %38, label %61

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.nvkm_therm, ptr %12, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %61, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.nvkm_therm, ptr %12, i32 0, i32 16
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %61, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @nvkm_therm_temp_get(ptr noundef nonnull %12) #9
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store ptr @temp1_auto_point_sensor_group, ptr %2, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i32 [ 1, %49 ], [ 0, %46 ]
  %52 = getelementptr inbounds %struct.nvkm_therm, ptr %12, i32 0, i32 13
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = tail call i32 %53(ptr noundef nonnull %12) #9
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = add nuw nsw i32 %51, 1
  %60 = getelementptr [3 x ptr], ptr %2, i32 0, i32 %51
  store ptr @pwm_fan_sensor_group, ptr %60, align 4
  br label %61

61:                                               ; preds = %58, %55, %50, %42, %38, %37
  %62 = phi i32 [ %59, %58 ], [ %51, %55 ], [ %51, %50 ], [ 0, %42 ], [ 0, %38 ], [ 0, %37 ]
  %63 = getelementptr [3 x ptr], ptr %2, i32 0, i32 %62
  store ptr null, ptr %63, align 4
  %64 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = call ptr @hwmon_device_register_with_info(ptr noundef %65, ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef nonnull @nouveau_chip_info, ptr noundef nonnull %2) #9
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = ptrtoint ptr %66 to i32
  %70 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.nouveau_drm, ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.drm_device, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.2, ptr noundef %76, i32 noundef %69) #10
  br label %79

77:                                               ; preds = %61
  %78 = getelementptr inbounds %struct.nouveau_hwmon, ptr %34, i32 0, i32 1
  store ptr %66, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %68, %32, %24, %20
  %80 = phi i32 [ %69, %68 ], [ 0, %77 ], [ 0, %24 ], [ 0, %20 ], [ -12, %32 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  ret i32 %80
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_temp_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_hwmon_fini(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nouveau_hwmon, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  tail call void @hwmon_device_unregister(ptr noundef nonnull %9) #9
  %12 = load ptr, ptr %2, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %3, %7 ]
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 25
  store ptr null, ptr %15, align 4
  tail call void @kfree(ptr noundef nonnull %5) #9
  br label %16

16:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_show_temp1_auto_point1_pwm(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.4, i32 noundef 100)
  ret i32 %4
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_temp1_auto_point1_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.anon.178, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 42
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_therm, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %13, i32 noundef 10) #9
  %17 = mul i32 %16, 1000
  %18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.4, i32 noundef %17)
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_set_temp1_auto_point1_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.anon.179, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 42
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %16 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.nvkm_therm, ptr %15, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = load i32, ptr %5, align 4
  %22 = sdiv i32 %21, 1000
  %23 = call i32 %20(ptr noundef %15, i32 noundef 10, i32 noundef %22) #9
  br label %24

24:                                               ; preds = %18, %4
  %25 = phi i32 [ %3, %18 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_temp1_auto_point1_temp_hyst(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.anon.180, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 42
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_therm, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %13, i32 noundef 11) #9
  %17 = mul i32 %16, 1000
  %18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.4, i32 noundef %17)
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_set_temp1_auto_point1_temp_hyst(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.anon.181, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 42
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %16 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.nvkm_therm, ptr %15, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = load i32, ptr %5, align 4
  %22 = sdiv i32 %21, 1000
  %23 = call i32 %20(ptr noundef %15, i32 noundef 11, i32 noundef %22) #9
  br label %24

24:                                               ; preds = %18, %4
  %25 = phi i32 [ %3, %18 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_get_pwm1_min(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.anon.182, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 42
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_therm, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %13, i32 noundef 0) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %16)
  br label %20

20:                                               ; preds = %18, %3
  %21 = phi i32 [ %19, %18 ], [ %16, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_set_pwm1_min(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.anon.183, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 42
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %16 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.nvkm_therm, ptr %15, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = load i32, ptr %5, align 4
  %22 = call i32 %20(ptr noundef %15, i32 noundef 0, i32 noundef %21) #9
  %23 = icmp slt i32 %22, 0
  %24 = select i1 %23, i32 %22, i32 %3
  br label %25

25:                                               ; preds = %18, %4
  %26 = phi i32 [ -22, %4 ], [ %24, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %26
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_get_pwm1_max(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.anon.184, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 42
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_therm, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %13, i32 noundef 1) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %16)
  br label %20

20:                                               ; preds = %18, %3
  %21 = phi i32 [ %19, %18 ], [ %16, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_hwmon_set_pwm1_max(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.anon.185, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 42
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %16 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.nvkm_therm, ptr %15, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = load i32, ptr %5, align 4
  %22 = call i32 %20(ptr noundef %15, i32 noundef 1, i32 noundef %21) #9
  %23 = icmp slt i32 %22, 0
  %24 = select i1 %23, i32 %22, i32 %3
  br label %25

25:                                               ; preds = %18, %4
  %26 = phi i32 [ -22, %4 ], [ %24, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @nouveau_is_visible(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  switch i32 %1, label %124 [
    i32 0, label %5
    i32 1, label %8
    i32 7, label %28
    i32 2, label %48
    i32 8, label %64
    i32 4, label %88
  ]

5:                                                ; preds = %4
  %6 = icmp eq i32 %2, 5
  %7 = select i1 %6, i16 292, i16 0
  br label %124

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.anon.186, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 42
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %124, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.nvkm_therm, ptr %16, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %124, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @nvkm_therm_temp_get(ptr noundef nonnull %16) #9
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %124, label %25

25:                                               ; preds = %22
  %26 = add i32 %2, -1
  %27 = icmp ult i32 %26, 12
  br i1 %27, label %118, label %124

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 3, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.anon.187, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 42
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %124, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.nvkm_therm, ptr %36, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %124, label %42

42:                                               ; preds = %38
  %43 = tail call i32 @nvkm_therm_fan_sense(ptr noundef nonnull %36) #9
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %124, label %45

45:                                               ; preds = %42
  %46 = icmp eq i32 %2, 1
  %47 = select i1 %46, i16 292, i16 0
  br label %124

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 2, i32 3, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.anon.188, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 40
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %124, label %58

58:                                               ; preds = %48
  %59 = tail call i32 @nvkm_volt_get(ptr noundef nonnull %56) #9
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %124, label %61

61:                                               ; preds = %58
  %62 = add i32 %2, -1
  %63 = icmp ult i32 %62, 10
  br i1 %63, label %121, label %124

64:                                               ; preds = %4
  %65 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nouveau_drm, ptr %66, i32 0, i32 2, i32 3, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.anon.189, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 42
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %124, label %74

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.nvkm_therm, ptr %72, i32 0, i32 15
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %124, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.nvkm_therm, ptr %72, i32 0, i32 13
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %124, label %82

82:                                               ; preds = %78
  %83 = tail call i32 %80(ptr noundef nonnull %72) #9
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %124, label %85

85:                                               ; preds = %82
  %86 = icmp ult i32 %2, 2
  %87 = select i1 %86, i16 420, i16 0
  br label %124

88:                                               ; preds = %4
  %89 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.nouveau_drm, ptr %90, i32 0, i32 2, i32 3, i32 0, i32 5
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.anon.190, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 41
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %124, label %98

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.nvkm_iccsense, ptr %96, i32 0, i32 1
  %100 = load i8, ptr %99, align 4, !range !9
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %124, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.nvkm_iccsense, ptr %96, i32 0, i32 3
  %104 = load volatile ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %103
  br i1 %105, label %124, label %106

106:                                              ; preds = %102
  switch i32 %2, label %117 [
    i32 9, label %124
    i32 19, label %107
    i32 20, label %112
  ]

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.nvkm_iccsense, ptr %96, i32 0, i32 4
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %110, i16 0, i16 292
  br label %124

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.nvkm_iccsense, ptr %96, i32 0, i32 5
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, i16 0, i16 292
  br label %124

117:                                              ; preds = %106
  br label %124

118:                                              ; preds = %25
  %119 = getelementptr inbounds [12 x i16], ptr @switch.table.nouveau_is_visible, i32 0, i32 %26
  %120 = load i16, ptr %119, align 2
  br label %124

121:                                              ; preds = %61
  %122 = getelementptr inbounds [10 x i16], ptr @switch.table.nouveau_is_visible.10, i32 0, i32 %62
  %123 = load i16, ptr %122, align 2
  br label %124

124:                                              ; preds = %121, %118, %117, %112, %107, %106, %102, %98, %88, %85, %82, %78, %74, %64, %61, %58, %48, %45, %42, %38, %28, %25, %22, %18, %8, %5, %4
  %125 = phi i16 [ %7, %5 ], [ 0, %4 ], [ 0, %22 ], [ 0, %18 ], [ 0, %8 ], [ 0, %42 ], [ 0, %38 ], [ 0, %28 ], [ %47, %45 ], [ 0, %58 ], [ 0, %48 ], [ 0, %82 ], [ 0, %78 ], [ 0, %74 ], [ 0, %64 ], [ %87, %85 ], [ 0, %117 ], [ 0, %102 ], [ 0, %98 ], [ 0, %88 ], [ 292, %106 ], [ %111, %107 ], [ %116, %112 ], [ %120, %118 ], [ 0, %25 ], [ %123, %121 ], [ 0, %61 ]
  ret i16 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  switch i32 %1, label %162 [
    i32 0, label %6
    i32 1, label %8
    i32 7, label %52
    i32 2, label %72
    i32 8, label %106
    i32 4, label %135
  ]

6:                                                ; preds = %5
  %7 = icmp eq i32 %2, 5
  br i1 %7, label %160, label %162

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 2, i32 3, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.anon.191, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 42
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %162, label %20

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.nvkm_therm, ptr %18, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %162, label %24

24:                                               ; preds = %20
  switch i32 %2, label %162 [
    i32 1, label %25
    i32 7, label %34
    i32 8, label %37
    i32 9, label %40
    i32 10, label %43
    i32 11, label %46
    i32 12, label %49
  ]

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 35
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %162

29:                                               ; preds = %25
  %30 = tail call i32 @nvkm_therm_temp_get(ptr noundef nonnull %18) #9
  %31 = icmp slt i32 %30, 0
  %32 = mul i32 %30, 1000
  %33 = select i1 %31, i32 %30, i32 %32
  br label %160

34:                                               ; preds = %24
  %35 = tail call i32 %22(ptr noundef nonnull %18, i32 noundef 12) #9
  %36 = mul i32 %35, 1000
  br label %160

37:                                               ; preds = %24
  %38 = tail call i32 %22(ptr noundef nonnull %18, i32 noundef 13) #9
  %39 = mul i32 %38, 1000
  br label %160

40:                                               ; preds = %24
  %41 = tail call i32 %22(ptr noundef nonnull %18, i32 noundef 14) #9
  %42 = mul i32 %41, 1000
  br label %160

43:                                               ; preds = %24
  %44 = tail call i32 %22(ptr noundef nonnull %18, i32 noundef 15) #9
  %45 = mul i32 %44, 1000
  br label %160

46:                                               ; preds = %24
  %47 = tail call i32 %22(ptr noundef nonnull %18, i32 noundef 16) #9
  %48 = mul i32 %47, 1000
  br label %160

49:                                               ; preds = %24
  %50 = tail call i32 %22(ptr noundef nonnull %18, i32 noundef 17) #9
  %51 = mul i32 %50, 1000
  br label %160

52:                                               ; preds = %5
  %53 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.drm_device, ptr %54, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nouveau_drm, ptr %56, i32 0, i32 2, i32 3, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.anon.192, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 42
  %62 = load ptr, ptr %61, align 4
  %63 = icmp ne ptr %62, null
  %64 = icmp eq i32 %2, 1
  %65 = and i1 %64, %63
  br i1 %65, label %66, label %162

66:                                               ; preds = %52
  %67 = getelementptr inbounds %struct.drm_device, ptr %54, i32 0, i32 35
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %162

70:                                               ; preds = %66
  %71 = tail call i32 @nvkm_therm_fan_sense(ptr noundef nonnull %62) #9
  br label %160

72:                                               ; preds = %5
  %73 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.drm_device, ptr %74, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nouveau_drm, ptr %76, i32 0, i32 2, i32 3, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.anon.193, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.nvkm_device, ptr %80, i32 0, i32 40
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %162, label %84

84:                                               ; preds = %72
  switch i32 %2, label %162 [
    i32 1, label %85
    i32 2, label %94
    i32 3, label %100
  ]

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.drm_device, ptr %74, i32 0, i32 35
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %162

89:                                               ; preds = %85
  %90 = tail call i32 @nvkm_volt_get(ptr noundef nonnull %82) #9
  %91 = icmp slt i32 %90, 0
  %92 = sdiv i32 %90, 1000
  %93 = select i1 %91, i32 %90, i32 %92
  br label %160

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.nvkm_volt, ptr %82, i32 0, i32 6
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  %98 = udiv i32 %96, 1000
  %99 = select i1 %97, i32 -19, i32 %98
  br label %160

100:                                              ; preds = %84
  %101 = getelementptr inbounds %struct.nvkm_volt, ptr %82, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  %104 = udiv i32 %102, 1000
  %105 = select i1 %103, i32 -19, i32 %104
  br label %160

106:                                              ; preds = %5
  %107 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.drm_device, ptr %108, i32 0, i32 5
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.nouveau_drm, ptr %110, i32 0, i32 2, i32 3, i32 0, i32 5
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.anon.194, ptr %112, i32 0, i32 1
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds %struct.nvkm_device, ptr %114, i32 0, i32 42
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %162, label %118

118:                                              ; preds = %106
  %119 = getelementptr inbounds %struct.nvkm_therm, ptr %116, i32 0, i32 15
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %162, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.nvkm_therm, ptr %116, i32 0, i32 13
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %162, label %126

126:                                              ; preds = %122
  switch i32 %2, label %162 [
    i32 1, label %127
    i32 0, label %129
  ]

127:                                              ; preds = %126
  %128 = tail call i32 %120(ptr noundef nonnull %116, i32 noundef 2) #9
  br label %160

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.drm_device, ptr %108, i32 0, i32 35
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %162

133:                                              ; preds = %129
  %134 = tail call i32 %124(ptr noundef nonnull %116) #9
  br label %160

135:                                              ; preds = %5
  %136 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.drm_device, ptr %137, i32 0, i32 5
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.nouveau_drm, ptr %139, i32 0, i32 2, i32 3, i32 0, i32 5
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.anon.195, ptr %141, i32 0, i32 1
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %struct.nvkm_device, ptr %143, i32 0, i32 41
  %145 = load ptr, ptr %144, align 8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %162, label %147

147:                                              ; preds = %135
  switch i32 %2, label %162 [
    i32 9, label %148
    i32 19, label %154
    i32 20, label %157
  ]

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.drm_device, ptr %137, i32 0, i32 35
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %148
  %153 = tail call i32 @nvkm_iccsense_read_all(ptr noundef nonnull %145) #9
  br label %160

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.nvkm_iccsense, ptr %145, i32 0, i32 4
  %156 = load i32, ptr %155, align 4
  br label %160

157:                                              ; preds = %147
  %158 = getelementptr inbounds %struct.nvkm_iccsense, ptr %145, i32 0, i32 5
  %159 = load i32, ptr %158, align 4
  br label %160

160:                                              ; preds = %157, %154, %152, %133, %127, %100, %94, %89, %70, %49, %46, %43, %40, %37, %34, %29, %6
  %161 = phi i32 [ %71, %70 ], [ 1000, %6 ], [ %33, %29 ], [ %36, %34 ], [ %39, %37 ], [ %42, %40 ], [ %45, %43 ], [ %48, %46 ], [ %51, %49 ], [ %93, %89 ], [ %99, %94 ], [ %105, %100 ], [ %134, %133 ], [ %128, %127 ], [ %153, %152 ], [ %156, %154 ], [ %159, %157 ]
  store i32 %161, ptr %4, align 4
  br label %162

162:                                              ; preds = %160, %148, %147, %135, %129, %126, %122, %118, %106, %85, %84, %72, %66, %52, %25, %24, %20, %8, %6, %5
  %163 = phi i32 [ -95, %5 ], [ -95, %6 ], [ -95, %20 ], [ -95, %8 ], [ -22, %25 ], [ -95, %24 ], [ -95, %52 ], [ -22, %66 ], [ -95, %72 ], [ -22, %85 ], [ -95, %84 ], [ -95, %122 ], [ -95, %118 ], [ -95, %106 ], [ -22, %129 ], [ -95, %126 ], [ -95, %135 ], [ -22, %148 ], [ -95, %147 ], [ 0, %160 ]
  ret i32 %163
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nouveau_read_string(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #8 {
  %6 = icmp eq i32 %1, 2
  %7 = icmp eq i32 %2, 10
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store ptr @input_label, ptr %4, align 4
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ 0, %9 ], [ -95, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  switch i32 %1, label %52 [
    i32 1, label %6
    i32 8, label %29
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.anon.196, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 42
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.nvkm_therm, ptr %16, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = icmp ne ptr %20, null
  %22 = add i32 %2, -7
  %23 = icmp ult i32 %22, 6
  %24 = and i1 %21, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %18
  %26 = add i32 %2, 5
  %27 = sdiv i32 %4, 1000
  %28 = tail call i32 %20(ptr noundef nonnull %16, i32 noundef %26, i32 noundef %27) #9
  br label %52

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.drm_device, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 2, i32 3, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.anon.197, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 42
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.nvkm_therm, ptr %39, i32 0, i32 16
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  switch i32 %2, label %52 [
    i32 0, label %46
    i32 1, label %50
  ]

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.nvkm_therm, ptr %39, i32 0, i32 14
  %48 = load ptr, ptr %47, align 8
  %49 = tail call i32 %48(ptr noundef nonnull %39, i32 noundef %4) #9
  br label %52

50:                                               ; preds = %45
  %51 = tail call i32 %43(ptr noundef nonnull %39, i32 noundef 2, i32 noundef %4) #9
  br label %52

52:                                               ; preds = %50, %46, %45, %41, %29, %25, %18, %6, %5
  %53 = phi i32 [ -95, %5 ], [ -95, %18 ], [ -95, %6 ], [ %28, %25 ], [ %51, %50 ], [ %49, %46 ], [ -95, %41 ], [ -95, %29 ], [ -95, %45 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_fan_sense(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_volt_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_iccsense_read_all(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
