; ModuleID = '/llk/IR/drivers/gpu/drm/exynos/exynos_drm_dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_dsi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exynos_dsi_driver_data = type { ptr, i32, i8, i32, i32, i32, i32, ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.exynos_dsi = type { %struct.drm_encoder, %struct.mipi_dsi_host, %struct.drm_connector, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.completion, %struct.spinlock, %struct.list_head, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
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
%struct.exynos_dsi_transfer = type { %struct.list_head, %struct.completion, i32, %struct.mipi_dsi_packet, i16, i16, ptr, i16, i16 }
%struct.mipi_dsi_packet = type { i32, [4 x i8], i32, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
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
%struct.anon.76 = type { i32, ptr }
%struct.exynos_drm_crtc = type { %struct.drm_crtc, i32, ptr, ptr, ptr, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@exynos_dsi_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos3_dsi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_dsi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5410-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5_dsi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5422-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5422_dsi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-mipi-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_dsi_driver_data }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [11 x i8] c"exynos-dsi\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@exynos_dsi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_dsi_suspend, ptr @exynos_dsi_resume, ptr null }, align 4
@dsi_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @exynos_dsi_probe, ptr @exynos_dsi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr @exynos_dsi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_dsi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__UNIQUE_ID_author266 = internal constant [40 x i8] c"author=Tomasz Figa <t.figa@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author267 = internal constant [43 x i8] c"author=Andrzej Hajda <a.hajda@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description268 = internal constant [40 x i8] c"description=Samsung SoC MIPI DSI Master\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@exynos3_dsi_driver_data = internal constant %struct.exynos_dsi_driver_data { ptr @exynos_reg_ofs, i32 80, i8 3, i32 2, i32 1000, i32 1, i32 11, ptr @reg_values }, align 4
@exynos4_dsi_driver_data = internal constant %struct.exynos_dsi_driver_data { ptr @exynos_reg_ofs, i32 80, i8 3, i32 2, i32 1000, i32 1, i32 11, ptr @reg_values }, align 4
@exynos5_dsi_driver_data = internal constant %struct.exynos_dsi_driver_data { ptr @exynos_reg_ofs, i32 88, i8 0, i32 2, i32 1000, i32 1, i32 11, ptr @reg_values }, align 4
@exynos5422_dsi_driver_data = internal constant %struct.exynos_dsi_driver_data { ptr @exynos5433_reg_ofs, i32 160, i8 2, i32 2, i32 1500, i32 1, i32 12, ptr @exynos5422_reg_values }, align 4
@exynos5433_dsi_driver_data = internal constant %struct.exynos_dsi_driver_data { ptr @exynos5433_reg_ofs, i32 160, i8 2, i32 5, i32 1500, i32 0, i32 12, ptr @exynos5433_reg_values }, align 4
@exynos_reg_ofs = internal constant [21 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 44, i32 48, i32 52, i32 56, i32 60, i32 68, i32 76, i32 92, i32 100, i32 104, i32 108], align 4
@reg_values = internal constant [15 x i32] [i32 1, i32 500, i32 15, i32 175, i32 0, i32 0, i32 1536, i32 11, i32 117440512, i32 2555904, i32 3328, i32 8, i32 589824, i32 3328, i32 11], align 4
@exynos5433_reg_ofs = internal constant [21 x i32] [i32 4, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 52, i32 56, i32 60, i32 64, i32 68, i32 76, i32 148, i32 164, i32 180, i32 184, i32 188], align 4
@exynos5422_reg_values = internal constant [15 x i32] [i32 1, i32 500, i32 15, i32 175, i32 0, i32 0, i32 2048, i32 13, i32 150994944, i32 3145728, i32 3584, i32 10, i32 786432, i32 4352, i32 13], align 4
@exynos5433_reg_values = internal constant [15 x i32] [i32 65536, i32 22200, i32 10, i32 400, i32 1073741824, i32 16384, i32 1792, i32 12, i32 150994944, i32 2949120, i32 3584, i32 9, i32 720896, i32 4096, i32 12], align 4
@exynos_dsi_ops = internal constant %struct.mipi_dsi_host_ops { ptr @exynos_dsi_host_attach, ptr @exynos_dsi_host_detach, ptr @exynos_dsi_host_transfer }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"vddcore\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"vddio\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to get regulators\0A\00", align 1
@clk_names = internal unnamed_addr constant [5 x ptr] [ptr @.str.27, ptr @.str.4, ptr @.str.28, ptr @.str.29, ptr @.str.30], align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"sclk_mipi\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pll_clk\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to get the clock: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"dsim\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"failed to get dsim phy\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"failed to request dsi irq\0A\00", align 1
@exynos_dsi_component_ops = internal constant %struct.component_ops { ptr @exynos_dsi_bind, ptr @exynos_dsi_unbind }, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"*ERROR* failed to create connector ret = %d\0A\00", align 1
@exynos_dsi_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @exynos_dsi_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @exynos_dsi_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [49 x i8] c"*ERROR* Failed to initialize connector with drm\0A\00", align 1
@exynos_dsi_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @exynos_dsi_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"te\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"gpio request failed with %ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"TE\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"request interrupt failed with %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"failed to configure DSI PLL\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"failed to find PLL PMS for requested frequency\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"PLL failed to stabilize\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"timeout waiting for reset\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"invalid pixel format\0A\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"waiting for bus lanes timed out\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"xfer timed out: %*ph %*ph\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"waiting for header FIFO timed out\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"bus_clk\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"phyclk_mipidphy0_bitclkdiv8\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"phyclk_mipidphy0_rxclkesc0\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"sclk_rgb_vclk_to_dsim0\00", align 1
@exynos_dsi_irq.j = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [20 x i8] c"spurious interrupt\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"DSI Error Report: 0x%04x\0A\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"response too long (%u > %u bytes), stripping\0A\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"samsung,pll-clock-frequency\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"samsung,burst-clock-frequency\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"samsung,esc-clock-frequency\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"\013%pOF: failed to get '%s' property\0A\00", align 1
@exynos_dsi_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_dsi_disable, ptr @exynos_dsi_enable, ptr null }, align 4
@.str.38 = private unnamed_addr constant [30 x i8] c"failed to enable DSI device.\0A\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"cannot disable regulators %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"cannot enable regulators %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"cannot enable phy %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_author267, ptr @__UNIQUE_ID_description268, ptr @__UNIQUE_ID_license269], section "llvm.metadata"

@__mod_of__exynos_dsi_of_match_device_table = dso_local alias [6 x %struct.of_device_id], ptr @exynos_dsi_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_dsi_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1184, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %129, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 21
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 21, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #8
  %8 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 22
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 23
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 23, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 4
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 4, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 1, i32 1
  store ptr @exynos_dsi_ops, ptr %14, align 4
  store ptr %2, ptr %13, align 8
  %15 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 6
  store ptr %2, ptr %15, align 8
  %16 = tail call ptr @of_device_get_match_data(ptr noundef %2) #8
  %17 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 24
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 10
  store ptr @.str.1, ptr %18, align 8
  %19 = getelementptr %struct.exynos_dsi, ptr %3, i32 0, i32 10, i32 1
  store ptr @.str.2, ptr %19, align 4
  %20 = tail call i32 @devm_regulator_bulk_get(ptr noundef %2, i32 noundef 2, ptr noundef %18) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %20, ptr noundef nonnull @.str.3) #8
  br label %129

24:                                               ; preds = %5
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 4) #8
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %30, label %32, !prof !8

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 9
  store ptr null, ptr %31, align 4
  br label %129

32:                                               ; preds = %24
  %33 = extractvalue { i32, i1 } %28, 0
  %34 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %33, i32 noundef 3520) #8
  %35 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 9
  store ptr %34, ptr %35, align 4
  %36 = icmp eq ptr %34, null
  br i1 %36, label %129, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %17, align 4
  %39 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %38, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %75, label %42

42:                                               ; preds = %69, %37
  %43 = phi i32 [ %70, %69 ], [ 0, %37 ]
  %44 = getelementptr [5 x ptr], ptr @clk_names, i32 0, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef %45) #8
  %47 = load ptr, ptr %35, align 4
  %48 = getelementptr ptr, ptr %47, i32 %43
  store ptr %46, ptr %48, align 4
  %49 = load ptr, ptr %35, align 4
  %50 = getelementptr ptr, ptr %49, i32 %43
  %51 = load ptr, ptr %50, align 4
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %69

53:                                               ; preds = %42
  %54 = tail call i32 @strcmp(ptr noundef %45, ptr noundef nonnull dereferenceable(10) @.str.4)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #8
  %58 = load ptr, ptr %35, align 4
  %59 = getelementptr ptr, ptr %58, i32 %43
  store ptr %57, ptr %59, align 4
  %60 = load ptr, ptr %35, align 4
  %61 = getelementptr ptr, ptr %60, i32 %43
  %62 = load ptr, ptr %61, align 4
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %69

64:                                               ; preds = %56, %53
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %45) #9
  %65 = load ptr, ptr %35, align 4
  %66 = getelementptr ptr, ptr %65, i32 %43
  %67 = load ptr, ptr %66, align 4
  %68 = ptrtoint ptr %67 to i32
  br label %129

69:                                               ; preds = %56, %42
  %70 = add nuw i32 %43, 1
  %71 = load ptr, ptr %17, align 4
  %72 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %71, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %42, label %75

75:                                               ; preds = %69, %37
  %76 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %77 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 7
  store ptr %76, ptr %77, align 4
  %78 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = ptrtoint ptr %76 to i32
  br label %129

81:                                               ; preds = %75
  %82 = tail call ptr @devm_phy_get(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  %83 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 8
  store ptr %82, ptr %83, align 8
  %84 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.8) #9
  %86 = load ptr, ptr %83, align 8
  %87 = ptrtoint ptr %86 to i32
  br label %129

