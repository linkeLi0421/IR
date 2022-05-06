; ModuleID = '/llk/IR/drivers/gpu/drm/bridge/tc358764.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/tc358764.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
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
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.tc358764 = type { ptr, %struct.drm_bridge, %struct.drm_connector, [3 x %struct.regulator_bulk_data], ptr, ptr, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.73 }
%union.anon.73 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }

@tc358764_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc358764\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author265 = internal constant [43 x i8] c"author=Andrzej Hajda <a.hajda@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author266 = internal constant [44 x i8] c"author=Maciej Purski <m.purski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description267 = internal constant [63 x i8] c"description=MIPI-DSI based Driver for TC358764 DSI/LVDS Bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_license268 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@tc358764_driver = internal global %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr @tc358764_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tc358764_probe, ptr @tc358764_remove, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"tc358764\00", align 1
@tc358764_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr @tc358764_attach, ptr @tc358764_detach, ptr null, ptr null, ptr @tc358764_disable, ptr @tc358764_post_disable, ptr null, ptr @tc358764_pre_enable, ptr @tc358764_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to attach dsi\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"no reset GPIO pin provided\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"cannot find panel (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to get regulators: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"vddc\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"vddio\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"vddlvds\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Fix bridge driver to make connector optional!\00", align 1
@tc358764_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to initialize connector\0A\00", align 1
@tc358764_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @tc358764_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"error disabling panel (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"error unpreparing panel (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"error disabling regulators (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"error enabling regulators (%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"error initializing bridge (%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"error preparing panel (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"ID: %#x\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"error enabling panel (%d)\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description267, ptr @__UNIQUE_ID_license268], section "llvm.metadata"

@__mod_of__tc358764_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @tc358764_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @tc358764_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @tc358764_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc358764_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1152, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 8
  store ptr %3, ptr %6, align 8
  store ptr %2, ptr %3, align 8
  %7 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 4
  store i32 4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 5
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  store i32 2059, ptr %9, align 8
  %10 = tail call ptr @devm_gpiod_get(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 3) #5
  %11 = getelementptr inbounds %struct.tc358764, ptr %3, i32 0, i32 4
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  %14 = load ptr, ptr %11, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %23

16:                                               ; preds = %5
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.tc358764, ptr %3, i32 0, i32 5
  %21 = tail call i32 @drm_of_find_panel_or_bridge(ptr noundef %19, i32 noundef 1, i32 noundef 0, ptr noundef %20, ptr noundef null) #5
  switch i32 %21, label %22 [
    i32 -517, label %23
    i32 0, label %23
  ]

22:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %21) #6
  br label %23

23:                                               ; preds = %22, %16, %16, %13
  %24 = phi i32 [ %15, %13 ], [ %21, %16 ], [ %21, %16 ], [ %21, %22 ]
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = getelementptr %struct.tc358764, ptr %3, i32 0, i32 3, i32 0
  store ptr @.str.6, ptr %27, align 4
  %28 = getelementptr %struct.tc358764, ptr %3, i32 0, i32 3, i32 1
  store ptr @.str.7, ptr %28, align 4
  %29 = getelementptr %struct.tc358764, ptr %3, i32 0, i32 3, i32 2
  store ptr @.str.8, ptr %29, align 4
  %30 = load ptr, ptr %3, align 8
  %31 = tail call i32 @devm_regulator_bulk_get(ptr noundef %30, i32 noundef 3, ptr noundef %27) #5
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.5, i32 noundef %31) #6
  br label %44

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.tc358764, ptr %3, i32 0, i32 1
  %37 = getelementptr inbounds %struct.tc358764, ptr %3, i32 0, i32 1, i32 7
  store ptr @tc358764_bridge_funcs, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 25
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.tc358764, ptr %3, i32 0, i32 1, i32 4
  store ptr %39, ptr %40, align 4
  tail call void @drm_bridge_add(ptr noundef %36) #5
  %41 = tail call i32 @mipi_dsi_attach(ptr noundef %0) #5
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  tail call void @drm_bridge_remove(ptr noundef %36) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %44

44:                                               ; preds = %43, %35, %33, %23, %1
  %45 = phi i32 [ -12, %1 ], [ %24, %23 ], [ %41, %43 ], [ %41, %35 ], [ %31, %33 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc358764_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @mipi_dsi_detach(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.tc358764, ptr %3, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc358764_attach(ptr noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #5
  br label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 132
  %10 = getelementptr i8, ptr %0, i32 760
  store i8 1, ptr %10, align 4
  %11 = tail call i32 @drm_connector_init(ptr noundef %8, ptr noundef %9, ptr noundef nonnull @tc358764_connector_funcs, i32 noundef 7) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #5
  br label %24

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %0, i32 768
  store ptr @tc358764_connector_helper_funcs, ptr %15, align 4
  %16 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @drm_connector_attach_encoder(ptr noundef %9, ptr noundef %17) #5
  %19 = getelementptr i8, ptr %0, i32 412
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.drm_connector_funcs, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %9) #5
  %23 = tail call i32 @drm_connector_register(ptr noundef %9) #5
  br label %24

24:                                               ; preds = %14, %13, %5
  %25 = phi i32 [ -22, %5 ], [ %11, %13 ], [ 0, %14 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc358764_detach(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 132
  tail call void @drm_connector_unregister(ptr noundef %2) #5
  %3 = getelementptr i8, ptr %0, i32 1140
  store ptr null, ptr %3, align 8
  %4 = getelementptr i8, ptr %0, i32 164
  tail call void @drm_mode_object_put(ptr noundef %4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc358764_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1140
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_panel_disable(ptr noundef %3) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef %4) #6
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc358764_post_disable(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 1140
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @drm_panel_unprepare(ptr noundef %4) #5
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef %5) #6
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr i8, ptr %0, i32 1136
  %11 = load ptr, ptr %10, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %12 = load ptr, ptr %10, align 4
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #5
  %13 = getelementptr i8, ptr %0, i32 1100
  %14 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %13) #5
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.13, i32 noundef %14) #6
  br label %18

18:                                               ; preds = %16, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc358764_pre_enable(ptr noundef %0) #2 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = alloca [6 x i8], align 1
  %12 = alloca [6 x i8], align 1
  %13 = alloca [6 x i8], align 1
  %14 = alloca [6 x i8], align 1
  %15 = alloca [6 x i8], align 1
  %16 = alloca [6 x i8], align 1
  %17 = alloca [6 x i8], align 1
  %18 = alloca [6 x i8], align 1
  %19 = alloca [6 x i8], align 1
  %20 = alloca [6 x i8], align 1
  %21 = alloca [6 x i8], align 1
  %22 = alloca [6 x i8], align 1
  %23 = alloca [6 x i8], align 1
  %24 = alloca i16, align 2
  %25 = alloca i32, align 4
  %26 = getelementptr i8, ptr %0, i32 -4
  %27 = getelementptr i8, ptr %0, i32 1100
  %28 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %27) #5
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load ptr, ptr %26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.14, i32 noundef %28) #6
  br label %32

32:                                               ; preds = %30, %1
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #5
  %33 = getelementptr i8, ptr %0, i32 1136
  %34 = load ptr, ptr %33, align 4
  tail call void @gpiod_set_value(ptr noundef %34, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %35 = load ptr, ptr %33, align 4
  tail call void @gpiod_set_value(ptr noundef %35, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #5
  store i32 0, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #5
  store i16 1408, ptr %24, align 2
  %36 = getelementptr i8, ptr %0, i32 1144
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #5
  br label %401

40:                                               ; preds = %32
  %41 = load ptr, ptr %26, align 8
  %42 = getelementptr i8, ptr %41, i32 -8
  %43 = call i32 @mipi_dsi_generic_read(ptr noundef %42, ptr noundef nonnull %24, i32 noundef 2, ptr noundef nonnull %25, i32 noundef 4) #5
  %44 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #5
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %401

46:                                               ; preds = %40
  %47 = load ptr, ptr %26, align 8
  %48 = load i32, ptr %25, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.17, i32 noundef %48) #6
  %49 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %23) #5
  %50 = load i32, ptr %36, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = getelementptr i8, ptr %49, i32 -8
  store i8 60, ptr %23, align 1
  %54 = getelementptr inbounds [6 x i8], ptr %23, i32 0, i32 1
  store i8 1, ptr %54, align 1
  %55 = getelementptr inbounds [6 x i8], ptr %23, i32 0, i32 2
  store i8 3, ptr %55, align 1
  %56 = getelementptr inbounds [6 x i8], ptr %23, i32 0, i32 3
  store i8 0, ptr %56, align 1
  %57 = getelementptr inbounds [6 x i8], ptr %23, i32 0, i32 4
  store i8 2, ptr %57, align 1
  %58 = getelementptr inbounds [6 x i8], ptr %23, i32 0, i32 5
  store i8 0, ptr %58, align 1
  %59 = call i32 @mipi_dsi_generic_write(ptr noundef %53, ptr noundef nonnull %23, i32 noundef 6) #5
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  store i32 %59, ptr %36, align 4
  br label %62

62:                                               ; preds = %61, %46
  %63 = phi i32 [ %50, %46 ], [ %59, %61 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %23) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %21) #5
  br label %94

