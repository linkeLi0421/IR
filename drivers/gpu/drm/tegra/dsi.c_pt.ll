; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/dsi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_dsi = type { %struct.host1x_client, %struct.tegra_output, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.mipi_dsi_host, ptr, i32, i32, ptr, ptr }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.tegra_output = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.drm_encoder, %struct.drm_connector }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.75 }
%union.anon.75 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.mipi_dsi_packet = type { i32, [4 x i8], i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.77, ptr, i32, ptr, i8, i32 }
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
%struct.anon.77 = type { i32, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.tegra_dc = type { %struct.host1x_client, ptr, ptr, %struct.drm_crtc, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.tegra_dc_stats, %struct.list_head, ptr, ptr, i8 }
%struct.tegra_dc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_dsi_state = type { %struct.drm_connector_state, %struct.mipi_dphy_timing, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.mipi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"tegra-dsi\00", align 1
@tegra_dsi_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra132-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@tegra_dsi_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @tegra_dsi_probe, ptr @tegra_dsi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_dsi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dsi\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot get DSI clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"lp\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"cannot get low-power clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"cannot get parent clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"avdd-dsi-csi\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"cannot get VDD supply\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"cannot setup clocks\0A\00", align 1
@tegra_dsi_host_ops = internal constant %struct.mipi_dsi_host_ops { ptr @tegra_dsi_host_attach, ptr @tegra_dsi_host_detach, ptr @tegra_dsi_host_transfer }, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"failed to register DSI host: %d\0A\00", align 1
@dsi_client_ops = internal constant %struct.host1x_client_ops { ptr null, ptr @tegra_dsi_init, ptr @tegra_dsi_exit, ptr null, ptr @tegra_dsi_runtime_suspend, ptr @tegra_dsi_runtime_resume }, align 4
@tegra_dsi_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"nvidia,ganged-mode\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"failed to set up ganged mode: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"unknown status: %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"failed to parse response: %zd\0A\00", align 1
@__tracepoint_dsi_readl = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_dsi_writel = external dso_local global %struct.tracepoint, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.17 = private unnamed_addr constant [46 x i8] c"timeout waiting for transmission to complete\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"peripheral returned no data\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"unhandled response type: %02x\0A\00", align 1
@tegra_dsi_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @tegra_dsi_connector_reset, ptr @tegra_output_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @tegra_dsi_late_register, ptr @tegra_dsi_early_unregister, ptr @tegra_output_connector_destroy, ptr @tegra_dsi_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_dsi_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @tegra_output_connector_get_modes, ptr null, ptr @tegra_dsi_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_dsi_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_dsi_encoder_disable, ptr @tegra_dsi_encoder_enable, ptr @tegra_dsi_encoder_atomic_check }, align 4
@.str.20 = private unnamed_addr constant [33 x i8] c"failed to initialize output: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@debugfs_files = internal global [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.21, ptr @tegra_dsi_show_regs, i32 0, ptr null }], align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@tegra_dsi_regs = internal unnamed_addr constant [71 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.23, i32 0 }, %struct.debugfs_reg32 { ptr @.str.24, i32 1 }, %struct.debugfs_reg32 { ptr @.str.25, i32 2 }, %struct.debugfs_reg32 { ptr @.str.26, i32 8 }, %struct.debugfs_reg32 { ptr @.str.27, i32 9 }, %struct.debugfs_reg32 { ptr @.str.28, i32 10 }, %struct.debugfs_reg32 { ptr @.str.29, i32 11 }, %struct.debugfs_reg32 { ptr @.str.30, i32 12 }, %struct.debugfs_reg32 { ptr @.str.31, i32 13 }, %struct.debugfs_reg32 { ptr @.str.32, i32 14 }, %struct.debugfs_reg32 { ptr @.str.33, i32 15 }, %struct.debugfs_reg32 { ptr @.str.34, i32 16 }, %struct.debugfs_reg32 { ptr @.str.35, i32 17 }, %struct.debugfs_reg32 { ptr @.str.36, i32 18 }, %struct.debugfs_reg32 { ptr @.str.37, i32 19 }, %struct.debugfs_reg32 { ptr @.str.38, i32 20 }, %struct.debugfs_reg32 { ptr @.str.39, i32 21 }, %struct.debugfs_reg32 { ptr @.str.40, i32 26 }, %struct.debugfs_reg32 { ptr @.str.41, i32 27 }, %struct.debugfs_reg32 { ptr @.str.42, i32 28 }, %struct.debugfs_reg32 { ptr @.str.43, i32 29 }, %struct.debugfs_reg32 { ptr @.str.44, i32 30 }, %struct.debugfs_reg32 { ptr @.str.45, i32 31 }, %struct.debugfs_reg32 { ptr @.str.46, i32 32 }, %struct.debugfs_reg32 { ptr @.str.47, i32 33 }, %struct.debugfs_reg32 { ptr @.str.48, i32 34 }, %struct.debugfs_reg32 { ptr @.str.49, i32 35 }, %struct.debugfs_reg32 { ptr @.str.50, i32 36 }, %struct.debugfs_reg32 { ptr @.str.51, i32 37 }, %struct.debugfs_reg32 { ptr @.str.52, i32 38 }, %struct.debugfs_reg32 { ptr @.str.53, i32 39 }, %struct.debugfs_reg32 { ptr @.str.54, i32 40 }, %struct.debugfs_reg32 { ptr @.str.55, i32 41 }, %struct.debugfs_reg32 { ptr @.str.56, i32 42 }, %struct.debugfs_reg32 { ptr @.str.57, i32 43 }, %struct.debugfs_reg32 { ptr @.str.58, i32 44 }, %struct.debugfs_reg32 { ptr @.str.59, i32 45 }, %struct.debugfs_reg32 { ptr @.str.60, i32 46 }, %struct.debugfs_reg32 { ptr @.str.61, i32 51 }, %struct.debugfs_reg32 { ptr @.str.62, i32 52 }, %struct.debugfs_reg32 { ptr @.str.63, i32 53 }, %struct.debugfs_reg32 { ptr @.str.64, i32 54 }, %struct.debugfs_reg32 { ptr @.str.65, i32 55 }, %struct.debugfs_reg32 { ptr @.str.66, i32 60 }, %struct.debugfs_reg32 { ptr @.str.67, i32 61 }, %struct.debugfs_reg32 { ptr @.str.68, i32 62 }, %struct.debugfs_reg32 { ptr @.str.69, i32 63 }, %struct.debugfs_reg32 { ptr @.str.70, i32 68 }, %struct.debugfs_reg32 { ptr @.str.71, i32 69 }, %struct.debugfs_reg32 { ptr @.str.72, i32 70 }, %struct.debugfs_reg32 { ptr @.str.73, i32 75 }, %struct.debugfs_reg32 { ptr @.str.74, i32 76 }, %struct.debugfs_reg32 { ptr @.str.75, i32 77 }, %struct.debugfs_reg32 { ptr @.str.76, i32 78 }, %struct.debugfs_reg32 { ptr @.str.77, i32 79 }, %struct.debugfs_reg32 { ptr @.str.78, i32 80 }, %struct.debugfs_reg32 { ptr @.str.79, i32 81 }, %struct.debugfs_reg32 { ptr @.str.80, i32 82 }, %struct.debugfs_reg32 { ptr @.str.81, i32 83 }, %struct.debugfs_reg32 { ptr @.str.82, i32 84 }, %struct.debugfs_reg32 { ptr @.str.83, i32 85 }, %struct.debugfs_reg32 { ptr @.str.84, i32 86 }, %struct.debugfs_reg32 { ptr @.str.85, i32 87 }, %struct.debugfs_reg32 { ptr @.str.86, i32 88 }, %struct.debugfs_reg32 { ptr @.str.87, i32 89 }, %struct.debugfs_reg32 { ptr @.str.88, i32 90 }, %struct.debugfs_reg32 { ptr @.str.89, i32 91 }, %struct.debugfs_reg32 { ptr @.str.90, i32 92 }, %struct.debugfs_reg32 { ptr @.str.91, i32 93 }, %struct.debugfs_reg32 { ptr @.str.92, i32 94 }, %struct.debugfs_reg32 { ptr @.str.93, i32 95 }], align 4
@.str.22 = private unnamed_addr constant [18 x i8] c"%-32s %#05x %08x\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"DSI_INCR_SYNCPT\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"DSI_INCR_SYNCPT_CONTROL\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"DSI_INCR_SYNCPT_ERROR\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"DSI_CTXSW\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"DSI_RD_DATA\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"DSI_WR_DATA\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"DSI_POWER_CONTROL\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"DSI_INT_ENABLE\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"DSI_INT_STATUS\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"DSI_INT_MASK\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"DSI_HOST_CONTROL\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"DSI_CONTROL\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"DSI_SOL_DELAY\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"DSI_MAX_THRESHOLD\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"DSI_TRIGGER\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"DSI_TX_CRC\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"DSI_STATUS\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"DSI_INIT_SEQ_CONTROL\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"DSI_INIT_SEQ_DATA_0\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"DSI_INIT_SEQ_DATA_1\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"DSI_INIT_SEQ_DATA_2\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"DSI_INIT_SEQ_DATA_3\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"DSI_INIT_SEQ_DATA_4\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"DSI_INIT_SEQ_DATA_5\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"DSI_INIT_SEQ_DATA_6\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"DSI_INIT_SEQ_DATA_7\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"DSI_PKT_SEQ_0_LO\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"DSI_PKT_SEQ_0_HI\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"DSI_PKT_SEQ_1_LO\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"DSI_PKT_SEQ_1_HI\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"DSI_PKT_SEQ_2_LO\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"DSI_PKT_SEQ_2_HI\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"DSI_PKT_SEQ_3_LO\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"DSI_PKT_SEQ_3_HI\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"DSI_PKT_SEQ_4_LO\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"DSI_PKT_SEQ_4_HI\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"DSI_PKT_SEQ_5_LO\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"DSI_PKT_SEQ_5_HI\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"DSI_DCS_CMDS\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"DSI_PKT_LEN_0_1\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"DSI_PKT_LEN_2_3\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"DSI_PKT_LEN_4_5\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"DSI_PKT_LEN_6_7\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"DSI_PHY_TIMING_0\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"DSI_PHY_TIMING_1\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"DSI_PHY_TIMING_2\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"DSI_BTA_TIMING\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"DSI_TIMEOUT_0\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"DSI_TIMEOUT_1\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"DSI_TO_TALLY\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"DSI_PAD_CONTROL_0\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"DSI_PAD_CONTROL_CD\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"DSI_PAD_CD_STATUS\00", align 1
@.str.76 = private unnamed_addr constant [23 x i8] c"DSI_VIDEO_MODE_CONTROL\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"DSI_PAD_CONTROL_1\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"DSI_PAD_CONTROL_2\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"DSI_PAD_CONTROL_3\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"DSI_PAD_CONTROL_4\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"DSI_GANGED_MODE_CONTROL\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"DSI_GANGED_MODE_START\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"DSI_GANGED_MODE_SIZE\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"DSI_RAW_DATA_BYTE_COUNT\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"DSI_ULTRA_LOW_POWER_CONTROL\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"DSI_INIT_SEQ_DATA_8\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"DSI_INIT_SEQ_DATA_9\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"DSI_INIT_SEQ_DATA_10\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"DSI_INIT_SEQ_DATA_11\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"DSI_INIT_SEQ_DATA_12\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"DSI_INIT_SEQ_DATA_13\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"DSI_INIT_SEQ_DATA_14\00", align 1
@.str.93 = private unnamed_addr constant [21 x i8] c"DSI_INIT_SEQ_DATA_15\00", align 1
@__tracepoint_dc_readl = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dc_writel = external dso_local global %struct.tracepoint, align 4
@.str.94 = private unnamed_addr constant [40 x i8] c"failed to disable MIPI calibration: %d\0A\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"failed to suspend: %d\0A\00", align 1
@.str.96 = private unnamed_addr constant [23 x i8] c"failed to prepare: %d\0A\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"failed to resume: %d\0A\00", align 1
@.str.98 = private unnamed_addr constant [39 x i8] c"failed to enable MIPI calibration: %d\0A\00", align 1
@.str.99 = private unnamed_addr constant [29 x i8] c"MIPI calibration failed: %d\0A\00", align 1
@.str.100 = private unnamed_addr constant [39 x i8] c"Non-burst video mode with sync pulses\0A\00", align 1
@pkt_seq_video_non_burst_sync_pulses = internal unnamed_addr constant [12 x i32] [i32 2022385160, i32 0, i32 2022385288, i32 0, i32 2022385416, i32 0, i32 948643592, i32 751816394, i32 2022385416, i32 0, i32 948643592, i32 751816394], align 4
@.str.101 = private unnamed_addr constant [39 x i8] c"Non-burst video mode with sync events\0A\00", align 1
@pkt_seq_video_non_burst_sync_events = internal unnamed_addr constant [12 x i32] [i32 1074339336, i32 0, i32 1074339592, i32 0, i32 1074339592, i32 0, i32 1060842248, i32 716, i32 1074339592, i32 0, i32 1060842248, i32 716], align 4
@.str.102 = private unnamed_addr constant [14 x i8] c"Command mode\0A\00", align 1
@pkt_seq_command_mode = internal unnamed_addr constant [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1073742795, i32 0, i32 0, i32 0, i32 1073742797, i32 0], align 4
@.str.103 = private unnamed_addr constant [29 x i8] c"mul: %u, div: %u, lanes: %u\0A\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"format: %u, vrefresh: %u\0A\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"bclk: %lu\0A\00", align 1
@.str.106 = private unnamed_addr constant [37 x i8] c"failed to validate D-PHY timing: %d\0A\00", align 1
@.str.107 = private unnamed_addr constant [32 x i8] c"failed to setup CRTC state: %d\0A\00", align 1
@.str.108 = private unnamed_addr constant [28 x i8] c"failed to assert reset: %d\0A\00", align 1
@.str.109 = private unnamed_addr constant [30 x i8] c"failed to get runtime PM: %d\0A\00", align 1
@.str.110 = private unnamed_addr constant [33 x i8] c"failed to enable VDD supply: %d\0A\00", align 1
@.str.111 = private unnamed_addr constant [29 x i8] c"cannot enable DSI clock: %d\0A\00", align 1
@.str.112 = private unnamed_addr constant [35 x i8] c"cannot enable low-power clock: %d\0A\00", align 1
@.str.113 = private unnamed_addr constant [25 x i8] c"cannot assert reset: %d\0A\00", align 1
@.str.114 = private unnamed_addr constant [40 x i8] c"failed to unregister host1x client: %d\0A\00", align 1
@switch.table.tegra_dsi_encoder_atomic_check = private unnamed_addr constant [4 x i32] [i32 3, i32 9, i32 3, i32 2], align 4
@switch.table.tegra_dsi_encoder_atomic_check.115 = private unnamed_addr constant [4 x i32] [i32 1, i32 4, i32 1, i32 1], align 4
@switch.table.tegra_dsi_encoder_atomic_check.116 = private unnamed_addr constant [4 x i32] [i32 3, i32 1, i32 2, i32 0], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dsi_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1256, i32 noundef 3520) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %115, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 2
  store ptr %3, ptr %7, align 8
  %8 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 1, i32 1
  store ptr %3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 15
  store i32 1920, ptr %9, align 8
  %10 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 16
  store i32 64, ptr %10, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #9, !annotation !8
  %13 = call i32 @__of_parse_phandle_with_args(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #9
  %14 = icmp ne i32 %13, 0
  %15 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  %16 = icmp eq ptr %15, null
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %6
  %19 = call ptr @of_find_device_by_node(ptr noundef nonnull %15) #9
  %20 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 18
  store ptr %21, ptr %22, align 4
  call void @of_node_put(ptr noundef nonnull %15) #9
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %115, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.tegra_dsi, ptr %23, i32 0, i32 17
  store ptr %4, ptr %26, align 8
  br label %27

27:                                               ; preds = %25, %6
  %28 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 1
  %29 = call i32 @tegra_output_probe(ptr noundef %28) #9
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %115, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 1, i32 10, i32 33
  store i8 1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 9
  store i32 1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 10
  store i32 0, ptr %34, align 8
  %35 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 11
  store i32 4, ptr %35, align 4
  %36 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 12
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %41 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 4
  store ptr %40, ptr %41, align 8
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = ptrtoint ptr %40 to i32
  br label %115

45:                                               ; preds = %39, %31
  %46 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #9
  %47 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 7
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #10
  %50 = load ptr, ptr %47, align 4
  %51 = ptrtoint ptr %50 to i32
  br label %115

52:                                               ; preds = %45
  %53 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  %54 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 6
  store ptr %53, ptr %54, align 8
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #10
  %57 = load ptr, ptr %54, align 8
  %58 = ptrtoint ptr %57 to i32
  br label %115

59:                                               ; preds = %52
  %60 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.5) #9
  %61 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 5
  store ptr %60, ptr %61, align 4
  %62 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #10
  %64 = load ptr, ptr %61, align 4
  %65 = ptrtoint ptr %64 to i32
  br label %115