88:                                               ; preds = %81
  %89 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %90 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 11
  store i32 %89, ptr %90, align 8
  %91 = icmp slt i32 %89, 0
  br i1 %91, label %129, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load ptr, ptr %2, align 4
  br label %98

98:                                               ; preds = %96, %92
  %99 = phi ptr [ %97, %96 ], [ %94, %92 ]
  %100 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %89, ptr noundef null, ptr noundef nonnull @exynos_dsi_irq, i32 noundef 532480, ptr noundef %99, ptr noundef nonnull %3) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #9
  br label %129

103:                                              ; preds = %98
  %104 = load ptr, ptr %15, align 8
  %105 = getelementptr inbounds %struct.device, ptr %104, i32 0, i32 25
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 13
  %108 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %106, ptr noundef nonnull @.str.34, ptr noundef %107, i32 noundef 1, i32 noundef 0) #8
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %106, ptr noundef nonnull @.str.34) #9
  br label %129

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 14
  %114 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %106, ptr noundef nonnull @.str.35, ptr noundef %113, i32 noundef 1, i32 noundef 0) #8
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %106, ptr noundef nonnull @.str.35) #9
  br label %129

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 15
  %120 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %106, ptr noundef nonnull @.str.36, ptr noundef %119, i32 noundef 1, i32 noundef 0) #8
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %106, ptr noundef nonnull @.str.36) #9
  br label %129

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %125, align 8
  tail call void @pm_runtime_enable(ptr noundef %2) #8
  %126 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @exynos_dsi_component_ops) #8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #8
  br label %129

129:                                              ; preds = %128, %124, %122, %116, %110, %102, %88, %85, %79, %64, %32, %30, %22, %1
  %130 = phi i32 [ %23, %22 ], [ %68, %64 ], [ %80, %79 ], [ %87, %85 ], [ %100, %102 ], [ %126, %128 ], [ -12, %1 ], [ -12, %32 ], [ %89, %88 ], [ %120, %122 ], [ 0, %124 ], [ -12, %30 ], [ %114, %116 ], [ %108, %110 ]
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_dsi_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #8
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @exynos_dsi_component_ops) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_dsi_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i32, ptr %7, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %4, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = tail call zeroext i1 @printk_timed_ratelimit(ptr noundef nonnull @exynos_dsi_irq.j, i32 noundef 500) #8
  br i1 %14, label %15, label %192

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.31) #9
  br label %192

18:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %19 = load ptr, ptr %3, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i32, ptr %21, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %19, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %11) #8, !srcloc !12
  %25 = and i32 %11, 1073741824
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %28 = load ptr, ptr %3, align 4
  %29 = load ptr, ptr %5, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i32, ptr %30, i32 11
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %28, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 -1879343105) #8, !srcloc !12
  %34 = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 21
  tail call void @complete(ptr noundef %34) #8
  br label %192

35:                                               ; preds = %18
  %36 = and i32 %11, -1610350592
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %192, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 22
  %40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #8
  %41 = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 23
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %40) #8
  br i1 %43, label %192, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %42, i32 0, i32 5
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %42, i32 0, i32 3, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %47
  br i1 %50, label %51, label %191

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %42, i32 0, i32 8
  %53 = load i16, ptr %52, align 2
  %54 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %42, i32 0, i32 7
  %55 = load i16, ptr %54, align 4
  %56 = icmp eq i16 %53, %55
  br i1 %56, label %177, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %42, i32 0, i32 6
  %59 = load ptr, ptr %58, align 4
  %60 = zext i16 %53 to i32
  %61 = getelementptr i8, ptr %59, i32 %60
  %62 = icmp eq i16 %53, 0
  %63 = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 6
  %64 = load ptr, ptr %63, align 8
  br i1 %62, label %65, label %103

65:                                               ; preds = %57
  %66 = load ptr, ptr %3, align 4
  %67 = load ptr, ptr %5, align 4
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i32, ptr %68, i32 14
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %66, i32 %70
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %73 = and i32 %72, 63
  switch i32 %73, label %91 [
    i32 18, label %74
    i32 34, label %74
    i32 17, label %83
    i32 33, label %83
    i32 2, label %88
  ]

74:                                               ; preds = %65, %65
  %75 = load i16, ptr %54, align 4
  %76 = icmp ugt i16 %75, 1
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = lshr i32 %72, 16
  %79 = trunc i32 %78 to i8
  %80 = getelementptr i8, ptr %61, i32 1
  store i8 %79, ptr %80, align 1
  %81 = load i16, ptr %52, align 2
  %82 = add i16 %81, 1
  store i16 %82, ptr %52, align 2
  br label %83

83:                                               ; preds = %77, %74, %65, %65
  %84 = lshr i32 %72, 8
  %85 = trunc i32 %84 to i8
  store i8 %85, ptr %61, align 1
  %86 = load i16, ptr %52, align 2
  %87 = add i16 %86, 1
  store i16 %87, ptr %52, align 2
  store i16 %87, ptr %54, align 4
  br label %157

88:                                               ; preds = %65
  %89 = lshr i32 %72, 8
  %90 = and i32 %89, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.32, i32 noundef %90) #9
  br label %157

91:                                               ; preds = %65
  %92 = lshr i32 %72, 8
  %93 = trunc i32 %92 to i16
  %94 = and i32 %92, 65535
  %95 = load i16, ptr %54, align 4
  %96 = zext i16 %95 to i32
  %97 = icmp ugt i32 %94, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.33, i32 noundef %96, i32 noundef %94) #9
  %99 = load i16, ptr %54, align 4
  br label %103

100:                                              ; preds = %91
  %101 = icmp ult i32 %94, %96
  br i1 %101, label %102, label %103

102:                                              ; preds = %100
  store i16 %93, ptr %54, align 4
  br label %103

103:                                              ; preds = %102, %100, %98, %57
  %104 = phi i16 [ %93, %102 ], [ %95, %100 ], [ %99, %98 ], [ %55, %57 ]
  %105 = load i16, ptr %52, align 2
  %106 = sub i16 %104, %105
  store i16 %104, ptr %52, align 2
  %107 = icmp ugt i16 %106, 3
  br i1 %107, label %108, label %131

108:                                              ; preds = %108, %103
  %109 = phi i16 [ %129, %108 ], [ %106, %103 ]
  %110 = phi ptr [ %128, %108 ], [ %61, %103 ]
  %111 = load ptr, ptr %3, align 4
  %112 = load ptr, ptr %5, align 4
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i32, ptr %113, i32 14
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr i8, ptr %111, i32 %115
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %118 = trunc i32 %117 to i8
  store i8 %118, ptr %110, align 1
  %119 = lshr i32 %117, 8
  %120 = trunc i32 %119 to i8
  %121 = getelementptr i8, ptr %110, i32 1
  store i8 %120, ptr %121, align 1
  %122 = lshr i32 %117, 16
  %123 = trunc i32 %122 to i8
  %124 = getelementptr i8, ptr %110, i32 2
  store i8 %123, ptr %124, align 1
  %125 = lshr i32 %117, 24
  %126 = trunc i32 %125 to i8
  %127 = getelementptr i8, ptr %110, i32 3
  store i8 %126, ptr %127, align 1
  %128 = getelementptr i8, ptr %110, i32 4
  %129 = add i16 %109, -4
  %130 = icmp ugt i16 %129, 3
  br i1 %130, label %108, label %131

131:                                              ; preds = %108, %103
  %132 = phi ptr [ %61, %103 ], [ %128, %108 ]
  %133 = phi i16 [ %106, %103 ], [ %129, %108 ]
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %153, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr %3, align 4
  %137 = load ptr, ptr %5, align 4
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr i32, ptr %138, i32 14
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr i8, ptr %136, i32 %140
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  switch i16 %133, label %153 [
    i16 3, label %143
    i16 2, label %147
    i16 1, label %151
  ]

143:                                              ; preds = %135
  %144 = lshr i32 %142, 16
  %145 = trunc i32 %144 to i8
  %146 = getelementptr i8, ptr %132, i32 2
  store i8 %145, ptr %146, align 1
  br label %147

147:                                              ; preds = %143, %135
  %148 = lshr i32 %142, 8
  %149 = trunc i32 %148 to i8
  %150 = getelementptr i8, ptr %132, i32 1
  store i8 %149, ptr %150, align 1
  br label %151

151:                                              ; preds = %147, %135
  %152 = trunc i32 %142 to i8
  store i8 %152, ptr %132, align 1
  br label %153

153:                                              ; preds = %151, %135, %131
  %154 = load i16, ptr %52, align 2
  %155 = load i16, ptr %54, align 4
  %156 = icmp eq i16 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153, %88, %83
  %158 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %42, i32 0, i32 2
  store i32 0, ptr %158, align 4
  br label %159

159:                                              ; preds = %157, %153
  br label %160

160:                                              ; preds = %160, %159
  %161 = phi i16 [ %170, %160 ], [ 64, %159 ]
  %162 = load ptr, ptr %3, align 4
  %163 = load ptr, ptr %5, align 4
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr i32, ptr %164, i32 14
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr i8, ptr %162, i32 %166
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %169 = icmp eq i32 %168, 813694978
  %170 = add nsw i16 %161, -1
  %171 = icmp eq i16 %170, 0
  %172 = select i1 %169, i1 true, i1 %171
  br i1 %172, label %173, label %160

173:                                              ; preds = %160
  %174 = load i16, ptr %52, align 2
  %175 = load i16, ptr %54, align 4
  %176 = icmp eq i16 %174, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %173, %51
  %178 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #8
  %179 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = load ptr, ptr %42, align 4
  %182 = getelementptr inbounds %struct.list_head, ptr %181, i32 0, i32 1
  store ptr %180, ptr %182, align 4
  store volatile ptr %181, ptr %180, align 4
  store volatile ptr %42, ptr %42, align 4
  store ptr %42, ptr %179, align 4
  %183 = load volatile ptr, ptr %41, align 4
  %184 = icmp eq ptr %183, %41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %178) #8
  %185 = load i16, ptr %54, align 4
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %177
  %188 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %42, i32 0, i32 2
  store i32 0, ptr %188, align 4
  br label %189