64:                                               ; preds = %52
  %65 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %23) #5
  %66 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %22) #5
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %66, i32 -8
  store i8 20, ptr %22, align 1
  %70 = getelementptr inbounds [6 x i8], ptr %22, i32 0, i32 1
  store i8 1, ptr %70, align 1
  %71 = getelementptr inbounds [6 x i8], ptr %22, i32 0, i32 2
  store i8 2, ptr %71, align 1
  %72 = getelementptr inbounds [6 x i8], ptr %22, i32 0, i32 3
  store i8 0, ptr %72, align 1
  %73 = getelementptr inbounds [6 x i8], ptr %22, i32 0, i32 4
  store i8 0, ptr %73, align 1
  %74 = getelementptr inbounds [6 x i8], ptr %22, i32 0, i32 5
  store i8 0, ptr %74, align 1
  %75 = call i32 @mipi_dsi_generic_write(ptr noundef %69, ptr noundef nonnull %22, i32 noundef 6) #5
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  store i32 %75, ptr %36, align 4
  br label %78

78:                                               ; preds = %77, %64
  %79 = phi i32 [ %65, %64 ], [ %75, %77 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %22) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %20) #5
  br label %110

80:                                               ; preds = %68
  %81 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %22) #5
  %82 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %21) #5
  %83 = icmp eq i32 %81, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = getelementptr i8, ptr %82, i32 -8
  store i8 100, ptr %21, align 1
  %86 = getelementptr inbounds [6 x i8], ptr %21, i32 0, i32 1
  store i8 1, ptr %86, align 1
  %87 = getelementptr inbounds [6 x i8], ptr %21, i32 0, i32 2
  store i8 5, ptr %87, align 1
  %88 = getelementptr inbounds [6 x i8], ptr %21, i32 0, i32 3
  store i8 0, ptr %88, align 1
  %89 = getelementptr inbounds [6 x i8], ptr %21, i32 0, i32 4
  store i8 0, ptr %89, align 1
  %90 = getelementptr inbounds [6 x i8], ptr %21, i32 0, i32 5
  store i8 0, ptr %90, align 1
  %91 = call i32 @mipi_dsi_generic_write(ptr noundef %85, ptr noundef nonnull %21, i32 noundef 6) #5
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  store i32 %91, ptr %36, align 4
  br label %94

