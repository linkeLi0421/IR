; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.component_ops = type { ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.sun6i_dsi = type { %struct.drm_connector, %struct.drm_encoder, %struct.mipi_dsi_host, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.73 = type { i32, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@sun6i_dsi_of_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author283 = internal constant [56 x i8] c"author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description284 = internal constant [37 x i8] c"description=Allwinner A31 DSI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@sun6i_dsi_platform_driver = internal global %struct.platform_driver { ptr @sun6i_dsi_probe, ptr @sun6i_dsi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun6i_dsi_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [15 x i8] c"sun6i-mipi-dsi\00", align 1
@sun6i_dsi_host_ops = internal constant %struct.mipi_dsi_host_ops { ptr @sun6i_dsi_attach, ptr @sun6i_dsi_detach, ptr @sun6i_dsi_transfer }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"allwinner,sun6i-a31-mipi-dsi\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Couldn't map the DSI encoder registers\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"vcc-dsi\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Couldn't get VCC-DSI supply\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Couldn't get our reset line\0A\00", align 1
@sun6i_dsi_regmap_config = internal constant %struct.regmap_config { ptr @.str.16, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1788, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Couldn't init regmap\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Couldn't get the DSI bus clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Couldn't get the DSI mod clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"dphy\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Couldn't get the MIPI D-PHY\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Couldn't register MIPI-DSI host\0A\00", align 1
@sun6i_dsi_ops = internal constant %struct.component_ops { ptr @sun6i_dsi_bind, ptr @sun6i_dsi_unbind }, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"Couldn't register our component\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Attached device %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"mipi-dsi\00", align 1
@sun6i_dsi_enc_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_dsi_encoder_disable, ptr @sun6i_dsi_encoder_enable, ptr null }, align 4
@.str.17 = private unnamed_addr constant [37 x i8] c"Couldn't initialise the DSI encoder\0A\00", align 1
@sun6i_dsi_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @sun6i_dsi_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sun6i_dsi_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @sun6i_dsi_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.18 = private unnamed_addr constant [39 x i8] c"Couldn't initialise the DSI connector\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Disabling DSI output\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Enabling DSI output\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"failed to enable VCC-DSI supply: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.22 = private unnamed_addr constant [39 x i8] c"drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author283, ptr @__UNIQUE_ID_description284, ptr @__UNIQUE_ID_license285], section "llvm.metadata"
@switch.table.sun6i_dsi_encoder_enable.23 = private unnamed_addr constant [4 x i32] [i32 3, i32 3, i32 2, i32 2], align 4
@switch.table.sun6i_dsi_encoder_enable.24 = private unnamed_addr constant [4 x i32] [i32 24, i32 24, i32 18, i32 16], align 4

@__mod_of__sun6i_dsi_of_table_device_table = dso_local alias [3 x %struct.of_device_id], ptr @sun6i_dsi_of_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun6i_dsi_platform_driver, ptr noundef nonnull @__this_module) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun6i_dsi_platform_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dsi_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1096, i32 noundef 3520) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %92, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  %7 = getelementptr inbounds %struct.sun6i_dsi, ptr %3, i32 0, i32 9
  store ptr %2, ptr %7, align 8
  %8 = getelementptr inbounds %struct.sun6i_dsi, ptr %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.sun6i_dsi, ptr %3, i32 0, i32 2, i32 1
  store ptr @sun6i_dsi_host_ops, ptr %9, align 4
  store ptr %2, ptr %8, align 8
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @of_device_is_compatible(ptr noundef %11, ptr noundef nonnull @.str.1) #12
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr null, ptr @.str.2
  %15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #12
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #13
  %18 = ptrtoint ptr %15 to i32
  br label %92

19:                                               ; preds = %5
  %20 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.4) #12
  %21 = getelementptr inbounds %struct.sun6i_dsi, ptr %3, i32 0, i32 6
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  %25 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %24, ptr noundef nonnull @.str.5) #12
  br label %92

26:                                               ; preds = %19
  %27 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %28 = getelementptr inbounds %struct.sun6i_dsi, ptr %3, i32 0, i32 7
  store ptr %27, ptr %28, align 8
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #13
  %31 = load ptr, ptr %28, align 8
  %32 = ptrtoint ptr %31 to i32
  br label %92

33:                                               ; preds = %26
  %34 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef null, ptr noundef %15, ptr noundef nonnull @sun6i_dsi_regmap_config, ptr noundef null, ptr noundef null) #12
  %35 = getelementptr inbounds %struct.sun6i_dsi, ptr %3, i32 0, i32 5
  store ptr %34, ptr %35, align 8
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #13
  %38 = load ptr, ptr %35, align 8
  %39 = ptrtoint ptr %38 to i32
  br label %92

40:                                               ; preds = %33
  %41 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef %14) #12
  %42 = getelementptr inbounds %struct.sun6i_dsi, ptr %3, i32 0, i32 3
  store ptr %41, ptr %42, align 8
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = ptrtoint ptr %41 to i32
  %46 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %45, ptr noundef nonnull @.str.8) #12
  br label %92

47:                                               ; preds = %40
  %48 = load ptr, ptr %35, align 8
  %49 = tail call i32 @regmap_mmio_attach_clk(ptr noundef %48, ptr noundef %41) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %92

51:                                               ; preds = %47
  %52 = load ptr, ptr %10, align 8
  %53 = tail call i32 @of_device_is_compatible(ptr noundef %52, ptr noundef nonnull @.str.1) #12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.sun6i_dsi, ptr %3, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  br label %65

58:                                               ; preds = %51
  %59 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.9) #12
  %60 = getelementptr inbounds %struct.sun6i_dsi, ptr %3, i32 0, i32 4
  store ptr %59, ptr %60, align 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #13
  %63 = load ptr, ptr %60, align 4
  %64 = ptrtoint ptr %63 to i32
  br label %86

65:                                               ; preds = %58, %55
  %66 = phi ptr [ %57, %55 ], [ %59, %58 ]
  %67 = getelementptr inbounds %struct.sun6i_dsi, ptr %3, i32 0, i32 4
  %68 = tail call i32 @clk_set_rate_exclusive(ptr noundef %66, i32 noundef 297000000) #12
  %69 = tail call ptr @devm_phy_get(ptr noundef %2, ptr noundef nonnull @.str.11) #12
  %70 = getelementptr inbounds %struct.sun6i_dsi, ptr %3, i32 0, i32 8
  store ptr %69, ptr %70, align 4
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12) #13
  %73 = load ptr, ptr %70, align 4
  %74 = ptrtoint ptr %73 to i32
  br label %83

75:                                               ; preds = %65
  %76 = tail call i32 @mipi_dsi_host_register(ptr noundef %8) #12
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13) #13
  br label %83

79:                                               ; preds = %75
  %80 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @sun6i_dsi_ops) #12
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %79
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.14) #13
  tail call void @mipi_dsi_host_unregister(ptr noundef %8) #12
  br label %83