189:                                              ; preds = %187, %177
  %190 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %42, i32 0, i32 1
  tail call void @complete(ptr noundef %190) #8
  br i1 %184, label %192, label %191

191:                                              ; preds = %189, %173, %44
  tail call fastcc void @exynos_dsi_transfer_start(ptr noundef %1)
  br label %192

192:                                              ; preds = %191, %189, %38, %35, %27, %15, %13
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_dsi_host_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -72
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @of_drm_find_bridge(ptr noundef %7) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @drm_bridge_attach(ptr noundef %3, ptr noundef nonnull %8, ptr noundef null, i32 noundef 0) #8
  %12 = getelementptr i8, ptr %0, i32 996
  store ptr %8, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 -16
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %53, label %16

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %0, i32 988
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %0, i32 -12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %17, ptr %21, align 4
  store ptr %14, ptr %17, align 4
  store ptr %18, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %13, ptr %13, align 4
  store ptr %13, ptr %19, align 4
  br label %53

23:                                               ; preds = %2
  %24 = getelementptr i8, ptr %0, i32 16
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %0, i32 644
  store i8 1, ptr %26, align 4
  %27 = tail call i32 @drm_connector_init(ptr noundef %25, ptr noundef %24, ptr noundef nonnull @exynos_dsi_connector_funcs, i32 noundef 16) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = getelementptr i8, ptr %0, i32 120
  store i32 2, ptr %30, align 8
  %31 = getelementptr i8, ptr %0, i32 652
  store ptr @exynos_dsi_connector_helper_funcs, ptr %31, align 4
  %32 = tail call i32 @drm_connector_attach_encoder(ptr noundef %24, ptr noundef %3) #8
  %33 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 8
  %34 = load i8, ptr %33, align 4, !range !13
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %29
  %37 = getelementptr i8, ptr %0, i32 296
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.drm_connector_funcs, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %24) #8
  %41 = tail call i32 @drm_connector_register(ptr noundef %24) #8
  br label %46

42:                                               ; preds = %23
  %43 = getelementptr i8, ptr %0, i32 1000
  %44 = load ptr, ptr %43, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %44, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13) #8
  %45 = load ptr, ptr %43, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %45, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %27) #8
  tail call void @drm_encoder_cleanup(ptr noundef %3) #8
  br label %101

46:                                               ; preds = %36, %29
  %47 = load ptr, ptr %6, align 8
  %48 = tail call ptr @of_drm_find_panel(ptr noundef %47) #8
  %49 = getelementptr i8, ptr %0, i32 984
  store ptr %48, ptr %49, align 8
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store ptr null, ptr %49, align 8
  br label %53

52:                                               ; preds = %46
  store i32 1, ptr %30, align 8
  br label %53

53:                                               ; preds = %52, %51, %16, %10
  %54 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = tail call ptr @gpiod_get_optional(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef 1) #8
  %60 = getelementptr i8, ptr %0, i32 1044
  store ptr %59, ptr %60, align 4
  %61 = icmp eq ptr %59, null
  br i1 %61, label %79, label %62

62:                                               ; preds = %58
  %63 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %72, label %64

64:                                               ; preds = %62
  %65 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %59) #8
  %66 = tail call i32 @request_threaded_irq(i32 noundef %65, ptr noundef nonnull @exynos_dsi_te_irq_handler, ptr noundef null, i32 noundef 524289, ptr noundef nonnull @.str.16, ptr noundef %3) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %0, i32 1000
  %70 = load ptr, ptr %69, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.17, i32 noundef %66) #9
  %71 = load ptr, ptr %60, align 4
  tail call void @gpiod_put(ptr noundef %71) #8
  br label %101

72:                                               ; preds = %62
  %73 = getelementptr i8, ptr %0, i32 1000
  %74 = load ptr, ptr %73, align 8
  %75 = ptrtoint ptr %59 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.15, i32 noundef %75) #9
  %76 = load ptr, ptr %60, align 4
  %77 = ptrtoint ptr %76 to i32
  %78 = icmp eq ptr %76, null
  br i1 %78, label %79, label %101

79:                                               ; preds = %72, %64, %58, %53
  %80 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30
  tail call void @mutex_lock(ptr noundef %80) #8
  %81 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 4
  %82 = load i32, ptr %81, align 8
  %83 = getelementptr i8, ptr %0, i32 1060
  store i32 %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr i8, ptr %0, i32 1068
  store i32 %85, ptr %86, align 4
  %87 = load i32, ptr %54, align 8
  %88 = getelementptr i8, ptr %0, i32 1064
  store i32 %87, ptr %88, align 8
  %89 = tail call ptr @exynos_drm_crtc_get_by_type(ptr noundef %4, i32 noundef 1) #8
  %90 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %89, i32 0, i32 5
  %91 = trunc i32 %87 to i8
  %92 = and i8 %91, 1
  %93 = load i8, ptr %90, align 8
  %94 = and i8 %93, -2
  %95 = or i8 %94, %92
  %96 = xor i8 %95, 1
  store i8 %96, ptr %90, align 8
  tail call void @mutex_unlock(ptr noundef %80) #8
  %97 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 29
  %98 = load i8, ptr %97, align 4, !range !13
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %79
  tail call void @drm_kms_helper_hotplug_event(ptr noundef %4) #8
  br label %101

101:                                              ; preds = %100, %79, %72, %68, %42
  %102 = phi i32 [ %77, %72 ], [ %27, %42 ], [ 0, %100 ], [ 0, %79 ], [ %66, %68 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_dsi_host_detach(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -72
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 984
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30
  tail call void @mutex_lock(ptr noundef %9) #8
  tail call void @exynos_dsi_disable(ptr noundef %3)
  store ptr null, ptr %5, align 8
  %10 = getelementptr i8, ptr %0, i32 120
  store i32 2, ptr %10, align 8
  tail call void @mutex_unlock(ptr noundef %9) #8
  br label %23

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %0, i32 996
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_bridge, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  tail call void %17(ptr noundef %13) #8
  br label %20

20:                                               ; preds = %19, %11
  store ptr null, ptr %12, align 4
  %21 = getelementptr i8, ptr %0, i32 988
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr i8, ptr %0, i32 992
  store ptr %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %20, %8
  %24 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 29
  %25 = load i8, ptr %24, align 4, !range !13
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @drm_kms_helper_hotplug_event(ptr noundef %4) #8
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr i8, ptr %0, i32 1044
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %30) #8
  %34 = tail call ptr @free_irq(i32 noundef %33, ptr noundef %3) #8
  %35 = load ptr, ptr %29, align 4
  tail call void @gpiod_put(ptr noundef %35) #8
  br label %36

36:                                               ; preds = %32, %28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_dsi_host_transfer(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.exynos_dsi_transfer, align 4
  %4 = getelementptr i8, ptr %0, i32 -72
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i32 56, i1 false), !annotation !14
  %5 = getelementptr i8, ptr %0, i32 1072
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %569, label %9

9:                                                ; preds = %2
  %10 = and i32 %6, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %509

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %0, i32 1108
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %0, i32 1080
  store i32 0, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %19 = getelementptr i8, ptr %0, i32 1004
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %13, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i32, ptr %22, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %20, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %17) #8, !srcloc !12
  %26 = getelementptr i8, ptr %0, i32 1040
  %27 = load i32, ptr %26, align 8
  tail call void @enable_irq(i32 noundef %27) #8
  %28 = getelementptr i8, ptr %0, i32 1044
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %12
  %32 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %29) #8
  tail call void @enable_irq(i32 noundef %32) #8
  br label %33

33:                                               ; preds = %31, %12
  %34 = load ptr, ptr %15, align 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 65536
  br i1 %36, label %37, label %64

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %0, i32 1060
  %39 = load i32, ptr %38, align 4
  %40 = shl nsw i32 -1, %39
  %41 = xor i32 %40, -1
  %42 = load ptr, ptr %19, align 4
  %43 = load ptr, ptr %13, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i32, ptr %44, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %42, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %49 = load i32, ptr %38, align 4
  %50 = shl i32 %49, 5
  %51 = add i32 %50, 96
  %52 = and i32 %51, 96
  %53 = shl i32 %41, 1
  %54 = and i32 %53, 30
  %55 = or i32 %54, %48
  %56 = or i32 %55, %52
  %57 = or i32 %56, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %58 = load ptr, ptr %19, align 4
  %59 = load ptr, ptr %13, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i32, ptr %60, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr i8, ptr %58, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %57) #8, !srcloc !12
  br label %64

64:                                               ; preds = %37, %33
  %65 = load ptr, ptr %13, align 4
  %66 = getelementptr i8, ptr %0, i32 1048
  %67 = load i32, ptr %66, align 8
  %68 = add i32 %67, 11999999
  %69 = udiv i32 %68, 12000000
  %70 = udiv i32 %67, 6000000
  %71 = and i32 %70, 255
  %72 = and i32 %69, 255
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %242, label %74

74:                                               ; preds = %64
  %75 = getelementptr i8, ptr %0, i32 1052
  %76 = load i32, ptr %75, align 4
  %77 = trunc i32 %69 to i8
  %78 = zext i32 %76 to i64
  %79 = zext i32 %67 to i64
  %80 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %65, i32 0, i32 4
  %81 = trunc i32 %70 to i8
  br label %82

82:                                               ; preds = %160, %74
  %83 = phi i32 [ %72, %74 ], [ %162, %160 ]
  %84 = phi i32 [ 0, %74 ], [ %157, %160 ]
  %85 = phi i32 [ -1, %74 ], [ %156, %160 ]
  %86 = phi i8 [ %77, %74 ], [ %161, %160 ]
  %87 = phi i8 [ 0, %74 ], [ %155, %160 ]
  %88 = phi i16 [ 0, %74 ], [ %154, %160 ]
  %89 = phi i8 [ 0, %74 ], [ %153, %160 ]
  br label %90

