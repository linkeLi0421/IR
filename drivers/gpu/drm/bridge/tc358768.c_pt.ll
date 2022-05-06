; ModuleID = '/llk/IR/drivers/gpu/drm/bridge/tc358768.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/tc358768.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_timings = type { i32, i32, i32, i8 }
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
%struct.tc358768_priv = type { ptr, ptr, ptr, [3 x %struct.regulator_bulk_data], ptr, i32, i32, %struct.mipi_dsi_host, %struct.drm_bridge, %struct.tc358768_dsi_output, i32, i32, i32, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.tc358768_dsi_output = type { ptr, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.mipi_dsi_packet = type { i32, [4 x i8], i32, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.73, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.anon.73 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.75 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@tc358768_i2c_ids = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tc358768\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tc358778\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@tc358768_of_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc358768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc358778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author271 = internal constant [46 x i8] c"author=Peter Ujfalusi <peter.ujfalusi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description272 = internal constant [48 x i8] c"description=TC358768AXBG/TC358778XBG DSI bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_license273 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@tc358768_driver = internal global %struct.i2c_driver { i32 0, ptr @tc358768_i2c_probe, ptr @tc358768_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tc358768_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tc358768_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"tc358768\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@tc358768_regmap_config = internal constant %struct.regmap_config { ptr @.str, i32 16, i32 0, i32 0, i32 16, ptr @tc358768_writeable_reg, ptr @tc358768_readable_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1580, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1, i32 1, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to init regmap\0A\00", align 1
@tc358768_dsi_host_ops = internal constant %struct.mipi_dsi_host_ops { ptr @tc358768_dsi_host_attach, ptr @tc358768_dsi_host_detach, ptr @tc358768_dsi_host_transfer }, align 4
@tc358768_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr @tc358768_bridge_attach, ptr null, ptr @tc358768_bridge_mode_valid, ptr null, ptr @tc358768_bridge_disable, ptr @tc358768_bridge_post_disable, ptr null, ptr @tc358768_bridge_pre_enable, ptr @tc358768_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@default_tc358768_timings = internal constant %struct.drm_bridge_timings { i32 74, i32 0, i32 0, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to get regulators: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"vddc\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"vddmipi\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"vddio\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"unsupported number of data lanes(%u)\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Only MIPI_DSI_MODE_VIDEO is supported\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Only MIPI_DSI_FMT_RGB888 tested!\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"data-lines\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Bridge is not enabled\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"MIPI rx is not supported\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Maximum 8 byte MIPI tx is supported\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Software disable failed: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"needs atomic updates support\0A\00", align 1
@tc358768_calc_pll.frs_limits = internal unnamed_addr constant [5 x i32] [i32 1000000000, i32 500000000, i32 250000000, i32 125000000, i32 62500000], align 4
@.str.17 = private unnamed_addr constant [35 x i8] c"could not find suitable PLL setup\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"error disabling regulators (%d)\0A\00", align 1
@tc358768_bridge_pre_enable.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.19 = private unnamed_addr constant [63 x i8] c"Non-continuous mode unimplemented, falling back to continuous\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Software reset failed: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"PLL setup failed: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Invalid data format (%u)\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Bridge pre_enable failed: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"error enabling refclk (%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"error enabling regulators (%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"PLL calculation failed: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"Bridge enable failed: %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author271, ptr @__UNIQUE_ID_description272, ptr @__UNIQUE_ID_license273], section "llvm.metadata"
@switch.table.tc358768_dsi_host_attach = private unnamed_addr constant [4 x i32] [i32 24, i32 24, i32 18, i32 16], align 4

@__mod_i2c__tc358768_i2c_ids_device_table = dso_local alias [3 x %struct.i2c_device_id], ptr @tc358768_i2c_ids
@__mod_of__tc358768_of_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @tc358768_of_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @tc358768_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @tc358768_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc358768_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 244, i32 noundef 3520) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %11, align 8
  store ptr %3, ptr %8, align 4
  %12 = getelementptr %struct.tc358768_priv, ptr %8, i32 0, i32 3, i32 0
  store ptr @.str.5, ptr %12, align 4
  %13 = getelementptr %struct.tc358768_priv, ptr %8, i32 0, i32 3, i32 1
  store ptr @.str.6, ptr %13, align 4
  %14 = getelementptr %struct.tc358768_priv, ptr %8, i32 0, i32 3, i32 2
  store ptr @.str.7, ptr %14, align 4
  %15 = tail call i32 @devm_regulator_bulk_get(ptr noundef %3, i32 noundef 3, ptr noundef %12) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.4, i32 noundef %15) #9
  br label %47

19:                                               ; preds = %10
  %20 = icmp eq i32 %15, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %19
  %22 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  %23 = getelementptr inbounds %struct.tc358768_priv, ptr %8, i32 0, i32 4
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = ptrtoint ptr %22 to i32
  br label %47

27:                                               ; preds = %21
  %28 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef 7) #8
  %29 = getelementptr inbounds %struct.tc358768_priv, ptr %8, i32 0, i32 2
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = ptrtoint ptr %28 to i32
  br label %47

33:                                               ; preds = %27
  %34 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @tc358768_regmap_config, ptr noundef null, ptr noundef null) #8
  %35 = getelementptr inbounds %struct.tc358768_priv, ptr %8, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  %38 = load ptr, ptr %35, align 4
  %39 = ptrtoint ptr %38 to i32
  br label %47

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.tc358768_priv, ptr %8, i32 0, i32 7
  store ptr %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.tc358768_priv, ptr %8, i32 0, i32 7, i32 1
  store ptr @tc358768_dsi_host_ops, ptr %42, align 4
  %43 = getelementptr inbounds %struct.tc358768_priv, ptr %8, i32 0, i32 8, i32 7
  store ptr @tc358768_bridge_funcs, ptr %43, align 4
  %44 = getelementptr inbounds %struct.tc358768_priv, ptr %8, i32 0, i32 8, i32 6
  store ptr @default_tc358768_timings, ptr %44, align 4
  %45 = getelementptr inbounds %struct.tc358768_priv, ptr %8, i32 0, i32 8, i32 4
  store ptr %5, ptr %45, align 4
  store ptr %8, ptr %11, align 8
  %46 = tail call i32 @mipi_dsi_host_register(ptr noundef %41) #8
  br label %47

47:                                               ; preds = %40, %37, %31, %25, %19, %17, %7, %2
  %48 = phi i32 [ %26, %25 ], [ %32, %31 ], [ %39, %37 ], [ %46, %40 ], [ -19, %2 ], [ -12, %7 ], [ %15, %19 ], [ %15, %17 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc358768_i2c_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tc358768_priv, ptr %3, i32 0, i32 7
  tail call void @mipi_dsi_host_unregister(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tc358768_writeable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = tail call fastcc zeroext i1 @tc358768_is_reserved_reg(i32 noundef %1)
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  switch i32 %1, label %5 [
    i32 0, label %6
    i32 248, label %6
    i32 1072, label %6
    i32 1073, label %6
    i32 1074, label %6
    i32 1075, label %6
    i32 1076, label %6
    i32 1077, label %6
    i32 1078, label %6
    i32 1079, label %6
    i32 1080, label %6
    i32 1081, label %6
    i32 1082, label %6
    i32 1083, label %6
    i32 1084, label %6
    i32 1085, label %6
    i32 1086, label %6
    i32 1087, label %6
    i32 1088, label %6
    i32 1089, label %6
    i32 1090, label %6
    i32 1091, label %6
    i32 1092, label %6
    i32 1093, label %6
    i32 1094, label %6
    i32 1095, label %6
    i32 1096, label %6
    i32 1097, label %6
    i32 1098, label %6
    i32 1099, label %6
    i32 1100, label %6
    i32 1101, label %6
    i32 1102, label %6
    i32 1103, label %6
    i32 1104, label %6
    i32 1105, label %6
    i32 1106, label %6
    i32 1107, label %6
    i32 1108, label %6
    i32 1109, label %6
    i32 1110, label %6
    i32 1036, label %6
    i32 1037, label %6
    i32 1038, label %6
    i32 1039, label %6
    i32 1040, label %6
    i32 1041, label %6
    i32 1042, label %6
    i32 1043, label %6
    i32 1044, label %6
    i32 1045, label %6
    i32 1046, label %6
    i32 1047, label %6
    i32 1048, label %6
    i32 1049, label %6
    i32 1050, label %6
    i32 520, label %6
    i32 521, label %6
    i32 522, label %6
  ]

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %2
  %7 = phi i1 [ true, %5 ], [ false, %2 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ]
  ret i1 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tc358768_readable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = tail call fastcc zeroext i1 @tc358768_is_reserved_reg(i32 noundef %1)
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  switch i32 %1, label %5 [
    i32 516, label %6
    i32 232, label %6
    i32 1304, label %6
    i32 1305, label %6
    i32 1306, label %6
    i32 1292, label %6
    i32 1293, label %6
    i32 1294, label %6
    i32 1280, label %6
    i32 1281, label %6
    i32 1282, label %6
  ]

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %2
  %7 = phi i1 [ true, %5 ], [ false, %2 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ], [ false, %4 ]
  ret i1 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @tc358768_is_reserved_reg(i32 noundef %0) unnamed_addr #5 {
  switch i32 %0, label %2 [
    i32 512, label %3
    i32 524, label %3
    i32 1052, label %3
    i32 1053, label %3
    i32 1054, label %3
    i32 1055, label %3
    i32 1056, label %3
    i32 1057, label %3
    i32 1058, label %3
    i32 1059, label %3
    i32 1060, label %3
    i32 1061, label %3
    i32 1062, label %3
    i32 1063, label %3
    i32 1064, label %3
    i32 1065, label %3
    i32 1066, label %3
    i32 1067, label %3
    i32 1068, label %3
    i32 1069, label %3
    i32 1070, label %3
    i32 1071, label %3
    i32 1024, label %3
    i32 1025, label %3
    i32 1026, label %3
    i32 1027, label %3
    i32 1028, label %3
    i32 1029, label %3
    i32 1030, label %3
    i32 1031, label %3
    i32 1032, label %3
    i32 276, label %3
    i32 277, label %3
    i32 278, label %3
    i32 279, label %3
    i32 280, label %3
    i32 281, label %3
    i32 282, label %3
    i32 283, label %3
    i32 284, label %3
    i32 285, label %3
    i32 286, label %3
    i32 287, label %3
    i32 288, label %3
    i32 289, label %3
    i32 290, label %3
    i32 291, label %3
    i32 292, label %3
    i32 293, label %3
    i32 294, label %3
    i32 295, label %3
    i32 296, label %3
    i32 297, label %3
    i32 298, label %3
    i32 299, label %3
    i32 300, label %3
    i32 301, label %3
    i32 302, label %3
    i32 303, label %3
    i32 304, label %3
    i32 305, label %3
    i32 306, label %3
    i32 307, label %3
    i32 308, label %3
    i32 309, label %3
    i32 310, label %3
    i32 311, label %3
    i32 312, label %3
    i32 313, label %3
    i32 314, label %3
    i32 315, label %3
    i32 316, label %3
    i32 317, label %3
    i32 318, label %3
    i32 319, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ]
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc358768_dsi_host_attach(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr i8, ptr %0, i32 -60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 4
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.8, i32 noundef %7) #9
  br label %70

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.9) #9
  br label %70

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.10) #9
  br label %70

24:                                               ; preds = %18
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %27, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %24
  %31 = load ptr, ptr %4, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load ptr, ptr %3, align 4
  br label %42

35:                                               ; preds = %30
  %36 = call ptr @drm_panel_bridge_add_typed(ptr noundef nonnull %31, i32 noundef 16) #8
  store ptr %36, ptr %3, align 4
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %4, align 4
  br label %42

40:                                               ; preds = %35
  %41 = ptrtoint ptr %36 to i32
  br label %70

42:                                               ; preds = %38, %33
  %43 = phi ptr [ null, %33 ], [ %39, %38 ]
  %44 = phi ptr [ %34, %33 ], [ %36, %38 ]
  %45 = getelementptr i8, ptr %0, i32 148
  store ptr %1, ptr %45, align 4
  %46 = getelementptr i8, ptr %0, i32 156
  store ptr %44, ptr %46, align 4
  %47 = getelementptr i8, ptr %0, i32 152
  store ptr %43, ptr %47, align 4
  %48 = load i32, ptr %6, align 8
  %49 = getelementptr i8, ptr %0, i32 164
  store i32 %48, ptr %49, align 4
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 25
  %52 = load ptr, ptr %51, align 8
  %53 = call ptr @of_graph_get_endpoint_by_regs(ptr noundef %52, i32 noundef 0, i32 noundef 0) #8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %42
  %56 = getelementptr i8, ptr %0, i32 160
  %57 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %53, ptr noundef nonnull @.str.11, ptr noundef %56, i32 noundef 1, i32 noundef 0) #8
  call void @of_node_put(ptr noundef nonnull %53) #8
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %68, label %59

