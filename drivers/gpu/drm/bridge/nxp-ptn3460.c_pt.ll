; ModuleID = '/llk/IR/drivers/gpu/drm/bridge/nxp-ptn3460.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/nxp-ptn3460.c"
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
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ptn3460_bridge = type { %struct.drm_connector, ptr, %struct.drm_bridge, ptr, ptr, ptr, i32, i8 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }

@ptn3460_i2c_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ptn3460\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@ptn3460_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,ptn3460\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author265 = internal constant [41 x i8] c"author=Sean Paul <seanpaul@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description266 = internal constant [50 x i8] c"description=NXP ptn3460 eDP-LVDS converter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@ptn3460_driver = internal global %struct.i2c_driver { i32 0, ptr @ptn3460_probe, ptr @ptn3460_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ptn3460_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ptn3460_i2c_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"nxp,ptn3460\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot get gpio_pd_n %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"cannot get gpio_rst_n %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"edid-emulation\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Can't read EDID emulation value\0A\00", align 1
@ptn3460_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr @ptn3460_bridge_attach, ptr null, ptr null, ptr null, ptr @ptn3460_disable, ptr null, ptr null, ptr @ptn3460_pre_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ptn3460_get_edid, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Parent encoder object not found\00", align 1
@ptn3460_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"Failed to initialize connector with drm\0A\00", align 1
@ptn3460_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @ptn3460_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Select EDID failed ret=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Failed to transfer EDID to sram, ret=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Failed to write EDID value, ret=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Failed to send i2c command, ret=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Failed to allocate EDID\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"Failed to recv i2c data, ret=%d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_license267], section "llvm.metadata"

@__mod_i2c__ptn3460_i2c_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @ptn3460_i2c_table
@__mod_of__ptn3460_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @ptn3460_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @ptn3460_driver) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @ptn3460_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptn3460_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 1128, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %9, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 4
  %14 = call ptr @devm_drm_panel_bridge_add(ptr noundef %4, ptr noundef %13) #6
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = ptrtoint ptr %14 to i32
  br label %46

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ptn3460_bridge, ptr %5, i32 0, i32 3
  store ptr %14, ptr %19, align 8
  %20 = getelementptr inbounds %struct.ptn3460_bridge, ptr %5, i32 0, i32 1
  store ptr %0, ptr %20, align 8
  %21 = call ptr @devm_gpiod_get(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef 7) #6
  %22 = getelementptr inbounds %struct.ptn3460_bridge, ptr %5, i32 0, i32 4
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = ptrtoint ptr %21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %25) #7
  br label %46

26:                                               ; preds = %18
  %27 = call ptr @devm_gpiod_get(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef 3) #6
  %28 = getelementptr inbounds %struct.ptn3460_bridge, ptr %5, i32 0, i32 5
  store ptr %27, ptr %28, align 8
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = ptrtoint ptr %27 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %31) #6
  br label %46

32:                                               ; preds = %26
  %33 = load ptr, ptr %8, align 8
  %34 = getelementptr inbounds %struct.ptn3460_bridge, ptr %5, i32 0, i32 6
  %35 = call i32 @of_property_read_variable_u32_array(ptr noundef %33, ptr noundef nonnull @.str.5, ptr noundef %34, i32 noundef 1, i32 noundef 0) #6
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #7
  br label %46

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ptn3460_bridge, ptr %5, i32 0, i32 2
  %40 = getelementptr inbounds %struct.ptn3460_bridge, ptr %5, i32 0, i32 2, i32 7
  store ptr @ptn3460_bridge_funcs, ptr %40, align 4
  %41 = getelementptr inbounds %struct.ptn3460_bridge, ptr %5, i32 0, i32 2, i32 9
  store i32 2, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ptn3460_bridge, ptr %5, i32 0, i32 2, i32 10
  store i32 7, ptr %42, align 4
  %43 = load ptr, ptr %8, align 8
  %44 = getelementptr inbounds %struct.ptn3460_bridge, ptr %5, i32 0, i32 2, i32 4
  store ptr %43, ptr %44, align 4
  call void @drm_bridge_add(ptr noundef %39) #6
  %45 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %5, ptr %45, align 8
  br label %46