94:                                               ; preds = %93, %80, %62
  %95 = phi i32 [ %81, %80 ], [ %91, %93 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %21) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %19) #5
  br label %126

96:                                               ; preds = %84
  %97 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %21) #5
  %98 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %20) #5
  %99 = icmp eq i32 %97, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %98, i32 -8
  store i8 104, ptr %20, align 1
  %102 = getelementptr inbounds [6 x i8], ptr %20, i32 0, i32 1
  store i8 1, ptr %102, align 1
  %103 = getelementptr inbounds [6 x i8], ptr %20, i32 0, i32 2
  store i8 5, ptr %103, align 1
  %104 = getelementptr inbounds [6 x i8], ptr %20, i32 0, i32 3
  store i8 0, ptr %104, align 1
  %105 = getelementptr inbounds [6 x i8], ptr %20, i32 0, i32 4
  store i8 0, ptr %105, align 1
  %106 = getelementptr inbounds [6 x i8], ptr %20, i32 0, i32 5
  store i8 0, ptr %106, align 1
  %107 = call i32 @mipi_dsi_generic_write(ptr noundef %101, ptr noundef nonnull %20, i32 noundef 6) #5
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  store i32 %107, ptr %36, align 4
  br label %110

110:                                              ; preds = %109, %96, %78
  %111 = phi i32 [ %97, %96 ], [ %107, %109 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %20) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %18) #5
  br label %142