59:                                               ; preds = %55, %42
  %60 = load i32, ptr %19, align 4
  %61 = icmp ult i32 %60, 4
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds [4 x i32], ptr @switch.table.tc358768_dsi_host_attach, i32 0, i32 %60
  %64 = load i32, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i32 [ %64, %62 ], [ -22, %59 ]
  %67 = getelementptr i8, ptr %0, i32 160
  store i32 %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %65, %55
  %69 = getelementptr i8, ptr %0, i32 16
  call void @drm_bridge_add(ptr noundef %69) #8
  br label %70

70:                                               ; preds = %68, %40, %24, %22, %16, %9
  %71 = phi i32 [ -22, %9 ], [ -524, %22 ], [ %41, %40 ], [ 0, %68 ], [ -524, %16 ], [ %28, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc358768_dsi_host_detach(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 16
  tail call void @drm_bridge_remove(ptr noundef %3) #8
  %4 = getelementptr i8, ptr %0, i32 152
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 156
  %9 = load ptr, ptr %8, align 4
  tail call void @drm_panel_bridge_remove(ptr noundef %9) #8
  br label %10

10:                                               ; preds = %7, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc358768_dsi_host_transfer(ptr nocapture noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mipi_dsi_packet, align 4
  %11 = getelementptr i8, ptr %0, i32 -60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %10, i8 0, i32 16, i1 false), !annotation !8
  %12 = getelementptr i8, ptr %0, i32 -8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.12) #9
  br label %146

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.13) #9
  br label %146

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.14) #9
  br label %146

29:                                               ; preds = %23
  %30 = call i32 @mipi_dsi_create_packet(ptr noundef nonnull %10, ptr noundef %1) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %146

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = call zeroext i1 @mipi_dsi_packet_format_is_short(i8 noundef zeroext %34) #8
  %36 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %10, i32 0, i32 1
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, 63
  %39 = zext i8 %38 to i32
  br i1 %35, label %40, label %71

40:                                               ; preds = %32
  %41 = or i32 %39, 4096
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 %41, ptr %9, align 4
  %42 = getelementptr i8, ptr %0, i32 -4
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  br label %51