46:                                               ; preds = %38, %37, %30, %24, %16, %7, %2
  %47 = phi i32 [ %17, %16 ], [ %25, %24 ], [ %31, %30 ], [ %35, %37 ], [ 0, %38 ], [ -12, %2 ], [ %10, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptn3460_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ptn3460_bridge, ptr %3, i32 0, i32 2
  tail call void @drm_bridge_remove(ptr noundef %4) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
define internal i32 @ptn3460_bridge_attach(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -972
  %4 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 132
  %7 = load ptr, ptr %6, align 8
  %8 = or i32 %1, 1
  %9 = tail call i32 @drm_bridge_attach(ptr noundef %5, ptr noundef %7, ptr noundef %0, i32 noundef %8) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %2
  %12 = and i32 %1, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #6
  br label %32

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 -344
  store i8 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @drm_connector_init(ptr noundef %21, ptr noundef %3, ptr noundef nonnull @ptn3460_connector_funcs, i32 noundef 7) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #6
  br label %32

25:                                               ; preds = %18
  %26 = getelementptr i8, ptr %0, i32 -336
  store ptr @ptn3460_connector_helper_funcs, ptr %26, align 4
  %27 = tail call i32 @drm_connector_register(ptr noundef %3) #6
  %28 = load ptr, ptr %4, align 4
  %29 = tail call i32 @drm_connector_attach_encoder(ptr noundef %3, ptr noundef %28) #6
  %30 = load ptr, ptr %3, align 8
  %31 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %30) #6
  br label %32

32:                                               ; preds = %25, %24, %17, %11, %2
  %33 = phi i32 [ %22, %24 ], [ 0, %25 ], [ -19, %17 ], [ %9, %2 ], [ 0, %11 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ptn3460_disable(ptr nocapture noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 148
  %3 = load i8, ptr %2, align 8, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  store i8 0, ptr %2, align 8
  %6 = getelementptr i8, ptr %0, i32 140
  %7 = load ptr, ptr %6, align 8
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #6
  %8 = getelementptr i8, ptr %0, i32 136
  %9 = load ptr, ptr %8, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #6
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ptn3460_pre_enable(ptr nocapture noundef %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr i8, ptr %0, i32 148
  %5 = load i8, ptr %4, align 8, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 136
  %9 = load ptr, ptr %8, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 1) #6
  %10 = getelementptr i8, ptr %0, i32 140
  %11 = load ptr, ptr %10, align 8
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %12 = load ptr, ptr %10, align 8
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 90) #6
  %13 = getelementptr i8, ptr %0, i32 144
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i8 -123, ptr %3, align 2
  %16 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %15, ptr %16, align 1
  %17 = getelementptr i8, ptr %0, i32 -4
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %3, i32 noundef 2, i16 noundef zeroext 0) #6
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %22, label %21

21:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  br label %25

22:                                               ; preds = %7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %19) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %19) #6
  br label %38

25:                                               ; preds = %22, %21
  %26 = load i32, ptr %13, align 4
  %27 = trunc i32 %26 to i8
  %28 = shl i8 %27, 1
  %29 = or i8 %28, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #6
  store i8 -124, ptr %2, align 2
  %30 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %29, ptr %30, align 1
  %31 = load ptr, ptr %17, align 8
  %32 = call i32 @i2c_transfer_buffer_flags(ptr noundef %31, ptr noundef nonnull %2, i32 noundef 2, i16 noundef zeroext 0) #6
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  br label %40

35:                                               ; preds = %25
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %32) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #6
  %36 = icmp eq i32 %32, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %32) #6
  br label %38

38:                                               ; preds = %37, %24
  %39 = phi i32 [ %19, %24 ], [ %32, %37 ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %39) #6
  br label %40

40:                                               ; preds = %38, %35, %34
  store i8 1, ptr %4, align 8
  br label %41

41:                                               ; preds = %40, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ptn3460_get_edid(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca i8, align 1
  %4 = getelementptr i8, ptr %0, i32 148
  %5 = load i8, ptr %4, align 8, !range !9
  %6 = icmp eq i8 %5, 0
  tail call void @ptn3460_pre_enable(ptr noundef %0)
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 128) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #6
  br label %27

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 0, ptr %3, align 1
  %12 = getelementptr i8, ptr %0, i32 -4
  %13 = load ptr, ptr %12, align 8
  %14 = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %3, i32 noundef 1, i16 noundef zeroext 0) #6
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %14) #6
  br label %23

17:                                               ; preds = %11
  %18 = load ptr, ptr %12, align 8
  %19 = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %8, i32 noundef 128, i16 noundef zeroext 1) #6
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %27

22:                                               ; preds = %17
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %19) #6
  br label %23

23:                                               ; preds = %22, %16
  %24 = phi i32 [ %14, %16 ], [ %19, %22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  call void @kfree(ptr noundef nonnull %8) #6
  br label %27

27:                                               ; preds = %26, %23, %21, %10
  %28 = phi ptr [ null, %26 ], [ %8, %23 ], [ null, %10 ], [ %8, %21 ]
  br i1 %6, label %29, label %37

29:                                               ; preds = %27
  %30 = load i8, ptr %4, align 8, !range !9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  store i8 0, ptr %4, align 8
  %33 = getelementptr i8, ptr %0, i32 140
  %34 = load ptr, ptr %33, align 8
  call void @gpiod_set_value(ptr noundef %34, i32 noundef 1) #6
  %35 = getelementptr i8, ptr %0, i32 136
  %36 = load ptr, ptr %35, align 4
  call void @gpiod_set_value(ptr noundef %36, i32 noundef 0) #6
  br label %37

37:                                               ; preds = %32, %29, %27
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

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
define internal i32 @ptn3460_connector_get_modes(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ptn3460_bridge, ptr %0, i32 0, i32 2
  %3 = tail call ptr @ptn3460_get_edid(ptr noundef %2, ptr noundef %0)
  %4 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef %3) #6
  %5 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef %3) #6
  tail call void @kfree(ptr noundef %3) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