66:                                               ; preds = %59
  %67 = call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.7) #9
  %68 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 14
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #10
  %71 = load ptr, ptr %68, align 4
  %72 = ptrtoint ptr %71 to i32
  br label %115

73:                                               ; preds = %66
  %74 = load ptr, ptr %47, align 4
  %75 = call ptr @clk_get_parent(ptr noundef %74) #9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %61, align 4
  %79 = call i32 @clk_set_parent(ptr noundef nonnull %75, ptr noundef %78) #9
  %80 = call i32 @llvm.smin.i32(i32 %79, i32 0) #9
  %81 = icmp slt i32 %79, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77, %73
  %83 = phi i32 [ %80, %77 ], [ -22, %73 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #10
  br label %115

84:                                               ; preds = %77
  %85 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %86 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %85) #9
  %87 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 3
  store ptr %86, ptr %87, align 4
  %88 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = ptrtoint ptr %86 to i32
  br label %115

91:                                               ; preds = %84
  %92 = load ptr, ptr %11, align 8
  %93 = call ptr @tegra_mipi_request(ptr noundef %3, ptr noundef %92) #9
  %94 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 12
  store ptr %93, ptr %94, align 8
  %95 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = ptrtoint ptr %93 to i32
  br label %115

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 13
  %100 = getelementptr inbounds %struct.tegra_dsi, ptr %4, i32 0, i32 13, i32 1
  store ptr @tegra_dsi_host_ops, ptr %100, align 4
  store ptr %3, ptr %99, align 4
  %101 = call i32 @mipi_dsi_host_register(ptr noundef %99) #9
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %101) #10
  br label %112

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %105, align 8
  call void @pm_runtime_enable(ptr noundef %3) #9
  store volatile ptr %4, ptr %4, align 4
  %106 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %106, align 4
  %107 = getelementptr inbounds %struct.host1x_client, ptr %4, i32 0, i32 4
  store ptr @dsi_client_ops, ptr %107, align 4
  %108 = getelementptr inbounds %struct.host1x_client, ptr %4, i32 0, i32 2
  store ptr %3, ptr %108, align 4
  call void @__host1x_client_init(ptr noundef nonnull %4, ptr noundef nonnull @tegra_dsi_probe.__key) #9
  %109 = call i32 @__host1x_client_register(ptr noundef nonnull %4) #9
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %109) #10
  call void @mipi_dsi_host_unregister(ptr noundef %99) #9
  br label %112

112:                                              ; preds = %111, %103
  %113 = phi i32 [ %101, %103 ], [ %109, %111 ]
  %114 = load ptr, ptr %94, align 8
  call void @tegra_mipi_free(ptr noundef %114) #9
  br label %115

115:                                              ; preds = %112, %104, %96, %89, %82, %70, %63, %56, %49, %43, %27, %18, %1
  %116 = phi i32 [ %51, %49 ], [ %58, %56 ], [ %65, %63 ], [ %72, %70 ], [ %83, %82 ], [ %90, %89 ], [ %97, %96 ], [ %113, %112 ], [ %44, %43 ], [ -12, %1 ], [ %29, %27 ], [ 0, %104 ], [ -517, %18 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dsi_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #9
  %5 = tail call i32 @host1x_client_unregister(ptr noundef %3) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.114, i32 noundef %5) #10
  br label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_dsi, ptr %3, i32 0, i32 1
  tail call void @tegra_output_remove(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.tegra_dsi, ptr %3, i32 0, i32 13
  tail call void @mipi_dsi_host_unregister(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.tegra_dsi, ptr %3, i32 0, i32 12
  %12 = load ptr, ptr %11, align 8
  tail call void @tegra_mipi_free(ptr noundef %12) #9
  br label %13

13:                                               ; preds = %8, %7
  %14 = phi i32 [ %5, %7 ], [ 0, %8 ]
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_mipi_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_mipi_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dsi_host_attach(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 -16
  store i32 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -12
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr i8, ptr %0, i32 -8
  store i32 %10, ptr %11, align 4
  %12 = getelementptr i8, ptr %0, i32 32
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.tegra_dsi, ptr %13, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @clk_get_parent(ptr noundef %17) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %0, i32 -32
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @clk_set_parent(ptr noundef nonnull %18, ptr noundef %22) #9
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 0) #9
  %25 = icmp slt i32 %23, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20, %15
  %27 = phi i32 [ %24, %20 ], [ -22, %15 ]
  %28 = getelementptr i8, ptr %0, i32 -44
  %29 = load ptr, ptr %28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.13, i32 noundef %27) #10
  br label %49

30:                                               ; preds = %20, %2
  %31 = getelementptr i8, ptr %0, i32 28
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1, i32 25
  %36 = load ptr, ptr %35, align 8
  %37 = tail call ptr @of_drm_find_panel(ptr noundef %36) #9
  %38 = getelementptr i8, ptr %0, i32 -1112
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store ptr null, ptr %38, align 4
  br label %49

41:                                               ; preds = %34
  %42 = icmp eq ptr %37, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %41
  %44 = getelementptr i8, ptr %0, i32 -1012
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef nonnull %45) #9
  br label %49

49:                                               ; preds = %47, %43, %41, %40, %30, %26
  %50 = phi i32 [ %27, %26 ], [ 0, %41 ], [ 0, %43 ], [ 0, %47 ], [ 0, %30 ], [ 0, %40 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dsi_host_detach(ptr nocapture noundef %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -1112
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %4, align 4
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  store ptr null, ptr %3, align 4
  %11 = getelementptr i8, ptr %0, i32 -1012
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef nonnull %12) #9
  br label %16

16:                                               ; preds = %14, %10, %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dsi_host_transfer(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.mipi_dsi_packet, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %4 = call i32 @mipi_dsi_create_packet(ptr noundef nonnull %3, ptr noundef %1) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %530, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %3, align 4
  %9 = getelementptr i8, ptr %0, i32 20
  %10 = load i32, ptr %9, align 8
  %11 = shl i32 %10, 2
  %12 = icmp ugt i32 %8, %11
  br i1 %12, label %530, label %13

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %0, i32 -40
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 84
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %18 = getelementptr i8, ptr %0, i32 -44
  %19 = load ptr, ptr %18, align 8
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %13
  %23 = tail call ptr @llvm.thread.pointer() #9
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %25, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %34 = call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %19, i32 noundef 21, i32 noundef %17) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %35

35:                                               ; preds = %33, %22, %13
  %36 = and i32 %17, 768
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %18, align 8
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = tail call ptr @llvm.thread.pointer() #9
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 5
  %47 = getelementptr i32, ptr @__cpu_online_mask, i32 %46
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %45, 31
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %42
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %54 = call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %39, i32 noundef 15, i32 noundef 2097152) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %55

55:                                               ; preds = %53, %42, %38
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %56 = load ptr, ptr %14, align 4
  %57 = getelementptr i8, ptr %56, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 2097152) #9, !srcloc !16
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #9
  br label %58

58:                                               ; preds = %55, %35
  %59 = load ptr, ptr %14, align 4
  %60 = getelementptr i8, ptr %59, i32 44
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %62 = load ptr, ptr %18, align 8
  %63 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = tail call ptr @llvm.thread.pointer() #9
  %67 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = lshr i32 %68, 5
  %70 = getelementptr i32, ptr @__cpu_online_mask, i32 %69
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %68, 31
  %73 = shl nuw i32 1, %72
  %74 = and i32 %73, %71
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %65
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %77 = call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %62, i32 noundef 11, i32 noundef %61) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %78 = load ptr, ptr %18, align 8
  br label %79

79:                                               ; preds = %76, %65, %58
  %80 = phi ptr [ %62, %58 ], [ %62, %65 ], [ %78, %76 ]
  %81 = or i32 %61, 1
  %82 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = tail call ptr @llvm.thread.pointer() #9
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %87 = load i32, ptr %86, align 8
  %88 = lshr i32 %87, 5
  %89 = getelementptr i32, ptr @__cpu_online_mask, i32 %88
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %87, 31
  %92 = shl nuw i32 1, %91
  %93 = and i32 %92, %90
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %84
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %96 = call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %80, i32 noundef 11, i32 noundef %81) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %97

97:                                               ; preds = %95, %84, %79
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %98 = load ptr, ptr %14, align 4
  %99 = getelementptr i8, ptr %98, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %81) #9, !srcloc !16
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #9
  %100 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 2
  %101 = load i16, ptr %100, align 2
  %102 = and i16 %101, 2
  %103 = icmp eq i16 %102, 0
  %104 = select i1 %103, i32 1056803, i32 1056771
  %105 = load i32, ptr %3, align 4
  %106 = getelementptr i8, ptr %0, i32 24
  %107 = load i32, ptr %106, align 4
  %108 = shl i32 %107, 2
  %109 = icmp ugt i32 %105, %108
  %110 = or i32 %104, 16
  %111 = select i1 %109, i32 %110, i32 %104
  %112 = load ptr, ptr %18, align 8
  %113 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %97
  %116 = tail call ptr @llvm.thread.pointer() #9
  %117 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %118 = load i32, ptr %117, align 8
  %119 = lshr i32 %118, 5
  %120 = getelementptr i32, ptr @__cpu_online_mask, i32 %119
  %121 = load volatile i32, ptr %120, align 4
  %122 = and i32 %118, 31
  %123 = shl nuw i32 1, %122
  %124 = and i32 %123, %121
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %115
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %127 = call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %112, i32 noundef 15, i32 noundef %111) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %128

128:                                              ; preds = %126, %115, %97
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %129 = load ptr, ptr %14, align 4
  %130 = getelementptr i8, ptr %129, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %111) #9, !srcloc !16
  %131 = load i16, ptr %100, align 2
  %132 = and i16 %131, 1
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 6
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %184, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 5
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %184, label %142

142:                                              ; preds = %138, %128
  %143 = load ptr, ptr %14, align 4
  %144 = getelementptr i8, ptr %143, i32 60
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %146 = load ptr, ptr %18, align 8
  %147 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %142
  %150 = tail call ptr @llvm.thread.pointer() #9
  %151 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %152 = load i32, ptr %151, align 8
  %153 = lshr i32 %152, 5
  %154 = getelementptr i32, ptr @__cpu_online_mask, i32 %153
  %155 = load volatile i32, ptr %154, align 4
  %156 = and i32 %152, 31
  %157 = shl nuw i32 1, %156
  %158 = and i32 %157, %155
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %149
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %161 = call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %146, i32 noundef 15, i32 noundef %145) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %162 = load ptr, ptr %18, align 8
  br label %163

163:                                              ; preds = %160, %149, %142
  %164 = phi ptr [ %146, %142 ], [ %146, %149 ], [ %162, %160 ]
  %165 = or i32 %145, 4
  %166 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %163
  %169 = tail call ptr @llvm.thread.pointer() #9
  %170 = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 2
  %171 = load i32, ptr %170, align 8
  %172 = lshr i32 %171, 5
  %173 = getelementptr i32, ptr @__cpu_online_mask, i32 %172
  %174 = load volatile i32, ptr %173, align 4
  %175 = and i32 %171, 31
  %176 = shl nuw i32 1, %175
  %177 = and i32 %176, %174
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %168
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %180 = call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %164, i32 noundef 15, i32 noundef %165) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %181

181:                                              ; preds = %179, %168, %163
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %182 = load ptr, ptr %14, align 4
  %183 = getelementptr i8, ptr %182, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %165) #9, !srcloc !16
  br label %184

184:                                              ; preds = %181, %138, %134
  %185 = load ptr, ptr %18, align 8
  %186 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %184
  %189 = tail call ptr @llvm.thread.pointer() #9
  %190 = getelementptr inbounds %struct.thread_info, ptr %189, i32 0, i32 2
  %191 = load i32, ptr %190, align 8
  %192 = lshr i32 %191, 5
  %193 = getelementptr i32, ptr @__cpu_online_mask, i32 %192
  %194 = load volatile i32, ptr %193, align 4
  %195 = and i32 %191, 31
  %196 = shl nuw i32 1, %195
  %197 = and i32 %196, %194
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %188
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %200 = call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %185, i32 noundef 16, i32 noundef 1) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %201

201:                                              ; preds = %199, %188, %184
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %202 = load ptr, ptr %14, align 4
  %203 = getelementptr i8, ptr %202, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 1) #9, !srcloc !16
  %204 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %3, i32 0, i32 1, i32 2
  %205 = load i8, ptr %204, align 2
  %206 = zext i8 %205 to i32
  %207 = shl nuw nsw i32 %206, 16
  %208 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %3, i32 0, i32 1, i32 1
  %209 = load i8, ptr %208, align 1
  %210 = zext i8 %209 to i32
  %211 = shl nuw nsw i32 %210, 8
  %212 = or i32 %211, %207
  %213 = load i8, ptr %7, align 4
  %214 = zext i8 %213 to i32
  %215 = or i32 %212, %214
  %216 = load ptr, ptr %18, align 8
  %217 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %232