46:                                               ; preds = %40
  %47 = getelementptr i8, ptr %0, i32 -56
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 @regmap_bulk_write(ptr noundef %48, i32 noundef 1538, ptr noundef nonnull %9, i32 noundef 1) #8
  store i32 %49, ptr %42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46, %45
  %52 = phi i32 [ %49, %46 ], [ %43, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  br label %69

53:                                               ; preds = %46
  %54 = load ptr, ptr %47, align 4
  %55 = call i32 @regmap_bulk_write(ptr noundef %54, i32 noundef 1540, ptr noundef nonnull %8, i32 noundef 1) #8
  store i32 %55, ptr %42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  %56 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %10, i32 0, i32 1, i32 2
  %57 = load i8, ptr %56, align 2
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %10, i32 0, i32 1, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %59, %62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 %63, ptr %7, align 4
  %64 = icmp eq i32 %55, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = getelementptr i8, ptr %0, i32 -56
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 @regmap_bulk_write(ptr noundef %67, i32 noundef 1552, ptr noundef nonnull %7, i32 noundef 1) #8
  store i32 %68, ptr %42, align 4
  br label %69

69:                                               ; preds = %65, %53, %51
  %70 = phi i32 [ %55, %53 ], [ %68, %65 ], [ %52, %51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br label %131

71:                                               ; preds = %32
  %72 = or i32 %39, 16384
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 %72, ptr %6, align 4
  %73 = getelementptr i8, ptr %0, i32 -4
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %77 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %10, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  br label %90

79:                                               ; preds = %71
  %80 = getelementptr i8, ptr %0, i32 -56
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 @regmap_bulk_write(ptr noundef %81, i32 noundef 1538, ptr noundef nonnull %6, i32 noundef 1) #8
  store i32 %82, ptr %73, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %83 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %10, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 %84, ptr %5, align 4
  %85 = icmp eq i32 %82, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load ptr, ptr %80, align 4
  %88 = call i32 @regmap_bulk_write(ptr noundef %87, i32 noundef 1540, ptr noundef nonnull %5, i32 noundef 1) #8
  store i32 %88, ptr %73, align 4
  %89 = load i32, ptr %83, align 4
  br label %90

90:                                               ; preds = %86, %79, %76
  %91 = phi i32 [ %74, %76 ], [ %82, %79 ], [ %88, %86 ]
  %92 = phi i32 [ %78, %76 ], [ %84, %79 ], [ %89, %86 ]
  %93 = phi ptr [ %77, %76 ], [ %83, %79 ], [ %83, %86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %94 = icmp eq i32 %92, 0
  br i1 %94, label %131, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %10, i32 0, i32 3
  %97 = getelementptr i8, ptr %0, i32 -56
  br label %98

98:                                               ; preds = %126, %95
  %99 = phi i32 [ %92, %95 ], [ %127, %126 ]
  %100 = phi i32 [ %91, %95 ], [ %128, %126 ]
  %101 = phi i32 [ 0, %95 ], [ %129, %126 ]
  %102 = load ptr, ptr %96, align 4
  %103 = getelementptr i8, ptr %102, i32 %101
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %101, 1
  %107 = icmp ult i32 %106, %99
  br i1 %107, label %108, label %114

108:                                              ; preds = %98
  %109 = getelementptr i8, ptr %102, i32 %106
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %111, 8
  %113 = or i32 %112, %105
  br label %114

114:                                              ; preds = %108, %98
  %115 = phi i32 [ %113, %108 ], [ %105, %98 ]
  %116 = and i32 %115, 65535
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 %116, ptr %4, align 4
  %117 = icmp eq i32 %100, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = add i32 %101, 1552
  %120 = add i32 %101, 16
  %121 = icmp ult i32 %120, -1280
  %122 = select i1 %121, i32 1, i32 2
  %123 = load ptr, ptr %97, align 4
  %124 = call i32 @regmap_bulk_write(ptr noundef %123, i32 noundef %119, ptr noundef nonnull %4, i32 noundef %122) #8
  store i32 %124, ptr %73, align 4
  %125 = load i32, ptr %93, align 4
  br label %126

126:                                              ; preds = %118, %114
  %127 = phi i32 [ %99, %114 ], [ %125, %118 ]
  %128 = phi i32 [ %100, %114 ], [ %124, %118 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %129 = add i32 %101, 2
  %130 = icmp ult i32 %129, %127
  br i1 %130, label %98, label %131

131:                                              ; preds = %126, %90, %69
  %132 = phi i32 [ %91, %90 ], [ %70, %69 ], [ %128, %126 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 1, ptr %3, align 4
  %133 = getelementptr i8, ptr %0, i32 -4
  %134 = icmp eq i32 %132, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %133, align 4
  br label %141

136:                                              ; preds = %131
  %137 = getelementptr i8, ptr %0, i32 -56
  %138 = load ptr, ptr %137, align 4
  %139 = call i32 @regmap_bulk_write(ptr noundef %138, i32 noundef 1536, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %133, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %136, %135
  %142 = phi i32 [ %132, %135 ], [ %139, %136 ]
  %143 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %143, ptr noundef nonnull @.str.15, i32 noundef %142) #9
  br label %146

144:                                              ; preds = %136
  %145 = load i32, ptr %10, align 4
  br label %146

146:                                              ; preds = %144, %141, %29, %27, %21, %15
  %147 = phi i32 [ -524, %21 ], [ -524, %27 ], [ -19, %15 ], [ %30, %29 ], [ %142, %141 ], [ %145, %144 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8
  ret i32 %147
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_add_typed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_create_packet(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mipi_dsi_packet_format_is_short(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc358768_bridge_attach(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 16
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %0, i32 -76
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.16) #9
  br label %23

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 140
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @drm_bridge_attach(ptr noundef %19, ptr noundef %21, ptr noundef %0, i32 noundef %1) #8
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i32 [ %22, %17 ], [ -524, %14 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc358768_bridge_mode_valid(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -76
  %5 = tail call fastcc i32 @tc358768_calc_pll(ptr noundef %4, ptr noundef %2, i1 noundef zeroext true)
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 0, i32 17
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc358768_bridge_disable(ptr nocapture noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr i8, ptr %0, i32 -76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !8
  %9 = getelementptr i8, ptr %0, i32 -20
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  br label %25

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 -72
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef 50, ptr noundef nonnull %7, i32 noundef 1) #8
  store i32 %16, ptr %9, align 4
  %17 = load i32, ptr %7, align 4
  %18 = or i32 %17, 32768
  %19 = icmp eq i32 %18, %17
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 %18, ptr %6, align 4
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load ptr, ptr %14, align 4
  %24 = call i32 @regmap_bulk_write(ptr noundef %23, i32 noundef 50, ptr noundef nonnull %6, i32 noundef 1) #8
  store i32 %24, ptr %9, align 4
  br label %25

25:                                               ; preds = %22, %20, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %26

26:                                               ; preds = %25, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @msleep(i32 noundef 50) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %27 = load i32, ptr %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %0, i32 -72
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 @regmap_bulk_read(ptr noundef %31, i32 noundef 4, ptr noundef nonnull %5, i32 noundef 1) #8
  store i32 %32, ptr %9, align 4
  %33 = load i32, ptr %5, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %27, %26 ], [ %32, %29 ]
  %36 = phi i32 [ 0, %26 ], [ %33, %29 ]
  %37 = and i32 %36, -65
  %38 = icmp eq i32 %37, %36
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 %37, ptr %4, align 4
  %40 = icmp eq i32 %35, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = getelementptr i8, ptr %0, i32 -72
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 @regmap_bulk_write(ptr noundef %43, i32 noundef 4, ptr noundef nonnull %4, i32 noundef 1) #8
  store i32 %44, ptr %9, align 4
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi i32 [ %44, %41 ], [ %35, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %47

47:                                               ; preds = %45, %34
  %48 = phi i32 [ %35, %34 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  br label %63

51:                                               ; preds = %47
  %52 = getelementptr i8, ptr %0, i32 -72
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 @regmap_bulk_read(ptr noundef %53, i32 noundef 50, ptr noundef nonnull %3, i32 noundef 1) #8
  store i32 %54, ptr %9, align 4
  %55 = load i32, ptr %3, align 4
  %56 = or i32 %55, 16384
  %57 = icmp eq i32 %56, %55
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 %56, ptr %2, align 4
  %59 = icmp eq i32 %54, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load ptr, ptr %52, align 4
  %62 = call i32 @regmap_bulk_write(ptr noundef %61, i32 noundef 50, ptr noundef nonnull %2, i32 noundef 1) #8
  br label %63

63:                                               ; preds = %60, %58, %50
  %64 = phi i32 [ %48, %50 ], [ %62, %60 ], [ %54, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %65

65:                                               ; preds = %63, %51
  %66 = phi i32 [ %54, %51 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.15, i32 noundef %66) #9
  br label %70

70:                                               ; preds = %68, %65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc358768_bridge_post_disable(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -76
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -68
  %8 = load ptr, ptr %7, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef 1) #8
  %9 = getelementptr i8, ptr %0, i32 -64
  %10 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %9) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef %10) #9
  br label %14

14:                                               ; preds = %12, %6
  %15 = getelementptr i8, ptr %0, i32 -28
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  tail call void @clk_unprepare(ptr noundef %16) #8
  store i32 0, ptr %3, align 4
  br label %17

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc358768_bridge_pre_enable(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = getelementptr i8, ptr %0, i32 -76
  %46 = getelementptr i8, ptr %0, i32 132
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.mipi_dsi_device, ptr %47, i32 0, i32 6
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 1024
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %1
  %53 = load i1, ptr @tc358768_bridge_pre_enable.__print_once, align 1
  br i1 %53, label %56, label %54

54:                                               ; preds = %52
  store i1 true, ptr @tc358768_bridge_pre_enable.__print_once, align 1
  %55 = load ptr, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.19) #9
  br label %56

56:                                               ; preds = %54, %52, %1
  %57 = phi i32 [ %49, %1 ], [ 0, %54 ], [ 0, %52 ]
  %58 = getelementptr i8, ptr %0, i32 -24
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %0, i32 -28
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 @clk_prepare(ptr noundef %63) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = tail call i32 @clk_enable(ptr noundef %63) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  tail call void @clk_unprepare(ptr noundef %63) #8
  br label %70

70:                                               ; preds = %69, %61
  %71 = phi i32 [ %64, %61 ], [ %67, %69 ]
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load ptr, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.24, i32 noundef %71) #9
  br label %75

75:                                               ; preds = %73, %70, %66
  %76 = getelementptr i8, ptr %0, i32 -64
  %77 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %76) #8
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load ptr, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.25, i32 noundef %77) #9
  br label %81

81:                                               ; preds = %79, %75
  %82 = getelementptr i8, ptr %0, i32 -68
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #8
  %86 = load ptr, ptr %82, align 4
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi ptr [ %86, %85 ], [ null, %81 ]
  tail call void @gpiod_set_value_cansleep(ptr noundef %88, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  store i32 1, ptr %58, align 4
  br label %89

89:                                               ; preds = %87, %56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %44) #8
  store i32 1, ptr %44, align 4
  %90 = getelementptr i8, ptr %0, i32 -20
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %43) #8
  br label %99

94:                                               ; preds = %89
  %95 = getelementptr i8, ptr %0, i32 -72
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 @regmap_bulk_write(ptr noundef %96, i32 noundef 2, ptr noundef nonnull %44, i32 noundef 1) #8
  store i32 %97, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %43) #8
  store i32 0, ptr %43, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94, %93
  %100 = phi i32 [ %97, %94 ], [ %91, %93 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43) #8
  store i32 0, ptr %90, align 4
  br label %105

101:                                              ; preds = %94
  %102 = load ptr, ptr %95, align 4
  %103 = call i32 @regmap_bulk_write(ptr noundef %102, i32 noundef 2, ptr noundef nonnull %43, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43) #8
  store i32 0, ptr %90, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %101, %99
  %106 = phi i32 [ %100, %99 ], [ %103, %101 ]
  %107 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.20, i32 noundef %106) #9
  %108 = load i32, ptr %58, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %755, label %110

110:                                              ; preds = %105
  %111 = getelementptr i8, ptr %0, i32 -68
  %112 = load ptr, ptr %111, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %112, i32 noundef 1) #8
  %113 = getelementptr i8, ptr %0, i32 -64
  %114 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %113) #8
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.18, i32 noundef %114) #9
  br label %118

118:                                              ; preds = %116, %110
  %119 = getelementptr i8, ptr %0, i32 -28
  %120 = load ptr, ptr %119, align 4
  call void @clk_disable(ptr noundef %120) #8
  call void @clk_unprepare(ptr noundef %120) #8
  store i32 0, ptr %58, align 4
  br label %755

121:                                              ; preds = %101
  %122 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.drm_encoder, ptr %123, i32 0, i32 8
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.drm_crtc, ptr %125, i32 0, i32 22
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7
  %129 = call fastcc i32 @tc358768_calc_pll(ptr noundef %45, ptr noundef %128, i1 noundef zeroext false) #8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %121
  %132 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.26, i32 noundef %129) #9
  br label %165

