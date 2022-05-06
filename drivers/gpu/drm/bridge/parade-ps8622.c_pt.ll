; ModuleID = '/llk/IR/drivers/gpu/drm/bridge/parade-ps8622.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/parade-ps8622.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.ps8622_bridge = type { ptr, %struct.drm_bridge, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@ps8622_devices = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"parade,ps8622\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"parade,ps8625\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ps8622_i2c_table = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ps8622\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ps8625\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author265 = internal constant [47 x i8] c"author=Vincent Palatin <vpalatin@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description266 = internal constant [59 x i8] c"description=Parade ps8622/ps8625 eDP-LVDS converter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@ps8622_driver = internal global %struct.i2c_driver { i32 0, ptr @ps8622_probe, ptr @ps8622_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ps8622_devices, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ps8622_i2c_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"ps8622\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"vdd12\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"no 1.2v regulator found for PS8622\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"cannot get gpio_slp %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"cannot get gpio_rst %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"lane-count\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"lane-count property is too high,using max_lane_count\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"use-external-pwm\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ps8622-backlight\00", align 1
@ps8622_backlight_ops = internal constant %struct.backlight_ops { i32 0, ptr @ps8622_backlight_update, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@ps8622_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr @ps8622_attach, ptr null, ptr null, ptr null, ptr @ps8622_disable, ptr @ps8622_post_disable, ptr null, ptr @ps8622_pre_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [54 x i8] c"\014PS8622 I2C write (0x%02x,0x%02x,0x%02x) failed: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"fails to enable ps8622->v12\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Failed to send config to bridge (%d)\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_license267], section "llvm.metadata"

@__mod_of__ps8622_devices_device_table = dso_local alias [3 x %struct.of_device_id], ptr @ps8622_devices
@__mod_i2c__ps8622_i2c_table_device_table = dso_local alias [3 x %struct.i2c_device_id], ptr @ps8622_i2c_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @ps8622_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @ps8622_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ps8622_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store ptr null, ptr %3, align 4, !annotation !8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 168, i32 noundef 3520) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %72, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %9, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %72

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 4
  %14 = call ptr @devm_drm_panel_bridge_add(ptr noundef %4, ptr noundef %13) #5
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = ptrtoint ptr %14 to i32
  br label %72

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ps8622_bridge, ptr %5, i32 0, i32 2
  store ptr %14, ptr %19, align 4
  store ptr %0, ptr %5, align 4
  %20 = call ptr @devm_regulator_get(ptr noundef %4, ptr noundef nonnull @.str.1) #5
  %21 = getelementptr inbounds %struct.ps8622_bridge, ptr %5, i32 0, i32 3
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.2) #6
  store ptr null, ptr %21, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = call ptr @devm_gpiod_get(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef 7) #5
  %26 = getelementptr inbounds %struct.ps8622_bridge, ptr %5, i32 0, i32 5
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = ptrtoint ptr %25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %29) #6
  br label %72

30:                                               ; preds = %24
  %31 = call ptr @devm_gpiod_get(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef 7) #5
  %32 = getelementptr inbounds %struct.ps8622_bridge, ptr %5, i32 0, i32 6
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = ptrtoint ptr %31 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %35) #6
  br label %72

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ps8622_bridge, ptr %5, i32 0, i32 7
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %8, align 8
  %41 = getelementptr inbounds %struct.ps8622_bridge, ptr %5, i32 0, i32 8
  %42 = call i32 @of_property_read_variable_u32_array(ptr noundef %40, ptr noundef nonnull @.str.7, ptr noundef %41, i32 noundef 1, i32 noundef 0) #5
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32, ptr %41, align 4
  %46 = load i32, ptr %39, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.8) #6
  br label %49