219:                                              ; preds = %201
  %220 = tail call ptr @llvm.thread.pointer() #9
  %221 = getelementptr inbounds %struct.thread_info, ptr %220, i32 0, i32 2
  %222 = load i32, ptr %221, align 8
  %223 = lshr i32 %222, 5
  %224 = getelementptr i32, ptr @__cpu_online_mask, i32 %223
  %225 = load volatile i32, ptr %224, align 4
  %226 = and i32 %222, 31
  %227 = shl nuw i32 1, %226
  %228 = and i32 %227, %225
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %219
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %231 = call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %216, i32 noundef 10, i32 noundef %215) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %232

232:                                              ; preds = %230, %219, %201
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %233 = load ptr, ptr %14, align 4
  %234 = getelementptr i8, ptr %233, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %215) #9, !srcloc !16
  %235 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %3, i32 0, i32 2
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %293, label %238

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %3, i32 0, i32 3
  %240 = load ptr, ptr %239, align 4
  br label %241

241:                                              ; preds = %288, %238
  %242 = phi i32 [ 0, %238 ], [ %291, %288 ]
  %243 = getelementptr i8, ptr %240, i32 %242
  %244 = load i8, ptr %243, align 1
  %245 = zext i8 %244 to i32
  %246 = or i32 %242, 1
  %247 = icmp ult i32 %246, %236
  br i1 %247, label %248, label %270

248:                                              ; preds = %241
  %249 = getelementptr i8, ptr %240, i32 %246
  %250 = load i8, ptr %249, align 1
  %251 = zext i8 %250 to i32
  %252 = shl nuw nsw i32 %251, 8
  %253 = or i32 %252, %245
  %254 = or i32 %242, 2
  %255 = icmp ult i32 %254, %236
  br i1 %255, label %256, label %270

256:                                              ; preds = %248
  %257 = getelementptr i8, ptr %240, i32 %254
  %258 = load i8, ptr %257, align 1
  %259 = zext i8 %258 to i32
  %260 = shl nuw nsw i32 %259, 16
  %261 = or i32 %260, %253
  %262 = or i32 %242, 3
  %263 = icmp ult i32 %262, %236
  br i1 %263, label %264, label %270

264:                                              ; preds = %256
  %265 = getelementptr i8, ptr %240, i32 %262
  %266 = load i8, ptr %265, align 1
  %267 = zext i8 %266 to i32
  %268 = shl nuw i32 %267, 24
  %269 = or i32 %268, %261
  br label %270

270:                                              ; preds = %264, %256, %248, %241
  %271 = phi i32 [ %245, %241 ], [ %253, %248 ], [ %261, %256 ], [ %269, %264 ]
  %272 = load ptr, ptr %18, align 8
  %273 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %288

275:                                              ; preds = %270
  %276 = tail call ptr @llvm.thread.pointer() #9
  %277 = getelementptr inbounds %struct.thread_info, ptr %276, i32 0, i32 2
  %278 = load i32, ptr %277, align 8
  %279 = lshr i32 %278, 5
  %280 = getelementptr i32, ptr @__cpu_online_mask, i32 %279
  %281 = load volatile i32, ptr %280, align 4
  %282 = and i32 %278, 31
  %283 = shl nuw i32 1, %282
  %284 = and i32 %283, %281
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %275
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %287 = call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %272, i32 noundef 10, i32 noundef %271) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %288

288:                                              ; preds = %286, %275, %270
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %289 = load ptr, ptr %14, align 4
  %290 = getelementptr i8, ptr %289, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 %271) #9, !srcloc !16
  %291 = add i32 %242, 4
  %292 = icmp ult i32 %291, %236
  br i1 %292, label %241, label %293

293:                                              ; preds = %288, %232
  %294 = load ptr, ptr %18, align 8
  %295 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %310

297:                                              ; preds = %293
  %298 = tail call ptr @llvm.thread.pointer() #9
  %299 = getelementptr inbounds %struct.thread_info, ptr %298, i32 0, i32 2
  %300 = load i32, ptr %299, align 8
  %301 = lshr i32 %300, 5
  %302 = getelementptr i32, ptr @__cpu_online_mask, i32 %301
  %303 = load volatile i32, ptr %302, align 4
  %304 = and i32 %300, 31
  %305 = shl nuw i32 1, %304
  %306 = and i32 %305, %303
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %297
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %309 = call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %294, i32 noundef 19, i32 noundef 2) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %310

310:                                              ; preds = %308, %297, %293
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %311 = load ptr, ptr %14, align 4
  %312 = getelementptr i8, ptr %311, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %312, i32 2) #9, !srcloc !16
  %313 = load volatile i32, ptr @jiffies, align 64
  %314 = sub i32 -25, %313
  %315 = load volatile i32, ptr @jiffies, align 64
  %316 = add i32 %314, %315
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %345

318:                                              ; preds = %341, %310
  %319 = load ptr, ptr %14, align 4
  %320 = getelementptr i8, ptr %319, i32 76
  %321 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %320) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %322 = load ptr, ptr %18, align 8
  %323 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %338

325:                                              ; preds = %318
  %326 = tail call ptr @llvm.thread.pointer() #9
  %327 = getelementptr inbounds %struct.thread_info, ptr %326, i32 0, i32 2
  %328 = load i32, ptr %327, align 8
  %329 = lshr i32 %328, 5
  %330 = getelementptr i32, ptr @__cpu_online_mask, i32 %329
  %331 = load volatile i32, ptr %330, align 4
  %332 = and i32 %328, 31
  %333 = shl nuw i32 1, %332
  %334 = and i32 %333, %331
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %338, label %336

336:                                              ; preds = %325
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %337 = call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %322, i32 noundef 19, i32 noundef %321) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %338

338:                                              ; preds = %336, %325, %318
  %339 = and i32 %321, 2
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %346, label %341

341:                                              ; preds = %338
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %342 = load volatile i32, ptr @jiffies, align 64
  %343 = add i32 %342, %314
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %318, label %345

345:                                              ; preds = %341, %310
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17) #9
  br label %530

346:                                              ; preds = %338
  %347 = load i16, ptr %100, align 2
  %348 = and i16 %347, 1
  %349 = icmp eq i16 %348, 0
  br i1 %349, label %350, label %358

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 6
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %527, label %354

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 5
  %356 = load i32, ptr %355, align 4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %527, label %358

358:                                              ; preds = %354, %346
  %359 = load volatile i32, ptr @jiffies, align 64
  %360 = sub i32 -25, %359
  %361 = load volatile i32, ptr @jiffies, align 64
  %362 = add i32 %360, %361
  %363 = icmp slt i32 %362, 0
  br i1 %363, label %364, label %391

364:                                              ; preds = %387, %358
  %365 = load ptr, ptr %14, align 4
  %366 = getelementptr i8, ptr %365, i32 84
  %367 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %366) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %368 = load ptr, ptr %18, align 8
  %369 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %370 = icmp sgt i32 %369, 0
  br i1 %370, label %371, label %384

371:                                              ; preds = %364
  %372 = tail call ptr @llvm.thread.pointer() #9
  %373 = getelementptr inbounds %struct.thread_info, ptr %372, i32 0, i32 2
  %374 = load i32, ptr %373, align 8
  %375 = lshr i32 %374, 5
  %376 = getelementptr i32, ptr @__cpu_online_mask, i32 %375
  %377 = load volatile i32, ptr %376, align 4
  %378 = and i32 %374, 31
  %379 = shl nuw i32 1, %378
  %380 = and i32 %379, %377
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %384, label %382

382:                                              ; preds = %371
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %383 = call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %368, i32 noundef 21, i32 noundef %367) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %384

384:                                              ; preds = %382, %371, %364
  %385 = and i32 %367, 31
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %392

387:                                              ; preds = %384
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %388 = load volatile i32, ptr @jiffies, align 64
  %389 = add i32 %388, %360
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %364, label %391

391:                                              ; preds = %387, %358
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18) #9
  br label %530

392:                                              ; preds = %384
  %393 = load ptr, ptr %14, align 4
  %394 = getelementptr i8, ptr %393, i32 36
  %395 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %394) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %396 = load ptr, ptr %18, align 8
  %397 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %398 = icmp sgt i32 %397, 0
  br i1 %398, label %399, label %412

399:                                              ; preds = %392
  %400 = tail call ptr @llvm.thread.pointer() #9
  %401 = getelementptr inbounds %struct.thread_info, ptr %400, i32 0, i32 2
  %402 = load i32, ptr %401, align 8
  %403 = lshr i32 %402, 5
  %404 = getelementptr i32, ptr @__cpu_online_mask, i32 %403
  %405 = load volatile i32, ptr %404, align 4
  %406 = and i32 %402, 31
  %407 = shl nuw i32 1, %406
  %408 = and i32 %407, %405
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %412, label %410

410:                                              ; preds = %399
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %411 = call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %396, i32 noundef 9, i32 noundef %395) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %412

412:                                              ; preds = %410, %399, %392
  switch i32 %395, label %413 [
    i32 132, label %415
    i32 135, label %415
  ]

413:                                              ; preds = %412
  %414 = load ptr, ptr %18, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %414, ptr noundef nonnull @.str.14, i32 noundef %395) #10
  br label %415

415:                                              ; preds = %413, %412, %412
  %416 = icmp ugt i32 %385, 1
  br i1 %416, label %417, label %530

417:                                              ; preds = %415
  %418 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 6
  %419 = load ptr, ptr %418, align 4
  %420 = load ptr, ptr %14, align 4
  %421 = getelementptr i8, ptr %420, i32 36
  %422 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %421) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %423 = load ptr, ptr %18, align 8
  %424 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %425 = icmp sgt i32 %424, 0
  br i1 %425, label %426, label %439

426:                                              ; preds = %417
  %427 = tail call ptr @llvm.thread.pointer() #9
  %428 = getelementptr inbounds %struct.thread_info, ptr %427, i32 0, i32 2
  %429 = load i32, ptr %428, align 8
  %430 = lshr i32 %429, 5
  %431 = getelementptr i32, ptr @__cpu_online_mask, i32 %430
  %432 = load volatile i32, ptr %431, align 4
  %433 = and i32 %429, 31
  %434 = shl nuw i32 1, %433
  %435 = and i32 %434, %432
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %439, label %437

437:                                              ; preds = %426
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %438 = call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %423, i32 noundef 9, i32 noundef %422) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %439

439:                                              ; preds = %437, %426, %417
  %440 = and i32 %422, 63
  switch i32 %440, label %524 [
    i32 2, label %456
    i32 33, label %441
    i32 34, label %444
    i32 28, label %450
    i32 26, label %453
  ]

441:                                              ; preds = %439
  %442 = lshr i32 %422, 8
  %443 = trunc i32 %442 to i8
  store i8 %443, ptr %419, align 1
  br label %456

444:                                              ; preds = %439
  %445 = lshr i32 %422, 8
  %446 = trunc i32 %445 to i8
  store i8 %446, ptr %419, align 1
  %447 = lshr i32 %422, 16
  %448 = trunc i32 %447 to i8
  %449 = getelementptr i8, ptr %419, i32 1
  store i8 %448, ptr %449, align 1
  br label %456

450:                                              ; preds = %439
  %451 = lshr i32 %422, 8
  %452 = and i32 %451, 65535
  br label %456

453:                                              ; preds = %439
  %454 = lshr i32 %422, 8
  %455 = and i32 %454, 65535
  br label %456

456:                                              ; preds = %453, %450, %444, %441, %439
  %457 = phi i32 [ %455, %453 ], [ %452, %450 ], [ 2, %444 ], [ 1, %441 ], [ 0, %439 ]
  %458 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 5
  %459 = load i32, ptr %458, align 4
  %460 = call i32 @llvm.umin.i32(i32 %457, i32 %459) #9
  %461 = load ptr, ptr %418, align 4
  %462 = icmp ne ptr %461, null
  %463 = icmp ne i32 %460, 0
  %464 = select i1 %462, i1 %463, i1 false
  br i1 %464, label %465, label %530

465:                                              ; preds = %456
  %466 = add nsw i32 %385, -2
  br label %467

467:                                              ; preds = %520, %465
  %468 = phi ptr [ %523, %520 ], [ %461, %465 ]
  %469 = phi i32 [ %521, %520 ], [ 0, %465 ]
  %470 = phi i32 [ %522, %520 ], [ 0, %465 ]
  %471 = getelementptr i8, ptr %468, i32 %470
  %472 = load ptr, ptr %14, align 4
  %473 = getelementptr i8, ptr %472, i32 36
  %474 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %473) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %475 = load ptr, ptr %18, align 8
  %476 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %477 = icmp sgt i32 %476, 0
  br i1 %477, label %478, label %491

478:                                              ; preds = %467
  %479 = tail call ptr @llvm.thread.pointer() #9
  %480 = getelementptr inbounds %struct.thread_info, ptr %479, i32 0, i32 2
  %481 = load i32, ptr %480, align 8
  %482 = lshr i32 %481, 5
  %483 = getelementptr i32, ptr @__cpu_online_mask, i32 %482
  %484 = load volatile i32, ptr %483, align 4
  %485 = and i32 %481, 31
  %486 = shl nuw i32 1, %485
  %487 = and i32 %486, %484
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %491, label %489

489:                                              ; preds = %478
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %490 = call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %475, i32 noundef 9, i32 noundef %474) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %491

491:                                              ; preds = %489, %478, %467
  %492 = load i32, ptr %458, align 4
  %493 = icmp ult i32 %470, %492
  br i1 %493, label %494, label %518

494:                                              ; preds = %491
  %495 = trunc i32 %474 to i8
  %496 = getelementptr i8, ptr %471, i32 %470
  store i8 %495, ptr %496, align 1
  %497 = or i32 %470, 1
  %498 = load i32, ptr %458, align 4
  %499 = icmp ult i32 %497, %498
  br i1 %499, label %500, label %518

500:                                              ; preds = %494
  %501 = lshr i32 %474, 8
  %502 = trunc i32 %501 to i8
  %503 = getelementptr i8, ptr %471, i32 %497
  store i8 %502, ptr %503, align 1
  %504 = or i32 %470, 2
  %505 = load i32, ptr %458, align 4
  %506 = icmp ult i32 %504, %505
  br i1 %506, label %507, label %518

507:                                              ; preds = %500
  %508 = lshr i32 %474, 16
  %509 = trunc i32 %508 to i8
  %510 = getelementptr i8, ptr %471, i32 %504
  store i8 %509, ptr %510, align 1
  %511 = or i32 %470, 3
  %512 = load i32, ptr %458, align 4
  %513 = icmp ult i32 %511, %512
  br i1 %513, label %514, label %518

514:                                              ; preds = %507
  %515 = lshr i32 %474, 24
  %516 = trunc i32 %515 to i8
  %517 = getelementptr i8, ptr %471, i32 %511
  store i8 %516, ptr %517, align 1
  br label %518

518:                                              ; preds = %514, %507, %500, %494, %491
  %519 = icmp eq i32 %469, %466
  br i1 %519, label %530, label %520

520:                                              ; preds = %518
  %521 = add nuw i32 %469, 1
  %522 = add i32 %470, 4
  %523 = load ptr, ptr %418, align 4
  br label %467