133:                                              ; preds = %121
  %134 = getelementptr i8, ptr %0, i32 152
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr i8, ptr %0, i32 156
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr i8, ptr %0, i32 160
  %139 = load i32, ptr %138, align 4
  %140 = shl i32 %137, 12
  %141 = or i32 %140, %135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %42) #8
  store i32 %141, ptr %42, align 4
  %142 = load i32, ptr %90, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %133
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %42) #8
  %145 = shl i32 %139, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %41) #8
  br label %155

146:                                              ; preds = %133
  %147 = load ptr, ptr %95, align 4
  %148 = call i32 @regmap_bulk_write(ptr noundef %147, i32 noundef 22, ptr noundef nonnull %42, i32 noundef 1) #8
  store i32 %148, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %42) #8
  %149 = shl i32 %139, 10
  %150 = or i32 %149, 515
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %41) #8
  store i32 %150, ptr %41, align 4
  %151 = icmp eq i32 %148, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load ptr, ptr %95, align 4
  %154 = call i32 @regmap_bulk_write(ptr noundef %153, i32 noundef 24, ptr noundef nonnull %41, i32 noundef 1) #8
  store i32 %154, ptr %90, align 4
  br label %155

155:                                              ; preds = %152, %146, %144
  %156 = phi i32 [ %145, %144 ], [ %149, %146 ], [ %149, %152 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %41) #8
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %157 = or i32 %156, 531
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %40) #8
  store i32 %157, ptr %40, align 4
  %158 = load i32, ptr %90, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %40) #8
  store i32 0, ptr %90, align 4
  br label %165

161:                                              ; preds = %155
  %162 = load ptr, ptr %95, align 4
  %163 = call i32 @regmap_bulk_write(ptr noundef %162, i32 noundef 24, ptr noundef nonnull %40, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %40) #8
  store i32 0, ptr %90, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %181, label %165

165:                                              ; preds = %161, %160, %131
  %166 = phi i32 [ %129, %131 ], [ %163, %161 ], [ %158, %160 ]
  %167 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.21, i32 noundef %166) #9
  %168 = load i32, ptr %58, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %755, label %170

170:                                              ; preds = %165
  %171 = getelementptr i8, ptr %0, i32 -68
  %172 = load ptr, ptr %171, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %172, i32 noundef 1) #8
  %173 = getelementptr i8, ptr %0, i32 -64
  %174 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %173) #8
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.18, i32 noundef %174) #9
  br label %178

178:                                              ; preds = %176, %170
  %179 = getelementptr i8, ptr %0, i32 -28
  %180 = load ptr, ptr %179, align 4
  call void @clk_disable(ptr noundef %180) #8
  call void @clk_unprepare(ptr noundef %180) #8
  store i32 0, ptr %58, align 4
  br label %755

181:                                              ; preds = %161
  %182 = getelementptr i8, ptr %0, i32 164
  %183 = load i32, ptr %182, align 4
  %184 = lshr i32 %183, 2
  %185 = getelementptr inbounds %struct.mipi_dsi_device, ptr %47, i32 0, i32 5
  %186 = load i32, ptr %185, align 4
  switch i32 %186, label %241 [
    i32 0, label %187
    i32 1, label %200
    i32 2, label %213
    i32 3, label %228
  ]

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 1
  %189 = load i16, ptr %188, align 4
  %190 = zext i16 %189 to i32
  %191 = mul nuw nsw i32 %190, 3
  %192 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 4
  %193 = load i16, ptr %192, align 2
  %194 = zext i16 %193 to i32
  %195 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 2
  %196 = load i16, ptr %195, align 2
  %197 = zext i16 %196 to i32
  %198 = sub nsw i32 %194, %197
  %199 = mul nsw i32 %198, 3
  br label %243

200:                                              ; preds = %181
  %201 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 1
  %202 = load i16, ptr %201, align 4
  %203 = zext i16 %202 to i32
  %204 = mul nuw nsw i32 %203, 3
  %205 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 4
  %206 = load i16, ptr %205, align 2
  %207 = zext i16 %206 to i32
  %208 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 2
  %209 = load i16, ptr %208, align 2
  %210 = zext i16 %209 to i32
  %211 = sub nsw i32 %207, %210
  %212 = mul nsw i32 %211, 3
  br label %243

213:                                              ; preds = %181
  %214 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 1
  %215 = load i16, ptr %214, align 4
  %216 = zext i16 %215 to i32
  %217 = mul nuw nsw i32 %216, 18
  %218 = lshr i32 %217, 3
  %219 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 4
  %220 = load i16, ptr %219, align 2
  %221 = zext i16 %220 to i32
  %222 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 2
  %223 = load i16, ptr %222, align 2
  %224 = zext i16 %223 to i32
  %225 = sub nsw i32 %221, %224
  %226 = mul nsw i32 %225, 18
  %227 = sdiv i32 %226, 8
  br label %243

228:                                              ; preds = %181
  %229 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 1
  %230 = load i16, ptr %229, align 4
  %231 = zext i16 %230 to i32
  %232 = shl nuw nsw i32 %231, 1
  %233 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 4
  %234 = load i16, ptr %233, align 2
  %235 = zext i16 %234 to i32
  %236 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 2
  %237 = load i16, ptr %236, align 2
  %238 = zext i16 %237 to i32
  %239 = sub nsw i32 %235, %238
  %240 = shl nsw i32 %239, 1
  br label %243

241:                                              ; preds = %181
  %242 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %242, ptr noundef nonnull @.str.22, i32 noundef %186) #9
  call fastcc void @tc358768_hw_disable(ptr noundef %45)
  br label %755

243:                                              ; preds = %228, %213, %200, %187
  %244 = phi i32 [ %232, %228 ], [ %218, %213 ], [ %204, %200 ], [ %191, %187 ]
  %245 = phi i32 [ 14, %228 ], [ 46, %213 ], [ 30, %200 ], [ 62, %187 ]
  %246 = phi i32 [ %240, %228 ], [ %227, %213 ], [ %212, %200 ], [ %199, %187 ]
  %247 = phi i32 [ 87, %228 ], [ 79, %213 ], [ 71, %200 ], [ 55, %187 ]
  %248 = call i32 @llvm.umax.i32(i32 %246, i32 41)
  %249 = add i32 %248, -40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %39) #8
  store i32 %249, ptr %39, align 4
  %250 = load ptr, ptr %95, align 4
  %251 = call i32 @regmap_bulk_write(ptr noundef %250, i32 noundef 6, ptr noundef nonnull %39, i32 noundef 1) #8
  store i32 %251, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %39) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %38) #8
  store i32 %247, ptr %38, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %243
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #8
  br label %258

254:                                              ; preds = %243
  %255 = load ptr, ptr %95, align 4
  %256 = call i32 @regmap_bulk_write(ptr noundef %255, i32 noundef 8, ptr noundef nonnull %38, i32 noundef 1) #8
  store i32 %256, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #8
  store i32 %245, ptr %37, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %254, %253
  %259 = phi i32 [ %251, %253 ], [ %256, %254 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36) #8
  br label %267

260:                                              ; preds = %254
  %261 = load ptr, ptr %95, align 4
  %262 = call i32 @regmap_bulk_write(ptr noundef %261, i32 noundef 80, ptr noundef nonnull %37, i32 noundef 1) #8
  store i32 %262, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36) #8
  store i32 0, ptr %36, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %260
  %265 = load ptr, ptr %95, align 4
  %266 = call i32 @regmap_bulk_write(ptr noundef %265, i32 noundef 320, ptr noundef nonnull %36, i32 noundef 2) #8
  store i32 %266, ptr %90, align 4
  br label %267

267:                                              ; preds = %264, %260, %258
  %268 = phi i32 [ %262, %260 ], [ %266, %264 ], [ %259, %258 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36) #8
  %269 = getelementptr inbounds %struct.mipi_dsi_device, ptr %47, i32 0, i32 4
  %270 = load i32, ptr %269, align 8
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %291, label %272

272:                                              ; preds = %286, %267
  %273 = phi i32 [ %287, %286 ], [ %270, %267 ]
  %274 = phi i32 [ %288, %286 ], [ %268, %267 ]
  %275 = phi i32 [ %289, %286 ], [ 0, %267 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35) #8
  store i32 0, ptr %35, align 4
  %276 = icmp eq i32 %274, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %272
  %278 = shl i32 %275, 2
  %279 = add i32 %278, 324
  %280 = add i32 %278, -1212
  %281 = icmp ult i32 %280, -1280
  %282 = select i1 %281, i32 1, i32 2
  %283 = load ptr, ptr %95, align 4
  %284 = call i32 @regmap_bulk_write(ptr noundef %283, i32 noundef %279, ptr noundef nonnull %35, i32 noundef %282) #8
  store i32 %284, ptr %90, align 4
  %285 = load i32, ptr %269, align 8
  br label %286

286:                                              ; preds = %277, %272
  %287 = phi i32 [ %273, %272 ], [ %285, %277 ]
  %288 = phi i32 [ %274, %272 ], [ %284, %277 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #8
  %289 = add nuw i32 %275, 1
  %290 = icmp ult i32 %289, %287
  br i1 %290, label %272, label %291

291:                                              ; preds = %286, %267
  %292 = phi i32 [ %268, %267 ], [ %288, %286 ]
  %293 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %184, i64 1000000000000) #10, !srcloc !9
  %294 = extractvalue { i64, i64 } %293, 1
  %295 = trunc i64 %294 to i32
  %296 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %183, i64 1000000000000) #10, !srcloc !9
  %297 = extractvalue { i64, i64 } %296, 1
  %298 = trunc i64 %297 to i32
  %299 = lshr i32 %298, 1
  %300 = shl i32 %298, 1
  %301 = add i32 %300, %295
  %302 = add i32 %295, 100000000
  %303 = udiv i32 %302, %295
  %304 = add i32 %303, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #8
  store i32 %304, ptr %34, align 4
  %305 = icmp eq i32 %292, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %291
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #8
  %307 = add i32 %295, 50000
  %308 = udiv i32 %307, %295
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #8
  br label %319