90:                                               ; preds = %152, %82
  %91 = phi i32 [ 0, %82 ], [ %158, %152 ]
  %92 = phi i32 [ %84, %82 ], [ %157, %152 ]
  %93 = phi i32 [ %85, %82 ], [ %156, %152 ]
  %94 = phi i8 [ %87, %82 ], [ %155, %152 ]
  %95 = phi i16 [ %88, %82 ], [ %154, %152 ]
  %96 = phi i8 [ %89, %82 ], [ %153, %152 ]
  %97 = shl i32 %83, %91
  %98 = zext i32 %97 to i64
  %99 = mul nuw i64 %98, %78
  %100 = icmp ult i64 %99, 4294967296
  br i1 %100, label %101, label %105, !prof !15

101:                                              ; preds = %90
  %102 = trunc i64 %99 to i32
  %103 = udiv i32 %102, %67
  %104 = zext i32 %103 to i64
  br label %108

105:                                              ; preds = %90
  %106 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %67, i64 %99) #10, !srcloc !16
  %107 = extractvalue { i64, i64 } %106, 1
  br label %108

108:                                              ; preds = %105, %101
  %109 = phi i64 [ %104, %101 ], [ %107, %105 ]
  %110 = trunc i64 %109 to i16
  %111 = trunc i64 %109 to i32
  %112 = and i32 %111, 65535
  %113 = add nsw i32 %112, -126
  %114 = icmp ult i32 %113, -85
  br i1 %114, label %152, label %115

115:                                              ; preds = %108
  %116 = and i64 %109, 65535
  %117 = mul nuw nsw i64 %116, %79
  %118 = icmp ult i64 %117, 4294967296
  br i1 %118, label %119, label %123, !prof !15

119:                                              ; preds = %115
  %120 = trunc i64 %117 to i32
  %121 = udiv i32 %120, %83
  %122 = zext i32 %121 to i64
  br label %126

123:                                              ; preds = %115
  %124 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %83, i64 %117) #10, !srcloc !16
  %125 = extractvalue { i64, i64 } %124, 1
  br label %126

126:                                              ; preds = %123, %119
  %127 = phi i64 [ %122, %119 ], [ %125, %123 ]
  %128 = icmp ult i64 %127, 500000000
  br i1 %128, label %152, label %129

129:                                              ; preds = %126
  %130 = load i32, ptr %80, align 4
  %131 = mul i32 %130, 1000000
  %132 = zext i32 %131 to i64
  %133 = icmp ugt i64 %127, %132
  br i1 %133, label %152, label %134

134:                                              ; preds = %129
  %135 = icmp ult i64 %117, 4294967296
  br i1 %135, label %136, label %140, !prof !15

136:                                              ; preds = %134
  %137 = trunc i64 %117 to i32
  %138 = udiv i32 %137, %97
  %139 = zext i32 %138 to i64
  br label %143

140:                                              ; preds = %134
  %141 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %97, i64 %117) #10, !srcloc !16
  %142 = extractvalue { i64, i64 } %141, 1
  br label %143

143:                                              ; preds = %140, %136
  %144 = phi i64 [ %139, %136 ], [ %142, %140 ]
  %145 = sub i64 %78, %144
  %146 = tail call i64 @llvm.abs.i64(i64 %145, i1 false) #8
  %147 = trunc i64 %146 to i32
  %148 = icmp ugt i32 %93, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = trunc i64 %144 to i32
  %151 = trunc i32 %91 to i8
  br label %152

152:                                              ; preds = %149, %143, %129, %126, %108
  %153 = phi i8 [ %96, %108 ], [ %96, %129 ], [ %96, %126 ], [ %151, %149 ], [ %96, %143 ]
  %154 = phi i16 [ %95, %108 ], [ %95, %129 ], [ %95, %126 ], [ %110, %149 ], [ %95, %143 ]
  %155 = phi i8 [ %94, %108 ], [ %94, %129 ], [ %94, %126 ], [ %86, %149 ], [ %94, %143 ]
  %156 = phi i32 [ %93, %108 ], [ %93, %129 ], [ %93, %126 ], [ %147, %149 ], [ %93, %143 ]
  %157 = phi i32 [ %92, %108 ], [ %92, %129 ], [ %92, %126 ], [ %150, %149 ], [ %92, %143 ]
  %158 = add nuw nsw i32 %91, 1
  %159 = icmp eq i32 %158, 6
  br i1 %159, label %160, label %90

160:                                              ; preds = %152
  %161 = add i8 %86, 1
  %162 = zext i8 %161 to i32
  %163 = icmp ugt i8 %161, %81
  br i1 %163, label %164, label %82

164:                                              ; preds = %160
  %165 = icmp eq i32 %157, 0
  br i1 %165, label %242, label %166

166:                                              ; preds = %164
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %167 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %65, i32 0, i32 7
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr i32, ptr %168, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = load ptr, ptr %19, align 4
  %172 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %65, i32 0, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr i8, ptr %171, i32 %173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %170) #8, !srcloc !12
  %175 = zext i8 %155 to i32
  %176 = shl nuw nsw i32 %175, 13
  %177 = zext i16 %154 to i32
  %178 = shl nuw nsw i32 %177, 4
  %179 = zext i8 %153 to i32
  %180 = shl nuw nsw i32 %179, 1
  %181 = or i32 %180, %178
  %182 = or i32 %181, %176
  %183 = or i32 %182, 8388608
  %184 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %65, i32 0, i32 2
  %185 = load i8, ptr %184, align 4
  %186 = and i8 %185, 1
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %222, label %188

188:                                              ; preds = %166
  %189 = icmp ult i32 %157, 100000000
  br i1 %189, label %219, label %190

190:                                              ; preds = %188
  %191 = icmp ult i32 %157, 120000000
  br i1 %191, label %219, label %192

192:                                              ; preds = %190
  %193 = icmp ult i32 %157, 160000000
  br i1 %193, label %219, label %194

194:                                              ; preds = %192
  %195 = icmp ult i32 %157, 200000000
  br i1 %195, label %219, label %196

196:                                              ; preds = %194
  %197 = icmp ult i32 %157, 270000000
  br i1 %197, label %219, label %198

198:                                              ; preds = %196
  %199 = icmp ult i32 %157, 320000000
  br i1 %199, label %219, label %200

200:                                              ; preds = %198
  %201 = icmp ult i32 %157, 390000000
  br i1 %201, label %219, label %202

202:                                              ; preds = %200
  %203 = icmp ult i32 %157, 450000000
  br i1 %203, label %219, label %204

204:                                              ; preds = %202
  %205 = icmp ult i32 %157, 510000000
  br i1 %205, label %219, label %206

206:                                              ; preds = %204
  %207 = icmp ult i32 %157, 560000000
  br i1 %207, label %219, label %208

208:                                              ; preds = %206
  %209 = icmp ult i32 %157, 640000000
  br i1 %209, label %219, label %210

210:                                              ; preds = %208
  %211 = icmp ult i32 %157, 690000000
  br i1 %211, label %219, label %212

212:                                              ; preds = %210
  %213 = icmp ult i32 %157, 770000000
  br i1 %213, label %219, label %214

214:                                              ; preds = %212
  %215 = icmp ult i32 %157, 870000000
  br i1 %215, label %219, label %216

216:                                              ; preds = %214
  %217 = icmp ult i32 %157, 950000000
  %218 = select i1 %217, i32 234881024, i32 251658240
  br label %219

219:                                              ; preds = %216, %214, %212, %210, %208, %206, %204, %202, %200, %198, %196, %194, %192, %190, %188
  %220 = phi i32 [ 0, %188 ], [ 16777216, %190 ], [ 33554432, %192 ], [ 50331648, %194 ], [ 67108864, %196 ], [ 83886080, %198 ], [ 100663296, %200 ], [ 117440512, %202 ], [ 134217728, %204 ], [ 150994944, %206 ], [ 167772160, %208 ], [ 184549376, %210 ], [ 201326592, %212 ], [ 218103808, %214 ], [ %218, %216 ]
  %221 = or i32 %220, %183
  br label %222

222:                                              ; preds = %219, %166
  %223 = phi i32 [ %221, %219 ], [ %183, %166 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %224 = load ptr, ptr %19, align 4
  %225 = load ptr, ptr %13, align 4
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr i32, ptr %226, i32 16
  %228 = load i32, ptr %227, align 4
  %229 = getelementptr i8, ptr %224, i32 %228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %223) #8, !srcloc !12
  br label %230

230:                                              ; preds = %233, %222
  %231 = phi i32 [ 1000, %222 ], [ %234, %233 ]
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %242, label %233

233:                                              ; preds = %230
  %234 = add nsw i32 %231, -1
  %235 = load ptr, ptr %19, align 4
  %236 = load ptr, ptr %13, align 4
  %237 = load ptr, ptr %236, align 4
  %238 = load i32, ptr %237, align 4
  %239 = getelementptr i8, ptr %235, i32 %238
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %241 = icmp sgt i32 %240, -1
  br i1 %241, label %230, label %247

242:                                              ; preds = %230, %164, %64
  %243 = phi ptr [ @.str.19, %164 ], [ @.str.19, %64 ], [ @.str.20, %230 ]
  %244 = getelementptr i8, ptr %0, i32 1000
  %245 = load ptr, ptr %244, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %245, ptr noundef nonnull %243) #9
  %246 = load ptr, ptr %244, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %246, ptr noundef nonnull @.str.18) #9
  br label %280