524:                                              ; preds = %439
  %525 = load ptr, ptr %18, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %525, ptr noundef nonnull @.str.19, i32 noundef %440) #10
  %526 = load ptr, ptr %18, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %526, ptr noundef nonnull @.str.15, i32 noundef -71) #10
  br label %530

527:                                              ; preds = %354, %350
  %528 = load i32, ptr %235, align 4
  %529 = add i32 %528, 4
  br label %530

530:                                              ; preds = %527, %524, %518, %456, %415, %391, %345, %6, %2
  %531 = phi i32 [ %4, %2 ], [ -28, %6 ], [ %385, %524 ], [ 1, %415 ], [ %529, %527 ], [ -110, %345 ], [ -110, %391 ], [ %460, %456 ], [ %460, %518 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %531
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_create_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dsi_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dsi_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dsi_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 1, i32 1
  store ptr %11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 1, i32 10
  %15 = tail call i32 @drm_connector_init(ptr noundef %9, ptr noundef %14, ptr noundef nonnull @tegra_dsi_connector_funcs, i32 noundef 16) #9
  %16 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 1, i32 10, i32 35
  store ptr @tegra_dsi_connector_helper_funcs, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 1, i32 10, i32 34
  store i32 3, ptr %17, align 8
  %18 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 1, i32 9
  %19 = tail call i32 @drm_simple_encoder_init(ptr noundef %9, ptr noundef %18, i32 noundef 6) #9
  %20 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 1, i32 9, i32 11
  store ptr @tegra_dsi_encoder_helper_funcs, ptr %20, align 4
  %21 = tail call i32 @drm_connector_attach_encoder(ptr noundef %14, ptr noundef %18) #9
  %22 = tail call i32 @drm_connector_register(ptr noundef %14) #9
  %23 = tail call i32 @tegra_output_init(ptr noundef %9, ptr noundef %12) #9
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.20, i32 noundef %23) #10
  br label %28

28:                                               ; preds = %25, %5
  %29 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 1, i32 9, i32 6
  store i32 3, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dsi_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 1
  tail call void @tegra_output_exit(ptr noundef %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dsi_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @reset_control_assert(ptr noundef nonnull %5) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.108, i32 noundef %8) #10
  br label %20

11:                                               ; preds = %7, %1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %12 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  tail call void @clk_disable(ptr noundef %13) #9
  tail call void @clk_unprepare(ptr noundef %13) #9
  %14 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #9
  tail call void @clk_unprepare(ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @regulator_disable(ptr noundef %17) #9
  %19 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #9
  br label %20

20:                                               ; preds = %11, %10
  %21 = phi i32 [ %8, %10 ], [ 0, %11 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dsi_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #9, !srcloc !18
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #9, !srcloc !19
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  br label %12

12:                                               ; preds = %11, %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.109, i32 noundef %4) #10
  br label %64

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regulator_enable(ptr noundef %15) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.110, i32 noundef %16) #10
  br label %61

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @clk_prepare(ptr noundef %21) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = tail call i32 @clk_enable(ptr noundef %21) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef %21) #9
  br label %28

28:                                               ; preds = %27, %19
  %29 = phi i32 [ %22, %19 ], [ %25, %27 ]
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.111, i32 noundef %29) #10
  br label %57

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 6
  %34 = load ptr, ptr %33, align 8
  %35 = tail call i32 @clk_prepare(ptr noundef %34) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = tail call i32 @clk_enable(ptr noundef %34) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  tail call void @clk_unprepare(ptr noundef %34) #9
  br label %41

41:                                               ; preds = %40, %32
  %42 = phi i32 [ %35, %32 ], [ %38, %40 ]
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.112, i32 noundef %42) #10
  br label %54

45:                                               ; preds = %41, %37
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %46 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 4
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @reset_control_deassert(ptr noundef nonnull %47) #9
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.113, i32 noundef %50) #10
  %53 = load ptr, ptr %33, align 8
  tail call void @clk_disable(ptr noundef %53) #9
  tail call void @clk_unprepare(ptr noundef %53) #9
  br label %54

54:                                               ; preds = %52, %44
  %55 = phi i32 [ %42, %44 ], [ %50, %52 ]
  %56 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %56) #9
  tail call void @clk_unprepare(ptr noundef %56) #9
  br label %57

57:                                               ; preds = %54, %31
  %58 = phi i32 [ %29, %31 ], [ %55, %54 ]
  %59 = load ptr, ptr %14, align 4
  %60 = tail call i32 @regulator_disable(ptr noundef %59) #9
  br label %61

61:                                               ; preds = %57, %18
  %62 = phi i32 [ %16, %18 ], [ %58, %57 ]
  %63 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #9
  br label %64

64:                                               ; preds = %61, %49, %45, %12
  %65 = phi i32 [ %4, %12 ], [ %62, %61 ], [ 0, %49 ], [ 0, %45 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_dsi_connector_reset(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 236) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 52
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  tail call void @__drm_atomic_helper_connector_destroy_state(ptr noundef nonnull %7) #9
  %10 = load ptr, ptr %6, align 8
  tail call void @kfree(ptr noundef %10) #9
  br label %11

11:                                               ; preds = %9, %5
  tail call void @__drm_atomic_helper_connector_reset(ptr noundef %0, ptr noundef nonnull %3) #9
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_connector_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dsi_late_register(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 51
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @kmemdup(ptr noundef nonnull @debugfs_files, i32 noundef 16, i32 noundef 3264) #9
  %8 = getelementptr i8, ptr %0, i32 992
  store ptr %7, ptr %8, align 8
  %9 = icmp eq ptr %7, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -208
  %12 = getelementptr inbounds %struct.drm_info_list, ptr %7, i32 0, i32 3
  store ptr %11, ptr %12, align 4
  %13 = load ptr, ptr %8, align 8
  tail call void @drm_debugfs_create_files(ptr noundef %13, i32 noundef 1, ptr noundef %6, ptr noundef %4) #9
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i32 [ 0, %10 ], [ -12, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_dsi_early_unregister(ptr nocapture noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 992
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @drm_debugfs_remove_files(ptr noundef %3, i32 noundef 1, ptr noundef %6) #9
  %8 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %8) #9
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_connector_destroy(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_dsi_connector_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 52
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef 236, i32 noundef 3264) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @__drm_atomic_helper_connector_duplicate_state(ptr noundef %0, ptr noundef nonnull %4) #9
  br label %7

7:                                                ; preds = %6, %1
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dsi_show_regs(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_dsi, ptr %8, i32 0, i32 1, i32 9, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.drm_minor, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void @drm_modeset_lock_all(ptr noundef %13) #9
  %14 = icmp eq ptr %10, null
  br i1 %14, label %53, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 22
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 2
  %19 = load i8, ptr %18, align 1, !range !21
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tegra_dsi, ptr %8, i32 0, i32 3
  %23 = getelementptr inbounds %struct.tegra_dsi, ptr %8, i32 0, i32 2
  br label %24

24:                                               ; preds = %50, %21
  %25 = phi i32 [ 0, %21 ], [ %51, %50 ]
  %26 = getelementptr [71 x %struct.debugfs_reg32], ptr @tegra_dsi_regs, i32 0, i32 %25
  %27 = getelementptr [71 x %struct.debugfs_reg32], ptr @tegra_dsi_regs, i32 0, i32 %25, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = load ptr, ptr %22, align 4
  %31 = shl i32 %28, 2
  %32 = getelementptr i8, ptr %30, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %34 = load ptr, ptr %23, align 8
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %24
  %38 = tail call ptr @llvm.thread.pointer() #9
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %49 = tail call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %34, i32 noundef %28, i32 noundef %33) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %50

50:                                               ; preds = %48, %37, %24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %29, i32 noundef %28, i32 noundef %33) #9
  %51 = add nuw nsw i32 %25, 1
  %52 = icmp eq i32 %51, 71
  br i1 %52, label %53, label %24

53:                                               ; preds = %50, %15, %2
  %54 = phi i32 [ -16, %15 ], [ -16, %2 ], [ 0, %50 ]
  tail call void @drm_modeset_unlock_all(ptr noundef %13) #9
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_debugfs_remove_files(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_connector_get_modes(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra_dsi_connector_mode_valid(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #7 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_dsi_encoder_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -104
  %6 = select i1 %4, ptr null, ptr %5
  %7 = getelementptr i8, ptr %0, i32 -132
  %8 = getelementptr i8, ptr %0, i32 -24
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @drm_panel_disable(ptr noundef nonnull %9) #9
  br label %13

13:                                               ; preds = %11, %1
  br label %14

14:                                               ; preds = %56, %13
  %15 = phi ptr [ %60, %56 ], [ %7, %13 ]
  %16 = getelementptr inbounds %struct.tegra_dsi, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 64
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %20 = getelementptr inbounds %struct.tegra_dsi, ptr %15, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %14
  %25 = tail call ptr @llvm.thread.pointer() #9
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %36 = tail call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %21, i32 noundef 16, i32 noundef %19) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %37 = load ptr, ptr %20, align 8
  br label %38

38:                                               ; preds = %35, %24, %14
  %39 = phi ptr [ %21, %14 ], [ %21, %24 ], [ %37, %35 ]
  %40 = and i32 %19, -3
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = tail call ptr @llvm.thread.pointer() #9
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 5
  %48 = getelementptr i32, ptr @__cpu_online_mask, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %46, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %55 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %39, i32 noundef 16, i32 noundef %40) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %56

56:                                               ; preds = %54, %43, %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %57 = load ptr, ptr %16, align 4
  %58 = getelementptr i8, ptr %57, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %40) #9, !srcloc !16
  %59 = getelementptr inbounds %struct.tegra_dsi, ptr %15, i32 0, i32 18
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %14

62:                                               ; preds = %56
  %63 = icmp eq ptr %6, null
  br i1 %63, label %108, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.tegra_dc, ptr %6, i32 0, i32 8
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr i8, ptr %66, i32 4104
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %69 = getelementptr inbounds %struct.tegra_dc, ptr %6, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %64
  %74 = tail call ptr @llvm.thread.pointer() #9
  %75 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = lshr i32 %76, 5
  %78 = getelementptr i32, ptr @__cpu_online_mask, i32 %77
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %76, 31
  %81 = shl nuw i32 1, %80
  %82 = and i32 %81, %79
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %73
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %85 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %70, i32 noundef 1026, i32 noundef %68) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %86 = load ptr, ptr %69, align 4
  br label %87

87:                                               ; preds = %84, %73, %64
  %88 = phi ptr [ %70, %64 ], [ %70, %73 ], [ %86, %84 ]
  %89 = and i32 %68, -536870913
  %90 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = tail call ptr @llvm.thread.pointer() #9
  %94 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 5
  %97 = getelementptr i32, ptr @__cpu_online_mask, i32 %96
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %95, 31
  %100 = shl nuw i32 1, %99
  %101 = and i32 %100, %98
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %92
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %104 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %88, i32 noundef 1026, i32 noundef %89) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  br label %105

105:                                              ; preds = %103, %92, %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %106 = load ptr, ptr %65, align 8
  %107 = getelementptr i8, ptr %106, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %89) #9, !srcloc !16
  tail call void @tegra_dc_commit(ptr noundef nonnull %6) #9
  br label %108

108:                                              ; preds = %105, %62
  %109 = load volatile i32, ptr @jiffies, align 64
  %110 = sub i32 -10, %109
  %111 = load volatile i32, ptr @jiffies, align 64
  %112 = add i32 %110, %111
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %144

114:                                              ; preds = %108
  %115 = getelementptr i8, ptr %0, i32 1048
  %116 = getelementptr i8, ptr %0, i32 1044
  br label %117

117:                                              ; preds = %140, %114
  %118 = load ptr, ptr %115, align 4
  %119 = getelementptr i8, ptr %118, i32 84
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %121 = load ptr, ptr %116, align 8
  %122 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %117
  %125 = tail call ptr @llvm.thread.pointer() #9
  %126 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 2
  %127 = load i32, ptr %126, align 8
  %128 = lshr i32 %127, 5
  %129 = getelementptr i32, ptr @__cpu_online_mask, i32 %128
  %130 = load volatile i32, ptr %129, align 4
  %131 = and i32 %127, 31
  %132 = shl nuw i32 1, %131
  %133 = and i32 %132, %130
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %124
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %136 = tail call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %121, i32 noundef 21, i32 noundef %120) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %137

137:                                              ; preds = %135, %124, %117
  %138 = and i32 %120, 1024
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %141 = load volatile i32, ptr @jiffies, align 64
  %142 = add i32 %141, %110
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %117, label %144

144:                                              ; preds = %140, %137, %108
  br label %145

145:                                              ; preds = %272, %144
  %146 = phi ptr [ %274, %272 ], [ %7, %144 ]
  %147 = getelementptr inbounds %struct.tegra_dsi, ptr %146, i32 0, i32 3
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr i8, ptr %148, i32 44
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %151 = getelementptr inbounds %struct.tegra_dsi, ptr %146, i32 0, i32 2
  %152 = load ptr, ptr %151, align 8
  %153 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %145
  %156 = tail call ptr @llvm.thread.pointer() #9
  %157 = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 2
  %158 = load i32, ptr %157, align 8
  %159 = lshr i32 %158, 5
  %160 = getelementptr i32, ptr @__cpu_online_mask, i32 %159
  %161 = load volatile i32, ptr %160, align 4
  %162 = and i32 %158, 31
  %163 = shl nuw i32 1, %162
  %164 = and i32 %163, %161
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %155
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %167 = tail call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %152, i32 noundef 11, i32 noundef %150) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %168 = load ptr, ptr %151, align 8
  br label %169

169:                                              ; preds = %166, %155, %145
  %170 = phi ptr [ %152, %145 ], [ %152, %155 ], [ %168, %166 ]
  %171 = and i32 %150, -2
  %172 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %169
  %175 = tail call ptr @llvm.thread.pointer() #9
  %176 = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 2
  %177 = load i32, ptr %176, align 8
  %178 = lshr i32 %177, 5
  %179 = getelementptr i32, ptr @__cpu_online_mask, i32 %178
  %180 = load volatile i32, ptr %179, align 4
  %181 = and i32 %177, 31
  %182 = shl nuw i32 1, %181
  %183 = and i32 %182, %180
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %174
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %186 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %170, i32 noundef 11, i32 noundef %171) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %187

187:                                              ; preds = %185, %174, %169
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %188 = load ptr, ptr %147, align 4
  %189 = getelementptr i8, ptr %188, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %171) #9, !srcloc !16
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 1000, i32 noundef 2) #9
  %190 = load ptr, ptr %147, align 4
  %191 = getelementptr i8, ptr %190, i32 44
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %193 = load ptr, ptr %151, align 8
  %194 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %187
  %197 = tail call ptr @llvm.thread.pointer() #9
  %198 = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 2
  %199 = load i32, ptr %198, align 8
  %200 = lshr i32 %199, 5
  %201 = getelementptr i32, ptr @__cpu_online_mask, i32 %200
  %202 = load volatile i32, ptr %201, align 4
  %203 = and i32 %199, 31
  %204 = shl nuw i32 1, %203
  %205 = and i32 %204, %202
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %196
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %208 = tail call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %193, i32 noundef 11, i32 noundef %192) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %209 = load ptr, ptr %151, align 8
  br label %210