49:                                               ; preds = %48, %36
  %50 = load i32, ptr %39, align 4
  store i32 %50, ptr %41, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = load ptr, ptr %8, align 8
  %53 = call ptr @of_find_property(ptr noundef %52, ptr noundef nonnull @.str.9, ptr noundef null) #5
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = call ptr @backlight_device_register(ptr noundef nonnull @.str.10, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull @ps8622_backlight_ops, ptr noundef null) #5
  %57 = getelementptr inbounds %struct.ps8622_bridge, ptr %5, i32 0, i32 4
  store ptr %56, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #5
  %60 = load ptr, ptr %57, align 4
  %61 = ptrtoint ptr %60 to i32
  store ptr null, ptr %57, align 4
  br label %72

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.backlight_properties, ptr %56, i32 0, i32 1
  store i32 255, ptr %63, align 4
  %64 = load ptr, ptr %57, align 4
  store i32 255, ptr %64, align 8
  br label %65

65:                                               ; preds = %62, %51
  %66 = getelementptr inbounds %struct.ps8622_bridge, ptr %5, i32 0, i32 1
  %67 = getelementptr inbounds %struct.ps8622_bridge, ptr %5, i32 0, i32 1, i32 7
  store ptr @ps8622_bridge_funcs, ptr %67, align 4
  %68 = getelementptr inbounds %struct.ps8622_bridge, ptr %5, i32 0, i32 1, i32 10
  store i32 7, ptr %68, align 4
  %69 = load ptr, ptr %8, align 8
  %70 = getelementptr inbounds %struct.ps8622_bridge, ptr %5, i32 0, i32 1, i32 4
  store ptr %69, ptr %70, align 4
  call void @drm_bridge_add(ptr noundef %66) #5
  %71 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %5, ptr %71, align 8
  br label %72

72:                                               ; preds = %65, %59, %34, %28, %16, %7, %2
  %73 = phi i32 [ %17, %16 ], [ %29, %28 ], [ %35, %34 ], [ 0, %65 ], [ %61, %59 ], [ -12, %2 ], [ %10, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ps8622_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ps8622_bridge, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @backlight_device_unregister(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.ps8622_bridge, ptr %3, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %6) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ps8622_backlight_update(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 8
  %11 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9, %1
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi i32 [ 0, %15 ], [ %10, %9 ]
  %18 = getelementptr inbounds %struct.ps8622_bridge, ptr %5, i32 0, i32 9
  %19 = load i8, ptr %18, align 4, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %5, align 4
  %23 = trunc i32 %17 to i8
  %24 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #5
  %26 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %26, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i8 -89, ptr %3, align 2
  %27 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %23, ptr %27, align 1
  %28 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = add i16 %29, 1
  store i16 %30, ptr %2, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %32, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %2, i32 noundef 1) #5
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %41, label %35

35:                                               ; preds = %21
  %36 = load i16, ptr %28, align 2
  %37 = zext i16 %36 to i32
  %38 = add nuw nsw i32 %37, 1
  %39 = and i32 %17, 255
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %38, i32 noundef 167, i32 noundef %39, i32 noundef %33) #6
  br label %41

41:                                               ; preds = %35, %21
  %42 = icmp ne i32 %33, 1
  %43 = zext i1 %42 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #5
  br label %44