112:                                              ; preds = %100
  %113 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %20) #5
  %114 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %19) #5
  %115 = icmp eq i32 %113, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = getelementptr i8, ptr %114, i32 -8
  store i8 108, ptr %19, align 1
  %118 = getelementptr inbounds [6 x i8], ptr %19, i32 0, i32 1
  store i8 1, ptr %118, align 1
  %119 = getelementptr inbounds [6 x i8], ptr %19, i32 0, i32 2
  store i8 5, ptr %119, align 1
  %120 = getelementptr inbounds [6 x i8], ptr %19, i32 0, i32 3
  store i8 0, ptr %120, align 1
  %121 = getelementptr inbounds [6 x i8], ptr %19, i32 0, i32 4
  store i8 0, ptr %121, align 1
  %122 = getelementptr inbounds [6 x i8], ptr %19, i32 0, i32 5
  store i8 0, ptr %122, align 1
  %123 = call i32 @mipi_dsi_generic_write(ptr noundef %117, ptr noundef nonnull %19, i32 noundef 6) #5
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  store i32 %123, ptr %36, align 4
  br label %126

126:                                              ; preds = %125, %112, %94
  %127 = phi i32 [ %113, %112 ], [ %123, %125 ], [ %95, %94 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %19) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %17) #5
  br label %158

128:                                              ; preds = %116
  %129 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %19) #5
  %130 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %18) #5
  %131 = icmp eq i32 %129, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %128
  %133 = getelementptr i8, ptr %130, i32 -8
  store i8 112, ptr %18, align 1
  %134 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 1
  store i8 1, ptr %134, align 1
  %135 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 2
  store i8 5, ptr %135, align 1
  %136 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 3
  store i8 0, ptr %136, align 1
  %137 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 4
  store i8 0, ptr %137, align 1
  %138 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 5
  store i8 0, ptr %138, align 1
  %139 = call i32 @mipi_dsi_generic_write(ptr noundef %133, ptr noundef nonnull %18, i32 noundef 6) #5
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  store i32 %139, ptr %36, align 4
  br label %142

142:                                              ; preds = %141, %128, %110
  %143 = phi i32 [ %129, %128 ], [ %139, %141 ], [ %111, %110 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %18) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %16) #5
  br label %174

144:                                              ; preds = %132
  %145 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %18) #5
  %146 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %17) #5
  %147 = icmp eq i32 %145, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  %149 = getelementptr i8, ptr %146, i32 -8
  store i8 52, ptr %17, align 1
  %150 = getelementptr inbounds [6 x i8], ptr %17, i32 0, i32 1
  store i8 1, ptr %150, align 1
  %151 = getelementptr inbounds [6 x i8], ptr %17, i32 0, i32 2
  store i8 31, ptr %151, align 1
  %152 = getelementptr inbounds [6 x i8], ptr %17, i32 0, i32 3
  store i8 0, ptr %152, align 1
  %153 = getelementptr inbounds [6 x i8], ptr %17, i32 0, i32 4
  store i8 0, ptr %153, align 1
  %154 = getelementptr inbounds [6 x i8], ptr %17, i32 0, i32 5
  store i8 0, ptr %154, align 1
  %155 = call i32 @mipi_dsi_generic_write(ptr noundef %149, ptr noundef nonnull %17, i32 noundef 6) #5
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %148
  store i32 %155, ptr %36, align 4
  br label %158