210:                                              ; preds = %207, %196, %187
  %211 = phi ptr [ %193, %187 ], [ %193, %196 ], [ %209, %207 ]
  %212 = or i32 %192, 1
  %213 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %210
  %216 = tail call ptr @llvm.thread.pointer() #9
  %217 = getelementptr inbounds %struct.thread_info, ptr %216, i32 0, i32 2
  %218 = load i32, ptr %217, align 8
  %219 = lshr i32 %218, 5
  %220 = getelementptr i32, ptr @__cpu_online_mask, i32 %219
  %221 = load volatile i32, ptr %220, align 4
  %222 = and i32 %218, 31
  %223 = shl nuw i32 1, %222
  %224 = and i32 %223, %221
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %215
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %227 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %211, i32 noundef 11, i32 noundef %212) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %228

228:                                              ; preds = %226, %215, %210
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %229 = load ptr, ptr %147, align 4
  %230 = getelementptr i8, ptr %229, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %212) #9, !srcloc !16
  tail call void @usleep_range_state(i32 noundef 300, i32 noundef 1000, i32 noundef 2) #9
  %231 = load ptr, ptr %147, align 4
  %232 = getelementptr i8, ptr %231, i32 76
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %232) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %234 = load ptr, ptr %151, align 8
  %235 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %250

237:                                              ; preds = %228
  %238 = tail call ptr @llvm.thread.pointer() #9
  %239 = getelementptr inbounds %struct.thread_info, ptr %238, i32 0, i32 2
  %240 = load i32, ptr %239, align 8
  %241 = lshr i32 %240, 5
  %242 = getelementptr i32, ptr @__cpu_online_mask, i32 %241
  %243 = load volatile i32, ptr %242, align 4
  %244 = and i32 %240, 31
  %245 = shl nuw i32 1, %244
  %246 = and i32 %245, %243
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %237
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %249 = tail call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %234, i32 noundef 19, i32 noundef %233) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %250

250:                                              ; preds = %248, %237, %228
  %251 = icmp eq i32 %233, 0
  br i1 %251, label %272, label %252

252:                                              ; preds = %250
  %253 = load ptr, ptr %151, align 8
  %254 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %252
  %257 = tail call ptr @llvm.thread.pointer() #9
  %258 = getelementptr inbounds %struct.thread_info, ptr %257, i32 0, i32 2
  %259 = load i32, ptr %258, align 8
  %260 = lshr i32 %259, 5
  %261 = getelementptr i32, ptr @__cpu_online_mask, i32 %260
  %262 = load volatile i32, ptr %261, align 4
  %263 = and i32 %259, 31
  %264 = shl nuw i32 1, %263
  %265 = and i32 %264, %262
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %256
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %268 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %253, i32 noundef 19, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %269

269:                                              ; preds = %267, %256, %252
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %270 = load ptr, ptr %147, align 4
  %271 = getelementptr i8, ptr %270, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 0) #9, !srcloc !16
  br label %272

272:                                              ; preds = %269, %250
  %273 = getelementptr inbounds %struct.tegra_dsi, ptr %146, i32 0, i32 18
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %145

276:                                              ; preds = %272
  %277 = load ptr, ptr %8, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %281, label %279

279:                                              ; preds = %276
  %280 = tail call i32 @drm_panel_unprepare(ptr noundef nonnull %277) #9
  br label %281

281:                                              ; preds = %279, %276
  tail call fastcc void @tegra_dsi_disable(ptr noundef %7)
  tail call fastcc void @tegra_dsi_unprepare(ptr noundef %7)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_dsi_encoder_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7
  %7 = icmp eq ptr %3, null
  %8 = getelementptr i8, ptr %3, i32 -104
  %9 = select i1 %7, ptr null, ptr %8
  %10 = getelementptr i8, ptr %0, i32 -132
  %11 = tail call i32 @host1x_client_resume(ptr noundef %10) #9
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %198, %1
  %14 = phi ptr [ %10, %1 ], [ %196, %198 ]
  %15 = phi i32 [ %11, %1 ], [ %199, %198 ]
  %16 = xor i1 %12, true
  %17 = getelementptr inbounds %struct.tegra_dsi, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.97, i32 noundef %15) #10
  br label %201

19:                                               ; preds = %198, %1
  %20 = phi i1 [ true, %198 ], [ false, %1 ]
  %21 = phi ptr [ %196, %198 ], [ %10, %1 ]
  %22 = getelementptr inbounds %struct.tegra_dsi, ptr %21, i32 0, i32 12
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @tegra_mipi_enable(ptr noundef %23) #9
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.tegra_dsi, ptr %21, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.98, i32 noundef %24) #10
  br label %29

29:                                               ; preds = %26, %19
  %30 = getelementptr inbounds %struct.tegra_dsi, ptr %21, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = tail call ptr @llvm.thread.pointer() #9
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = lshr i32 %37, 5
  %39 = getelementptr i32, ptr @__cpu_online_mask, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %37, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %46 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %31, i32 noundef 75, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %47

47:                                               ; preds = %45, %34, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %48 = getelementptr inbounds %struct.tegra_dsi, ptr %21, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #9, !srcloc !16
  %51 = load ptr, ptr %30, align 8
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = tail call ptr @llvm.thread.pointer() #9
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %66 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %51, i32 noundef 79, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %67

67:                                               ; preds = %65, %54, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %68 = load ptr, ptr %48, align 4
  %69 = getelementptr i8, ptr %68, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 0) #9, !srcloc !16
  %70 = load ptr, ptr %30, align 8
  %71 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = tail call ptr @llvm.thread.pointer() #9
  %75 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = lshr i32 %76, 5
  %78 = getelementptr i32, ptr @__cpu_online_mask, i32 %77
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %76, 31
  %81 = shl nuw i32 1, %80
  %82 = and i32 %81, %79
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %73
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %85 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %70, i32 noundef 80, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %86

86:                                               ; preds = %84, %73, %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %87 = load ptr, ptr %48, align 4
  %88 = getelementptr i8, ptr %87, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 0) #9, !srcloc !16
  %89 = load ptr, ptr %30, align 8
  %90 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = tail call ptr @llvm.thread.pointer() #9
  %94 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 5
  %97 = getelementptr i32, ptr @__cpu_online_mask, i32 %96
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %95, 31
  %100 = shl nuw i32 1, %99
  %101 = and i32 %100, %98
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %92
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %104 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %89, i32 noundef 81, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %105

105:                                              ; preds = %103, %92, %86
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %106 = load ptr, ptr %48, align 4
  %107 = getelementptr i8, ptr %106, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 0) #9, !srcloc !16
  %108 = load ptr, ptr %30, align 8
  %109 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %105
  %112 = tail call ptr @llvm.thread.pointer() #9
  %113 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %114 = load i32, ptr %113, align 8
  %115 = lshr i32 %114, 5
  %116 = getelementptr i32, ptr @__cpu_online_mask, i32 %115
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %114, 31
  %119 = shl nuw i32 1, %118
  %120 = and i32 %119, %117
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %111
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %123 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %108, i32 noundef 82, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %124

124:                                              ; preds = %122, %111, %105
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %125 = load ptr, ptr %48, align 4
  %126 = getelementptr i8, ptr %125, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 0) #9, !srcloc !16
  %127 = load ptr, ptr %30, align 8
  %128 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %124
  %131 = tail call ptr @llvm.thread.pointer() #9
  %132 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2
  %133 = load i32, ptr %132, align 8
  %134 = lshr i32 %133, 5
  %135 = getelementptr i32, ptr @__cpu_online_mask, i32 %134
  %136 = load volatile i32, ptr %135, align 4
  %137 = and i32 %133, 31
  %138 = shl nuw i32 1, %137
  %139 = and i32 %138, %136
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %130
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %142 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %127, i32 noundef 75, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %143

143:                                              ; preds = %141, %130, %124
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %144 = load ptr, ptr %48, align 4
  %145 = getelementptr i8, ptr %144, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 0) #9, !srcloc !16
  %146 = load ptr, ptr %30, align 8
  %147 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %143
  %150 = tail call ptr @llvm.thread.pointer() #9
  %151 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %152 = load i32, ptr %151, align 8
  %153 = lshr i32 %152, 5
  %154 = getelementptr i32, ptr @__cpu_online_mask, i32 %153
  %155 = load volatile i32, ptr %154, align 4
  %156 = and i32 %152, 31
  %157 = shl nuw i32 1, %156
  %158 = and i32 %157, %155
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %149
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %161 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %146, i32 noundef 80, i32 noundef 487696) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %162

162:                                              ; preds = %160, %149, %143
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %163 = load ptr, ptr %48, align 4
  %164 = getelementptr i8, ptr %163, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 487696) #9, !srcloc !16
  %165 = load ptr, ptr %30, align 8
  %166 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %162
  %169 = tail call ptr @llvm.thread.pointer() #9
  %170 = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 2
  %171 = load i32, ptr %170, align 8
  %172 = lshr i32 %171, 5
  %173 = getelementptr i32, ptr @__cpu_online_mask, i32 %172
  %174 = load volatile i32, ptr %173, align 4
  %175 = and i32 %171, 31
  %176 = shl nuw i32 1, %175
  %177 = and i32 %176, %174
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %168
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %180 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %165, i32 noundef 81, i32 noundef 13107) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %181

181:                                              ; preds = %179, %168, %162
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %182 = load ptr, ptr %48, align 4
  %183 = getelementptr i8, ptr %182, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 13107) #9, !srcloc !16
  %184 = load ptr, ptr %22, align 8
  %185 = tail call i32 @tegra_mipi_start_calibration(ptr noundef %184) #9
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %181
  %188 = load ptr, ptr %22, align 8
  %189 = tail call i32 @tegra_mipi_finish_calibration(ptr noundef %188) #9
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %187, %181
  %192 = phi i32 [ %189, %187 ], [ %185, %181 ]
  %193 = load ptr, ptr %30, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %193, ptr noundef nonnull @.str.99, i32 noundef %192) #10
  br label %194

194:                                              ; preds = %191, %187
  %195 = getelementptr inbounds %struct.tegra_dsi, ptr %21, i32 0, i32 18
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = tail call i32 @host1x_client_resume(ptr noundef nonnull %196) #9
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %13, label %19

201:                                              ; preds = %194, %13
  %202 = phi i1 [ %16, %13 ], [ %20, %194 ]
  %203 = phi i32 [ %15, %13 ], [ 0, %194 ]
  %204 = select i1 %202, i32 0, i32 %203
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = getelementptr i8, ptr %0, i32 1044
  %208 = load ptr, ptr %207, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.96, i32 noundef %204) #10
  br label %579

209:                                              ; preds = %201
  %210 = getelementptr i8, ptr %0, i32 996
  %211 = load ptr, ptr %210, align 8
  %212 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 6
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 3
  %215 = load i32, ptr %214, align 4
  %216 = udiv i32 %213, %215
  %217 = lshr i32 %216, 9
  %218 = and i32 %217, 65535
  %219 = or i32 %218, 536870912
  %220 = lshr i32 %213, 8
  %221 = mul i32 %220, 65536000
  %222 = or i32 %221, 8192
  br label %223

223:                                              ; preds = %281, %209
  %224 = phi ptr [ %10, %209 ], [ %285, %281 ]
  %225 = getelementptr inbounds %struct.tegra_dsi, ptr %224, i32 0, i32 2
  %226 = load ptr, ptr %225, align 8
  %227 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %223
  %230 = tail call ptr @llvm.thread.pointer() #9
  %231 = getelementptr inbounds %struct.thread_info, ptr %230, i32 0, i32 2
  %232 = load i32, ptr %231, align 8
  %233 = lshr i32 %232, 5
  %234 = getelementptr i32, ptr @__cpu_online_mask, i32 %233
  %235 = load volatile i32, ptr %234, align 4
  %236 = and i32 %232, 31
  %237 = shl nuw i32 1, %236
  %238 = and i32 %237, %235
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %229
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %241 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %226, i32 noundef 68, i32 noundef %219) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %242

242:                                              ; preds = %240, %229, %223
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %243 = getelementptr inbounds %struct.tegra_dsi, ptr %224, i32 0, i32 3
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr i8, ptr %244, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 %219) #9, !srcloc !16
  %246 = load ptr, ptr %225, align 8
  %247 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %242
  %250 = tail call ptr @llvm.thread.pointer() #9
  %251 = getelementptr inbounds %struct.thread_info, ptr %250, i32 0, i32 2
  %252 = load i32, ptr %251, align 8
  %253 = lshr i32 %252, 5
  %254 = getelementptr i32, ptr @__cpu_online_mask, i32 %253
  %255 = load volatile i32, ptr %254, align 4
  %256 = and i32 %252, 31
  %257 = shl nuw i32 1, %256
  %258 = and i32 %257, %255
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %249
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %261 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %246, i32 noundef 69, i32 noundef %222) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %262

262:                                              ; preds = %260, %249, %242
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %263 = load ptr, ptr %243, align 4
  %264 = getelementptr i8, ptr %263, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %264, i32 %222) #9, !srcloc !16
  %265 = load ptr, ptr %225, align 8
  %266 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %267 = icmp sgt i32 %266, 0
  br i1 %267, label %268, label %281

268:                                              ; preds = %262
  %269 = tail call ptr @llvm.thread.pointer() #9
  %270 = getelementptr inbounds %struct.thread_info, ptr %269, i32 0, i32 2
  %271 = load i32, ptr %270, align 8
  %272 = lshr i32 %271, 5
  %273 = getelementptr i32, ptr @__cpu_online_mask, i32 %272
  %274 = load volatile i32, ptr %273, align 4
  %275 = and i32 %271, 31
  %276 = shl nuw i32 1, %275
  %277 = and i32 %276, %274
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %268
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %280 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %265, i32 noundef 70, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %281

281:                                              ; preds = %279, %268, %262
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %282 = load ptr, ptr %243, align 4
  %283 = getelementptr i8, ptr %282, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %283, i32 0) #9, !srcloc !16
  %284 = getelementptr inbounds %struct.tegra_dsi, ptr %224, i32 0, i32 18
  %285 = load ptr, ptr %284, align 4
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %223

287:                                              ; preds = %281
  %288 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 2
  %289 = load i32, ptr %288, align 4
  %290 = shl i32 %289, 3
  %291 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 1, i32 10
  %292 = lshr exact i32 %290, 1
  %293 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 1, i32 15
  %294 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 1, i32 12
  %295 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 1, i32 11
  %296 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 1, i32 6
  %297 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 1, i32 1
  %298 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 1, i32 7
  %299 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 1, i32 17
  %300 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 1, i32 3
  %301 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 1, i32 2
  %302 = mul i32 %289, 2040
  %303 = add i32 %292, %302
  %304 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 1, i32 18
  %305 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 1, i32 20
  %306 = getelementptr inbounds %struct.tegra_dsi_state, ptr %211, i32 0, i32 1, i32 19
  br label %307