247:                                              ; preds = %233
  %248 = lshr i32 %157, 3
  %249 = getelementptr i8, ptr %0, i32 1056
  %250 = load i32, ptr %249, align 8
  %251 = add nsw i32 %248, -1
  %252 = add i32 %251, %250
  %253 = udiv i32 %252, %250
  %254 = udiv i32 %248, %253
  %255 = icmp ugt i32 %254, 20000000
  %256 = zext i1 %255 to i32
  %257 = add i32 %253, %256
  %258 = load ptr, ptr %19, align 4
  %259 = load ptr, ptr %13, align 4
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr i32, ptr %260, i32 2
  %262 = load i32, ptr %261, align 4
  %263 = getelementptr i8, ptr %258, i32 %262
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %263) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %265 = and i32 %264, 1611071488
  %266 = and i32 %257, 65535
  %267 = getelementptr i8, ptr %0, i32 1060
  %268 = load i32, ptr %267, align 4
  %269 = shl i32 -1048576, %268
  %270 = and i32 %269, 15728640
  %271 = or i32 %265, %266
  %272 = or i32 %271, %270
  %273 = xor i32 %272, -1846018048
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %274 = load ptr, ptr %19, align 4
  %275 = load ptr, ptr %13, align 4
  %276 = load ptr, ptr %275, align 4
  %277 = getelementptr i32, ptr %276, i32 2
  %278 = load i32, ptr %277, align 4
  %279 = getelementptr i8, ptr %274, i32 %278
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %279, i32 %273) #8, !srcloc !12
  br label %280

280:                                              ; preds = %247, %242
  %281 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %14, i32 0, i32 5
  %282 = load i32, ptr %281, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %290, label %284

284:                                              ; preds = %280
  %285 = tail call i32 @wait_for_completion_timeout(ptr noundef %18, i32 noundef 30) #8
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = getelementptr i8, ptr %0, i32 1000
  %289 = load ptr, ptr %288, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %289, ptr noundef nonnull @.str.21) #9
  br label %290

290:                                              ; preds = %287, %284, %280
  %291 = load ptr, ptr %13, align 4
  %292 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %291, i32 0, i32 2
  %293 = load i8, ptr %292, align 4
  %294 = and i8 %293, 1
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %296, label %356

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %291, i32 0, i32 7
  %298 = load ptr, ptr %297, align 4
  %299 = getelementptr i32, ptr %298, i32 3
  %300 = load i32, ptr %299, align 4
  %301 = getelementptr i32, ptr %298, i32 4
  %302 = load i32, ptr %301, align 4
  %303 = or i32 %302, %300
  %304 = getelementptr i32, ptr %298, i32 5
  %305 = load i32, ptr %304, align 4
  %306 = or i32 %303, %305
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %307 = load ptr, ptr %19, align 4
  %308 = load ptr, ptr %13, align 4
  %309 = load ptr, ptr %308, align 4
  %310 = getelementptr i32, ptr %309, i32 17
  %311 = load i32, ptr %310, align 4
  %312 = getelementptr i8, ptr %307, i32 %311
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %312, i32 %306) #8, !srcloc !12
  %313 = getelementptr i32, ptr %298, i32 6
  %314 = load i32, ptr %313, align 4
  %315 = getelementptr i32, ptr %298, i32 7
  %316 = load i32, ptr %315, align 4
  %317 = or i32 %316, %314
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %318 = load ptr, ptr %19, align 4
  %319 = load ptr, ptr %13, align 4
  %320 = load ptr, ptr %319, align 4
  %321 = getelementptr i32, ptr %320, i32 18
  %322 = load i32, ptr %321, align 4
  %323 = getelementptr i8, ptr %318, i32 %322
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 %317) #8, !srcloc !12
  %324 = getelementptr i32, ptr %298, i32 8
  %325 = load i32, ptr %324, align 4
  %326 = getelementptr i32, ptr %298, i32 9
  %327 = load i32, ptr %326, align 4
  %328 = or i32 %327, %325
  %329 = getelementptr i32, ptr %298, i32 10
  %330 = load i32, ptr %329, align 4
  %331 = or i32 %328, %330
  %332 = getelementptr i32, ptr %298, i32 11
  %333 = load i32, ptr %332, align 4
  %334 = or i32 %331, %333
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %335 = load ptr, ptr %19, align 4
  %336 = load ptr, ptr %13, align 4
  %337 = load ptr, ptr %336, align 4
  %338 = getelementptr i32, ptr %337, i32 19
  %339 = load i32, ptr %338, align 4
  %340 = getelementptr i8, ptr %335, i32 %339
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %340, i32 %334) #8, !srcloc !12
  %341 = getelementptr i32, ptr %298, i32 12
  %342 = load i32, ptr %341, align 4
  %343 = getelementptr i32, ptr %298, i32 13
  %344 = load i32, ptr %343, align 4
  %345 = or i32 %344, %342
  %346 = getelementptr i32, ptr %298, i32 14
  %347 = load i32, ptr %346, align 4
  %348 = or i32 %345, %347
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %349 = load ptr, ptr %19, align 4
  %350 = load ptr, ptr %13, align 4
  %351 = load ptr, ptr %350, align 4
  %352 = getelementptr i32, ptr %351, i32 20
  %353 = load i32, ptr %352, align 4
  %354 = getelementptr i8, ptr %349, i32 %353
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %354, i32 %348) #8, !srcloc !12
  %355 = load ptr, ptr %13, align 4
  br label %356

356:                                              ; preds = %296, %290
  %357 = phi ptr [ %291, %290 ], [ %355, %296 ]
  %358 = load ptr, ptr %19, align 4
  %359 = load ptr, ptr %357, align 4
  %360 = getelementptr i32, ptr %359, i32 15
  %361 = load i32, ptr %360, align 4
  %362 = getelementptr i8, ptr %358, i32 %361
  %363 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %362) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %364 = and i32 %363, -32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %365 = load ptr, ptr %19, align 4
  %366 = load ptr, ptr %13, align 4
  %367 = load ptr, ptr %366, align 4
  %368 = getelementptr i32, ptr %367, i32 15
  %369 = load i32, ptr %368, align 4
  %370 = getelementptr i8, ptr %365, i32 %369
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %370, i32 %364) #8, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 9000, i32 noundef 11000, i32 noundef 2) #8
  %371 = or i32 %363, 31
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %372 = load ptr, ptr %19, align 4
  %373 = load ptr, ptr %13, align 4
  %374 = load ptr, ptr %373, align 4
  %375 = getelementptr i32, ptr %374, i32 15
  %376 = load i32, ptr %375, align 4
  %377 = getelementptr i8, ptr %372, i32 %376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %377, i32 %371) #8, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 9000, i32 noundef 11000, i32 noundef 2) #8
  %378 = getelementptr i8, ptr %0, i32 1064
  %379 = load i32, ptr %378, align 8
  %380 = and i32 %379, 1
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %356
  %383 = shl i32 %379, 19
  br label %407

384:                                              ; preds = %356
  %385 = and i32 %379, 256
  %386 = icmp eq i32 %385, 0
  %387 = select i1 %386, i32 570425344, i32 33554432
  %388 = shl i32 %379, 25
  %389 = shl i32 %379, 21
  %390 = and i32 %389, 16777216
  %391 = shl i32 %379, 19
  %392 = and i32 %391, 8388608
  %393 = shl i32 %379, 17
  %394 = and i32 %393, 4194304
  %395 = and i32 %388, 201326592
  %396 = shl i32 %379, 15
  %397 = and i32 %396, 2097152
  %398 = shl i32 %379, 13
  %399 = and i32 %398, 1048576
  %400 = or i32 %397, %399
  %401 = or i32 %400, %390
  %402 = or i32 %401, %395
  %403 = or i32 %402, %392
  %404 = or i32 %403, %394
  %405 = or i32 %404, %387
  %406 = xor i32 %405, 7340032
  br label %407

407:                                              ; preds = %384, %382
  %408 = phi i32 [ %383, %382 ], [ %391, %384 ]
  %409 = phi i32 [ 0, %382 ], [ %406, %384 ]
  %410 = getelementptr i8, ptr %0, i32 1068
  %411 = load i32, ptr %410, align 4
  %412 = icmp ult i32 %411, 4
  br i1 %412, label %416, label %413

413:                                              ; preds = %407
  %414 = getelementptr i8, ptr %0, i32 1000
  %415 = load ptr, ptr %414, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %415, ptr noundef nonnull @.str.22) #9
  br label %506

416:                                              ; preds = %407
  %417 = and i32 %408, 268435456
  %418 = xor i32 %417, 268435456
  %419 = or i32 %418, %409
  %420 = mul i32 %411, -4096
  %421 = add i32 %420, 28672
  %422 = or i32 %419, %421
  %423 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %357, i32 0, i32 2
  %424 = load i8, ptr %423, align 4
  %425 = and i8 %424, 2
  %426 = icmp eq i8 %425, 0
  %427 = shl i32 %379, 20
  %428 = and i32 %427, 1073741824
  %429 = select i1 %426, i32 0, i32 %428
  %430 = or i32 %422, %429
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %431 = load ptr, ptr %19, align 4
  %432 = load ptr, ptr %13, align 4
  %433 = load ptr, ptr %432, align 4
  %434 = getelementptr i32, ptr %433, i32 4
  %435 = load i32, ptr %434, align 4
  %436 = getelementptr i8, ptr %431, i32 %435
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %436, i32 %430) #8, !srcloc !12
  %437 = getelementptr i8, ptr %0, i32 1060
  %438 = load i32, ptr %437, align 4
  %439 = shl nsw i32 -1, %438
  %440 = xor i32 %439, -1
  %441 = load ptr, ptr %19, align 4
  %442 = load ptr, ptr %13, align 4
  %443 = load ptr, ptr %442, align 4
  %444 = getelementptr i32, ptr %443, i32 4
  %445 = load i32, ptr %444, align 4
  %446 = getelementptr i8, ptr %441, i32 %445
  %447 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %446) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %448 = load i32, ptr %437, align 4
  %449 = shl i32 %448, 5
  %450 = add i32 %449, 96
  %451 = and i32 %450, 96
  %452 = shl i32 %440, 1
  %453 = and i32 %452, 30
  %454 = or i32 %453, %447
  %455 = or i32 %454, %451
  %456 = or i32 %455, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %457 = load ptr, ptr %19, align 4
  %458 = load ptr, ptr %13, align 4
  %459 = load ptr, ptr %458, align 4
  %460 = getelementptr i32, ptr %459, i32 4
  %461 = load i32, ptr %460, align 4
  %462 = getelementptr i8, ptr %457, i32 %461
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %462, i32 %456) #8, !srcloc !12
  br label %463