83:                                               ; preds = %82, %78, %72
  %84 = phi i32 [ %74, %72 ], [ %76, %78 ], [ %80, %82 ]
  %85 = load ptr, ptr %67, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %85) #12
  br label %86

86:                                               ; preds = %83, %62
  %87 = phi i32 [ %64, %62 ], [ %84, %83 ]
  %88 = load ptr, ptr %42, align 8
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %35, align 8
  tail call void @regmap_mmio_detach_clk(ptr noundef %91) #12
  br label %92

92:                                               ; preds = %90, %86, %79, %47, %44, %37, %30, %23, %17, %1
  %93 = phi i32 [ %18, %17 ], [ %25, %23 ], [ %32, %30 ], [ %39, %37 ], [ %46, %44 ], [ -12, %1 ], [ %49, %47 ], [ 0, %79 ], [ %87, %90 ], [ %87, %86 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dsi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @sun6i_dsi_ops) #12
  %5 = getelementptr inbounds %struct.sun6i_dsi, ptr %4, i32 0, i32 2
  tail call void @mipi_dsi_host_unregister(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.sun6i_dsi, ptr %4, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.sun6i_dsi, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.sun6i_dsi, ptr %4, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  tail call void @regmap_mmio_detach_clk(ptr noundef %13) #12
  br label %14

14:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_mmio_attach_clk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate_exclusive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_mmio_detach_clk(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dsi_attach(ptr nocapture noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_drm_find_panel(ptr noundef %4) #12
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = ptrtoint ptr %5 to i32
  br label %22

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 48
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 8
  %15 = load i8, ptr %14, align 4, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 52
  store ptr %5, ptr %18, align 4
  %19 = getelementptr i8, ptr %0, i32 44
  store ptr %1, ptr %19, align 4
  tail call void @drm_kms_helper_hotplug_event(ptr noundef nonnull %11) #12
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.15, ptr noundef %21) #13
  br label %22

22:                                               ; preds = %17, %13, %9, %7
  %23 = phi i32 [ %8, %7 ], [ 0, %17 ], [ -517, %13 ], [ -517, %9 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dsi_detach(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 52
  store ptr null, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 44
  store ptr null, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 48
  %6 = load ptr, ptr %5, align 8
  tail call void @drm_kms_helper_hotplug_event(ptr noundef %6) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dsi_transfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -1040
  %5 = tail call fastcc i32 @sun6i_dsi_inst_wait_for_completion(ptr noundef %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 24
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %11

11:                                               ; preds = %7, %2
  %12 = getelementptr i8, ptr %0, i32 24
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 512, i32 noundef 100663808) #12
  %15 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  switch i8 %16, label %149 [
    i8 5, label %17
    i8 21, label %17
    i8 35, label %17
    i8 57, label %50
    i8 6, label %91
  ]

17:                                               ; preds = %11, %11, %11
  %18 = load ptr, ptr %12, align 8
  %19 = zext i8 %16 to i32
  %20 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = or i32 %24, %19
  %26 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = getelementptr i8, ptr %21, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 16
  %34 = or i32 %33, %25
  br label %35

35:                                               ; preds = %29, %17
  %36 = phi i32 [ %34, %29 ], [ %25, %17 ]
  %37 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %36) #12
  %38 = shl i32 %37, 24
  %39 = or i32 %38, %36
  %40 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 768, i32 noundef %39) #12
  %41 = load ptr, ptr %12, align 8
  %42 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 512, i32 noundef 255, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %43 = load ptr, ptr %12, align 8
  %44 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 72, i32 noundef 983044) #12
  %45 = load ptr, ptr %12, align 8
  %46 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %47 = load ptr, ptr %12, align 8
  %48 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %49 = load i32, ptr %26, align 4
  br label %149

50:                                               ; preds = %11
  %51 = load ptr, ptr %12, align 8
  %52 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %53, 8
  %55 = or i32 %54, 57
  %56 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %55) #12
  %57 = shl i32 %56, 24
  %58 = or i32 %57, %55
  %59 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 768, i32 noundef %58) #12
  %60 = load i32, ptr %52, align 4
  %61 = add i32 %60, 5
  %62 = and i32 %61, -4
  %63 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %62, i32 noundef 3520) #14
  %64 = icmp eq ptr %63, null
  br i1 %64, label %149, label %65

65:                                               ; preds = %50
  %66 = load i32, ptr %52, align 4
  %67 = add i32 %66, 5
  %68 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %63, ptr align 1 %69, i32 %66, i1 false) #12
  %70 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef nonnull %63, i32 noundef %66) #12
  %71 = load i32, ptr %52, align 4
  %72 = getelementptr i8, ptr %63, i32 %71
  store i16 %70, ptr %72, align 1
  %73 = load ptr, ptr %12, align 8
  %74 = sdiv i32 %67, 4
  %75 = tail call i32 @regmap_bulk_write(ptr noundef %73, i32 noundef 772, ptr noundef nonnull %63, i32 noundef %74) #12
  %76 = load ptr, ptr %12, align 8
  %77 = tail call i32 @regmap_write(ptr noundef %76, i32 noundef 512, i32 noundef %67) #12
  tail call void @kfree(ptr noundef nonnull %63) #12
  %78 = load ptr, ptr %12, align 8
  %79 = tail call i32 @regmap_write(ptr noundef %78, i32 noundef 72, i32 noundef 983044) #12
  %80 = load ptr, ptr %12, align 8
  %81 = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %82 = load ptr, ptr %12, align 8
  %83 = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %84 = tail call fastcc i32 @sun6i_dsi_inst_wait_for_completion(ptr noundef %4) #12
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %65
  %87 = load ptr, ptr %12, align 8
  %88 = tail call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %149

89:                                               ; preds = %65
  %90 = load i32, ptr %52, align 4
  br label %149

91:                                               ; preds = %11
  %92 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 5
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %149

95:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %96 = load ptr, ptr %12, align 8
  %97 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 4
  %98 = load ptr, ptr %97, align 4
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 8
  %102 = or i32 %101, 6
  %103 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 3
  %104 = load i32, ptr %103, align 4
  %105 = icmp ugt i32 %104, 1
  br i1 %105, label %106, label %112

106:                                              ; preds = %95
  %107 = getelementptr i8, ptr %98, i32 1
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 16
  %111 = or i32 %110, %102
  br label %112