307:                                              ; preds = %468, %287
  %308 = phi ptr [ %10, %287 ], [ %472, %468 ]
  %309 = load i32, ptr %291, align 4
  %310 = add i32 %309, %292
  %311 = udiv i32 %310, %290
  %312 = shl i32 %311, 24
  %313 = add i32 %312, -16777216
  %314 = load i32, ptr %293, align 4
  %315 = add i32 %314, %292
  %316 = udiv i32 %315, %290
  %317 = shl i32 %316, 16
  %318 = and i32 %317, 16711680
  %319 = or i32 %318, %313
  %320 = load i32, ptr %294, align 4
  %321 = add i32 %320, %292
  %322 = udiv i32 %321, %290
  %323 = shl i32 %322, 8
  %324 = add i32 %323, 64768
  %325 = and i32 %324, 65280
  %326 = or i32 %325, %319
  %327 = load i32, ptr %295, align 4
  %328 = add i32 %327, %292
  %329 = udiv i32 %328, %290
  %330 = add i32 %329, 255
  %331 = and i32 %330, 255
  %332 = or i32 %326, %331
  %333 = getelementptr inbounds %struct.tegra_dsi, ptr %308, i32 0, i32 2
  %334 = load ptr, ptr %333, align 8
  %335 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %336 = icmp sgt i32 %335, 0
  br i1 %336, label %337, label %350

337:                                              ; preds = %307
  %338 = tail call ptr @llvm.thread.pointer() #9
  %339 = getelementptr inbounds %struct.thread_info, ptr %338, i32 0, i32 2
  %340 = load i32, ptr %339, align 8
  %341 = lshr i32 %340, 5
  %342 = getelementptr i32, ptr @__cpu_online_mask, i32 %341
  %343 = load volatile i32, ptr %342, align 4
  %344 = and i32 %340, 31
  %345 = shl nuw i32 1, %344
  %346 = and i32 %345, %343
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %350, label %348

348:                                              ; preds = %337
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %349 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %334, i32 noundef 60, i32 noundef %332) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %350

350:                                              ; preds = %348, %337, %307
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %351 = getelementptr inbounds %struct.tegra_dsi, ptr %308, i32 0, i32 3
  %352 = load ptr, ptr %351, align 4
  %353 = getelementptr i8, ptr %352, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %353, i32 %332) #9, !srcloc !16
  %354 = load i32, ptr %296, align 4
  %355 = add i32 %354, %292
  %356 = udiv i32 %355, %290
  %357 = shl i32 %356, 24
  %358 = add i32 %357, -16777216
  %359 = load i32, ptr %297, align 4
  %360 = add i32 %359, %292
  %361 = udiv i32 %360, %290
  %362 = shl i32 %361, 16
  %363 = add i32 %362, 16711680
  %364 = and i32 %363, 16711680
  %365 = or i32 %364, %358
  %366 = load i32, ptr %298, align 4
  %367 = add i32 %366, %292
  %368 = udiv i32 %367, %290
  %369 = shl i32 %368, 8
  %370 = add i32 %369, 65280
  %371 = and i32 %370, 65280
  %372 = or i32 %371, %365
  %373 = load i32, ptr %299, align 4
  %374 = add i32 %373, %292
  %375 = udiv i32 %374, %290
  %376 = add i32 %375, 255
  %377 = and i32 %376, 255
  %378 = or i32 %372, %377
  %379 = load ptr, ptr %333, align 8
  %380 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %395

382:                                              ; preds = %350
  %383 = tail call ptr @llvm.thread.pointer() #9
  %384 = getelementptr inbounds %struct.thread_info, ptr %383, i32 0, i32 2
  %385 = load i32, ptr %384, align 8
  %386 = lshr i32 %385, 5
  %387 = getelementptr i32, ptr @__cpu_online_mask, i32 %386
  %388 = load volatile i32, ptr %387, align 4
  %389 = and i32 %385, 31
  %390 = shl nuw i32 1, %389
  %391 = and i32 %390, %388
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %395, label %393

393:                                              ; preds = %382
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %394 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %379, i32 noundef 61, i32 noundef %378) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %395

395:                                              ; preds = %393, %382, %350
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %396 = load ptr, ptr %351, align 4
  %397 = getelementptr i8, ptr %396, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %397, i32 %378) #9, !srcloc !16
  %398 = load i32, ptr %300, align 4
  %399 = add i32 %398, %292
  %400 = udiv i32 %399, %290
  %401 = shl i32 %400, 16
  %402 = add i32 %401, 16711680
  %403 = and i32 %402, 16711680
  %404 = load i32, ptr %301, align 4
  %405 = add i32 %404, %292
  %406 = udiv i32 %405, %290
  %407 = shl i32 %406, 8
  %408 = add i32 %407, 65280
  %409 = and i32 %408, 65280
  %410 = udiv i32 %303, %290
  %411 = and i32 %410, 255
  %412 = or i32 %411, %403
  %413 = or i32 %412, %409
  %414 = load ptr, ptr %333, align 8
  %415 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %430

417:                                              ; preds = %395
  %418 = tail call ptr @llvm.thread.pointer() #9
  %419 = getelementptr inbounds %struct.thread_info, ptr %418, i32 0, i32 2
  %420 = load i32, ptr %419, align 8
  %421 = lshr i32 %420, 5
  %422 = getelementptr i32, ptr @__cpu_online_mask, i32 %421
  %423 = load volatile i32, ptr %422, align 4
  %424 = and i32 %420, 31
  %425 = shl nuw i32 1, %424
  %426 = and i32 %425, %423
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %430, label %428

428:                                              ; preds = %417
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %429 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %414, i32 noundef 62, i32 noundef %413) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %430

430:                                              ; preds = %428, %417, %395
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %431 = load ptr, ptr %351, align 4
  %432 = getelementptr i8, ptr %431, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %432, i32 %413) #9, !srcloc !16
  %433 = load i32, ptr %304, align 4
  %434 = add i32 %433, %292
  %435 = udiv i32 %434, %290
  %436 = shl i32 %435, 16
  %437 = add i32 %436, 16711680
  %438 = and i32 %437, 16711680
  %439 = load i32, ptr %305, align 4
  %440 = add i32 %439, %292
  %441 = udiv i32 %440, %290
  %442 = shl i32 %441, 8
  %443 = add i32 %442, 65280
  %444 = and i32 %443, 65280
  %445 = or i32 %444, %438
  %446 = load i32, ptr %306, align 4
  %447 = add i32 %446, %292
  %448 = udiv i32 %447, %290
  %449 = add i32 %448, 255
  %450 = and i32 %449, 255
  %451 = or i32 %445, %450
  %452 = load ptr, ptr %333, align 8
  %453 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %454 = icmp sgt i32 %453, 0
  br i1 %454, label %455, label %468

455:                                              ; preds = %430
  %456 = tail call ptr @llvm.thread.pointer() #9
  %457 = getelementptr inbounds %struct.thread_info, ptr %456, i32 0, i32 2
  %458 = load i32, ptr %457, align 8
  %459 = lshr i32 %458, 5
  %460 = getelementptr i32, ptr @__cpu_online_mask, i32 %459
  %461 = load volatile i32, ptr %460, align 4
  %462 = and i32 %458, 31
  %463 = shl nuw i32 1, %462
  %464 = and i32 %463, %461
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %468, label %466

466:                                              ; preds = %455
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %467 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %452, i32 noundef 63, i32 noundef %451) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %468

468:                                              ; preds = %466, %455, %430
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %469 = load ptr, ptr %351, align 4
  %470 = getelementptr i8, ptr %469, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %470, i32 %451) #9, !srcloc !16
  %471 = getelementptr inbounds %struct.tegra_dsi, ptr %308, i32 0, i32 18
  %472 = load ptr, ptr %471, align 4
  %473 = icmp eq ptr %472, null
  br i1 %473, label %474, label %307

474:                                              ; preds = %468
  %475 = getelementptr i8, ptr %0, i32 -24
  %476 = load ptr, ptr %475, align 4
  %477 = icmp eq ptr %476, null
  br i1 %477, label %480, label %478

478:                                              ; preds = %474
  %479 = tail call i32 @drm_panel_prepare(ptr noundef nonnull %476) #9
  br label %480

480:                                              ; preds = %478, %474
  %481 = getelementptr inbounds %struct.tegra_dc, ptr %9, i32 0, i32 5
  %482 = load i32, ptr %481, align 4
  tail call fastcc void @tegra_dsi_configure(ptr noundef %10, i32 noundef %482, ptr noundef %6)
  %483 = getelementptr inbounds %struct.tegra_dc, ptr %9, i32 0, i32 8
  %484 = load ptr, ptr %483, align 8
  %485 = getelementptr i8, ptr %484, i32 4104
  %486 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %485) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %487 = getelementptr inbounds %struct.tegra_dc, ptr %9, i32 0, i32 2
  %488 = load ptr, ptr %487, align 4
  %489 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %490 = icmp sgt i32 %489, 0
  br i1 %490, label %491, label %505

491:                                              ; preds = %480
  %492 = tail call ptr @llvm.thread.pointer() #9
  %493 = getelementptr inbounds %struct.thread_info, ptr %492, i32 0, i32 2
  %494 = load i32, ptr %493, align 8
  %495 = lshr i32 %494, 5
  %496 = getelementptr i32, ptr @__cpu_online_mask, i32 %495
  %497 = load volatile i32, ptr %496, align 4
  %498 = and i32 %494, 31
  %499 = shl nuw i32 1, %498
  %500 = and i32 %499, %497
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %505, label %502

502:                                              ; preds = %491
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %503 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %488, i32 noundef 1026, i32 noundef %486) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %504 = load ptr, ptr %487, align 4
  br label %505

505:                                              ; preds = %502, %491, %480
  %506 = phi ptr [ %488, %480 ], [ %488, %491 ], [ %504, %502 ]
  %507 = or i32 %486, 536870912
  %508 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %509 = icmp sgt i32 %508, 0
  br i1 %509, label %510, label %523

510:                                              ; preds = %505
  %511 = tail call ptr @llvm.thread.pointer() #9
  %512 = getelementptr inbounds %struct.thread_info, ptr %511, i32 0, i32 2
  %513 = load i32, ptr %512, align 8
  %514 = lshr i32 %513, 5
  %515 = getelementptr i32, ptr @__cpu_online_mask, i32 %514
  %516 = load volatile i32, ptr %515, align 4
  %517 = and i32 %513, 31
  %518 = shl nuw i32 1, %517
  %519 = and i32 %518, %516
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %523, label %521

521:                                              ; preds = %510
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %522 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %506, i32 noundef 1026, i32 noundef %507) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  br label %523

523:                                              ; preds = %521, %510, %505
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %524 = load ptr, ptr %483, align 8
  %525 = getelementptr i8, ptr %524, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %525, i32 %507) #9, !srcloc !16
  tail call void @tegra_dc_commit(ptr noundef %9) #9
  br label %526

526:                                              ; preds = %568, %523
  %527 = phi ptr [ %10, %523 ], [ %572, %568 ]
  %528 = getelementptr inbounds %struct.tegra_dsi, ptr %527, i32 0, i32 3
  %529 = load ptr, ptr %528, align 4
  %530 = getelementptr i8, ptr %529, i32 44
  %531 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %530) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %532 = getelementptr inbounds %struct.tegra_dsi, ptr %527, i32 0, i32 2
  %533 = load ptr, ptr %532, align 8
  %534 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %535 = icmp sgt i32 %534, 0
  br i1 %535, label %536, label %550

536:                                              ; preds = %526
  %537 = tail call ptr @llvm.thread.pointer() #9
  %538 = getelementptr inbounds %struct.thread_info, ptr %537, i32 0, i32 2
  %539 = load i32, ptr %538, align 8
  %540 = lshr i32 %539, 5
  %541 = getelementptr i32, ptr @__cpu_online_mask, i32 %540
  %542 = load volatile i32, ptr %541, align 4
  %543 = and i32 %539, 31
  %544 = shl nuw i32 1, %543
  %545 = and i32 %544, %542
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %550, label %547

547:                                              ; preds = %536
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %548 = tail call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %533, i32 noundef 11, i32 noundef %531) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %549 = load ptr, ptr %532, align 8
  br label %550

550:                                              ; preds = %547, %536, %526
  %551 = phi ptr [ %533, %526 ], [ %533, %536 ], [ %549, %547 ]
  %552 = or i32 %531, 1
  %553 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %554 = icmp sgt i32 %553, 0
  br i1 %554, label %555, label %568

555:                                              ; preds = %550
  %556 = tail call ptr @llvm.thread.pointer() #9
  %557 = getelementptr inbounds %struct.thread_info, ptr %556, i32 0, i32 2
  %558 = load i32, ptr %557, align 8
  %559 = lshr i32 %558, 5
  %560 = getelementptr i32, ptr @__cpu_online_mask, i32 %559
  %561 = load volatile i32, ptr %560, align 4
  %562 = and i32 %558, 31
  %563 = shl nuw i32 1, %562
  %564 = and i32 %563, %561
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %568, label %566

566:                                              ; preds = %555
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %567 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %551, i32 noundef 11, i32 noundef %552) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %568

568:                                              ; preds = %566, %555, %550
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %569 = load ptr, ptr %528, align 4
  %570 = getelementptr i8, ptr %569, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %570, i32 %552) #9, !srcloc !16
  %571 = getelementptr inbounds %struct.tegra_dsi, ptr %527, i32 0, i32 18
  %572 = load ptr, ptr %571, align 4
  %573 = icmp eq ptr %572, null
  br i1 %573, label %574, label %526

574:                                              ; preds = %568
  %575 = load ptr, ptr %475, align 4
  %576 = icmp eq ptr %575, null
  br i1 %576, label %579, label %577

577:                                              ; preds = %574
  %578 = tail call i32 @drm_panel_enable(ptr noundef nonnull %575) #9
  br label %579