158:                                              ; preds = %157, %144, %126
  %159 = phi i32 [ %145, %144 ], [ %155, %157 ], [ %127, %126 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %17) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %15) #5
  br label %190

160:                                              ; preds = %148
  %161 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %17) #5
  %162 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %16) #5
  %163 = icmp eq i32 %161, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %160
  %165 = getelementptr i8, ptr %162, i32 -8
  store i8 16, ptr %16, align 1
  %166 = getelementptr inbounds [6 x i8], ptr %16, i32 0, i32 1
  store i8 2, ptr %166, align 1
  %167 = getelementptr inbounds [6 x i8], ptr %16, i32 0, i32 2
  store i8 31, ptr %167, align 1
  %168 = getelementptr inbounds [6 x i8], ptr %16, i32 0, i32 3
  store i8 0, ptr %168, align 1
  %169 = getelementptr inbounds [6 x i8], ptr %16, i32 0, i32 4
  store i8 0, ptr %169, align 1
  %170 = getelementptr inbounds [6 x i8], ptr %16, i32 0, i32 5
  store i8 0, ptr %170, align 1
  %171 = call i32 @mipi_dsi_generic_write(ptr noundef %165, ptr noundef nonnull %16, i32 noundef 6) #5
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %164
  store i32 %171, ptr %36, align 4
  br label %174

174:                                              ; preds = %173, %160, %142
  %175 = phi i32 [ %161, %160 ], [ %171, %173 ], [ %143, %142 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %16) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %14) #5
  br label %206

176:                                              ; preds = %164
  %177 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %16) #5
  %178 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %15) #5
  %179 = icmp eq i32 %177, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %176
  %181 = getelementptr i8, ptr %178, i32 -8
  store i8 4, ptr %15, align 1
  %182 = getelementptr inbounds [6 x i8], ptr %15, i32 0, i32 1
  store i8 1, ptr %182, align 1
  %183 = getelementptr inbounds [6 x i8], ptr %15, i32 0, i32 2
  store i8 1, ptr %183, align 1
  %184 = getelementptr inbounds [6 x i8], ptr %15, i32 0, i32 3
  store i8 0, ptr %184, align 1
  %185 = getelementptr inbounds [6 x i8], ptr %15, i32 0, i32 4
  store i8 0, ptr %185, align 1
  %186 = getelementptr inbounds [6 x i8], ptr %15, i32 0, i32 5
  store i8 0, ptr %186, align 1
  %187 = call i32 @mipi_dsi_generic_write(ptr noundef %181, ptr noundef nonnull %15, i32 noundef 6) #5
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  store i32 %187, ptr %36, align 4
  br label %190

190:                                              ; preds = %189, %176, %158
  %191 = phi i32 [ %177, %176 ], [ %187, %189 ], [ %159, %158 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %15) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %13) #5
  br label %222

192:                                              ; preds = %180
  %193 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %15) #5
  %194 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %14) #5
  %195 = icmp eq i32 %193, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %192
  %197 = getelementptr i8, ptr %194, i32 -8
  store i8 4, ptr %14, align 1
  %198 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 1
  store i8 2, ptr %198, align 1
  %199 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 2
  store i8 1, ptr %199, align 1
  %200 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 3
  store i8 0, ptr %200, align 1
  %201 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 4
  store i8 0, ptr %201, align 1
  %202 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 5
  store i8 0, ptr %202, align 1
  %203 = call i32 @mipi_dsi_generic_write(ptr noundef %197, ptr noundef nonnull %14, i32 noundef 6) #5
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %196
  store i32 %203, ptr %36, align 4
  br label %206

206:                                              ; preds = %205, %192, %174
  %207 = phi i32 [ %193, %192 ], [ %203, %205 ], [ %175, %174 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %12) #5
  br label %238