44:                                               ; preds = %41, %16
  %45 = phi i32 [ %43, %41 ], [ -22, %16 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ps8622_set(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #2 {
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #5
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #5
  store i8 %2, ptr %6, align 2
  %10 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %3, ptr %10, align 1
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = zext i8 %1 to i16
  %14 = add i16 %12, %13
  store i16 %14, ptr %5, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = call i32 @i2c_transfer(ptr noundef %8, ptr noundef nonnull %5, i32 noundef 1) #5
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %28, label %20

20:                                               ; preds = %4
  %21 = zext i8 %1 to i32
  %22 = load i16, ptr %11, align 2
  %23 = zext i16 %22 to i32
  %24 = add nuw nsw i32 %23, %21
  %25 = zext i8 %2 to i32
  %26 = zext i8 %3 to i32
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %18) #6
  br label %28

28:                                               ; preds = %20, %4
  %29 = icmp ne i32 %18, 1
  %30 = zext i1 %29 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #5
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ps8622_attach(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 52
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 132
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @drm_bridge_attach(ptr noundef %4, ptr noundef %6, ptr noundef %0, i32 noundef %1) #5
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ps8622_disable(ptr nocapture noundef readnone %0) #2 {
  tail call void @msleep(i32 noundef 200) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ps8622_post_disable(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 160
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  store i8 0, ptr %2, align 4
  %6 = getelementptr i8, ptr %0, i32 144
  %7 = load ptr, ptr %6, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #5
  %8 = getelementptr i8, ptr %0, i32 136
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @regulator_disable(ptr noundef nonnull %9) #5
  br label %13

13:                                               ; preds = %11, %5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #5
  %14 = getelementptr i8, ptr %0, i32 148
  %15 = load ptr, ptr %14, align 4
  tail call void @gpiod_set_value(ptr noundef %15, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 500) #5
  br label %16

16:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ps8622_pre_enable(ptr nocapture noundef %0) #2 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [2 x i8], align 2
  %16 = getelementptr i8, ptr %0, i32 -4
  %17 = getelementptr i8, ptr %0, i32 160
  %18 = load i8, ptr %17, align 4, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %272

20:                                               ; preds = %1
  %21 = getelementptr i8, ptr %0, i32 148
  %22 = load ptr, ptr %21, align 4
  tail call void @gpiod_set_value(ptr noundef %22, i32 noundef 0) #5
  %23 = getelementptr i8, ptr %0, i32 136
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = tail call i32 @regulator_enable(ptr noundef nonnull %24) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #5
  br label %30

30:                                               ; preds = %29, %26, %20
  %31 = getelementptr i8, ptr %0, i32 144
  %32 = load ptr, ptr %31, align 4
  tail call void @gpiod_set_value(ptr noundef %32, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 13000, i32 noundef 30010, i32 noundef 2) #5
  %33 = load ptr, ptr %21, align 4
  tail call void @gpiod_set_value(ptr noundef %33, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 30000, i32 noundef 2) #5
  %34 = load ptr, ptr %16, align 4
  %35 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #5
  %37 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %37, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #5
  store i8 -95, ptr %15, align 2
  %38 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 1, ptr %38, align 1
  %39 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 1
  %40 = load i16, ptr %39, align 2
  %41 = add i16 %40, 2
  store i16 %41, ptr %14, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %15, ptr %43, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %14, i32 noundef 1) #5
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %51, label %46

46:                                               ; preds = %30
  %47 = load i16, ptr %39, align 2
  %48 = zext i16 %47 to i32
  %49 = add nuw nsw i32 %48, 2
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %49, i32 noundef 161, i32 noundef 1, i32 noundef %44) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #5
  br label %270

51:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #5
  %52 = load ptr, ptr %35, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #5
  %53 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %53, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #5
  store i8 20, ptr %13, align 2
  %54 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 1, ptr %54, align 1
  %55 = load i16, ptr %39, align 2
  %56 = add i16 %55, 4
  store i16 %56, ptr %12, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %57, align 2
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %13, ptr %58, align 4
  %59 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %12, i32 noundef 1) #5
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %66, label %61

61:                                               ; preds = %51
  %62 = load i16, ptr %39, align 2
  %63 = zext i16 %62 to i32
  %64 = add nuw nsw i32 %63, 4
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %64, i32 noundef 20, i32 noundef 1, i32 noundef %59) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #5
  br label %270

66:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #5
  %67 = load ptr, ptr %35, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #5
  %68 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %68, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #5
  store i8 -29, ptr %11, align 2
  %69 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 32, ptr %69, align 1
  %70 = load i16, ptr %39, align 2
  %71 = add i16 %70, 4
  store i16 %71, ptr %10, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %11, ptr %73, align 4
  %74 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %10, i32 noundef 1) #5
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %81, label %76

76:                                               ; preds = %66
  %77 = load i16, ptr %39, align 2
  %78 = zext i16 %77 to i32
  %79 = add nuw nsw i32 %78, 4
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %79, i32 noundef 227, i32 noundef 32, i32 noundef %74) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #5
  br label %270

81:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #5
  %82 = load ptr, ptr %35, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #5
  %83 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %83, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #5
  store i8 -30, ptr %9, align 2
  %84 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 -128, ptr %84, align 1
  %85 = load i16, ptr %39, align 2
  %86 = add i16 %85, 4
  store i16 %86, ptr %8, align 4
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %87, align 2
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %88, align 4
  %89 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %8, i32 noundef 1) #5
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %96, label %91