112:                                              ; preds = %106, %95
  %113 = phi i32 [ %111, %106 ], [ %102, %95 ]
  %114 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %113) #12
  %115 = shl i32 %114, 24
  %116 = or i32 %115, %113
  %117 = tail call i32 @regmap_write(ptr noundef %96, i32 noundef 768, i32 noundef %116) #12
  %118 = load ptr, ptr %12, align 8
  %119 = tail call i32 @regmap_write(ptr noundef %118, i32 noundef 512, i32 noundef 3) #12
  %120 = load ptr, ptr %12, align 8
  %121 = tail call i32 @regmap_write(ptr noundef %120, i32 noundef 72, i32 noundef 268894452) #12
  %122 = load ptr, ptr %12, align 8
  %123 = tail call i32 @regmap_update_bits_base(ptr noundef %122, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %124 = load ptr, ptr %12, align 8
  %125 = tail call i32 @regmap_update_bits_base(ptr noundef %124, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %126 = tail call fastcc i32 @sun6i_dsi_inst_wait_for_completion(ptr noundef %4) #12
  %127 = icmp slt i32 %126, 0
  %128 = load ptr, ptr %12, align 8
  br i1 %127, label %129, label %131

129:                                              ; preds = %112
  %130 = tail call i32 @regmap_update_bits_base(ptr noundef %128, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %147

131:                                              ; preds = %112
  %132 = call i32 @regmap_read(ptr noundef %128, i32 noundef 512, ptr noundef nonnull %3) #12
  %133 = load i32, ptr %3, align 4
  %134 = and i32 %133, 67108864
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load ptr, ptr %12, align 8
  %138 = call i32 @regmap_read(ptr noundef %137, i32 noundef 576, ptr noundef nonnull %3) #12
  %139 = load i32, ptr %3, align 4
  %140 = and i32 %139, 255
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = lshr i32 %139, 8
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 6
  %146 = load ptr, ptr %145, align 4
  store i8 %144, ptr %146, align 1
  br label %147

147:                                              ; preds = %142, %136, %131, %129
  %148 = phi i32 [ %126, %129 ], [ 1, %142 ], [ -5, %131 ], [ -5, %136 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %149

149:                                              ; preds = %147, %91, %89, %86, %50, %35, %11
  %150 = phi i32 [ %148, %147 ], [ %49, %35 ], [ -22, %91 ], [ -22, %11 ], [ %84, %86 ], [ %90, %89 ], [ -12, %50 ]
  ret i32 %150
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sun6i_dsi_inst_wait_for_completion(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = tail call i64 @ktime_get() #12
  %4 = add i64 %3, 5000000
  %5 = getelementptr inbounds %struct.sun6i_dsi, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 16, ptr noundef nonnull %2) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %19, %1
  %10 = load i32, ptr %2, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = call i64 @ktime_get() #12
  %15 = icmp sgt i64 %14, %4
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load ptr, ptr %5, align 8
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef 16, ptr noundef nonnull %2) #12
  br label %23

19:                                               ; preds = %13
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #12
  %20 = load ptr, ptr %5, align 8
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 16, ptr noundef nonnull %2) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %9, label %23

23:                                               ; preds = %19, %16, %9, %1
  %24 = phi i32 [ %18, %16 ], [ %7, %1 ], [ 0, %9 ], [ %21, %19 ]
  %25 = icmp ne i32 %24, 0
  %26 = load i32, ptr %2, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %25, i1 true, i1 %28
  %30 = select i1 %29, i32 0, i32 -110
  %31 = select i1 %25, i32 %24, i32 %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define internal fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %0) unnamed_addr #5 {
  br label %2

2:                                                ; preds = %19, %1
  %3 = phi i32 [ 0, %1 ], [ %22, %19 ]
  %4 = phi i8 [ 0, %1 ], [ %21, %19 ]
  %5 = phi i1 [ false, %1 ], [ %20, %19 ]
  %6 = shl nuw nsw i32 1, %3
  %7 = and i32 %6, 15805623
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  br i1 %5, label %14, label %10

10:                                               ; preds = %9
  %11 = and i32 %6, %0
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i8
  br label %19

14:                                               ; preds = %9
  %15 = lshr i32 %0, %3
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, %4
  br label %19

19:                                               ; preds = %14, %10, %2
  %20 = phi i1 [ true, %14 ], [ true, %10 ], [ %5, %2 ]
  %21 = phi i8 [ %18, %14 ], [ %13, %10 ], [ %4, %2 ]
  %22 = add nuw nsw i32 %3, 1
  %23 = icmp eq i32 %22, 24
  br i1 %23, label %24, label %2

24:                                               ; preds = %41, %19
  %25 = phi i32 [ %44, %41 ], [ 0, %19 ]
  %26 = phi i8 [ %43, %41 ], [ 0, %19 ]
  %27 = phi i1 [ %42, %41 ], [ false, %19 ]
  %28 = shl nuw nsw i32 1, %25
  %29 = and i32 %28, 15881563
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %24
  br i1 %27, label %36, label %32

32:                                               ; preds = %31
  %33 = and i32 %28, %0
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i8
  br label %41

36:                                               ; preds = %31
  %37 = lshr i32 %0, %25
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = xor i8 %39, %26
  br label %41

41:                                               ; preds = %36, %32, %24
  %42 = phi i1 [ true, %36 ], [ true, %32 ], [ %27, %24 ]
  %43 = phi i8 [ %40, %36 ], [ %35, %32 ], [ %26, %24 ]
  %44 = add nuw nsw i32 %25, 1
  %45 = icmp eq i32 %44, 24
  br i1 %45, label %46, label %24

46:                                               ; preds = %63, %41
  %47 = phi i32 [ %66, %63 ], [ 0, %41 ]
  %48 = phi i8 [ %65, %63 ], [ 0, %41 ]
  %49 = phi i1 [ %64, %63 ], [ false, %41 ]
  %50 = shl nuw nsw i32 1, %47
  %51 = and i32 %50, 7641709
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %46
  br i1 %49, label %58, label %54

54:                                               ; preds = %53
  %55 = and i32 %50, %0
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i8
  br label %63

58:                                               ; preds = %53
  %59 = lshr i32 %0, %47
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %62 = xor i8 %61, %48
  br label %63

63:                                               ; preds = %58, %54, %46
  %64 = phi i1 [ true, %58 ], [ true, %54 ], [ %49, %46 ]
  %65 = phi i8 [ %62, %58 ], [ %57, %54 ], [ %48, %46 ]
  %66 = add nuw nsw i32 %47, 1
  %67 = icmp eq i32 %66, 24
  br i1 %67, label %68, label %46

68:                                               ; preds = %85, %63
  %69 = phi i32 [ %88, %85 ], [ 0, %63 ]
  %70 = phi i8 [ %87, %85 ], [ 0, %63 ]
  %71 = phi i1 [ %86, %85 ], [ false, %63 ]
  %72 = shl nuw nsw i32 1, %69
  %73 = and i32 %72, 12116878
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %68
  br i1 %71, label %80, label %76

76:                                               ; preds = %75
  %77 = and i32 %72, %0
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i8
  br label %85

80:                                               ; preds = %75
  %81 = lshr i32 %0, %69
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  %84 = xor i8 %83, %70
  br label %85

85:                                               ; preds = %80, %76, %68
  %86 = phi i1 [ true, %80 ], [ true, %76 ], [ %71, %68 ]
  %87 = phi i8 [ %84, %80 ], [ %79, %76 ], [ %70, %68 ]
  %88 = add nuw nsw i32 %69, 1
  %89 = icmp eq i32 %88, 24
  br i1 %89, label %90, label %68

90:                                               ; preds = %107, %85
  %91 = phi i32 [ %110, %107 ], [ 0, %85 ]
  %92 = phi i8 [ %109, %107 ], [ 0, %85 ]
  %93 = phi i1 [ %108, %107 ], [ false, %85 ]
  %94 = shl nuw nsw i32 1, %91
  %95 = and i32 %94, 14615536
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %90
  br i1 %93, label %102, label %98

98:                                               ; preds = %97
  %99 = and i32 %94, %0
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i8
  br label %107

102:                                              ; preds = %97
  %103 = lshr i32 %0, %91
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, %92
  br label %107

107:                                              ; preds = %102, %98, %90
  %108 = phi i1 [ true, %102 ], [ true, %98 ], [ %93, %90 ]
  %109 = phi i8 [ %106, %102 ], [ %101, %98 ], [ %92, %90 ]
  %110 = add nuw nsw i32 %91, 1
  %111 = icmp eq i32 %110, 24
  br i1 %111, label %112, label %90

112:                                              ; preds = %129, %107
  %113 = phi i32 [ %132, %129 ], [ 0, %107 ]
  %114 = phi i8 [ %131, %129 ], [ 0, %107 ]
  %115 = phi i1 [ %130, %129 ], [ false, %107 ]
  %116 = shl nuw nsw i32 1, %113
  %117 = and i32 %116, 15727616
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %112
  br i1 %115, label %124, label %120

120:                                              ; preds = %119
  %121 = and i32 %116, %0
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i8
  br label %129

124:                                              ; preds = %119
  %125 = lshr i32 %0, %113
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, %114
  br label %129

129:                                              ; preds = %124, %120, %112
  %130 = phi i1 [ true, %124 ], [ true, %120 ], [ %115, %112 ]
  %131 = phi i8 [ %128, %124 ], [ %123, %120 ], [ %114, %112 ]
  %132 = add nuw nsw i32 %113, 1
  %133 = icmp eq i32 %132, 24
  br i1 %133, label %134, label %112

134:                                              ; preds = %129
  %135 = zext i8 %109 to i32
  %136 = shl nuw nsw i32 %135, 4
  %137 = and i32 %136, 240
  %138 = zext i8 %87 to i32
  %139 = shl nuw nsw i32 %138, 3
  %140 = and i32 %139, 248
  %141 = zext i8 %65 to i32
  %142 = shl nuw nsw i32 %141, 2
  %143 = and i32 %142, 252
  %144 = zext i8 %43 to i32
  %145 = shl nuw nsw i32 %144, 1
  %146 = and i32 %145, 254
  %147 = zext i8 %21 to i32
  %148 = or i32 %146, %147
  %149 = or i32 %143, %148
  %150 = or i32 %140, %149
  %151 = or i32 %137, %150
  %152 = zext i8 %131 to i32
  %153 = shl nuw nsw i32 %152, 5
  %154 = and i32 %153, 224
  %155 = or i32 %154, %151
  ret i32 %155
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dsi_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sun6i_dsi, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sun6i_dsi, ptr %5, i32 0, i32 1, i32 11
  store ptr @sun6i_dsi_enc_helper_funcs, ptr %7, align 4
  %8 = tail call i32 @drm_simple_encoder_init(ptr noundef %2, ptr noundef %6, i32 noundef 6) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sun6i_dsi, ptr %5, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.17) #13
  br label %24

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.sun6i_dsi, ptr %5, i32 0, i32 1, i32 6
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.drm_connector, ptr %5, i32 0, i32 35
  store ptr @sun6i_dsi_connector_helper_funcs, ptr %15, align 4
  %16 = tail call i32 @drm_connector_init(ptr noundef %2, ptr noundef %5, ptr noundef nonnull @sun6i_dsi_connector_funcs, i32 noundef 16) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.sun6i_dsi, ptr %5, i32 0, i32 9
  %20 = load ptr, ptr %19, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.18) #13
  tail call void @drm_encoder_cleanup(ptr noundef %6) #12
  br label %24