208:                                              ; preds = %196
  %209 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #5
  %210 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %13) #5
  %211 = icmp eq i32 %209, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %208
  %213 = getelementptr i8, ptr %210, i32 -8
  store i8 80, ptr %13, align 1
  %214 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 1
  store i8 4, ptr %214, align 1
  %215 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 2
  store i8 32, ptr %215, align 1
  %216 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 3
  store i8 1, ptr %216, align 1
  %217 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 4
  store i8 -6, ptr %217, align 1
  %218 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 5
  store i8 0, ptr %218, align 1
  %219 = call i32 @mipi_dsi_generic_write(ptr noundef %213, ptr noundef nonnull %13, i32 noundef 6) #5
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %212
  store i32 %219, ptr %36, align 4
  br label %222

222:                                              ; preds = %221, %208, %190
  %223 = phi i32 [ %209, %208 ], [ %219, %221 ], [ %191, %190 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %13) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #5
  br label %254

224:                                              ; preds = %212
  %225 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %13) #5
  %226 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %12) #5
  %227 = icmp eq i32 %225, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %224
  %229 = getelementptr i8, ptr %226, i32 -8
  store i8 -96, ptr %12, align 1
  %230 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 1
  store i8 4, ptr %230, align 1
  %231 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 2
  store i8 6, ptr %231, align 1
  %232 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 3
  store i8 -128, ptr %232, align 1
  %233 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 4
  store i8 68, ptr %233, align 1
  %234 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 5
  store i8 0, ptr %234, align 1
  %235 = call i32 @mipi_dsi_generic_write(ptr noundef %229, ptr noundef nonnull %12, i32 noundef 6) #5
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %228
  store i32 %235, ptr %36, align 4
  br label %238

238:                                              ; preds = %237, %224, %206
  %239 = phi i32 [ %225, %224 ], [ %235, %237 ], [ %207, %206 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #5
  br label %270

240:                                              ; preds = %228
  %241 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %12) #5
  %242 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #5
  %243 = icmp eq i32 %241, 0
  br i1 %243, label %244, label %254

244:                                              ; preds = %240
  %245 = getelementptr i8, ptr %242, i32 -8
  store i8 -96, ptr %11, align 1
  %246 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 1
  store i8 4, ptr %246, align 1
  %247 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 2
  store i8 6, ptr %247, align 1
  %248 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 3
  store i8 -128, ptr %248, align 1
  %249 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 4
  store i8 4, ptr %249, align 1
  %250 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 5
  store i8 0, ptr %250, align 1
  %251 = call i32 @mipi_dsi_generic_write(ptr noundef %245, ptr noundef nonnull %11, i32 noundef 6) #5
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %244
  store i32 %251, ptr %36, align 4
  br label %254