91:                                               ; preds = %81
  %92 = load i16, ptr %39, align 2
  %93 = zext i16 %92 to i32
  %94 = add nuw nsw i32 %93, 4
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %94, i32 noundef 226, i32 noundef 128, i32 noundef %89) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #5
  br label %270

96:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #5
  %97 = load ptr, ptr %35, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #5
  %98 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 0, ptr %98, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i8 -118, ptr %3, align 2
  %99 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 12, ptr %99, align 1
  %100 = load i16, ptr %39, align 2
  %101 = add i16 %100, 4
  store i16 %101, ptr %2, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %102, align 2
  store i16 2, ptr %98, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %103, align 4
  %104 = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %2, i32 noundef 1) #5
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %111, label %106

106:                                              ; preds = %96
  %107 = load i16, ptr %39, align 2
  %108 = zext i16 %107 to i32
  %109 = add nuw nsw i32 %108, 4
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %109, i32 noundef 138, i32 noundef 12, i32 noundef %104) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #5
  br label %270

111:                                              ; preds = %96
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #5
  %112 = load ptr, ptr %35, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #5
  %113 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %113, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #5
  store i8 -119, ptr %5, align 2
  %114 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 8, ptr %114, align 1
  %115 = load i16, ptr %39, align 2
  %116 = add i16 %115, 4
  store i16 %116, ptr %4, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %117, align 2
  store i16 2, ptr %113, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %118, align 4
  %119 = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %4, i32 noundef 1) #5
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %126, label %121

121:                                              ; preds = %111
  %122 = load i16, ptr %39, align 2
  %123 = zext i16 %122 to i32
  %124 = add nuw nsw i32 %123, 4
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %124, i32 noundef 137, i32 noundef 8, i32 noundef %119) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #5
  br label %270

126:                                              ; preds = %111
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #5
  %127 = load ptr, ptr %35, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #5
  %128 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %128, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #5
  store i8 113, ptr %7, align 2
  %129 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 45, ptr %129, align 1
  %130 = load i16, ptr %39, align 2
  %131 = add i16 %130, 4
  store i16 %131, ptr %6, align 4
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %132, align 2
  store i16 2, ptr %128, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %133, align 4
  %134 = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %6, i32 noundef 1) #5
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %141, label %136

136:                                              ; preds = %126
  %137 = load i16, ptr %39, align 2
  %138 = zext i16 %137 to i32
  %139 = add nuw nsw i32 %138, 4
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %139, i32 noundef 113, i32 noundef 45, i32 noundef %134) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #5
  br label %270

141:                                              ; preds = %126
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #5
  %142 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 4, i8 noundef zeroext 125, i8 noundef zeroext 7) #5
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %270

144:                                              ; preds = %141
  %145 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 4, i8 noundef zeroext 123, i8 noundef zeroext 0) #5
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %270

147:                                              ; preds = %144
  %148 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 4, i8 noundef zeroext 122, i8 noundef zeroext -3) #5
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %270

150:                                              ; preds = %147
  %151 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 4, i8 noundef zeroext -64, i8 noundef zeroext 18) #5
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %270

153:                                              ; preds = %150
  %154 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 4, i8 noundef zeroext -63, i8 noundef zeroext -110) #5
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %270

156:                                              ; preds = %153
  %157 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 4, i8 noundef zeroext -62, i8 noundef zeroext 28) #5
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %270

159:                                              ; preds = %156
  %160 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 4, i8 noundef zeroext 50, i8 noundef zeroext -128) #5
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %270

162:                                              ; preds = %159
  %163 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext -80) #5
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %270

165:                                              ; preds = %162
  %166 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 4, i8 noundef zeroext 21, i8 noundef zeroext 64) #5
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %270

168:                                              ; preds = %165
  %169 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 4, i8 noundef zeroext 84, i8 noundef zeroext 16) #5
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %270

171:                                              ; preds = %168
  %172 = getelementptr i8, ptr %0, i32 152
  %173 = load i32, ptr %172, align 4
  %174 = trunc i32 %173 to i8
  %175 = or i8 %174, -128
  %176 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext 2, i8 noundef zeroext %175) #5
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %270