463:                                              ; preds = %469, %416
  %464 = phi i32 [ 100, %416 ], [ %470, %469 ]
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %469

466:                                              ; preds = %463
  %467 = getelementptr i8, ptr %0, i32 1000
  %468 = load ptr, ptr %467, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %468, ptr noundef nonnull @.str.23) #9
  br label %506

469:                                              ; preds = %463
  %470 = add nsw i32 %464, -1
  %471 = load ptr, ptr %19, align 4
  %472 = load ptr, ptr %13, align 4
  %473 = load ptr, ptr %472, align 4
  %474 = load i32, ptr %473, align 4
  %475 = getelementptr i8, ptr %471, i32 %474
  %476 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %475) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %477 = and i32 %476, 1280
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %463, label %479

479:                                              ; preds = %469
  %480 = load ptr, ptr %19, align 4
  %481 = load ptr, ptr %13, align 4
  %482 = load ptr, ptr %481, align 4
  %483 = getelementptr i32, ptr %482, i32 5
  %484 = load i32, ptr %483, align 4
  %485 = getelementptr i8, ptr %480, i32 %484
  %486 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %485) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %487 = and i32 %486, 2097151
  %488 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %357, i32 0, i32 7
  %489 = load ptr, ptr %488, align 4
  %490 = getelementptr i32, ptr %489, i32 2
  %491 = load i32, ptr %490, align 4
  %492 = shl i32 %491, 21
  %493 = or i32 %492, %487
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %494 = load ptr, ptr %19, align 4
  %495 = load ptr, ptr %13, align 4
  %496 = load ptr, ptr %495, align 4
  %497 = getelementptr i32, ptr %496, i32 5
  %498 = load i32, ptr %497, align 4
  %499 = getelementptr i8, ptr %494, i32 %498
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %499, i32 %493) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %500 = load ptr, ptr %19, align 4
  %501 = load ptr, ptr %13, align 4
  %502 = load ptr, ptr %501, align 4
  %503 = getelementptr i32, ptr %502, i32 3
  %504 = load i32, ptr %503, align 4
  %505 = getelementptr i8, ptr %500, i32 %504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %505, i32 16777215) #8, !srcloc !12
  br label %506

506:                                              ; preds = %479, %466, %413
  %507 = load i32, ptr %5, align 8
  %508 = or i32 %507, 2
  store i32 %508, ptr %5, align 8
  br label %509

509:                                              ; preds = %506, %9
  %510 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %3, i32 0, i32 3
  %511 = call i32 @mipi_dsi_create_packet(ptr noundef %510, ptr noundef %1) #8
  %512 = icmp slt i32 %511, 0
  br i1 %512, label %569, label %513

513:                                              ; preds = %509
  %514 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 5
  %515 = load i32, ptr %514, align 4
  %516 = trunc i32 %515 to i16
  %517 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %3, i32 0, i32 7
  store i16 %516, ptr %517, align 4
  %518 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 6
  %519 = load ptr, ptr %518, align 4
  %520 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %3, i32 0, i32 6
  store ptr %519, ptr %520, align 4
  %521 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 2
  %522 = load i16, ptr %521, align 2
  %523 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %3, i32 0, i32 4
  store i16 %522, ptr %523, align 4
  %524 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %3, i32 0, i32 5
  store i16 0, ptr %524, align 2
  %525 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %3, i32 0, i32 8
  store i16 0, ptr %525, align 2
  %526 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %3, i32 0, i32 2
  store i32 -110, ptr %526, align 4
  %527 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %3, i32 0, i32 1
  store i32 0, ptr %527, align 4
  %528 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %3, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %528, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #8
  %529 = getelementptr i8, ptr %0, i32 1096
  %530 = call i32 @_raw_spin_lock_irqsave(ptr noundef %529) #8
  %531 = getelementptr i8, ptr %0, i32 1100
  %532 = load volatile ptr, ptr %531, align 4
  %533 = icmp eq ptr %532, %531
  %534 = getelementptr i8, ptr %0, i32 1104
  %535 = load ptr, ptr %534, align 4
  store ptr %3, ptr %534, align 4
  store ptr %531, ptr %3, align 4
  %536 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %535, ptr %536, align 4
  store volatile ptr %3, ptr %535, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %529, i32 noundef %530) #8
  br i1 %533, label %537, label %538

537:                                              ; preds = %513
  call fastcc void @exynos_dsi_transfer_start(ptr noundef %4) #8
  br label %538

538:                                              ; preds = %537, %513
  %539 = call i32 @wait_for_completion_timeout(ptr noundef %527, i32 noundef 10) #8
  %540 = load i32, ptr %526, align 4
  %541 = icmp eq i32 %540, -110
  br i1 %541, label %542, label %564

542:                                              ; preds = %538
  %543 = call i32 @_raw_spin_lock_irqsave(ptr noundef %529) #8
  %544 = load volatile ptr, ptr %531, align 4
  %545 = icmp ne ptr %544, %531
  %546 = icmp eq ptr %544, %3
  %547 = and i1 %545, %546
  %548 = load ptr, ptr %536, align 4
  %549 = load ptr, ptr %3, align 4
  %550 = getelementptr inbounds %struct.list_head, ptr %549, i32 0, i32 1
  store ptr %548, ptr %550, align 4
  store volatile ptr %549, ptr %548, align 4
  store volatile ptr %3, ptr %3, align 4
  store ptr %3, ptr %536, align 4
  br i1 %547, label %551, label %555

551:                                              ; preds = %542
  %552 = load volatile ptr, ptr %531, align 4
  %553 = icmp eq ptr %552, %531
  call void @_raw_spin_unlock_irqrestore(ptr noundef %529, i32 noundef %543) #8
  br i1 %553, label %556, label %554

554:                                              ; preds = %551
  call fastcc void @exynos_dsi_transfer_start(ptr noundef %4) #8
  br label %556

555:                                              ; preds = %542
  call void @_raw_spin_unlock_irqrestore(ptr noundef %529, i32 noundef %543) #8
  br label %556

556:                                              ; preds = %555, %554, %551
  %557 = getelementptr i8, ptr %0, i32 1000
  %558 = load ptr, ptr %557, align 8
  %559 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %3, i32 0, i32 3, i32 1
  %560 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %3, i32 0, i32 3, i32 2
  %561 = load i32, ptr %560, align 4
  %562 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %3, i32 0, i32 3, i32 3
  %563 = load ptr, ptr %562, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %558, ptr noundef nonnull @.str.24, i32 noundef 4, ptr noundef %559, i32 noundef %561, ptr noundef %563) #9
  br label %564

564:                                              ; preds = %556, %538
  %565 = icmp slt i32 %540, 0
  %566 = load i16, ptr %525, align 2
  %567 = zext i16 %566 to i32
  %568 = select i1 %565, i32 %540, i32 %567
  br label %569