254:                                              ; preds = %253, %240, %222
  %255 = phi i32 [ %241, %240 ], [ %251, %253 ], [ %223, %222 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #5
  br label %286

256:                                              ; preds = %244
  %257 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #5
  %258 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #5
  %259 = icmp eq i32 %257, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %256
  %261 = getelementptr i8, ptr %258, i32 -8
  store i8 4, ptr %10, align 1
  %262 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 5, ptr %262, align 1
  %263 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 4, ptr %263, align 1
  %264 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 3
  store i8 0, ptr %264, align 1
  %265 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 4
  store i8 0, ptr %265, align 1
  %266 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 5
  store i8 0, ptr %266, align 1
  %267 = call i32 @mipi_dsi_generic_write(ptr noundef %261, ptr noundef nonnull %10, i32 noundef 6) #5
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %260
  store i32 %267, ptr %36, align 4
  br label %270

270:                                              ; preds = %269, %256, %238
  %271 = phi i32 [ %257, %256 ], [ %267, %269 ], [ %239, %238 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #5
  br label %302

272:                                              ; preds = %260
  %273 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #5
  %274 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #5
  %275 = icmp eq i32 %273, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %272
  %277 = getelementptr i8, ptr %274, i32 -8
  store i8 -128, ptr %9, align 1
  %278 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 4, ptr %278, align 1
  %279 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 0, ptr %279, align 1
  %280 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 3
  store i8 1, ptr %280, align 1
  %281 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 4
  store i8 2, ptr %281, align 1
  %282 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 5
  store i8 3, ptr %282, align 1
  %283 = call i32 @mipi_dsi_generic_write(ptr noundef %277, ptr noundef nonnull %9, i32 noundef 6) #5
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %276
  store i32 %283, ptr %36, align 4
  br label %286

286:                                              ; preds = %285, %272, %254
  %287 = phi i32 [ %273, %272 ], [ %283, %285 ], [ %255, %254 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #5
  br label %318

288:                                              ; preds = %276
  %289 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #5
  %290 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #5
  %291 = icmp eq i32 %289, 0
  br i1 %291, label %292, label %302

292:                                              ; preds = %288
  %293 = getelementptr i8, ptr %290, i32 -8
  store i8 -124, ptr %8, align 1
  %294 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 4, ptr %294, align 1
  %295 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 4, ptr %295, align 1
  %296 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 3
  store i8 7, ptr %296, align 1
  %297 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 4
  store i8 5, ptr %297, align 1
  %298 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 5
  store i8 8, ptr %298, align 1
  %299 = call i32 @mipi_dsi_generic_write(ptr noundef %293, ptr noundef nonnull %8, i32 noundef 6) #5
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %292
  store i32 %299, ptr %36, align 4
  br label %302

302:                                              ; preds = %301, %288, %270
  %303 = phi i32 [ %289, %288 ], [ %299, %301 ], [ %271, %270 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #5
  br label %334

304:                                              ; preds = %292
  %305 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #5
  %306 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #5
  %307 = icmp eq i32 %305, 0
  br i1 %307, label %308, label %318

308:                                              ; preds = %304
  %309 = getelementptr i8, ptr %306, i32 -8
  store i8 -120, ptr %7, align 1
  %310 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 4, ptr %310, align 1
  %311 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 9, ptr %311, align 1
  %312 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 3
  store i8 10, ptr %312, align 1
  %313 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 4
  store i8 14, ptr %313, align 1
  %314 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 5
  store i8 15, ptr %314, align 1
  %315 = call i32 @mipi_dsi_generic_write(ptr noundef %309, ptr noundef nonnull %7, i32 noundef 6) #5
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %308
  store i32 %315, ptr %36, align 4
  br label %318

318:                                              ; preds = %317, %304, %286
  %319 = phi i32 [ %305, %304 ], [ %315, %317 ], [ %287, %286 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #5
  br label %350

320:                                              ; preds = %308
  %321 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #5
  %322 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #5
  %323 = icmp eq i32 %321, 0
  br i1 %323, label %324, label %334

324:                                              ; preds = %320
  %325 = getelementptr i8, ptr %322, i32 -8
  store i8 -116, ptr %6, align 1
  %326 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 4, ptr %326, align 1
  %327 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 11, ptr %327, align 1
  %328 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 3
  store i8 12, ptr %328, align 1
  %329 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 4
  store i8 13, ptr %329, align 1
  %330 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  store i8 16, ptr %330, align 1
  %331 = call i32 @mipi_dsi_generic_write(ptr noundef %325, ptr noundef nonnull %6, i32 noundef 6) #5
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %324
  store i32 %331, ptr %36, align 4
  br label %334

334:                                              ; preds = %333, %320, %302
  %335 = phi i32 [ %321, %320 ], [ %331, %333 ], [ %303, %302 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #5
  br label %366

336:                                              ; preds = %324
  %337 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #5
  %338 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #5
  %339 = icmp eq i32 %337, 0
  br i1 %339, label %340, label %350

340:                                              ; preds = %336
  %341 = getelementptr i8, ptr %338, i32 -8
  store i8 -112, ptr %5, align 1
  %342 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 4, ptr %342, align 1
  %343 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 22, ptr %343, align 1
  %344 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 3
  store i8 23, ptr %344, align 1
  %345 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 4
  store i8 17, ptr %345, align 1
  %346 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 5
  store i8 18, ptr %346, align 1
  %347 = call i32 @mipi_dsi_generic_write(ptr noundef %341, ptr noundef nonnull %5, i32 noundef 6) #5
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %340
  store i32 %347, ptr %36, align 4
  br label %350

350:                                              ; preds = %349, %336, %318
  %351 = phi i32 [ %337, %336 ], [ %347, %349 ], [ %319, %318 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #5
  br label %382

352:                                              ; preds = %340
  %353 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #5
  %354 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #5
  %355 = icmp eq i32 %353, 0
  br i1 %355, label %356, label %366

356:                                              ; preds = %352
  %357 = getelementptr i8, ptr %354, i32 -8
  store i8 -108, ptr %4, align 1
  %358 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 4, ptr %358, align 1
  %359 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 19, ptr %359, align 1
  %360 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 3
  store i8 20, ptr %360, align 1
  %361 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 4
  store i8 21, ptr %361, align 1
  %362 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 5
  store i8 27, ptr %362, align 1
  %363 = call i32 @mipi_dsi_generic_write(ptr noundef %357, ptr noundef nonnull %4, i32 noundef 6) #5
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %356
  store i32 %363, ptr %36, align 4
  br label %366

366:                                              ; preds = %365, %352, %334
  %367 = phi i32 [ %353, %352 ], [ %363, %365 ], [ %335, %334 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #5
  br label %399

368:                                              ; preds = %356
  %369 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #5
  %370 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #5
  %371 = icmp eq i32 %369, 0
  br i1 %371, label %372, label %382

372:                                              ; preds = %368
  %373 = getelementptr i8, ptr %370, i32 -8
  store i8 -104, ptr %3, align 1
  %374 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 4, ptr %374, align 1
  %375 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 24, ptr %375, align 1
  %376 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  store i8 25, ptr %376, align 1
  %377 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 26, ptr %377, align 1
  %378 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  store i8 6, ptr %378, align 1
  %379 = call i32 @mipi_dsi_generic_write(ptr noundef %373, ptr noundef nonnull %3, i32 noundef 6) #5
  %380 = icmp slt i32 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %372
  store i32 %379, ptr %36, align 4
  br label %382

382:                                              ; preds = %381, %368, %350
  %383 = phi i32 [ %369, %368 ], [ %379, %381 ], [ %351, %350 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #5
  br label %399

384:                                              ; preds = %372
  %385 = load i32, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #5
  %386 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #5
  %387 = icmp eq i32 %385, 0
  br i1 %387, label %388, label %399

388:                                              ; preds = %384
  %389 = getelementptr i8, ptr %386, i32 -8
  store i8 -100, ptr %2, align 1
  %390 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 4, ptr %390, align 1
  %391 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 13, ptr %391, align 1
  %392 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 3
  store i8 0, ptr %392, align 1
  %393 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 4
  store i8 0, ptr %393, align 1
  %394 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 5
  store i8 0, ptr %394, align 1
  %395 = call i32 @mipi_dsi_generic_write(ptr noundef %389, ptr noundef nonnull %2, i32 noundef 6) #5
  %396 = icmp slt i32 %395, 0
  br i1 %396, label %399, label %397

397:                                              ; preds = %388
  %398 = load i32, ptr %36, align 4
  br label %399

399:                                              ; preds = %397, %388, %384, %382, %366
  %400 = phi i32 [ %398, %397 ], [ %383, %382 ], [ %385, %384 ], [ %367, %366 ], [ %395, %388 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #5
  br label %401

401:                                              ; preds = %399, %40, %39
  %402 = phi i32 [ %400, %399 ], [ %37, %39 ], [ %44, %40 ]
  store i32 0, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #5
  %403 = icmp slt i32 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %401
  %405 = load ptr, ptr %26, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %405, ptr noundef nonnull @.str.15, i32 noundef %402) #6
  br label %406

406:                                              ; preds = %404, %401
  %407 = getelementptr i8, ptr %0, i32 1140
  %408 = load ptr, ptr %407, align 8
  %409 = call i32 @drm_panel_prepare(ptr noundef %408) #5
  %410 = icmp slt i32 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %406
  %412 = load ptr, ptr %26, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %412, ptr noundef nonnull @.str.16, i32 noundef %409) #6
  br label %413

413:                                              ; preds = %411, %406
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tc358764_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1140
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_panel_enable(ptr noundef %3) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef %4) #6
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tc358764_get_modes(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1008
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_panel_get_modes(ptr noundef %3, ptr noundef %0) #5
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

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