21:                                               ; preds = %13
  %22 = tail call i32 @drm_connector_attach_encoder(ptr noundef %5, ptr noundef %6) #12
  %23 = getelementptr inbounds %struct.sun6i_dsi, ptr %5, i32 0, i32 11
  store ptr %2, ptr %23, align 8
  br label %24

24:                                               ; preds = %21, %18, %10
  %25 = phi i32 [ %8, %10 ], [ %16, %18 ], [ 0, %21 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun6i_dsi_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #8 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sun6i_dsi, ptr %5, i32 0, i32 11
  store ptr null, ptr %6, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_dsi_encoder_disable(ptr nocapture noundef readonly %0) #2 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19) #12
  %2 = getelementptr i8, ptr %0, i32 124
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @drm_panel_disable(ptr noundef nonnull %3) #12
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 @drm_panel_unprepare(ptr noundef %7) #12
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr i8, ptr %0, i32 108
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_power_off(ptr noundef %11) #12
  %13 = load ptr, ptr %10, align 4
  %14 = tail call i32 @phy_exit(ptr noundef %13) #12
  %15 = getelementptr i8, ptr %0, i32 92
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #12
  tail call void @clk_unprepare(ptr noundef %16) #12
  %17 = getelementptr i8, ptr %0, i32 104
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @reset_control_assert(ptr noundef %18) #12
  %20 = getelementptr i8, ptr %0, i32 100
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regulator_disable(ptr noundef %21) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_dsi_encoder_enable(ptr noundef readonly %0) #2 {
  %2 = alloca %union.phy_configure_opts, align 4
  %3 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7
  %8 = getelementptr i8, ptr %0, i32 116
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(100) %2, i8 0, i32 100, i1 false)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20) #12
  %10 = getelementptr i8, ptr %0, i32 100
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regulator_enable(ptr noundef %11) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %0, i32 112
  %16 = load ptr, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.21, i32 noundef %12) #13
  br label %17

17:                                               ; preds = %14, %1
  %18 = getelementptr i8, ptr %0, i32 104
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @reset_control_deassert(ptr noundef %19) #12
  %21 = getelementptr i8, ptr %0, i32 92
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @clk_prepare(ptr noundef %22) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = tail call i32 @clk_enable(ptr noundef %22) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @clk_unprepare(ptr noundef %22) #12
  br label %29