569:                                              ; preds = %564, %509, %2
  %570 = phi i32 [ %568, %564 ], [ -22, %2 ], [ %511, %509 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #8
  ret i32 %570
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_crtc_get_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @exynos_dsi_detect(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #5 {
  %3 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 18
  %4 = load i32, ptr %3, align 8
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_dsi_connector_destroy(ptr noundef %0) #0 {
  tail call void @drm_connector_unregister(ptr noundef %0) #8
  tail call void @drm_connector_cleanup(ptr noundef %0) #8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_dsi_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 968
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @drm_panel_get_modes(ptr noundef nonnull %3, ptr noundef %0) #8
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_dsi_te_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.exynos_dsi, ptr %1, i32 0, i32 19
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  tail call void @exynos_drm_crtc_te_handler(ptr noundef %9) #8
  br label %10

10:                                               ; preds = %7, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_crtc_te_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_dsi_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 19
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %67, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, -9
  store i32 %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @drm_panel_disable(ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %11
  br i1 %14, label %28, label %15

15:                                               ; preds = %24, %6
  %16 = phi ptr [ %26, %24 ], [ %13, %6 ]
  %17 = getelementptr i8, ptr %16, i32 24
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %16, i32 -56
  tail call void %20(ptr noundef %23) #8
  br label %24

24:                                               ; preds = %22, %15
  %25 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %11
  br i1 %27, label %28, label %15

28:                                               ; preds = %24, %6
  %29 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 24
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i32, ptr %33, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %30, i32 %35
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %38 = and i32 %37, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %39 = load ptr, ptr %29, align 4
  %40 = load ptr, ptr %31, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i32, ptr %41, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr i8, ptr %39, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %38) #8, !srcloc !12
  %45 = load ptr, ptr %8, align 8
  %46 = tail call i32 @drm_panel_unprepare(ptr noundef %45) #8
  %47 = load ptr, ptr %11, align 4
  %48 = icmp eq ptr %47, %11
  br i1 %48, label %61, label %49

49:                                               ; preds = %58, %28
  %50 = phi ptr [ %59, %58 ], [ %47, %28 ]
  %51 = getelementptr i8, ptr %50, i32 24
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %52, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = getelementptr i8, ptr %50, i32 -56
  tail call void %54(ptr noundef %57) #8
  br label %58

58:                                               ; preds = %56, %49
  %59 = load ptr, ptr %50, align 4
  %60 = icmp eq ptr %59, %11
  br i1 %60, label %61, label %49

61:                                               ; preds = %58, %28
  %62 = load i32, ptr %2, align 8
  %63 = and i32 %62, -2
  store i32 %63, ptr %2, align 8
  %64 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 6
  %65 = load ptr, ptr %64, align 8
  %66 = tail call i32 @__pm_runtime_idle(ptr noundef %65, i32 noundef 4) #8
  br label %67

67:                                               ; preds = %61, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_create_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos_dsi_transfer_start(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 22
  %3 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 23
  %4 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 7
  %6 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 24
  %7 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 19
  br label %8

8:                                                ; preds = %159, %1
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %10 = load volatile ptr, ptr %3, align 4
  %11 = icmp eq ptr %10, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %9) #8
  br i1 %11, label %169, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %10, i32 0, i32 3, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %10, i32 0, i32 5
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp eq i32 %14, %18
  %20 = select i1 %15, i1 %19, i1 false
  br i1 %20, label %169, label %21

21:                                               ; preds = %12
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %10, i32 0, i32 3, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %10, i32 0, i32 5
  %26 = getelementptr i8, ptr %24, i32 %18
  %27 = trunc i32 %14 to i16
  %28 = sub i16 %27, %17
  %29 = icmp eq i16 %17, 0
  %30 = tail call i16 @llvm.umin.i16(i16 %28, i16 2048) #8
  %31 = add i16 %30, %17
  store i16 %31, ptr %25, align 2
  %32 = icmp ugt i16 %30, 3
  br i1 %32, label %33, label %46

33:                                               ; preds = %33, %21
  %34 = phi i16 [ %44, %33 ], [ %30, %21 ]
  %35 = phi ptr [ %43, %33 ], [ %26, %21 ]
  %36 = load i32, ptr %35, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %37 = load ptr, ptr %5, align 4
  %38 = load ptr, ptr %6, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i32, ptr %39, i32 13
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %37, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %36) #8, !srcloc !12
  %43 = getelementptr i8, ptr %35, i32 4
  %44 = add i16 %34, -4
  %45 = icmp ugt i16 %44, 3
  br i1 %45, label %33, label %46

46:                                               ; preds = %33, %21
  %47 = phi ptr [ %26, %21 ], [ %43, %33 ]
  %48 = phi i16 [ %30, %21 ], [ %44, %33 ]
  switch i16 %48, label %72 [
    i16 3, label %49
    i16 2, label %54
    i16 1, label %61
  ]

49:                                               ; preds = %46
  %50 = getelementptr i8, ptr %47, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 16
  br label %54

54:                                               ; preds = %49, %46
  %55 = phi i32 [ 0, %46 ], [ %53, %49 ]
  %56 = getelementptr i8, ptr %47, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = or i32 %59, %55
  br label %61

61:                                               ; preds = %54, %46
  %62 = phi i32 [ 0, %46 ], [ %60, %54 ]
  %63 = load i8, ptr %47, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %62, %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %66 = load ptr, ptr %5, align 4
  %67 = load ptr, ptr %6, align 4
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i32, ptr %68, i32 13
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %66, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %65) #8, !srcloc !12
  br label %72

72:                                               ; preds = %61, %46
  br i1 %29, label %73, label %152

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %10, i32 0, i32 3, i32 1
  %75 = load i32, ptr %74, align 1
  br label %76

76:                                               ; preds = %91, %73
  %77 = phi i32 [ 2000, %73 ], [ %92, %91 ]
  %78 = load ptr, ptr %5, align 4
  %79 = load ptr, ptr %6, align 4
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i32, ptr %80, i32 15
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr i8, ptr %78, i32 %82
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %85 = and i32 %84, 8388608
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %76
  %88 = tail call i32 @__cond_resched() #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  tail call void @usleep_range_state(i32 noundef 950, i32 noundef 1050, i32 noundef 2) #8
  br label %91

91:                                               ; preds = %90, %87
  %92 = add nsw i32 %77, -1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %76

94:                                               ; preds = %91
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.25) #9
  br label %152

95:                                               ; preds = %76
  %96 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %10, i32 0, i32 4
  %97 = load i16, ptr %96, align 4
  %98 = and i16 %97, 2
  %99 = lshr exact i16 %98, 1
  %100 = xor i16 %99, 1
  %101 = zext i16 %100 to i32
  %102 = load i32, ptr %7, align 8
  %103 = lshr i32 %102, 2
  %104 = and i32 %103, 1
  %105 = xor i32 %104, %101
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %127, label %107

107:                                              ; preds = %95
  %108 = load ptr, ptr %5, align 4
  %109 = load ptr, ptr %6, align 4
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr i32, ptr %110, i32 5
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %108, i32 %112
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %115 = and i32 %114, -129
  %116 = shl nuw nsw i16 %98, 6
  %117 = zext i16 %116 to i32
  %118 = or i32 %115, %117
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %119 = load ptr, ptr %5, align 4
  %120 = load ptr, ptr %6, align 4
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr i32, ptr %121, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr i8, ptr %119, i32 %123
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %118) #8, !srcloc !12
  %125 = load i32, ptr %7, align 8
  %126 = xor i32 %125, 4
  store i32 %126, ptr %7, align 8
  br label %127

127:                                              ; preds = %107, %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %128 = load ptr, ptr %5, align 4
  %129 = load ptr, ptr %6, align 4
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr i32, ptr %130, i32 12
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr i8, ptr %128, i32 %132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %75) #8, !srcloc !12
  %134 = load i16, ptr %96, align 4
  %135 = and i16 %134, 1
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %152, label %137

137:                                              ; preds = %127
  %138 = load ptr, ptr %5, align 4
  %139 = load ptr, ptr %6, align 4
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr i32, ptr %140, i32 5
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr i8, ptr %138, i32 %142
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %145 = or i32 %144, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %146 = load ptr, ptr %5, align 4
  %147 = load ptr, ptr %6, align 4
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr i32, ptr %148, i32 5
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr i8, ptr %146, i32 %150
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %145) #8, !srcloc !12
  br label %152

152:                                              ; preds = %137, %127, %94, %72
  %153 = load i32, ptr %13, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %10, i32 0, i32 7
  %157 = load i16, ptr %156, align 4
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %10, i32 0, i32 2
  store i32 0, ptr %160, align 4
  %161 = getelementptr inbounds %struct.exynos_dsi_transfer, ptr %10, i32 0, i32 1
  tail call void @complete(ptr noundef %161) #8
  %162 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %163 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = load ptr, ptr %10, align 4
  %166 = getelementptr inbounds %struct.list_head, ptr %165, i32 0, i32 1
  store ptr %164, ptr %166, align 4
  store volatile ptr %165, ptr %164, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %163, align 4
  %167 = load volatile ptr, ptr %3, align 4
  %168 = icmp eq ptr %167, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %162) #8
  br i1 %168, label %169, label %8

169:                                              ; preds = %159, %155, %152, %12, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @printk_timed_ratelimit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_dsi_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @drm_simple_encoder_init(ptr noundef %2, ptr noundef %5, i32 noundef 2) #8
  %7 = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 11
  store ptr @exynos_dsi_encoder_helper_funcs, ptr %7, align 4
  %8 = tail call i32 @exynos_drm_set_possible_crtcs(ptr noundef %5, i32 noundef 1) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = tail call ptr @of_graph_get_remote_node(ptr noundef %12, i32 noundef 0, i32 noundef 0) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %13) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @drm_bridge_attach(ptr noundef %5, ptr noundef nonnull %16, ptr noundef null, i32 noundef 0) #8
  br label %20

20:                                               ; preds = %18, %15
  tail call void @of_node_put(ptr noundef nonnull %13) #8
  br label %21

21:                                               ; preds = %20, %10
  %22 = getelementptr inbounds %struct.exynos_dsi, ptr %5, i32 0, i32 1
  %23 = tail call i32 @mipi_dsi_host_register(ptr noundef %22) #8
  br label %24

24:                                               ; preds = %21, %3
  %25 = phi i32 [ %23, %21 ], [ %8, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_dsi_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @exynos_dsi_disable(ptr noundef %5)
  %6 = getelementptr inbounds %struct.exynos_dsi, ptr %5, i32 0, i32 1
  tail call void @mipi_dsi_host_unregister(ptr noundef %6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_set_possible_crtcs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_dsi_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 19
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %204

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #8, !srcloc !19
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #8, !srcloc !20
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  br label %17

17:                                               ; preds = %16, %11
  %18 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.38) #9
  br label %204

19:                                               ; preds = %6
  %20 = load i32, ptr %2, align 8
  %21 = or i32 %20, 1
  store i32 %21, ptr %2, align 8
  %22 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = tail call i32 @drm_panel_prepare(ptr noundef nonnull %23) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %199, label %46

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 4
  %30 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 4, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %29
  br i1 %32, label %46, label %33

33:                                               ; preds = %42, %28
  %34 = phi ptr [ %44, %42 ], [ %31, %28 ]
  %35 = getelementptr i8, ptr %34, i32 24
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %36, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = getelementptr i8, ptr %34, i32 -56
  tail call void %38(ptr noundef %41) #8
  br label %42

42:                                               ; preds = %40, %33
  %43 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %29
  br i1 %45, label %46, label %33

46:                                               ; preds = %42, %28, %25
  %47 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_crtc, ptr %48, i32 0, i32 22
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 24
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %52, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 17
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %124, label %59

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 7
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 6
  %64 = load i16, ptr %63, align 2
  %65 = zext i16 %64 to i32
  %66 = sub nsw i32 %62, %65
  %67 = shl i32 %66, 16
  %68 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 9
  %69 = load i16, ptr %68, align 4
  %70 = zext i16 %69 to i32
  %71 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 8
  %72 = load i16, ptr %71, align 2
  %73 = zext i16 %72 to i32
  %74 = sub nsw i32 %70, %73
  %75 = or i32 %67, %74
  %76 = or i32 %75, -268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %77 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 7
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %51, align 4
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i32, ptr %80, i32 7
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr i8, ptr %78, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %76) #8, !srcloc !12
  %84 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 2
  %85 = load i16, ptr %84, align 2
  %86 = zext i16 %85 to i32
  %87 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 1
  %88 = load i16, ptr %87, align 4
  %89 = zext i16 %88 to i32
  %90 = sub nsw i32 %86, %89
  %91 = shl i32 %90, 16
  %92 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 4
  %93 = load i16, ptr %92, align 2
  %94 = zext i16 %93 to i32
  %95 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 3
  %96 = load i16, ptr %95, align 4
  %97 = zext i16 %96 to i32
  %98 = sub nsw i32 %94, %97
  %99 = or i32 %98, %91
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %100 = load ptr, ptr %77, align 4
  %101 = load ptr, ptr %51, align 4
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i32, ptr %102, i32 8
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr i8, ptr %100, i32 %104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %99) #8, !srcloc !12
  %106 = load i16, ptr %71, align 2
  %107 = zext i16 %106 to i32
  %108 = load i16, ptr %60, align 4
  %109 = zext i16 %108 to i32
  %110 = sub nsw i32 %107, %109
  %111 = shl i32 %110, 22
  %112 = load i16, ptr %95, align 4
  %113 = zext i16 %112 to i32
  %114 = load i16, ptr %84, align 2
  %115 = zext i16 %114 to i32
  %116 = sub nsw i32 %113, %115
  %117 = or i32 %116, %111
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %118 = load ptr, ptr %77, align 4
  %119 = load ptr, ptr %51, align 4
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i32, ptr %120, i32 9
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr i8, ptr %118, i32 %122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %117) #8, !srcloc !12
  br label %124