579:                                              ; preds = %577, %574, %206
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dsi_encoder_atomic_check(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_connector_state, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -104
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr i8, ptr %0, i32 -132
  %10 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, 1000
  %13 = getelementptr inbounds %struct.tegra_dsi_state, ptr %2, i32 0, i32 5
  store i32 %12, ptr %13, align 4
  %14 = getelementptr i8, ptr %0, i32 1076
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.tegra_dsi_state, ptr %2, i32 0, i32 8
  %17 = getelementptr inbounds %struct.tegra_dsi_state, ptr %2, i32 0, i32 9
  %18 = icmp ult i32 %15, 4
  br i1 %18, label %19, label %98

19:                                               ; preds = %3
  %20 = getelementptr inbounds [4 x i32], ptr @switch.table.tegra_dsi_encoder_atomic_check, i32 0, i32 %15
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds [4 x i32], ptr @switch.table.tegra_dsi_encoder_atomic_check.115, i32 0, i32 %15
  %23 = load i32, ptr %22, align 4
  store i32 %21, ptr %16, align 4
  store i32 %23, ptr %17, align 4
  %24 = getelementptr i8, ptr %0, i32 1116
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.tegra_dsi, ptr %25, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  br label %36

30:                                               ; preds = %19
  %31 = getelementptr i8, ptr %0, i32 1120
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  %34 = getelementptr i8, ptr %0, i32 1080
  %35 = load i32, ptr %34, align 4
  br i1 %33, label %42, label %36

36:                                               ; preds = %30, %27
  %37 = phi ptr [ %9, %27 ], [ %32, %30 ]
  %38 = phi i32 [ %29, %27 ], [ %35, %30 ]
  %39 = getelementptr inbounds %struct.tegra_dsi, ptr %37, i32 0, i32 11
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %38
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i32 [ %35, %30 ], [ %41, %36 ]
  %44 = getelementptr inbounds %struct.tegra_dsi_state, ptr %2, i32 0, i32 4
  store i32 %43, ptr %44, align 4
  %45 = load i32, ptr %14, align 8
  %46 = icmp ult i32 %45, 4
  br i1 %46, label %47, label %98

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.tegra_dsi_state, ptr %2, i32 0, i32 7
  %49 = getelementptr inbounds [4 x i32], ptr @switch.table.tegra_dsi_encoder_atomic_check.116, i32 0, i32 %45
  %50 = load i32, ptr %49, align 4
  store i32 %50, ptr %48, align 4
  %51 = tail call i32 @drm_mode_vrefresh(ptr noundef %10) #9
  %52 = getelementptr inbounds %struct.tegra_dsi_state, ptr %2, i32 0, i32 3
  store i32 %51, ptr %52, align 4
  %53 = load i32, ptr %13, align 4
  %54 = load i32, ptr %16, align 4
  %55 = mul i32 %54, %53
  %56 = load i32, ptr %17, align 4
  %57 = load i32, ptr %44, align 4
  %58 = mul i32 %57, %56
  %59 = udiv i32 %55, %58
  %60 = getelementptr inbounds %struct.tegra_dsi_state, ptr %2, i32 0, i32 6
  store i32 %59, ptr %60, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.103, i32 noundef %54, i32 noundef %56, i32 noundef %57) #9
  %61 = load i32, ptr %48, align 4
  %62 = load i32, ptr %52, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.104, i32 noundef %61, i32 noundef %62) #9
  %63 = load i32, ptr %60, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.105, i32 noundef %63) #9
  %64 = load i32, ptr %60, align 4
  %65 = shl i32 %64, 3
  %66 = add i32 %65, 999999
  %67 = urem i32 %66, 1000000
  %68 = sub i32 %66, %67
  %69 = lshr i32 %68, 1
  %70 = add nuw i32 %69, 1000000000
  %71 = udiv i32 %70, %68
  %72 = getelementptr inbounds %struct.tegra_dsi_state, ptr %2, i32 0, i32 2
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.tegra_dsi_state, ptr %2, i32 0, i32 1
  %74 = tail call i32 @mipi_dphy_timing_get_default(ptr noundef %73, i32 noundef %71) #9
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %98, label %76

76:                                               ; preds = %47
  %77 = load i32, ptr %72, align 4
  %78 = tail call i32 @mipi_dphy_timing_validate(ptr noundef %73, i32 noundef %77) #9
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %0, i32 1044
  %82 = load ptr, ptr %81, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.106, i32 noundef %78) #10
  br label %98

83:                                               ; preds = %76
  %84 = load i32, ptr %16, align 4
  %85 = shl i32 %84, 3
  %86 = load i32, ptr %17, align 4
  %87 = load i32, ptr %44, align 4
  %88 = mul i32 %87, %86
  %89 = udiv i32 %85, %88
  %90 = add i32 %89, -2
  %91 = getelementptr i8, ptr %0, i32 1056
  %92 = load ptr, ptr %91, align 4
  %93 = tail call i32 @tegra_dc_state_setup_clock(ptr noundef %8, ptr noundef %1, ptr noundef %92, i32 noundef %69, i32 noundef %90) #9
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %83
  %96 = getelementptr i8, ptr %0, i32 -32
  %97 = load ptr, ptr %96, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.107, i32 noundef %93) #10
  br label %98

98:                                               ; preds = %95, %83, %80, %47, %42, %3
  %99 = phi i32 [ %78, %80 ], [ %93, %95 ], [ %74, %47 ], [ %93, %83 ], [ -22, %3 ], [ -22, %42 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_dc_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_dsi_disable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @tegra_dsi_ganged_disable(ptr noundef nonnull %3)
  tail call fastcc void @tegra_dsi_ganged_disable(ptr noundef %0)
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 44
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %11 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %6
  %16 = tail call ptr @llvm.thread.pointer() #9
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %27 = tail call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %12, i32 noundef 11, i32 noundef %10) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %28 = load ptr, ptr %11, align 8
  br label %29

29:                                               ; preds = %26, %15, %6
  %30 = phi ptr [ %12, %6 ], [ %12, %15 ], [ %28, %26 ]
  %31 = and i32 %10, -2
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = tail call ptr @llvm.thread.pointer() #9
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = lshr i32 %37, 5
  %39 = getelementptr i32, ptr @__cpu_online_mask, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %37, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %46 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %30, i32 noundef 11, i32 noundef %31) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %47

47:                                               ; preds = %45, %34, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %48 = load ptr, ptr %7, align 4
  %49 = getelementptr i8, ptr %48, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %31) #9, !srcloc !16
  %50 = load ptr, ptr %2, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call fastcc void @tegra_dsi_disable(ptr noundef nonnull %50)
  br label %53

53:                                               ; preds = %52, %47
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_dsi_unprepare(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @tegra_dsi_unprepare(ptr noundef nonnull %3)
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @tegra_mipi_disable(ptr noundef %8) #9
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.94, i32 noundef %9) #10
  br label %14

14:                                               ; preds = %11, %6
  %15 = tail call i32 @host1x_client_suspend(ptr noundef %0) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.95, i32 noundef %15) #10
  br label %20

20:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_dsi_ganged_disable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %18 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %3, i32 noundef 84, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %19

19:                                               ; preds = %17, %6, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %20 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #9, !srcloc !16
  %23 = load ptr, ptr %2, align 8
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = tail call ptr @llvm.thread.pointer() #9
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 5
  %31 = getelementptr i32, ptr @__cpu_online_mask, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %38 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %23, i32 noundef 85, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %39

39:                                               ; preds = %37, %26, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %40 = load ptr, ptr %20, align 4
  %41 = getelementptr i8, ptr %40, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 0) #9, !srcloc !16
  %42 = load ptr, ptr %2, align 8
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = tail call ptr @llvm.thread.pointer() #9
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 5
  %50 = getelementptr i32, ptr @__cpu_online_mask, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %48, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %57 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %42, i32 noundef 83, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %58

58:                                               ; preds = %56, %45, %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %59 = load ptr, ptr %20, align 4
  %60 = getelementptr i8, ptr %59, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 0) #9, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mipi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_dsi_configure(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr %0, ptr %5
  %8 = getelementptr inbounds %struct.tegra_dsi, ptr %7, i32 0, i32 1, i32 10, i32 52
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.tegra_dsi_state, ptr %9, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tegra_dsi_state, ptr %9, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %15, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr @.str.102, ptr @.str.101
  %21 = select i1 %19, ptr @pkt_seq_command_mode, ptr @pkt_seq_video_non_burst_sync_events
  %22 = select i1 %17, ptr %20, ptr @.str.100
  %23 = select i1 %17, ptr %21, ptr @pkt_seq_video_non_burst_sync_pulses
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %22) #9
  %24 = getelementptr inbounds %struct.tegra_dsi_state, ptr %9, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 12
  %27 = and i32 %26, 12288
  %28 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 4
  %31 = add i32 %30, 48
  %32 = and i32 %31, 48
  %33 = shl i32 %1, 2
  %34 = and i32 %33, 4
  %35 = or i32 %27, %34
  %36 = or i32 %35, %32
  %37 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %3
  %42 = tail call ptr @llvm.thread.pointer() #9
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %53 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %38, i32 noundef 16, i32 noundef %36) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %54

54:                                               ; preds = %52, %41, %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %55 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %36) #9, !srcloc !16
  %58 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 15
  %59 = load i32, ptr %58, align 8
  %60 = load ptr, ptr %37, align 8
  %61 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %54
  %64 = tail call ptr @llvm.thread.pointer() #9
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 8
  %67 = lshr i32 %66, 5
  %68 = getelementptr i32, ptr @__cpu_online_mask, i32 %67
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %66, 31
  %71 = shl nuw i32 1, %70
  %72 = and i32 %71, %69
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %63
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %75 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %60, i32 noundef 18, i32 noundef %59) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %76

76:                                               ; preds = %74, %63, %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %77 = load ptr, ptr %55, align 4
  %78 = getelementptr i8, ptr %77, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %59) #9, !srcloc !16
  %79 = load ptr, ptr %37, align 8
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = tail call ptr @llvm.thread.pointer() #9
  %84 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = lshr i32 %85, 5
  %87 = getelementptr i32, ptr @__cpu_online_mask, i32 %86
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %85, 31
  %90 = shl nuw i32 1, %89
  %91 = and i32 %90, %88
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %82
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %94 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %79, i32 noundef 15, i32 noundef 32) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %95

95:                                               ; preds = %93, %82, %76
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %96 = load ptr, ptr %55, align 4
  %97 = getelementptr i8, ptr %96, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 32) #9, !srcloc !16
  %98 = load ptr, ptr %55, align 4
  %99 = getelementptr i8, ptr %98, i32 64
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %101 = load ptr, ptr %37, align 8
  %102 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_readl, i32 0, i32 1), align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %95
  %105 = tail call ptr @llvm.thread.pointer() #9
  %106 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %107 = load i32, ptr %106, align 8
  %108 = lshr i32 %107, 5
  %109 = getelementptr i32, ptr @__cpu_online_mask, i32 %108
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %107, 31
  %112 = shl nuw i32 1, %111
  %113 = and i32 %112, %110
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %104
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %116 = tail call i32 @__traceiter_dsi_readl(ptr noundef null, ptr noundef %101, i32 noundef 16, i32 noundef %100) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %117 = load ptr, ptr %37, align 8
  br label %118

118:                                              ; preds = %115, %104, %95
  %119 = phi ptr [ %101, %95 ], [ %101, %104 ], [ %117, %115 ]
  %120 = load i32, ptr %14, align 4
  %121 = shl i32 %120, 10
  %122 = and i32 %121, 1048576
  %123 = and i32 %100, -780
  %124 = or i32 %122, %123
  %125 = shl i32 %120, 3
  %126 = and i32 %125, 8
  %127 = or i32 %124, %126
  %128 = xor i32 %127, 10
  %129 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %118
  %132 = tail call ptr @llvm.thread.pointer() #9
  %133 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 2
  %134 = load i32, ptr %133, align 8
  %135 = lshr i32 %134, 5
  %136 = getelementptr i32, ptr @__cpu_online_mask, i32 %135
  %137 = load volatile i32, ptr %136, align 4
  %138 = and i32 %134, 31
  %139 = shl nuw i32 1, %138
  %140 = and i32 %139, %137
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %131
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %143 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %119, i32 noundef 16, i32 noundef %128) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %144

144:                                              ; preds = %142, %131, %118
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %145 = load ptr, ptr %55, align 4
  %146 = getelementptr i8, ptr %145, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %128) #9, !srcloc !16
  br label %147

147:                                              ; preds = %168, %144
  %148 = phi i32 [ 0, %144 ], [ %172, %168 ]
  %149 = getelementptr i32, ptr %23, i32 %148
  %150 = load i32, ptr %149, align 4
  %151 = add nuw nsw i32 %148, 35
  %152 = load ptr, ptr %37, align 8
  %153 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %147
  %156 = tail call ptr @llvm.thread.pointer() #9
  %157 = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 2
  %158 = load i32, ptr %157, align 8
  %159 = lshr i32 %158, 5
  %160 = getelementptr i32, ptr @__cpu_online_mask, i32 %159
  %161 = load volatile i32, ptr %160, align 4
  %162 = and i32 %158, 31
  %163 = shl nuw i32 1, %162
  %164 = and i32 %163, %161
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %155
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %167 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %152, i32 noundef %151, i32 noundef %150) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %168

168:                                              ; preds = %166, %155, %147
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %169 = load ptr, ptr %55, align 4
  %170 = shl nuw nsw i32 %151, 2
  %171 = getelementptr i8, ptr %169, i32 %170
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %150) #9, !srcloc !16
  %172 = add nuw nsw i32 %148, 1
  %173 = icmp eq i32 %172, 12
  br i1 %173, label %174, label %147

174:                                              ; preds = %168
  %175 = load i32, ptr %14, align 4
  %176 = and i32 %175, 1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %309, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  %180 = load i16, ptr %179, align 4
  %181 = zext i16 %180 to i32
  %182 = mul i32 %11, %181
  %183 = udiv i32 %182, %13
  %184 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 3
  %185 = load i16, ptr %184, align 4
  %186 = zext i16 %185 to i32
  %187 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 2
  %188 = load i16, ptr %187, align 2
  %189 = zext i16 %188 to i32
  %190 = sub nsw i32 %186, %189
  %191 = mul i32 %190, %11
  %192 = udiv i32 %191, %13
  %193 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 4
  %194 = load i16, ptr %193, align 2
  %195 = zext i16 %194 to i32
  %196 = sub nsw i32 %195, %186
  %197 = mul i32 %196, %11
  %198 = udiv i32 %197, %13
  %199 = and i32 %175, 4
  %200 = icmp eq i32 %199, 0
  %201 = sub nsw i32 %189, %181
  %202 = mul i32 %201, %11
  %203 = udiv i32 %202, %13
  %204 = add i32 %192, -14
  %205 = select i1 %200, i32 %204, i32 -14
  %206 = add i32 %205, %198
  %207 = add i32 %203, -8
  %208 = shl i32 %192, 16
  %209 = add i32 %208, -655360
  %210 = load ptr, ptr %37, align 8
  %211 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %178
  %214 = tail call ptr @llvm.thread.pointer() #9
  %215 = getelementptr inbounds %struct.thread_info, ptr %214, i32 0, i32 2
  %216 = load i32, ptr %215, align 8
  %217 = lshr i32 %216, 5
  %218 = getelementptr i32, ptr @__cpu_online_mask, i32 %217
  %219 = load volatile i32, ptr %218, align 4
  %220 = and i32 %216, 31
  %221 = shl nuw i32 1, %220
  %222 = and i32 %221, %219
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %213
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %225 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %210, i32 noundef 52, i32 noundef %209) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %226

226:                                              ; preds = %224, %213, %178
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %227 = load ptr, ptr %55, align 4
  %228 = getelementptr i8, ptr %227, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %209) #9, !srcloc !16
  %229 = shl i32 %183, 16
  %230 = or i32 %206, %229
  %231 = load ptr, ptr %37, align 8
  %232 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %247