29:                                               ; preds = %28, %25, %17
  %30 = getelementptr i8, ptr %0, i32 96
  %31 = load ptr, ptr %30, align 8
  %32 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 0, i32 noundef 1) #12
  %33 = load ptr, ptr %30, align 8
  %34 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 16, i32 noundef 196608) #12
  %35 = load ptr, ptr %30, align 8
  %36 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 96, i32 noundef 10) #12
  %37 = load ptr, ptr %30, align 8
  %38 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 120, i32 noundef 0) #12
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr inbounds %struct.mipi_dsi_device, ptr %39, i32 0, i32 4
  %41 = load i32, ptr %40, align 8
  %42 = sub i32 32, %41
  %43 = lshr i32 -1, %42
  %44 = load ptr, ptr %30, align 8
  %45 = and i32 %43, 15
  %46 = or i32 %45, 16
  %47 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 32, i32 noundef %46) #12
  %48 = load ptr, ptr %30, align 8
  %49 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 36, i32 noundef 268435457) #12
  %50 = load ptr, ptr %30, align 8
  %51 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 40, i32 noundef 536870928) #12
  %52 = load ptr, ptr %30, align 8
  %53 = or i32 %45, 536870912
  %54 = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 44, i32 noundef %53) #12
  %55 = load ptr, ptr %30, align 8
  %56 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 48, i32 noundef 806354945) #12
  %57 = load ptr, ptr %30, align 8
  %58 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 52, i32 noundef 1073741840) #12
  %59 = load ptr, ptr %30, align 8
  %60 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 56, i32 noundef %45) #12
  %61 = load ptr, ptr %30, align 8
  %62 = or i32 %45, 1342177296
  %63 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 60, i32 noundef %62) #12
  %64 = load ptr, ptr %30, align 8
  %65 = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 76, i32 noundef 5636097) #12
  %66 = load ptr, ptr %30, align 8
  %67 = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 760, i32 noundef 255) #12
  %68 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 9
  %69 = load i16, ptr %68, align 4
  %70 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 7
  %71 = load i16, ptr %70, align 4
  %72 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 6
  %73 = load i16, ptr %72, align 2
  %74 = add i16 %69, 1
  %75 = sub i16 %74, %71
  %76 = add i16 %75, %73
  %77 = icmp ugt i16 %76, %69
  br i1 %77, label %78, label %80

78:                                               ; preds = %29
  %79 = urem i16 %76, %69
  br label %80

80:                                               ; preds = %78, %29
  %81 = phi i16 [ %79, %78 ], [ %76, %29 ]
  %82 = tail call i16 @llvm.umax.i16(i16 %81, i16 1) #12
  %83 = load ptr, ptr %30, align 8
  %84 = and i16 %82, 8191
  %85 = zext i16 %84 to i32
  %86 = shl nuw nsw i32 %85, 4
  %87 = or i32 %86, 7
  %88 = tail call i32 @regmap_write(ptr noundef %83, i32 noundef 20, i32 noundef %87) #12
  %89 = load ptr, ptr %8, align 4
  %90 = getelementptr inbounds %struct.mipi_dsi_device, ptr %89, i32 0, i32 6
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %163, label %94

94:                                               ; preds = %80
  %95 = getelementptr inbounds %struct.mipi_dsi_device, ptr %89, i32 0, i32 5
  %96 = load i32, ptr %95, align 4
  switch i32 %96, label %113 [
    i32 0, label %114
    i32 1, label %114
    i32 2, label %97
    i32 3, label %105
  ]

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 4
  %99 = load i16, ptr %98, align 2
  %100 = zext i16 %99 to i32
  %101 = shl nuw nsw i32 %100, 1
  %102 = getelementptr inbounds %struct.mipi_dsi_device, ptr %89, i32 0, i32 4
  %103 = load i32, ptr %102, align 8
  %104 = udiv i32 %101, %103
  br label %125

105:                                              ; preds = %94
  %106 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 4
  %107 = load i16, ptr %106, align 2
  %108 = zext i16 %107 to i32
  %109 = shl nuw nsw i32 %108, 1
  %110 = getelementptr inbounds %struct.mipi_dsi_device, ptr %89, i32 0, i32 4
  %111 = load i32, ptr %110, align 8
  %112 = udiv i32 %109, %111
  br label %125

113:                                              ; preds = %94
  br label %114

114:                                              ; preds = %113, %94, %94
  %115 = phi i32 [ -2, %113 ], [ 3, %94 ], [ 3, %94 ]
  %116 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 4
  %117 = load i16, ptr %116, align 2
  %118 = zext i16 %117 to i32
  %119 = mul nsw i32 %115, %118
  %120 = getelementptr inbounds %struct.mipi_dsi_device, ptr %89, i32 0, i32 4
  %121 = load i32, ptr %120, align 8
  %122 = udiv i32 %119, %121
  %123 = icmp ult i32 %96, 2
  %124 = select i1 %123, i32 3, i32 -2
  br label %125

125:                                              ; preds = %114, %105, %97
  %126 = phi i32 [ %112, %105 ], [ %104, %97 ], [ %122, %114 ]
  %127 = phi i32 [ %111, %105 ], [ %103, %97 ], [ %121, %114 ]
  %128 = phi i32 [ %108, %105 ], [ %100, %97 ], [ %118, %114 ]
  %129 = phi i32 [ 2, %105 ], [ 2, %97 ], [ %124, %114 ]
  %130 = trunc i32 %126 to i16
  %131 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 3
  %132 = load i16, ptr %131, align 4
  %133 = zext i16 %132 to i32
  %134 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 1
  %135 = load i16, ptr %134, align 4
  %136 = zext i16 %135 to i32
  %137 = add nuw nsw i32 %128, 20
  %138 = sub nsw i32 %137, %133
  %139 = add nsw i32 %138, %136
  %140 = mul nsw i32 %139, %129
  %141 = udiv i32 %140, %127
  %142 = trunc i32 %141 to i16
  %143 = add i16 %142, 40
  %144 = tail call i16 @llvm.umin.i16(i16 %143, i16 %130) #12
  %145 = shl nuw nsw i32 %136, 2
  %146 = add nuw nsw i32 %145, 160
  %147 = lshr i32 %146, 3
  %148 = trunc i32 %147 to i16
  %149 = add i16 %144, %148
  %150 = icmp ugt i16 %149, %130
  %151 = sub i16 %149, %130
  %152 = select i1 %150, i16 %151, i16 1
  %153 = load ptr, ptr %30, align 8
  %154 = zext i16 %152 to i32
  %155 = zext i16 %144 to i32
  %156 = shl nuw i32 %155, 16
  %157 = or i32 %156, %154
  %158 = tail call i32 @regmap_write(ptr noundef %153, i32 noundef 244, i32 noundef %157) #12
  %159 = load ptr, ptr %30, align 8
  %160 = and i32 %126, 65535
  %161 = or i32 %160, 2621440
  %162 = tail call i32 @regmap_write(ptr noundef %159, i32 noundef 240, i32 noundef %161) #12
  br label %186

163:                                              ; preds = %80
  %164 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 2
  %165 = load i16, ptr %164, align 2
  %166 = zext i16 %165 to i32
  %167 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 1
  %168 = load i16, ptr %167, align 4
  %169 = zext i16 %168 to i32
  %170 = sub nsw i32 %166, %169
  %171 = icmp sgt i32 %170, 20
  br i1 %171, label %172, label %186

172:                                              ; preds = %163
  %173 = add nuw nsw i32 %170, 32748
  %174 = getelementptr inbounds %struct.mipi_dsi_device, ptr %89, i32 0, i32 5
  %175 = load i32, ptr %174, align 4
  %176 = icmp ult i32 %175, 4
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = getelementptr inbounds [4 x i32], ptr @switch.table.sun6i_dsi_encoder_enable.24, i32 0, i32 %175
  %179 = load i32, ptr %178, align 4
  br label %180