309:                                              ; preds = %291
  %310 = load ptr, ptr %95, align 4
  %311 = call i32 @regmap_bulk_write(ptr noundef %310, i32 noundef 528, ptr noundef nonnull %34, i32 noundef 2) #8
  store i32 %311, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #8
  %312 = add i32 %295, 50000
  %313 = udiv i32 %312, %295
  %314 = add i32 %313, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #8
  store i32 %314, ptr %33, align 4
  %315 = icmp eq i32 %311, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %309
  %317 = load ptr, ptr %95, align 4
  %318 = call i32 @regmap_bulk_write(ptr noundef %317, i32 noundef 532, ptr noundef nonnull %33, i32 noundef 2) #8
  store i32 %318, ptr %90, align 4
  br label %319

319:                                              ; preds = %316, %309, %306
  %320 = phi i32 [ %292, %306 ], [ %311, %309 ], [ %318, %316 ]
  %321 = phi i32 [ %308, %306 ], [ %313, %309 ], [ %313, %316 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #8
  %322 = add i32 %295, 65000
  %323 = udiv i32 %322, %295
  %324 = add i32 %323, -1
  %325 = mul i32 %299, 3
  %326 = urem i32 %325, 1000
  %327 = sub i32 %325, %326
  %328 = add i32 %295, 300000
  %329 = add i32 %328, %327
  %330 = udiv i32 %329, %295
  %331 = udiv i32 %300, 1000
  %332 = sub i32 %330, %331
  %333 = shl i32 %332, 8
  %334 = or i32 %333, %324
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #8
  store i32 %334, ptr %32, align 4
  %335 = icmp eq i32 %320, 0
  br i1 %335, label %338, label %336

336:                                              ; preds = %319
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #8
  %337 = add i32 %295, 60000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #8
  br label %349

338:                                              ; preds = %319
  %339 = load ptr, ptr %95, align 4
  %340 = call i32 @regmap_bulk_write(ptr noundef %339, i32 noundef 536, ptr noundef nonnull %32, i32 noundef 2) #8
  store i32 %340, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #8
  %341 = add i32 %295, 60000
  %342 = add i32 %341, %327
  %343 = udiv i32 %342, %295
  %344 = add i32 %343, -5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #8
  store i32 %344, ptr %31, align 4
  %345 = icmp eq i32 %340, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %338
  %347 = load ptr, ptr %95, align 4
  %348 = call i32 @regmap_bulk_write(ptr noundef %347, i32 noundef 540, ptr noundef nonnull %31, i32 noundef 2) #8
  store i32 %348, ptr %90, align 4
  br label %349

349:                                              ; preds = %346, %338, %336
  %350 = phi i32 [ %341, %338 ], [ %341, %346 ], [ %337, %336 ]
  %351 = phi i32 [ %340, %338 ], [ %348, %346 ], [ %320, %336 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #8
  %352 = shl i32 %299, 2
  %353 = urem i32 %352, 1000
  %354 = add i32 %295, 50000
  %355 = add i32 %354, %352
  %356 = sub i32 %355, %353
  %357 = udiv i32 %356, %295
  %358 = add i32 %357, -1
  %359 = udiv i32 %298, 2000
  %360 = sub nsw i32 145, %359
  %361 = mul nsw i32 %360, 1000
  %362 = add i32 %361, %295
  %363 = udiv i32 %362, %295
  %364 = udiv i32 %301, 1000
  %365 = sub i32 %363, %364
  %366 = shl i32 %365, 8
  %367 = or i32 %366, %358
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #8
  store i32 %367, ptr %30, align 4
  %368 = icmp eq i32 %351, 0
  br i1 %368, label %370, label %369

369:                                              ; preds = %349
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #8
  br label %381

370:                                              ; preds = %349
  %371 = load ptr, ptr %95, align 4
  %372 = call i32 @regmap_bulk_write(ptr noundef %371, i32 noundef 544, ptr noundef nonnull %30, i32 noundef 2) #8
  store i32 %372, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #8
  %373 = add i32 %295, 1020000000
  %374 = udiv i32 %373, %295
  %375 = udiv i32 %374, %321
  %376 = add i32 %375, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #8
  store i32 %376, ptr %29, align 4
  %377 = icmp eq i32 %372, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %370
  %379 = load ptr, ptr %95, align 4
  %380 = call i32 @regmap_bulk_write(ptr noundef %379, i32 noundef 548, ptr noundef nonnull %29, i32 noundef 2) #8
  store i32 %380, ptr %90, align 4
  br label %381

381:                                              ; preds = %378, %370, %369
  %382 = phi i32 [ %372, %370 ], [ %380, %378 ], [ %351, %369 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #8
  %383 = mul i32 %299, 52
  %384 = urem i32 %383, 1000
  %385 = add i32 %350, %383
  %386 = sub i32 %385, %384
  %387 = udiv i32 %386, %295
  %388 = add i32 %387, -3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #8
  store i32 %388, ptr %28, align 4
  %389 = icmp eq i32 %382, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %381
  %391 = load ptr, ptr %95, align 4
  %392 = call i32 @regmap_bulk_write(ptr noundef %391, i32 noundef 552, ptr noundef nonnull %28, i32 noundef 2) #8
  store i32 %392, ptr %90, align 4
  br label %393

393:                                              ; preds = %390, %381
  %394 = phi i32 [ %382, %381 ], [ %392, %390 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #8
  %395 = mul i32 %299, 15
  %396 = urem i32 %395, 1000
  %397 = add i32 %350, %395
  %398 = sub i32 %397, %396
  %399 = udiv i32 %398, %295
  %400 = add i32 %399, -5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #8
  store i32 %400, ptr %27, align 4
  %401 = icmp eq i32 %394, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %393
  %403 = load ptr, ptr %95, align 4
  %404 = call i32 @regmap_bulk_write(ptr noundef %403, i32 noundef 556, ptr noundef nonnull %27, i32 noundef 2) #8
  store i32 %404, ptr %90, align 4
  br label %405

405:                                              ; preds = %402, %393
  %406 = phi i32 [ %394, %393 ], [ %404, %402 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #8
  %407 = load i32, ptr %269, align 8
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %416, label %409

409:                                              ; preds = %409, %405
  %410 = phi i32 [ %412, %409 ], [ 0, %405 ]
  %411 = phi i32 [ %414, %409 ], [ 1, %405 ]
  %412 = add nuw i32 %410, 1
  %413 = shl i32 2, %410
  %414 = or i32 %413, %411
  %415 = icmp eq i32 %412, %407
  br i1 %415, label %416, label %409

416:                                              ; preds = %409, %405
  %417 = phi i32 [ 1, %405 ], [ %414, %409 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #8
  store i32 %417, ptr %26, align 4
  %418 = icmp eq i32 %406, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %416
  %420 = load ptr, ptr %95, align 4
  %421 = call i32 @regmap_bulk_write(ptr noundef %420, i32 noundef 564, ptr noundef nonnull %26, i32 noundef 2) #8
  store i32 %421, ptr %90, align 4
  br label %422

422:                                              ; preds = %419, %416
  %423 = phi i32 [ %406, %416 ], [ %421, %419 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #8
  %424 = and i32 %57, 1024
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %433

426:                                              ; preds = %422
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #8
  store i32 1, ptr %25, align 4
  %427 = icmp eq i32 %423, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %426
  %429 = load ptr, ptr %95, align 4
  %430 = call i32 @regmap_bulk_write(ptr noundef %429, i32 noundef 568, ptr noundef nonnull %25, i32 noundef 2) #8
  store i32 %430, ptr %90, align 4
  br label %431

431:                                              ; preds = %428, %426
  %432 = phi i32 [ %423, %426 ], [ %430, %428 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #8
  br label %433

433:                                              ; preds = %431, %422
  %434 = phi i32 [ %432, %431 ], [ %423, %422 ]
  %435 = mul i32 %321, %295
  %436 = shl i32 %435, 2
  %437 = urem i32 %436, 1000
  %438 = add i32 %436, %295
  %439 = sub i32 %438, %437
  %440 = udiv i32 %439, %295
  %441 = urem i32 %435, 1000
  %442 = add i32 %435, %295
  %443 = sub i32 %442, %441
  %444 = udiv i32 %443, %295
  %445 = add i32 %444, -2
  %446 = shl i32 %440, 16
  %447 = add i32 %446, -65536
  %448 = or i32 %447, %445
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #8
  store i32 %448, ptr %24, align 4
  %449 = icmp eq i32 %434, 0
  br i1 %449, label %451, label %450

450:                                              ; preds = %433
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #8
  br label %458

451:                                              ; preds = %433
  %452 = load ptr, ptr %95, align 4
  %453 = call i32 @regmap_bulk_write(ptr noundef %452, i32 noundef 572, ptr noundef nonnull %24, i32 noundef 2) #8
  store i32 %453, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #8
  store i32 1, ptr %23, align 4
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %458

455:                                              ; preds = %451
  %456 = load ptr, ptr %95, align 4
  %457 = call i32 @regmap_bulk_write(ptr noundef %456, i32 noundef 516, ptr noundef nonnull %23, i32 noundef 2) #8
  store i32 %457, ptr %90, align 4
  br label %458

458:                                              ; preds = %455, %451, %450
  %459 = phi i32 [ %434, %450 ], [ %453, %451 ], [ %457, %455 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #8
  %460 = load i32, ptr %48, align 8
  %461 = and i32 %460, 4
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %573, label %463

463:                                              ; preds = %458
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #8
  store i32 0, ptr %22, align 4
  %464 = icmp eq i32 %459, 0
  br i1 %464, label %466, label %465

465:                                              ; preds = %463
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #8
  br label %473

466:                                              ; preds = %463
  %467 = load ptr, ptr %95, align 4
  %468 = call i32 @regmap_bulk_write(ptr noundef %467, i32 noundef 1568, ptr noundef nonnull %22, i32 noundef 1) #8
  store i32 %468, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #8
  %469 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 6
  %470 = load i16, ptr %469, align 2
  %471 = zext i16 %470 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #8
  store i32 %471, ptr %21, align 4
  %472 = icmp eq i32 %468, 0
  br i1 %472, label %475, label %473

473:                                              ; preds = %466, %465
  %474 = phi i32 [ %468, %466 ], [ %459, %465 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #8
  br label %486

475:                                              ; preds = %466
  %476 = load ptr, ptr %95, align 4
  %477 = call i32 @regmap_bulk_write(ptr noundef %476, i32 noundef 1574, ptr noundef nonnull %21, i32 noundef 1) #8
  store i32 %477, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #8
  %478 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 8
  %479 = load i16, ptr %478, align 2
  %480 = zext i16 %479 to i32
  %481 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 7
  %482 = load i16, ptr %481, align 4
  %483 = zext i16 %482 to i32
  %484 = sub nsw i32 %480, %483
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #8
  store i32 %484, ptr %20, align 4
  %485 = icmp eq i32 %477, 0
  br i1 %485, label %488, label %486

486:                                              ; preds = %475, %473
  %487 = phi i32 [ %474, %473 ], [ %477, %475 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #8
  br label %501

488:                                              ; preds = %475
  %489 = load ptr, ptr %95, align 4
  %490 = call i32 @regmap_bulk_write(ptr noundef %489, i32 noundef 1570, ptr noundef nonnull %20, i32 noundef 1) #8
  store i32 %490, ptr %90, align 4
  %491 = load i16, ptr %478, align 2
  %492 = zext i16 %491 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #8
  %493 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 9
  %494 = load i16, ptr %493, align 4
  %495 = zext i16 %494 to i32
  %496 = sub nsw i32 %495, %492
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #8
  store i32 %496, ptr %19, align 4
  %497 = icmp eq i32 %490, 0
  br i1 %497, label %498, label %501

498:                                              ; preds = %488
  %499 = load ptr, ptr %95, align 4
  %500 = call i32 @regmap_bulk_write(ptr noundef %499, i32 noundef 1572, ptr noundef nonnull %19, i32 noundef 1) #8
  store i32 %500, ptr %90, align 4
  br label %501

501:                                              ; preds = %498, %488, %486
  %502 = phi i32 [ %490, %488 ], [ %500, %498 ], [ %487, %486 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #8
  %503 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 3
  %504 = load i16, ptr %503, align 4
  %505 = zext i16 %504 to i32
  %506 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 2
  %507 = load i16, ptr %506, align 2
  %508 = zext i16 %507 to i32
  %509 = sub nsw i32 %505, %508
  %510 = sext i32 %509 to i64
  %511 = load i32, ptr %182, align 4
  %512 = lshr i32 %511, 2
  %513 = zext i32 %512 to i64
  %514 = mul nsw i64 %510, %513
  %515 = getelementptr i8, ptr %0, i32 148
  %516 = load i32, ptr %515, align 4
  %517 = zext i32 %516 to i64
  %518 = mul i64 %514, %517
  %519 = load i32, ptr %128, align 4
  %520 = mul i32 %519, 1000
  %521 = icmp ult i64 %518, 4294967296
  br i1 %521, label %522, label %525, !prof !10

522:                                              ; preds = %501
  %523 = trunc i64 %518 to i32
  %524 = udiv i32 %523, %520
  br label %529

525:                                              ; preds = %501
  %526 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %520, i64 %518) #10, !srcloc !9
  %527 = extractvalue { i64, i64 } %526, 1
  %528 = trunc i64 %527 to i32
  br label %529

529:                                              ; preds = %525, %522
  %530 = phi i32 [ %524, %522 ], [ %528, %525 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #8
  store i32 %530, ptr %18, align 4
  %531 = icmp eq i32 %502, 0
  br i1 %531, label %532, label %544

532:                                              ; preds = %529
  %533 = load ptr, ptr %95, align 4
  %534 = call i32 @regmap_bulk_write(ptr noundef %533, i32 noundef 1576, ptr noundef nonnull %18, i32 noundef 1) #8
  store i32 %534, ptr %90, align 4
  %535 = load i16, ptr %503, align 4
  %536 = load i32, ptr %182, align 4
  %537 = load i32, ptr %515, align 4
  %538 = load i32, ptr %128, align 4
  %539 = zext i16 %535 to i32
  %540 = lshr i32 %536, 2
  %541 = zext i32 %540 to i64
  %542 = zext i32 %537 to i64
  %543 = mul i32 %538, 1000
  br label %544

544:                                              ; preds = %532, %529
  %545 = phi i32 [ %520, %529 ], [ %543, %532 ]
  %546 = phi i64 [ %517, %529 ], [ %542, %532 ]
  %547 = phi i64 [ %513, %529 ], [ %541, %532 ]
  %548 = phi i32 [ %505, %529 ], [ %539, %532 ]
  %549 = phi i32 [ %502, %529 ], [ %534, %532 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #8
  %550 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 4
  %551 = load i16, ptr %550, align 2
  %552 = zext i16 %551 to i32
  %553 = sub nsw i32 %552, %548
  %554 = sext i32 %553 to i64
  %555 = mul nsw i64 %547, %554
  %556 = mul i64 %555, %546
  %557 = icmp ult i64 %556, 4294967296
  br i1 %557, label %558, label %561, !prof !10

558:                                              ; preds = %544
  %559 = trunc i64 %556 to i32
  %560 = udiv i32 %559, %545
  br label %565

561:                                              ; preds = %544
  %562 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %545, i64 %556) #10, !srcloc !9
  %563 = extractvalue { i64, i64 } %562, 1
  %564 = trunc i64 %563 to i32
  br label %565

565:                                              ; preds = %561, %558
  %566 = phi i32 [ %560, %558 ], [ %564, %561 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #8
  store i32 %566, ptr %17, align 4
  %567 = icmp eq i32 %549, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %565
  %569 = load ptr, ptr %95, align 4
  %570 = call i32 @regmap_bulk_write(ptr noundef %569, i32 noundef 1578, ptr noundef nonnull %17, i32 noundef 1) #8
  store i32 %570, ptr %90, align 4
  br label %571

571:                                              ; preds = %568, %565
  %572 = phi i32 [ %549, %565 ], [ %570, %568 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #8
  br label %646

573:                                              ; preds = %458
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #8
  store i32 1, ptr %16, align 4
  %574 = icmp eq i32 %459, 0
  br i1 %574, label %576, label %575

575:                                              ; preds = %573
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  br label %583

576:                                              ; preds = %573
  %577 = load ptr, ptr %95, align 4
  %578 = call i32 @regmap_bulk_write(ptr noundef %577, i32 noundef 1568, ptr noundef nonnull %16, i32 noundef 1) #8
  store i32 %578, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #8
  %579 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 6
  %580 = load i16, ptr %579, align 2
  %581 = zext i16 %580 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  store i32 %581, ptr %15, align 4
  %582 = icmp eq i32 %578, 0
  br i1 %582, label %585, label %583

583:                                              ; preds = %576, %575
  %584 = phi i32 [ %578, %576 ], [ %459, %575 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  br label %596

585:                                              ; preds = %576
  %586 = load ptr, ptr %95, align 4
  %587 = call i32 @regmap_bulk_write(ptr noundef %586, i32 noundef 1574, ptr noundef nonnull %15, i32 noundef 1) #8
  store i32 %587, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  %588 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 9
  %589 = load i16, ptr %588, align 4
  %590 = zext i16 %589 to i32
  %591 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 7
  %592 = load i16, ptr %591, align 4
  %593 = zext i16 %592 to i32
  %594 = sub nsw i32 %590, %593
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  store i32 %594, ptr %14, align 4
  %595 = icmp eq i32 %587, 0
  br i1 %595, label %598, label %596

596:                                              ; preds = %585, %583
  %597 = phi i32 [ %584, %583 ], [ %587, %585 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  br label %605

598:                                              ; preds = %585
  %599 = load ptr, ptr %95, align 4
  %600 = call i32 @regmap_bulk_write(ptr noundef %599, i32 noundef 1570, ptr noundef nonnull %14, i32 noundef 1) #8
  store i32 %600, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  store i32 0, ptr %13, align 4
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %605

602:                                              ; preds = %598
  %603 = load ptr, ptr %95, align 4
  %604 = call i32 @regmap_bulk_write(ptr noundef %603, i32 noundef 1572, ptr noundef nonnull %13, i32 noundef 1) #8
  store i32 %604, ptr %90, align 4
  br label %605

605:                                              ; preds = %602, %598, %596
  %606 = phi i32 [ %597, %596 ], [ %600, %598 ], [ %604, %602 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  %607 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 4
  %608 = load i16, ptr %607, align 2
  %609 = zext i16 %608 to i32
  %610 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 2
  %611 = load i16, ptr %610, align 2
  %612 = zext i16 %611 to i32
  %613 = sub nsw i32 %609, %612
  %614 = sext i32 %613 to i64
  %615 = load i32, ptr %182, align 4
  %616 = lshr i32 %615, 2
  %617 = zext i32 %616 to i64
  %618 = mul nsw i64 %614, %617
  %619 = getelementptr i8, ptr %0, i32 148
  %620 = load i32, ptr %619, align 4
  %621 = zext i32 %620 to i64
  %622 = mul i64 %618, %621
  %623 = load i32, ptr %128, align 4
  %624 = mul i32 %623, 1000
  %625 = icmp ult i64 %622, 4294967296
  br i1 %625, label %626, label %629, !prof !10

626:                                              ; preds = %605
  %627 = trunc i64 %622 to i32
  %628 = udiv i32 %627, %624
  br label %633

629:                                              ; preds = %605
  %630 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %624, i64 %622) #10, !srcloc !9
  %631 = extractvalue { i64, i64 } %630, 1
  %632 = trunc i64 %631 to i32
  br label %633

633:                                              ; preds = %629, %626
  %634 = phi i32 [ %628, %626 ], [ %632, %629 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  store i32 %634, ptr %12, align 4
  %635 = icmp eq i32 %606, 0
  br i1 %635, label %637, label %636

636:                                              ; preds = %633
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  br label %644

637:                                              ; preds = %633
  %638 = load ptr, ptr %95, align 4
  %639 = call i32 @regmap_bulk_write(ptr noundef %638, i32 noundef 1576, ptr noundef nonnull %12, i32 noundef 1) #8
  store i32 %639, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  store i32 0, ptr %11, align 4
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %644

641:                                              ; preds = %637
  %642 = load ptr, ptr %95, align 4
  %643 = call i32 @regmap_bulk_write(ptr noundef %642, i32 noundef 1578, ptr noundef nonnull %11, i32 noundef 1) #8
  store i32 %643, ptr %90, align 4
  br label %644

644:                                              ; preds = %641, %637, %636
  %645 = phi i32 [ %606, %636 ], [ %639, %637 ], [ %643, %641 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  br label %646

646:                                              ; preds = %644, %571
  %647 = phi i32 [ %645, %644 ], [ %572, %571 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  store i32 %244, ptr %10, align 4
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %652

649:                                              ; preds = %646
  %650 = load ptr, ptr %95, align 4
  %651 = call i32 @regmap_bulk_write(ptr noundef %650, i32 noundef 1580, ptr noundef nonnull %10, i32 noundef 1) #8
  store i32 %651, ptr %90, align 4
  br label %652

652:                                              ; preds = %649, %646
  %653 = phi i32 [ %647, %646 ], [ %651, %649 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  %654 = getelementptr inbounds %struct.drm_crtc_state, ptr %127, i32 0, i32 7, i32 11
  %655 = load i32, ptr %654, align 4
  %656 = and i32 %655, 8
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %658, label %677

658:                                              ; preds = %652
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store i32 0, ptr %9, align 4, !annotation !8
  %659 = icmp eq i32 %653, 0
  br i1 %659, label %661, label %660

660:                                              ; preds = %658
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  br label %672

661:                                              ; preds = %658
  %662 = load ptr, ptr %95, align 4
  %663 = call i32 @regmap_bulk_read(ptr noundef %662, i32 noundef 4, ptr noundef nonnull %9, i32 noundef 1) #8
  store i32 %663, ptr %90, align 4
  %664 = load i32, ptr %9, align 4
  %665 = or i32 %664, 32
  %666 = icmp eq i32 %665, %664
  br i1 %666, label %674, label %667

667:                                              ; preds = %661
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 %665, ptr %8, align 4
  %668 = icmp eq i32 %663, 0
  br i1 %668, label %669, label %672

669:                                              ; preds = %667
  %670 = load ptr, ptr %95, align 4
  %671 = call i32 @regmap_bulk_write(ptr noundef %670, i32 noundef 4, ptr noundef nonnull %8, i32 noundef 1) #8
  store i32 %671, ptr %90, align 4
  br label %672

672:                                              ; preds = %669, %667, %660
  %673 = phi i32 [ %653, %660 ], [ %671, %669 ], [ %663, %667 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %674

674:                                              ; preds = %672, %661
  %675 = phi i32 [ %663, %661 ], [ %673, %672 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  %676 = load i32, ptr %654, align 4
  br label %677

677:                                              ; preds = %674, %652
  %678 = phi i32 [ %675, %674 ], [ %653, %652 ]
  %679 = phi i32 [ %676, %674 ], [ %655, %652 ]
  %680 = and i32 %679, 1
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %700, label %682

682:                                              ; preds = %677
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !8
  %683 = icmp eq i32 %678, 0
  br i1 %683, label %685, label %684

684:                                              ; preds = %682
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  br label %696

685:                                              ; preds = %682
  %686 = load ptr, ptr %95, align 4
  %687 = call i32 @regmap_bulk_read(ptr noundef %686, i32 noundef 50, ptr noundef nonnull %7, i32 noundef 1) #8
  store i32 %687, ptr %90, align 4
  %688 = load i32, ptr %7, align 4
  %689 = or i32 %688, 1
  %690 = icmp eq i32 %689, %688
  br i1 %690, label %698, label %691

691:                                              ; preds = %685
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 %689, ptr %6, align 4
  %692 = icmp eq i32 %687, 0
  br i1 %692, label %693, label %696

693:                                              ; preds = %691
  %694 = load ptr, ptr %95, align 4
  %695 = call i32 @regmap_bulk_write(ptr noundef %694, i32 noundef 50, ptr noundef nonnull %6, i32 noundef 1) #8
  store i32 %695, ptr %90, align 4
  br label %696

696:                                              ; preds = %693, %691, %684
  %697 = phi i32 [ %678, %684 ], [ %695, %693 ], [ %687, %691 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %698

698:                                              ; preds = %696, %685
  %699 = phi i32 [ %687, %685 ], [ %697, %696 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br label %700

700:                                              ; preds = %698, %677
  %701 = phi i32 [ %699, %698 ], [ %678, %677 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 1, ptr %5, align 4
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %704, label %703

703:                                              ; preds = %700
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  br label %711

704:                                              ; preds = %700
  %705 = load ptr, ptr %95, align 4
  %706 = call i32 @regmap_bulk_write(ptr noundef %705, i32 noundef 1304, ptr noundef nonnull %5, i32 noundef 2) #8
  store i32 %706, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 -1023410009, ptr %4, align 4
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %708, label %711

708:                                              ; preds = %704
  %709 = load ptr, ptr %95, align 4
  %710 = call i32 @regmap_bulk_write(ptr noundef %709, i32 noundef 1280, ptr noundef nonnull %4, i32 noundef 2) #8
  store i32 %710, ptr %90, align 4
  br label %711

711:                                              ; preds = %708, %704, %703
  %712 = phi i32 [ %701, %703 ], [ %706, %704 ], [ %710, %708 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %713 = load i32, ptr %269, align 8
  %714 = shl i32 %713, 1
  %715 = add i32 %714, 2147483646
  %716 = load i32, ptr %48, align 8
  %717 = and i32 %716, 2048
  %718 = icmp eq i32 %717, 0
  %719 = select i1 %718, i32 -1560280960, i32 -1560281088
  %720 = or i32 %719, %715
  %721 = or i32 %720, 32
  %722 = select i1 %425, i32 %721, i32 %720
  %723 = lshr i32 %716, 9
  %724 = and i32 %723, 1
  %725 = or i32 %722, %724
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 %725, ptr %3, align 4
  %726 = icmp eq i32 %712, 0
  br i1 %726, label %728, label %727

727:                                              ; preds = %711
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %737

728:                                              ; preds = %711
  %729 = load ptr, ptr %95, align 4
  %730 = call i32 @regmap_bulk_write(ptr noundef %729, i32 noundef 1280, ptr noundef nonnull %3, i32 noundef 2) #8
  store i32 %730, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 -1023377408, ptr %2, align 4
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %733, label %732

732:                                              ; preds = %728
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %737

733:                                              ; preds = %728
  %734 = load ptr, ptr %95, align 4
  %735 = call i32 @regmap_bulk_write(ptr noundef %734, i32 noundef 1280, ptr noundef nonnull %2, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %90, align 4
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %755, label %739

737:                                              ; preds = %732, %727
  %738 = phi i32 [ %712, %727 ], [ %730, %732 ]
  store i32 0, ptr %90, align 4
  br label %739

739:                                              ; preds = %737, %733
  %740 = phi i32 [ %735, %733 ], [ %738, %737 ]
  %741 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %741, ptr noundef nonnull @.str.23, i32 noundef %740) #9
  call void @tc358768_bridge_disable(ptr noundef %0)
  %742 = load i32, ptr %58, align 4
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %755, label %744

744:                                              ; preds = %739
  %745 = getelementptr i8, ptr %0, i32 -68
  %746 = load ptr, ptr %745, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %746, i32 noundef 1) #8
  %747 = getelementptr i8, ptr %0, i32 -64
  %748 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %747) #8
  %749 = icmp slt i32 %748, 0
  br i1 %749, label %750, label %752

750:                                              ; preds = %744
  %751 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %751, ptr noundef nonnull @.str.18, i32 noundef %748) #9
  br label %752

752:                                              ; preds = %750, %744
  %753 = getelementptr i8, ptr %0, i32 -28
  %754 = load ptr, ptr %753, align 4
  call void @clk_disable(ptr noundef %754) #8
  call void @clk_unprepare(ptr noundef %754) #8
  store i32 0, ptr %58, align 4
  br label %755

755:                                              ; preds = %752, %739, %733, %241, %178, %165, %118, %105
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc358768_bridge_enable(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -76
  %7 = getelementptr i8, ptr %0, i32 -24
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.12) #9
  br label %70

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %13 = getelementptr i8, ptr %0, i32 -20
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 -72
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef 50, ptr noundef nonnull %5, i32 noundef 1) #8
  store i32 %19, ptr %13, align 4
  %20 = load i32, ptr %5, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = phi i32 [ %14, %12 ], [ %19, %16 ]
  %23 = phi i32 [ 0, %12 ], [ %20, %16 ]
  %24 = and i32 %23, -49153
  %25 = icmp eq i32 %24, %23
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 %24, ptr %4, align 4
  %27 = icmp eq i32 %22, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = getelementptr i8, ptr %0, i32 -72
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @regmap_bulk_write(ptr noundef %30, i32 noundef 50, ptr noundef nonnull %4, i32 noundef 1) #8
  store i32 %31, ptr %13, align 4
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i32 [ %31, %28 ], [ %22, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi i32 [ %22, %21 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  br label %50

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %0, i32 -72
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 @regmap_bulk_read(ptr noundef %40, i32 noundef 4, ptr noundef nonnull %3, i32 noundef 1) #8
  store i32 %41, ptr %13, align 4
  %42 = load i32, ptr %3, align 4
  %43 = or i32 %42, 64
  %44 = icmp eq i32 %43, %42
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 %43, ptr %2, align 4
  %46 = icmp eq i32 %41, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load ptr, ptr %39, align 4
  %49 = call i32 @regmap_bulk_write(ptr noundef %48, i32 noundef 4, ptr noundef nonnull %2, i32 noundef 1) #8
  br label %50

50:                                               ; preds = %47, %45, %37
  %51 = phi i32 [ %35, %37 ], [ %49, %47 ], [ %41, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %52

52:                                               ; preds = %50, %38
  %53 = phi i32 [ %41, %38 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.27, i32 noundef %53) #9
  call void @tc358768_bridge_disable(ptr noundef %0)
  %57 = load i32, ptr %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %55
  %60 = getelementptr i8, ptr %0, i32 -68
  %61 = load ptr, ptr %60, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %61, i32 noundef 1) #8
  %62 = getelementptr i8, ptr %0, i32 -64
  %63 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %62) #8
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.18, i32 noundef %63) #9
  br label %67

67:                                               ; preds = %65, %59
  %68 = getelementptr i8, ptr %0, i32 -28
  %69 = load ptr, ptr %68, align 4
  call void @clk_disable(ptr noundef %69) #8
  call void @clk_unprepare(ptr noundef %69) #8
  store i32 0, ptr %7, align 4
  br label %70

70:                                               ; preds = %67, %55, %52, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tc358768_calc_pll(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = load i32, ptr %1, align 4
  %5 = mul i32 %4, 1000
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.tc358768_priv, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = mul nuw i64 %9, %6
  %11 = getelementptr inbounds %struct.tc358768_priv, ptr %0, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i64 %10, 4294967296
  br i1 %13, label %14, label %17, !prof !10

14:                                               ; preds = %3
  %15 = trunc i64 %10 to i32
  %16 = udiv i32 %15, %12
  br label %21

17:                                               ; preds = %3
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %10) #10, !srcloc !9
  %19 = extractvalue { i64, i64 } %18, 1
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i32 [ %16, %14 ], [ %20, %17 ]
  %23 = icmp ult i32 %22, 1000000000
  br i1 %23, label %24, label %102

24:                                               ; preds = %21
  %25 = icmp ult i32 %22, 500000000
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  %27 = icmp ult i32 %22, 250000000
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = icmp ult i32 %22, 125000000
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = icmp ult i32 %22, 62500000
  br i1 %31, label %102, label %32

32:                                               ; preds = %30, %28, %26, %24
  %33 = phi i32 [ 4, %30 ], [ 3, %28 ], [ 2, %26 ], [ 1, %24 ]
  %34 = add nsw i32 %33, -1
  %35 = getelementptr [5 x i32], ptr @tc358768_calc_pll.frs_limits, i32 0, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr [5 x i32], ptr @tc358768_calc_pll.frs_limits, i32 0, i32 %33
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.tc358768_priv, ptr %0, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @clk_get_rate(ptr noundef %40) #8
  %42 = zext i32 %41 to i64
  br label %45

43:                                               ; preds = %82
  %44 = icmp eq i32 %51, 16
  br i1 %44, label %88, label %45

45:                                               ; preds = %43, %32
  %46 = phi i32 [ 0, %32 ], [ %51, %43 ]
  %47 = phi i32 [ 0, %32 ], [ %86, %43 ]
  %48 = phi i32 [ 0, %32 ], [ %85, %43 ]
  %49 = phi i32 [ 0, %32 ], [ %84, %43 ]
  %50 = phi i32 [ -1, %32 ], [ %83, %43 ]
  %51 = add nuw nsw i32 %46, 1
  %52 = shl i32 %51, %34
  br label %53

53:                                               ; preds = %82, %45
  %54 = phi i32 [ 0, %45 ], [ %59, %82 ]
  %55 = phi i32 [ %47, %45 ], [ %86, %82 ]
  %56 = phi i32 [ %48, %45 ], [ %85, %82 ]
  %57 = phi i32 [ %49, %45 ], [ %84, %82 ]
  %58 = phi i32 [ %50, %45 ], [ %83, %82 ]
  %59 = add nuw nsw i32 %54, 1
  %60 = zext i32 %59 to i64
  %61 = mul nuw nsw i64 %60, %42
  %62 = icmp ult i64 %61, 4294967296
  br i1 %62, label %63, label %66, !prof !10

63:                                               ; preds = %53
  %64 = trunc i64 %61 to i32
  %65 = udiv i32 %64, %52
  br label %70

66:                                               ; preds = %53
  %67 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %52, i64 %61) #10, !srcloc !9
  %68 = extractvalue { i64, i64 } %67, 1
  %69 = trunc i64 %68 to i32
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi i32 [ %65, %63 ], [ %69, %66 ]
  %72 = icmp ule i32 %36, %71
  %73 = icmp ugt i32 %38, %71
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = tail call i32 @llvm.umax.i32(i32 %22, i32 %71)
  %77 = tail call i32 @llvm.umin.i32(i32 %22, i32 %71)
  %78 = sub i32 %76, %77
  %79 = icmp ult i32 %78, %58
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = icmp eq i32 %78, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %80, %75, %70
  %83 = phi i32 [ %58, %70 ], [ %78, %80 ], [ %58, %75 ]
  %84 = phi i32 [ %57, %70 ], [ %71, %80 ], [ %57, %75 ]
  %85 = phi i32 [ %56, %70 ], [ %46, %80 ], [ %56, %75 ]
  %86 = phi i32 [ %55, %70 ], [ %54, %80 ], [ %55, %75 ]
  %87 = icmp eq i32 %59, 512
  br i1 %87, label %43, label %53

88:                                               ; preds = %43
  %89 = icmp eq i32 %83, -1
  br i1 %89, label %90, label %92

90:                                               ; preds = %88
  %91 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.17) #9
  br label %102

92:                                               ; preds = %88, %80
  %93 = phi i32 [ %84, %88 ], [ %71, %80 ]
  %94 = phi i32 [ %85, %88 ], [ %46, %80 ]
  %95 = phi i32 [ %86, %88 ], [ %54, %80 ]
  br i1 %2, label %102, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.tc358768_priv, ptr %0, i32 0, i32 12
  store i32 %95, ptr %97, align 4
  %98 = getelementptr inbounds %struct.tc358768_priv, ptr %0, i32 0, i32 13
  store i32 %94, ptr %98, align 4
  %99 = getelementptr inbounds %struct.tc358768_priv, ptr %0, i32 0, i32 14
  store i32 %34, ptr %99, align 4
  %100 = lshr i32 %93, 1
  %101 = getelementptr inbounds %struct.tc358768_priv, ptr %0, i32 0, i32 15
  store i32 %100, ptr %101, align 4
  br label %102

102:                                              ; preds = %96, %92, %90, %30, %21
  %103 = phi i32 [ 0, %96 ], [ -22, %90 ], [ 0, %92 ], [ -22, %21 ], [ -22, %30 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tc358768_hw_disable(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tc358768_priv, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tc358768_priv, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #8
  %8 = getelementptr inbounds %struct.tc358768_priv, ptr %0, i32 0, i32 3
  %9 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %8) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.18, i32 noundef %9) #9
  br label %13

13:                                               ; preds = %11, %5
  %14 = getelementptr inbounds %struct.tc358768_priv, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #8
  tail call void @clk_unprepare(ptr noundef %15) #8
  store i32 0, ptr %2, align 4
  br label %16

16:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

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
!9 = !{i64 2148383557, i64 2148383837, i64 2148384171, i64 2148384505}
!10 = !{!"branch_weights", i32 2000, i32 1}