178:                                              ; preds = %171
  %179 = getelementptr i8, ptr %0, i32 156
  %180 = load i32, ptr %179, align 4
  %181 = trunc i32 %180 to i8
  %182 = or i8 %181, -128
  %183 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext 33, i8 noundef zeroext %182) #5
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %270

185:                                              ; preds = %178
  %186 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 0, i8 noundef zeroext 82, i8 noundef zeroext 32) #5
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %270

188:                                              ; preds = %185
  %189 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 3) #5
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %270

191:                                              ; preds = %188
  %192 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 0, i8 noundef zeroext 98, i8 noundef zeroext 65) #5
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %270

194:                                              ; preds = %191
  %195 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 0, i8 noundef zeroext -10, i8 noundef zeroext 1) #5
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %270

197:                                              ; preds = %194
  %198 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 0, i8 noundef zeroext 119, i8 noundef zeroext 6) #5
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %270

200:                                              ; preds = %197
  %201 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 0, i8 noundef zeroext 76, i8 noundef zeroext 4) #5
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %270

203:                                              ; preds = %200
  %204 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext -64, i8 noundef zeroext 0) #5
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %270

206:                                              ; preds = %203
  %207 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext -63, i8 noundef zeroext 28) #5
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %270

209:                                              ; preds = %206
  %210 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext -62, i8 noundef zeroext -8) #5
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %270

212:                                              ; preds = %209
  %213 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext -61, i8 noundef zeroext 68) #5
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %270

215:                                              ; preds = %212
  %216 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext -60, i8 noundef zeroext 50) #5
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %270

218:                                              ; preds = %215
  %219 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext -59, i8 noundef zeroext 83) #5
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %270

221:                                              ; preds = %218
  %222 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext -58, i8 noundef zeroext 76) #5
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %270

224:                                              ; preds = %221
  %225 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext -57, i8 noundef zeroext 86) #5
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %270

227:                                              ; preds = %224
  %228 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext -56, i8 noundef zeroext 53) #5
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %270

230:                                              ; preds = %227
  %231 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext -54, i8 noundef zeroext 1) #5
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %270

233:                                              ; preds = %230
  %234 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext -53, i8 noundef zeroext 5) #5
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %270

236:                                              ; preds = %233
  %237 = getelementptr i8, ptr %0, i32 140
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %249, label %240

240:                                              ; preds = %236
  %241 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext -91, i8 noundef zeroext -96) #5
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %270

243:                                              ; preds = %240
  %244 = load ptr, ptr %237, align 4
  %245 = load i32, ptr %244, align 8
  %246 = trunc i32 %245 to i8
  %247 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext -89, i8 noundef zeroext %246) #5
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %252, label %270

249:                                              ; preds = %236
  %250 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext -91, i8 noundef zeroext -128) #5
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %270

252:                                              ; preds = %249, %243
  %253 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext -52, i8 noundef zeroext 19) #5
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %270

255:                                              ; preds = %252
  %256 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 2, i8 noundef zeroext -79, i8 noundef zeroext 32) #5
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %255
  %259 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 4, i8 noundef zeroext 16, i8 noundef zeroext 22) #5
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %258
  %262 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 4, i8 noundef zeroext 89, i8 noundef zeroext 96) #5
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %261
  %265 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 4, i8 noundef zeroext 84, i8 noundef zeroext 20) #5
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = call fastcc i32 @ps8622_set(ptr noundef %34, i8 noundef zeroext 2, i8 noundef zeroext -95, i8 noundef zeroext -111) #5
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %267, %264, %261, %258, %255, %252, %249, %243, %240, %233, %230, %227, %224, %221, %218, %215, %212, %209, %206, %203, %200, %197, %194, %191, %188, %185, %178, %171, %168, %165, %162, %159, %156, %153, %150, %147, %144, %141, %136, %121, %106, %91, %76, %61, %46
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef -5) #5
  br label %272

271:                                              ; preds = %267
  store i8 1, ptr %17, align 4
  br label %272

272:                                              ; preds = %271, %270, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

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
!9 = !{i8 0, i8 2}