180:                                              ; preds = %177, %172
  %181 = phi i32 [ %179, %177 ], [ -22, %172 ]
  %182 = mul nsw i32 %181, %173
  %183 = lshr i32 %182, 5
  %184 = and i32 %183, 1023
  %185 = or i32 %184, 268435456
  br label %186

186:                                              ; preds = %180, %163, %125
  %187 = phi i32 [ 268435456, %125 ], [ %185, %180 ], [ 0, %163 ]
  %188 = load ptr, ptr %30, align 8
  %189 = tail call i32 @regmap_write(ptr noundef %188, i32 noundef 124, i32 noundef %187) #12
  %190 = load ptr, ptr %8, align 4
  %191 = getelementptr inbounds %struct.mipi_dsi_device, ptr %190, i32 0, i32 6
  %192 = load i32, ptr %191, align 8
  %193 = and i32 %192, 2
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %212, label %195

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 4
  %197 = load i16, ptr %196, align 2
  %198 = zext i16 %197 to i32
  %199 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 1
  %200 = load i16, ptr %199, align 4
  %201 = zext i16 %200 to i32
  %202 = sub nsw i32 %198, %201
  %203 = mul nsw i32 %202, 150
  %204 = load i32, ptr %7, align 4
  %205 = sdiv i32 %204, 1000
  %206 = shl nsw i32 %205, 3
  %207 = udiv i32 %203, %206
  %208 = shl i32 %207, 16
  %209 = add i32 %208, 265158656
  %210 = and i32 %209, 268369920
  %211 = or i32 %210, 49
  br label %212

212:                                              ; preds = %195, %186
  %213 = phi i32 [ %211, %195 ], [ 3211313, %186 ]
  %214 = load ptr, ptr %30, align 8
  %215 = tail call i32 @regmap_write(ptr noundef %214, i32 noundef 64, i32 noundef 805306370) #12
  %216 = load ptr, ptr %30, align 8
  %217 = tail call i32 @regmap_write(ptr noundef %216, i32 noundef 68, i32 noundef %213) #12
  %218 = load ptr, ptr %30, align 8
  %219 = tail call i32 @regmap_write(ptr noundef %218, i32 noundef 84, i32 noundef %213) #12
  %220 = load ptr, ptr %8, align 4
  %221 = getelementptr inbounds %struct.mipi_dsi_device, ptr %220, i32 0, i32 3
  %222 = load i32, ptr %221, align 4
  %223 = shl i32 %222, 6
  %224 = and i32 %223, 192
  %225 = getelementptr inbounds %struct.mipi_dsi_device, ptr %220, i32 0, i32 5
  %226 = load i32, ptr %225, align 4
  switch i32 %226, label %260 [
    i32 0, label %228
    i32 1, label %227
    i32 2, label %232
    i32 3, label %234
  ]

227:                                              ; preds = %212
  br label %228

228:                                              ; preds = %227, %212
  %229 = phi i32 [ 62, %212 ], [ 46, %227 ]
  %230 = phi i32 [ 65544, %212 ], [ 65545, %227 ]
  %231 = or i32 %229, %224
  br label %236

232:                                              ; preds = %212
  %233 = or i32 %224, 30
  br label %236

234:                                              ; preds = %212
  %235 = or i32 %224, 14
  br label %236

236:                                              ; preds = %234, %232, %228
  %237 = phi i32 [ %235, %234 ], [ %233, %232 ], [ %231, %228 ]
  %238 = phi i32 [ 65547, %234 ], [ 65546, %232 ], [ %230, %228 ]
  %239 = phi i32 [ 512, %234 ], [ 576, %232 ], [ 768, %228 ]
  %240 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 1
  %241 = load i16, ptr %240, align 4
  %242 = zext i16 %241 to i32
  %243 = mul nuw nsw i32 %239, %242
  %244 = and i32 %243, 16776960
  %245 = or i32 %244, %237
  %246 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %245) #12
  %247 = shl i32 %246, 24
  %248 = or i32 %245, %247
  %249 = load ptr, ptr %30, align 8
  %250 = tail call i32 @regmap_write(ptr noundef %249, i32 noundef 144, i32 noundef %248) #12
  %251 = load ptr, ptr %30, align 8
  %252 = tail call i32 @regmap_write(ptr noundef %251, i32 noundef 152, i32 noundef 65535) #12
  %253 = load ptr, ptr %30, align 8
  %254 = tail call i32 @regmap_write(ptr noundef %253, i32 noundef 156, i32 noundef -1) #12
  %255 = load ptr, ptr %30, align 8
  %256 = tail call i32 @regmap_write(ptr noundef %255, i32 noundef 128, i32 noundef %238) #12
  %257 = load ptr, ptr %8, align 4
  %258 = getelementptr inbounds %struct.mipi_dsi_device, ptr %257, i32 0, i32 5
  %259 = load i32, ptr %258, align 4
  br label %260

260:                                              ; preds = %236, %212
  %261 = phi i32 [ %226, %212 ], [ %259, %236 ]
  %262 = phi ptr [ %220, %212 ], [ %257, %236 ]
  %263 = icmp ult i32 %261, 4
  br i1 %263, label %264, label %267

264:                                              ; preds = %260
  %265 = getelementptr inbounds [4 x i32], ptr @switch.table.sun6i_dsi_encoder_enable.23, i32 0, i32 %261
  %266 = load i32, ptr %265, align 4
  br label %267

267:                                              ; preds = %264, %260
  %268 = phi i32 [ %266, %264 ], [ -2, %260 ]
  %269 = getelementptr inbounds %struct.mipi_dsi_device, ptr %262, i32 0, i32 6
  %270 = load i32, ptr %269, align 8
  %271 = and i32 %270, 2
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %282, label %273

273:                                              ; preds = %267
  %274 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 1
  %275 = load i16, ptr %274, align 4
  %276 = zext i16 %275 to i32
  %277 = mul nsw i32 %268, %276
  %278 = getelementptr inbounds %struct.mipi_dsi_device, ptr %262, i32 0, i32 4
  %279 = load i32, ptr %278, align 8
  %280 = icmp eq i32 %279, 4
  %281 = select i1 %280, i32 207, i32 7
  br label %314