234:                                              ; preds = %226
  %235 = tail call ptr @llvm.thread.pointer() #9
  %236 = getelementptr inbounds %struct.thread_info, ptr %235, i32 0, i32 2
  %237 = load i32, ptr %236, align 8
  %238 = lshr i32 %237, 5
  %239 = getelementptr i32, ptr @__cpu_online_mask, i32 %238
  %240 = load volatile i32, ptr %239, align 4
  %241 = and i32 %237, 31
  %242 = shl nuw i32 1, %241
  %243 = and i32 %242, %240
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %234
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %246 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %231, i32 noundef 53, i32 noundef %230) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %247

247:                                              ; preds = %245, %234, %226
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %248 = load ptr, ptr %55, align 4
  %249 = getelementptr i8, ptr %248, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 %230) #9, !srcloc !16
  %250 = load ptr, ptr %37, align 8
  %251 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %266

253:                                              ; preds = %247
  %254 = tail call ptr @llvm.thread.pointer() #9
  %255 = getelementptr inbounds %struct.thread_info, ptr %254, i32 0, i32 2
  %256 = load i32, ptr %255, align 8
  %257 = lshr i32 %256, 5
  %258 = getelementptr i32, ptr @__cpu_online_mask, i32 %257
  %259 = load volatile i32, ptr %258, align 4
  %260 = and i32 %256, 31
  %261 = shl nuw i32 1, %260
  %262 = and i32 %261, %259
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %253
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %265 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %250, i32 noundef 54, i32 noundef %207) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %266

266:                                              ; preds = %264, %253, %247
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %267 = load ptr, ptr %55, align 4
  %268 = getelementptr i8, ptr %267, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %268, i32 %207) #9, !srcloc !16
  %269 = load ptr, ptr %37, align 8
  %270 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %272, label %285

272:                                              ; preds = %266
  %273 = tail call ptr @llvm.thread.pointer() #9
  %274 = getelementptr inbounds %struct.thread_info, ptr %273, i32 0, i32 2
  %275 = load i32, ptr %274, align 8
  %276 = lshr i32 %275, 5
  %277 = getelementptr i32, ptr @__cpu_online_mask, i32 %276
  %278 = load volatile i32, ptr %277, align 4
  %279 = and i32 %275, 31
  %280 = shl nuw i32 1, %279
  %281 = and i32 %280, %278
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %272
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %284 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %269, i32 noundef 55, i32 noundef 252641280) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %285

285:                                              ; preds = %283, %272, %266
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %286 = load ptr, ptr %55, align 4
  %287 = getelementptr i8, ptr %286, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %287, i32 252641280) #9, !srcloc !16
  %288 = shl i32 %11, 3
  %289 = udiv i32 %288, %13
  %290 = load ptr, ptr %37, align 8
  %291 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %306

293:                                              ; preds = %285
  %294 = tail call ptr @llvm.thread.pointer() #9
  %295 = getelementptr inbounds %struct.thread_info, ptr %294, i32 0, i32 2
  %296 = load i32, ptr %295, align 8
  %297 = lshr i32 %296, 5
  %298 = getelementptr i32, ptr @__cpu_online_mask, i32 %297
  %299 = load volatile i32, ptr %298, align 4
  %300 = and i32 %296, 31
  %301 = shl nuw i32 1, %300
  %302 = and i32 %301, %299
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %306, label %304

304:                                              ; preds = %293
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %305 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %290, i32 noundef 17, i32 noundef %289) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %306

306:                                              ; preds = %304, %293, %285
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %307 = load ptr, ptr %55, align 4
  %308 = getelementptr i8, ptr %307, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %308, i32 %289) #9, !srcloc !16
  br label %477

309:                                              ; preds = %174
  %310 = load ptr, ptr %4, align 8
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 18
  %314 = load ptr, ptr %313, align 4
  %315 = icmp eq ptr %314, null
  br i1 %315, label %320, label %316

316:                                              ; preds = %312, %309
  %317 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  %318 = load i16, ptr %317, align 4
  %319 = lshr i16 %318, 1
  br label %323

320:                                              ; preds = %312
  %321 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  %322 = load i16, ptr %321, align 4
  br label %323

323:                                              ; preds = %320, %316
  %324 = phi i16 [ %319, %316 ], [ %322, %320 ]
  %325 = zext i16 %324 to i32
  %326 = mul i32 %11, %325
  %327 = udiv i32 %326, %13
  %328 = load ptr, ptr %37, align 8
  %329 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %330 = icmp sgt i32 %329, 0
  br i1 %330, label %331, label %344

331:                                              ; preds = %323
  %332 = tail call ptr @llvm.thread.pointer() #9
  %333 = getelementptr inbounds %struct.thread_info, ptr %332, i32 0, i32 2
  %334 = load i32, ptr %333, align 8
  %335 = lshr i32 %334, 5
  %336 = getelementptr i32, ptr @__cpu_online_mask, i32 %335
  %337 = load volatile i32, ptr %336, align 4
  %338 = and i32 %334, 31
  %339 = shl nuw i32 1, %338
  %340 = and i32 %339, %337
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %344, label %342

342:                                              ; preds = %331
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %343 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %328, i32 noundef 52, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %344

344:                                              ; preds = %342, %331, %323
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %345 = load ptr, ptr %55, align 4
  %346 = getelementptr i8, ptr %345, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %346, i32 0) #9, !srcloc !16
  %347 = shl i32 %327, 16
  %348 = add i32 %347, 65536
  %349 = load ptr, ptr %37, align 8
  %350 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %351 = icmp sgt i32 %350, 0
  br i1 %351, label %352, label %365

352:                                              ; preds = %344
  %353 = tail call ptr @llvm.thread.pointer() #9
  %354 = getelementptr inbounds %struct.thread_info, ptr %353, i32 0, i32 2
  %355 = load i32, ptr %354, align 8
  %356 = lshr i32 %355, 5
  %357 = getelementptr i32, ptr @__cpu_online_mask, i32 %356
  %358 = load volatile i32, ptr %357, align 4
  %359 = and i32 %355, 31
  %360 = shl nuw i32 1, %359
  %361 = and i32 %360, %358
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %365, label %363

363:                                              ; preds = %352
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %364 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %349, i32 noundef 53, i32 noundef %348) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %365

365:                                              ; preds = %363, %352, %344
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %366 = load ptr, ptr %55, align 4
  %367 = getelementptr i8, ptr %366, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %367, i32 %348) #9, !srcloc !16
  %368 = load ptr, ptr %37, align 8
  %369 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %370 = icmp sgt i32 %369, 0
  br i1 %370, label %371, label %384

371:                                              ; preds = %365
  %372 = tail call ptr @llvm.thread.pointer() #9
  %373 = getelementptr inbounds %struct.thread_info, ptr %372, i32 0, i32 2
  %374 = load i32, ptr %373, align 8
  %375 = lshr i32 %374, 5
  %376 = getelementptr i32, ptr @__cpu_online_mask, i32 %375
  %377 = load volatile i32, ptr %376, align 4
  %378 = and i32 %374, 31
  %379 = shl nuw i32 1, %378
  %380 = and i32 %379, %377
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %384, label %382

382:                                              ; preds = %371
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %383 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %368, i32 noundef 54, i32 noundef %348) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %384

384:                                              ; preds = %382, %371, %365
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %385 = load ptr, ptr %55, align 4
  %386 = getelementptr i8, ptr %385, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %386, i32 %348) #9, !srcloc !16
  %387 = load ptr, ptr %37, align 8
  %388 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %389 = icmp sgt i32 %388, 0
  br i1 %389, label %390, label %403

390:                                              ; preds = %384
  %391 = tail call ptr @llvm.thread.pointer() #9
  %392 = getelementptr inbounds %struct.thread_info, ptr %391, i32 0, i32 2
  %393 = load i32, ptr %392, align 8
  %394 = lshr i32 %393, 5
  %395 = getelementptr i32, ptr @__cpu_online_mask, i32 %394
  %396 = load volatile i32, ptr %395, align 4
  %397 = and i32 %393, 31
  %398 = shl nuw i32 1, %397
  %399 = and i32 %398, %396
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %403, label %401

401:                                              ; preds = %390
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %402 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %387, i32 noundef 55, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %403

403:                                              ; preds = %401, %390, %384
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %404 = load ptr, ptr %55, align 4
  %405 = getelementptr i8, ptr %404, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %405, i32 0) #9, !srcloc !16
  %406 = load ptr, ptr %37, align 8
  %407 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %408 = icmp sgt i32 %407, 0
  br i1 %408, label %409, label %422

409:                                              ; preds = %403
  %410 = tail call ptr @llvm.thread.pointer() #9
  %411 = getelementptr inbounds %struct.thread_info, ptr %410, i32 0, i32 2
  %412 = load i32, ptr %411, align 8
  %413 = lshr i32 %412, 5
  %414 = getelementptr i32, ptr @__cpu_online_mask, i32 %413
  %415 = load volatile i32, ptr %414, align 4
  %416 = and i32 %412, 31
  %417 = shl nuw i32 1, %416
  %418 = and i32 %417, %415
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %422, label %420

420:                                              ; preds = %409
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %421 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %406, i32 noundef 51, i32 noundef 11324) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %422

422:                                              ; preds = %420, %409, %403
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %423 = load ptr, ptr %55, align 4
  %424 = getelementptr i8, ptr %423, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %424, i32 11324) #9, !srcloc !16
  %425 = load ptr, ptr %4, align 8
  %426 = icmp eq ptr %425, null
  br i1 %426, label %427, label %431

427:                                              ; preds = %422
  %428 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 18
  %429 = load ptr, ptr %428, align 4
  %430 = icmp eq ptr %429, null
  br i1 %430, label %453, label %431

431:                                              ; preds = %427, %422
  %432 = getelementptr inbounds %struct.tegra_dsi_state, ptr %9, i32 0, i32 4
  %433 = load i32, ptr %432, align 4
  %434 = mul i32 %11, 10
  %435 = mul i32 %433, %13
  %436 = add i32 %435, -1
  %437 = add i32 %436, %434
  %438 = udiv i32 %437, %435
  %439 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 4
  %440 = load i16, ptr %439, align 2
  %441 = zext i16 %440 to i32
  %442 = mul i32 %11, %441
  %443 = add i32 %436, %442
  %444 = udiv i32 %443, %435
  %445 = mul i32 %444, %433
  %446 = lshr i32 %445, 1
  %447 = add i32 %433, -1
  %448 = add i32 %447, %446
  %449 = udiv i32 %448, %433
  %450 = add i32 %438, 26
  %451 = add i32 %450, %444
  %452 = sub i32 %451, %449
  br label %456

453:                                              ; preds = %427
  %454 = shl i32 %11, 3
  %455 = udiv i32 %454, %13
  br label %456

456:                                              ; preds = %453, %431
  %457 = phi i32 [ %452, %431 ], [ %455, %453 ]
  %458 = load ptr, ptr %37, align 8
  %459 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %460 = icmp sgt i32 %459, 0
  br i1 %460, label %461, label %474

461:                                              ; preds = %456
  %462 = tail call ptr @llvm.thread.pointer() #9
  %463 = getelementptr inbounds %struct.thread_info, ptr %462, i32 0, i32 2
  %464 = load i32, ptr %463, align 8
  %465 = lshr i32 %464, 5
  %466 = getelementptr i32, ptr @__cpu_online_mask, i32 %465
  %467 = load volatile i32, ptr %466, align 4
  %468 = and i32 %464, 31
  %469 = shl nuw i32 1, %468
  %470 = and i32 %469, %467
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %474, label %472

472:                                              ; preds = %461
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %473 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %458, i32 noundef 17, i32 noundef %457) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %474

474:                                              ; preds = %472, %461, %456
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %475 = load ptr, ptr %55, align 4
  %476 = getelementptr i8, ptr %475, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %476, i32 %457) #9, !srcloc !16
  br label %477

477:                                              ; preds = %474, %306
  %478 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 18
  %479 = load ptr, ptr %478, align 4
  %480 = icmp eq ptr %479, null
  br i1 %480, label %481, label %482

481:                                              ; preds = %482, %477
  ret void

482:                                              ; preds = %477
  tail call fastcc void @tegra_dsi_configure(ptr noundef nonnull %479, i32 noundef %1, ptr noundef %2)
  %483 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  %484 = load i16, ptr %483, align 4
  %485 = lshr i16 %484, 1
  %486 = zext i16 %485 to i32
  tail call fastcc void @tegra_dsi_ganged_enable(ptr noundef %0, i32 noundef 0, i32 noundef %486)
  %487 = load ptr, ptr %478, align 4
  %488 = load i16, ptr %483, align 4
  %489 = lshr i16 %488, 1
  %490 = zext i16 %489 to i32
  tail call fastcc void @tegra_dsi_ganged_enable(ptr noundef %487, i32 noundef %490, i32 noundef %490)
  br label %481
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mipi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mipi_start_calibration(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_mipi_finish_calibration(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_dsi_ganged_enable(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = tail call ptr @llvm.thread.pointer() #9
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %20 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %5, i32 noundef 84, i32 noundef %1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %21

21:                                               ; preds = %19, %8, %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %22 = getelementptr inbounds %struct.tegra_dsi, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %1) #9, !srcloc !16
  %25 = shl i32 %2, 16
  %26 = or i32 %25, %2
  %27 = load ptr, ptr %4, align 8
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %21
  %31 = tail call ptr @llvm.thread.pointer() #9
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %42 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %27, i32 noundef 85, i32 noundef %26) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %43

43:                                               ; preds = %41, %30, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %44 = load ptr, ptr %22, align 4
  %45 = getelementptr i8, ptr %44, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %26) #9, !srcloc !16
  %46 = load ptr, ptr %4, align 8
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dsi_writel, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = tail call ptr @llvm.thread.pointer() #9
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 5
  %54 = getelementptr i32, ptr @__cpu_online_mask, i32 %53
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %52, 31
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %61 = tail call i32 @__traceiter_dsi_writel(ptr noundef null, ptr noundef %46, i32 noundef 83, i32 noundef 1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %62

62:                                               ; preds = %60, %49, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %63 = load ptr, ptr %22, align 4
  %64 = getelementptr i8, ptr %63, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 1) #9, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dphy_timing_get_default(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dphy_timing_validate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_state_setup_clock(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 4888929}
!10 = !{i64 2155859078}
!11 = !{i64 2155749598}
!12 = !{i64 2155749764}
!13 = !{i64 2155733571}
!14 = !{i64 2155733739}
!15 = !{i64 2155859442}
!16 = !{i64 4888511}
!17 = !{i64 2147983467}
!18 = !{i64 481777, i64 2147971748, i64 2147971774, i64 2147971821, i64 2147971843, i64 2147971871, i64 2147971891}
!19 = !{i64 468346, i64 468371, i64 468393, i64 468409, i64 468421, i64 468441, i64 468465, i64 468481, i64 468493}
!20 = !{i64 2147983593}
!21 = !{i8 0, i8 2}
!22 = !{i64 2155840977}
!23 = !{i64 2155681331}
!24 = !{i64 2155681495}
!25 = !{i64 2155665396}
!26 = !{i64 2155665562}
!27 = !{i64 2155840313}