124:                                              ; preds = %59, %46
  %125 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 1
  %126 = load i16, ptr %125, align 4
  %127 = zext i16 %126 to i32
  %128 = shl nsw i32 -1, %54
  %129 = xor i32 %128, -1
  %130 = and i32 %127, %129
  %131 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 7, i32 6
  %132 = load i16, ptr %131, align 2
  %133 = zext i16 %132 to i32
  %134 = and i32 %133, %129
  %135 = shl nuw i32 %134, 16
  %136 = or i32 %135, %130
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %137 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 7
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %51, align 4
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr i32, ptr %140, i32 6
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr i8, ptr %138, i32 %142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %136) #8, !srcloc !12
  %144 = load ptr, ptr %137, align 4
  %145 = load ptr, ptr %51, align 4
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr i32, ptr %146, i32 6
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr i8, ptr %144, i32 %148
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %151 = or i32 %150, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %152 = load ptr, ptr %137, align 4
  %153 = load ptr, ptr %51, align 4
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr i32, ptr %154, i32 6
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr i8, ptr %152, i32 %156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %151) #8, !srcloc !12
  %158 = load ptr, ptr %22, align 8
  %159 = icmp eq ptr %158, null
  br i1 %159, label %163, label %160

160:                                              ; preds = %124
  %161 = tail call i32 @drm_panel_enable(ptr noundef nonnull %158) #8
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %182, label %179

163:                                              ; preds = %124
  %164 = getelementptr inbounds %struct.exynos_dsi, ptr %0, i32 0, i32 4
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, %164
  br i1 %166, label %179, label %167

167:                                              ; preds = %176, %163
  %168 = phi ptr [ %177, %176 ], [ %165, %163 ]
  %169 = getelementptr i8, ptr %168, i32 24
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.drm_bridge_funcs, ptr %170, i32 0, i32 8
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %167
  %175 = getelementptr i8, ptr %168, i32 -56
  tail call void %172(ptr noundef %175) #8
  br label %176

176:                                              ; preds = %174, %167
  %177 = load ptr, ptr %168, align 4
  %178 = icmp eq ptr %177, %164
  br i1 %178, label %179, label %167

179:                                              ; preds = %176, %163, %160
  %180 = load i32, ptr %2, align 8
  %181 = or i32 %180, 8
  store i32 %181, ptr %2, align 8
  br label %204

182:                                              ; preds = %160
  %183 = load ptr, ptr %137, align 4
  %184 = load ptr, ptr %51, align 4
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr i32, ptr %185, i32 6
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr i8, ptr %183, i32 %187
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %190 = and i32 %189, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %191 = load ptr, ptr %137, align 4
  %192 = load ptr, ptr %51, align 4
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr i32, ptr %193, i32 6
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr i8, ptr %191, i32 %195
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %190) #8, !srcloc !12
  %197 = load ptr, ptr %22, align 8
  %198 = tail call i32 @drm_panel_unprepare(ptr noundef %197) #8
  br label %199

199:                                              ; preds = %182, %25
  %200 = load i32, ptr %2, align 8
  %201 = and i32 %200, -2
  store i32 %201, ptr %2, align 8
  %202 = load ptr, ptr %7, align 8
  %203 = tail call i32 @__pm_runtime_idle(ptr noundef %202, i32 noundef 5) #8
  br label %204

204:                                              ; preds = %199, %179, %17, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_dsi_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  %6 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 19
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %50, label %10

10:                                               ; preds = %1
  %11 = and i32 %7, -3
  store i32 %11, ptr %6, align 8
  %12 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i32, ptr %15, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %13, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %20 = and i32 %19, -301465601
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %21 = load ptr, ptr %12, align 4
  %22 = load ptr, ptr %4, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i32, ptr %23, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %21, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %20) #8, !srcloc !12
  %27 = load ptr, ptr %12, align 4
  %28 = load ptr, ptr %4, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i32, ptr %29, i32 16
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %27, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %34 = and i32 %33, -8388609
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %35 = load ptr, ptr %12, align 4
  %36 = load ptr, ptr %4, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i32, ptr %37, i32 16
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %35, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %34) #8, !srcloc !12
  %41 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 12
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %10
  %45 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %42) #8
  tail call void @disable_irq(i32 noundef %45) #8
  br label %46

46:                                               ; preds = %44, %10
  %47 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 11
  %48 = load i32, ptr %47, align 8
  tail call void @disable_irq(i32 noundef %48) #8
  %49 = load i32, ptr %6, align 8
  br label %50

50:                                               ; preds = %46, %1
  %51 = phi i32 [ %49, %46 ], [ %7, %1 ]
  %52 = and i32 %51, -5
  store i32 %52, ptr %6, align 8
  %53 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 8
  %54 = load ptr, ptr %53, align 8
  %55 = tail call i32 @phy_power_off(ptr noundef %54) #8
  %56 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %5, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, -1
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 9
  br label %62

62:                                               ; preds = %62, %60
  %63 = phi i32 [ %58, %60 ], [ %67, %62 ]
  %64 = load ptr, ptr %61, align 4
  %65 = getelementptr ptr, ptr %64, i32 %63
  %66 = load ptr, ptr %65, align 4
  tail call void @clk_disable(ptr noundef %66) #8
  tail call void @clk_unprepare(ptr noundef %66) #8
  %67 = add nsw i32 %63, -1
  %68 = icmp sgt i32 %63, 0
  br i1 %68, label %62, label %69

69:                                               ; preds = %62, %50
  %70 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 10
  %71 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %70) #8
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 6
  %75 = load ptr, ptr %74, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.39, i32 noundef %71) #9
  br label %76

76:                                               ; preds = %73, %69
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_dsi_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 10
  %7 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %6) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.exynos_dsi_driver_data, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 9
  br label %18

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.40, i32 noundef %7) #9
  br label %61

18:                                               ; preds = %32, %13
  %19 = phi i32 [ 0, %13 ], [ %33, %32 ]
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr ptr, ptr %20, i32 %19
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @clk_prepare(ptr noundef %22) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = tail call i32 @clk_enable(ptr noundef %22) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  tail call void @clk_unprepare(ptr noundef %22) #8
  br label %29

29:                                               ; preds = %28, %18
  %30 = phi i32 [ %23, %18 ], [ %26, %28 ]
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %29, %25
  %33 = add nuw i32 %19, 1
  %34 = load i32, ptr %10, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %18, label %36

36:                                               ; preds = %32, %9
  %37 = phi i32 [ 0, %9 ], [ %33, %32 ]
  %38 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 8
  %39 = load ptr, ptr %38, align 8
  %40 = tail call i32 @phy_power_on(ptr noundef %39) #8
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 6
  %44 = load ptr, ptr %43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.41, i32 noundef %40) #9
  br label %45

45:                                               ; preds = %42, %29
  %46 = phi i32 [ %37, %42 ], [ %19, %29 ]
  %47 = phi i32 [ %40, %42 ], [ %30, %29 ]
  %48 = add i32 %46, -1
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.exynos_dsi, ptr %3, i32 0, i32 9
  br label %52

52:                                               ; preds = %52, %50
  %53 = phi i32 [ %48, %50 ], [ %57, %52 ]
  %54 = load ptr, ptr %51, align 4
  %55 = getelementptr ptr, ptr %54, i32 %53
  %56 = load ptr, ptr %55, align 4
  tail call void @clk_disable(ptr noundef %56) #8
  tail call void @clk_unprepare(ptr noundef %56) #8
  %57 = add nsw i32 %53, -1
  %58 = icmp sgt i32 %53, 0
  br i1 %58, label %52, label %59

59:                                               ; preds = %52, %45
  %60 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %6) #8
  br label %61

61:                                               ; preds = %59, %36, %15
  %62 = phi i32 [ %7, %15 ], [ %47, %59 ], [ 0, %36 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 3102044}
!10 = !{i64 2155346933}
!11 = !{i64 2155346185}
!12 = !{i64 3101626}
!13 = !{i8 0, i8 2}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148404539, i64 2148404819, i64 2148405153, i64 2148405487}
!17 = !{i64 2155369895}
!18 = !{i64 2147990866}
!19 = !{i64 489176, i64 2147979147, i64 2147979173, i64 2147979220, i64 2147979242, i64 2147979270, i64 2147979290}
!20 = !{i64 475745, i64 475770, i64 475792, i64 475808, i64 475820, i64 475840, i64 475864, i64 475880, i64 475892}
!21 = !{i64 2147990992}