282:                                              ; preds = %267
  %283 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 3
  %284 = load i16, ptr %283, align 4
  %285 = zext i16 %284 to i32
  %286 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 2
  %287 = load i16, ptr %286, align 2
  %288 = zext i16 %287 to i32
  %289 = sub nsw i32 %285, %288
  %290 = mul nsw i32 %289, %268
  %291 = add nsw i32 %290, -10
  %292 = tail call i32 @llvm.umax.i32(i32 %291, i32 10) #12
  %293 = trunc i32 %292 to i16
  %294 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 4
  %295 = load i16, ptr %294, align 2
  %296 = zext i16 %295 to i32
  %297 = sub nsw i32 %296, %285
  %298 = mul nsw i32 %297, %268
  %299 = add nsw i32 %298, -6
  %300 = tail call i32 @llvm.umax.i32(i32 %299, i32 6) #12
  %301 = trunc i32 %300 to i16
  %302 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 1
  %303 = load i16, ptr %302, align 4
  %304 = zext i16 %303 to i32
  %305 = sub nsw i32 %288, %304
  %306 = mul nsw i32 %305, %268
  %307 = add nsw i32 %306, -16
  %308 = tail call i32 @llvm.umax.i32(i32 %307, i32 16) #12
  %309 = trunc i32 %308 to i16
  %310 = sub nsw i32 %296, %289
  %311 = mul nsw i32 %310, %268
  %312 = add nsw i32 %311, -10
  %313 = tail call i32 @llvm.umax.i32(i32 %312, i32 10) #12
  br label %314

314:                                              ; preds = %282, %273
  %315 = phi i32 [ 0, %282 ], [ %281, %273 ]
  %316 = phi i32 [ %313, %282 ], [ %277, %273 ]
  %317 = phi i16 [ %293, %282 ], [ 0, %273 ]
  %318 = phi i16 [ %309, %282 ], [ 0, %273 ]
  %319 = phi i16 [ %301, %282 ], [ 0, %273 ]
  %320 = zext i16 %318 to i32
  %321 = and i32 %316, 65535
  %322 = zext i16 %317 to i32
  %323 = zext i16 %319 to i32
  %324 = tail call i32 @llvm.umax.i32(i32 %321, i32 %320) #12
  %325 = tail call i32 @llvm.umax.i32(i32 %322, i32 %323) #12
  %326 = tail call i32 @llvm.umax.i32(i32 %324, i32 %325) #12
  %327 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %326, i32 noundef 3264) #14
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %330, !prof !10

329:                                              ; preds = %314
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 602, i32 noundef 9, ptr noundef null) #12
  br label %489

330:                                              ; preds = %314
  %331 = load ptr, ptr %30, align 8
  %332 = tail call i32 @regmap_write(ptr noundef %331, i32 noundef 12, i32 noundef %315) #12
  %333 = load ptr, ptr %30, align 8
  %334 = getelementptr inbounds %struct.mipi_dsi_device, ptr %262, i32 0, i32 3
  %335 = load i32, ptr %334, align 4
  %336 = shl i32 %335, 6
  %337 = and i32 %336, 192
  %338 = or i32 %337, 33
  %339 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %338) #12
  %340 = shl i32 %339, 24
  %341 = or i32 %338, %340
  %342 = tail call i32 @regmap_write(ptr noundef %333, i32 noundef 176, i32 noundef %341) #12
  %343 = load ptr, ptr %30, align 8
  %344 = load i32, ptr %334, align 4
  %345 = shl i32 %344, 6
  %346 = and i32 %345, 192
  %347 = or i32 %346, 49
  %348 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %347) #12
  %349 = shl i32 %348, 24
  %350 = or i32 %347, %349
  %351 = tail call i32 @regmap_write(ptr noundef %343, i32 noundef 180, i32 noundef %350) #12
  %352 = load ptr, ptr %30, align 8
  %353 = load i32, ptr %334, align 4
  %354 = shl i32 %353, 6
  %355 = and i32 %354, 192
  %356 = or i32 %355, 1
  %357 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %356) #12
  %358 = shl i32 %357, 24
  %359 = or i32 %356, %358
  %360 = tail call i32 @regmap_write(ptr noundef %352, i32 noundef 184, i32 noundef %359) #12
  %361 = load ptr, ptr %30, align 8
  %362 = load i32, ptr %334, align 4
  %363 = shl i32 %362, 6
  %364 = and i32 %363, 192
  %365 = or i32 %364, 17
  %366 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %365) #12
  %367 = shl i32 %366, 24
  %368 = or i32 %365, %367
  %369 = tail call i32 @regmap_write(ptr noundef %361, i32 noundef 188, i32 noundef %368) #12
  %370 = load ptr, ptr %30, align 8
  %371 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 8
  %372 = load i16, ptr %371, align 2
  %373 = zext i16 %372 to i32
  %374 = load i16, ptr %70, align 4
  %375 = zext i16 %374 to i32
  %376 = sub nsw i32 %373, %375
  %377 = and i32 %376, 4095
  %378 = load i16, ptr %68, align 4
  %379 = zext i16 %378 to i32
  %380 = sub nsw i32 %379, %373
  %381 = shl i32 %380, 16
  %382 = and i32 %381, 268369920
  %383 = or i32 %382, %377
  %384 = tail call i32 @regmap_write(ptr noundef %370, i32 noundef 24, i32 noundef %383) #12
  %385 = load ptr, ptr %30, align 8
  %386 = load i16, ptr %72, align 2
  %387 = and i16 %386, 4095
  %388 = zext i16 %387 to i32
  %389 = load i16, ptr %68, align 4
  %390 = and i16 %389, 4095
  %391 = zext i16 %390 to i32
  %392 = shl nuw nsw i32 %391, 16
  %393 = or i32 %392, %388
  %394 = tail call i32 @regmap_write(ptr noundef %385, i32 noundef 28, i32 noundef %393) #12
  %395 = load ptr, ptr %30, align 8
  %396 = load i32, ptr %334, align 4
  %397 = lshr i16 %317, 8
  %398 = zext i16 %397 to i32
  %399 = shl i32 %396, 6
  %400 = and i32 %399, 192
  %401 = shl i16 %317, 8
  %402 = zext i16 %401 to i32
  %403 = or i32 %400, %402
  %404 = shl nuw nsw i32 %398, 16
  %405 = or i32 %403, %404
  %406 = or i32 %405, 25
  %407 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %406) #12
  %408 = shl i32 %407, 24
  %409 = or i32 %406, %408
  %410 = tail call i32 @regmap_write(ptr noundef %395, i32 noundef 192, i32 noundef %409) #12
  %411 = load ptr, ptr %30, align 8
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %327, i8 0, i32 %322, i1 false) #12
  %412 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef nonnull %327, i32 noundef %322) #12
  %413 = zext i16 %412 to i32
  %414 = shl nuw i32 %413, 16
  %415 = tail call i32 @regmap_write(ptr noundef %411, i32 noundef 196, i32 noundef %414) #12
  %416 = load ptr, ptr %30, align 8
  %417 = load i32, ptr %334, align 4
  %418 = lshr i16 %319, 8
  %419 = zext i16 %418 to i32
  %420 = shl i32 %417, 6
  %421 = and i32 %420, 192
  %422 = shl i16 %319, 8
  %423 = zext i16 %422 to i32
  %424 = or i32 %421, %423
  %425 = shl nuw nsw i32 %419, 16
  %426 = or i32 %424, %425
  %427 = or i32 %426, 25
  %428 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %427) #12
  %429 = shl i32 %428, 24
  %430 = or i32 %427, %429
  %431 = tail call i32 @regmap_write(ptr noundef %416, i32 noundef 200, i32 noundef %430) #12
  %432 = load ptr, ptr %30, align 8
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %327, i8 0, i32 %323, i1 false) #12
  %433 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef nonnull %327, i32 noundef %323) #12
  %434 = zext i16 %433 to i32
  %435 = shl nuw i32 %434, 16
  %436 = tail call i32 @regmap_write(ptr noundef %432, i32 noundef 204, i32 noundef %435) #12
  %437 = load ptr, ptr %30, align 8
  %438 = load i32, ptr %334, align 4
  %439 = lshr i16 %318, 8
  %440 = zext i16 %439 to i32
  %441 = shl i32 %438, 6
  %442 = and i32 %441, 192
  %443 = shl i16 %318, 8
  %444 = zext i16 %443 to i32
  %445 = or i32 %442, %444
  %446 = shl nuw nsw i32 %440, 16
  %447 = or i32 %445, %446
  %448 = or i32 %447, 25
  %449 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %448) #12
  %450 = shl i32 %449, 24
  %451 = or i32 %448, %450
  %452 = tail call i32 @regmap_write(ptr noundef %437, i32 noundef 208, i32 noundef %451) #12
  %453 = load ptr, ptr %30, align 8
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %327, i8 0, i32 %320, i1 false) #12
  %454 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef nonnull %327, i32 noundef %320) #12
  %455 = zext i16 %454 to i32
  %456 = shl nuw i32 %455, 16
  %457 = tail call i32 @regmap_write(ptr noundef %453, i32 noundef 212, i32 noundef %456) #12
  %458 = load ptr, ptr %30, align 8
  %459 = load i32, ptr %334, align 4
  %460 = shl i32 %459, 6
  %461 = and i32 %460, 192
  %462 = shl i32 %316, 8
  %463 = and i32 %462, 16776960
  %464 = or i32 %463, %461
  %465 = or i32 %464, 25
  %466 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %465) #12
  %467 = shl i32 %466, 24
  %468 = or i32 %465, %467
  %469 = tail call i32 @regmap_write(ptr noundef %458, i32 noundef 224, i32 noundef %468) #12
  %470 = load ptr, ptr %30, align 8
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %327, i8 0, i32 %321, i1 false) #12
  %471 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef nonnull %327, i32 noundef %321) #12
  %472 = zext i16 %471 to i32
  %473 = shl nuw i32 %472, 16
  %474 = tail call i32 @regmap_write(ptr noundef %470, i32 noundef 228, i32 noundef %473) #12
  %475 = load ptr, ptr %30, align 8
  %476 = load i32, ptr %334, align 4
  %477 = shl i32 %476, 6
  %478 = and i32 %477, 192
  %479 = or i32 %478, 25
  %480 = tail call fastcc i32 @sun6i_dsi_ecc_compute(i32 noundef %479) #12
  %481 = shl i32 %480, 24
  %482 = or i32 %479, %481
  %483 = tail call i32 @regmap_write(ptr noundef %475, i32 noundef 232, i32 noundef %482) #12
  %484 = load ptr, ptr %30, align 8
  %485 = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef nonnull %327, i32 noundef 0) #12
  %486 = zext i16 %485 to i32
  %487 = shl nuw i32 %486, 16
  %488 = tail call i32 @regmap_write(ptr noundef %484, i32 noundef 236, i32 noundef %487) #12
  tail call void @kfree(ptr noundef nonnull %327) #12
  br label %489

489:                                              ; preds = %330, %329
  %490 = getelementptr i8, ptr %0, i32 108
  %491 = load ptr, ptr %490, align 4
  %492 = tail call i32 @phy_init(ptr noundef %491) #12
  %493 = load i32, ptr %7, align 4
  %494 = mul i32 %493, 1000
  %495 = getelementptr inbounds %struct.mipi_dsi_device, ptr %9, i32 0, i32 5
  %496 = load i32, ptr %495, align 4
  %497 = icmp ult i32 %496, 4
  br i1 %497, label %498, label %501

498:                                              ; preds = %489
  %499 = getelementptr inbounds [4 x i32], ptr @switch.table.sun6i_dsi_encoder_enable.24, i32 0, i32 %496
  %500 = load i32, ptr %499, align 4
  br label %501

501:                                              ; preds = %498, %489
  %502 = phi i32 [ %500, %498 ], [ -22, %489 ]
  %503 = getelementptr inbounds %struct.mipi_dsi_device, ptr %9, i32 0, i32 4
  %504 = load i32, ptr %503, align 8
  %505 = call i32 @phy_mipi_dphy_get_default_config(i32 noundef %494, i32 noundef %502, i32 noundef %504, ptr noundef nonnull %2) #12
  %506 = load ptr, ptr %490, align 4
  %507 = call i32 @phy_set_mode_ext(ptr noundef %506, i32 noundef 16, i32 noundef 0) #12
  %508 = load ptr, ptr %490, align 4
  %509 = call i32 @phy_configure(ptr noundef %508, ptr noundef nonnull %2) #12
  %510 = load ptr, ptr %490, align 4
  %511 = call i32 @phy_power_on(ptr noundef %510) #12
  %512 = getelementptr i8, ptr %0, i32 124
  %513 = load ptr, ptr %512, align 4
  %514 = icmp eq ptr %513, null
  br i1 %514, label %521, label %515

515:                                              ; preds = %501
  %516 = call i32 @drm_panel_prepare(ptr noundef nonnull %513) #12
  %517 = load ptr, ptr %512, align 4
  %518 = icmp eq ptr %517, null
  br i1 %518, label %521, label %519

519:                                              ; preds = %515
  %520 = call i32 @drm_panel_enable(ptr noundef nonnull %517) #12
  br label %521

521:                                              ; preds = %519, %515, %501
  %522 = load ptr, ptr %30, align 8
  %523 = call i32 @regmap_write(ptr noundef %522, i32 noundef 72, i32 noundef 3842) #12
  %524 = load ptr, ptr %30, align 8
  %525 = call i32 @regmap_update_bits_base(ptr noundef %524, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %526 = load ptr, ptr %30, align 8
  %527 = call i32 @regmap_update_bits_base(ptr noundef %526, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %528 = load ptr, ptr %30, align 8
  %529 = call i32 @regmap_update_bits_base(ptr noundef %528, i32 noundef 32, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #12
  %530 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %530(i32 noundef 214748000) #12
  %531 = load ptr, ptr %30, align 8
  %532 = call i32 @regmap_write(ptr noundef %531, i32 noundef 72, i32 noundef 1676701702) #12
  %533 = load ptr, ptr %30, align 8
  %534 = call i32 @regmap_update_bits_base(ptr noundef %533, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %535 = load ptr, ptr %30, align 8
  %536 = call i32 @regmap_update_bits_base(ptr noundef %535, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_get_default_config(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_configure(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dsi_get_modes(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sun6i_dsi, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @drm_panel_get_modes(ptr noundef %3, ptr noundef %0) #12
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sun6i_dsi_connector_detect(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #10 {
  %3 = getelementptr inbounds %struct.sun6i_dsi, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 2, i32 1
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
