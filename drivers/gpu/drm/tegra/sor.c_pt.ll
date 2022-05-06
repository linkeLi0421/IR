; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/sor.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/sor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_sor_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_dp_link_ops = type { ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_sor_soc = type { i8, i8, i8, i8, i8, ptr, i8, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_sor_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_sor_hdmi_settings = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8] }
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
%struct.tegra_sor = type { %struct.host1x_client, %struct.tegra_output, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x i8], %struct.drm_dp_link, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.delayed_work, i8, %struct.tegra_hda_format }
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
%struct.drm_dp_link = type { i8, i32, i32, %struct.drm_dp_link_caps, %struct.anon.83, i8, i32, i32, [8 x i32], i32, ptr, ptr, %struct.drm_dp_link_train }
%struct.drm_dp_link_caps = type { i8, i8, i8, i8, i8 }
%struct.anon.83 = type { i32, i32 }
%struct.drm_dp_link_train = type { %struct.drm_dp_link_train_set, %struct.drm_dp_link_train_set, i32, i8, i8 }
%struct.drm_dp_link_train_set = type { [4 x i32], [4 x i32], [4 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.tegra_hda_format = type { i32, i32, i32, i8 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.tegra_clk_sor_pad = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.tegra_dc = type { %struct.host1x_client, ptr, ptr, %struct.drm_crtc, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.tegra_dc_stats, %struct.list_head, ptr, ptr, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.tegra_dc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.tegra_dc_soc_info = type { i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i8, i8, i8, i8 }
%struct.tegra_sor_state = type { %struct.drm_connector_state, i32, i32, i32 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.77, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.77 = type { i32, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }

@.str = private unnamed_addr constant [10 x i8] c"tegra-sor\00", align 1
@tegra_sor_of_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_sor }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_sor }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-sor1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_sor1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_sor }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra132-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra132_sor }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_sor }, %struct.of_device_id zeroinitializer], align 4
@tegra_sor_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_sor_suspend, ptr @tegra_sor_resume, ptr @tegra_sor_suspend, ptr @tegra_sor_resume, ptr @tegra_sor_suspend, ptr @tegra_sor_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_sor_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @tegra_sor_probe, ptr @tegra_sor_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_sor_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_sor_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"nvidia,dpaux\00", align 1
@tegra_sor_hdmi_ops = internal constant %struct.tegra_sor_ops { ptr @.str.29, ptr @tegra_sor_hdmi_probe, ptr @tegra_sor_hdmi_audio_enable, ptr @tegra_sor_hdmi_audio_disable }, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"LVDS not supported yet\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unknown (non-DP) support\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"nvidia,panel\00", align 1
@tegra_sor_dp_ops = internal constant %struct.tegra_sor_ops { ptr @.str.44, ptr @tegra_sor_dp_probe, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to probe output\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to probe %s: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"failed to get IRQ: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"failed to request IRQ: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"sor\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"drivers/gpu/drm/tegra/sor.c\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"failed to get reset control: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"failed to get module clock: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"failed to get %s clock: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"failed to get parent clock: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"safe\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"failed to get safe clock: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"failed to get DP clock: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"failed to use safe clock: %d\0A\00", align 1
@tegra_sor_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@sor_client_ops = internal constant %struct.host1x_client_ops { ptr null, ptr @tegra_sor_init, ptr @tegra_sor_exit, ptr null, ptr @tegra_sor_runtime_suspend, ptr @tegra_sor_runtime_resume }, align 4
@.str.25 = private unnamed_addr constant [17 x i8] c"sor%u_pad_clkout\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"failed to resume: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"failed to register SOR pad clock: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"avdd-io-hdmi-dp\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"cannot get AVDD I/O supply: %ld\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"failed to enable AVDD I/O supply: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"vdd-hdmi-dp-pll\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"cannot get VDD PLL supply: %ld\0A\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"failed to enable VDD PLL supply: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"cannot get HDMI supply: %ld\0A\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"failed to enable HDMI supply: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"SCDC not scrambled\0A\00", align 1
@__tracepoint_sor_readl = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_sor_writel = external dso_local global %struct.tracepoint, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.41 = private unnamed_addr constant [37 x i8] c"failed to setup audio infoframe: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"failed to pack audio infoframe: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"unsupported infoframe type: %02x\0A\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"DP\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"nvidia,interface\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"nvidia,xbar-cfg\00", align 1
@tegra_sor_hdmi_helpers = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_sor_hdmi_disable, ptr @tegra_sor_hdmi_enable, ptr @tegra_sor_encoder_atomic_check }, align 4
@tegra_sor_dp_helpers = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_sor_dp_disable, ptr @tegra_sor_dp_enable, ptr @tegra_sor_encoder_atomic_check }, align 4
@tegra_sor_dp_link_ops = internal constant %struct.drm_dp_link_ops { ptr @tegra_sor_dp_link_apply_training, ptr @tegra_sor_dp_link_configure }, align 4
@tegra_sor_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @tegra_sor_connector_reset, ptr @tegra_sor_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @tegra_sor_late_register, ptr @tegra_sor_early_unregister, ptr @tegra_output_connector_destroy, ptr @tegra_sor_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_sor_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @tegra_sor_connector_get_modes, ptr null, ptr @tegra_sor_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.47 = private unnamed_addr constant [33 x i8] c"failed to initialize output: %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"failed to attach DP: %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"failed to get runtime PM: %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"failed to acquire SOR reset: %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"failed to assert SOR reset: %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"failed to deassert SOR reset: %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"failed to detach SOR: %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"failed to power down SOR: %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"failed to power off I/O pad: %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__tracepoint_dc_readl = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dc_writel = external dso_local global %struct.tracepoint, align 4
@.str.57 = private unnamed_addr constant [37 x i8] c"failed to set safe parent clock: %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"failed to power on I/O pad: %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"setting 2.7 GHz link speed\0A\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"setting 5.4 GHz link speed\0A\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"failed to select SOR parent clock: %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [42 x i8] c"failed to select output parent clock: %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [39 x i8] c"setting clock to %lu Hz, mode: %lu Hz\0A\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"failed to setup AVI infoframe: %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"no settings for pixel clock %d Hz\0A\00", align 1
@.str.66 = private unnamed_addr constant [33 x i8] c"%u bits-per-color not supported\0A\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"failed to power up SOR: %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"failed to attach SOR: %d\0A\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"failed to wakeup SOR: %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [34 x i8] c"failed to pack AVI infoframe: %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"failed to setup CRTC state: %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"failed to power down link: %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"failed to set safe clock: %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"failed disable DPAUX: %d\0A\00", align 1
@.str.75 = private unnamed_addr constant [34 x i8] c"failed to power on LVDS rail: %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"failed to enable DPAUX: %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"failed to probe DP link: %d\0A\00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"failed to choose link: %d\0A\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"link training failed: %d\0A\00", align 1
@.str.80 = private unnamed_addr constant [32 x i8] c"failed to power up DP link: %d\0A\00", align 1
@.str.81 = private unnamed_addr constant [37 x i8] c"failed to compute configuration: %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"failed to setup PWM: %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [33 x i8] c"link rate %lu kHz not supported\0A\00", align 1
@.str.84 = private unnamed_addr constant [52 x i8] c"unable to compute TU size, forcing watermark to %u\0A\00", align 1
@.str.85 = private unnamed_addr constant [35 x i8] c"watermark too high, forcing to %u\0A\00", align 1
@.str.86 = private unnamed_addr constant [32 x i8] c"failed to power down lanes: %d\0A\00", align 1
@.str.87 = private unnamed_addr constant [34 x i8] c"failed to power up %u lane%s: %d\0A\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.89 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@debugfs_files = internal constant [2 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.90, ptr @tegra_sor_show_crc, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.91, ptr @tegra_sor_show_regs, i32 0, ptr null }], align 4
@.str.90 = private unnamed_addr constant [4 x i8] c"crc\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@tegra_sor_regs = internal unnamed_addr constant [115 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.94, i32 0 }, %struct.debugfs_reg32 { ptr @.str.95, i32 1 }, %struct.debugfs_reg32 { ptr @.str.96, i32 2 }, %struct.debugfs_reg32 { ptr @.str.97, i32 3 }, %struct.debugfs_reg32 { ptr @.str.98, i32 4 }, %struct.debugfs_reg32 { ptr @.str.99, i32 5 }, %struct.debugfs_reg32 { ptr @.str.100, i32 6 }, %struct.debugfs_reg32 { ptr @.str.101, i32 7 }, %struct.debugfs_reg32 { ptr @.str.102, i32 8 }, %struct.debugfs_reg32 { ptr @.str.103, i32 9 }, %struct.debugfs_reg32 { ptr @.str.104, i32 10 }, %struct.debugfs_reg32 { ptr @.str.105, i32 11 }, %struct.debugfs_reg32 { ptr @.str.106, i32 12 }, %struct.debugfs_reg32 { ptr @.str.107, i32 13 }, %struct.debugfs_reg32 { ptr @.str.108, i32 14 }, %struct.debugfs_reg32 { ptr @.str.109, i32 15 }, %struct.debugfs_reg32 { ptr @.str.110, i32 16 }, %struct.debugfs_reg32 { ptr @.str.111, i32 17 }, %struct.debugfs_reg32 { ptr @.str.112, i32 18 }, %struct.debugfs_reg32 { ptr @.str.113, i32 19 }, %struct.debugfs_reg32 { ptr @.str.114, i32 20 }, %struct.debugfs_reg32 { ptr @.str.115, i32 21 }, %struct.debugfs_reg32 { ptr @.str.116, i32 22 }, %struct.debugfs_reg32 { ptr @.str.117, i32 23 }, %struct.debugfs_reg32 { ptr @.str.118, i32 24 }, %struct.debugfs_reg32 { ptr @.str.119, i32 25 }, %struct.debugfs_reg32 { ptr @.str.120, i32 26 }, %struct.debugfs_reg32 { ptr @.str.121, i32 27 }, %struct.debugfs_reg32 { ptr @.str.122, i32 28 }, %struct.debugfs_reg32 { ptr @.str.123, i32 29 }, %struct.debugfs_reg32 { ptr @.str.124, i32 30 }, %struct.debugfs_reg32 { ptr @.str.125, i32 31 }, %struct.debugfs_reg32 { ptr @.str.126, i32 32 }, %struct.debugfs_reg32 { ptr @.str.127, i32 33 }, %struct.debugfs_reg32 { ptr @.str.128, i32 34 }, %struct.debugfs_reg32 { ptr @.str.129, i32 35 }, %struct.debugfs_reg32 { ptr @.str.130, i32 36 }, %struct.debugfs_reg32 { ptr @.str.131, i32 37 }, %struct.debugfs_reg32 { ptr @.str.132, i32 38 }, %struct.debugfs_reg32 { ptr @.str.133, i32 39 }, %struct.debugfs_reg32 { ptr @.str.134, i32 40 }, %struct.debugfs_reg32 { ptr @.str.135, i32 41 }, %struct.debugfs_reg32 { ptr @.str.136, i32 42 }, %struct.debugfs_reg32 { ptr @.str.137, i32 43 }, %struct.debugfs_reg32 { ptr @.str.138, i32 44 }, %struct.debugfs_reg32 { ptr @.str.139, i32 45 }, %struct.debugfs_reg32 { ptr @.str.140, i32 46 }, %struct.debugfs_reg32 { ptr @.str.141, i32 47 }, %struct.debugfs_reg32 { ptr @.str.142, i32 48 }, %struct.debugfs_reg32 { ptr @.str.143, i32 49 }, %struct.debugfs_reg32 { ptr @.str.144, i32 50 }, %struct.debugfs_reg32 { ptr @.str.145, i32 51 }, %struct.debugfs_reg32 { ptr @.str.146, i32 52 }, %struct.debugfs_reg32 { ptr @.str.147, i32 53 }, %struct.debugfs_reg32 { ptr @.str.148, i32 54 }, %struct.debugfs_reg32 { ptr @.str.149, i32 55 }, %struct.debugfs_reg32 { ptr @.str.150, i32 56 }, %struct.debugfs_reg32 { ptr @.str.151, i32 57 }, %struct.debugfs_reg32 { ptr @.str.152, i32 58 }, %struct.debugfs_reg32 { ptr @.str.153, i32 59 }, %struct.debugfs_reg32 { ptr @.str.154, i32 60 }, %struct.debugfs_reg32 { ptr @.str.155, i32 61 }, %struct.debugfs_reg32 { ptr @.str.156, i32 62 }, %struct.debugfs_reg32 { ptr @.str.157, i32 63 }, %struct.debugfs_reg32 { ptr @.str.158, i32 64 }, %struct.debugfs_reg32 { ptr @.str.159, i32 65 }, %struct.debugfs_reg32 { ptr @.str.160, i32 66 }, %struct.debugfs_reg32 { ptr @.str.161, i32 67 }, %struct.debugfs_reg32 { ptr @.str.162, i32 68 }, %struct.debugfs_reg32 { ptr @.str.163, i32 69 }, %struct.debugfs_reg32 { ptr @.str.164, i32 70 }, %struct.debugfs_reg32 { ptr @.str.165, i32 71 }, %struct.debugfs_reg32 { ptr @.str.166, i32 72 }, %struct.debugfs_reg32 { ptr @.str.167, i32 73 }, %struct.debugfs_reg32 { ptr @.str.168, i32 74 }, %struct.debugfs_reg32 { ptr @.str.169, i32 75 }, %struct.debugfs_reg32 { ptr @.str.170, i32 76 }, %struct.debugfs_reg32 { ptr @.str.171, i32 77 }, %struct.debugfs_reg32 { ptr @.str.172, i32 78 }, %struct.debugfs_reg32 { ptr @.str.173, i32 79 }, %struct.debugfs_reg32 { ptr @.str.174, i32 80 }, %struct.debugfs_reg32 { ptr @.str.175, i32 81 }, %struct.debugfs_reg32 { ptr @.str.176, i32 82 }, %struct.debugfs_reg32 { ptr @.str.177, i32 83 }, %struct.debugfs_reg32 { ptr @.str.178, i32 84 }, %struct.debugfs_reg32 { ptr @.str.179, i32 85 }, %struct.debugfs_reg32 { ptr @.str.180, i32 86 }, %struct.debugfs_reg32 { ptr @.str.181, i32 87 }, %struct.debugfs_reg32 { ptr @.str.182, i32 88 }, %struct.debugfs_reg32 { ptr @.str.183, i32 89 }, %struct.debugfs_reg32 { ptr @.str.184, i32 90 }, %struct.debugfs_reg32 { ptr @.str.185, i32 91 }, %struct.debugfs_reg32 { ptr @.str.186, i32 92 }, %struct.debugfs_reg32 { ptr @.str.187, i32 93 }, %struct.debugfs_reg32 { ptr @.str.188, i32 115 }, %struct.debugfs_reg32 { ptr @.str.189, i32 94 }, %struct.debugfs_reg32 { ptr @.str.190, i32 95 }, %struct.debugfs_reg32 { ptr @.str.191, i32 96 }, %struct.debugfs_reg32 { ptr @.str.192, i32 97 }, %struct.debugfs_reg32 { ptr @.str.193, i32 98 }, %struct.debugfs_reg32 { ptr @.str.194, i32 99 }, %struct.debugfs_reg32 { ptr @.str.195, i32 100 }, %struct.debugfs_reg32 { ptr @.str.196, i32 101 }, %struct.debugfs_reg32 { ptr @.str.197, i32 102 }, %struct.debugfs_reg32 { ptr @.str.198, i32 103 }, %struct.debugfs_reg32 { ptr @.str.199, i32 104 }, %struct.debugfs_reg32 { ptr @.str.200, i32 105 }, %struct.debugfs_reg32 { ptr @.str.201, i32 106 }, %struct.debugfs_reg32 { ptr @.str.202, i32 107 }, %struct.debugfs_reg32 { ptr @.str.203, i32 108 }, %struct.debugfs_reg32 { ptr @.str.204, i32 109 }, %struct.debugfs_reg32 { ptr @.str.205, i32 110 }, %struct.debugfs_reg32 { ptr @.str.206, i32 111 }, %struct.debugfs_reg32 { ptr @.str.207, i32 112 }, %struct.debugfs_reg32 { ptr @.str.208, i32 113 }], align 4
@.str.93 = private unnamed_addr constant [18 x i8] c"%-38s %#05x %08x\0A\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"SOR_CTXSW\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"SOR_SUPER_STATE0\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"SOR_SUPER_STATE1\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"SOR_STATE0\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"SOR_STATE1\00", align 1
@.str.99 = private unnamed_addr constant [19 x i8] c"SOR_HEAD_STATE0(0)\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"SOR_HEAD_STATE0(1)\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"SOR_HEAD_STATE1(0)\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"SOR_HEAD_STATE1(1)\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"SOR_HEAD_STATE2(0)\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"SOR_HEAD_STATE2(1)\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"SOR_HEAD_STATE3(0)\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"SOR_HEAD_STATE3(1)\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"SOR_HEAD_STATE4(0)\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"SOR_HEAD_STATE4(1)\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"SOR_HEAD_STATE5(0)\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"SOR_HEAD_STATE5(1)\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"SOR_CRC_CNTRL\00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c"SOR_DP_DEBUG_MVID\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"SOR_CLK_CNTRL\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"SOR_CAP\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"SOR_PWR\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"SOR_TEST\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"SOR_PLL0\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"SOR_PLL1\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"SOR_PLL2\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"SOR_PLL3\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"SOR_CSTM\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"SOR_LVDS\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"SOR_CRCA\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"SOR_CRCB\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"SOR_BLANK\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"SOR_SEQ_CTL\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"SOR_LANE_SEQ_CTL\00", align 1
@.str.128 = private unnamed_addr constant [16 x i8] c"SOR_SEQ_INST(0)\00", align 1
@.str.129 = private unnamed_addr constant [16 x i8] c"SOR_SEQ_INST(1)\00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"SOR_SEQ_INST(2)\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"SOR_SEQ_INST(3)\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"SOR_SEQ_INST(4)\00", align 1
@.str.133 = private unnamed_addr constant [16 x i8] c"SOR_SEQ_INST(5)\00", align 1
@.str.134 = private unnamed_addr constant [16 x i8] c"SOR_SEQ_INST(6)\00", align 1
@.str.135 = private unnamed_addr constant [16 x i8] c"SOR_SEQ_INST(7)\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"SOR_SEQ_INST(8)\00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"SOR_SEQ_INST(9)\00", align 1
@.str.138 = private unnamed_addr constant [17 x i8] c"SOR_SEQ_INST(10)\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"SOR_SEQ_INST(11)\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"SOR_SEQ_INST(12)\00", align 1
@.str.141 = private unnamed_addr constant [17 x i8] c"SOR_SEQ_INST(13)\00", align 1
@.str.142 = private unnamed_addr constant [17 x i8] c"SOR_SEQ_INST(14)\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"SOR_SEQ_INST(15)\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"SOR_PWM_DIV\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"SOR_PWM_CTL\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"SOR_VCRC_A0\00", align 1
@.str.147 = private unnamed_addr constant [12 x i8] c"SOR_VCRC_A1\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"SOR_VCRC_B0\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"SOR_VCRC_B1\00", align 1
@.str.150 = private unnamed_addr constant [12 x i8] c"SOR_CCRC_A0\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"SOR_CCRC_A1\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"SOR_CCRC_B0\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"SOR_CCRC_B1\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"SOR_EDATA_A0\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"SOR_EDATA_A1\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"SOR_EDATA_B0\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"SOR_EDATA_B1\00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"SOR_COUNT_A0\00", align 1
@.str.159 = private unnamed_addr constant [13 x i8] c"SOR_COUNT_A1\00", align 1
@.str.160 = private unnamed_addr constant [13 x i8] c"SOR_COUNT_B0\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"SOR_COUNT_B1\00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"SOR_DEBUG_A0\00", align 1
@.str.163 = private unnamed_addr constant [13 x i8] c"SOR_DEBUG_A1\00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"SOR_DEBUG_B0\00", align 1
@.str.165 = private unnamed_addr constant [13 x i8] c"SOR_DEBUG_B1\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"SOR_TRIG\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"SOR_MSCHECK\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"SOR_XBAR_CTRL\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"SOR_XBAR_POL\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"SOR_DP_LINKCTL0\00", align 1
@.str.171 = private unnamed_addr constant [16 x i8] c"SOR_DP_LINKCTL1\00", align 1
@.str.172 = private unnamed_addr constant [24 x i8] c"SOR_LANE_DRIVE_CURRENT0\00", align 1
@.str.173 = private unnamed_addr constant [24 x i8] c"SOR_LANE_DRIVE_CURRENT1\00", align 1
@.str.174 = private unnamed_addr constant [25 x i8] c"SOR_LANE4_DRIVE_CURRENT0\00", align 1
@.str.175 = private unnamed_addr constant [25 x i8] c"SOR_LANE4_DRIVE_CURRENT1\00", align 1
@.str.176 = private unnamed_addr constant [22 x i8] c"SOR_LANE_PREEMPHASIS0\00", align 1
@.str.177 = private unnamed_addr constant [22 x i8] c"SOR_LANE_PREEMPHASIS1\00", align 1
@.str.178 = private unnamed_addr constant [23 x i8] c"SOR_LANE4_PREEMPHASIS0\00", align 1
@.str.179 = private unnamed_addr constant [23 x i8] c"SOR_LANE4_PREEMPHASIS1\00", align 1
@.str.180 = private unnamed_addr constant [21 x i8] c"SOR_LANE_POSTCURSOR0\00", align 1
@.str.181 = private unnamed_addr constant [21 x i8] c"SOR_LANE_POSTCURSOR1\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"SOR_DP_CONFIG0\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"SOR_DP_CONFIG1\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"SOR_DP_MN0\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"SOR_DP_MN1\00", align 1
@.str.186 = private unnamed_addr constant [15 x i8] c"SOR_DP_PADCTL0\00", align 1
@.str.187 = private unnamed_addr constant [15 x i8] c"SOR_DP_PADCTL1\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c"SOR_DP_PADCTL2\00", align 1
@.str.189 = private unnamed_addr constant [14 x i8] c"SOR_DP_DEBUG0\00", align 1
@.str.190 = private unnamed_addr constant [14 x i8] c"SOR_DP_DEBUG1\00", align 1
@.str.191 = private unnamed_addr constant [14 x i8] c"SOR_DP_SPARE0\00", align 1
@.str.192 = private unnamed_addr constant [14 x i8] c"SOR_DP_SPARE1\00", align 1
@.str.193 = private unnamed_addr constant [18 x i8] c"SOR_DP_AUDIO_CTRL\00", align 1
@.str.194 = private unnamed_addr constant [28 x i8] c"SOR_DP_AUDIO_HBLANK_SYMBOLS\00", align 1
@.str.195 = private unnamed_addr constant [28 x i8] c"SOR_DP_AUDIO_VBLANK_SYMBOLS\00", align 1
@.str.196 = private unnamed_addr constant [32 x i8] c"SOR_DP_GENERIC_INFOFRAME_HEADER\00", align 1
@.str.197 = private unnamed_addr constant [34 x i8] c"SOR_DP_GENERIC_INFOFRAME_SUBPACK0\00", align 1
@.str.198 = private unnamed_addr constant [34 x i8] c"SOR_DP_GENERIC_INFOFRAME_SUBPACK1\00", align 1
@.str.199 = private unnamed_addr constant [34 x i8] c"SOR_DP_GENERIC_INFOFRAME_SUBPACK2\00", align 1
@.str.200 = private unnamed_addr constant [34 x i8] c"SOR_DP_GENERIC_INFOFRAME_SUBPACK3\00", align 1
@.str.201 = private unnamed_addr constant [34 x i8] c"SOR_DP_GENERIC_INFOFRAME_SUBPACK4\00", align 1
@.str.202 = private unnamed_addr constant [34 x i8] c"SOR_DP_GENERIC_INFOFRAME_SUBPACK5\00", align 1
@.str.203 = private unnamed_addr constant [34 x i8] c"SOR_DP_GENERIC_INFOFRAME_SUBPACK6\00", align 1
@.str.204 = private unnamed_addr constant [11 x i8] c"SOR_DP_TPG\00", align 1
@.str.205 = private unnamed_addr constant [18 x i8] c"SOR_DP_TPG_CONFIG\00", align 1
@.str.206 = private unnamed_addr constant [16 x i8] c"SOR_DP_LQ_CSTM0\00", align 1
@.str.207 = private unnamed_addr constant [16 x i8] c"SOR_DP_LQ_CSTM1\00", align 1
@.str.208 = private unnamed_addr constant [16 x i8] c"SOR_DP_LQ_CSTM2\00", align 1
@.str.209 = private unnamed_addr constant [25 x i8] c"failed to detach DP: %d\0A\00", align 1
@.str.210 = private unnamed_addr constant [28 x i8] c"failed to assert reset: %d\0A\00", align 1
@.str.211 = private unnamed_addr constant [29 x i8] c"failed to acquire reset: %d\0A\00", align 1
@.str.212 = private unnamed_addr constant [30 x i8] c"failed to deassert reset: %d\0A\00", align 1
@tegra_clk_sor_pad_parents = internal constant [2 x [2 x ptr]] [[2 x ptr] [ptr @.str.213, ptr @.str.214], [2 x ptr] [ptr @.str.215, ptr @.str.214]], align 4
@tegra_clk_sor_pad_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_clk_sor_pad_set_parent, ptr @tegra_clk_sor_pad_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.213 = private unnamed_addr constant [11 x i8] c"pll_d_out0\00", align 1
@.str.214 = private unnamed_addr constant [7 x i8] c"pll_dp\00", align 1
@.str.215 = private unnamed_addr constant [12 x i8] c"pll_d2_out0\00", align 1
@.str.216 = private unnamed_addr constant [40 x i8] c"failed to unregister host1x client: %d\0A\00", align 1
@tegra194_sor = internal constant %struct.tegra_sor_soc { i8 0, i8 1, i8 1, i8 1, i8 1, ptr @tegra194_sor_regs, i8 1, ptr @tegra194_sor_hdmi_defaults, i32 5, ptr @tegra210_sor_xbar_cfg, ptr @tegra124_sor_lane_map, ptr @tegra186_sor_voltage_swing, ptr @tegra186_sor_pre_emphasis, ptr @tegra124_sor_post_cursor, ptr @tegra124_sor_tx_pu }, align 4
@tegra186_sor = internal constant %struct.tegra_sor_soc { i8 0, i8 1, i8 1, i8 1, i8 1, ptr @tegra186_sor_regs, i8 1, ptr @tegra186_sor_hdmi_defaults, i32 5, ptr @tegra124_sor_xbar_cfg, ptr @tegra124_sor_lane_map, ptr @tegra186_sor_voltage_swing, ptr @tegra186_sor_pre_emphasis, ptr @tegra124_sor_post_cursor, ptr @tegra124_sor_tx_pu }, align 4
@tegra210_sor1 = internal constant %struct.tegra_sor_soc { i8 0, i8 1, i8 1, i8 1, i8 1, ptr @tegra210_sor_regs, i8 0, ptr @tegra210_sor_hdmi_defaults, i32 5, ptr @tegra210_sor_xbar_cfg, ptr @tegra210_sor_lane_map, ptr @tegra124_sor_voltage_swing, ptr @tegra124_sor_pre_emphasis, ptr @tegra124_sor_post_cursor, ptr @tegra124_sor_tx_pu }, align 4
@tegra210_sor = internal constant %struct.tegra_sor_soc { i8 0, i8 0, i8 1, i8 0, i8 0, ptr @tegra210_sor_regs, i8 0, ptr null, i32 0, ptr @tegra210_sor_xbar_cfg, ptr @tegra210_sor_lane_map, ptr @tegra124_sor_voltage_swing, ptr @tegra124_sor_pre_emphasis, ptr @tegra124_sor_post_cursor, ptr @tegra124_sor_tx_pu }, align 4
@tegra132_sor = internal constant %struct.tegra_sor_soc { i8 1, i8 0, i8 1, i8 0, i8 0, ptr @tegra124_sor_regs, i8 0, ptr null, i32 0, ptr @tegra124_sor_xbar_cfg, ptr @tegra124_sor_lane_map, ptr @tegra124_sor_voltage_swing, ptr @tegra132_sor_pre_emphasis, ptr @tegra124_sor_post_cursor, ptr @tegra124_sor_tx_pu }, align 4
@tegra124_sor = internal constant %struct.tegra_sor_soc { i8 1, i8 0, i8 1, i8 0, i8 0, ptr @tegra124_sor_regs, i8 0, ptr null, i32 0, ptr @tegra124_sor_xbar_cfg, ptr @tegra124_sor_lane_map, ptr @tegra124_sor_voltage_swing, ptr @tegra124_sor_pre_emphasis, ptr @tegra124_sor_post_cursor, ptr @tegra124_sor_tx_pu }, align 4
@tegra194_sor_regs = internal constant %struct.tegra_sor_regs { i32 337, i32 341, i32 345, i32 349, i32 353, i32 357, i32 361, i32 362, i32 363, i32 364, i32 366, i32 367 }, align 4
@tegra194_sor_hdmi_defaults = internal constant [5 x %struct.tegra_sor_hdmi_settings] [%struct.tegra_sor_hdmi_settings { i32 54000000, i8 0, i8 5, i8 5, i8 3, i8 15, i8 0, i8 3, i8 8, i8 4, i8 4, i8 84, [4 x i8] c":::3", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 75000000, i8 1, i8 5, i8 5, i8 3, i8 15, i8 0, i8 3, i8 8, i8 4, i8 4, i8 68, [4 x i8] c":::3", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 150000000, i8 3, i8 5, i8 5, i8 3, i8 15, i8 102, i8 3, i8 8, i8 4, i8 4, i8 0, [4 x i8] c":::7", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 300000000, i8 3, i8 5, i8 5, i8 3, i8 15, i8 64, i8 3, i8 8, i8 4, i8 4, i8 52, [4 x i8] c"===3", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 600000000, i8 3, i8 5, i8 5, i8 3, i8 12, i8 96, i8 3, i8 8, i8 4, i8 4, i8 52, [4 x i8] c"===3", [4 x i8] zeroinitializer }], align 4
@tegra210_sor_xbar_cfg = internal constant [5 x i8] c"\02\01\00\03\04", align 1
@tegra124_sor_lane_map = internal constant [4 x i8] c"\02\01\00\03", align 1
@tegra186_sor_voltage_swing = internal constant [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\13\19\1E(", [4 x i8] c"\1E%-\00", [4 x i8] c"(2\00\00", [4 x i8] c"9\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\12\16\1B%", [4 x i8] c"\1C#*\00", [4 x i8] c"%/\00\00", [4 x i8] c"7\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\12\16\1A\22", [4 x i8] c"\1B '\00", [4 x i8] c"$-\00\00", [4 x i8] c"5\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\11\14\17\1F", [4 x i8] c"\19\1E$\00", [4 x i8] c"\22*\00\00", [4 x i8] c"2\00\00\00"]], align 1
@tegra186_sor_pre_emphasis = internal constant [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\00\08\12$", [4 x i8] c"\01\0E\1D\00", [4 x i8] c"\01\13\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\08\12$", [4 x i8] c"\00\0E\1D\00", [4 x i8] c"\00\13\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\08\14$", [4 x i8] c"\00\0E\1D\00", [4 x i8] c"\00\13\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\08\12$", [4 x i8] c"\00\0E\1D\00", [4 x i8] c"\00\13\00\00", [4 x i8] zeroinitializer]], align 1
@tegra124_sor_post_cursor = internal constant [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] zeroinitializer, [4 x [4 x i8]] [[4 x i8] c"\02\02\04\05", [4 x i8] c"\02\04\05\00", [4 x i8] c"\04\05\00\00", [4 x i8] c"\05\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\04\05\08\0B", [4 x i8] c"\05\09\0B\00", [4 x i8] c"\08\0A\00\00", [4 x i8] c"\0B\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\05\09\0B\12", [4 x i8] c"\09\0D\12\00", [4 x i8] c"\0B\0F\00\00", [4 x i8] c"\12\00\00\00"]], align 1
@tegra124_sor_tx_pu = internal constant [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c" 0@`", [4 x i8] c"0@`\00", [4 x i8] c"@`\00\00", [4 x i8] c"`\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"  0P", [4 x i8] c"0@P\00", [4 x i8] c"@P\00\00", [4 x i8] c"`\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"  0@", [4 x i8] c"00@\00", [4 x i8] c"@P\00\00", [4 x i8] c"`\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"   @", [4 x i8] c"00@\00", [4 x i8] c"@@\00\00", [4 x i8] c"`\00\00\00"]], align 1
@tegra186_sor_regs = internal constant %struct.tegra_sor_regs { i32 337, i32 340, i32 343, i32 346, i32 349, i32 352, i32 355, i32 356, i32 357, i32 358, i32 360, i32 362 }, align 4
@tegra186_sor_hdmi_defaults = internal constant [5 x %struct.tegra_sor_hdmi_settings] [%struct.tegra_sor_hdmi_settings { i32 54000000, i8 0, i8 5, i8 5, i8 3, i8 15, i8 0, i8 3, i8 8, i8 4, i8 4, i8 84, [4 x i8] c":::3", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 75000000, i8 1, i8 5, i8 5, i8 3, i8 15, i8 0, i8 3, i8 8, i8 4, i8 4, i8 68, [4 x i8] c":::3", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 150000000, i8 3, i8 5, i8 5, i8 3, i8 15, i8 102, i8 3, i8 8, i8 4, i8 4, i8 0, [4 x i8] c":::7", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 300000000, i8 3, i8 5, i8 5, i8 3, i8 15, i8 64, i8 3, i8 8, i8 4, i8 4, i8 52, [4 x i8] c"===3", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 600000000, i8 3, i8 5, i8 5, i8 3, i8 12, i8 96, i8 3, i8 8, i8 4, i8 4, i8 52, [4 x i8] c"===3", [4 x i8] zeroinitializer }], align 4
@tegra124_sor_xbar_cfg = internal constant [5 x i8] c"\00\01\02\03\04", align 1
@tegra210_sor_regs = internal constant %struct.tegra_sor_regs { i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 23, i32 24, i32 25, i32 26, i32 92, i32 115 }, align 4
@tegra210_sor_hdmi_defaults = internal constant [5 x %struct.tegra_sor_hdmi_settings] [%struct.tegra_sor_hdmi_settings { i32 54000000, i8 0, i8 0, i8 1, i8 3, i8 9, i8 16, i8 3, i8 8, i8 4, i8 4, i8 0, [4 x i8] c"3:::", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 75000000, i8 3, i8 0, i8 1, i8 3, i8 9, i8 64, i8 3, i8 8, i8 4, i8 4, i8 0, [4 x i8] c"3:::", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 150000000, i8 3, i8 0, i8 1, i8 3, i8 9, i8 102, i8 3, i8 8, i8 4, i8 4, i8 0, [4 x i8] c"3:::", [4 x i8] zeroinitializer }, %struct.tegra_sor_hdmi_settings { i32 300000000, i8 3, i8 0, i8 1, i8 3, i8 9, i8 102, i8 3, i8 10, i8 4, i8 4, i8 0, [4 x i8] c"3???", [4 x i8] c"\00\17\17\17" }, %struct.tegra_sor_hdmi_settings { i32 600000000, i8 3, i8 0, i8 1, i8 3, i8 9, i8 102, i8 3, i8 8, i8 4, i8 4, i8 0, [4 x i8] c"3???", [4 x i8] zeroinitializer }], align 4
@tegra210_sor_lane_map = internal constant [4 x i8] c"\00\01\02\03", align 1
@tegra124_sor_voltage_swing = internal constant [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\13\19\1E(", [4 x i8] c"\1E%-\00", [4 x i8] c"(2\00\00", [4 x i8] c"<\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\12\17\1B%", [4 x i8] c"\1C#*\00", [4 x i8] c"%/\00\00", [4 x i8] c"9\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\12\16\1A\22", [4 x i8] c"\1B '\00", [4 x i8] c"$-\00\00", [4 x i8] c"6\00\00\00"], [4 x [4 x i8]] [[4 x i8] c"\11\14\17\1F", [4 x i8] c"\19\1E$\00", [4 x i8] c"\22*\00\00", [4 x i8] c"2\00\00\00"]], align 1
@tegra124_sor_pre_emphasis = internal constant [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\00\09\13%", [4 x i8] c"\00\0F\1E\00", [4 x i8] c"\00\14\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\0A\14(", [4 x i8] c"\00\0F\1E\00", [4 x i8] c"\00\14\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\0A\14(", [4 x i8] c"\00\0F\1E\00", [4 x i8] c"\00\14\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\0A\14(", [4 x i8] c"\00\0F\1E\00", [4 x i8] c"\00\14\00\00", [4 x i8] zeroinitializer]], align 1
@tegra124_sor_regs = internal constant %struct.tegra_sor_regs { i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 23, i32 24, i32 25, i32 26, i32 92, i32 115 }, align 4
@tegra132_sor_pre_emphasis = internal constant [4 x [4 x [4 x i8]]] [[4 x [4 x i8]] [[4 x i8] c"\00\08\12$", [4 x i8] c"\01\0E\1D\00", [4 x i8] c"\01\13\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\08\12$", [4 x i8] c"\00\0E\1D\00", [4 x i8] c"\00\13\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\08\12$", [4 x i8] c"\00\0E\1D\00", [4 x i8] c"\00\13\00\00", [4 x i8] zeroinitializer], [4 x [4 x i8]] [[4 x i8] c"\00\08\12$", [4 x i8] c"\00\0E\1D\00", [4 x i8] c"\00\13\00\00", [4 x i8] zeroinitializer]], align 1
@.str.217 = private unnamed_addr constant [30 x i8] c"failed to suspend output: %d\0A\00", align 1
@.str.218 = private unnamed_addr constant [29 x i8] c"failed to resume output: %d\0A\00", align 1
@switch.table.tegra_sor_mode_set = private unnamed_addr constant [11 x i32] [i32 262144, i32 655360, i32 655360, i32 655360, i32 786432, i32 655360, i32 1048576, i32 655360, i32 655360, i32 655360, i32 1179648], align 4
@switch.table.tegra_sor_dp_link_apply_training = private unnamed_addr constant [3 x i32] [i32 16, i32 1, i32 2], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_probe(ptr noundef %0) #0 {
  %2 = alloca [5 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 1520, i32 noundef 3520) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %310, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @of_device_get_match_data(ptr noundef %6) #9
  %11 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 3
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 2
  store ptr %6, ptr %12, align 8
  %13 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 1
  %14 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 1, i32 1
  store ptr %6, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tegra_sor_soc, ptr %10, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tegra_sor_soc, ptr %10, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = mul i32 %18, 24
  %20 = tail call ptr @devm_kmemdup(ptr noundef %6, ptr noundef %16, i32 noundef %19, i32 noundef 3264) #9
  %21 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 20
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %310, label %23

23:                                               ; preds = %9
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr inbounds %struct.tegra_sor_soc, ptr %24, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 21
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %29 = load ptr, ptr %28, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #9, !annotation !8
  %30 = call i32 @__of_parse_phandle_with_args(ptr noundef %29, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #9
  %31 = icmp ne i32 %30, 0
  %32 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  %33 = icmp eq ptr %32, null
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %49, label %35

35:                                               ; preds = %23
  %36 = call ptr @drm_dp_aux_find_by_of_node(ptr noundef nonnull %32) #9
  %37 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 16
  store ptr %36, ptr %37, align 4
  call void @of_node_put(ptr noundef nonnull %32) #9
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %310, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.drm_dp_aux, ptr %38, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = call ptr @get_device(ptr noundef %42) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %37, align 4
  %47 = getelementptr inbounds %struct.drm_dp_aux, ptr %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 1, i32 4
  store ptr %47, ptr %48, align 8
  br label %49

49:                                               ; preds = %45, %40, %23
  %50 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 16
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load ptr, ptr %11, align 4
  %55 = getelementptr inbounds %struct.tegra_sor_soc, ptr %54, i32 0, i32 1
  %56 = load i8, ptr %55, align 1, !range !9
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 18
  store ptr @tegra_sor_hdmi_ops, ptr %59, align 4
  %60 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 19
  store i32 32, ptr %60, align 8
  br label %75

61:                                               ; preds = %53
  %62 = load i8, ptr %54, align 4, !range !9
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #10
  br label %310

65:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3) #10
  br label %310

66:                                               ; preds = %49
  %67 = load ptr, ptr %28, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #9, !annotation !8
  %68 = call i32 @__of_parse_phandle_with_args(ptr noundef %67, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #9
  %69 = icmp eq i32 %68, 0
  %70 = load ptr, ptr %4, align 4
  %71 = select i1 %69, ptr %70, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #9
  call void @of_node_put(ptr noundef %71) #9
  %72 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 18
  store ptr @tegra_sor_dp_ops, ptr %72, align 4
  %73 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 19
  store i32 39, ptr %73, align 8
  %74 = load ptr, ptr %11, align 4
  br label %75

75:                                               ; preds = %66, %58
  %76 = phi ptr [ %74, %66 ], [ %54, %58 ]
  %77 = load ptr, ptr %12, align 8
  %78 = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 25
  %79 = load ptr, ptr %78, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %80 = getelementptr inbounds %struct.tegra_sor_soc, ptr %76, i32 0, i32 6
  %81 = load i8, ptr %80, align 4, !range !9
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %75
  %84 = call i32 @of_property_read_variable_u32_array(ptr noundef %79, ptr noundef nonnull @.str.45, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %146, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr %3, align 4
  %88 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 5
  store i32 %87, ptr %88, align 4
  %89 = add i32 %87, 33
  %90 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 19
  store i32 %89, ptr %90, align 8
  br label %98

91:                                               ; preds = %75
  %92 = getelementptr inbounds %struct.tegra_sor_soc, ptr %76, i32 0, i32 3
  %93 = load i8, ptr %92, align 1, !range !9
  %94 = icmp eq i8 %93, 0
  %95 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 5
  br i1 %94, label %96, label %97

96:                                               ; preds = %91
  store i32 0, ptr %95, align 4
  br label %98

97:                                               ; preds = %91
  store i32 1, ptr %95, align 4
  br label %98

98:                                               ; preds = %97, %96, %86
  %99 = call i32 @of_property_read_variable_u32_array(ptr noundef %79, ptr noundef nonnull @.str.46, ptr noundef nonnull %2, i32 noundef 5, i32 noundef 0) #9
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %120, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr %2, align 4
  %103 = trunc i32 %102 to i8
  %104 = getelementptr %struct.tegra_sor, ptr %7, i32 0, i32 14, i32 0
  store i8 %103, ptr %104, align 1
  %105 = getelementptr inbounds [5 x i32], ptr %2, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = trunc i32 %106 to i8
  %108 = getelementptr %struct.tegra_sor, ptr %7, i32 0, i32 14, i32 1
  store i8 %107, ptr %108, align 1
  %109 = getelementptr inbounds [5 x i32], ptr %2, i32 0, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = trunc i32 %110 to i8
  %112 = getelementptr %struct.tegra_sor, ptr %7, i32 0, i32 14, i32 2
  store i8 %111, ptr %112, align 1
  %113 = getelementptr inbounds [5 x i32], ptr %2, i32 0, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = trunc i32 %114 to i8
  %116 = getelementptr %struct.tegra_sor, ptr %7, i32 0, i32 14, i32 3
  store i8 %115, ptr %116, align 1
  %117 = getelementptr inbounds [5 x i32], ptr %2, i32 0, i32 4
  %118 = load i32, ptr %117, align 4
  %119 = trunc i32 %118 to i8
  br label %141

120:                                              ; preds = %98
  %121 = load ptr, ptr %11, align 4
  %122 = getelementptr inbounds %struct.tegra_sor_soc, ptr %121, i32 0, i32 9
  %123 = load ptr, ptr %122, align 4
  %124 = load i8, ptr %123, align 1
  %125 = getelementptr %struct.tegra_sor, ptr %7, i32 0, i32 14, i32 0
  store i8 %124, ptr %125, align 1
  %126 = load ptr, ptr %122, align 4
  %127 = getelementptr i8, ptr %126, i32 1
  %128 = load i8, ptr %127, align 1
  %129 = getelementptr %struct.tegra_sor, ptr %7, i32 0, i32 14, i32 1
  store i8 %128, ptr %129, align 1
  %130 = load ptr, ptr %122, align 4
  %131 = getelementptr i8, ptr %130, i32 2
  %132 = load i8, ptr %131, align 1
  %133 = getelementptr %struct.tegra_sor, ptr %7, i32 0, i32 14, i32 2
  store i8 %132, ptr %133, align 1
  %134 = load ptr, ptr %122, align 4
  %135 = getelementptr i8, ptr %134, i32 3
  %136 = load i8, ptr %135, align 1
  %137 = getelementptr %struct.tegra_sor, ptr %7, i32 0, i32 14, i32 3
  store i8 %136, ptr %137, align 1
  %138 = load ptr, ptr %122, align 4
  %139 = getelementptr i8, ptr %138, i32 4
  %140 = load i8, ptr %139, align 1
  br label %141

141:                                              ; preds = %120, %101
  %142 = phi i8 [ %119, %101 ], [ %140, %120 ]
  %143 = getelementptr %struct.tegra_sor, ptr %7, i32 0, i32 14, i32 4
  store i8 %142, ptr %143, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  %144 = call i32 @tegra_output_probe(ptr noundef %13) #9
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %147, label %149

146:                                              ; preds = %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  br label %303

147:                                              ; preds = %141
  %148 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef %144, ptr noundef nonnull @.str.5) #9
  br label %303

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 18
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %163, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.tegra_sor_ops, ptr %151, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %163, label %157

157:                                              ; preds = %153
  %158 = call i32 %155(ptr noundef nonnull %7) #9
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load ptr, ptr %150, align 4
  %162 = load ptr, ptr %161, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef %162, i32 noundef %158) #10
  br label %296

163:                                              ; preds = %157, %153, %149
  %164 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %165 = call ptr @devm_ioremap_resource(ptr noundef %6, ptr noundef %164) #9
  %166 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 4
  store ptr %165, ptr %166, align 8
  %167 = icmp ugt ptr %165, inttoptr (i32 -4096 to ptr)
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = ptrtoint ptr %165 to i32
  br label %296

170:                                              ; preds = %163
  %171 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %171) #10
  br label %296

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 6
  store i32 %171, ptr %175, align 8
  %176 = load ptr, ptr %12, align 8
  %177 = getelementptr inbounds %struct.device, ptr %176, i32 0, i32 3
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load ptr, ptr %176, align 4
  br label %182

182:                                              ; preds = %180, %174
  %183 = phi ptr [ %181, %180 ], [ %178, %174 ]
  %184 = call i32 @devm_request_threaded_irq(ptr noundef %176, i32 noundef %171, ptr noundef nonnull @tegra_sor_irq, ptr noundef null, i32 noundef 0, ptr noundef %183, ptr noundef nonnull %7) #9
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8, i32 noundef %184) #10
  br label %296

187:                                              ; preds = %182
  %188 = call ptr @__devm_reset_control_get(ptr noundef %6, ptr noundef nonnull @.str.9, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %189 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 7
  store ptr %188, ptr %189, align 4
  %190 = icmp ugt ptr %188, inttoptr (i32 -4096 to ptr)
  br i1 %190, label %191, label %201

191:                                              ; preds = %187
  %192 = ptrtoint ptr %188 to i32
  %193 = icmp eq ptr %188, inttoptr (i32 -16 to ptr)
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 12
  %196 = load ptr, ptr %195, align 8
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %200, !prof !10

198:                                              ; preds = %194
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 3820, i32 noundef 9, ptr noundef null) #9
  br label %199

199:                                              ; preds = %198, %191
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11, i32 noundef %192) #10
  br label %296

200:                                              ; preds = %194
  store ptr null, ptr %189, align 4
  br label %201

201:                                              ; preds = %200, %187
  %202 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef null) #9
  %203 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 13
  store ptr %202, ptr %203, align 4
  %204 = icmp ugt ptr %202, inttoptr (i32 -4096 to ptr)
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = ptrtoint ptr %202 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.12, i32 noundef %206) #10
  br label %296

207:                                              ; preds = %201
  %208 = load ptr, ptr %11, align 4
  %209 = getelementptr inbounds %struct.tegra_sor_soc, ptr %208, i32 0, i32 1
  %210 = load i8, ptr %209, align 1, !range !9
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.tegra_sor_soc, ptr %208, i32 0, i32 2
  %214 = load i8, ptr %213, align 2, !range !9
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %227, label %216

216:                                              ; preds = %212, %207
  %217 = load ptr, ptr %28, align 8
  %218 = call i32 @of_property_match_string(ptr noundef %217, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #9
  %219 = icmp slt i32 %218, 0
  %220 = select i1 %219, ptr @.str.15, ptr @.str.14
  %221 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull %220) #9
  %222 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 10
  store ptr %221, ptr %222, align 8
  %223 = icmp ugt ptr %221, inttoptr (i32 -4096 to ptr)
  br i1 %223, label %224, label %229

224:                                              ; preds = %216
  %225 = ptrtoint ptr %221 to i32
  %226 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %226, ptr noundef nonnull @.str.16, ptr noundef nonnull %220, i32 noundef %225) #10
  br label %296

227:                                              ; preds = %212
  %228 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 10
  store ptr %202, ptr %228, align 8
  br label %229

229:                                              ; preds = %227, %216
  %230 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.17) #9
  %231 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 8
  store ptr %230, ptr %231, align 8
  %232 = icmp ugt ptr %230, inttoptr (i32 -4096 to ptr)
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = ptrtoint ptr %230 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18, i32 noundef %234) #10
  br label %296

235:                                              ; preds = %229
  %236 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.19) #9
  %237 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 9
  store ptr %236, ptr %237, align 4
  %238 = icmp ugt ptr %236, inttoptr (i32 -4096 to ptr)
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = ptrtoint ptr %236 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.20, i32 noundef %240) #10
  br label %296

241:                                              ; preds = %235
  %242 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.21) #9
  %243 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 12
  store ptr %242, ptr %243, align 8
  %244 = icmp ugt ptr %242, inttoptr (i32 -4096 to ptr)
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = ptrtoint ptr %242 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.22, i32 noundef %246) #10
  br label %296

247:                                              ; preds = %241
  %248 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.23) #9
  %249 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 11
  store ptr %248, ptr %249, align 4
  %250 = icmp ugt ptr %248, inttoptr (i32 -4096 to ptr)
  br i1 %250, label %251, label %256

251:                                              ; preds = %247
  %252 = icmp eq ptr %248, inttoptr (i32 -2 to ptr)
  br i1 %252, label %255, label %253

253:                                              ; preds = %251
  %254 = ptrtoint ptr %248 to i32
  br label %296

255:                                              ; preds = %251
  store ptr null, ptr %249, align 4
  br label %256

256:                                              ; preds = %255, %247
  %257 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 10
  %258 = load ptr, ptr %257, align 8
  %259 = load ptr, ptr %237, align 4
  %260 = call i32 @clk_set_parent(ptr noundef %258, ptr noundef %259) #9
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %256
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.24, i32 noundef %260) #10
  br label %296

263:                                              ; preds = %256
  %264 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %264, align 8
  call void @pm_runtime_enable(ptr noundef %6) #9
  call void @__host1x_client_init(ptr noundef nonnull %7, ptr noundef nonnull @tegra_sor_probe.__key) #9
  %265 = getelementptr inbounds %struct.host1x_client, ptr %7, i32 0, i32 4
  store ptr @sor_client_ops, ptr %265, align 4
  %266 = getelementptr inbounds %struct.host1x_client, ptr %7, i32 0, i32 2
  store ptr %6, ptr %266, align 4
  %267 = load ptr, ptr %249, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %284

269:                                              ; preds = %263
  %270 = load ptr, ptr %12, align 8
  %271 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 5
  %272 = load i32, ptr %271, align 4
  %273 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %270, i32 noundef 3264, ptr noundef nonnull @.str.25, i32 noundef %272) #9
  %274 = icmp eq ptr %273, null
  br i1 %274, label %294, label %275

275:                                              ; preds = %269
  %276 = call i32 @host1x_client_resume(ptr noundef nonnull %7) #9
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %275
  %279 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %279, ptr noundef nonnull @.str.26, i32 noundef %276) #10
  br label %294

280:                                              ; preds = %275
  %281 = call fastcc ptr @tegra_clk_sor_pad_register(ptr noundef nonnull %7, ptr noundef nonnull %273)
  store ptr %281, ptr %249, align 4
  %282 = call i32 @host1x_client_suspend(ptr noundef nonnull %7) #9
  %283 = load ptr, ptr %249, align 4
  br label %284

284:                                              ; preds = %280, %263
  %285 = phi ptr [ %283, %280 ], [ %267, %263 ]
  %286 = icmp ugt ptr %285, inttoptr (i32 -4096 to ptr)
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = ptrtoint ptr %285 to i32
  %289 = load ptr, ptr %12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %289, ptr noundef nonnull @.str.27, i32 noundef %288) #10
  br label %294

290:                                              ; preds = %284
  %291 = call i32 @__host1x_client_register(ptr noundef nonnull %7) #9
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %310

293:                                              ; preds = %290
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28, i32 noundef %291) #10
  br label %294

294:                                              ; preds = %293, %287, %278, %269
  %295 = phi i32 [ %288, %287 ], [ %291, %293 ], [ -12, %269 ], [ %276, %278 ]
  call void @host1x_client_exit(ptr noundef nonnull %7) #9
  call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #9
  br label %296

296:                                              ; preds = %294, %262, %253, %245, %239, %233, %224, %205, %199, %186, %173, %168, %160
  %297 = phi i32 [ %158, %160 ], [ %169, %168 ], [ %171, %173 ], [ %184, %186 ], [ %192, %199 ], [ %206, %205 ], [ %225, %224 ], [ %234, %233 ], [ %240, %239 ], [ %246, %245 ], [ %254, %253 ], [ %260, %262 ], [ %295, %294 ]
  %298 = load ptr, ptr %50, align 4
  %299 = icmp eq ptr %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.tegra_sor, ptr %7, i32 0, i32 1, i32 4
  store ptr null, ptr %301, align 8
  br label %302

302:                                              ; preds = %300, %296
  call void @tegra_output_remove(ptr noundef %13) #9
  br label %303

303:                                              ; preds = %302, %147, %146
  %304 = phi i32 [ %84, %146 ], [ %144, %147 ], [ %297, %302 ]
  %305 = load ptr, ptr %50, align 4
  %306 = icmp eq ptr %305, null
  br i1 %306, label %310, label %307

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.drm_dp_aux, ptr %305, i32 0, i32 2
  %309 = load ptr, ptr %308, align 8
  call void @put_device(ptr noundef %309) #9
  br label %310

310:                                              ; preds = %307, %303, %290, %65, %64, %35, %9, %1
  %311 = phi i32 [ -19, %64 ], [ -19, %65 ], [ -12, %1 ], [ -12, %9 ], [ -517, %35 ], [ 0, %290 ], [ %304, %307 ], [ %304, %303 ]
  ret i32 %311
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @host1x_client_unregister(ptr noundef %3) #9
  %5 = icmp slt i32 %4, 0
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br i1 %5, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.216, i32 noundef %4) #10
  br label %18

8:                                                ; preds = %1
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #9
  %9 = getelementptr inbounds %struct.tegra_sor, ptr %3, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drm_dp_aux, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  tail call void @put_device(ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.tegra_sor, ptr %3, i32 0, i32 1, i32 4
  store ptr null, ptr %15, align 8
  br label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.tegra_sor, ptr %3, i32 0, i32 1
  tail call void @tegra_output_remove(ptr noundef %17) #9
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi i32 [ %4, %7 ], [ 0, %16 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dp_aux_find_by_of_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 1136
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %7 = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = tail call ptr @llvm.thread.pointer() #9
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %23 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %8, i32 noundef 284, i32 noundef %6) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %24 = load ptr, ptr %7, align 8
  br label %25

25:                                               ; preds = %22, %11, %2
  %26 = phi ptr [ %8, %2 ], [ %8, %11 ], [ %24, %22 ]
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = tail call ptr @llvm.thread.pointer() #9
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %41 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %26, i32 noundef 284, i32 noundef %6) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %42

42:                                               ; preds = %40, %29, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr i8, ptr %43, i32 1136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %6) #9, !srcloc !18
  %45 = and i32 %6, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %86, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr i8, ptr %48, i32 1064
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %51 = load ptr, ptr %7, align 8
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
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
  %66 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %51, i32 noundef 266, i32 noundef %50) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %67

67:                                               ; preds = %65, %54, %47
  %68 = and i32 %50, 1073741824
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = and i32 %50, 65535
  %72 = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 27
  tail call void @tegra_hda_parse_format(i32 noundef %71, ptr noundef %72) #9
  %73 = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 18
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.tegra_sor_ops, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %86, label %84

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.tegra_sor, ptr %1, i32 0, i32 18
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.tegra_sor_ops, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %78, %70
  %85 = phi ptr [ %76, %70 ], [ %82, %78 ]
  tail call void %85(ptr noundef %1) #9
  br label %86

86:                                               ; preds = %84, %78, %70, %42
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @tegra_clk_sor_pad_register(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #9
  %4 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 12, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 16, i32 noundef 3520) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tegra_clk_sor_pad, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  store ptr %1, ptr %3, align 4
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 6
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr [2 x [2 x ptr]], ptr @tegra_clk_sor_pad_parents, i32 0, i32 %13
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  store ptr @tegra_clk_sor_pad_ops, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_hw, ptr %7, i32 0, i32 2
  store ptr %3, ptr %18, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = call ptr @devm_clk_register(ptr noundef %19, ptr noundef nonnull %7) #9
  br label %21

21:                                               ; preds = %9, %2
  %22 = phi ptr [ %20, %9 ], [ inttoptr (i32 -12 to ptr), %2 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #9
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_client_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_hdmi_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.30) #9
  %5 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 22
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = ptrtoint ptr %4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.31, i32 noundef %9) #10
  %10 = load ptr, ptr %5, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %80

12:                                               ; preds = %1
  %13 = tail call i32 @regulator_enable(ptr noundef %4) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8
  %17 = tail call i32 @devm_add_action(ptr noundef %16, ptr noundef nonnull @tegra_sor_disable_regulator, ptr noundef %4) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @regulator_disable(ptr noundef %4) #9
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i32 [ %13, %12 ], [ %17, %19 ]
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.32, i32 noundef %22) #10
  br label %80

26:                                               ; preds = %21, %15
  %27 = load ptr, ptr %2, align 8
  %28 = tail call ptr @devm_regulator_get(ptr noundef %27, ptr noundef nonnull @.str.33) #9
  %29 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 23
  store ptr %28, ptr %29, align 8
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load ptr, ptr %2, align 8
  %33 = ptrtoint ptr %28 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.34, i32 noundef %33) #10
  %34 = load ptr, ptr %29, align 8
  %35 = ptrtoint ptr %34 to i32
  br label %80

36:                                               ; preds = %26
  %37 = tail call i32 @regulator_enable(ptr noundef %28) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load ptr, ptr %2, align 8
  %41 = tail call i32 @devm_add_action(ptr noundef %40, ptr noundef nonnull @tegra_sor_disable_regulator, ptr noundef %28) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @regulator_disable(ptr noundef %28) #9
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi i32 [ %37, %36 ], [ %41, %43 ]
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.35, i32 noundef %46) #10
  br label %80

50:                                               ; preds = %45, %39
  %51 = load ptr, ptr %2, align 8
  %52 = tail call ptr @devm_regulator_get(ptr noundef %51, ptr noundef nonnull @.str.36) #9
  %53 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 24
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load ptr, ptr %2, align 8
  %57 = ptrtoint ptr %52 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.37, i32 noundef %57) #10
  %58 = load ptr, ptr %53, align 4
  %59 = ptrtoint ptr %58 to i32
  br label %80

60:                                               ; preds = %50
  %61 = tail call i32 @regulator_enable(ptr noundef %52) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load ptr, ptr %2, align 8
  %65 = tail call i32 @devm_add_action(ptr noundef %64, ptr noundef nonnull @tegra_sor_disable_regulator, ptr noundef %52) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = tail call i32 @regulator_disable(ptr noundef %52) #9
  br label %69

69:                                               ; preds = %67, %60
  %70 = phi i32 [ %61, %60 ], [ %65, %67 ]
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.38, i32 noundef %70) #10
  br label %80

74:                                               ; preds = %69, %63
  %75 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 25
  store i32 -32, ptr %75, align 8
  %76 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 25, i32 0, i32 1
  store volatile ptr %76, ptr %76, align 4
  %77 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 25, i32 0, i32 1, i32 1
  store ptr %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 25, i32 0, i32 2
  store ptr @tegra_sor_hdmi_scdc_work, ptr %78, align 4
  %79 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 25, i32 1
  tail call void @init_timer_key(ptr noundef %79, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #9
  br label %80

80:                                               ; preds = %74, %72, %55, %48, %31, %24, %7
  %81 = phi i32 [ %11, %7 ], [ %22, %24 ], [ %35, %31 ], [ %46, %48 ], [ %59, %55 ], [ %70, %72 ], [ 0, %74 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sor_hdmi_audio_enable(ptr noundef readonly %0) #0 {
  %2 = alloca [14 x i8], align 1
  %3 = alloca %struct.hdmi_audio_infoframe, align 4
  %4 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 1008
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %8 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = tail call ptr @llvm.thread.pointer() #9
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %24 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %9, i32 noundef 252, i32 noundef %7) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %25 = load ptr, ptr %8, align 8
  br label %26

26:                                               ; preds = %23, %12, %1
  %27 = phi ptr [ %9, %1 ], [ %9, %12 ], [ %25, %23 ]
  %28 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 27, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 2
  %31 = and i32 %7, -540020737
  %32 = select i1 %30, i32 538968064, i32 2097152
  %33 = or i32 %31, %32
  %34 = or i32 %33, 4096
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %26
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %49 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %27, i32 noundef 252, i32 noundef %34) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %50

50:                                               ; preds = %48, %37, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %51 = load ptr, ptr %4, align 8
  %52 = getelementptr i8, ptr %51, i32 1008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %34) #9, !srcloc !18
  %53 = load ptr, ptr %8, align 8
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = tail call ptr @llvm.thread.pointer() #9
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, 5
  %61 = getelementptr i32, ptr @__cpu_online_mask, i32 %60
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %59, 31
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %68 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %53, i32 noundef 254, i32 noundef 134217728) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %69

69:                                               ; preds = %67, %56, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %70 = load ptr, ptr %4, align 8
  %71 = getelementptr i8, ptr %70, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 134217728) #9, !srcloc !18
  %72 = load ptr, ptr %8, align 8
  %73 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = tail call ptr @llvm.thread.pointer() #9
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = lshr i32 %78, 5
  %80 = getelementptr i32, ptr @__cpu_online_mask, i32 %79
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %78, 31
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, %81
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %75
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %87 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %72, i32 noundef 177, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %88

88:                                               ; preds = %86, %75, %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %89 = load ptr, ptr %4, align 8
  %90 = getelementptr i8, ptr %89, i32 708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 0) #9, !srcloc !18
  %91 = load ptr, ptr %8, align 8
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = tail call ptr @llvm.thread.pointer() #9
  %96 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %97 = load i32, ptr %96, align 8
  %98 = lshr i32 %97, 5
  %99 = getelementptr i32, ptr @__cpu_online_mask, i32 %98
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %97, 31
  %102 = shl nuw i32 1, %101
  %103 = and i32 %102, %100
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %94
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %106 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %91, i32 noundef 203, i32 noundef -2147418111) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %107

107:                                              ; preds = %105, %94, %88
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %108 = load ptr, ptr %4, align 8
  %109 = getelementptr i8, ptr %108, i32 812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 -2147418111) #9, !srcloc !18
  %110 = load ptr, ptr %8, align 8
  %111 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %107
  %114 = tail call ptr @llvm.thread.pointer() #9
  %115 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %116 = load i32, ptr %115, align 8
  %117 = lshr i32 %116, 5
  %118 = getelementptr i32, ptr @__cpu_online_mask, i32 %117
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %116, 31
  %121 = shl nuw i32 1, %120
  %122 = and i32 %121, %119
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %113
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %125 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %110, i32 noundef 180, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %126

126:                                              ; preds = %124, %113, %107
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %127 = load ptr, ptr %4, align 8
  %128 = getelementptr i8, ptr %127, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 0) #9, !srcloc !18
  %129 = load ptr, ptr %8, align 8
  %130 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %126
  %133 = tail call ptr @llvm.thread.pointer() #9
  %134 = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 2
  %135 = load i32, ptr %134, align 8
  %136 = lshr i32 %135, 5
  %137 = getelementptr i32, ptr @__cpu_online_mask, i32 %136
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %135, 31
  %140 = shl nuw i32 1, %139
  %141 = and i32 %140, %138
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %132
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %144 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %129, i32 noundef 181, i32 noundef -2147483648) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %145

145:                                              ; preds = %143, %132, %126
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %146 = load ptr, ptr %4, align 8
  %147 = getelementptr i8, ptr %146, i32 724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 -2147483648) #9, !srcloc !18
  %148 = load ptr, ptr %8, align 8
  %149 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %145
  %152 = tail call ptr @llvm.thread.pointer() #9
  %153 = getelementptr inbounds %struct.thread_info, ptr %152, i32 0, i32 2
  %154 = load i32, ptr %153, align 8
  %155 = lshr i32 %154, 5
  %156 = getelementptr i32, ptr @__cpu_online_mask, i32 %155
  %157 = load volatile i32, ptr %156, align 4
  %158 = and i32 %154, 31
  %159 = shl nuw i32 1, %158
  %160 = and i32 %159, %157
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %151
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %163 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %148, i32 noundef 316, i32 noundef 269484032) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %164

164:                                              ; preds = %162, %151, %145
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %165 = load ptr, ptr %4, align 8
  %166 = getelementptr i8, ptr %165, i32 1264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 269484032) #9, !srcloc !18
  %167 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 27
  %168 = load i32, ptr %167, align 8
  %169 = shl i32 %168, 7
  %170 = udiv i32 %169, 1000
  %171 = udiv i32 98304000, %170
  %172 = load ptr, ptr %8, align 8
  %173 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %188

175:                                              ; preds = %164
  %176 = tail call ptr @llvm.thread.pointer() #9
  %177 = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 2
  %178 = load i32, ptr %177, align 8
  %179 = lshr i32 %178, 5
  %180 = getelementptr i32, ptr @__cpu_online_mask, i32 %179
  %181 = load volatile i32, ptr %180, align 4
  %182 = and i32 %178, 31
  %183 = shl nuw i32 1, %182
  %184 = and i32 %183, %181
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %175
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %187 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %172, i32 noundef 271, i32 noundef %171) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %188

188:                                              ; preds = %186, %175, %164
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %189 = load ptr, ptr %4, align 8
  %190 = getelementptr i8, ptr %189, i32 1084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %171) #9, !srcloc !18
  %191 = load ptr, ptr %8, align 8
  %192 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %188
  %195 = tail call ptr @llvm.thread.pointer() #9
  %196 = getelementptr inbounds %struct.thread_info, ptr %195, i32 0, i32 2
  %197 = load i32, ptr %196, align 8
  %198 = lshr i32 %197, 5
  %199 = getelementptr i32, ptr @__cpu_online_mask, i32 %198
  %200 = load volatile i32, ptr %199, align 4
  %201 = and i32 %197, 31
  %202 = shl nuw i32 1, %201
  %203 = and i32 %202, %200
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %194
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %206 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %191, i32 noundef 255, i32 noundef 4096) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %207

207:                                              ; preds = %205, %194, %188
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %208 = load ptr, ptr %4, align 8
  %209 = getelementptr i8, ptr %208, i32 1020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 4096) #9, !srcloc !18
  %210 = load ptr, ptr %8, align 8
  %211 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %207
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %225 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %210, i32 noundef 272, i32 noundef 20000) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %226

226:                                              ; preds = %224, %213, %207
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %227 = load ptr, ptr %4, align 8
  %228 = getelementptr i8, ptr %227, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 20000) #9, !srcloc !18
  %229 = load ptr, ptr %8, align 8
  %230 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %245

232:                                              ; preds = %226
  %233 = tail call ptr @llvm.thread.pointer() #9
  %234 = getelementptr inbounds %struct.thread_info, ptr %233, i32 0, i32 2
  %235 = load i32, ptr %234, align 8
  %236 = lshr i32 %235, 5
  %237 = getelementptr i32, ptr @__cpu_online_mask, i32 %236
  %238 = load volatile i32, ptr %237, align 4
  %239 = and i32 %235, 31
  %240 = shl nuw i32 1, %239
  %241 = and i32 %240, %238
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %232
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %244 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %229, i32 noundef 256, i32 noundef 4704) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %245

245:                                              ; preds = %243, %232, %226
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %246 = load ptr, ptr %4, align 8
  %247 = getelementptr i8, ptr %246, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 4704) #9, !srcloc !18
  %248 = load ptr, ptr %8, align 8
  %249 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %245
  %252 = tail call ptr @llvm.thread.pointer() #9
  %253 = getelementptr inbounds %struct.thread_info, ptr %252, i32 0, i32 2
  %254 = load i32, ptr %253, align 8
  %255 = lshr i32 %254, 5
  %256 = getelementptr i32, ptr @__cpu_online_mask, i32 %255
  %257 = load volatile i32, ptr %256, align 4
  %258 = and i32 %254, 31
  %259 = shl nuw i32 1, %258
  %260 = and i32 %259, %257
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %251
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %263 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %248, i32 noundef 273, i32 noundef 20000) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %264

264:                                              ; preds = %262, %251, %245
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %265 = load ptr, ptr %4, align 8
  %266 = getelementptr i8, ptr %265, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 20000) #9, !srcloc !18
  %267 = load ptr, ptr %8, align 8
  %268 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %283

270:                                              ; preds = %264
  %271 = tail call ptr @llvm.thread.pointer() #9
  %272 = getelementptr inbounds %struct.thread_info, ptr %271, i32 0, i32 2
  %273 = load i32, ptr %272, align 8
  %274 = lshr i32 %273, 5
  %275 = getelementptr i32, ptr @__cpu_online_mask, i32 %274
  %276 = load volatile i32, ptr %275, align 4
  %277 = and i32 %273, 31
  %278 = shl nuw i32 1, %277
  %279 = and i32 %278, %276
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %283, label %281

281:                                              ; preds = %270
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %282 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %267, i32 noundef 257, i32 noundef 9408) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %283

283:                                              ; preds = %281, %270, %264
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %284 = load ptr, ptr %4, align 8
  %285 = getelementptr i8, ptr %284, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %285, i32 9408) #9, !srcloc !18
  %286 = load ptr, ptr %8, align 8
  %287 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %289, label %302

289:                                              ; preds = %283
  %290 = tail call ptr @llvm.thread.pointer() #9
  %291 = getelementptr inbounds %struct.thread_info, ptr %290, i32 0, i32 2
  %292 = load i32, ptr %291, align 8
  %293 = lshr i32 %292, 5
  %294 = getelementptr i32, ptr @__cpu_online_mask, i32 %293
  %295 = load volatile i32, ptr %294, align 4
  %296 = and i32 %292, 31
  %297 = shl nuw i32 1, %296
  %298 = and i32 %297, %295
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %289
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %301 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %286, i32 noundef 274, i32 noundef 20000) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %302

302:                                              ; preds = %300, %289, %283
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %303 = load ptr, ptr %4, align 8
  %304 = getelementptr i8, ptr %303, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %304, i32 20000) #9, !srcloc !18
  %305 = load ptr, ptr %8, align 8
  %306 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %307 = icmp sgt i32 %306, 0
  br i1 %307, label %308, label %321

308:                                              ; preds = %302
  %309 = tail call ptr @llvm.thread.pointer() #9
  %310 = getelementptr inbounds %struct.thread_info, ptr %309, i32 0, i32 2
  %311 = load i32, ptr %310, align 8
  %312 = lshr i32 %311, 5
  %313 = getelementptr i32, ptr @__cpu_online_mask, i32 %312
  %314 = load volatile i32, ptr %313, align 4
  %315 = and i32 %311, 31
  %316 = shl nuw i32 1, %315
  %317 = and i32 %316, %314
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %321, label %319

319:                                              ; preds = %308
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %320 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %305, i32 noundef 258, i32 noundef 18816) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %321

321:                                              ; preds = %319, %308, %302
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %322 = load ptr, ptr %4, align 8
  %323 = getelementptr i8, ptr %322, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 18816) #9, !srcloc !18
  %324 = load i32, ptr %167, align 8
  %325 = shl i32 %324, 7
  %326 = udiv i32 %325, 1000
  %327 = udiv i32 147456000, %326
  %328 = load ptr, ptr %8, align 8
  %329 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %330 = icmp sgt i32 %329, 0
  br i1 %330, label %331, label %344

331:                                              ; preds = %321
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %343 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %328, i32 noundef 275, i32 noundef %327) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %344

344:                                              ; preds = %342, %331, %321
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %345 = load ptr, ptr %4, align 8
  %346 = getelementptr i8, ptr %345, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %346, i32 %327) #9, !srcloc !18
  %347 = load ptr, ptr %8, align 8
  %348 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %363

350:                                              ; preds = %344
  %351 = tail call ptr @llvm.thread.pointer() #9
  %352 = getelementptr inbounds %struct.thread_info, ptr %351, i32 0, i32 2
  %353 = load i32, ptr %352, align 8
  %354 = lshr i32 %353, 5
  %355 = getelementptr i32, ptr @__cpu_online_mask, i32 %354
  %356 = load volatile i32, ptr %355, align 4
  %357 = and i32 %353, 31
  %358 = shl nuw i32 1, %357
  %359 = and i32 %358, %356
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %363, label %361

361:                                              ; preds = %350
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %362 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %347, i32 noundef 259, i32 noundef 6144) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %363

363:                                              ; preds = %361, %350, %344
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %364 = load ptr, ptr %4, align 8
  %365 = getelementptr i8, ptr %364, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %365, i32 6144) #9, !srcloc !18
  %366 = load i32, ptr %167, align 8
  %367 = shl i32 %366, 7
  %368 = udiv i32 %367, 1000
  %369 = udiv i32 294912000, %368
  %370 = load ptr, ptr %8, align 8
  %371 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %372 = icmp sgt i32 %371, 0
  br i1 %372, label %373, label %386

373:                                              ; preds = %363
  %374 = tail call ptr @llvm.thread.pointer() #9
  %375 = getelementptr inbounds %struct.thread_info, ptr %374, i32 0, i32 2
  %376 = load i32, ptr %375, align 8
  %377 = lshr i32 %376, 5
  %378 = getelementptr i32, ptr @__cpu_online_mask, i32 %377
  %379 = load volatile i32, ptr %378, align 4
  %380 = and i32 %376, 31
  %381 = shl nuw i32 1, %380
  %382 = and i32 %381, %379
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %386, label %384

384:                                              ; preds = %373
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %385 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %370, i32 noundef 276, i32 noundef %369) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %386

386:                                              ; preds = %384, %373, %363
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %387 = load ptr, ptr %4, align 8
  %388 = getelementptr i8, ptr %387, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %388, i32 %369) #9, !srcloc !18
  %389 = load ptr, ptr %8, align 8
  %390 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %391 = icmp sgt i32 %390, 0
  br i1 %391, label %392, label %405

392:                                              ; preds = %386
  %393 = tail call ptr @llvm.thread.pointer() #9
  %394 = getelementptr inbounds %struct.thread_info, ptr %393, i32 0, i32 2
  %395 = load i32, ptr %394, align 8
  %396 = lshr i32 %395, 5
  %397 = getelementptr i32, ptr @__cpu_online_mask, i32 %396
  %398 = load volatile i32, ptr %397, align 4
  %399 = and i32 %395, 31
  %400 = shl nuw i32 1, %399
  %401 = and i32 %400, %398
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %405, label %403

403:                                              ; preds = %392
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %404 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %389, i32 noundef 260, i32 noundef 12288) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %405

405:                                              ; preds = %403, %392, %386
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %406 = load ptr, ptr %4, align 8
  %407 = getelementptr i8, ptr %406, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %407, i32 12288) #9, !srcloc !18
  %408 = load i32, ptr %167, align 8
  %409 = shl i32 %408, 7
  %410 = udiv i32 %409, 1000
  %411 = udiv i32 589824000, %410
  %412 = load ptr, ptr %8, align 8
  %413 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %414 = icmp sgt i32 %413, 0
  br i1 %414, label %415, label %428

415:                                              ; preds = %405
  %416 = tail call ptr @llvm.thread.pointer() #9
  %417 = getelementptr inbounds %struct.thread_info, ptr %416, i32 0, i32 2
  %418 = load i32, ptr %417, align 8
  %419 = lshr i32 %418, 5
  %420 = getelementptr i32, ptr @__cpu_online_mask, i32 %419
  %421 = load volatile i32, ptr %420, align 4
  %422 = and i32 %418, 31
  %423 = shl nuw i32 1, %422
  %424 = and i32 %423, %421
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %428, label %426

426:                                              ; preds = %415
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %427 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %412, i32 noundef 277, i32 noundef %411) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %428

428:                                              ; preds = %426, %415, %405
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %429 = load ptr, ptr %4, align 8
  %430 = getelementptr i8, ptr %429, i32 1108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %430, i32 %411) #9, !srcloc !18
  %431 = load ptr, ptr %8, align 8
  %432 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %433 = icmp sgt i32 %432, 0
  br i1 %433, label %434, label %447

434:                                              ; preds = %428
  %435 = tail call ptr @llvm.thread.pointer() #9
  %436 = getelementptr inbounds %struct.thread_info, ptr %435, i32 0, i32 2
  %437 = load i32, ptr %436, align 8
  %438 = lshr i32 %437, 5
  %439 = getelementptr i32, ptr @__cpu_online_mask, i32 %438
  %440 = load volatile i32, ptr %439, align 4
  %441 = and i32 %437, 31
  %442 = shl nuw i32 1, %441
  %443 = and i32 %442, %440
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %447, label %445

445:                                              ; preds = %434
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %446 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %431, i32 noundef 261, i32 noundef 24576) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %447

447:                                              ; preds = %445, %434, %428
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %448 = load ptr, ptr %4, align 8
  %449 = getelementptr i8, ptr %448, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %449, i32 24576) #9, !srcloc !18
  %450 = load ptr, ptr %4, align 8
  %451 = getelementptr i8, ptr %450, i32 1264
  %452 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %451) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %453 = load ptr, ptr %8, align 8
  %454 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %455 = icmp sgt i32 %454, 0
  br i1 %455, label %456, label %470

456:                                              ; preds = %447
  %457 = tail call ptr @llvm.thread.pointer() #9
  %458 = getelementptr inbounds %struct.thread_info, ptr %457, i32 0, i32 2
  %459 = load i32, ptr %458, align 8
  %460 = lshr i32 %459, 5
  %461 = getelementptr i32, ptr @__cpu_online_mask, i32 %460
  %462 = load volatile i32, ptr %461, align 4
  %463 = and i32 %459, 31
  %464 = shl nuw i32 1, %463
  %465 = and i32 %464, %462
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %470, label %467

467:                                              ; preds = %456
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %468 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %453, i32 noundef 316, i32 noundef %452) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %469 = load ptr, ptr %8, align 8
  br label %470

470:                                              ; preds = %467, %456, %447
  %471 = phi ptr [ %453, %447 ], [ %453, %456 ], [ %469, %467 ]
  %472 = and i32 %452, -1048577
  %473 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %474 = icmp sgt i32 %473, 0
  br i1 %474, label %475, label %488

475:                                              ; preds = %470
  %476 = tail call ptr @llvm.thread.pointer() #9
  %477 = getelementptr inbounds %struct.thread_info, ptr %476, i32 0, i32 2
  %478 = load i32, ptr %477, align 8
  %479 = lshr i32 %478, 5
  %480 = getelementptr i32, ptr @__cpu_online_mask, i32 %479
  %481 = load volatile i32, ptr %480, align 4
  %482 = and i32 %478, 31
  %483 = shl nuw i32 1, %482
  %484 = and i32 %483, %481
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %488, label %486

486:                                              ; preds = %475
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %487 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %471, i32 noundef 316, i32 noundef %472) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %488

488:                                              ; preds = %486, %475, %470
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %489 = load ptr, ptr %4, align 8
  %490 = getelementptr i8, ptr %489, i32 1264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %490, i32 %472) #9, !srcloc !18
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %2, i8 0, i32 14, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, i8 0, i32 28, i1 false) #9, !annotation !8
  %491 = call i32 @hdmi_audio_infoframe_init(ptr noundef nonnull %3) #9
  %492 = icmp slt i32 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %488
  %494 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %494, ptr noundef nonnull @.str.41, i32 noundef %491) #10
  br label %545

495:                                              ; preds = %488
  %496 = load i32, ptr %28, align 4
  %497 = trunc i32 %496 to i8
  %498 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %3, i32 0, i32 3
  store i8 %497, ptr %498, align 2
  %499 = call i32 @hdmi_audio_infoframe_pack(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 14) #9
  %500 = icmp slt i32 %499, 0
  br i1 %500, label %501, label %503

501:                                              ; preds = %495
  %502 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %502, ptr noundef nonnull @.str.42, i32 noundef %499) #10
  br label %545

503:                                              ; preds = %495
  call fastcc void @tegra_sor_hdmi_write_infopack(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %499) #9
  %504 = load ptr, ptr %4, align 8
  %505 = getelementptr i8, ptr %504, i32 616
  %506 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %505) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %507 = load ptr, ptr %8, align 8
  %508 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %509 = icmp sgt i32 %508, 0
  br i1 %509, label %510, label %524

510:                                              ; preds = %503
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
  br i1 %520, label %524, label %521

521:                                              ; preds = %510
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %522 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %507, i32 noundef 154, i32 noundef %506) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %523 = load ptr, ptr %8, align 8
  br label %524

524:                                              ; preds = %521, %510, %503
  %525 = phi ptr [ %507, %503 ], [ %507, %510 ], [ %523, %521 ]
  %526 = or i32 %506, 513
  %527 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %528 = icmp sgt i32 %527, 0
  br i1 %528, label %529, label %542

529:                                              ; preds = %524
  %530 = tail call ptr @llvm.thread.pointer() #9
  %531 = getelementptr inbounds %struct.thread_info, ptr %530, i32 0, i32 2
  %532 = load i32, ptr %531, align 8
  %533 = lshr i32 %532, 5
  %534 = getelementptr i32, ptr @__cpu_online_mask, i32 %533
  %535 = load volatile i32, ptr %534, align 4
  %536 = and i32 %532, 31
  %537 = shl nuw i32 1, %536
  %538 = and i32 %537, %535
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %542, label %540

540:                                              ; preds = %529
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %541 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %525, i32 noundef 154, i32 noundef %526) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %542

542:                                              ; preds = %540, %529, %524
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %543 = load ptr, ptr %4, align 8
  %544 = getelementptr i8, ptr %543, i32 616
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %544, i32 %526) #9, !srcloc !18
  br label %545

545:                                              ; preds = %542, %501, %493
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sor_hdmi_audio_disable(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @tegra_sor_hdmi_disable_audio_infoframe(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sor_hdmi_scdc_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1344
  %3 = load ptr, ptr %2, align 8
  %4 = tail call zeroext i1 @drm_scdc_get_scrambling_status(ptr noundef %3) #9
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -1456
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.39) #9
  tail call fastcc void @tegra_sor_hdmi_scdc_enable(ptr noundef %6)
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %8, ptr noundef %0, i32 noundef 500) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sor_disable_regulator(ptr noundef %0) #0 {
  %2 = tail call i32 @regulator_disable(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_scdc_get_scrambling_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_sor_hdmi_scdc_enable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = tail call zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef %3, i1 noundef zeroext true) #9
  %5 = tail call zeroext i1 @drm_scdc_set_scrambling(ptr noundef %3, i1 noundef zeroext true) #9
  %6 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 1272
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %10 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = tail call ptr @llvm.thread.pointer() #9
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %26 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %11, i32 noundef 318, i32 noundef %9) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %27 = load ptr, ptr %10, align 8
  br label %28

28:                                               ; preds = %25, %14, %1
  %29 = phi ptr [ %11, %1 ], [ %11, %14 ], [ %27, %25 ]
  %30 = or i32 %9, 3
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = tail call ptr @llvm.thread.pointer() #9
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %45 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %29, i32 noundef 318, i32 noundef %30) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %46

46:                                               ; preds = %44, %33, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %47 = load ptr, ptr %6, align 8
  %48 = getelementptr i8, ptr %47, i32 1272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %30) #9, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_scdc_set_scrambling(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sor_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sor_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_sor_hdmi_write_infopack(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i8, ptr %1, align 1
  switch i8 %4, label %7 [
    i8 -126, label %11
    i8 -124, label %5
    i8 -127, label %6
  ]

5:                                                ; preds = %3
  br label %11

6:                                                ; preds = %3
  br label %11

7:                                                ; preds = %3
  %8 = zext i8 %4 to i32
  %9 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.43, i32 noundef %8) #10
  br label %157

11:                                               ; preds = %6, %5, %3
  %12 = phi i32 [ 293, %6 ], [ 156, %5 ], [ 161, %3 ]
  %13 = zext i8 %4 to i32
  %14 = getelementptr i8, ptr %1, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or i32 %17, %13
  %19 = getelementptr i8, ptr %1, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 16
  %23 = or i32 %18, %22
  %24 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %11
  %29 = tail call ptr @llvm.thread.pointer() #9
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 5
  %33 = getelementptr i32, ptr @__cpu_online_mask, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %31, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %40 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %25, i32 noundef %12, i32 noundef %23) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %41

41:                                               ; preds = %39, %28, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %42 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 4
  %43 = load ptr, ptr %42, align 8
  %44 = shl nuw nsw i32 %12, 2
  %45 = getelementptr i8, ptr %43, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %23) #9, !srcloc !18
  %46 = icmp ugt i32 %2, 3
  br i1 %46, label %47, label %157

47:                                               ; preds = %151, %41
  %48 = phi i32 [ %86, %151 ], [ %12, %41 ]
  %49 = phi i32 [ %155, %151 ], [ 3, %41 ]
  %50 = add i32 %48, 1
  %51 = sub i32 %2, %49
  %52 = tail call i32 @llvm.umin.i32(i32 %51, i32 4)
  %53 = getelementptr i8, ptr %1, i32 %49
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %47
  %56 = add nsw i32 %52, -1
  %57 = getelementptr i8, ptr %53, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %56, 0
  br i1 %60, label %84, label %61

61:                                               ; preds = %55
  %62 = shl nuw nsw i32 %59, 8
  %63 = add nsw i32 %52, -2
  %64 = getelementptr i8, ptr %53, i32 %63
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %62, %66
  %68 = icmp eq i32 %63, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %61
  %70 = shl nuw nsw i32 %67, 8
  %71 = add nsw i32 %52, -3
  %72 = getelementptr i8, ptr %53, i32 %71
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %70, %74
  %76 = icmp eq i32 %71, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %69
  %78 = shl nuw i32 %75, 8
  %79 = add nsw i32 %52, -4
  %80 = getelementptr i8, ptr %53, i32 %79
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %78, %82
  br label %84

84:                                               ; preds = %77, %69, %61, %55, %47
  %85 = phi i32 [ 0, %47 ], [ %59, %55 ], [ %67, %61 ], [ %75, %69 ], [ %83, %77 ]
  %86 = add i32 %48, 2
  %87 = load ptr, ptr %24, align 8
  %88 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = tail call ptr @llvm.thread.pointer() #9
  %92 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %93 = load i32, ptr %92, align 8
  %94 = lshr i32 %93, 5
  %95 = getelementptr i32, ptr @__cpu_online_mask, i32 %94
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %93, 31
  %98 = shl nuw i32 1, %97
  %99 = and i32 %98, %96
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %90
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %102 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %87, i32 noundef %50, i32 noundef %85) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %103

103:                                              ; preds = %101, %90, %84
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %104 = load ptr, ptr %42, align 8
  %105 = shl i32 %50, 2
  %106 = getelementptr i8, ptr %104, i32 %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %85) #9, !srcloc !18
  %107 = sub i32 %51, %52
  %108 = tail call i32 @llvm.umin.i32(i32 %107, i32 3)
  %109 = add i32 %49, 4
  %110 = getelementptr i8, ptr %1, i32 %109
  %111 = icmp eq i32 %108, 0
  br i1 %111, label %133, label %112

112:                                              ; preds = %103
  %113 = add nsw i32 %108, -1
  %114 = getelementptr i8, ptr %110, i32 %113
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %113, 0
  br i1 %117, label %133, label %118

118:                                              ; preds = %112
  %119 = shl nuw nsw i32 %116, 8
  %120 = add nsw i32 %108, -2
  %121 = getelementptr i8, ptr %110, i32 %120
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = or i32 %119, %123
  %125 = icmp eq i32 %120, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %118
  %127 = shl nuw nsw i32 %124, 8
  %128 = add nsw i32 %108, -3
  %129 = getelementptr i8, ptr %110, i32 %128
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %127, %131
  br label %133

133:                                              ; preds = %126, %118, %112, %103
  %134 = phi i32 [ 0, %103 ], [ %116, %112 ], [ %124, %118 ], [ %132, %126 ]
  %135 = load ptr, ptr %24, align 8
  %136 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = tail call ptr @llvm.thread.pointer() #9
  %140 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %141 = load i32, ptr %140, align 8
  %142 = lshr i32 %141, 5
  %143 = getelementptr i32, ptr @__cpu_online_mask, i32 %142
  %144 = load volatile i32, ptr %143, align 4
  %145 = and i32 %141, 31
  %146 = shl nuw i32 1, %145
  %147 = and i32 %146, %144
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %138
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %150 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %135, i32 noundef %86, i32 noundef %134) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %151

151:                                              ; preds = %149, %138, %133
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %152 = load ptr, ptr %42, align 8
  %153 = shl i32 %86, 2
  %154 = getelementptr i8, ptr %152, i32 %153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %134) #9, !srcloc !18
  %155 = add i32 %49, 7
  %156 = icmp ult i32 %155, %2
  br i1 %156, label %47, label %157

157:                                              ; preds = %151, %41, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_sor_hdmi_disable_audio_infoframe(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 616
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %6 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #9
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %22 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %7, i32 noundef 154, i32 noundef %5) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %23 = load ptr, ptr %6, align 8
  br label %24

24:                                               ; preds = %21, %10, %1
  %25 = phi ptr [ %7, %1 ], [ %7, %10 ], [ %23, %21 ]
  %26 = and i32 %5, -2
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = tail call ptr @llvm.thread.pointer() #9
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %41 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %25, i32 noundef 154, i32 noundef %26) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %42

42:                                               ; preds = %40, %29, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %26) #9, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_dp_probe(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.30) #9
  %5 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 22
  store ptr %4, ptr %5, align 4
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %4 to i32
  br label %40

9:                                                ; preds = %1
  %10 = tail call i32 @regulator_enable(ptr noundef %4) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load ptr, ptr %2, align 8
  %14 = tail call i32 @devm_add_action(ptr noundef %13, ptr noundef nonnull @tegra_sor_disable_regulator, ptr noundef %4) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @regulator_disable(ptr noundef %4) #9
  br label %18

18:                                               ; preds = %16, %9
  %19 = phi i32 [ %10, %9 ], [ %14, %16 ]
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %12
  %22 = load ptr, ptr %2, align 8
  %23 = tail call ptr @devm_regulator_get(ptr noundef %22, ptr noundef nonnull @.str.33) #9
  %24 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 23
  store ptr %23, ptr %24, align 8
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = ptrtoint ptr %23 to i32
  br label %40

28:                                               ; preds = %21
  %29 = tail call i32 @regulator_enable(ptr noundef %23) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load ptr, ptr %2, align 8
  %33 = tail call i32 @devm_add_action(ptr noundef %32, ptr noundef nonnull @tegra_sor_disable_regulator, ptr noundef %23) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @regulator_disable(ptr noundef %23) #9
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi i32 [ %29, %28 ], [ %33, %35 ]
  %39 = tail call i32 @llvm.smin.i32(i32 %38, i32 0)
  br label %40

40:                                               ; preds = %37, %31, %26, %18, %7
  %41 = phi i32 [ %8, %7 ], [ %27, %26 ], [ %19, %18 ], [ 0, %31 ], [ %39, %37 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_hda_parse_format(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 18
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @tegra_sor_hdmi_ops
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load i8, ptr %15, align 4, !range !9
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 0, i32 7
  %19 = select i1 %17, i32 0, i32 3
  br label %27

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 1, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, i32 10, i32 14
  %25 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 15, i32 10
  store ptr @tegra_sor_dp_link_ops, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 15, i32 11
  store ptr %7, ptr %26, align 8
  br label %27

27:                                               ; preds = %20, %13, %9
  %28 = phi ptr [ @tegra_sor_dp_helpers, %20 ], [ @tegra_sor_hdmi_helpers, %9 ], [ null, %13 ]
  %29 = phi i32 [ %24, %20 ], [ 11, %9 ], [ %18, %13 ]
  %30 = phi i32 [ 2, %20 ], [ 2, %9 ], [ %19, %13 ]
  %31 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 1
  %34 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 1, i32 1
  store ptr %32, ptr %34, align 4
  %35 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 1, i32 10
  %36 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 1, i32 4
  %37 = load ptr, ptr %36, align 8
  %38 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %5, ptr noundef %35, ptr noundef nonnull @tegra_sor_connector_funcs, i32 noundef %29, ptr noundef %37) #9
  %39 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 1, i32 10, i32 35
  store ptr @tegra_sor_connector_helper_funcs, ptr %39, align 4
  %40 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 1, i32 10, i32 34
  store i32 3, ptr %40, align 8
  %41 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 1, i32 9
  %42 = tail call i32 @drm_simple_encoder_init(ptr noundef %5, ptr noundef %41, i32 noundef %30) #9
  %43 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 1, i32 9, i32 11
  store ptr %28, ptr %43, align 4
  %44 = tail call i32 @drm_connector_attach_encoder(ptr noundef %35, ptr noundef %41) #9
  %45 = tail call i32 @drm_connector_register(ptr noundef %35) #9
  %46 = tail call i32 @tegra_output_init(ptr noundef %5, ptr noundef %33) #9
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %27
  %49 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.47, i32 noundef %46) #10
  br label %150

51:                                               ; preds = %27
  tail call void @tegra_output_find_possible_crtcs(ptr noundef %33, ptr noundef %5) #9
  %52 = load ptr, ptr %6, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @drm_dp_aux_attach(ptr noundef nonnull %52, ptr noundef %33) #9
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load ptr, ptr %31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.48, i32 noundef %55) #10
  br label %150

59:                                               ; preds = %54, %51
  %60 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %87, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %31, align 8
  %65 = tail call i32 @__pm_runtime_resume(ptr noundef %64, i32 noundef 4) #9
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #9, !srcloc !20
  %69 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 0, i32 -1, ptr elementtype(i32) %68) #9, !srcloc !21
  %70 = extractvalue { i32, i32, i32 } %69, 0
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  br label %73

73:                                               ; preds = %72, %67
  %74 = load ptr, ptr %31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.49, i32 noundef %65) #10
  br label %150

75:                                               ; preds = %63
  %76 = load ptr, ptr %60, align 4
  %77 = tail call i32 @reset_control_acquire(ptr noundef %76) #9
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load ptr, ptr %31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.50, i32 noundef %77) #10
  br label %143

81:                                               ; preds = %75
  %82 = load ptr, ptr %60, align 4
  %83 = tail call i32 @reset_control_assert(ptr noundef %82) #9
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load ptr, ptr %31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.51, i32 noundef %83) #10
  br label %143

87:                                               ; preds = %81, %59
  %88 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 13
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 @clk_prepare(ptr noundef %89) #9
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = tail call i32 @clk_enable(ptr noundef %89) #9
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  tail call void @clk_unprepare(ptr noundef %89) #9
  br label %96

96:                                               ; preds = %95, %87
  %97 = phi i32 [ %90, %87 ], [ %93, %95 ]
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load ptr, ptr %31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.52, i32 noundef %97) #10
  br label %143

101:                                              ; preds = %96, %92
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 3000, i32 noundef 2) #9
  %102 = load ptr, ptr %60, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %114, label %104

104:                                              ; preds = %101
  %105 = tail call i32 @reset_control_deassert(ptr noundef nonnull %102) #9
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load ptr, ptr %31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.53, i32 noundef %105) #10
  %109 = load ptr, ptr %88, align 4
  tail call void @clk_disable(ptr noundef %109) #9
  tail call void @clk_unprepare(ptr noundef %109) #9
  br label %143

110:                                              ; preds = %104
  %111 = load ptr, ptr %60, align 4
  tail call void @reset_control_release(ptr noundef %111) #9
  %112 = load ptr, ptr %31, align 8
  %113 = tail call i32 @__pm_runtime_idle(ptr noundef %112, i32 noundef 5) #9
  br label %114

114:                                              ; preds = %110, %101
  %115 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 9
  %116 = load ptr, ptr %115, align 4
  %117 = tail call i32 @clk_prepare(ptr noundef %116) #9
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = tail call i32 @clk_enable(ptr noundef %116) #9
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  tail call void @clk_unprepare(ptr noundef %116) #9
  br label %123

123:                                              ; preds = %122, %114
  %124 = phi i32 [ %117, %114 ], [ %120, %122 ]
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load ptr, ptr %88, align 4
  tail call void @clk_disable(ptr noundef %127) #9
  tail call void @clk_unprepare(ptr noundef %127) #9
  br label %150

128:                                              ; preds = %123, %119
  %129 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 12
  %130 = load ptr, ptr %129, align 8
  %131 = tail call i32 @clk_prepare(ptr noundef %130) #9
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = tail call i32 @clk_enable(ptr noundef %130) #9
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %150, label %136

136:                                              ; preds = %133
  tail call void @clk_unprepare(ptr noundef %130) #9
  br label %137

137:                                              ; preds = %136, %128
  %138 = phi i32 [ %131, %128 ], [ %134, %136 ]
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = load ptr, ptr %115, align 4
  tail call void @clk_disable(ptr noundef %141) #9
  tail call void @clk_unprepare(ptr noundef %141) #9
  %142 = load ptr, ptr %88, align 4
  tail call void @clk_disable(ptr noundef %142) #9
  tail call void @clk_unprepare(ptr noundef %142) #9
  br label %150

143:                                              ; preds = %107, %99, %85, %79
  %144 = phi i32 [ %77, %79 ], [ %83, %85 ], [ %97, %99 ], [ %105, %107 ]
  %145 = load ptr, ptr %60, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %143
  %148 = load ptr, ptr %31, align 8
  %149 = tail call i32 @__pm_runtime_idle(ptr noundef %148, i32 noundef 5) #9
  br label %150

150:                                              ; preds = %147, %143, %140, %137, %133, %126, %73, %57, %48
  %151 = phi i32 [ %46, %48 ], [ %55, %57 ], [ %65, %73 ], [ %124, %126 ], [ %138, %140 ], [ 0, %137 ], [ %144, %147 ], [ %144, %143 ], [ 0, %133 ]
  ret i32 %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 1
  tail call void @tegra_output_exit(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @drm_dp_aux_detach(ptr noundef nonnull %4) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.209, i32 noundef %7) #10
  br label %19

12:                                               ; preds = %6, %1
  %13 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #9
  tail call void @clk_unprepare(ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 12
  %16 = load ptr, ptr %15, align 8
  tail call void @clk_disable(ptr noundef %16) #9
  tail call void @clk_unprepare(ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 13
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #9
  tail call void @clk_unprepare(ptr noundef %18) #9
  br label %19

19:                                               ; preds = %12, %9
  %20 = phi i32 [ %7, %9 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @reset_control_assert(ptr noundef nonnull %5) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.210, i32 noundef %8) #10
  br label %17

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 4
  tail call void @reset_control_release(ptr noundef %12) #9
  br label %13

13:                                               ; preds = %11, %1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %14 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 13
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #9
  tail call void @clk_unprepare(ptr noundef %15) #9
  %16 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #9
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i32 [ %8, %10 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #9, !srcloc !20
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #9, !srcloc !21
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  br label %12

12:                                               ; preds = %11, %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.49, i32 noundef %4) #10
  br label %46

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 13
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = tail call i32 @clk_enable(ptr noundef %15) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi i32 [ %16, %13 ], [ %19, %21 ]
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.52, i32 noundef %23) #10
  br label %43

26:                                               ; preds = %22, %18
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %27 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @reset_control_acquire(ptr noundef nonnull %28) #9
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.211, i32 noundef %31) #10
  br label %40

34:                                               ; preds = %30
  %35 = load ptr, ptr %27, align 4
  %36 = tail call i32 @reset_control_deassert(ptr noundef %35) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.212, i32 noundef %36) #10
  %39 = load ptr, ptr %27, align 4
  tail call void @reset_control_release(ptr noundef %39) #9
  br label %40

40:                                               ; preds = %38, %33
  %41 = phi i32 [ %31, %33 ], [ %36, %38 ]
  %42 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %42) #9
  tail call void @clk_unprepare(ptr noundef %42) #9
  br label %43

43:                                               ; preds = %40, %25
  %44 = phi i32 [ %23, %25 ], [ %41, %40 ]
  %45 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #9
  br label %46

46:                                               ; preds = %43, %34, %26, %12
  %47 = phi i32 [ %4, %12 ], [ %44, %43 ], [ 0, %34 ], [ 0, %26 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sor_hdmi_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -104
  %6 = select i1 %4, ptr null, ptr %5
  %7 = getelementptr i8, ptr %0, i32 -132
  %8 = getelementptr i8, ptr %0, i32 1044
  %9 = load ptr, ptr %8, align 8
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = tail call ptr @llvm.thread.pointer() #9
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %24 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %9, i32 noundef 269, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %25

25:                                               ; preds = %23, %12, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %26 = getelementptr i8, ptr %0, i32 1052
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr i8, ptr %27, i32 1076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #9, !srcloc !18
  %29 = load ptr, ptr %8, align 8
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = tail call ptr @llvm.thread.pointer() #9
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %44 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %29, i32 noundef 285, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %45

45:                                               ; preds = %43, %32, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %46 = load ptr, ptr %26, align 8
  %47 = getelementptr i8, ptr %46, i32 1140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #9, !srcloc !18
  %48 = load ptr, ptr %8, align 8
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = tail call ptr @llvm.thread.pointer() #9
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 5
  %56 = getelementptr i32, ptr @__cpu_online_mask, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %54, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %63 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %48, i32 noundef 286, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %64

64:                                               ; preds = %62, %51, %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %65 = load ptr, ptr %26, align 8
  %66 = getelementptr i8, ptr %65, i32 1144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 0) #9, !srcloc !18
  %67 = getelementptr i8, ptr %0, i32 1368
  %68 = load i8, ptr %67, align 4, !range !9
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %118, label %70

70:                                               ; preds = %64
  %71 = getelementptr i8, ptr %0, i32 1324
  %72 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %71) #9
  %73 = getelementptr i8, ptr %0, i32 -20
  %74 = load ptr, ptr %73, align 8
  %75 = tail call zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef %74, i1 noundef zeroext false) #9
  %76 = tail call zeroext i1 @drm_scdc_set_scrambling(ptr noundef %74, i1 noundef zeroext false) #9
  %77 = load ptr, ptr %26, align 8
  %78 = getelementptr i8, ptr %77, i32 1272
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %80 = load ptr, ptr %8, align 8
  %81 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %70
  %84 = tail call ptr @llvm.thread.pointer() #9
  %85 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %86 = load i32, ptr %85, align 8
  %87 = lshr i32 %86, 5
  %88 = getelementptr i32, ptr @__cpu_online_mask, i32 %87
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %86, 31
  %91 = shl nuw i32 1, %90
  %92 = and i32 %91, %89
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %83
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %95 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %80, i32 noundef 318, i32 noundef %79) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %96 = load ptr, ptr %8, align 8
  br label %97

97:                                               ; preds = %94, %83, %70
  %98 = phi ptr [ %80, %70 ], [ %80, %83 ], [ %96, %94 ]
  %99 = and i32 %79, -4
  %100 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = tail call ptr @llvm.thread.pointer() #9
  %104 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %105 = load i32, ptr %104, align 8
  %106 = lshr i32 %105, 5
  %107 = getelementptr i32, ptr @__cpu_online_mask, i32 %106
  %108 = load volatile i32, ptr %107, align 4
  %109 = and i32 %105, 31
  %110 = shl nuw i32 1, %109
  %111 = and i32 %110, %108
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %102
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %114 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %98, i32 noundef 318, i32 noundef %99) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %115

115:                                              ; preds = %113, %102, %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %116 = load ptr, ptr %26, align 8
  %117 = getelementptr i8, ptr %116, i32 1272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %99) #9, !srcloc !18
  br label %118

118:                                              ; preds = %115, %64
  %119 = tail call fastcc i32 @tegra_sor_detach(ptr noundef %7)
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.54, i32 noundef %119) #10
  br label %123

123:                                              ; preds = %121, %118
  %124 = load ptr, ptr %8, align 8
  %125 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %123
  %128 = tail call ptr @llvm.thread.pointer() #9
  %129 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 2
  %130 = load i32, ptr %129, align 8
  %131 = lshr i32 %130, 5
  %132 = getelementptr i32, ptr @__cpu_online_mask, i32 %131
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %130, 31
  %135 = shl nuw i32 1, %134
  %136 = and i32 %135, %133
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %127
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %139 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %124, i32 noundef 4, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %140

140:                                              ; preds = %138, %127, %123
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %141 = load ptr, ptr %26, align 8
  %142 = getelementptr i8, ptr %141, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 0) #9, !srcloc !18
  tail call fastcc void @tegra_sor_update(ptr noundef %7)
  %143 = getelementptr inbounds %struct.tegra_dc, ptr %6, i32 0, i32 8
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr i8, ptr %144, i32 4104
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %147 = getelementptr inbounds %struct.tegra_dc, ptr %6, i32 0, i32 2
  %148 = load ptr, ptr %147, align 4
  %149 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %140
  %152 = tail call ptr @llvm.thread.pointer() #9
  %153 = getelementptr inbounds %struct.thread_info, ptr %152, i32 0, i32 2
  %154 = load i32, ptr %153, align 8
  %155 = lshr i32 %154, 5
  %156 = getelementptr i32, ptr @__cpu_online_mask, i32 %155
  %157 = load volatile i32, ptr %156, align 4
  %158 = and i32 %154, 31
  %159 = shl nuw i32 1, %158
  %160 = and i32 %159, %157
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %151
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %163 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %148, i32 noundef 1026, i32 noundef %146) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %164 = load ptr, ptr %147, align 4
  br label %165

165:                                              ; preds = %162, %151, %140
  %166 = phi ptr [ %148, %140 ], [ %148, %151 ], [ %164, %162 ]
  %167 = getelementptr i8, ptr %0, i32 1048
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.tegra_sor_soc, ptr %168, i32 0, i32 6
  %170 = load i8, ptr %169, align 4, !range !9
  %171 = icmp eq i8 %170, 0
  %172 = and i32 %146, -134217729
  %173 = select i1 %171, i32 %172, i32 %146
  %174 = getelementptr i8, ptr %0, i32 1056
  %175 = load i32, ptr %174, align 4
  %176 = icmp ugt i32 %175, 1
  %177 = zext i1 %176 to i32
  %178 = add i32 %175, 25
  %179 = add i32 %178, %177
  %180 = shl nuw i32 1, %179
  %181 = xor i32 %180, -1
  %182 = and i32 %173, %181
  %183 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %165
  %186 = tail call ptr @llvm.thread.pointer() #9
  %187 = getelementptr inbounds %struct.thread_info, ptr %186, i32 0, i32 2
  %188 = load i32, ptr %187, align 8
  %189 = lshr i32 %188, 5
  %190 = getelementptr i32, ptr @__cpu_online_mask, i32 %189
  %191 = load volatile i32, ptr %190, align 4
  %192 = and i32 %188, 31
  %193 = shl nuw i32 1, %192
  %194 = and i32 %193, %191
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %185
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %197 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %166, i32 noundef 1026, i32 noundef %182) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %198

198:                                              ; preds = %196, %185, %165
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  tail call void @arm_heavy_mb() #9
  %199 = load ptr, ptr %143, align 8
  %200 = getelementptr i8, ptr %199, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %182) #9, !srcloc !18
  tail call void @tegra_dc_commit(ptr noundef %6) #9
  %201 = tail call fastcc i32 @tegra_sor_power_down(ptr noundef %7)
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %204, ptr noundef nonnull @.str.55, i32 noundef %201) #10
  br label %205

205:                                              ; preds = %203, %198
  %206 = getelementptr i8, ptr %0, i32 1300
  %207 = load i32, ptr %206, align 8
  %208 = tail call i32 @tegra_io_pad_power_disable(i32 noundef %207) #9
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %211, ptr noundef nonnull @.str.56, i32 noundef %208) #10
  br label %212

212:                                              ; preds = %210, %205
  %213 = tail call i32 @host1x_client_suspend(ptr noundef %7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sor_hdmi_enable(ptr noundef %0) #0 {
  %2 = alloca [17 x i8], align 1
  %3 = alloca %struct.hdmi_avi_infoframe, align 4
  %4 = getelementptr %struct.drm_encoder, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -104
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr i8, ptr %0, i32 -132
  %10 = getelementptr i8, ptr %0, i32 996
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 22
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, 1000
  %17 = tail call i32 @host1x_client_resume(ptr noundef %9) #9
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = getelementptr i8, ptr %0, i32 1044
  %21 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.26, i32 noundef %17) #10
  br label %2105

22:                                               ; preds = %1
  %23 = getelementptr i8, ptr %0, i32 1072
  %24 = load ptr, ptr %23, align 4
  %25 = tail call fastcc i32 @tegra_sor_set_parent_clock(ptr noundef %9, ptr noundef %24)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %0, i32 1044
  %29 = load ptr, ptr %28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.57, i32 noundef %25) #10
  br label %2105

30:                                               ; preds = %22
  %31 = getelementptr i8, ptr %0, i32 1088
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @clk_get_rate(ptr noundef %32) #9
  %34 = udiv i32 %33, 1000000
  %35 = getelementptr i8, ptr %0, i32 1300
  %36 = load i32, ptr %35, align 8
  %37 = tail call i32 @tegra_io_pad_power_enable(i32 noundef %36) #9
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = getelementptr i8, ptr %0, i32 1044
  %41 = load ptr, ptr %40, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.58, i32 noundef %37) #10
  br label %42

42:                                               ; preds = %39, %30
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #9
  %43 = getelementptr i8, ptr %0, i32 1048
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.tegra_sor_soc, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.tegra_sor_regs, ptr %46, i32 0, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %0, i32 1052
  %50 = load ptr, ptr %49, align 8
  %51 = shl i32 %48, 2
  %52 = getelementptr i8, ptr %50, i32 %51
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %54 = getelementptr i8, ptr %0, i32 1044
  %55 = load ptr, ptr %54, align 8
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %42
  %59 = tail call ptr @llvm.thread.pointer() #9
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 5
  %63 = getelementptr i32, ptr @__cpu_online_mask, i32 %62
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %61, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %58
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %70 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %55, i32 noundef %48, i32 noundef %53) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %71 = load ptr, ptr %54, align 8
  br label %72

72:                                               ; preds = %69, %58, %42
  %73 = phi ptr [ %55, %42 ], [ %55, %58 ], [ %71, %69 ]
  %74 = and i32 %53, -4194305
  %75 = load ptr, ptr %43, align 4
  %76 = getelementptr inbounds %struct.tegra_sor_soc, ptr %75, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.tegra_sor_regs, ptr %77, i32 0, i32 8
  %79 = load i32, ptr %78, align 4
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %72
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %94 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %73, i32 noundef %79, i32 noundef %74) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %95

95:                                               ; preds = %93, %82, %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %96 = load ptr, ptr %49, align 8
  %97 = shl i32 %79, 2
  %98 = getelementptr i8, ptr %96, i32 %97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %74) #9, !srcloc !18
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #9
  %99 = load ptr, ptr %43, align 4
  %100 = getelementptr inbounds %struct.tegra_sor_soc, ptr %99, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.tegra_sor_regs, ptr %101, i32 0, i32 9
  %103 = load i32, ptr %102, align 4
  %104 = load ptr, ptr %49, align 8
  %105 = shl i32 %103, 2
  %106 = getelementptr i8, ptr %104, i32 %105
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %108 = load ptr, ptr %54, align 8
  %109 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %95
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
  br i1 %121, label %125, label %122

122:                                              ; preds = %111
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %123 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %108, i32 noundef %103, i32 noundef %107) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %124 = load ptr, ptr %54, align 8
  br label %125

125:                                              ; preds = %122, %111, %95
  %126 = phi ptr [ %108, %95 ], [ %108, %111 ], [ %124, %122 ]
  %127 = and i32 %107, -8193
  %128 = load ptr, ptr %43, align 4
  %129 = getelementptr inbounds %struct.tegra_sor_soc, ptr %128, i32 0, i32 5
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.tegra_sor_regs, ptr %130, i32 0, i32 9
  %132 = load i32, ptr %131, align 4
  %133 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %125
  %136 = tail call ptr @llvm.thread.pointer() #9
  %137 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %138 = load i32, ptr %137, align 8
  %139 = lshr i32 %138, 5
  %140 = getelementptr i32, ptr @__cpu_online_mask, i32 %139
  %141 = load volatile i32, ptr %140, align 4
  %142 = and i32 %138, 31
  %143 = shl nuw i32 1, %142
  %144 = and i32 %143, %141
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %135
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %147 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %126, i32 noundef %132, i32 noundef %127) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %148

148:                                              ; preds = %146, %135, %125
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %149 = load ptr, ptr %49, align 8
  %150 = shl i32 %132, 2
  %151 = getelementptr i8, ptr %149, i32 %150
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %127) #9, !srcloc !18
  %152 = load ptr, ptr %43, align 4
  %153 = getelementptr inbounds %struct.tegra_sor_soc, ptr %152, i32 0, i32 5
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.tegra_sor_regs, ptr %154, i32 0, i32 6
  %156 = load i32, ptr %155, align 4
  %157 = load ptr, ptr %49, align 8
  %158 = shl i32 %156, 2
  %159 = getelementptr i8, ptr %157, i32 %158
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %161 = load ptr, ptr %54, align 8
  %162 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %148
  %165 = tail call ptr @llvm.thread.pointer() #9
  %166 = getelementptr inbounds %struct.thread_info, ptr %165, i32 0, i32 2
  %167 = load i32, ptr %166, align 8
  %168 = lshr i32 %167, 5
  %169 = getelementptr i32, ptr @__cpu_online_mask, i32 %168
  %170 = load volatile i32, ptr %169, align 4
  %171 = and i32 %167, 31
  %172 = shl nuw i32 1, %171
  %173 = and i32 %172, %170
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %164
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %176 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %161, i32 noundef %156, i32 noundef %160) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %177 = load ptr, ptr %54, align 8
  br label %178

178:                                              ; preds = %175, %164, %148
  %179 = phi ptr [ %161, %148 ], [ %161, %164 ], [ %177, %175 ]
  %180 = and i32 %160, -6
  %181 = load ptr, ptr %43, align 4
  %182 = getelementptr inbounds %struct.tegra_sor_soc, ptr %181, i32 0, i32 5
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.tegra_sor_regs, ptr %183, i32 0, i32 6
  %185 = load i32, ptr %184, align 4
  %186 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %178
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %200 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %179, i32 noundef %185, i32 noundef %180) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %201

201:                                              ; preds = %199, %188, %178
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %202 = load ptr, ptr %49, align 8
  %203 = shl i32 %185, 2
  %204 = getelementptr i8, ptr %202, i32 %203
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %180) #9, !srcloc !18
  %205 = load ptr, ptr %43, align 4
  %206 = getelementptr inbounds %struct.tegra_sor_soc, ptr %205, i32 0, i32 5
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.tegra_sor_regs, ptr %207, i32 0, i32 8
  %209 = load i32, ptr %208, align 4
  %210 = load ptr, ptr %49, align 8
  %211 = shl i32 %209, 2
  %212 = getelementptr i8, ptr %210, i32 %211
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %214 = load ptr, ptr %54, align 8
  %215 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %201
  %218 = tail call ptr @llvm.thread.pointer() #9
  %219 = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 2
  %220 = load i32, ptr %219, align 8
  %221 = lshr i32 %220, 5
  %222 = getelementptr i32, ptr @__cpu_online_mask, i32 %221
  %223 = load volatile i32, ptr %222, align 4
  %224 = and i32 %220, 31
  %225 = shl nuw i32 1, %224
  %226 = and i32 %225, %223
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %217
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %229 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %214, i32 noundef %209, i32 noundef %213) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %230 = load ptr, ptr %54, align 8
  br label %231

231:                                              ; preds = %228, %217, %201
  %232 = phi ptr [ %214, %201 ], [ %214, %217 ], [ %230, %228 ]
  %233 = and i32 %213, -16777217
  %234 = load ptr, ptr %43, align 4
  %235 = getelementptr inbounds %struct.tegra_sor_soc, ptr %234, i32 0, i32 5
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.tegra_sor_regs, ptr %236, i32 0, i32 8
  %238 = load i32, ptr %237, align 4
  %239 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %254

241:                                              ; preds = %231
  %242 = tail call ptr @llvm.thread.pointer() #9
  %243 = getelementptr inbounds %struct.thread_info, ptr %242, i32 0, i32 2
  %244 = load i32, ptr %243, align 8
  %245 = lshr i32 %244, 5
  %246 = getelementptr i32, ptr @__cpu_online_mask, i32 %245
  %247 = load volatile i32, ptr %246, align 4
  %248 = and i32 %244, 31
  %249 = shl nuw i32 1, %248
  %250 = and i32 %249, %247
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %241
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %253 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %232, i32 noundef %238, i32 noundef %233) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %254

254:                                              ; preds = %252, %241, %231
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %255 = load ptr, ptr %49, align 8
  %256 = shl i32 %238, 2
  %257 = getelementptr i8, ptr %255, i32 %256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %233) #9, !srcloc !18
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #9
  %258 = load ptr, ptr %43, align 4
  %259 = getelementptr inbounds %struct.tegra_sor_soc, ptr %258, i32 0, i32 5
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.tegra_sor_regs, ptr %260, i32 0, i32 8
  %262 = load i32, ptr %261, align 4
  %263 = load ptr, ptr %49, align 8
  %264 = shl i32 %262, 2
  %265 = getelementptr i8, ptr %263, i32 %264
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %265) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %267 = load ptr, ptr %54, align 8
  %268 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %284

270:                                              ; preds = %254
  %271 = tail call ptr @llvm.thread.pointer() #9
  %272 = getelementptr inbounds %struct.thread_info, ptr %271, i32 0, i32 2
  %273 = load i32, ptr %272, align 8
  %274 = lshr i32 %273, 5
  %275 = getelementptr i32, ptr @__cpu_online_mask, i32 %274
  %276 = load volatile i32, ptr %275, align 4
  %277 = and i32 %273, 31
  %278 = shl nuw i32 1, %277
  %279 = and i32 %278, %276
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %270
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %282 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %267, i32 noundef %262, i32 noundef %266) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %283 = load ptr, ptr %54, align 8
  br label %284

284:                                              ; preds = %281, %270, %254
  %285 = phi ptr [ %267, %254 ], [ %267, %270 ], [ %283, %281 ]
  %286 = and i32 %266, -8650753
  %287 = load ptr, ptr %43, align 4
  %288 = getelementptr inbounds %struct.tegra_sor_soc, ptr %287, i32 0, i32 5
  %289 = load ptr, ptr %288, align 4
  %290 = getelementptr inbounds %struct.tegra_sor_regs, ptr %289, i32 0, i32 8
  %291 = load i32, ptr %290, align 4
  %292 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %307

294:                                              ; preds = %284
  %295 = tail call ptr @llvm.thread.pointer() #9
  %296 = getelementptr inbounds %struct.thread_info, ptr %295, i32 0, i32 2
  %297 = load i32, ptr %296, align 8
  %298 = lshr i32 %297, 5
  %299 = getelementptr i32, ptr @__cpu_online_mask, i32 %298
  %300 = load volatile i32, ptr %299, align 4
  %301 = and i32 %297, 31
  %302 = shl nuw i32 1, %301
  %303 = and i32 %302, %300
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %307, label %305

305:                                              ; preds = %294
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %306 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %285, i32 noundef %291, i32 noundef %286) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %307

307:                                              ; preds = %305, %294, %284
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %308 = load ptr, ptr %49, align 8
  %309 = shl i32 %291, 2
  %310 = getelementptr i8, ptr %308, i32 %309
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %310, i32 %286) #9, !srcloc !18
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #9
  %311 = load ptr, ptr %43, align 4
  %312 = getelementptr inbounds %struct.tegra_sor_soc, ptr %311, i32 0, i32 5
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr inbounds %struct.tegra_sor_regs, ptr %313, i32 0, i32 10
  %315 = load i32, ptr %314, align 4
  %316 = load ptr, ptr %49, align 8
  %317 = shl i32 %315, 2
  %318 = getelementptr i8, ptr %316, i32 %317
  %319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %320 = load ptr, ptr %54, align 8
  %321 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %322 = icmp sgt i32 %321, 0
  br i1 %322, label %323, label %337

323:                                              ; preds = %307
  %324 = tail call ptr @llvm.thread.pointer() #9
  %325 = getelementptr inbounds %struct.thread_info, ptr %324, i32 0, i32 2
  %326 = load i32, ptr %325, align 8
  %327 = lshr i32 %326, 5
  %328 = getelementptr i32, ptr @__cpu_online_mask, i32 %327
  %329 = load volatile i32, ptr %328, align 4
  %330 = and i32 %326, 31
  %331 = shl nuw i32 1, %330
  %332 = and i32 %331, %329
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %323
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %335 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %320, i32 noundef %315, i32 noundef %319) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %336 = load ptr, ptr %54, align 8
  br label %337

337:                                              ; preds = %334, %323, %307
  %338 = phi ptr [ %320, %307 ], [ %320, %323 ], [ %336, %334 ]
  %339 = or i32 %319, 15
  %340 = load ptr, ptr %43, align 4
  %341 = getelementptr inbounds %struct.tegra_sor_soc, ptr %340, i32 0, i32 5
  %342 = load ptr, ptr %341, align 4
  %343 = getelementptr inbounds %struct.tegra_sor_regs, ptr %342, i32 0, i32 10
  %344 = load i32, ptr %343, align 4
  %345 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %347, label %360

347:                                              ; preds = %337
  %348 = tail call ptr @llvm.thread.pointer() #9
  %349 = getelementptr inbounds %struct.thread_info, ptr %348, i32 0, i32 2
  %350 = load i32, ptr %349, align 8
  %351 = lshr i32 %350, 5
  %352 = getelementptr i32, ptr @__cpu_online_mask, i32 %351
  %353 = load volatile i32, ptr %352, align 4
  %354 = and i32 %350, 31
  %355 = shl nuw i32 1, %354
  %356 = and i32 %355, %353
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %360, label %358

358:                                              ; preds = %347
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %359 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %338, i32 noundef %344, i32 noundef %339) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %360

360:                                              ; preds = %358, %347, %337
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %361 = load ptr, ptr %49, align 8
  %362 = shl i32 %344, 2
  %363 = getelementptr i8, ptr %361, i32 %362
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %363, i32 %339) #9, !srcloc !18
  br label %364

364:                                              ; preds = %387, %360
  %365 = load ptr, ptr %49, align 8
  %366 = getelementptr i8, ptr %365, i32 132
  %367 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %366) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %368 = load ptr, ptr %54, align 8
  %369 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %383 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %368, i32 noundef 33, i32 noundef %367) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %384

384:                                              ; preds = %382, %371, %364
  %385 = and i32 %367, 268435456
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %388, label %387

387:                                              ; preds = %384
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 1000, i32 noundef 2) #9
  br label %364

388:                                              ; preds = %384
  %389 = load ptr, ptr %54, align 8
  %390 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %391 = icmp sgt i32 %390, 0
  br i1 %391, label %392, label %405

392:                                              ; preds = %388
  %393 = tail call ptr @llvm.thread.pointer() #9
  %394 = getelementptr inbounds %struct.thread_info, ptr %393, i32 0, i32 2
  %395 = load i32, ptr %394, align 8
  %396 = lshr i32 %395, 5
  %397 = getelementptr i32, ptr @__cpu_online_mask, i32 %396
  %398 = load volatile i32, ptr %397, align 4
  %399 = and i32 %395, 31
  %400 = shl nuw i32 1, %399
  %401 = and i32 %400, %398
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %405, label %403

403:                                              ; preds = %392
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %404 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %389, i32 noundef 33, i32 noundef -2146414592) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %405

405:                                              ; preds = %403, %392, %388
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %406 = load ptr, ptr %49, align 8
  %407 = getelementptr i8, ptr %406, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %407, i32 -2146414592) #9, !srcloc !18
  br label %408

408:                                              ; preds = %430, %405
  %409 = load ptr, ptr %49, align 8
  %410 = getelementptr i8, ptr %409, i32 132
  %411 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %410) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %412 = load ptr, ptr %54, align 8
  %413 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %414 = icmp sgt i32 %413, 0
  br i1 %414, label %415, label %428

415:                                              ; preds = %408
  %416 = tail call ptr @llvm.thread.pointer() #9
  %417 = getelementptr inbounds %struct.thread_info, ptr %416, i32 0, i32 2
  %418 = load i32, ptr %417, align 8
  %419 = lshr i32 %418, 5
  %420 = getelementptr i32, ptr @__cpu_online_mask, i32 %419
  %421 = load volatile i32, ptr %420, align 4
  %422 = and i32 %418, 31
  %423 = shl nuw i32 1, %422
  %424 = and i32 %423, %421
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %428, label %426

426:                                              ; preds = %415
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %427 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %412, i32 noundef 33, i32 noundef %411) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %428

428:                                              ; preds = %426, %415, %408
  %429 = icmp sgt i32 %411, -1
  br i1 %429, label %431, label %430

430:                                              ; preds = %428
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 1000, i32 noundef 2) #9
  br label %408

431:                                              ; preds = %428
  %432 = load ptr, ptr %49, align 8
  %433 = getelementptr i8, ptr %432, i32 76
  %434 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %433) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %435 = load ptr, ptr %54, align 8
  %436 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %438, label %451

438:                                              ; preds = %431
  %439 = tail call ptr @llvm.thread.pointer() #9
  %440 = getelementptr inbounds %struct.thread_info, ptr %439, i32 0, i32 2
  %441 = load i32, ptr %440, align 8
  %442 = lshr i32 %441, 5
  %443 = getelementptr i32, ptr @__cpu_online_mask, i32 %442
  %444 = load volatile i32, ptr %443, align 4
  %445 = and i32 %441, 31
  %446 = shl nuw i32 1, %445
  %447 = and i32 %446, %444
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %451, label %449

449:                                              ; preds = %438
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %450 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %435, i32 noundef 19, i32 noundef %434) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %451

451:                                              ; preds = %449, %438, %431
  %452 = and i32 %434, -128
  %453 = load i32, ptr %14, align 4
  %454 = icmp slt i32 %453, 340000
  %455 = select i1 %454, ptr @.str.59, ptr @.str.60
  %456 = select i1 %454, i32 40, i32 80
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %455) #9
  %457 = or i32 %452, %456
  %458 = load ptr, ptr %54, align 8
  %459 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %460 = icmp sgt i32 %459, 0
  br i1 %460, label %461, label %474

461:                                              ; preds = %451
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %473 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %458, i32 noundef 19, i32 noundef %457) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %474

474:                                              ; preds = %472, %461, %451
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %475 = load ptr, ptr %49, align 8
  %476 = getelementptr i8, ptr %475, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %476, i32 %457) #9, !srcloc !18
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 1000, i32 noundef 2) #9
  %477 = load ptr, ptr %49, align 8
  %478 = getelementptr i8, ptr %477, i32 304
  %479 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %478) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %480 = load ptr, ptr %54, align 8
  %481 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %482 = icmp sgt i32 %481, 0
  br i1 %482, label %483, label %497

483:                                              ; preds = %474
  %484 = tail call ptr @llvm.thread.pointer() #9
  %485 = getelementptr inbounds %struct.thread_info, ptr %484, i32 0, i32 2
  %486 = load i32, ptr %485, align 8
  %487 = lshr i32 %486, 5
  %488 = getelementptr i32, ptr @__cpu_online_mask, i32 %487
  %489 = load volatile i32, ptr %488, align 4
  %490 = and i32 %486, 31
  %491 = shl nuw i32 1, %490
  %492 = and i32 %491, %489
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %497, label %494

494:                                              ; preds = %483
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %495 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %480, i32 noundef 76, i32 noundef %479) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %496 = load ptr, ptr %54, align 8
  br label %497

497:                                              ; preds = %494, %483, %474
  %498 = phi ptr [ %480, %474 ], [ %480, %483 ], [ %496, %494 ]
  %499 = and i32 %479, -2031617
  %500 = or i32 %499, 983040
  %501 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %502 = icmp sgt i32 %501, 0
  br i1 %502, label %503, label %516

503:                                              ; preds = %497
  %504 = tail call ptr @llvm.thread.pointer() #9
  %505 = getelementptr inbounds %struct.thread_info, ptr %504, i32 0, i32 2
  %506 = load i32, ptr %505, align 8
  %507 = lshr i32 %506, 5
  %508 = getelementptr i32, ptr @__cpu_online_mask, i32 %507
  %509 = load volatile i32, ptr %508, align 4
  %510 = and i32 %506, 31
  %511 = shl nuw i32 1, %510
  %512 = and i32 %511, %509
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %516, label %514

514:                                              ; preds = %503
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %515 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %498, i32 noundef 76, i32 noundef %500) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %516

516:                                              ; preds = %514, %503, %497
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %517 = load ptr, ptr %49, align 8
  %518 = getelementptr i8, ptr %517, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %518, i32 %500) #9, !srcloc !18
  %519 = load ptr, ptr %49, align 8
  %520 = getelementptr i8, ptr %519, i32 384
  %521 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %520) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %522 = load ptr, ptr %54, align 8
  %523 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %524 = icmp sgt i32 %523, 0
  br i1 %524, label %525, label %539

525:                                              ; preds = %516
  %526 = tail call ptr @llvm.thread.pointer() #9
  %527 = getelementptr inbounds %struct.thread_info, ptr %526, i32 0, i32 2
  %528 = load i32, ptr %527, align 8
  %529 = lshr i32 %528, 5
  %530 = getelementptr i32, ptr @__cpu_online_mask, i32 %529
  %531 = load volatile i32, ptr %530, align 4
  %532 = and i32 %528, 31
  %533 = shl nuw i32 1, %532
  %534 = and i32 %533, %531
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %539, label %536

536:                                              ; preds = %525
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %537 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %522, i32 noundef 96, i32 noundef %521) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %538 = load ptr, ptr %54, align 8
  br label %539

539:                                              ; preds = %536, %525, %516
  %540 = phi ptr [ %522, %516 ], [ %522, %525 ], [ %538, %536 ]
  %541 = and i32 %521, -16
  %542 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %543 = icmp sgt i32 %542, 0
  br i1 %543, label %544, label %557

544:                                              ; preds = %539
  %545 = tail call ptr @llvm.thread.pointer() #9
  %546 = getelementptr inbounds %struct.thread_info, ptr %545, i32 0, i32 2
  %547 = load i32, ptr %546, align 8
  %548 = lshr i32 %547, 5
  %549 = getelementptr i32, ptr @__cpu_online_mask, i32 %548
  %550 = load volatile i32, ptr %549, align 4
  %551 = and i32 %547, 31
  %552 = shl nuw i32 1, %551
  %553 = and i32 %552, %550
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %557, label %555

555:                                              ; preds = %544
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %556 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %540, i32 noundef 96, i32 noundef %541) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %557

557:                                              ; preds = %555, %544, %539
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %558 = load ptr, ptr %49, align 8
  %559 = getelementptr i8, ptr %558, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %559, i32 %541) #9, !srcloc !18
  %560 = load ptr, ptr %54, align 8
  %561 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %562 = icmp sgt i32 %561, 0
  br i1 %562, label %563, label %576

563:                                              ; preds = %557
  %564 = tail call ptr @llvm.thread.pointer() #9
  %565 = getelementptr inbounds %struct.thread_info, ptr %564, i32 0, i32 2
  %566 = load i32, ptr %565, align 8
  %567 = lshr i32 %566, 5
  %568 = getelementptr i32, ptr @__cpu_online_mask, i32 %567
  %569 = load volatile i32, ptr %568, align 4
  %570 = and i32 %566, 31
  %571 = shl nuw i32 1, %570
  %572 = and i32 %571, %569
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %576, label %574

574:                                              ; preds = %563
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %575 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %560, i32 noundef 32, i32 noundef 34816) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %576

576:                                              ; preds = %574, %563, %557
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %577 = load ptr, ptr %49, align 8
  %578 = getelementptr i8, ptr %577, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %578, i32 34816) #9, !srcloc !18
  %579 = load ptr, ptr %54, align 8
  %580 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %581 = icmp sgt i32 %580, 0
  br i1 %581, label %582, label %595

582:                                              ; preds = %576
  %583 = tail call ptr @llvm.thread.pointer() #9
  %584 = getelementptr inbounds %struct.thread_info, ptr %583, i32 0, i32 2
  %585 = load i32, ptr %584, align 8
  %586 = lshr i32 %585, 5
  %587 = getelementptr i32, ptr @__cpu_online_mask, i32 %586
  %588 = load volatile i32, ptr %587, align 4
  %589 = and i32 %585, 31
  %590 = shl nuw i32 1, %589
  %591 = and i32 %590, %588
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %595, label %593

593:                                              ; preds = %582
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %594 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %579, i32 noundef 34, i32 noundef 8429569) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %595

595:                                              ; preds = %593, %582, %576
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %596 = load ptr, ptr %49, align 8
  %597 = getelementptr i8, ptr %596, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %597, i32 8429569) #9, !srcloc !18
  %598 = load ptr, ptr %54, align 8
  %599 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %600 = icmp sgt i32 %599, 0
  br i1 %600, label %601, label %614

601:                                              ; preds = %595
  %602 = tail call ptr @llvm.thread.pointer() #9
  %603 = getelementptr inbounds %struct.thread_info, ptr %602, i32 0, i32 2
  %604 = load i32, ptr %603, align 8
  %605 = lshr i32 %604, 5
  %606 = getelementptr i32, ptr @__cpu_online_mask, i32 %605
  %607 = load volatile i32, ptr %606, align 4
  %608 = and i32 %604, 31
  %609 = shl nuw i32 1, %608
  %610 = and i32 %609, %607
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %614, label %612

612:                                              ; preds = %601
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %613 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %598, i32 noundef 42, i32 noundef 8429569) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %614

614:                                              ; preds = %612, %601, %595
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %615 = load ptr, ptr %49, align 8
  %616 = getelementptr i8, ptr %615, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %616, i32 8429569) #9, !srcloc !18
  %617 = load ptr, ptr %43, align 4
  %618 = getelementptr inbounds %struct.tegra_sor_soc, ptr %617, i32 0, i32 6
  %619 = load i8, ptr %618, align 4, !range !9
  %620 = icmp eq i8 %619, 0
  br i1 %620, label %621, label %643

621:                                              ; preds = %614
  %622 = shl nuw nsw i32 %34, 8
  %623 = and i32 %622, 65280
  %624 = load ptr, ptr %54, align 8
  %625 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %626 = icmp sgt i32 %625, 0
  br i1 %626, label %627, label %640

627:                                              ; preds = %621
  %628 = tail call ptr @llvm.thread.pointer() #9
  %629 = getelementptr inbounds %struct.thread_info, ptr %628, i32 0, i32 2
  %630 = load i32, ptr %629, align 8
  %631 = lshr i32 %630, 5
  %632 = getelementptr i32, ptr @__cpu_online_mask, i32 %631
  %633 = load volatile i32, ptr %632, align 4
  %634 = and i32 %630, 31
  %635 = shl nuw i32 1, %634
  %636 = and i32 %635, %633
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %640, label %638

638:                                              ; preds = %627
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %639 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %624, i32 noundef 230, i32 noundef %623) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %640

640:                                              ; preds = %638, %627, %621
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %641 = load ptr, ptr %49, align 8
  %642 = getelementptr i8, ptr %641, i32 920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %642, i32 %623) #9, !srcloc !18
  br label %643

643:                                              ; preds = %640, %614
  %644 = getelementptr i8, ptr %0, i32 1092
  %645 = load i8, ptr %644, align 1
  %646 = shl i8 %645, 2
  %647 = and i8 %646, 28
  %648 = getelementptr i8, ptr %0, i32 1093
  %649 = load i8, ptr %648, align 1
  %650 = shl i8 %649, 5
  %651 = or i8 %647, %650
  %652 = zext i8 %651 to i32
  %653 = getelementptr i8, ptr %0, i32 1094
  %654 = load i8, ptr %653, align 1
  %655 = and i8 %654, 7
  %656 = zext i8 %655 to i32
  %657 = shl nuw nsw i32 %656, 8
  %658 = or i32 %657, %652
  %659 = getelementptr i8, ptr %0, i32 1095
  %660 = load i8, ptr %659, align 1
  %661 = and i8 %660, 7
  %662 = zext i8 %661 to i32
  %663 = shl nuw nsw i32 %662, 11
  %664 = or i32 %658, %663
  %665 = getelementptr i8, ptr %0, i32 1096
  %666 = load i8, ptr %665, align 1
  %667 = and i8 %666, 7
  %668 = zext i8 %667 to i32
  %669 = shl nuw nsw i32 %668, 14
  %670 = or i32 %664, %669
  %671 = or i32 %670, -1928331264
  %672 = load ptr, ptr %54, align 8
  %673 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %674 = icmp sgt i32 %673, 0
  br i1 %674, label %675, label %688

675:                                              ; preds = %643
  %676 = tail call ptr @llvm.thread.pointer() #9
  %677 = getelementptr inbounds %struct.thread_info, ptr %676, i32 0, i32 2
  %678 = load i32, ptr %677, align 8
  %679 = lshr i32 %678, 5
  %680 = getelementptr i32, ptr @__cpu_online_mask, i32 %679
  %681 = load volatile i32, ptr %680, align 4
  %682 = and i32 %678, 31
  %683 = shl nuw i32 1, %682
  %684 = and i32 %683, %681
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %688, label %686

686:                                              ; preds = %675
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %687 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %672, i32 noundef 75, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %688

688:                                              ; preds = %686, %675, %643
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %689 = load ptr, ptr %49, align 8
  %690 = getelementptr i8, ptr %689, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %690, i32 0) #9, !srcloc !18
  %691 = load ptr, ptr %54, align 8
  %692 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %693 = icmp sgt i32 %692, 0
  br i1 %693, label %694, label %707

694:                                              ; preds = %688
  %695 = tail call ptr @llvm.thread.pointer() #9
  %696 = getelementptr inbounds %struct.thread_info, ptr %695, i32 0, i32 2
  %697 = load i32, ptr %696, align 8
  %698 = lshr i32 %697, 5
  %699 = getelementptr i32, ptr @__cpu_online_mask, i32 %698
  %700 = load volatile i32, ptr %699, align 4
  %701 = and i32 %697, 31
  %702 = shl nuw i32 1, %701
  %703 = and i32 %702, %700
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %707, label %705

705:                                              ; preds = %694
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %706 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %691, i32 noundef 74, i32 noundef %671) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %707

707:                                              ; preds = %705, %694, %688
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %708 = load ptr, ptr %49, align 8
  %709 = getelementptr i8, ptr %708, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %709, i32 %671) #9, !srcloc !18
  %710 = getelementptr i8, ptr %0, i32 1080
  %711 = load ptr, ptr %710, align 4
  %712 = tail call fastcc i32 @tegra_sor_set_parent_clock(ptr noundef %9, ptr noundef %711)
  %713 = icmp slt i32 %712, 0
  br i1 %713, label %714, label %716

714:                                              ; preds = %707
  %715 = load ptr, ptr %54, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %715, ptr noundef nonnull @.str.61, i32 noundef %712) #10
  br label %2105

716:                                              ; preds = %707
  %717 = load ptr, ptr %31, align 4
  %718 = getelementptr i8, ptr %0, i32 1068
  %719 = load ptr, ptr %718, align 8
  %720 = tail call i32 @clk_set_parent(ptr noundef %717, ptr noundef %719) #9
  %721 = icmp slt i32 %720, 0
  br i1 %721, label %722, label %724

722:                                              ; preds = %716
  %723 = load ptr, ptr %54, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %723, ptr noundef nonnull @.str.62, i32 noundef %720) #10
  br label %2105

724:                                              ; preds = %716
  %725 = load ptr, ptr %718, align 8
  %726 = tail call i32 @clk_get_rate(ptr noundef %725) #9
  %727 = load i32, ptr %14, align 4
  %728 = icmp sgt i32 %727, 339999
  %729 = zext i1 %728 to i32
  %730 = lshr i32 %726, %729
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.63, i32 noundef %730, i32 noundef %16) #9
  %731 = load ptr, ptr %31, align 4
  %732 = tail call i32 @clk_set_rate(ptr noundef %731, i32 noundef %730) #9
  %733 = load ptr, ptr %43, align 4
  %734 = getelementptr inbounds %struct.tegra_sor_soc, ptr %733, i32 0, i32 6
  %735 = load i8, ptr %734, align 4, !range !9
  %736 = icmp eq i8 %735, 0
  br i1 %736, label %737, label %764

737:                                              ; preds = %724
  %738 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 5
  %739 = load i32, ptr %738, align 4
  %740 = and i32 %739, 1
  %741 = load i32, ptr %14, align 4
  %742 = icmp slt i32 %741, 75000
  %743 = or i32 %740, 2
  %744 = select i1 %742, i32 %743, i32 %740
  %745 = load ptr, ptr %54, align 8
  %746 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %747 = icmp sgt i32 %746, 0
  br i1 %747, label %748, label %761

748:                                              ; preds = %737
  %749 = tail call ptr @llvm.thread.pointer() #9
  %750 = getelementptr inbounds %struct.thread_info, ptr %749, i32 0, i32 2
  %751 = load i32, ptr %750, align 8
  %752 = lshr i32 %751, 5
  %753 = getelementptr i32, ptr @__cpu_online_mask, i32 %752
  %754 = load volatile i32, ptr %753, align 4
  %755 = and i32 %751, 31
  %756 = shl nuw i32 1, %755
  %757 = and i32 %756, %754
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %761, label %759

759:                                              ; preds = %748
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %760 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %745, i32 noundef 232, i32 noundef %744) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %761

761:                                              ; preds = %759, %748, %737
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %762 = load ptr, ptr %49, align 8
  %763 = getelementptr i8, ptr %762, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %763, i32 %744) #9, !srcloc !18
  br label %764

764:                                              ; preds = %761, %724
  %765 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 7, i32 4
  %766 = load i16, ptr %765, align 2
  %767 = zext i16 %766 to i32
  %768 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 7, i32 1
  %769 = load i16, ptr %768, align 4
  %770 = zext i16 %769 to i32
  %771 = add nsw i32 %767, -74
  %772 = sub nsw i32 %771, %770
  %773 = sdiv i32 %772, 32
  %774 = shl nsw i32 %773, 16
  %775 = and i32 %774, 2031616
  %776 = or i32 %775, 1073742904
  %777 = load ptr, ptr %54, align 8
  %778 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %779 = icmp sgt i32 %778, 0
  br i1 %779, label %780, label %793

780:                                              ; preds = %764
  %781 = tail call ptr @llvm.thread.pointer() #9
  %782 = getelementptr inbounds %struct.thread_info, ptr %781, i32 0, i32 2
  %783 = load i32, ptr %782, align 8
  %784 = lshr i32 %783, 5
  %785 = getelementptr i32, ptr @__cpu_online_mask, i32 %784
  %786 = load volatile i32, ptr %785, align 4
  %787 = and i32 %783, 31
  %788 = shl nuw i32 1, %787
  %789 = and i32 %788, %786
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %793, label %791

791:                                              ; preds = %780
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %792 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %777, i32 noundef 192, i32 noundef %776) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %793

793:                                              ; preds = %791, %780, %764
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %794 = load ptr, ptr %49, align 8
  %795 = getelementptr i8, ptr %794, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %795, i32 %776) #9, !srcloc !18
  %796 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 14
  %797 = load ptr, ptr %796, align 8
  %798 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %797, i32 0, i32 9
  %799 = load i8, ptr %798, align 2, !range !9
  %800 = icmp eq i8 %799, 0
  br i1 %800, label %801, label %901

801:                                              ; preds = %793
  %802 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 7, i32 3
  %803 = load i16, ptr %802, align 4
  %804 = zext i16 %803 to i32
  %805 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 7, i32 2
  %806 = load i16, ptr %805, align 2
  %807 = zext i16 %806 to i32
  %808 = load i16, ptr %765, align 2
  %809 = zext i16 %808 to i32
  %810 = sub nsw i32 %809, %804
  %811 = add nuw nsw i32 %804, 1
  %812 = sub nsw i32 %811, %807
  %813 = add nsw i32 %812, %810
  %814 = add nsw i32 %813, 4086
  %815 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  %816 = load ptr, ptr %815, align 4
  %817 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %818 = icmp sgt i32 %817, 0
  br i1 %818, label %819, label %832

819:                                              ; preds = %801
  %820 = tail call ptr @llvm.thread.pointer() #9
  %821 = getelementptr inbounds %struct.thread_info, ptr %820, i32 0, i32 2
  %822 = load i32, ptr %821, align 8
  %823 = lshr i32 %822, 5
  %824 = getelementptr i32, ptr @__cpu_online_mask, i32 %823
  %825 = load volatile i32, ptr %824, align 4
  %826 = and i32 %822, 31
  %827 = shl nuw i32 1, %826
  %828 = and i32 %827, %825
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %832, label %830

830:                                              ; preds = %819
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %831 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %816, i32 noundef 1045, i32 noundef 384) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %832

832:                                              ; preds = %830, %819, %801
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  tail call void @arm_heavy_mb() #9
  %833 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 8
  %834 = load ptr, ptr %833, align 8
  %835 = getelementptr i8, ptr %834, i32 4180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %835, i32 384) #9, !srcloc !18
  %836 = shl i32 %813, 16
  %837 = add i32 %836, 268304384
  %838 = and i32 %837, 268369920
  %839 = and i32 %814, 4095
  %840 = or i32 %838, %839
  %841 = load ptr, ptr %815, align 4
  %842 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %843 = icmp sgt i32 %842, 0
  br i1 %843, label %844, label %857

844:                                              ; preds = %832
  %845 = tail call ptr @llvm.thread.pointer() #9
  %846 = getelementptr inbounds %struct.thread_info, ptr %845, i32 0, i32 2
  %847 = load i32, ptr %846, align 8
  %848 = lshr i32 %847, 5
  %849 = getelementptr i32, ptr @__cpu_online_mask, i32 %848
  %850 = load volatile i32, ptr %849, align 4
  %851 = and i32 %847, 31
  %852 = shl nuw i32 1, %851
  %853 = and i32 %852, %850
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %857, label %855

855:                                              ; preds = %844
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %856 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %841, i32 noundef 1046, i32 noundef %840) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %857

857:                                              ; preds = %855, %844, %832
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  tail call void @arm_heavy_mb() #9
  %858 = load ptr, ptr %833, align 8
  %859 = getelementptr i8, ptr %858, i32 4184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %859, i32 %840) #9, !srcloc !18
  %860 = load ptr, ptr %833, align 8
  %861 = getelementptr i8, ptr %860, i32 4096
  %862 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %861) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %863 = load ptr, ptr %815, align 4
  %864 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %865 = icmp sgt i32 %864, 0
  br i1 %865, label %866, label %880

866:                                              ; preds = %857
  %867 = tail call ptr @llvm.thread.pointer() #9
  %868 = getelementptr inbounds %struct.thread_info, ptr %867, i32 0, i32 2
  %869 = load i32, ptr %868, align 8
  %870 = lshr i32 %869, 5
  %871 = getelementptr i32, ptr @__cpu_online_mask, i32 %870
  %872 = load volatile i32, ptr %871, align 4
  %873 = and i32 %869, 31
  %874 = shl nuw i32 1, %873
  %875 = and i32 %874, %872
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %880, label %877

877:                                              ; preds = %866
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %878 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %863, i32 noundef 1024, i32 noundef %862) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %879 = load ptr, ptr %815, align 4
  br label %880

880:                                              ; preds = %877, %866, %857
  %881 = phi ptr [ %863, %857 ], [ %863, %866 ], [ %879, %877 ]
  %882 = or i32 %862, 4096
  %883 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %884 = icmp sgt i32 %883, 0
  br i1 %884, label %885, label %898

885:                                              ; preds = %880
  %886 = tail call ptr @llvm.thread.pointer() #9
  %887 = getelementptr inbounds %struct.thread_info, ptr %886, i32 0, i32 2
  %888 = load i32, ptr %887, align 8
  %889 = lshr i32 %888, 5
  %890 = getelementptr i32, ptr @__cpu_online_mask, i32 %889
  %891 = load volatile i32, ptr %890, align 4
  %892 = and i32 %888, 31
  %893 = shl nuw i32 1, %892
  %894 = and i32 %893, %891
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %898, label %896

896:                                              ; preds = %885
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %897 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %881, i32 noundef 1024, i32 noundef %882) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %898

898:                                              ; preds = %896, %885, %880
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  tail call void @arm_heavy_mb() #9
  %899 = load ptr, ptr %833, align 8
  %900 = getelementptr i8, ptr %899, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %900, i32 %882) #9, !srcloc !18
  br label %901

901:                                              ; preds = %898, %793
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %2, i8 0, i32 17, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i32 68, i1 false) #9, !annotation !8
  %902 = load ptr, ptr %49, align 8
  %903 = getelementptr i8, ptr %902, i32 636
  %904 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %903) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %905 = load ptr, ptr %54, align 8
  %906 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %907 = icmp sgt i32 %906, 0
  br i1 %907, label %908, label %922

908:                                              ; preds = %901
  %909 = tail call ptr @llvm.thread.pointer() #9
  %910 = getelementptr inbounds %struct.thread_info, ptr %909, i32 0, i32 2
  %911 = load i32, ptr %910, align 8
  %912 = lshr i32 %911, 5
  %913 = getelementptr i32, ptr @__cpu_online_mask, i32 %912
  %914 = load volatile i32, ptr %913, align 4
  %915 = and i32 %911, 31
  %916 = shl nuw i32 1, %915
  %917 = and i32 %916, %914
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %922, label %919

919:                                              ; preds = %908
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %920 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %905, i32 noundef 159, i32 noundef %904) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %921 = load ptr, ptr %54, align 8
  br label %922

922:                                              ; preds = %919, %908, %901
  %923 = phi ptr [ %905, %901 ], [ %905, %908 ], [ %921, %919 ]
  %924 = and i32 %904, -274
  %925 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %926 = icmp sgt i32 %925, 0
  br i1 %926, label %927, label %940

927:                                              ; preds = %922
  %928 = tail call ptr @llvm.thread.pointer() #9
  %929 = getelementptr inbounds %struct.thread_info, ptr %928, i32 0, i32 2
  %930 = load i32, ptr %929, align 8
  %931 = lshr i32 %930, 5
  %932 = getelementptr i32, ptr @__cpu_online_mask, i32 %931
  %933 = load volatile i32, ptr %932, align 4
  %934 = and i32 %930, 31
  %935 = shl nuw i32 1, %934
  %936 = and i32 %935, %933
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %940, label %938

938:                                              ; preds = %927
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %939 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %923, i32 noundef 159, i32 noundef %924) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %940

940:                                              ; preds = %938, %927, %922
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %941 = load ptr, ptr %49, align 8
  %942 = getelementptr i8, ptr %941, i32 636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %942, i32 %924) #9, !srcloc !18
  %943 = getelementptr i8, ptr %0, i32 76
  %944 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %3, ptr noundef %943, ptr noundef %14) #9
  %945 = icmp slt i32 %944, 0
  br i1 %945, label %946, label %948

946:                                              ; preds = %940
  %947 = load ptr, ptr %54, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %947, ptr noundef nonnull @.str.64, i32 noundef %944) #10
  br label %995

948:                                              ; preds = %940
  %949 = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 17) #9
  %950 = icmp slt i32 %949, 0
  br i1 %950, label %951, label %953

951:                                              ; preds = %948
  %952 = load ptr, ptr %54, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %952, ptr noundef nonnull @.str.70, i32 noundef %949) #10
  br label %995

953:                                              ; preds = %948
  call fastcc void @tegra_sor_hdmi_write_infopack(ptr noundef %9, ptr noundef nonnull %2, i32 noundef %949) #9
  %954 = load ptr, ptr %49, align 8
  %955 = getelementptr i8, ptr %954, i32 636
  %956 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %955) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %957 = load ptr, ptr %54, align 8
  %958 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %959 = icmp sgt i32 %958, 0
  br i1 %959, label %960, label %974

960:                                              ; preds = %953
  %961 = tail call ptr @llvm.thread.pointer() #9
  %962 = getelementptr inbounds %struct.thread_info, ptr %961, i32 0, i32 2
  %963 = load i32, ptr %962, align 8
  %964 = lshr i32 %963, 5
  %965 = getelementptr i32, ptr @__cpu_online_mask, i32 %964
  %966 = load volatile i32, ptr %965, align 4
  %967 = and i32 %963, 31
  %968 = shl nuw i32 1, %967
  %969 = and i32 %968, %966
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %974, label %971

971:                                              ; preds = %960
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %972 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %957, i32 noundef 159, i32 noundef %956) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %973 = load ptr, ptr %54, align 8
  br label %974

974:                                              ; preds = %971, %960, %953
  %975 = phi ptr [ %957, %953 ], [ %957, %960 ], [ %973, %971 ]
  %976 = or i32 %956, 513
  %977 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %978 = icmp sgt i32 %977, 0
  br i1 %978, label %979, label %992

979:                                              ; preds = %974
  %980 = tail call ptr @llvm.thread.pointer() #9
  %981 = getelementptr inbounds %struct.thread_info, ptr %980, i32 0, i32 2
  %982 = load i32, ptr %981, align 8
  %983 = lshr i32 %982, 5
  %984 = getelementptr i32, ptr @__cpu_online_mask, i32 %983
  %985 = load volatile i32, ptr %984, align 4
  %986 = and i32 %982, 31
  %987 = shl nuw i32 1, %986
  %988 = and i32 %987, %985
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %992, label %990

990:                                              ; preds = %979
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %991 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %975, i32 noundef 159, i32 noundef %976) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %992

992:                                              ; preds = %990, %979, %974
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %993 = load ptr, ptr %49, align 8
  %994 = getelementptr i8, ptr %993, i32 636
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %994, i32 %976) #9, !srcloc !18
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %2) #9
  br label %998

995:                                              ; preds = %951, %946
  %996 = phi i32 [ %949, %951 ], [ %944, %946 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %2) #9
  %997 = load ptr, ptr %54, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %997, ptr noundef nonnull @.str.64, i32 noundef %996) #10
  br label %998

998:                                              ; preds = %995, %992
  call fastcc void @tegra_sor_hdmi_disable_audio_infoframe(ptr noundef %9)
  %999 = load ptr, ptr %49, align 8
  %1000 = getelementptr i8, ptr %999, i32 16
  %1001 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1000) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1002 = load ptr, ptr %54, align 8
  %1003 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1004 = icmp sgt i32 %1003, 0
  br i1 %1004, label %1005, label %1019

1005:                                             ; preds = %998
  %1006 = tail call ptr @llvm.thread.pointer() #9
  %1007 = getelementptr inbounds %struct.thread_info, ptr %1006, i32 0, i32 2
  %1008 = load i32, ptr %1007, align 8
  %1009 = lshr i32 %1008, 5
  %1010 = getelementptr i32, ptr @__cpu_online_mask, i32 %1009
  %1011 = load volatile i32, ptr %1010, align 4
  %1012 = and i32 %1008, 31
  %1013 = shl nuw i32 1, %1012
  %1014 = and i32 %1013, %1011
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1019, label %1016

1016:                                             ; preds = %1005
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1017 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1002, i32 noundef 4, i32 noundef %1001) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1018 = load ptr, ptr %54, align 8
  br label %1019

1019:                                             ; preds = %1016, %1005, %998
  %1020 = phi ptr [ %1002, %998 ], [ %1002, %1005 ], [ %1018, %1016 ]
  %1021 = and i32 %1001, -3841
  %1022 = or i32 %1021, 256
  %1023 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1024 = icmp sgt i32 %1023, 0
  br i1 %1024, label %1025, label %1038

1025:                                             ; preds = %1019
  %1026 = tail call ptr @llvm.thread.pointer() #9
  %1027 = getelementptr inbounds %struct.thread_info, ptr %1026, i32 0, i32 2
  %1028 = load i32, ptr %1027, align 8
  %1029 = lshr i32 %1028, 5
  %1030 = getelementptr i32, ptr @__cpu_online_mask, i32 %1029
  %1031 = load volatile i32, ptr %1030, align 4
  %1032 = and i32 %1028, 31
  %1033 = shl nuw i32 1, %1032
  %1034 = and i32 %1033, %1031
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1038, label %1036

1036:                                             ; preds = %1025
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1037 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1020, i32 noundef 4, i32 noundef %1022) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1038

1038:                                             ; preds = %1036, %1025, %1019
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1039 = load ptr, ptr %49, align 8
  %1040 = getelementptr i8, ptr %1039, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1040, i32 %1022) #9, !srcloc !18
  %1041 = load ptr, ptr %43, align 4
  %1042 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1041, i32 0, i32 5
  %1043 = load ptr, ptr %1042, align 4
  %1044 = getelementptr inbounds %struct.tegra_sor_regs, ptr %1043, i32 0, i32 10
  %1045 = load i32, ptr %1044, align 4
  %1046 = load ptr, ptr %49, align 8
  %1047 = shl i32 %1045, 2
  %1048 = getelementptr i8, ptr %1046, i32 %1047
  %1049 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1048) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1050 = load ptr, ptr %54, align 8
  %1051 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1052 = icmp sgt i32 %1051, 0
  br i1 %1052, label %1053, label %1067

1053:                                             ; preds = %1038
  %1054 = tail call ptr @llvm.thread.pointer() #9
  %1055 = getelementptr inbounds %struct.thread_info, ptr %1054, i32 0, i32 2
  %1056 = load i32, ptr %1055, align 8
  %1057 = lshr i32 %1056, 5
  %1058 = getelementptr i32, ptr @__cpu_online_mask, i32 %1057
  %1059 = load volatile i32, ptr %1058, align 4
  %1060 = and i32 %1056, 31
  %1061 = shl nuw i32 1, %1060
  %1062 = and i32 %1061, %1059
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1067, label %1064

1064:                                             ; preds = %1053
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1065 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1050, i32 noundef %1045, i32 noundef %1049) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1066 = load ptr, ptr %54, align 8
  br label %1067

1067:                                             ; preds = %1064, %1053, %1038
  %1068 = phi ptr [ %1050, %1038 ], [ %1050, %1053 ], [ %1066, %1064 ]
  %1069 = and i32 %1049, -8388609
  %1070 = load ptr, ptr %43, align 4
  %1071 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1070, i32 0, i32 5
  %1072 = load ptr, ptr %1071, align 4
  %1073 = getelementptr inbounds %struct.tegra_sor_regs, ptr %1072, i32 0, i32 10
  %1074 = load i32, ptr %1073, align 4
  %1075 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1076 = icmp sgt i32 %1075, 0
  br i1 %1076, label %1077, label %1090

1077:                                             ; preds = %1067
  %1078 = tail call ptr @llvm.thread.pointer() #9
  %1079 = getelementptr inbounds %struct.thread_info, ptr %1078, i32 0, i32 2
  %1080 = load i32, ptr %1079, align 8
  %1081 = lshr i32 %1080, 5
  %1082 = getelementptr i32, ptr @__cpu_online_mask, i32 %1081
  %1083 = load volatile i32, ptr %1082, align 4
  %1084 = and i32 %1080, 31
  %1085 = shl nuw i32 1, %1084
  %1086 = and i32 %1085, %1083
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %1090, label %1088

1088:                                             ; preds = %1077
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1089 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1068, i32 noundef %1074, i32 noundef %1069) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1090

1090:                                             ; preds = %1088, %1077, %1067
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1091 = load ptr, ptr %49, align 8
  %1092 = shl i32 %1074, 2
  %1093 = getelementptr i8, ptr %1091, i32 %1092
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1093, i32 %1069) #9, !srcloc !18
  %1094 = load i32, ptr %14, align 4
  %1095 = mul i32 %1094, 1000
  %1096 = getelementptr i8, ptr %0, i32 1308
  %1097 = load i32, ptr %1096, align 8
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1112, label %1099

1099:                                             ; preds = %1090
  %1100 = getelementptr i8, ptr %0, i32 1304
  %1101 = load ptr, ptr %1100, align 4
  br label %1105

1102:                                             ; preds = %1105
  %1103 = add nuw i32 %1106, 1
  %1104 = icmp eq i32 %1103, %1097
  br i1 %1104, label %1112, label %1105

1105:                                             ; preds = %1102, %1099
  %1106 = phi i32 [ 0, %1099 ], [ %1103, %1102 ]
  %1107 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106
  %1108 = load i32, ptr %1107, align 4
  %1109 = icmp ult i32 %1108, %1095
  br i1 %1109, label %1102, label %1110

1110:                                             ; preds = %1105
  %1111 = icmp eq ptr %1107, null
  br i1 %1111, label %1112, label %1114

1112:                                             ; preds = %1110, %1102, %1090
  %1113 = load ptr, ptr %54, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1113, ptr noundef nonnull @.str.65, i32 noundef %1095) #10
  br label %2105

1114:                                             ; preds = %1110
  %1115 = load ptr, ptr %43, align 4
  %1116 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1115, i32 0, i32 5
  %1117 = load ptr, ptr %1116, align 4
  %1118 = getelementptr inbounds %struct.tegra_sor_regs, ptr %1117, i32 0, i32 6
  %1119 = load i32, ptr %1118, align 4
  %1120 = load ptr, ptr %49, align 8
  %1121 = shl i32 %1119, 2
  %1122 = getelementptr i8, ptr %1120, i32 %1121
  %1123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1122) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1124 = load ptr, ptr %54, align 8
  %1125 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1126 = icmp sgt i32 %1125, 0
  br i1 %1126, label %1127, label %1141

1127:                                             ; preds = %1114
  %1128 = tail call ptr @llvm.thread.pointer() #9
  %1129 = getelementptr inbounds %struct.thread_info, ptr %1128, i32 0, i32 2
  %1130 = load i32, ptr %1129, align 8
  %1131 = lshr i32 %1130, 5
  %1132 = getelementptr i32, ptr @__cpu_online_mask, i32 %1131
  %1133 = load volatile i32, ptr %1132, align 4
  %1134 = and i32 %1130, 31
  %1135 = shl nuw i32 1, %1134
  %1136 = and i32 %1135, %1133
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1141, label %1138

1138:                                             ; preds = %1127
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1139 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1124, i32 noundef %1119, i32 noundef %1123) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1140 = load ptr, ptr %54, align 8
  br label %1141

1141:                                             ; preds = %1138, %1127, %1114
  %1142 = phi ptr [ %1124, %1114 ], [ %1124, %1127 ], [ %1140, %1138 ]
  %1143 = and i32 %1123, -252645121
  %1144 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 3
  %1145 = load i8, ptr %1144, align 2
  %1146 = and i8 %1145, 15
  %1147 = zext i8 %1146 to i32
  %1148 = shl nuw nsw i32 %1147, 24
  %1149 = or i32 %1148, %1143
  %1150 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 2
  %1151 = load i8, ptr %1150, align 1
  %1152 = and i8 %1151, 15
  %1153 = zext i8 %1152 to i32
  %1154 = shl nuw nsw i32 %1153, 16
  %1155 = or i32 %1149, %1154
  %1156 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 1
  %1157 = load i8, ptr %1156, align 4
  %1158 = and i8 %1157, 15
  %1159 = zext i8 %1158 to i32
  %1160 = shl nuw nsw i32 %1159, 8
  %1161 = or i32 %1155, %1160
  %1162 = load ptr, ptr %43, align 4
  %1163 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1162, i32 0, i32 5
  %1164 = load ptr, ptr %1163, align 4
  %1165 = getelementptr inbounds %struct.tegra_sor_regs, ptr %1164, i32 0, i32 6
  %1166 = load i32, ptr %1165, align 4
  %1167 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1168 = icmp sgt i32 %1167, 0
  br i1 %1168, label %1169, label %1182

1169:                                             ; preds = %1141
  %1170 = tail call ptr @llvm.thread.pointer() #9
  %1171 = getelementptr inbounds %struct.thread_info, ptr %1170, i32 0, i32 2
  %1172 = load i32, ptr %1171, align 8
  %1173 = lshr i32 %1172, 5
  %1174 = getelementptr i32, ptr @__cpu_online_mask, i32 %1173
  %1175 = load volatile i32, ptr %1174, align 4
  %1176 = and i32 %1172, 31
  %1177 = shl nuw i32 1, %1176
  %1178 = and i32 %1177, %1175
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1182, label %1180

1180:                                             ; preds = %1169
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1181 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1142, i32 noundef %1166, i32 noundef %1161) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1182

1182:                                             ; preds = %1180, %1169, %1141
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1183 = load ptr, ptr %49, align 8
  %1184 = shl i32 %1166, 2
  %1185 = getelementptr i8, ptr %1183, i32 %1184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1185, i32 %1161) #9, !srcloc !18
  %1186 = load ptr, ptr %43, align 4
  %1187 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1186, i32 0, i32 5
  %1188 = load ptr, ptr %1187, align 4
  %1189 = getelementptr inbounds %struct.tegra_sor_regs, ptr %1188, i32 0, i32 7
  %1190 = load i32, ptr %1189, align 4
  %1191 = load ptr, ptr %49, align 8
  %1192 = shl i32 %1190, 2
  %1193 = getelementptr i8, ptr %1191, i32 %1192
  %1194 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1193) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1195 = load ptr, ptr %54, align 8
  %1196 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1197 = icmp sgt i32 %1196, 0
  br i1 %1197, label %1198, label %1212

1198:                                             ; preds = %1182
  %1199 = tail call ptr @llvm.thread.pointer() #9
  %1200 = getelementptr inbounds %struct.thread_info, ptr %1199, i32 0, i32 2
  %1201 = load i32, ptr %1200, align 8
  %1202 = lshr i32 %1201, 5
  %1203 = getelementptr i32, ptr @__cpu_online_mask, i32 %1202
  %1204 = load volatile i32, ptr %1203, align 4
  %1205 = and i32 %1201, 31
  %1206 = shl nuw i32 1, %1205
  %1207 = and i32 %1206, %1204
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1212, label %1209

1209:                                             ; preds = %1198
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1210 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1195, i32 noundef %1190, i32 noundef %1194) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1211 = load ptr, ptr %54, align 8
  br label %1212

1212:                                             ; preds = %1209, %1198, %1182
  %1213 = phi ptr [ %1195, %1182 ], [ %1195, %1198 ], [ %1211, %1209 ]
  %1214 = and i32 %1194, -15736577
  %1215 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 4
  %1216 = load i8, ptr %1215, align 1
  %1217 = and i8 %1216, 15
  %1218 = zext i8 %1217 to i32
  %1219 = shl nuw nsw i32 %1218, 20
  %1220 = or i32 %1219, %1214
  %1221 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 5
  %1222 = load i8, ptr %1221, align 4
  %1223 = and i8 %1222, 15
  %1224 = zext i8 %1223 to i32
  %1225 = shl nuw nsw i32 %1224, 9
  %1226 = or i32 %1220, %1225
  %1227 = or i32 %1226, 256
  %1228 = load ptr, ptr %43, align 4
  %1229 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1228, i32 0, i32 5
  %1230 = load ptr, ptr %1229, align 4
  %1231 = getelementptr inbounds %struct.tegra_sor_regs, ptr %1230, i32 0, i32 7
  %1232 = load i32, ptr %1231, align 4
  %1233 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1234 = icmp sgt i32 %1233, 0
  br i1 %1234, label %1235, label %1248

1235:                                             ; preds = %1212
  %1236 = tail call ptr @llvm.thread.pointer() #9
  %1237 = getelementptr inbounds %struct.thread_info, ptr %1236, i32 0, i32 2
  %1238 = load i32, ptr %1237, align 8
  %1239 = lshr i32 %1238, 5
  %1240 = getelementptr i32, ptr @__cpu_online_mask, i32 %1239
  %1241 = load volatile i32, ptr %1240, align 4
  %1242 = and i32 %1238, 31
  %1243 = shl nuw i32 1, %1242
  %1244 = and i32 %1243, %1241
  %1245 = icmp eq i32 %1244, 0
  br i1 %1245, label %1248, label %1246

1246:                                             ; preds = %1235
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1247 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1213, i32 noundef %1232, i32 noundef %1227) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1248

1248:                                             ; preds = %1246, %1235, %1212
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1249 = load ptr, ptr %49, align 8
  %1250 = shl i32 %1232, 2
  %1251 = getelementptr i8, ptr %1249, i32 %1250
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1251, i32 %1227) #9, !srcloc !18
  %1252 = load ptr, ptr %43, align 4
  %1253 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1252, i32 0, i32 5
  %1254 = load ptr, ptr %1253, align 4
  %1255 = getelementptr inbounds %struct.tegra_sor_regs, ptr %1254, i32 0, i32 9
  %1256 = load i32, ptr %1255, align 4
  %1257 = load ptr, ptr %49, align 8
  %1258 = shl i32 %1256, 2
  %1259 = getelementptr i8, ptr %1257, i32 %1258
  %1260 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1259) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1261 = load ptr, ptr %54, align 8
  %1262 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1263 = icmp sgt i32 %1262, 0
  br i1 %1263, label %1264, label %1278

1264:                                             ; preds = %1248
  %1265 = tail call ptr @llvm.thread.pointer() #9
  %1266 = getelementptr inbounds %struct.thread_info, ptr %1265, i32 0, i32 2
  %1267 = load i32, ptr %1266, align 8
  %1268 = lshr i32 %1267, 5
  %1269 = getelementptr i32, ptr @__cpu_online_mask, i32 %1268
  %1270 = load volatile i32, ptr %1269, align 4
  %1271 = and i32 %1267, 31
  %1272 = shl nuw i32 1, %1271
  %1273 = and i32 %1272, %1270
  %1274 = icmp eq i32 %1273, 0
  br i1 %1274, label %1278, label %1275

1275:                                             ; preds = %1264
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1276 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1261, i32 noundef %1256, i32 noundef %1260) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1277 = load ptr, ptr %54, align 8
  br label %1278

1278:                                             ; preds = %1275, %1264, %1248
  %1279 = phi ptr [ %1261, %1248 ], [ %1261, %1264 ], [ %1277, %1275 ]
  %1280 = and i32 %1260, 16773135
  %1281 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 7
  %1282 = load i8, ptr %1281, align 2
  %1283 = zext i8 %1282 to i32
  %1284 = shl i32 %1283, 28
  %1285 = or i32 %1284, %1280
  %1286 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 8
  %1287 = load i8, ptr %1286, align 1
  %1288 = and i8 %1287, 15
  %1289 = zext i8 %1288 to i32
  %1290 = shl nuw nsw i32 %1289, 24
  %1291 = or i32 %1290, %1285
  %1292 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 9
  %1293 = load i8, ptr %1292, align 4
  %1294 = and i8 %1293, 15
  %1295 = zext i8 %1294 to i32
  %1296 = shl nuw nsw i32 %1295, 8
  %1297 = or i32 %1291, %1296
  %1298 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 10
  %1299 = load i8, ptr %1298, align 1
  %1300 = shl i8 %1299, 4
  %1301 = zext i8 %1300 to i32
  %1302 = or i32 %1297, %1301
  %1303 = load ptr, ptr %43, align 4
  %1304 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1303, i32 0, i32 5
  %1305 = load ptr, ptr %1304, align 4
  %1306 = getelementptr inbounds %struct.tegra_sor_regs, ptr %1305, i32 0, i32 9
  %1307 = load i32, ptr %1306, align 4
  %1308 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1309 = icmp sgt i32 %1308, 0
  br i1 %1309, label %1310, label %1323

1310:                                             ; preds = %1278
  %1311 = tail call ptr @llvm.thread.pointer() #9
  %1312 = getelementptr inbounds %struct.thread_info, ptr %1311, i32 0, i32 2
  %1313 = load i32, ptr %1312, align 8
  %1314 = lshr i32 %1313, 5
  %1315 = getelementptr i32, ptr @__cpu_online_mask, i32 %1314
  %1316 = load volatile i32, ptr %1315, align 4
  %1317 = and i32 %1313, 31
  %1318 = shl nuw i32 1, %1317
  %1319 = and i32 %1318, %1316
  %1320 = icmp eq i32 %1319, 0
  br i1 %1320, label %1323, label %1321

1321:                                             ; preds = %1310
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1322 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1279, i32 noundef %1307, i32 noundef %1302) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1323

1323:                                             ; preds = %1321, %1310, %1278
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1324 = load ptr, ptr %49, align 8
  %1325 = shl i32 %1307, 2
  %1326 = getelementptr i8, ptr %1324, i32 %1325
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1326, i32 %1302) #9, !srcloc !18
  %1327 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 12
  %1328 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 12, i32 3
  %1329 = load i8, ptr %1328, align 1
  %1330 = zext i8 %1329 to i32
  %1331 = shl nuw i32 %1330, 24
  %1332 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 12, i32 2
  %1333 = load i8, ptr %1332, align 1
  %1334 = zext i8 %1333 to i32
  %1335 = shl nuw nsw i32 %1334, 16
  %1336 = or i32 %1335, %1331
  %1337 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 12, i32 1
  %1338 = load i8, ptr %1337, align 1
  %1339 = zext i8 %1338 to i32
  %1340 = shl nuw nsw i32 %1339, 8
  %1341 = or i32 %1336, %1340
  %1342 = load i8, ptr %1327, align 1
  %1343 = zext i8 %1342 to i32
  %1344 = or i32 %1341, %1343
  %1345 = load ptr, ptr %54, align 8
  %1346 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1347 = icmp sgt i32 %1346, 0
  br i1 %1347, label %1348, label %1361

1348:                                             ; preds = %1323
  %1349 = tail call ptr @llvm.thread.pointer() #9
  %1350 = getelementptr inbounds %struct.thread_info, ptr %1349, i32 0, i32 2
  %1351 = load i32, ptr %1350, align 8
  %1352 = lshr i32 %1351, 5
  %1353 = getelementptr i32, ptr @__cpu_online_mask, i32 %1352
  %1354 = load volatile i32, ptr %1353, align 4
  %1355 = and i32 %1351, 31
  %1356 = shl nuw i32 1, %1355
  %1357 = and i32 %1356, %1354
  %1358 = icmp eq i32 %1357, 0
  br i1 %1358, label %1361, label %1359

1359:                                             ; preds = %1348
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1360 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1345, i32 noundef 78, i32 noundef %1344) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1361

1361:                                             ; preds = %1359, %1348, %1323
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1362 = load ptr, ptr %49, align 8
  %1363 = getelementptr i8, ptr %1362, i32 312
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1363, i32 %1344) #9, !srcloc !18
  %1364 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 13
  %1365 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 13, i32 3
  %1366 = load i8, ptr %1365, align 1
  %1367 = zext i8 %1366 to i32
  %1368 = shl nuw i32 %1367, 24
  %1369 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 13, i32 2
  %1370 = load i8, ptr %1369, align 1
  %1371 = zext i8 %1370 to i32
  %1372 = shl nuw nsw i32 %1371, 16
  %1373 = or i32 %1372, %1368
  %1374 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 13, i32 1
  %1375 = load i8, ptr %1374, align 1
  %1376 = zext i8 %1375 to i32
  %1377 = shl nuw nsw i32 %1376, 8
  %1378 = or i32 %1373, %1377
  %1379 = load i8, ptr %1364, align 1
  %1380 = zext i8 %1379 to i32
  %1381 = or i32 %1378, %1380
  %1382 = load ptr, ptr %54, align 8
  %1383 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1384 = icmp sgt i32 %1383, 0
  br i1 %1384, label %1385, label %1398

1385:                                             ; preds = %1361
  %1386 = tail call ptr @llvm.thread.pointer() #9
  %1387 = getelementptr inbounds %struct.thread_info, ptr %1386, i32 0, i32 2
  %1388 = load i32, ptr %1387, align 8
  %1389 = lshr i32 %1388, 5
  %1390 = getelementptr i32, ptr @__cpu_online_mask, i32 %1389
  %1391 = load volatile i32, ptr %1390, align 4
  %1392 = and i32 %1388, 31
  %1393 = shl nuw i32 1, %1392
  %1394 = and i32 %1393, %1391
  %1395 = icmp eq i32 %1394, 0
  br i1 %1395, label %1398, label %1396

1396:                                             ; preds = %1385
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1397 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1382, i32 noundef 82, i32 noundef %1381) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1398

1398:                                             ; preds = %1396, %1385, %1361
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1399 = load ptr, ptr %49, align 8
  %1400 = getelementptr i8, ptr %1399, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1400, i32 %1381) #9, !srcloc !18
  %1401 = load ptr, ptr %43, align 4
  %1402 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1401, i32 0, i32 5
  %1403 = load ptr, ptr %1402, align 4
  %1404 = getelementptr inbounds %struct.tegra_sor_regs, ptr %1403, i32 0, i32 10
  %1405 = load i32, ptr %1404, align 4
  %1406 = load ptr, ptr %49, align 8
  %1407 = shl i32 %1405, 2
  %1408 = getelementptr i8, ptr %1406, i32 %1407
  %1409 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1408) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1410 = load ptr, ptr %54, align 8
  %1411 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1412 = icmp sgt i32 %1411, 0
  br i1 %1412, label %1413, label %1427

1413:                                             ; preds = %1398
  %1414 = tail call ptr @llvm.thread.pointer() #9
  %1415 = getelementptr inbounds %struct.thread_info, ptr %1414, i32 0, i32 2
  %1416 = load i32, ptr %1415, align 8
  %1417 = lshr i32 %1416, 5
  %1418 = getelementptr i32, ptr @__cpu_online_mask, i32 %1417
  %1419 = load volatile i32, ptr %1418, align 4
  %1420 = and i32 %1416, 31
  %1421 = shl nuw i32 1, %1420
  %1422 = and i32 %1421, %1419
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1427, label %1424

1424:                                             ; preds = %1413
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1425 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1410, i32 noundef %1405, i32 noundef %1409) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1426 = load ptr, ptr %54, align 8
  br label %1427

1427:                                             ; preds = %1424, %1413, %1398
  %1428 = phi ptr [ %1410, %1398 ], [ %1410, %1413 ], [ %1426, %1424 ]
  %1429 = and i32 %1409, -4259585
  %1430 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 6
  %1431 = load i8, ptr %1430, align 1
  %1432 = zext i8 %1431 to i32
  %1433 = shl nuw nsw i32 %1432, 8
  %1434 = or i32 %1433, %1429
  %1435 = or i32 %1434, 4194304
  %1436 = load ptr, ptr %43, align 4
  %1437 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1436, i32 0, i32 5
  %1438 = load ptr, ptr %1437, align 4
  %1439 = getelementptr inbounds %struct.tegra_sor_regs, ptr %1438, i32 0, i32 10
  %1440 = load i32, ptr %1439, align 4
  %1441 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1442 = icmp sgt i32 %1441, 0
  br i1 %1442, label %1443, label %1456

1443:                                             ; preds = %1427
  %1444 = tail call ptr @llvm.thread.pointer() #9
  %1445 = getelementptr inbounds %struct.thread_info, ptr %1444, i32 0, i32 2
  %1446 = load i32, ptr %1445, align 8
  %1447 = lshr i32 %1446, 5
  %1448 = getelementptr i32, ptr @__cpu_online_mask, i32 %1447
  %1449 = load volatile i32, ptr %1448, align 4
  %1450 = and i32 %1446, 31
  %1451 = shl nuw i32 1, %1450
  %1452 = and i32 %1451, %1449
  %1453 = icmp eq i32 %1452, 0
  br i1 %1453, label %1456, label %1454

1454:                                             ; preds = %1443
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1455 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1428, i32 noundef %1440, i32 noundef %1435) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1456

1456:                                             ; preds = %1454, %1443, %1427
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1457 = load ptr, ptr %49, align 8
  %1458 = shl i32 %1440, 2
  %1459 = getelementptr i8, ptr %1457, i32 %1458
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1459, i32 %1435) #9, !srcloc !18
  %1460 = load ptr, ptr %43, align 4
  %1461 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1460, i32 0, i32 5
  %1462 = load ptr, ptr %1461, align 4
  %1463 = getelementptr inbounds %struct.tegra_sor_regs, ptr %1462, i32 0, i32 11
  %1464 = load i32, ptr %1463, align 4
  %1465 = load ptr, ptr %49, align 8
  %1466 = shl i32 %1464, 2
  %1467 = getelementptr i8, ptr %1465, i32 %1466
  %1468 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1467) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1469 = load ptr, ptr %54, align 8
  %1470 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1471 = icmp sgt i32 %1470, 0
  br i1 %1471, label %1472, label %1486

1472:                                             ; preds = %1456
  %1473 = tail call ptr @llvm.thread.pointer() #9
  %1474 = getelementptr inbounds %struct.thread_info, ptr %1473, i32 0, i32 2
  %1475 = load i32, ptr %1474, align 8
  %1476 = lshr i32 %1475, 5
  %1477 = getelementptr i32, ptr @__cpu_online_mask, i32 %1476
  %1478 = load volatile i32, ptr %1477, align 4
  %1479 = and i32 %1475, 31
  %1480 = shl nuw i32 1, %1479
  %1481 = and i32 %1480, %1478
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1486, label %1483

1483:                                             ; preds = %1472
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1484 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1469, i32 noundef %1464, i32 noundef %1468) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1485 = load ptr, ptr %54, align 8
  br label %1486

1486:                                             ; preds = %1483, %1472, %1456
  %1487 = phi ptr [ %1469, %1456 ], [ %1469, %1472 ], [ %1485, %1483 ]
  %1488 = and i32 %1468, 16777215
  %1489 = getelementptr %struct.tegra_sor_hdmi_settings, ptr %1101, i32 %1106, i32 11
  %1490 = load i8, ptr %1489, align 2
  %1491 = zext i8 %1490 to i32
  %1492 = shl nuw i32 %1491, 24
  %1493 = or i32 %1492, %1488
  %1494 = load ptr, ptr %43, align 4
  %1495 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1494, i32 0, i32 5
  %1496 = load ptr, ptr %1495, align 4
  %1497 = getelementptr inbounds %struct.tegra_sor_regs, ptr %1496, i32 0, i32 11
  %1498 = load i32, ptr %1497, align 4
  %1499 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1500 = icmp sgt i32 %1499, 0
  br i1 %1500, label %1501, label %1514

1501:                                             ; preds = %1486
  %1502 = tail call ptr @llvm.thread.pointer() #9
  %1503 = getelementptr inbounds %struct.thread_info, ptr %1502, i32 0, i32 2
  %1504 = load i32, ptr %1503, align 8
  %1505 = lshr i32 %1504, 5
  %1506 = getelementptr i32, ptr @__cpu_online_mask, i32 %1505
  %1507 = load volatile i32, ptr %1506, align 4
  %1508 = and i32 %1504, 31
  %1509 = shl nuw i32 1, %1508
  %1510 = and i32 %1509, %1507
  %1511 = icmp eq i32 %1510, 0
  br i1 %1511, label %1514, label %1512

1512:                                             ; preds = %1501
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1513 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1487, i32 noundef %1498, i32 noundef %1493) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1514

1514:                                             ; preds = %1512, %1501, %1486
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1515 = load ptr, ptr %49, align 8
  %1516 = shl i32 %1498, 2
  %1517 = getelementptr i8, ptr %1515, i32 %1516
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1517, i32 %1493) #9, !srcloc !18
  %1518 = load ptr, ptr %43, align 4
  %1519 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1518, i32 0, i32 5
  %1520 = load ptr, ptr %1519, align 4
  %1521 = getelementptr inbounds %struct.tegra_sor_regs, ptr %1520, i32 0, i32 10
  %1522 = load i32, ptr %1521, align 4
  %1523 = load ptr, ptr %49, align 8
  %1524 = shl i32 %1522, 2
  %1525 = getelementptr i8, ptr %1523, i32 %1524
  %1526 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1525) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1527 = load ptr, ptr %54, align 8
  %1528 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1529 = icmp sgt i32 %1528, 0
  br i1 %1529, label %1530, label %1544

1530:                                             ; preds = %1514
  %1531 = tail call ptr @llvm.thread.pointer() #9
  %1532 = getelementptr inbounds %struct.thread_info, ptr %1531, i32 0, i32 2
  %1533 = load i32, ptr %1532, align 8
  %1534 = lshr i32 %1533, 5
  %1535 = getelementptr i32, ptr @__cpu_online_mask, i32 %1534
  %1536 = load volatile i32, ptr %1535, align 4
  %1537 = and i32 %1533, 31
  %1538 = shl nuw i32 1, %1537
  %1539 = and i32 %1538, %1536
  %1540 = icmp eq i32 %1539, 0
  br i1 %1540, label %1544, label %1541

1541:                                             ; preds = %1530
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1542 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1527, i32 noundef %1522, i32 noundef %1526) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1543 = load ptr, ptr %54, align 8
  br label %1544

1544:                                             ; preds = %1541, %1530, %1514
  %1545 = phi ptr [ %1527, %1514 ], [ %1527, %1530 ], [ %1543, %1541 ]
  %1546 = or i32 %1526, 8388608
  %1547 = load ptr, ptr %43, align 4
  %1548 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1547, i32 0, i32 5
  %1549 = load ptr, ptr %1548, align 4
  %1550 = getelementptr inbounds %struct.tegra_sor_regs, ptr %1549, i32 0, i32 10
  %1551 = load i32, ptr %1550, align 4
  %1552 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1553 = icmp sgt i32 %1552, 0
  br i1 %1553, label %1554, label %1567

1554:                                             ; preds = %1544
  %1555 = tail call ptr @llvm.thread.pointer() #9
  %1556 = getelementptr inbounds %struct.thread_info, ptr %1555, i32 0, i32 2
  %1557 = load i32, ptr %1556, align 8
  %1558 = lshr i32 %1557, 5
  %1559 = getelementptr i32, ptr @__cpu_online_mask, i32 %1558
  %1560 = load volatile i32, ptr %1559, align 4
  %1561 = and i32 %1557, 31
  %1562 = shl nuw i32 1, %1561
  %1563 = and i32 %1562, %1560
  %1564 = icmp eq i32 %1563, 0
  br i1 %1564, label %1567, label %1565

1565:                                             ; preds = %1554
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1566 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1545, i32 noundef %1551, i32 noundef %1546) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1567

1567:                                             ; preds = %1565, %1554, %1544
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1568 = load ptr, ptr %49, align 8
  %1569 = shl i32 %1551, 2
  %1570 = getelementptr i8, ptr %1568, i32 %1569
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1570, i32 %1546) #9, !srcloc !18
  %1571 = load ptr, ptr %796, align 8
  %1572 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %1571, i32 0, i32 9
  %1573 = load i8, ptr %1572, align 2, !range !9
  %1574 = icmp eq i8 %1573, 0
  br i1 %1574, label %1575, label %1597

1575:                                             ; preds = %1567
  %1576 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  %1577 = load ptr, ptr %1576, align 4
  %1578 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1579 = icmp sgt i32 %1578, 0
  br i1 %1579, label %1580, label %1593

1580:                                             ; preds = %1575
  %1581 = tail call ptr @llvm.thread.pointer() #9
  %1582 = getelementptr inbounds %struct.thread_info, ptr %1581, i32 0, i32 2
  %1583 = load i32, ptr %1582, align 8
  %1584 = lshr i32 %1583, 5
  %1585 = getelementptr i32, ptr @__cpu_online_mask, i32 %1584
  %1586 = load volatile i32, ptr %1585, align 4
  %1587 = and i32 %1583, 31
  %1588 = shl nuw i32 1, %1587
  %1589 = and i32 %1588, %1586
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %1593, label %1591

1591:                                             ; preds = %1580
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %1592 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1577, i32 noundef 1029, i32 noundef 1) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %1593

1593:                                             ; preds = %1591, %1580, %1575
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  call void @arm_heavy_mb() #9
  %1594 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 8
  %1595 = load ptr, ptr %1594, align 8
  %1596 = getelementptr i8, ptr %1595, i32 4116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1596, i32 1) #9, !srcloc !18
  br label %1597

1597:                                             ; preds = %1593, %1567
  %1598 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 8
  %1599 = load ptr, ptr %1598, align 8
  %1600 = getelementptr i8, ptr %1599, i32 4288
  %1601 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1600) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %1602 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  %1603 = load ptr, ptr %1602, align 4
  %1604 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %1605 = icmp sgt i32 %1604, 0
  br i1 %1605, label %1606, label %1619

1606:                                             ; preds = %1597
  %1607 = tail call ptr @llvm.thread.pointer() #9
  %1608 = getelementptr inbounds %struct.thread_info, ptr %1607, i32 0, i32 2
  %1609 = load i32, ptr %1608, align 8
  %1610 = lshr i32 %1609, 5
  %1611 = getelementptr i32, ptr @__cpu_online_mask, i32 %1610
  %1612 = load volatile i32, ptr %1611, align 4
  %1613 = and i32 %1609, 31
  %1614 = shl nuw i32 1, %1613
  %1615 = and i32 %1614, %1612
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1619, label %1617

1617:                                             ; preds = %1606
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %1618 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %1603, i32 noundef 1072, i32 noundef %1601) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  br label %1619

1619:                                             ; preds = %1617, %1606, %1597
  %1620 = and i32 %1601, -784
  %1621 = getelementptr inbounds %struct.tegra_sor_state, ptr %11, i32 0, i32 3
  %1622 = load i32, ptr %1621, align 4
  switch i32 %1622, label %1629 [
    i32 6, label %1631
    i32 8, label %1623
    i32 10, label %1625
    i32 12, label %1627
  ]

1623:                                             ; preds = %1619
  %1624 = or i32 %1620, 8
  br label %1631

1625:                                             ; preds = %1619
  %1626 = or i32 %1620, 10
  br label %1631

1627:                                             ; preds = %1619
  %1628 = or i32 %1620, 12
  br label %1631

1629:                                             ; preds = %1619
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 2579, i32 noundef 9, ptr noundef nonnull @.str.66, i32 noundef %1622) #9
  %1630 = or i32 %1620, 8
  br label %1631

1631:                                             ; preds = %1629, %1627, %1625, %1623, %1619
  %1632 = phi i32 [ %1630, %1629 ], [ %1628, %1627 ], [ %1626, %1625 ], [ %1624, %1623 ], [ %1620, %1619 ]
  %1633 = load ptr, ptr %1602, align 4
  %1634 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1635 = icmp sgt i32 %1634, 0
  br i1 %1635, label %1636, label %1649

1636:                                             ; preds = %1631
  %1637 = tail call ptr @llvm.thread.pointer() #9
  %1638 = getelementptr inbounds %struct.thread_info, ptr %1637, i32 0, i32 2
  %1639 = load i32, ptr %1638, align 8
  %1640 = lshr i32 %1639, 5
  %1641 = getelementptr i32, ptr @__cpu_online_mask, i32 %1640
  %1642 = load volatile i32, ptr %1641, align 4
  %1643 = and i32 %1639, 31
  %1644 = shl nuw i32 1, %1643
  %1645 = and i32 %1644, %1642
  %1646 = icmp eq i32 %1645, 0
  br i1 %1646, label %1649, label %1647

1647:                                             ; preds = %1636
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %1648 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1633, i32 noundef 1072, i32 noundef %1632) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %1649

1649:                                             ; preds = %1647, %1636, %1631
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  call void @arm_heavy_mb() #9
  %1650 = load ptr, ptr %1598, align 8
  %1651 = getelementptr i8, ptr %1650, i32 4288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1651, i32 %1632) #9, !srcloc !18
  %1652 = load ptr, ptr %49, align 8
  %1653 = getelementptr i8, ptr %1652, i32 16
  %1654 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1653) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1655 = load ptr, ptr %54, align 8
  %1656 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1657 = icmp sgt i32 %1656, 0
  br i1 %1657, label %1658, label %1672

1658:                                             ; preds = %1649
  %1659 = tail call ptr @llvm.thread.pointer() #9
  %1660 = getelementptr inbounds %struct.thread_info, ptr %1659, i32 0, i32 2
  %1661 = load i32, ptr %1660, align 8
  %1662 = lshr i32 %1661, 5
  %1663 = getelementptr i32, ptr @__cpu_online_mask, i32 %1662
  %1664 = load volatile i32, ptr %1663, align 4
  %1665 = and i32 %1661, 31
  %1666 = shl nuw i32 1, %1665
  %1667 = and i32 %1666, %1664
  %1668 = icmp eq i32 %1667, 0
  br i1 %1668, label %1672, label %1669

1669:                                             ; preds = %1658
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1670 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1655, i32 noundef 4, i32 noundef %1654) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1671 = load ptr, ptr %54, align 8
  br label %1672

1672:                                             ; preds = %1669, %1658, %1649
  %1673 = phi ptr [ %1655, %1649 ], [ %1655, %1658 ], [ %1671, %1669 ]
  %1674 = and i32 %1654, -16
  %1675 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 5
  %1676 = load i32, ptr %1675, align 4
  %1677 = add i32 %1676, 1
  %1678 = and i32 %1677, 15
  %1679 = or i32 %1678, %1674
  %1680 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1681 = icmp sgt i32 %1680, 0
  br i1 %1681, label %1682, label %1695

1682:                                             ; preds = %1672
  %1683 = tail call ptr @llvm.thread.pointer() #9
  %1684 = getelementptr inbounds %struct.thread_info, ptr %1683, i32 0, i32 2
  %1685 = load i32, ptr %1684, align 8
  %1686 = lshr i32 %1685, 5
  %1687 = getelementptr i32, ptr @__cpu_online_mask, i32 %1686
  %1688 = load volatile i32, ptr %1687, align 4
  %1689 = and i32 %1685, 31
  %1690 = shl nuw i32 1, %1689
  %1691 = and i32 %1690, %1688
  %1692 = icmp eq i32 %1691, 0
  br i1 %1692, label %1695, label %1693

1693:                                             ; preds = %1682
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1694 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1673, i32 noundef 4, i32 noundef %1679) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1695

1695:                                             ; preds = %1693, %1682, %1672
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1696 = load ptr, ptr %49, align 8
  %1697 = getelementptr i8, ptr %1696, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1697, i32 %1679) #9, !srcloc !18
  %1698 = call fastcc i32 @tegra_sor_power_up(ptr noundef %9)
  %1699 = icmp slt i32 %1698, 0
  br i1 %1699, label %1700, label %1702

1700:                                             ; preds = %1695
  %1701 = load ptr, ptr %54, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1701, ptr noundef nonnull @.str.67, i32 noundef %1698) #10
  br label %1702

1702:                                             ; preds = %1700, %1695
  %1703 = load ptr, ptr %43, align 4
  %1704 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1703, i32 0, i32 5
  %1705 = load ptr, ptr %1704, align 4
  %1706 = load i32, ptr %1705, align 4
  %1707 = load i32, ptr %1675, align 4
  %1708 = add i32 %1707, %1706
  %1709 = load ptr, ptr %49, align 8
  %1710 = shl i32 %1708, 2
  %1711 = getelementptr i8, ptr %1709, i32 %1710
  %1712 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1711) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1713 = load ptr, ptr %54, align 8
  %1714 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1715 = icmp sgt i32 %1714, 0
  br i1 %1715, label %1716, label %1730

1716:                                             ; preds = %1702
  %1717 = tail call ptr @llvm.thread.pointer() #9
  %1718 = getelementptr inbounds %struct.thread_info, ptr %1717, i32 0, i32 2
  %1719 = load i32, ptr %1718, align 8
  %1720 = lshr i32 %1719, 5
  %1721 = getelementptr i32, ptr @__cpu_online_mask, i32 %1720
  %1722 = load volatile i32, ptr %1721, align 4
  %1723 = and i32 %1719, 31
  %1724 = shl nuw i32 1, %1723
  %1725 = and i32 %1724, %1722
  %1726 = icmp eq i32 %1725, 0
  br i1 %1726, label %1730, label %1727

1727:                                             ; preds = %1716
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1728 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1713, i32 noundef %1708, i32 noundef %1712) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1729 = load ptr, ptr %54, align 8
  br label %1730

1730:                                             ; preds = %1727, %1716, %1702
  %1731 = phi ptr [ %1713, %1702 ], [ %1713, %1716 ], [ %1729, %1727 ]
  %1732 = and i32 %1712, -13
  %1733 = load ptr, ptr %43, align 4
  %1734 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1733, i32 0, i32 5
  %1735 = load ptr, ptr %1734, align 4
  %1736 = load i32, ptr %1735, align 4
  %1737 = load i32, ptr %1675, align 4
  %1738 = add i32 %1737, %1736
  %1739 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1740 = icmp sgt i32 %1739, 0
  br i1 %1740, label %1741, label %1754

1741:                                             ; preds = %1730
  %1742 = tail call ptr @llvm.thread.pointer() #9
  %1743 = getelementptr inbounds %struct.thread_info, ptr %1742, i32 0, i32 2
  %1744 = load i32, ptr %1743, align 8
  %1745 = lshr i32 %1744, 5
  %1746 = getelementptr i32, ptr @__cpu_online_mask, i32 %1745
  %1747 = load volatile i32, ptr %1746, align 4
  %1748 = and i32 %1744, 31
  %1749 = shl nuw i32 1, %1748
  %1750 = and i32 %1749, %1747
  %1751 = icmp eq i32 %1750, 0
  br i1 %1751, label %1754, label %1752

1752:                                             ; preds = %1741
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1753 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1731, i32 noundef %1738, i32 noundef %1732) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1754

1754:                                             ; preds = %1752, %1741, %1730
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1755 = load ptr, ptr %49, align 8
  %1756 = shl i32 %1738, 2
  %1757 = getelementptr i8, ptr %1755, i32 %1756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1757, i32 %1732) #9, !srcloc !18
  %1758 = load ptr, ptr %43, align 4
  %1759 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1758, i32 0, i32 5
  %1760 = load ptr, ptr %1759, align 4
  %1761 = load i32, ptr %1760, align 4
  %1762 = load i32, ptr %1675, align 4
  %1763 = add i32 %1762, %1761
  %1764 = load ptr, ptr %49, align 8
  %1765 = shl i32 %1763, 2
  %1766 = getelementptr i8, ptr %1764, i32 %1765
  %1767 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1766) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1768 = load ptr, ptr %54, align 8
  %1769 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1770 = icmp sgt i32 %1769, 0
  br i1 %1770, label %1771, label %1785

1771:                                             ; preds = %1754
  %1772 = tail call ptr @llvm.thread.pointer() #9
  %1773 = getelementptr inbounds %struct.thread_info, ptr %1772, i32 0, i32 2
  %1774 = load i32, ptr %1773, align 8
  %1775 = lshr i32 %1774, 5
  %1776 = getelementptr i32, ptr @__cpu_online_mask, i32 %1775
  %1777 = load volatile i32, ptr %1776, align 4
  %1778 = and i32 %1774, 31
  %1779 = shl nuw i32 1, %1778
  %1780 = and i32 %1779, %1777
  %1781 = icmp eq i32 %1780, 0
  br i1 %1781, label %1785, label %1782

1782:                                             ; preds = %1771
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1783 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1768, i32 noundef %1763, i32 noundef %1767) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1784 = load ptr, ptr %54, align 8
  br label %1785

1785:                                             ; preds = %1782, %1771, %1754
  %1786 = phi ptr [ %1768, %1754 ], [ %1768, %1771 ], [ %1784, %1782 ]
  %1787 = and i32 %1767, -4
  %1788 = load ptr, ptr %43, align 4
  %1789 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1788, i32 0, i32 5
  %1790 = load ptr, ptr %1789, align 4
  %1791 = load i32, ptr %1790, align 4
  %1792 = load i32, ptr %1675, align 4
  %1793 = add i32 %1792, %1791
  %1794 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1795 = icmp sgt i32 %1794, 0
  br i1 %1795, label %1796, label %1809

1796:                                             ; preds = %1785
  %1797 = tail call ptr @llvm.thread.pointer() #9
  %1798 = getelementptr inbounds %struct.thread_info, ptr %1797, i32 0, i32 2
  %1799 = load i32, ptr %1798, align 8
  %1800 = lshr i32 %1799, 5
  %1801 = getelementptr i32, ptr @__cpu_online_mask, i32 %1800
  %1802 = load volatile i32, ptr %1801, align 4
  %1803 = and i32 %1799, 31
  %1804 = shl nuw i32 1, %1803
  %1805 = and i32 %1804, %1802
  %1806 = icmp eq i32 %1805, 0
  br i1 %1806, label %1809, label %1807

1807:                                             ; preds = %1796
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1808 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1786, i32 noundef %1793, i32 noundef %1787) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1809

1809:                                             ; preds = %1807, %1796, %1785
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1810 = load ptr, ptr %49, align 8
  %1811 = shl i32 %1793, 2
  %1812 = getelementptr i8, ptr %1810, i32 %1811
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1812, i32 %1787) #9, !srcloc !18
  call fastcc void @tegra_sor_mode_set(ptr noundef %9, ptr noundef %14, ptr noundef %11)
  call fastcc void @tegra_sor_update(ptr noundef %9)
  %1813 = load ptr, ptr %49, align 8
  %1814 = getelementptr i8, ptr %1813, i32 384
  %1815 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1814) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1816 = load ptr, ptr %54, align 8
  %1817 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1818 = icmp sgt i32 %1817, 0
  br i1 %1818, label %1819, label %1833

1819:                                             ; preds = %1809
  %1820 = tail call ptr @llvm.thread.pointer() #9
  %1821 = getelementptr inbounds %struct.thread_info, ptr %1820, i32 0, i32 2
  %1822 = load i32, ptr %1821, align 8
  %1823 = lshr i32 %1822, 5
  %1824 = getelementptr i32, ptr @__cpu_online_mask, i32 %1823
  %1825 = load volatile i32, ptr %1824, align 4
  %1826 = and i32 %1822, 31
  %1827 = shl nuw i32 1, %1826
  %1828 = and i32 %1827, %1825
  %1829 = icmp eq i32 %1828, 0
  br i1 %1829, label %1833, label %1830

1830:                                             ; preds = %1819
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1831 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1816, i32 noundef 96, i32 noundef %1815) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1832 = load ptr, ptr %54, align 8
  br label %1833

1833:                                             ; preds = %1830, %1819, %1809
  %1834 = phi ptr [ %1816, %1809 ], [ %1816, %1819 ], [ %1832, %1830 ]
  %1835 = and i32 %1815, -9
  %1836 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1837 = icmp sgt i32 %1836, 0
  br i1 %1837, label %1838, label %1851

1838:                                             ; preds = %1833
  %1839 = tail call ptr @llvm.thread.pointer() #9
  %1840 = getelementptr inbounds %struct.thread_info, ptr %1839, i32 0, i32 2
  %1841 = load i32, ptr %1840, align 8
  %1842 = lshr i32 %1841, 5
  %1843 = getelementptr i32, ptr @__cpu_online_mask, i32 %1842
  %1844 = load volatile i32, ptr %1843, align 4
  %1845 = and i32 %1841, 31
  %1846 = shl nuw i32 1, %1845
  %1847 = and i32 %1846, %1844
  %1848 = icmp eq i32 %1847, 0
  br i1 %1848, label %1851, label %1849

1849:                                             ; preds = %1838
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1850 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1834, i32 noundef 96, i32 noundef %1835) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1851

1851:                                             ; preds = %1849, %1838, %1833
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1852 = load ptr, ptr %49, align 8
  %1853 = getelementptr i8, ptr %1852, i32 384
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1853, i32 %1835) #9, !srcloc !18
  %1854 = call fastcc i32 @tegra_sor_attach(ptr noundef %9)
  %1855 = icmp slt i32 %1854, 0
  br i1 %1855, label %1856, label %1858

1856:                                             ; preds = %1851
  %1857 = load ptr, ptr %54, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1857, ptr noundef nonnull @.str.68, i32 noundef %1854) #10
  br label %1858

1858:                                             ; preds = %1856, %1851
  %1859 = load ptr, ptr %1598, align 8
  %1860 = getelementptr i8, ptr %1859, i32 4104
  %1861 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1860) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %1862 = load ptr, ptr %1602, align 4
  %1863 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %1864 = icmp sgt i32 %1863, 0
  br i1 %1864, label %1865, label %1879

1865:                                             ; preds = %1858
  %1866 = tail call ptr @llvm.thread.pointer() #9
  %1867 = getelementptr inbounds %struct.thread_info, ptr %1866, i32 0, i32 2
  %1868 = load i32, ptr %1867, align 8
  %1869 = lshr i32 %1868, 5
  %1870 = getelementptr i32, ptr @__cpu_online_mask, i32 %1869
  %1871 = load volatile i32, ptr %1870, align 4
  %1872 = and i32 %1868, 31
  %1873 = shl nuw i32 1, %1872
  %1874 = and i32 %1873, %1871
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %1879, label %1876

1876:                                             ; preds = %1865
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %1877 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %1862, i32 noundef 1026, i32 noundef %1861) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %1878 = load ptr, ptr %1602, align 4
  br label %1879

1879:                                             ; preds = %1876, %1865, %1858
  %1880 = phi ptr [ %1862, %1858 ], [ %1862, %1865 ], [ %1878, %1876 ]
  %1881 = load ptr, ptr %43, align 4
  %1882 = getelementptr inbounds %struct.tegra_sor_soc, ptr %1881, i32 0, i32 6
  %1883 = load i8, ptr %1882, align 4, !range !9
  %1884 = icmp eq i8 %1883, 0
  %1885 = or i32 %1861, 134217728
  %1886 = select i1 %1884, i32 %1885, i32 %1861
  %1887 = getelementptr i8, ptr %0, i32 1056
  %1888 = load i32, ptr %1887, align 4
  %1889 = icmp ugt i32 %1888, 1
  %1890 = zext i1 %1889 to i32
  %1891 = add i32 %1888, 25
  %1892 = add i32 %1891, %1890
  %1893 = shl nuw i32 1, %1892
  %1894 = or i32 %1893, %1886
  %1895 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1896 = icmp sgt i32 %1895, 0
  br i1 %1896, label %1897, label %1910

1897:                                             ; preds = %1879
  %1898 = tail call ptr @llvm.thread.pointer() #9
  %1899 = getelementptr inbounds %struct.thread_info, ptr %1898, i32 0, i32 2
  %1900 = load i32, ptr %1899, align 8
  %1901 = lshr i32 %1900, 5
  %1902 = getelementptr i32, ptr @__cpu_online_mask, i32 %1901
  %1903 = load volatile i32, ptr %1902, align 4
  %1904 = and i32 %1900, 31
  %1905 = shl nuw i32 1, %1904
  %1906 = and i32 %1905, %1903
  %1907 = icmp eq i32 %1906, 0
  br i1 %1907, label %1910, label %1908

1908:                                             ; preds = %1897
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %1909 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1880, i32 noundef 1026, i32 noundef %1894) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %1910

1910:                                             ; preds = %1908, %1897, %1879
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  call void @arm_heavy_mb() #9
  %1911 = load ptr, ptr %1598, align 8
  %1912 = getelementptr i8, ptr %1911, i32 4104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1912, i32 %1894) #9, !srcloc !18
  %1913 = load ptr, ptr %796, align 8
  %1914 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %1913, i32 0, i32 9
  %1915 = load i8, ptr %1914, align 2, !range !9
  %1916 = icmp eq i8 %1915, 0
  br i1 %1916, label %1966, label %1917

1917:                                             ; preds = %1910
  %1918 = load i32, ptr %1887, align 4
  %1919 = add i32 %1918, 1027
  %1920 = load ptr, ptr %1598, align 8
  %1921 = shl i32 %1919, 2
  %1922 = getelementptr i8, ptr %1920, i32 %1921
  %1923 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1922) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %1924 = load ptr, ptr %1602, align 4
  %1925 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %1926 = icmp sgt i32 %1925, 0
  br i1 %1926, label %1927, label %1941

1927:                                             ; preds = %1917
  %1928 = tail call ptr @llvm.thread.pointer() #9
  %1929 = getelementptr inbounds %struct.thread_info, ptr %1928, i32 0, i32 2
  %1930 = load i32, ptr %1929, align 8
  %1931 = lshr i32 %1930, 5
  %1932 = getelementptr i32, ptr @__cpu_online_mask, i32 %1931
  %1933 = load volatile i32, ptr %1932, align 4
  %1934 = and i32 %1930, 31
  %1935 = shl nuw i32 1, %1934
  %1936 = and i32 %1935, %1933
  %1937 = icmp eq i32 %1936, 0
  br i1 %1937, label %1941, label %1938

1938:                                             ; preds = %1927
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %1939 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %1924, i32 noundef %1919, i32 noundef %1923) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %1940 = load ptr, ptr %1602, align 4
  br label %1941

1941:                                             ; preds = %1938, %1927, %1917
  %1942 = phi ptr [ %1924, %1917 ], [ %1924, %1927 ], [ %1940, %1938 ]
  %1943 = and i32 %1923, -3841
  %1944 = or i32 %1943, 256
  %1945 = load i32, ptr %1887, align 4
  %1946 = add i32 %1945, 1027
  %1947 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1948 = icmp sgt i32 %1947, 0
  br i1 %1948, label %1949, label %1962

1949:                                             ; preds = %1941
  %1950 = tail call ptr @llvm.thread.pointer() #9
  %1951 = getelementptr inbounds %struct.thread_info, ptr %1950, i32 0, i32 2
  %1952 = load i32, ptr %1951, align 8
  %1953 = lshr i32 %1952, 5
  %1954 = getelementptr i32, ptr @__cpu_online_mask, i32 %1953
  %1955 = load volatile i32, ptr %1954, align 4
  %1956 = and i32 %1952, 31
  %1957 = shl nuw i32 1, %1956
  %1958 = and i32 %1957, %1955
  %1959 = icmp eq i32 %1958, 0
  br i1 %1959, label %1962, label %1960

1960:                                             ; preds = %1949
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %1961 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1942, i32 noundef %1946, i32 noundef %1944) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %1962

1962:                                             ; preds = %1960, %1949, %1941
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  call void @arm_heavy_mb() #9
  %1963 = load ptr, ptr %1598, align 8
  %1964 = shl i32 %1946, 2
  %1965 = getelementptr i8, ptr %1963, i32 %1964
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1965, i32 %1944) #9, !srcloc !18
  br label %1966

1966:                                             ; preds = %1962, %1910
  call void @tegra_dc_commit(ptr noundef %8) #9
  %1967 = call fastcc i32 @tegra_sor_wakeup(ptr noundef %9)
  %1968 = icmp slt i32 %1967, 0
  br i1 %1968, label %1969, label %1971

1969:                                             ; preds = %1966
  %1970 = load ptr, ptr %54, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1970, ptr noundef nonnull @.str.69, i32 noundef %1967) #10
  br label %1971

1971:                                             ; preds = %1969, %1966
  %1972 = load ptr, ptr %4, align 4
  %1973 = getelementptr inbounds %struct.drm_crtc, ptr %1972, i32 0, i32 22
  %1974 = load ptr, ptr %1973, align 4
  %1975 = getelementptr inbounds %struct.drm_crtc_state, ptr %1974, i32 0, i32 7
  %1976 = load i32, ptr %1975, align 4
  %1977 = icmp sgt i32 %1976, 339999
  br i1 %1977, label %1978, label %1987

1978:                                             ; preds = %1971
  %1979 = getelementptr i8, ptr %0, i32 244
  %1980 = load i8, ptr %1979, align 1, !range !9
  %1981 = icmp eq i8 %1980, 0
  br i1 %1981, label %1987, label %1982

1982:                                             ; preds = %1978
  %1983 = getelementptr i8, ptr %0, i32 1324
  %1984 = load ptr, ptr @system_wq, align 4
  %1985 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %1984, ptr noundef %1983, i32 noundef 500) #9
  call fastcc void @tegra_sor_hdmi_scdc_enable(ptr noundef %9) #9
  %1986 = getelementptr i8, ptr %0, i32 1368
  store i8 1, ptr %1986, align 4
  br label %1987

1987:                                             ; preds = %1982, %1978, %1971
  %1988 = load ptr, ptr %54, align 8
  %1989 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1990 = icmp sgt i32 %1989, 0
  br i1 %1990, label %1991, label %2004

1991:                                             ; preds = %1987
  %1992 = tail call ptr @llvm.thread.pointer() #9
  %1993 = getelementptr inbounds %struct.thread_info, ptr %1992, i32 0, i32 2
  %1994 = load i32, ptr %1993, align 8
  %1995 = lshr i32 %1994, 5
  %1996 = getelementptr i32, ptr @__cpu_online_mask, i32 %1995
  %1997 = load volatile i32, ptr %1996, align 4
  %1998 = and i32 %1994, 31
  %1999 = shl nuw i32 1, %1998
  %2000 = and i32 %1999, %1997
  %2001 = icmp eq i32 %2000, 0
  br i1 %2001, label %2004, label %2002

2002:                                             ; preds = %1991
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %2003 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1988, i32 noundef 286, i32 noundef 3) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %2004

2004:                                             ; preds = %2002, %1991, %1987
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %2005 = load ptr, ptr %49, align 8
  %2006 = getelementptr i8, ptr %2005, i32 1144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2006, i32 3) #9, !srcloc !18
  %2007 = load ptr, ptr %54, align 8
  %2008 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %2009 = icmp sgt i32 %2008, 0
  br i1 %2009, label %2010, label %2023

2010:                                             ; preds = %2004
  %2011 = tail call ptr @llvm.thread.pointer() #9
  %2012 = getelementptr inbounds %struct.thread_info, ptr %2011, i32 0, i32 2
  %2013 = load i32, ptr %2012, align 8
  %2014 = lshr i32 %2013, 5
  %2015 = getelementptr i32, ptr @__cpu_online_mask, i32 %2014
  %2016 = load volatile i32, ptr %2015, align 4
  %2017 = and i32 %2013, 31
  %2018 = shl nuw i32 1, %2017
  %2019 = and i32 %2018, %2016
  %2020 = icmp eq i32 %2019, 0
  br i1 %2020, label %2023, label %2021

2021:                                             ; preds = %2010
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %2022 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %2007, i32 noundef 285, i32 noundef 3) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %2023

2023:                                             ; preds = %2021, %2010, %2004
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %2024 = load ptr, ptr %49, align 8
  %2025 = getelementptr i8, ptr %2024, i32 1140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2025, i32 3) #9, !srcloc !18
  %2026 = getelementptr i8, ptr %0, i32 830
  %2027 = load i8, ptr %2026, align 1
  %2028 = zext i8 %2027 to i32
  %2029 = shl nuw nsw i32 %2028, 2
  %2030 = add nuw nsw i32 %2029, 4
  br label %2033

2031:                                             ; preds = %2056
  %2032 = icmp ult i8 %2027, 23
  br i1 %2032, label %2061, label %2085

2033:                                             ; preds = %2056, %2023
  %2034 = phi i32 [ 0, %2023 ], [ %2059, %2056 ]
  %2035 = shl i32 %2034, 8
  %2036 = getelementptr %struct.tegra_sor, ptr %9, i32 0, i32 1, i32 10, i32 42, i32 %2034
  %2037 = load i8, ptr %2036, align 1
  %2038 = zext i8 %2037 to i32
  %2039 = or i32 %2035, %2038
  %2040 = load ptr, ptr %54, align 8
  %2041 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %2042 = icmp sgt i32 %2041, 0
  br i1 %2042, label %2043, label %2056

2043:                                             ; preds = %2033
  %2044 = tail call ptr @llvm.thread.pointer() #9
  %2045 = getelementptr inbounds %struct.thread_info, ptr %2044, i32 0, i32 2
  %2046 = load i32, ptr %2045, align 8
  %2047 = lshr i32 %2046, 5
  %2048 = getelementptr i32, ptr @__cpu_online_mask, i32 %2047
  %2049 = load volatile i32, ptr %2048, align 4
  %2050 = and i32 %2046, 31
  %2051 = shl nuw i32 1, %2050
  %2052 = and i32 %2051, %2049
  %2053 = icmp eq i32 %2052, 0
  br i1 %2053, label %2056, label %2054

2054:                                             ; preds = %2043
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %2055 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %2040, i32 noundef 268, i32 noundef %2039) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %2056

2056:                                             ; preds = %2054, %2043, %2033
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %2057 = load ptr, ptr %49, align 8
  %2058 = getelementptr i8, ptr %2057, i32 1072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2058, i32 %2039) #9, !srcloc !18
  %2059 = add nuw nsw i32 %2034, 1
  %2060 = icmp eq i32 %2059, %2030
  br i1 %2060, label %2031, label %2033

2061:                                             ; preds = %2080, %2031
  %2062 = phi i32 [ %2083, %2080 ], [ %2030, %2031 ]
  %2063 = shl nuw nsw i32 %2062, 8
  %2064 = load ptr, ptr %54, align 8
  %2065 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %2066 = icmp sgt i32 %2065, 0
  br i1 %2066, label %2067, label %2080

2067:                                             ; preds = %2061
  %2068 = tail call ptr @llvm.thread.pointer() #9
  %2069 = getelementptr inbounds %struct.thread_info, ptr %2068, i32 0, i32 2
  %2070 = load i32, ptr %2069, align 8
  %2071 = lshr i32 %2070, 5
  %2072 = getelementptr i32, ptr @__cpu_online_mask, i32 %2071
  %2073 = load volatile i32, ptr %2072, align 4
  %2074 = and i32 %2070, 31
  %2075 = shl nuw i32 1, %2074
  %2076 = and i32 %2075, %2073
  %2077 = icmp eq i32 %2076, 0
  br i1 %2077, label %2080, label %2078

2078:                                             ; preds = %2067
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %2079 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %2064, i32 noundef 268, i32 noundef %2063) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %2080

2080:                                             ; preds = %2078, %2067, %2061
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %2081 = load ptr, ptr %49, align 8
  %2082 = getelementptr i8, ptr %2081, i32 1072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2082, i32 %2063) #9, !srcloc !18
  %2083 = add nuw nsw i32 %2062, 1
  %2084 = icmp ult i32 %2062, 95
  br i1 %2084, label %2061, label %2085

2085:                                             ; preds = %2080, %2031
  %2086 = load ptr, ptr %54, align 8
  %2087 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %2088 = icmp sgt i32 %2087, 0
  br i1 %2088, label %2089, label %2102

2089:                                             ; preds = %2085
  %2090 = tail call ptr @llvm.thread.pointer() #9
  %2091 = getelementptr inbounds %struct.thread_info, ptr %2090, i32 0, i32 2
  %2092 = load i32, ptr %2091, align 8
  %2093 = lshr i32 %2092, 5
  %2094 = getelementptr i32, ptr @__cpu_online_mask, i32 %2093
  %2095 = load volatile i32, ptr %2094, align 4
  %2096 = and i32 %2092, 31
  %2097 = shl nuw i32 1, %2096
  %2098 = and i32 %2097, %2095
  %2099 = icmp eq i32 %2098, 0
  br i1 %2099, label %2102, label %2100

2100:                                             ; preds = %2089
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %2101 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %2086, i32 noundef 269, i32 noundef 3) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %2102

2102:                                             ; preds = %2100, %2089, %2085
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %2103 = load ptr, ptr %49, align 8
  %2104 = getelementptr i8, ptr %2103, i32 1076
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2104, i32 3) #9, !srcloc !18
  br label %2105

2105:                                             ; preds = %2102, %1112, %722, %714, %27, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_encoder_atomic_check(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_connector_state, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -104
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, 1000
  %12 = icmp ugt i32 %11, 339999999
  %13 = select i1 %12, i32 20, i32 10
  %14 = zext i1 %12 to i32
  %15 = lshr exact i32 %11, %14
  %16 = getelementptr inbounds %struct.tegra_sor_state, ptr %2, i32 0, i32 1
  store i32 %13, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tegra_sor_state, ptr %2, i32 0, i32 2
  store i32 %15, ptr %17, align 4
  %18 = getelementptr i8, ptr %0, i32 1068
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @tegra_dc_state_setup_clock(ptr noundef %8, ptr noundef %1, ptr noundef %19, i32 noundef %11, i32 noundef 0) #9
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = getelementptr i8, ptr %0, i32 -32
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.71, i32 noundef %20) #10
  br label %32

25:                                               ; preds = %3
  %26 = getelementptr i8, ptr %0, i32 204
  %27 = load i32, ptr %26, align 8
  switch i32 %27, label %30 [
    i32 8, label %28
    i32 6, label %28
  ]

28:                                               ; preds = %25, %25
  %29 = getelementptr inbounds %struct.tegra_sor_state, ptr %2, i32 0, i32 3
  store i32 %27, ptr %29, align 4
  br label %32

30:                                               ; preds = %25
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.66, i32 noundef %27) #9
  %31 = getelementptr inbounds %struct.tegra_sor_state, ptr %2, i32 0, i32 3
  store i32 8, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %28, %22
  %33 = phi i32 [ %20, %22 ], [ 0, %30 ], [ 0, %28 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_sor_detach(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %6 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #9
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %22 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %7, i32 noundef 2, i32 noundef %5) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %23 = load ptr, ptr %6, align 8
  br label %24

24:                                               ; preds = %21, %10, %1
  %25 = phi ptr [ %7, %1 ], [ %7, %10 ], [ %23, %21 ]
  %26 = and i32 %5, -5
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = tail call ptr @llvm.thread.pointer() #9
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %41 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %25, i32 noundef 2, i32 noundef %26) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %42

42:                                               ; preds = %40, %29, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %26) #9, !srcloc !18
  tail call fastcc void @tegra_sor_super_update(ptr noundef %0)
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = sub i32 -25, %45
  %47 = load volatile i32, ptr @jiffies, align 64
  %48 = add i32 %46, %47
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %54, label %77

50:                                               ; preds = %74
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = add i32 %46, %51
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %199

54:                                               ; preds = %50, %42
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr i8, ptr %55, i32 84
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %58 = load ptr, ptr %6, align 8
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = tail call ptr @llvm.thread.pointer() #9
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %73 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %58, i32 noundef 21, i32 noundef %57) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %74

74:                                               ; preds = %72, %61, %54
  %75 = and i32 %57, 268435456
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %50, label %80

77:                                               ; preds = %42
  %78 = and i32 %5, 268435456
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %199, label %80

80:                                               ; preds = %77, %74
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr i8, ptr %81, i32 8
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %84 = load ptr, ptr %6, align 8
  %85 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %80
  %88 = tail call ptr @llvm.thread.pointer() #9
  %89 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %90 = load i32, ptr %89, align 8
  %91 = lshr i32 %90, 5
  %92 = getelementptr i32, ptr @__cpu_online_mask, i32 %91
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %90, 31
  %95 = shl nuw i32 1, %94
  %96 = and i32 %95, %93
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %87
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %99 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %84, i32 noundef 2, i32 noundef %83) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %100 = load ptr, ptr %6, align 8
  br label %101

101:                                              ; preds = %98, %87, %80
  %102 = phi ptr [ %84, %80 ], [ %84, %87 ], [ %100, %98 ]
  %103 = and i32 %83, -4
  %104 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = tail call ptr @llvm.thread.pointer() #9
  %108 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = lshr i32 %109, 5
  %111 = getelementptr i32, ptr @__cpu_online_mask, i32 %110
  %112 = load volatile i32, ptr %111, align 4
  %113 = and i32 %109, 31
  %114 = shl nuw i32 1, %113
  %115 = and i32 %114, %112
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %106
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %118 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %102, i32 noundef 2, i32 noundef %103) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %119

119:                                              ; preds = %117, %106, %101
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %120 = load ptr, ptr %2, align 8
  %121 = getelementptr i8, ptr %120, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %103) #9, !srcloc !18
  tail call fastcc void @tegra_sor_super_update(ptr noundef %0)
  %122 = load ptr, ptr %2, align 8
  %123 = getelementptr i8, ptr %122, i32 8
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %125 = load ptr, ptr %6, align 8
  %126 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %119
  %129 = tail call ptr @llvm.thread.pointer() #9
  %130 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 2
  %131 = load i32, ptr %130, align 8
  %132 = lshr i32 %131, 5
  %133 = getelementptr i32, ptr @__cpu_online_mask, i32 %132
  %134 = load volatile i32, ptr %133, align 4
  %135 = and i32 %131, 31
  %136 = shl nuw i32 1, %135
  %137 = and i32 %136, %134
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %128
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %140 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %125, i32 noundef 2, i32 noundef %124) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %141 = load ptr, ptr %6, align 8
  br label %142

142:                                              ; preds = %139, %128, %119
  %143 = phi ptr [ %125, %119 ], [ %125, %128 ], [ %141, %139 ]
  %144 = and i32 %124, -9
  %145 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %142
  %148 = tail call ptr @llvm.thread.pointer() #9
  %149 = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 2
  %150 = load i32, ptr %149, align 8
  %151 = lshr i32 %150, 5
  %152 = getelementptr i32, ptr @__cpu_online_mask, i32 %151
  %153 = load volatile i32, ptr %152, align 4
  %154 = and i32 %150, 31
  %155 = shl nuw i32 1, %154
  %156 = and i32 %155, %153
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %147
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %159 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %143, i32 noundef 2, i32 noundef %144) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %160

160:                                              ; preds = %158, %147, %142
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %161 = load ptr, ptr %2, align 8
  %162 = getelementptr i8, ptr %161, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %144) #9, !srcloc !18
  tail call fastcc void @tegra_sor_super_update(ptr noundef %0)
  %163 = load volatile i32, ptr @jiffies, align 64
  %164 = sub i32 -25, %163
  %165 = load volatile i32, ptr @jiffies, align 64
  %166 = add i32 %164, %165
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %160
  %169 = and i32 %124, 1024
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, i32 0, i32 -110
  br label %199

172:                                              ; preds = %195, %160
  %173 = load ptr, ptr %2, align 8
  %174 = getelementptr i8, ptr %173, i32 88
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %176 = load ptr, ptr %6, align 8
  %177 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %192

179:                                              ; preds = %172
  %180 = tail call ptr @llvm.thread.pointer() #9
  %181 = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 2
  %182 = load i32, ptr %181, align 8
  %183 = lshr i32 %182, 5
  %184 = getelementptr i32, ptr @__cpu_online_mask, i32 %183
  %185 = load volatile i32, ptr %184, align 4
  %186 = and i32 %182, 31
  %187 = shl nuw i32 1, %186
  %188 = and i32 %187, %185
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %179
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %191 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %176, i32 noundef 22, i32 noundef %175) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %192

192:                                              ; preds = %190, %179, %172
  %193 = and i32 %175, 1024
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %192
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #9
  %196 = load volatile i32, ptr @jiffies, align 64
  %197 = add i32 %164, %196
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %172, label %199

199:                                              ; preds = %195, %192, %168, %77, %50
  %200 = phi i32 [ -110, %77 ], [ %171, %168 ], [ -110, %195 ], [ 0, %192 ], [ -110, %50 ]
  ret i32 %200
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_sor_update(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %18 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %3, i32 noundef 3, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %19

19:                                               ; preds = %17, %6, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %20 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #9, !srcloc !18
  %23 = load ptr, ptr %2, align 8
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %38 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %23, i32 noundef 3, i32 noundef 1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %39

39:                                               ; preds = %37, %26, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %40 = load ptr, ptr %20, align 8
  %41 = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 1) #9, !srcloc !18
  %42 = load ptr, ptr %2, align 8
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %57 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %42, i32 noundef 3, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %58

58:                                               ; preds = %56, %45, %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %59 = load ptr, ptr %20, align 8
  %60 = getelementptr i8, ptr %59, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 0) #9, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_dc_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_sor_power_down(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 84
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %6 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #9
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %22 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %7, i32 noundef 21, i32 noundef %5) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %23 = load ptr, ptr %6, align 8
  br label %24

24:                                               ; preds = %21, %10, %1
  %25 = phi ptr [ %7, %1 ], [ %7, %10 ], [ %23, %21 ]
  %26 = and i32 %5, 2147483646
  %27 = or i32 %26, -2147483648
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %42 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %25, i32 noundef 21, i32 noundef %27) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %43

43:                                               ; preds = %41, %30, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr i8, ptr %44, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %27) #9, !srcloc !18
  %46 = load volatile i32, ptr @jiffies, align 64
  %47 = sub i32 -25, %46
  %48 = load volatile i32, ptr @jiffies, align 64
  %49 = add i32 %47, %48
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %73, %43
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr i8, ptr %52, i32 84
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %55 = load ptr, ptr %6, align 8
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %51
  %59 = tail call ptr @llvm.thread.pointer() #9
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 5
  %63 = getelementptr i32, ptr @__cpu_online_mask, i32 %62
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %61, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %58
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %70 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %55, i32 noundef 21, i32 noundef %54) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %71

71:                                               ; preds = %69, %58, %51
  %72 = icmp sgt i32 %54, -1
  br i1 %72, label %77, label %73

73:                                               ; preds = %71
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #9
  %74 = load volatile i32, ptr @jiffies, align 64
  %75 = add i32 %47, %74
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %51, label %77

77:                                               ; preds = %73, %71, %43
  %78 = phi i32 [ -110, %43 ], [ -110, %73 ], [ 0, %71 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_io_pad_power_disable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_sor_super_update(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %18 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %3, i32 noundef 1, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %19

19:                                               ; preds = %17, %6, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %20 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #9, !srcloc !18
  %23 = load ptr, ptr %2, align 8
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %38 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %23, i32 noundef 1, i32 noundef 1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %39

39:                                               ; preds = %37, %26, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %40 = load ptr, ptr %20, align 8
  %41 = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 1) #9, !srcloc !18
  %42 = load ptr, ptr %2, align 8
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %57 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %42, i32 noundef 1, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %58

58:                                               ; preds = %56, %45, %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %59 = load ptr, ptr %20, align 8
  %60 = getelementptr i8, ptr %59, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 0) #9, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_sor_set_parent_clock(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %4) #9
  tail call void @clk_unprepare(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @clk_set_parent(ptr noundef %6, ptr noundef %1) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = tail call i32 @clk_enable(ptr noundef %10) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #9
  br label %17

17:                                               ; preds = %16, %9
  %18 = phi i32 [ %11, %9 ], [ %14, %16 ]
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 0)
  br label %20

20:                                               ; preds = %17, %13, %2
  %21 = phi i32 [ %7, %2 ], [ 0, %13 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_io_pad_power_enable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_sor_power_up(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 84
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %6 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #9
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %22 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %7, i32 noundef 21, i32 noundef %5) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %23 = load ptr, ptr %6, align 8
  br label %24

24:                                               ; preds = %21, %10, %1
  %25 = phi ptr [ %7, %1 ], [ %7, %10 ], [ %23, %21 ]
  %26 = or i32 %5, -2147483647
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = tail call ptr @llvm.thread.pointer() #9
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %41 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %25, i32 noundef 21, i32 noundef %26) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %42

42:                                               ; preds = %40, %29, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %26) #9, !srcloc !18
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = sub i32 -25, %45
  %47 = load volatile i32, ptr @jiffies, align 64
  %48 = add i32 %46, %47
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %72, %42
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr i8, ptr %51, i32 84
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %54 = load ptr, ptr %6, align 8
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = tail call ptr @llvm.thread.pointer() #9
  %59 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = lshr i32 %60, 5
  %62 = getelementptr i32, ptr @__cpu_online_mask, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %60, 31
  %65 = shl nuw i32 1, %64
  %66 = and i32 %65, %63
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %57
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %69 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %54, i32 noundef 21, i32 noundef %53) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %70

70:                                               ; preds = %68, %57, %50
  %71 = icmp sgt i32 %53, -1
  br i1 %71, label %76, label %72

72:                                               ; preds = %70
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #9
  %73 = load volatile i32, ptr @jiffies, align 64
  %74 = add i32 %46, %73
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %50, label %76

76:                                               ; preds = %72, %70, %42
  %77 = phi i32 [ -110, %42 ], [ -110, %72 ], [ 0, %70 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_sor_mode_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 1, i32 9, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -104
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %10, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %13 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = tail call ptr @llvm.thread.pointer() #9
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %29 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %14, i32 noundef 4, i32 noundef %12) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %30

30:                                               ; preds = %28, %17, %3
  %31 = and i32 %12, -1966288
  %32 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  %35 = and i32 %34, 15
  %36 = or i32 %31, %35
  %37 = or i32 %36, 64
  %38 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  %42 = and i32 %37, -1970305
  %43 = select i1 %41, i32 %37, i32 %42
  %44 = shl i32 %39, 11
  %45 = and i32 %44, 4096
  %46 = or i32 %43, %45
  %47 = and i32 %39, 4
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %46, -1974401
  %50 = select i1 %48, i32 %46, i32 %49
  %51 = shl i32 %39, 10
  %52 = and i32 %51, 8192
  %53 = or i32 %50, %52
  %54 = getelementptr inbounds %struct.tegra_sor_state, ptr %2, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, -6
  %57 = icmp ult i32 %56, 11
  br i1 %57, label %58, label %61

58:                                               ; preds = %30
  %59 = getelementptr inbounds [11 x i32], ptr @switch.table.tegra_sor_mode_set, i32 0, i32 %56
  %60 = load i32, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %30
  %62 = phi i32 [ %60, %58 ], [ 655360, %30 ]
  %63 = or i32 %53, %62
  %64 = load ptr, ptr %13, align 8
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = tail call ptr @llvm.thread.pointer() #9
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 8
  %71 = lshr i32 %70, 5
  %72 = getelementptr i32, ptr @__cpu_online_mask, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %70, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %67
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %79 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %64, i32 noundef 4, i32 noundef %63) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %80

80:                                               ; preds = %78, %67, %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %81 = load ptr, ptr %9, align 8
  %82 = getelementptr i8, ptr %81, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %63) #9, !srcloc !18
  %83 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 9
  %84 = load i16, ptr %83, align 4
  %85 = and i16 %84, 32767
  %86 = zext i16 %85 to i32
  %87 = shl nuw nsw i32 %86, 16
  %88 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 4
  %89 = load i16, ptr %88, align 2
  %90 = and i16 %89, 32767
  %91 = zext i16 %90 to i32
  %92 = or i32 %87, %91
  %93 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.tegra_sor_soc, ptr %94, i32 0, i32 5
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.tegra_sor_regs, ptr %96, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = load i32, ptr %32, align 4
  %100 = add i32 %99, %98
  %101 = load ptr, ptr %13, align 8
  %102 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %80
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
  br i1 %114, label %117, label %115

115:                                              ; preds = %104
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %116 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %101, i32 noundef %100, i32 noundef %92) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %117

117:                                              ; preds = %115, %104, %80
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %118 = load ptr, ptr %9, align 8
  %119 = shl i32 %100, 2
  %120 = getelementptr i8, ptr %118, i32 %119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %92) #9, !srcloc !18
  %121 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 8
  %122 = load i16, ptr %121, align 2
  %123 = zext i16 %122 to i32
  %124 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 7
  %125 = load i16, ptr %124, align 4
  %126 = zext i16 %125 to i32
  %127 = xor i32 %126, -1
  %128 = add nsw i32 %127, %123
  %129 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 3
  %130 = load i16, ptr %129, align 4
  %131 = zext i16 %130 to i32
  %132 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 2
  %133 = load i16, ptr %132, align 2
  %134 = zext i16 %133 to i32
  %135 = xor i32 %134, -1
  %136 = add nsw i32 %135, %131
  %137 = shl i32 %128, 16
  %138 = and i32 %137, 2147418112
  %139 = and i32 %136, 32767
  %140 = or i32 %139, %138
  %141 = load ptr, ptr %93, align 4
  %142 = getelementptr inbounds %struct.tegra_sor_soc, ptr %141, i32 0, i32 5
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.tegra_sor_regs, ptr %143, i32 0, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = load i32, ptr %32, align 4
  %147 = add i32 %146, %145
  %148 = load ptr, ptr %13, align 8
  %149 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %117
  %152 = tail call ptr @llvm.thread.pointer() #9
  %153 = getelementptr inbounds %struct.thread_info, ptr %152, i32 0, i32 2
  %154 = load i32, ptr %153, align 8
  %155 = lshr i32 %154, 5
  %156 = getelementptr i32, ptr @__cpu_online_mask, i32 %155
  %157 = load volatile i32, ptr %156, align 4
  %158 = and i32 %154, 31
  %159 = shl nuw i32 1, %158
  %160 = and i32 %159, %157
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %151
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %163 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %148, i32 noundef %147, i32 noundef %140) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %164

164:                                              ; preds = %162, %151, %117
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %165 = load ptr, ptr %9, align 8
  %166 = shl i32 %147, 2
  %167 = getelementptr i8, ptr %165, i32 %166
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %140) #9, !srcloc !18
  %168 = load i16, ptr %83, align 4
  %169 = zext i16 %168 to i32
  %170 = load i16, ptr %121, align 2
  %171 = zext i16 %170 to i32
  %172 = sub nsw i32 %169, %171
  %173 = add nsw i32 %172, %128
  %174 = load i16, ptr %88, align 2
  %175 = zext i16 %174 to i32
  %176 = load i16, ptr %129, align 4
  %177 = zext i16 %176 to i32
  %178 = sub nsw i32 %175, %177
  %179 = add nsw i32 %178, %136
  %180 = shl i32 %173, 16
  %181 = and i32 %180, 2147418112
  %182 = and i32 %179, 32767
  %183 = or i32 %182, %181
  %184 = load ptr, ptr %93, align 4
  %185 = getelementptr inbounds %struct.tegra_sor_soc, ptr %184, i32 0, i32 5
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.tegra_sor_regs, ptr %186, i32 0, i32 3
  %188 = load i32, ptr %187, align 4
  %189 = load i32, ptr %32, align 4
  %190 = add i32 %189, %188
  %191 = load ptr, ptr %13, align 8
  %192 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %164
  %195 = tail call ptr @llvm.thread.pointer() #9
  %196 = getelementptr inbounds %struct.thread_info, ptr %195, i32 0, i32 2
  %197 = load i32, ptr %196, align 8
  %198 = lshr i32 %197, 5
  %199 = getelementptr i32, ptr @__cpu_online_mask, i32 %198
  %200 = load volatile i32, ptr %199, align 4
  %201 = and i32 %197, 31
  %202 = shl nuw i32 1, %201
  %203 = and i32 %202, %200
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %194
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %206 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %191, i32 noundef %190, i32 noundef %183) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %207

207:                                              ; preds = %205, %194, %164
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %208 = load ptr, ptr %9, align 8
  %209 = shl i32 %190, 2
  %210 = getelementptr i8, ptr %208, i32 %209
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %183) #9, !srcloc !18
  %211 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %212 = load i16, ptr %211, align 2
  %213 = zext i16 %212 to i32
  %214 = add nsw i32 %173, %213
  %215 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %216 = load i16, ptr %215, align 4
  %217 = zext i16 %216 to i32
  %218 = add nsw i32 %179, %217
  %219 = shl i32 %214, 16
  %220 = and i32 %219, 2147418112
  %221 = and i32 %218, 32767
  %222 = or i32 %220, %221
  %223 = load ptr, ptr %93, align 4
  %224 = getelementptr inbounds %struct.tegra_sor_soc, ptr %223, i32 0, i32 5
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.tegra_sor_regs, ptr %225, i32 0, i32 4
  %227 = load i32, ptr %226, align 4
  %228 = load i32, ptr %32, align 4
  %229 = add i32 %228, %227
  %230 = load ptr, ptr %13, align 8
  %231 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %246

233:                                              ; preds = %207
  %234 = tail call ptr @llvm.thread.pointer() #9
  %235 = getelementptr inbounds %struct.thread_info, ptr %234, i32 0, i32 2
  %236 = load i32, ptr %235, align 8
  %237 = lshr i32 %236, 5
  %238 = getelementptr i32, ptr @__cpu_online_mask, i32 %237
  %239 = load volatile i32, ptr %238, align 4
  %240 = and i32 %236, 31
  %241 = shl nuw i32 1, %240
  %242 = and i32 %241, %239
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %233
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %245 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %230, i32 noundef %229, i32 noundef %222) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %246

246:                                              ; preds = %244, %233, %207
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %247 = load ptr, ptr %9, align 8
  %248 = shl i32 %229, 2
  %249 = getelementptr i8, ptr %247, i32 %248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %249, i32 %222) #9, !srcloc !18
  %250 = load ptr, ptr %93, align 4
  %251 = getelementptr inbounds %struct.tegra_sor_soc, ptr %250, i32 0, i32 5
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr inbounds %struct.tegra_sor_regs, ptr %252, i32 0, i32 5
  %254 = load i32, ptr %253, align 4
  %255 = load i32, ptr %32, align 4
  %256 = add i32 %255, %254
  %257 = load ptr, ptr %13, align 8
  %258 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %273

260:                                              ; preds = %246
  %261 = tail call ptr @llvm.thread.pointer() #9
  %262 = getelementptr inbounds %struct.thread_info, ptr %261, i32 0, i32 2
  %263 = load i32, ptr %262, align 8
  %264 = lshr i32 %263, 5
  %265 = getelementptr i32, ptr @__cpu_online_mask, i32 %264
  %266 = load volatile i32, ptr %265, align 4
  %267 = and i32 %263, 31
  %268 = shl nuw i32 1, %267
  %269 = and i32 %268, %266
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %260
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %272 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %257, i32 noundef %256, i32 noundef 1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %273

273:                                              ; preds = %271, %260, %246
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %274 = load ptr, ptr %9, align 8
  %275 = shl i32 %256, 2
  %276 = getelementptr i8, ptr %274, i32 %275
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %276, i32 1) #9, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_sor_attach(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %6 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #9
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %22 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %7, i32 noundef 2, i32 noundef %5) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %23 = load ptr, ptr %6, align 8
  br label %24

24:                                               ; preds = %21, %10, %1
  %25 = phi ptr [ %7, %1 ], [ %7, %10 ], [ %23, %21 ]
  %26 = or i32 %5, 6
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = tail call ptr @llvm.thread.pointer() #9
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %41 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %25, i32 noundef 2, i32 noundef %26) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %42

42:                                               ; preds = %40, %29, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %26) #9, !srcloc !18
  tail call fastcc void @tegra_sor_super_update(ptr noundef %0)
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr i8, ptr %45, i32 8
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %48 = load ptr, ptr %6, align 8
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %42
  %52 = tail call ptr @llvm.thread.pointer() #9
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 5
  %56 = getelementptr i32, ptr @__cpu_online_mask, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %54, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %63 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %48, i32 noundef 2, i32 noundef %47) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %64 = load ptr, ptr %6, align 8
  br label %65

65:                                               ; preds = %62, %51, %42
  %66 = phi ptr [ %48, %42 ], [ %48, %51 ], [ %64, %62 ]
  %67 = or i32 %47, 8
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = tail call ptr @llvm.thread.pointer() #9
  %72 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %73 = load i32, ptr %72, align 8
  %74 = lshr i32 %73, 5
  %75 = getelementptr i32, ptr @__cpu_online_mask, i32 %74
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %73, 31
  %78 = shl nuw i32 1, %77
  %79 = and i32 %78, %76
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %70
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %82 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %66, i32 noundef 2, i32 noundef %67) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %83

83:                                               ; preds = %81, %70, %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %84 = load ptr, ptr %2, align 8
  %85 = getelementptr i8, ptr %84, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %67) #9, !srcloc !18
  tail call fastcc void @tegra_sor_super_update(ptr noundef %0)
  %86 = load volatile i32, ptr @jiffies, align 64
  %87 = sub i32 -25, %86
  %88 = load volatile i32, ptr @jiffies, align 64
  %89 = add i32 %87, %88
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %118

91:                                               ; preds = %114, %83
  %92 = load ptr, ptr %2, align 8
  %93 = getelementptr i8, ptr %92, i32 88
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %95 = load ptr, ptr %6, align 8
  %96 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = tail call ptr @llvm.thread.pointer() #9
  %100 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %101 = load i32, ptr %100, align 8
  %102 = lshr i32 %101, 5
  %103 = getelementptr i32, ptr @__cpu_online_mask, i32 %102
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %101, 31
  %106 = shl nuw i32 1, %105
  %107 = and i32 %106, %104
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %98
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %110 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %95, i32 noundef 22, i32 noundef %94) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %111

111:                                              ; preds = %109, %98, %91
  %112 = and i32 %94, 1024
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #9
  %115 = load volatile i32, ptr @jiffies, align 64
  %116 = add i32 %87, %115
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %91, label %118

118:                                              ; preds = %114, %111, %83
  %119 = phi i32 [ -110, %83 ], [ -110, %114 ], [ 0, %111 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_sor_wakeup(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = sub i32 -25, %2
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = add i32 %3, %4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.tegra_sor, ptr %0, i32 0, i32 2
  br label %10

10:                                               ; preds = %33, %7
  %11 = load ptr, ptr %8, align 8
  %12 = getelementptr i8, ptr %11, i32 88
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %14 = load ptr, ptr %9, align 8
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %10
  %18 = tail call ptr @llvm.thread.pointer() #9
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %29 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %14, i32 noundef 22, i32 noundef %13) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %30

30:                                               ; preds = %28, %17, %10
  %31 = and i32 %13, 768
  %32 = icmp eq i32 %31, 512
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #9
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = add i32 %3, %34
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %10, label %37

37:                                               ; preds = %33, %30, %1
  %38 = phi i32 [ -110, %1 ], [ -110, %33 ], [ 0, %30 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_state_setup_clock(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sor_dp_disable(ptr noundef %0) #0 {
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
  %14 = getelementptr i8, ptr %0, i32 180
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 1288
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 1100
  %21 = tail call i32 @drm_dp_link_power_down(ptr noundef %19, ptr noundef %20) #9
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %0, i32 1044
  %25 = load ptr, ptr %24, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.72, i32 noundef %21) #10
  br label %26

26:                                               ; preds = %23, %17, %13
  %27 = tail call fastcc i32 @tegra_sor_detach(ptr noundef %7)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %0, i32 1044
  %31 = load ptr, ptr %30, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.54, i32 noundef %27) #10
  br label %32

32:                                               ; preds = %29, %26
  %33 = getelementptr i8, ptr %0, i32 1044
  %34 = load ptr, ptr %33, align 8
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %49 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %34, i32 noundef 4, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %50

50:                                               ; preds = %48, %37, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %51 = getelementptr i8, ptr %0, i32 1052
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr i8, ptr %52, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 0) #9, !srcloc !18
  tail call fastcc void @tegra_sor_update(ptr noundef %7)
  %54 = getelementptr inbounds %struct.tegra_dc, ptr %6, i32 0, i32 8
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr i8, ptr %55, i32 4104
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %58 = getelementptr inbounds %struct.tegra_dc, ptr %6, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %50
  %63 = tail call ptr @llvm.thread.pointer() #9
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 5
  %67 = getelementptr i32, ptr @__cpu_online_mask, i32 %66
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %65, 31
  %70 = shl nuw i32 1, %69
  %71 = and i32 %70, %68
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %74 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %59, i32 noundef 1026, i32 noundef %57) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %75 = load ptr, ptr %58, align 4
  br label %76

76:                                               ; preds = %73, %62, %50
  %77 = phi ptr [ %59, %50 ], [ %59, %62 ], [ %75, %73 ]
  %78 = getelementptr i8, ptr %0, i32 1056
  %79 = load i32, ptr %78, align 4
  %80 = icmp ugt i32 %79, 1
  %81 = zext i1 %80 to i32
  %82 = add i32 %79, 25
  %83 = add i32 %82, %81
  %84 = shl nuw i32 1, %83
  %85 = xor i32 %84, -1
  %86 = and i32 %57, %85
  %87 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %76
  %90 = tail call ptr @llvm.thread.pointer() #9
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %92 = load i32, ptr %91, align 8
  %93 = lshr i32 %92, 5
  %94 = getelementptr i32, ptr @__cpu_online_mask, i32 %93
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %92, 31
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, %95
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %89
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %101 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %77, i32 noundef 1026, i32 noundef %86) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %102

102:                                              ; preds = %100, %89, %76
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  tail call void @arm_heavy_mb() #9
  %103 = load ptr, ptr %54, align 8
  %104 = getelementptr i8, ptr %103, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %86) #9, !srcloc !18
  tail call void @tegra_dc_commit(ptr noundef %6) #9
  %105 = load ptr, ptr %51, align 8
  %106 = getelementptr i8, ptr %105, i32 16
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %108 = load ptr, ptr %33, align 8
  %109 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %102
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
  br i1 %121, label %125, label %122

122:                                              ; preds = %111
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %123 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %108, i32 noundef 4, i32 noundef %107) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %124 = load ptr, ptr %33, align 8
  br label %125

125:                                              ; preds = %122, %111, %102
  %126 = phi ptr [ %108, %102 ], [ %108, %111 ], [ %124, %122 ]
  %127 = and i32 %107, -3904
  %128 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %142 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %126, i32 noundef 4, i32 noundef %127) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %143

143:                                              ; preds = %141, %130, %125
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %144 = load ptr, ptr %51, align 8
  %145 = getelementptr i8, ptr %144, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %127) #9, !srcloc !18
  tail call fastcc void @tegra_sor_update(ptr noundef %7)
  %146 = getelementptr i8, ptr %0, i32 1072
  %147 = load ptr, ptr %146, align 4
  %148 = tail call fastcc i32 @tegra_sor_set_parent_clock(ptr noundef %7, ptr noundef %147)
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load ptr, ptr %33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.73, i32 noundef %148) #10
  br label %152

152:                                              ; preds = %150, %143
  %153 = tail call fastcc i32 @tegra_sor_power_down(ptr noundef %7)
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load ptr, ptr %33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.55, i32 noundef %153) #10
  br label %157

157:                                              ; preds = %155, %152
  %158 = getelementptr i8, ptr %0, i32 1300
  %159 = load i32, ptr %158, align 8
  %160 = tail call i32 @tegra_io_pad_power_disable(i32 noundef %159) #9
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load ptr, ptr %33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.56, i32 noundef %160) #10
  br label %164

164:                                              ; preds = %162, %157
  %165 = getelementptr i8, ptr %0, i32 1288
  %166 = load ptr, ptr %165, align 4
  %167 = tail call i32 @drm_dp_aux_disable(ptr noundef %166) #9
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load ptr, ptr %33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.74, i32 noundef %167) #10
  br label %171

171:                                              ; preds = %169, %164
  %172 = load ptr, ptr %8, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %171
  %175 = tail call i32 @drm_panel_unprepare(ptr noundef nonnull %172) #9
  br label %176

176:                                              ; preds = %174, %171
  %177 = tail call i32 @host1x_client_suspend(ptr noundef %7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sor_dp_enable(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -104
  %7 = select i1 %5, ptr null, ptr %6
  %8 = getelementptr i8, ptr %0, i32 -132
  %9 = getelementptr i8, ptr %0, i32 996
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 22
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7
  %14 = getelementptr i8, ptr %0, i32 196
  %15 = tail call i32 @host1x_client_resume(ptr noundef %8) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = getelementptr i8, ptr %0, i32 1044
  %19 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.26, i32 noundef %15) #10
  br label %1641

20:                                               ; preds = %1
  %21 = getelementptr i8, ptr %0, i32 1072
  %22 = load ptr, ptr %21, align 4
  %23 = tail call fastcc i32 @tegra_sor_set_parent_clock(ptr noundef %8, ptr noundef %22)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %0, i32 1044
  %27 = load ptr, ptr %26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.57, i32 noundef %23) #10
  br label %28

28:                                               ; preds = %25, %20
  %29 = getelementptr i8, ptr %0, i32 1300
  %30 = load i32, ptr %29, align 8
  %31 = tail call i32 @tegra_io_pad_power_enable(i32 noundef %30) #9
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %0, i32 1044
  %35 = load ptr, ptr %34, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.75, i32 noundef %31) #10
  br label %36

36:                                               ; preds = %33, %28
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #9
  %37 = getelementptr i8, ptr %0, i32 1288
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @drm_dp_aux_enable(ptr noundef %38) #9
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %0, i32 1044
  %43 = load ptr, ptr %42, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.76, i32 noundef %39) #10
  br label %44

44:                                               ; preds = %41, %36
  %45 = load ptr, ptr %37, align 4
  %46 = getelementptr i8, ptr %0, i32 1100
  %47 = tail call i32 @drm_dp_link_probe(ptr noundef %45, ptr noundef %46) #9
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr i8, ptr %0, i32 1044
  %51 = load ptr, ptr %50, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.77, i32 noundef %47) #10
  br label %52

52:                                               ; preds = %49, %44
  %53 = getelementptr i8, ptr %0, i32 1172
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %63, %52
  %57 = phi i32 [ %64, %63 ], [ %54, %52 ]
  %58 = phi i32 [ %65, %63 ], [ 0, %52 ]
  %59 = getelementptr %struct.tegra_sor, ptr %8, i32 0, i32 15, i32 8, i32 %58
  %60 = load i32, ptr %59, align 4
  switch i32 %60, label %61 [
    i32 1620000, label %63
    i32 2700000, label %63
    i32 5400000, label %63
  ]

61:                                               ; preds = %56
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.83, i32 noundef %60) #9
  store i32 0, ptr %59, align 4
  %62 = load i32, ptr %53, align 4
  br label %63

63:                                               ; preds = %61, %56, %56, %56
  %64 = phi i32 [ %62, %61 ], [ %57, %56 ], [ %57, %56 ], [ %57, %56 ]
  %65 = add nuw i32 %58, 1
  %66 = icmp ult i32 %65, %64
  br i1 %66, label %56, label %67

67:                                               ; preds = %63, %52
  tail call void @drm_dp_link_update_rates(ptr noundef %46) #9
  %68 = tail call i32 @drm_dp_link_choose(ptr noundef %46, ptr noundef %13, ptr noundef %14) #9
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = getelementptr i8, ptr %0, i32 1044
  %72 = load ptr, ptr %71, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.78, i32 noundef %68) #10
  br label %73

73:                                               ; preds = %70, %67
  %74 = getelementptr i8, ptr %0, i32 -24
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = tail call i32 @drm_panel_prepare(ptr noundef nonnull %75) #9
  br label %79

79:                                               ; preds = %77, %73
  %80 = getelementptr i8, ptr %0, i32 1048
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.tegra_sor_soc, ptr %81, i32 0, i32 5
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.tegra_sor_regs, ptr %83, i32 0, i32 8
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr i8, ptr %0, i32 1052
  %87 = load ptr, ptr %86, align 8
  %88 = shl i32 %85, 2
  %89 = getelementptr i8, ptr %87, i32 %88
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %91 = getelementptr i8, ptr %0, i32 1044
  %92 = load ptr, ptr %91, align 8
  %93 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %79
  %96 = tail call ptr @llvm.thread.pointer() #9
  %97 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %98 = load i32, ptr %97, align 8
  %99 = lshr i32 %98, 5
  %100 = getelementptr i32, ptr @__cpu_online_mask, i32 %99
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %98, 31
  %103 = shl nuw i32 1, %102
  %104 = and i32 %103, %101
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %95
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %107 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %92, i32 noundef %85, i32 noundef %90) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %108 = load ptr, ptr %91, align 8
  br label %109

109:                                              ; preds = %106, %95, %79
  %110 = phi ptr [ %92, %79 ], [ %92, %95 ], [ %108, %106 ]
  %111 = and i32 %90, -4194305
  %112 = load ptr, ptr %80, align 4
  %113 = getelementptr inbounds %struct.tegra_sor_soc, ptr %112, i32 0, i32 5
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.tegra_sor_regs, ptr %114, i32 0, i32 8
  %116 = load i32, ptr %115, align 4
  %117 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %109
  %120 = tail call ptr @llvm.thread.pointer() #9
  %121 = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %122 = load i32, ptr %121, align 8
  %123 = lshr i32 %122, 5
  %124 = getelementptr i32, ptr @__cpu_online_mask, i32 %123
  %125 = load volatile i32, ptr %124, align 4
  %126 = and i32 %122, 31
  %127 = shl nuw i32 1, %126
  %128 = and i32 %127, %125
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %119
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %131 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %110, i32 noundef %116, i32 noundef %111) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %132

132:                                              ; preds = %130, %119, %109
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %133 = load ptr, ptr %86, align 8
  %134 = shl i32 %116, 2
  %135 = getelementptr i8, ptr %133, i32 %134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %111) #9, !srcloc !18
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #9
  %136 = load ptr, ptr %80, align 4
  %137 = getelementptr inbounds %struct.tegra_sor_soc, ptr %136, i32 0, i32 5
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.tegra_sor_regs, ptr %138, i32 0, i32 9
  %140 = load i32, ptr %139, align 4
  %141 = load ptr, ptr %86, align 8
  %142 = shl i32 %140, 2
  %143 = getelementptr i8, ptr %141, i32 %142
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %145 = load ptr, ptr %91, align 8
  %146 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %132
  %149 = tail call ptr @llvm.thread.pointer() #9
  %150 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 2
  %151 = load i32, ptr %150, align 8
  %152 = lshr i32 %151, 5
  %153 = getelementptr i32, ptr @__cpu_online_mask, i32 %152
  %154 = load volatile i32, ptr %153, align 4
  %155 = and i32 %151, 31
  %156 = shl nuw i32 1, %155
  %157 = and i32 %156, %154
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %148
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %160 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %145, i32 noundef %140, i32 noundef %144) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %161 = load ptr, ptr %91, align 8
  br label %162

162:                                              ; preds = %159, %148, %132
  %163 = phi ptr [ %145, %132 ], [ %145, %148 ], [ %161, %159 ]
  %164 = or i32 %144, 8192
  %165 = load ptr, ptr %80, align 4
  %166 = getelementptr inbounds %struct.tegra_sor_soc, ptr %165, i32 0, i32 5
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.tegra_sor_regs, ptr %167, i32 0, i32 9
  %169 = load i32, ptr %168, align 4
  %170 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %162
  %173 = tail call ptr @llvm.thread.pointer() #9
  %174 = getelementptr inbounds %struct.thread_info, ptr %173, i32 0, i32 2
  %175 = load i32, ptr %174, align 8
  %176 = lshr i32 %175, 5
  %177 = getelementptr i32, ptr @__cpu_online_mask, i32 %176
  %178 = load volatile i32, ptr %177, align 4
  %179 = and i32 %175, 31
  %180 = shl nuw i32 1, %179
  %181 = and i32 %180, %178
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %172
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %184 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %163, i32 noundef %169, i32 noundef %164) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %185

185:                                              ; preds = %183, %172, %162
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %186 = load ptr, ptr %86, align 8
  %187 = shl i32 %169, 2
  %188 = getelementptr i8, ptr %186, i32 %187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 %164) #9, !srcloc !18
  %189 = load ptr, ptr %80, align 4
  %190 = getelementptr inbounds %struct.tegra_sor_soc, ptr %189, i32 0, i32 5
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.tegra_sor_regs, ptr %191, i32 0, i32 6
  %193 = load i32, ptr %192, align 4
  %194 = load ptr, ptr %86, align 8
  %195 = shl i32 %193, 2
  %196 = getelementptr i8, ptr %194, i32 %195
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %198 = load ptr, ptr %91, align 8
  %199 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %185
  %202 = tail call ptr @llvm.thread.pointer() #9
  %203 = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 2
  %204 = load i32, ptr %203, align 8
  %205 = lshr i32 %204, 5
  %206 = getelementptr i32, ptr @__cpu_online_mask, i32 %205
  %207 = load volatile i32, ptr %206, align 4
  %208 = and i32 %204, 31
  %209 = shl nuw i32 1, %208
  %210 = and i32 %209, %207
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %201
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %213 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %198, i32 noundef %193, i32 noundef %197) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %214 = load ptr, ptr %91, align 8
  br label %215

215:                                              ; preds = %212, %201, %185
  %216 = phi ptr [ %198, %185 ], [ %198, %201 ], [ %214, %212 ]
  %217 = and i32 %197, -6
  %218 = load ptr, ptr %80, align 4
  %219 = getelementptr inbounds %struct.tegra_sor_soc, ptr %218, i32 0, i32 5
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.tegra_sor_regs, ptr %220, i32 0, i32 6
  %222 = load i32, ptr %221, align 4
  %223 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %215
  %226 = tail call ptr @llvm.thread.pointer() #9
  %227 = getelementptr inbounds %struct.thread_info, ptr %226, i32 0, i32 2
  %228 = load i32, ptr %227, align 8
  %229 = lshr i32 %228, 5
  %230 = getelementptr i32, ptr @__cpu_online_mask, i32 %229
  %231 = load volatile i32, ptr %230, align 4
  %232 = and i32 %228, 31
  %233 = shl nuw i32 1, %232
  %234 = and i32 %233, %231
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %225
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %237 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %216, i32 noundef %222, i32 noundef %217) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %238

238:                                              ; preds = %236, %225, %215
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %239 = load ptr, ptr %86, align 8
  %240 = shl i32 %222, 2
  %241 = getelementptr i8, ptr %239, i32 %240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %241, i32 %217) #9, !srcloc !18
  %242 = load ptr, ptr %80, align 4
  %243 = getelementptr inbounds %struct.tegra_sor_soc, ptr %242, i32 0, i32 5
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.tegra_sor_regs, ptr %244, i32 0, i32 8
  %246 = load i32, ptr %245, align 4
  %247 = load ptr, ptr %86, align 8
  %248 = shl i32 %246, 2
  %249 = getelementptr i8, ptr %247, i32 %248
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %249) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %251 = load ptr, ptr %91, align 8
  %252 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %268

254:                                              ; preds = %238
  %255 = tail call ptr @llvm.thread.pointer() #9
  %256 = getelementptr inbounds %struct.thread_info, ptr %255, i32 0, i32 2
  %257 = load i32, ptr %256, align 8
  %258 = lshr i32 %257, 5
  %259 = getelementptr i32, ptr @__cpu_online_mask, i32 %258
  %260 = load volatile i32, ptr %259, align 4
  %261 = and i32 %257, 31
  %262 = shl nuw i32 1, %261
  %263 = and i32 %262, %260
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %254
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %266 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %251, i32 noundef %246, i32 noundef %250) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %267 = load ptr, ptr %91, align 8
  br label %268

268:                                              ; preds = %265, %254, %238
  %269 = phi ptr [ %251, %238 ], [ %251, %254 ], [ %267, %265 ]
  %270 = and i32 %250, -16908289
  %271 = or i32 %270, 131072
  %272 = load ptr, ptr %80, align 4
  %273 = getelementptr inbounds %struct.tegra_sor_soc, ptr %272, i32 0, i32 5
  %274 = load ptr, ptr %273, align 4
  %275 = getelementptr inbounds %struct.tegra_sor_regs, ptr %274, i32 0, i32 8
  %276 = load i32, ptr %275, align 4
  %277 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %292

279:                                              ; preds = %268
  %280 = tail call ptr @llvm.thread.pointer() #9
  %281 = getelementptr inbounds %struct.thread_info, ptr %280, i32 0, i32 2
  %282 = load i32, ptr %281, align 8
  %283 = lshr i32 %282, 5
  %284 = getelementptr i32, ptr @__cpu_online_mask, i32 %283
  %285 = load volatile i32, ptr %284, align 4
  %286 = and i32 %282, 31
  %287 = shl nuw i32 1, %286
  %288 = and i32 %287, %285
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %279
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %291 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %269, i32 noundef %276, i32 noundef %271) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %292

292:                                              ; preds = %290, %279, %268
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %293 = load ptr, ptr %86, align 8
  %294 = shl i32 %276, 2
  %295 = getelementptr i8, ptr %293, i32 %294
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %295, i32 %271) #9, !srcloc !18
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #9
  %296 = load ptr, ptr %80, align 4
  %297 = getelementptr inbounds %struct.tegra_sor_soc, ptr %296, i32 0, i32 5
  %298 = load ptr, ptr %297, align 4
  %299 = getelementptr inbounds %struct.tegra_sor_regs, ptr %298, i32 0, i32 8
  %300 = load i32, ptr %299, align 4
  %301 = load ptr, ptr %86, align 8
  %302 = shl i32 %300, 2
  %303 = getelementptr i8, ptr %301, i32 %302
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %303) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %305 = load ptr, ptr %91, align 8
  %306 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %307 = icmp sgt i32 %306, 0
  br i1 %307, label %308, label %322

308:                                              ; preds = %292
  %309 = tail call ptr @llvm.thread.pointer() #9
  %310 = getelementptr inbounds %struct.thread_info, ptr %309, i32 0, i32 2
  %311 = load i32, ptr %310, align 8
  %312 = lshr i32 %311, 5
  %313 = getelementptr i32, ptr @__cpu_online_mask, i32 %312
  %314 = load volatile i32, ptr %313, align 4
  %315 = and i32 %311, 31
  %316 = shl nuw i32 1, %315
  %317 = and i32 %316, %314
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %308
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %320 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %305, i32 noundef %300, i32 noundef %304) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %321 = load ptr, ptr %91, align 8
  br label %322

322:                                              ; preds = %319, %308, %292
  %323 = phi ptr [ %305, %292 ], [ %305, %308 ], [ %321, %319 ]
  %324 = and i32 %304, -8650753
  %325 = load ptr, ptr %80, align 4
  %326 = getelementptr inbounds %struct.tegra_sor_soc, ptr %325, i32 0, i32 5
  %327 = load ptr, ptr %326, align 4
  %328 = getelementptr inbounds %struct.tegra_sor_regs, ptr %327, i32 0, i32 8
  %329 = load i32, ptr %328, align 4
  %330 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %345

332:                                              ; preds = %322
  %333 = tail call ptr @llvm.thread.pointer() #9
  %334 = getelementptr inbounds %struct.thread_info, ptr %333, i32 0, i32 2
  %335 = load i32, ptr %334, align 8
  %336 = lshr i32 %335, 5
  %337 = getelementptr i32, ptr @__cpu_online_mask, i32 %336
  %338 = load volatile i32, ptr %337, align 4
  %339 = and i32 %335, 31
  %340 = shl nuw i32 1, %339
  %341 = and i32 %340, %338
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %345, label %343

343:                                              ; preds = %332
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %344 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %323, i32 noundef %329, i32 noundef %324) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %345

345:                                              ; preds = %343, %332, %322
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %346 = load ptr, ptr %86, align 8
  %347 = shl i32 %329, 2
  %348 = getelementptr i8, ptr %346, i32 %347
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %348, i32 %324) #9, !srcloc !18
  %349 = load ptr, ptr %86, align 8
  %350 = getelementptr i8, ptr %349, i32 76
  %351 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %350) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %352 = load ptr, ptr %91, align 8
  %353 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %354 = icmp sgt i32 %353, 0
  br i1 %354, label %355, label %369

355:                                              ; preds = %345
  %356 = tail call ptr @llvm.thread.pointer() #9
  %357 = getelementptr inbounds %struct.thread_info, ptr %356, i32 0, i32 2
  %358 = load i32, ptr %357, align 8
  %359 = lshr i32 %358, 5
  %360 = getelementptr i32, ptr @__cpu_online_mask, i32 %359
  %361 = load volatile i32, ptr %360, align 4
  %362 = and i32 %358, 31
  %363 = shl nuw i32 1, %362
  %364 = and i32 %363, %361
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %369, label %366

366:                                              ; preds = %355
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %367 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %352, i32 noundef 19, i32 noundef %351) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %368 = load ptr, ptr %91, align 8
  br label %369

369:                                              ; preds = %366, %355, %345
  %370 = phi ptr [ %352, %345 ], [ %352, %355 ], [ %368, %366 ]
  %371 = load ptr, ptr %74, align 4
  %372 = icmp eq ptr %371, null
  %373 = and i32 %351, -4
  %374 = or i32 %373, 2
  %375 = or i32 %351, 3
  %376 = select i1 %372, i32 %375, i32 %374
  %377 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %378 = icmp sgt i32 %377, 0
  br i1 %378, label %379, label %392

379:                                              ; preds = %369
  %380 = tail call ptr @llvm.thread.pointer() #9
  %381 = getelementptr inbounds %struct.thread_info, ptr %380, i32 0, i32 2
  %382 = load i32, ptr %381, align 8
  %383 = lshr i32 %382, 5
  %384 = getelementptr i32, ptr @__cpu_online_mask, i32 %383
  %385 = load volatile i32, ptr %384, align 4
  %386 = and i32 %382, 31
  %387 = shl nuw i32 1, %386
  %388 = and i32 %387, %385
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %392, label %390

390:                                              ; preds = %379
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %391 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %370, i32 noundef 19, i32 noundef %376) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %392

392:                                              ; preds = %390, %379, %369
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %393 = load ptr, ptr %86, align 8
  %394 = getelementptr i8, ptr %393, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %394, i32 %376) #9, !srcloc !18
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #9
  %395 = load ptr, ptr %86, align 8
  %396 = getelementptr i8, ptr %395, i32 384
  %397 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %396) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %398 = load ptr, ptr %91, align 8
  %399 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %400 = icmp sgt i32 %399, 0
  br i1 %400, label %401, label %415

401:                                              ; preds = %392
  %402 = tail call ptr @llvm.thread.pointer() #9
  %403 = getelementptr inbounds %struct.thread_info, ptr %402, i32 0, i32 2
  %404 = load i32, ptr %403, align 8
  %405 = lshr i32 %404, 5
  %406 = getelementptr i32, ptr @__cpu_online_mask, i32 %405
  %407 = load volatile i32, ptr %406, align 4
  %408 = and i32 %404, 31
  %409 = shl nuw i32 1, %408
  %410 = and i32 %409, %407
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %415, label %412

412:                                              ; preds = %401
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %413 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %398, i32 noundef 96, i32 noundef %397) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %414 = load ptr, ptr %91, align 8
  br label %415

415:                                              ; preds = %412, %401, %392
  %416 = phi ptr [ %398, %392 ], [ %398, %401 ], [ %414, %412 ]
  %417 = load ptr, ptr %74, align 4
  %418 = icmp eq ptr %417, null
  %419 = and i32 %397, -4
  %420 = select i1 %418, i32 0, i32 2
  %421 = or i32 %419, %420
  %422 = or i32 %421, 1
  %423 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %424 = icmp sgt i32 %423, 0
  br i1 %424, label %425, label %438

425:                                              ; preds = %415
  %426 = tail call ptr @llvm.thread.pointer() #9
  %427 = getelementptr inbounds %struct.thread_info, ptr %426, i32 0, i32 2
  %428 = load i32, ptr %427, align 8
  %429 = lshr i32 %428, 5
  %430 = getelementptr i32, ptr @__cpu_online_mask, i32 %429
  %431 = load volatile i32, ptr %430, align 4
  %432 = and i32 %428, 31
  %433 = shl nuw i32 1, %432
  %434 = and i32 %433, %431
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %438, label %436

436:                                              ; preds = %425
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %437 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %416, i32 noundef 96, i32 noundef %422) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %438

438:                                              ; preds = %436, %425, %415
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %439 = load ptr, ptr %86, align 8
  %440 = getelementptr i8, ptr %439, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %440, i32 %422) #9, !srcloc !18
  %441 = load ptr, ptr %91, align 8
  %442 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %443 = icmp sgt i32 %442, 0
  br i1 %443, label %444, label %457

444:                                              ; preds = %438
  %445 = tail call ptr @llvm.thread.pointer() #9
  %446 = getelementptr inbounds %struct.thread_info, ptr %445, i32 0, i32 2
  %447 = load i32, ptr %446, align 8
  %448 = lshr i32 %447, 5
  %449 = getelementptr i32, ptr @__cpu_online_mask, i32 %448
  %450 = load volatile i32, ptr %449, align 4
  %451 = and i32 %447, 31
  %452 = shl nuw i32 1, %451
  %453 = and i32 %452, %450
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %457, label %455

455:                                              ; preds = %444
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %456 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %441, i32 noundef 28, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %457

457:                                              ; preds = %455, %444, %438
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %458 = load ptr, ptr %86, align 8
  %459 = getelementptr i8, ptr %458, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %459, i32 0) #9, !srcloc !18
  %460 = load ptr, ptr %80, align 4
  %461 = getelementptr inbounds %struct.tegra_sor_soc, ptr %460, i32 0, i32 5
  %462 = load ptr, ptr %461, align 4
  %463 = getelementptr inbounds %struct.tegra_sor_regs, ptr %462, i32 0, i32 6
  %464 = load i32, ptr %463, align 4
  %465 = load ptr, ptr %86, align 8
  %466 = shl i32 %464, 2
  %467 = getelementptr i8, ptr %465, i32 %466
  %468 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %467) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %469 = load ptr, ptr %91, align 8
  %470 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %471 = icmp sgt i32 %470, 0
  br i1 %471, label %472, label %486

472:                                              ; preds = %457
  %473 = tail call ptr @llvm.thread.pointer() #9
  %474 = getelementptr inbounds %struct.thread_info, ptr %473, i32 0, i32 2
  %475 = load i32, ptr %474, align 8
  %476 = lshr i32 %475, 5
  %477 = getelementptr i32, ptr @__cpu_online_mask, i32 %476
  %478 = load volatile i32, ptr %477, align 4
  %479 = and i32 %475, 31
  %480 = shl nuw i32 1, %479
  %481 = and i32 %480, %478
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %486, label %483

483:                                              ; preds = %472
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %484 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %469, i32 noundef %464, i32 noundef %468) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %485 = load ptr, ptr %91, align 8
  br label %486

486:                                              ; preds = %483, %472, %457
  %487 = phi ptr [ %469, %457 ], [ %469, %472 ], [ %485, %483 ]
  %488 = and i32 %468, -251662097
  %489 = or i32 %488, 16778000
  %490 = load ptr, ptr %80, align 4
  %491 = getelementptr inbounds %struct.tegra_sor_soc, ptr %490, i32 0, i32 5
  %492 = load ptr, ptr %491, align 4
  %493 = getelementptr inbounds %struct.tegra_sor_regs, ptr %492, i32 0, i32 6
  %494 = load i32, ptr %493, align 4
  %495 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %496 = icmp sgt i32 %495, 0
  br i1 %496, label %497, label %510

497:                                              ; preds = %486
  %498 = tail call ptr @llvm.thread.pointer() #9
  %499 = getelementptr inbounds %struct.thread_info, ptr %498, i32 0, i32 2
  %500 = load i32, ptr %499, align 8
  %501 = lshr i32 %500, 5
  %502 = getelementptr i32, ptr @__cpu_online_mask, i32 %501
  %503 = load volatile i32, ptr %502, align 4
  %504 = and i32 %500, 31
  %505 = shl nuw i32 1, %504
  %506 = and i32 %505, %503
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %510, label %508

508:                                              ; preds = %497
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %509 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %487, i32 noundef %494, i32 noundef %489) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %510

510:                                              ; preds = %508, %497, %486
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %511 = load ptr, ptr %86, align 8
  %512 = shl i32 %494, 2
  %513 = getelementptr i8, ptr %511, i32 %512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %513, i32 %489) #9, !srcloc !18
  %514 = load ptr, ptr %80, align 4
  %515 = getelementptr inbounds %struct.tegra_sor_soc, ptr %514, i32 0, i32 9
  %516 = load ptr, ptr %515, align 4
  %517 = load i8, ptr %516, align 1
  %518 = shl i8 %517, 2
  %519 = and i8 %518, 28
  %520 = getelementptr i8, ptr %516, i32 1
  %521 = load i8, ptr %520, align 1
  %522 = shl i8 %521, 5
  %523 = or i8 %519, %522
  %524 = zext i8 %523 to i32
  %525 = getelementptr i8, ptr %516, i32 2
  %526 = load i8, ptr %525, align 1
  %527 = and i8 %526, 7
  %528 = zext i8 %527 to i32
  %529 = shl nuw nsw i32 %528, 8
  %530 = or i32 %529, %524
  %531 = getelementptr i8, ptr %516, i32 3
  %532 = load i8, ptr %531, align 1
  %533 = and i8 %532, 7
  %534 = zext i8 %533 to i32
  %535 = shl nuw nsw i32 %534, 11
  %536 = or i32 %530, %535
  %537 = getelementptr i8, ptr %516, i32 4
  %538 = load i8, ptr %537, align 1
  %539 = and i8 %538, 7
  %540 = zext i8 %539 to i32
  %541 = shl nuw nsw i32 %540, 14
  %542 = or i32 %536, %541
  %543 = or i32 %542, -1928331264
  %544 = load ptr, ptr %91, align 8
  %545 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %546 = icmp sgt i32 %545, 0
  br i1 %546, label %547, label %560

547:                                              ; preds = %510
  %548 = tail call ptr @llvm.thread.pointer() #9
  %549 = getelementptr inbounds %struct.thread_info, ptr %548, i32 0, i32 2
  %550 = load i32, ptr %549, align 8
  %551 = lshr i32 %550, 5
  %552 = getelementptr i32, ptr @__cpu_online_mask, i32 %551
  %553 = load volatile i32, ptr %552, align 4
  %554 = and i32 %550, 31
  %555 = shl nuw i32 1, %554
  %556 = and i32 %555, %553
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %560, label %558

558:                                              ; preds = %547
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %559 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %544, i32 noundef 75, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %560

560:                                              ; preds = %558, %547, %510
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %561 = load ptr, ptr %86, align 8
  %562 = getelementptr i8, ptr %561, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %562, i32 0) #9, !srcloc !18
  %563 = load ptr, ptr %91, align 8
  %564 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %565 = icmp sgt i32 %564, 0
  br i1 %565, label %566, label %579

566:                                              ; preds = %560
  %567 = tail call ptr @llvm.thread.pointer() #9
  %568 = getelementptr inbounds %struct.thread_info, ptr %567, i32 0, i32 2
  %569 = load i32, ptr %568, align 8
  %570 = lshr i32 %569, 5
  %571 = getelementptr i32, ptr @__cpu_online_mask, i32 %570
  %572 = load volatile i32, ptr %571, align 4
  %573 = and i32 %569, 31
  %574 = shl nuw i32 1, %573
  %575 = and i32 %574, %572
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %579, label %577

577:                                              ; preds = %566
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %578 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %563, i32 noundef 74, i32 noundef %543) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %579

579:                                              ; preds = %577, %566, %560
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %580 = load ptr, ptr %86, align 8
  %581 = getelementptr i8, ptr %580, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %581, i32 %543) #9, !srcloc !18
  %582 = getelementptr i8, ptr %0, i32 1080
  %583 = load ptr, ptr %582, align 4
  %584 = tail call fastcc i32 @tegra_sor_set_parent_clock(ptr noundef %8, ptr noundef %583)
  %585 = icmp slt i32 %584, 0
  br i1 %585, label %586, label %588

586:                                              ; preds = %579
  %587 = load ptr, ptr %91, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %587, ptr noundef nonnull @.str.61, i32 noundef %584) #10
  br label %1641

588:                                              ; preds = %579
  %589 = getelementptr i8, ptr %0, i32 1088
  %590 = load ptr, ptr %589, align 4
  %591 = getelementptr i8, ptr %0, i32 1068
  %592 = load ptr, ptr %591, align 8
  %593 = tail call i32 @clk_set_parent(ptr noundef %590, ptr noundef %592) #9
  %594 = icmp slt i32 %593, 0
  br i1 %594, label %595, label %597

595:                                              ; preds = %588
  %596 = load ptr, ptr %91, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %596, ptr noundef nonnull @.str.62, i32 noundef %593) #10
  br label %1641

597:                                              ; preds = %588
  %598 = load ptr, ptr %86, align 8
  %599 = getelementptr i8, ptr %598, i32 16
  %600 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %599) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %601 = load ptr, ptr %91, align 8
  %602 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %603 = icmp sgt i32 %602, 0
  br i1 %603, label %604, label %618

604:                                              ; preds = %597
  %605 = tail call ptr @llvm.thread.pointer() #9
  %606 = getelementptr inbounds %struct.thread_info, ptr %605, i32 0, i32 2
  %607 = load i32, ptr %606, align 8
  %608 = lshr i32 %607, 5
  %609 = getelementptr i32, ptr @__cpu_online_mask, i32 %608
  %610 = load volatile i32, ptr %609, align 4
  %611 = and i32 %607, 31
  %612 = shl nuw i32 1, %611
  %613 = and i32 %612, %610
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %618, label %615

615:                                              ; preds = %604
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %616 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %601, i32 noundef 4, i32 noundef %600) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %617 = load ptr, ptr %91, align 8
  br label %618

618:                                              ; preds = %615, %604, %597
  %619 = phi ptr [ %601, %597 ], [ %601, %604 ], [ %617, %615 ]
  %620 = and i32 %600, -3841
  %621 = or i32 %620, 2048
  %622 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %623 = icmp sgt i32 %622, 0
  br i1 %623, label %624, label %637

624:                                              ; preds = %618
  %625 = tail call ptr @llvm.thread.pointer() #9
  %626 = getelementptr inbounds %struct.thread_info, ptr %625, i32 0, i32 2
  %627 = load i32, ptr %626, align 8
  %628 = lshr i32 %627, 5
  %629 = getelementptr i32, ptr @__cpu_online_mask, i32 %628
  %630 = load volatile i32, ptr %629, align 4
  %631 = and i32 %627, 31
  %632 = shl nuw i32 1, %631
  %633 = and i32 %632, %630
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %637, label %635

635:                                              ; preds = %624
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %636 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %619, i32 noundef 4, i32 noundef %621) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %637

637:                                              ; preds = %635, %624, %618
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %638 = load ptr, ptr %86, align 8
  %639 = getelementptr i8, ptr %638, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %639, i32 %621) #9, !srcloc !18
  %640 = load ptr, ptr %86, align 8
  %641 = getelementptr i8, ptr %640, i32 304
  %642 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %641) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %643 = load ptr, ptr %91, align 8
  %644 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %645 = icmp sgt i32 %644, 0
  br i1 %645, label %646, label %660

646:                                              ; preds = %637
  %647 = tail call ptr @llvm.thread.pointer() #9
  %648 = getelementptr inbounds %struct.thread_info, ptr %647, i32 0, i32 2
  %649 = load i32, ptr %648, align 8
  %650 = lshr i32 %649, 5
  %651 = getelementptr i32, ptr @__cpu_online_mask, i32 %650
  %652 = load volatile i32, ptr %651, align 4
  %653 = and i32 %649, 31
  %654 = shl nuw i32 1, %653
  %655 = and i32 %654, %652
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %660, label %657

657:                                              ; preds = %646
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %658 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %643, i32 noundef 76, i32 noundef %642) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %659 = load ptr, ptr %91, align 8
  br label %660

660:                                              ; preds = %657, %646, %637
  %661 = phi ptr [ %643, %637 ], [ %643, %646 ], [ %659, %657 ]
  %662 = or i32 %642, 1
  %663 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %664 = icmp sgt i32 %663, 0
  br i1 %664, label %665, label %678

665:                                              ; preds = %660
  %666 = tail call ptr @llvm.thread.pointer() #9
  %667 = getelementptr inbounds %struct.thread_info, ptr %666, i32 0, i32 2
  %668 = load i32, ptr %667, align 8
  %669 = lshr i32 %668, 5
  %670 = getelementptr i32, ptr @__cpu_online_mask, i32 %669
  %671 = load volatile i32, ptr %670, align 4
  %672 = and i32 %668, 31
  %673 = shl nuw i32 1, %672
  %674 = and i32 %673, %671
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %678, label %676

676:                                              ; preds = %665
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %677 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %661, i32 noundef 76, i32 noundef %662) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %678

678:                                              ; preds = %676, %665, %660
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %679 = load ptr, ptr %86, align 8
  %680 = getelementptr i8, ptr %679, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %680, i32 %662) #9, !srcloc !18
  %681 = load ptr, ptr %80, align 4
  %682 = getelementptr inbounds %struct.tegra_sor_soc, ptr %681, i32 0, i32 5
  %683 = load ptr, ptr %682, align 4
  %684 = getelementptr inbounds %struct.tegra_sor_regs, ptr %683, i32 0, i32 10
  %685 = load i32, ptr %684, align 4
  %686 = load ptr, ptr %86, align 8
  %687 = shl i32 %685, 2
  %688 = getelementptr i8, ptr %686, i32 %687
  %689 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %688) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %690 = load ptr, ptr %91, align 8
  %691 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %692 = icmp sgt i32 %691, 0
  br i1 %692, label %693, label %707

693:                                              ; preds = %678
  %694 = tail call ptr @llvm.thread.pointer() #9
  %695 = getelementptr inbounds %struct.thread_info, ptr %694, i32 0, i32 2
  %696 = load i32, ptr %695, align 8
  %697 = lshr i32 %696, 5
  %698 = getelementptr i32, ptr @__cpu_online_mask, i32 %697
  %699 = load volatile i32, ptr %698, align 4
  %700 = and i32 %696, 31
  %701 = shl nuw i32 1, %700
  %702 = and i32 %701, %699
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %707, label %704

704:                                              ; preds = %693
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %705 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %690, i32 noundef %685, i32 noundef %689) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %706 = load ptr, ptr %91, align 8
  br label %707

707:                                              ; preds = %704, %693, %678
  %708 = phi ptr [ %690, %678 ], [ %690, %693 ], [ %706, %704 ]
  %709 = and i32 %689, -8388609
  %710 = load ptr, ptr %80, align 4
  %711 = getelementptr inbounds %struct.tegra_sor_soc, ptr %710, i32 0, i32 5
  %712 = load ptr, ptr %711, align 4
  %713 = getelementptr inbounds %struct.tegra_sor_regs, ptr %712, i32 0, i32 10
  %714 = load i32, ptr %713, align 4
  %715 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %716 = icmp sgt i32 %715, 0
  br i1 %716, label %717, label %730

717:                                              ; preds = %707
  %718 = tail call ptr @llvm.thread.pointer() #9
  %719 = getelementptr inbounds %struct.thread_info, ptr %718, i32 0, i32 2
  %720 = load i32, ptr %719, align 8
  %721 = lshr i32 %720, 5
  %722 = getelementptr i32, ptr @__cpu_online_mask, i32 %721
  %723 = load volatile i32, ptr %722, align 4
  %724 = and i32 %720, 31
  %725 = shl nuw i32 1, %724
  %726 = and i32 %725, %723
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %730, label %728

728:                                              ; preds = %717
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %729 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %708, i32 noundef %714, i32 noundef %709) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %730

730:                                              ; preds = %728, %717, %707
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %731 = load ptr, ptr %86, align 8
  %732 = shl i32 %714, 2
  %733 = getelementptr i8, ptr %731, i32 %732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %733, i32 %709) #9, !srcloc !18
  %734 = load ptr, ptr %80, align 4
  %735 = getelementptr inbounds %struct.tegra_sor_soc, ptr %734, i32 0, i32 5
  %736 = load ptr, ptr %735, align 4
  %737 = getelementptr inbounds %struct.tegra_sor_regs, ptr %736, i32 0, i32 7
  %738 = load i32, ptr %737, align 4
  %739 = load ptr, ptr %86, align 8
  %740 = shl i32 %738, 2
  %741 = getelementptr i8, ptr %739, i32 %740
  %742 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %741) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %743 = load ptr, ptr %91, align 8
  %744 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %745 = icmp sgt i32 %744, 0
  br i1 %745, label %746, label %760

746:                                              ; preds = %730
  %747 = tail call ptr @llvm.thread.pointer() #9
  %748 = getelementptr inbounds %struct.thread_info, ptr %747, i32 0, i32 2
  %749 = load i32, ptr %748, align 8
  %750 = lshr i32 %749, 5
  %751 = getelementptr i32, ptr @__cpu_online_mask, i32 %750
  %752 = load volatile i32, ptr %751, align 4
  %753 = and i32 %749, 31
  %754 = shl nuw i32 1, %753
  %755 = and i32 %754, %752
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %760, label %757

757:                                              ; preds = %746
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %758 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %743, i32 noundef %738, i32 noundef %742) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %759 = load ptr, ptr %91, align 8
  br label %760

760:                                              ; preds = %757, %746, %730
  %761 = phi ptr [ %743, %730 ], [ %743, %746 ], [ %759, %757 ]
  %762 = or i32 %742, 256
  %763 = load ptr, ptr %80, align 4
  %764 = getelementptr inbounds %struct.tegra_sor_soc, ptr %763, i32 0, i32 5
  %765 = load ptr, ptr %764, align 4
  %766 = getelementptr inbounds %struct.tegra_sor_regs, ptr %765, i32 0, i32 7
  %767 = load i32, ptr %766, align 4
  %768 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %769 = icmp sgt i32 %768, 0
  br i1 %769, label %770, label %783

770:                                              ; preds = %760
  %771 = tail call ptr @llvm.thread.pointer() #9
  %772 = getelementptr inbounds %struct.thread_info, ptr %771, i32 0, i32 2
  %773 = load i32, ptr %772, align 8
  %774 = lshr i32 %773, 5
  %775 = getelementptr i32, ptr @__cpu_online_mask, i32 %774
  %776 = load volatile i32, ptr %775, align 4
  %777 = and i32 %773, 31
  %778 = shl nuw i32 1, %777
  %779 = and i32 %778, %776
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %783, label %781

781:                                              ; preds = %770
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %782 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %761, i32 noundef %767, i32 noundef %762) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %783

783:                                              ; preds = %781, %770, %760
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %784 = load ptr, ptr %86, align 8
  %785 = shl i32 %767, 2
  %786 = getelementptr i8, ptr %784, i32 %785
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %786, i32 %762) #9, !srcloc !18
  br label %787

787:                                              ; preds = %872, %783
  %788 = phi i32 [ 0, %783 ], [ %877, %872 ]
  %789 = phi i32 [ 8, %783 ], [ %878, %872 ]
  %790 = or i32 %789, %788
  %791 = load ptr, ptr %80, align 4
  %792 = getelementptr inbounds %struct.tegra_sor_soc, ptr %791, i32 0, i32 5
  %793 = load ptr, ptr %792, align 4
  %794 = getelementptr inbounds %struct.tegra_sor_regs, ptr %793, i32 0, i32 7
  %795 = load i32, ptr %794, align 4
  %796 = load ptr, ptr %86, align 8
  %797 = shl i32 %795, 2
  %798 = getelementptr i8, ptr %796, i32 %797
  %799 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %798) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %800 = load ptr, ptr %91, align 8
  %801 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %802 = icmp sgt i32 %801, 0
  br i1 %802, label %803, label %817

803:                                              ; preds = %787
  %804 = tail call ptr @llvm.thread.pointer() #9
  %805 = getelementptr inbounds %struct.thread_info, ptr %804, i32 0, i32 2
  %806 = load i32, ptr %805, align 8
  %807 = lshr i32 %806, 5
  %808 = getelementptr i32, ptr @__cpu_online_mask, i32 %807
  %809 = load volatile i32, ptr %808, align 4
  %810 = and i32 %806, 31
  %811 = shl nuw i32 1, %810
  %812 = and i32 %811, %809
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %817, label %814

814:                                              ; preds = %803
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %815 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %800, i32 noundef %795, i32 noundef %799) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %816 = load ptr, ptr %91, align 8
  br label %817

817:                                              ; preds = %814, %803, %787
  %818 = phi ptr [ %800, %787 ], [ %800, %803 ], [ %816, %814 ]
  %819 = and i32 %799, -7681
  %820 = shl i32 %790, 9
  %821 = and i32 %820, 7680
  %822 = or i32 %819, %821
  %823 = load ptr, ptr %80, align 4
  %824 = getelementptr inbounds %struct.tegra_sor_soc, ptr %823, i32 0, i32 5
  %825 = load ptr, ptr %824, align 4
  %826 = getelementptr inbounds %struct.tegra_sor_regs, ptr %825, i32 0, i32 7
  %827 = load i32, ptr %826, align 4
  %828 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %829 = icmp sgt i32 %828, 0
  br i1 %829, label %830, label %843

830:                                              ; preds = %817
  %831 = tail call ptr @llvm.thread.pointer() #9
  %832 = getelementptr inbounds %struct.thread_info, ptr %831, i32 0, i32 2
  %833 = load i32, ptr %832, align 8
  %834 = lshr i32 %833, 5
  %835 = getelementptr i32, ptr @__cpu_online_mask, i32 %834
  %836 = load volatile i32, ptr %835, align 4
  %837 = and i32 %833, 31
  %838 = shl nuw i32 1, %837
  %839 = and i32 %838, %836
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %843, label %841

841:                                              ; preds = %830
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %842 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %818, i32 noundef %827, i32 noundef %822) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %843

843:                                              ; preds = %841, %830, %817
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %844 = load ptr, ptr %86, align 8
  %845 = shl i32 %827, 2
  %846 = getelementptr i8, ptr %844, i32 %845
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %846, i32 %822) #9, !srcloc !18
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #9
  %847 = load ptr, ptr %80, align 4
  %848 = getelementptr inbounds %struct.tegra_sor_soc, ptr %847, i32 0, i32 5
  %849 = load ptr, ptr %848, align 4
  %850 = getelementptr inbounds %struct.tegra_sor_regs, ptr %849, i32 0, i32 7
  %851 = load i32, ptr %850, align 4
  %852 = load ptr, ptr %86, align 8
  %853 = shl i32 %851, 2
  %854 = getelementptr i8, ptr %852, i32 %853
  %855 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %854) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %856 = load ptr, ptr %91, align 8
  %857 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %858 = icmp sgt i32 %857, 0
  br i1 %858, label %859, label %872

859:                                              ; preds = %843
  %860 = tail call ptr @llvm.thread.pointer() #9
  %861 = getelementptr inbounds %struct.thread_info, ptr %860, i32 0, i32 2
  %862 = load i32, ptr %861, align 8
  %863 = lshr i32 %862, 5
  %864 = getelementptr i32, ptr @__cpu_online_mask, i32 %863
  %865 = load volatile i32, ptr %864, align 4
  %866 = and i32 %862, 31
  %867 = shl nuw i32 1, %866
  %868 = and i32 %867, %865
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %872, label %870

870:                                              ; preds = %859
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %871 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %856, i32 noundef %851, i32 noundef %855) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %872

872:                                              ; preds = %870, %859, %843
  %873 = and i32 %855, 32768
  %874 = icmp eq i32 %873, 0
  %875 = xor i32 %789, -1
  %876 = and i32 %788, %875
  %877 = select i1 %874, i32 %790, i32 %876
  %878 = lshr i32 %789, 1
  %879 = icmp ult i32 %789, 2
  br i1 %879, label %880, label %787

880:                                              ; preds = %872
  %881 = load ptr, ptr %80, align 4
  %882 = getelementptr inbounds %struct.tegra_sor_soc, ptr %881, i32 0, i32 5
  %883 = load ptr, ptr %882, align 4
  %884 = getelementptr inbounds %struct.tegra_sor_regs, ptr %883, i32 0, i32 7
  %885 = load i32, ptr %884, align 4
  %886 = load ptr, ptr %86, align 8
  %887 = shl i32 %885, 2
  %888 = getelementptr i8, ptr %886, i32 %887
  %889 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %888) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %890 = load ptr, ptr %91, align 8
  %891 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %892 = icmp sgt i32 %891, 0
  br i1 %892, label %893, label %907

893:                                              ; preds = %880
  %894 = tail call ptr @llvm.thread.pointer() #9
  %895 = getelementptr inbounds %struct.thread_info, ptr %894, i32 0, i32 2
  %896 = load i32, ptr %895, align 8
  %897 = lshr i32 %896, 5
  %898 = getelementptr i32, ptr @__cpu_online_mask, i32 %897
  %899 = load volatile i32, ptr %898, align 4
  %900 = and i32 %896, 31
  %901 = shl nuw i32 1, %900
  %902 = and i32 %901, %899
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %907, label %904

904:                                              ; preds = %893
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %905 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %890, i32 noundef %885, i32 noundef %889) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %906 = load ptr, ptr %91, align 8
  br label %907

907:                                              ; preds = %904, %893, %880
  %908 = phi ptr [ %890, %880 ], [ %890, %893 ], [ %906, %904 ]
  %909 = and i32 %889, -7681
  %910 = shl i32 %877, 9
  %911 = and i32 %910, 7680
  %912 = or i32 %909, %911
  %913 = load ptr, ptr %80, align 4
  %914 = getelementptr inbounds %struct.tegra_sor_soc, ptr %913, i32 0, i32 5
  %915 = load ptr, ptr %914, align 4
  %916 = getelementptr inbounds %struct.tegra_sor_regs, ptr %915, i32 0, i32 7
  %917 = load i32, ptr %916, align 4
  %918 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %919 = icmp sgt i32 %918, 0
  br i1 %919, label %920, label %933

920:                                              ; preds = %907
  %921 = tail call ptr @llvm.thread.pointer() #9
  %922 = getelementptr inbounds %struct.thread_info, ptr %921, i32 0, i32 2
  %923 = load i32, ptr %922, align 8
  %924 = lshr i32 %923, 5
  %925 = getelementptr i32, ptr @__cpu_online_mask, i32 %924
  %926 = load volatile i32, ptr %925, align 4
  %927 = and i32 %923, 31
  %928 = shl nuw i32 1, %927
  %929 = and i32 %928, %926
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %933, label %931

931:                                              ; preds = %920
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %932 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %908, i32 noundef %917, i32 noundef %912) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %933

933:                                              ; preds = %931, %920, %907
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %934 = load ptr, ptr %86, align 8
  %935 = shl i32 %917, 2
  %936 = getelementptr i8, ptr %934, i32 %935
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %936, i32 %912) #9, !srcloc !18
  %937 = load ptr, ptr %80, align 4
  %938 = getelementptr inbounds %struct.tegra_sor_soc, ptr %937, i32 0, i32 5
  %939 = load ptr, ptr %938, align 4
  %940 = getelementptr inbounds %struct.tegra_sor_regs, ptr %939, i32 0, i32 10
  %941 = load i32, ptr %940, align 4
  %942 = load ptr, ptr %86, align 8
  %943 = shl i32 %941, 2
  %944 = getelementptr i8, ptr %942, i32 %943
  %945 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %944) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %946 = load ptr, ptr %91, align 8
  %947 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %948 = icmp sgt i32 %947, 0
  br i1 %948, label %949, label %963

949:                                              ; preds = %933
  %950 = tail call ptr @llvm.thread.pointer() #9
  %951 = getelementptr inbounds %struct.thread_info, ptr %950, i32 0, i32 2
  %952 = load i32, ptr %951, align 8
  %953 = lshr i32 %952, 5
  %954 = getelementptr i32, ptr @__cpu_online_mask, i32 %953
  %955 = load volatile i32, ptr %954, align 4
  %956 = and i32 %952, 31
  %957 = shl nuw i32 1, %956
  %958 = and i32 %957, %955
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %963, label %960

960:                                              ; preds = %949
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %961 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %946, i32 noundef %941, i32 noundef %945) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %962 = load ptr, ptr %91, align 8
  br label %963

963:                                              ; preds = %960, %949, %933
  %964 = phi ptr [ %946, %933 ], [ %946, %949 ], [ %962, %960 ]
  %965 = or i32 %945, 8388608
  %966 = load ptr, ptr %80, align 4
  %967 = getelementptr inbounds %struct.tegra_sor_soc, ptr %966, i32 0, i32 5
  %968 = load ptr, ptr %967, align 4
  %969 = getelementptr inbounds %struct.tegra_sor_regs, ptr %968, i32 0, i32 10
  %970 = load i32, ptr %969, align 4
  %971 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %972 = icmp sgt i32 %971, 0
  br i1 %972, label %973, label %986

973:                                              ; preds = %963
  %974 = tail call ptr @llvm.thread.pointer() #9
  %975 = getelementptr inbounds %struct.thread_info, ptr %974, i32 0, i32 2
  %976 = load i32, ptr %975, align 8
  %977 = lshr i32 %976, 5
  %978 = getelementptr i32, ptr @__cpu_online_mask, i32 %977
  %979 = load volatile i32, ptr %978, align 4
  %980 = and i32 %976, 31
  %981 = shl nuw i32 1, %980
  %982 = and i32 %981, %979
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %986, label %984

984:                                              ; preds = %973
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %985 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %964, i32 noundef %970, i32 noundef %965) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %986

986:                                              ; preds = %984, %973, %963
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %987 = load ptr, ptr %86, align 8
  %988 = shl i32 %970, 2
  %989 = getelementptr i8, ptr %987, i32 %988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %989, i32 %965) #9, !srcloc !18
  %990 = tail call i32 @drm_dp_link_train(ptr noundef %46) #9
  %991 = icmp slt i32 %990, 0
  br i1 %991, label %992, label %994

992:                                              ; preds = %986
  %993 = load ptr, ptr %91, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %993, ptr noundef nonnull @.str.79, i32 noundef %990) #10
  br label %994

994:                                              ; preds = %992, %986
  %995 = load ptr, ptr %37, align 4
  %996 = tail call i32 @drm_dp_link_power_up(ptr noundef %995, ptr noundef %46) #9
  %997 = icmp slt i32 %996, 0
  br i1 %997, label %998, label %1000

998:                                              ; preds = %994
  %999 = load ptr, ptr %91, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %999, ptr noundef nonnull @.str.80, i32 noundef %996) #10
  br label %1000

1000:                                             ; preds = %998, %994
  %1001 = getelementptr inbounds %struct.tegra_sor_state, ptr %10, i32 0, i32 3
  %1002 = load i32, ptr %1001, align 4
  %1003 = mul i32 %1002, 3
  %1004 = getelementptr i8, ptr %0, i32 1132
  %1005 = load i32, ptr %1004, align 4
  %1006 = mul i32 %1005, 1000
  %1007 = zext i32 %1006 to i64
  %1008 = load i32, ptr %13, align 4
  %1009 = mul i32 %1008, 1000
  %1010 = sext i32 %1009 to i64
  %1011 = icmp eq i32 %1006, 0
  br i1 %1011, label %1238, label %1012

1012:                                             ; preds = %1000
  %1013 = getelementptr i8, ptr %0, i32 1136
  %1014 = load i32, ptr %1013, align 4
  %1015 = icmp eq i32 %1014, 0
  %1016 = icmp eq i32 %1009, 0
  %1017 = select i1 %1015, i1 true, i1 %1016
  %1018 = icmp eq i32 %1003, 0
  %1019 = select i1 %1017, i1 true, i1 %1018
  br i1 %1019, label %1238, label %1020

1020:                                             ; preds = %1012
  %1021 = zext i32 %1003 to i64
  %1022 = mul nsw i64 %1010, %1021
  %1023 = shl nuw nsw i64 %1007, 3
  %1024 = zext i32 %1014 to i64
  %1025 = mul i64 %1023, %1024
  %1026 = icmp ult i64 %1022, %1025
  br i1 %1026, label %1027, label %1238

1027:                                             ; preds = %1020
  %1028 = mul i64 %1022, 100000
  %1029 = tail call i64 @div64_u64(i64 noundef %1028, i64 noundef %1025) #9
  %1030 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 1
  %1031 = load i16, ptr %1030, align 4
  %1032 = zext i16 %1031 to i64
  %1033 = mul nuw nsw i64 %1032, %1007
  %1034 = icmp ult i64 %1033, 4294967296
  br i1 %1034, label %1035, label %1038, !prof !29

1035:                                             ; preds = %1027
  %1036 = trunc i64 %1033 to i32
  %1037 = udiv i32 %1036, %1009
  br label %1042

1038:                                             ; preds = %1027
  %1039 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1009, i64 %1033) #11, !srcloc !30
  %1040 = extractvalue { i64, i64 } %1039, 1
  %1041 = trunc i64 %1040 to i32
  br label %1042

1042:                                             ; preds = %1038, %1035
  %1043 = phi i32 [ %1037, %1035 ], [ %1041, %1038 ]
  %1044 = zext i32 %1043 to i64
  br label %1045

1045:                                             ; preds = %1132, %1042
  %1046 = phi i32 [ 64, %1042 ], [ %1138, %1132 ]
  %1047 = phi i32 [ 6400000, %1042 ], [ %1137, %1132 ]
  %1048 = phi i32 [ 64, %1042 ], [ %1136, %1132 ]
  %1049 = phi i32 [ 0, %1042 ], [ %1135, %1132 ]
  %1050 = phi i32 [ 0, %1042 ], [ %1134, %1132 ]
  %1051 = phi i32 [ 0, %1042 ], [ %1133, %1132 ]
  %1052 = zext i32 %1046 to i64
  %1053 = mul i64 %1029, %1052
  %1054 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %1053, i32 0) #11, !srcloc !31
  %1055 = extractvalue { i64, i32 } %1054, 0
  %1056 = extractvalue { i64, i32 } %1054, 1
  %1057 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %1053, i64 %1055, i32 %1056) #11, !srcloc !32
  %1058 = extractvalue { i64, i32 } %1057, 0
  %1059 = lshr i64 %1058, 16
  %1060 = mul i64 %1059, 100000
  %1061 = sub i64 %1053, %1060
  %1062 = icmp ult i64 %1061, 50000
  %1063 = sub i64 100000, %1061
  %1064 = select i1 %1062, i64 %1061, i64 %1063
  %1065 = icmp eq i64 %1064, 0
  br i1 %1065, label %1087, label %1066

1066:                                             ; preds = %1045
  %1067 = trunc i64 %1064 to i32
  %1068 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1067, i64 10000000000) #11, !srcloc !30
  %1069 = extractvalue { i64, i64 } %1068, 1
  %1070 = icmp ugt i64 %1069, 1500000
  br i1 %1070, label %1071, label %1073

1071:                                             ; preds = %1066
  %1072 = select i1 %1062, i32 15, i32 1
  br label %1105

1073:                                             ; preds = %1066
  %1074 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %1069, i32 0) #11, !srcloc !31
  %1075 = extractvalue { i64, i32 } %1074, 0
  %1076 = extractvalue { i64, i32 } %1074, 1
  %1077 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %1069, i64 %1075, i32 %1076) #11, !srcloc !32
  %1078 = extractvalue { i64, i32 } %1077, 0
  %1079 = lshr i64 %1078, 16
  %1080 = trunc i64 %1079 to i32
  %1081 = xor i1 %1062, true
  %1082 = zext i1 %1081 to i32
  %1083 = add i32 %1080, %1082
  %1084 = icmp eq i32 %1083, 1
  br i1 %1084, label %1105, label %1085

1085:                                             ; preds = %1073
  %1086 = icmp eq i32 %1083, 0
  br i1 %1062, label %1104, label %1088

1087:                                             ; preds = %1045
  br i1 %1062, label %1110, label %1102

1088:                                             ; preds = %1085
  br i1 %1086, label %1102, label %1089

1089:                                             ; preds = %1088
  %1090 = zext i32 %1083 to i64
  %1091 = mul i64 %1090, 9999900000
  %1092 = add i64 %1091, %1060
  %1093 = mul i32 %1083, 100000
  %1094 = icmp ult i64 %1092, 4294967296
  br i1 %1094, label %1095, label %1099, !prof !29

1095:                                             ; preds = %1089
  %1096 = trunc i64 %1092 to i32
  %1097 = udiv i32 %1096, %1093
  %1098 = zext i32 %1097 to i64
  br label %1110

1099:                                             ; preds = %1089
  %1100 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1093, i64 %1092) #11, !srcloc !30
  %1101 = extractvalue { i64, i64 } %1100, 1
  br label %1110

1102:                                             ; preds = %1088, %1087
  %1103 = add i64 %1060, 100000
  br label %1110

1104:                                             ; preds = %1085
  br i1 %1086, label %1110, label %1105

1105:                                             ; preds = %1104, %1073, %1071
  %1106 = phi i32 [ %1083, %1104 ], [ 1, %1073 ], [ %1072, %1071 ]
  %1107 = udiv i32 100000, %1106
  %1108 = zext i32 %1107 to i64
  %1109 = add i64 %1060, %1108
  br label %1110

1110:                                             ; preds = %1105, %1104, %1102, %1099, %1095, %1087
  %1111 = phi i32 [ 1, %1102 ], [ 0, %1105 ], [ 0, %1104 ], [ 1, %1095 ], [ 1, %1099 ], [ 0, %1087 ]
  %1112 = phi i32 [ 0, %1102 ], [ %1106, %1105 ], [ 0, %1104 ], [ %1083, %1095 ], [ %1083, %1099 ], [ 0, %1087 ]
  %1113 = phi i64 [ %1103, %1102 ], [ %1109, %1105 ], [ %1060, %1104 ], [ %1098, %1095 ], [ %1101, %1099 ], [ %1060, %1087 ]
  %1114 = sub i64 %1053, %1113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %1115 = call i64 @div_s64_rem(i64 noundef %1114, i32 noundef %1046, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %1116 = mul i64 %1115, %1044
  %1117 = icmp slt i64 %1116, 1
  br i1 %1117, label %1118, label %1132

1118:                                             ; preds = %1110
  %1119 = sub i64 0, %1116
  %1120 = zext i32 %1047 to i64
  %1121 = icmp slt i64 %1119, %1120
  br i1 %1121, label %1122, label %1132

1122:                                             ; preds = %1118
  %1123 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %1060, i32 0) #11, !srcloc !31
  %1124 = extractvalue { i64, i32 } %1123, 0
  %1125 = extractvalue { i64, i32 } %1123, 1
  %1126 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %1060, i64 %1124, i32 %1125) #11, !srcloc !32
  %1127 = extractvalue { i64, i32 } %1126, 0
  %1128 = lshr i64 %1127, 16
  %1129 = trunc i64 %1128 to i32
  %1130 = trunc i64 %1119 to i32
  %1131 = icmp eq i64 %1116, 0
  br i1 %1131, label %1142, label %1132

1132:                                             ; preds = %1122, %1118, %1110
  %1133 = phi i32 [ %1111, %1122 ], [ %1051, %1118 ], [ %1051, %1110 ]
  %1134 = phi i32 [ %1129, %1122 ], [ %1050, %1118 ], [ %1050, %1110 ]
  %1135 = phi i32 [ %1112, %1122 ], [ %1049, %1118 ], [ %1049, %1110 ]
  %1136 = phi i32 [ %1046, %1122 ], [ %1048, %1118 ], [ %1048, %1110 ]
  %1137 = phi i32 [ %1130, %1122 ], [ %1047, %1118 ], [ %1047, %1110 ]
  %1138 = add nsw i32 %1046, -1
  %1139 = icmp ugt i32 %1138, 31
  br i1 %1139, label %1045, label %1140

1140:                                             ; preds = %1132
  %1141 = zext i32 %1136 to i64
  br label %1145

1142:                                             ; preds = %1122
  %1143 = trunc i64 %1128 to i32
  %1144 = trunc i64 %1119 to i32
  br label %1145

1145:                                             ; preds = %1142, %1140
  %1146 = phi i64 [ %1141, %1140 ], [ %1052, %1142 ]
  %1147 = phi i32 [ %1133, %1140 ], [ %1111, %1142 ]
  %1148 = phi i32 [ %1134, %1140 ], [ %1143, %1142 ]
  %1149 = phi i32 [ %1135, %1140 ], [ %1112, %1142 ]
  %1150 = phi i32 [ %1136, %1140 ], [ %1046, %1142 ]
  %1151 = phi i32 [ %1137, %1140 ], [ %1144, %1142 ]
  %1152 = icmp eq i32 %1149, 0
  %1153 = icmp eq i32 %1147, 0
  %1154 = select i1 %1152, i32 0, i32 %1147
  %1155 = select i1 %1152, i1 %1153, i1 false
  %1156 = sext i1 %1155 to i32
  %1157 = add i32 %1148, %1156
  %1158 = select i1 %1152, i32 1, i32 %1149
  %1159 = sub i64 100000, %1029
  %1160 = mul i64 %1159, %1029
  %1161 = mul i64 %1160, %1146
  %1162 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %1161, i32 0) #11, !srcloc !31
  %1163 = extractvalue { i64, i32 } %1162, 0
  %1164 = extractvalue { i64, i32 } %1162, 1
  %1165 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %1161, i64 %1163, i32 %1164) #11, !srcloc !32
  %1166 = extractvalue { i64, i32 } %1165, 0
  %1167 = lshr i64 %1166, 16
  %1168 = zext i32 %1151 to i64
  %1169 = add nuw nsw i64 %1167, %1168
  %1170 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %1169, i32 0) #11, !srcloc !31
  %1171 = extractvalue { i64, i32 } %1170, 0
  %1172 = extractvalue { i64, i32 } %1170, 1
  %1173 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %1169, i64 %1171, i32 %1172) #11, !srcloc !32
  %1174 = extractvalue { i64, i32 } %1173, 0
  %1175 = lshr i64 %1174, 16
  %1176 = lshr i32 %1003, 3
  %1177 = trunc i64 %1175 to i32
  %1178 = add nuw nsw i32 %1176, 2
  %1179 = add i32 %1178, %1177
  %1180 = load i16, ptr %1030, align 4
  %1181 = zext i16 %1180 to i32
  %1182 = mul i32 %1003, %1181
  %1183 = load i32, ptr %1013, align 4
  %1184 = shl i32 %1183, 3
  %1185 = mul i32 %1182, %1184
  %1186 = icmp ugt i32 %1179, 30
  br i1 %1186, label %1187, label %1189

1187:                                             ; preds = %1145
  %1188 = load ptr, ptr %91, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1188, ptr noundef nonnull @.str.84, i32 noundef 30) #10
  br label %1193

1189:                                             ; preds = %1145
  %1190 = icmp ugt i32 %1179, %1185
  br i1 %1190, label %1191, label %1193

1191:                                             ; preds = %1189
  %1192 = load ptr, ptr %91, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1192, ptr noundef nonnull @.str.85, i32 noundef %1185) #10
  br label %1193

1193:                                             ; preds = %1191, %1189, %1187
  %1194 = phi i32 [ 30, %1187 ], [ %1185, %1191 ], [ %1179, %1189 ]
  %1195 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 4
  %1196 = load i16, ptr %1195, align 2
  %1197 = zext i16 %1196 to i32
  %1198 = load i16, ptr %1030, align 4
  %1199 = zext i16 %1198 to i32
  %1200 = add nsw i32 %1197, -7
  %1201 = sub nsw i32 %1200, %1199
  %1202 = sext i32 %1201 to i64
  %1203 = mul nsw i64 %1202, %1007
  %1204 = icmp ult i64 %1203, 4294967296
  br i1 %1204, label %1205, label %1208, !prof !29

1205:                                             ; preds = %1193
  %1206 = trunc i64 %1203 to i32
  %1207 = udiv i32 %1206, %1009
  br label %1212

1208:                                             ; preds = %1193
  %1209 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1009, i64 %1203) #11, !srcloc !30
  %1210 = extractvalue { i64, i64 } %1209, 1
  %1211 = trunc i64 %1210 to i32
  br label %1212

1212:                                             ; preds = %1208, %1205
  %1213 = phi i32 [ %1207, %1205 ], [ %1211, %1208 ]
  %1214 = getelementptr i8, ptr %0, i32 1112
  %1215 = load i8, ptr %1214, align 4, !range !9
  %1216 = icmp eq i8 %1215, 0
  %1217 = add i32 %1213, -3
  %1218 = select i1 %1216, i32 %1213, i32 %1217
  %1219 = load i32, ptr %1013, align 4
  %1220 = udiv i32 12, %1219
  %1221 = sub i32 %1218, %1220
  %1222 = add nsw i32 %1199, -25
  %1223 = sext i32 %1222 to i64
  %1224 = mul nsw i64 %1223, %1007
  %1225 = icmp ult i64 %1224, 4294967296
  br i1 %1225, label %1226, label %1229, !prof !29

1226:                                             ; preds = %1212
  %1227 = trunc i64 %1224 to i32
  %1228 = udiv i32 %1227, %1009
  br label %1233

1229:                                             ; preds = %1212
  %1230 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1009, i64 %1224) #11, !srcloc !30
  %1231 = extractvalue { i64, i64 } %1230, 1
  %1232 = trunc i64 %1231 to i32
  br label %1233

1233:                                             ; preds = %1229, %1226
  %1234 = phi i32 [ %1228, %1226 ], [ %1232, %1229 ]
  %1235 = udiv i32 36, %1219
  %1236 = add i32 %1234, -4
  %1237 = sub i32 %1236, %1235
  br label %1241

1238:                                             ; preds = %1020, %1012, %1000
  %1239 = phi i32 [ -34, %1020 ], [ -22, %1000 ], [ -22, %1012 ]
  %1240 = load ptr, ptr %91, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1240, ptr noundef nonnull @.str.81, i32 noundef %1239) #10
  br label %1241

1241:                                             ; preds = %1238, %1233
  %1242 = phi i32 [ 0, %1238 ], [ %1237, %1233 ]
  %1243 = phi i32 [ 0, %1238 ], [ %1221, %1233 ]
  %1244 = phi i32 [ 0, %1238 ], [ %1194, %1233 ]
  %1245 = phi i32 [ 0, %1238 ], [ %1158, %1233 ]
  %1246 = phi i32 [ 0, %1238 ], [ %1150, %1233 ]
  %1247 = phi i32 [ 0, %1238 ], [ %1157, %1233 ]
  %1248 = phi i32 [ 0, %1238 ], [ %1154, %1233 ]
  %1249 = load ptr, ptr %86, align 8
  %1250 = getelementptr i8, ptr %1249, i32 304
  %1251 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1250) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1252 = load ptr, ptr %91, align 8
  %1253 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1254 = icmp sgt i32 %1253, 0
  br i1 %1254, label %1255, label %1269

1255:                                             ; preds = %1241
  %1256 = tail call ptr @llvm.thread.pointer() #9
  %1257 = getelementptr inbounds %struct.thread_info, ptr %1256, i32 0, i32 2
  %1258 = load i32, ptr %1257, align 8
  %1259 = lshr i32 %1258, 5
  %1260 = getelementptr i32, ptr @__cpu_online_mask, i32 %1259
  %1261 = load volatile i32, ptr %1260, align 4
  %1262 = and i32 %1258, 31
  %1263 = shl nuw i32 1, %1262
  %1264 = and i32 %1263, %1261
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %1269, label %1266

1266:                                             ; preds = %1255
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1267 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1252, i32 noundef 76, i32 noundef %1251) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1268 = load ptr, ptr %91, align 8
  br label %1269

1269:                                             ; preds = %1266, %1255, %1241
  %1270 = phi ptr [ %1252, %1241 ], [ %1252, %1255 ], [ %1268, %1266 ]
  %1271 = and i32 %1251, -509
  %1272 = shl i32 %1246, 2
  %1273 = and i32 %1272, 508
  %1274 = or i32 %1271, %1273
  %1275 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1276 = icmp sgt i32 %1275, 0
  br i1 %1276, label %1277, label %1290

1277:                                             ; preds = %1269
  %1278 = tail call ptr @llvm.thread.pointer() #9
  %1279 = getelementptr inbounds %struct.thread_info, ptr %1278, i32 0, i32 2
  %1280 = load i32, ptr %1279, align 8
  %1281 = lshr i32 %1280, 5
  %1282 = getelementptr i32, ptr @__cpu_online_mask, i32 %1281
  %1283 = load volatile i32, ptr %1282, align 4
  %1284 = and i32 %1280, 31
  %1285 = shl nuw i32 1, %1284
  %1286 = and i32 %1285, %1283
  %1287 = icmp eq i32 %1286, 0
  br i1 %1287, label %1290, label %1288

1288:                                             ; preds = %1277
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1289 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1270, i32 noundef 76, i32 noundef %1274) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1290

1290:                                             ; preds = %1288, %1277, %1269
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1291 = load ptr, ptr %86, align 8
  %1292 = getelementptr i8, ptr %1291, i32 304
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1292, i32 %1274) #9, !srcloc !18
  %1293 = load ptr, ptr %86, align 8
  %1294 = getelementptr i8, ptr %1293, i32 352
  %1295 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1294) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1296 = load ptr, ptr %91, align 8
  %1297 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1298 = icmp sgt i32 %1297, 0
  br i1 %1298, label %1299, label %1313

1299:                                             ; preds = %1290
  %1300 = tail call ptr @llvm.thread.pointer() #9
  %1301 = getelementptr inbounds %struct.thread_info, ptr %1300, i32 0, i32 2
  %1302 = load i32, ptr %1301, align 8
  %1303 = lshr i32 %1302, 5
  %1304 = getelementptr i32, ptr @__cpu_online_mask, i32 %1303
  %1305 = load volatile i32, ptr %1304, align 4
  %1306 = and i32 %1302, 31
  %1307 = shl nuw i32 1, %1306
  %1308 = and i32 %1307, %1305
  %1309 = icmp eq i32 %1308, 0
  br i1 %1309, label %1313, label %1310

1310:                                             ; preds = %1299
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1311 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1296, i32 noundef 88, i32 noundef %1295) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1312 = load ptr, ptr %91, align 8
  br label %1313

1313:                                             ; preds = %1310, %1299, %1290
  %1314 = phi ptr [ %1296, %1290 ], [ %1296, %1299 ], [ %1312, %1310 ]
  %1315 = and i32 %1295, 2062581952
  %1316 = and i32 %1244, 63
  %1317 = shl i32 %1247, 8
  %1318 = and i32 %1317, 32512
  %1319 = shl i32 %1245, 16
  %1320 = and i32 %1319, 983040
  %1321 = icmp eq i32 %1248, 0
  %1322 = select i1 %1321, i32 0, i32 16777216
  %1323 = or i32 %1316, %1320
  %1324 = or i32 %1323, %1318
  %1325 = or i32 %1324, %1322
  %1326 = or i32 %1325, %1315
  %1327 = or i32 %1326, -2080374784
  %1328 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1329 = icmp sgt i32 %1328, 0
  br i1 %1329, label %1330, label %1343

1330:                                             ; preds = %1313
  %1331 = tail call ptr @llvm.thread.pointer() #9
  %1332 = getelementptr inbounds %struct.thread_info, ptr %1331, i32 0, i32 2
  %1333 = load i32, ptr %1332, align 8
  %1334 = lshr i32 %1333, 5
  %1335 = getelementptr i32, ptr @__cpu_online_mask, i32 %1334
  %1336 = load volatile i32, ptr %1335, align 4
  %1337 = and i32 %1333, 31
  %1338 = shl nuw i32 1, %1337
  %1339 = and i32 %1338, %1336
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1343, label %1341

1341:                                             ; preds = %1330
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1342 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1314, i32 noundef 88, i32 noundef %1327) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1343

1343:                                             ; preds = %1341, %1330, %1313
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1344 = load ptr, ptr %86, align 8
  %1345 = getelementptr i8, ptr %1344, i32 352
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1345, i32 %1327) #9, !srcloc !18
  %1346 = load ptr, ptr %86, align 8
  %1347 = getelementptr i8, ptr %1346, i32 396
  %1348 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1347) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1349 = load ptr, ptr %91, align 8
  %1350 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1351 = icmp sgt i32 %1350, 0
  br i1 %1351, label %1352, label %1366

1352:                                             ; preds = %1343
  %1353 = tail call ptr @llvm.thread.pointer() #9
  %1354 = getelementptr inbounds %struct.thread_info, ptr %1353, i32 0, i32 2
  %1355 = load i32, ptr %1354, align 8
  %1356 = lshr i32 %1355, 5
  %1357 = getelementptr i32, ptr @__cpu_online_mask, i32 %1356
  %1358 = load volatile i32, ptr %1357, align 4
  %1359 = and i32 %1355, 31
  %1360 = shl nuw i32 1, %1359
  %1361 = and i32 %1360, %1358
  %1362 = icmp eq i32 %1361, 0
  br i1 %1362, label %1366, label %1363

1363:                                             ; preds = %1352
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1364 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1349, i32 noundef 99, i32 noundef %1348) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1365 = load ptr, ptr %91, align 8
  br label %1366

1366:                                             ; preds = %1363, %1352, %1343
  %1367 = phi ptr [ %1349, %1343 ], [ %1349, %1352 ], [ %1365, %1363 ]
  %1368 = and i32 %1348, -131072
  %1369 = and i32 %1243, 65535
  %1370 = or i32 %1368, %1369
  %1371 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1372 = icmp sgt i32 %1371, 0
  br i1 %1372, label %1373, label %1386

1373:                                             ; preds = %1366
  %1374 = tail call ptr @llvm.thread.pointer() #9
  %1375 = getelementptr inbounds %struct.thread_info, ptr %1374, i32 0, i32 2
  %1376 = load i32, ptr %1375, align 8
  %1377 = lshr i32 %1376, 5
  %1378 = getelementptr i32, ptr @__cpu_online_mask, i32 %1377
  %1379 = load volatile i32, ptr %1378, align 4
  %1380 = and i32 %1376, 31
  %1381 = shl nuw i32 1, %1380
  %1382 = and i32 %1381, %1379
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1386, label %1384

1384:                                             ; preds = %1373
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1385 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1367, i32 noundef 99, i32 noundef %1370) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1386

1386:                                             ; preds = %1384, %1373, %1366
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1387 = load ptr, ptr %86, align 8
  %1388 = getelementptr i8, ptr %1387, i32 396
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1388, i32 %1370) #9, !srcloc !18
  %1389 = load ptr, ptr %86, align 8
  %1390 = getelementptr i8, ptr %1389, i32 400
  %1391 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1390) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1392 = load ptr, ptr %91, align 8
  %1393 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1394 = icmp sgt i32 %1393, 0
  br i1 %1394, label %1395, label %1409

1395:                                             ; preds = %1386
  %1396 = tail call ptr @llvm.thread.pointer() #9
  %1397 = getelementptr inbounds %struct.thread_info, ptr %1396, i32 0, i32 2
  %1398 = load i32, ptr %1397, align 8
  %1399 = lshr i32 %1398, 5
  %1400 = getelementptr i32, ptr @__cpu_online_mask, i32 %1399
  %1401 = load volatile i32, ptr %1400, align 4
  %1402 = and i32 %1398, 31
  %1403 = shl nuw i32 1, %1402
  %1404 = and i32 %1403, %1401
  %1405 = icmp eq i32 %1404, 0
  br i1 %1405, label %1409, label %1406

1406:                                             ; preds = %1395
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1407 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1392, i32 noundef 100, i32 noundef %1391) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1408 = load ptr, ptr %91, align 8
  br label %1409

1409:                                             ; preds = %1406, %1395, %1386
  %1410 = phi ptr [ %1392, %1386 ], [ %1392, %1395 ], [ %1408, %1406 ]
  %1411 = and i32 %1391, -2097152
  %1412 = and i32 %1242, 65535
  %1413 = or i32 %1411, %1412
  %1414 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1415 = icmp sgt i32 %1414, 0
  br i1 %1415, label %1416, label %1429

1416:                                             ; preds = %1409
  %1417 = tail call ptr @llvm.thread.pointer() #9
  %1418 = getelementptr inbounds %struct.thread_info, ptr %1417, i32 0, i32 2
  %1419 = load i32, ptr %1418, align 8
  %1420 = lshr i32 %1419, 5
  %1421 = getelementptr i32, ptr @__cpu_online_mask, i32 %1420
  %1422 = load volatile i32, ptr %1421, align 4
  %1423 = and i32 %1419, 31
  %1424 = shl nuw i32 1, %1423
  %1425 = and i32 %1424, %1422
  %1426 = icmp eq i32 %1425, 0
  br i1 %1426, label %1429, label %1427

1427:                                             ; preds = %1416
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1428 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1410, i32 noundef 100, i32 noundef %1413) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1429

1429:                                             ; preds = %1427, %1416, %1409
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1430 = load ptr, ptr %86, align 8
  %1431 = getelementptr i8, ptr %1430, i32 400
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1431, i32 %1413) #9, !srcloc !18
  call fastcc void @tegra_sor_mode_set(ptr noundef %8, ptr noundef %13, ptr noundef %10)
  %1432 = load ptr, ptr %74, align 4
  %1433 = icmp eq ptr %1432, null
  br i1 %1433, label %1571, label %1434

1434:                                             ; preds = %1429
  %1435 = load ptr, ptr %91, align 8
  %1436 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1437 = icmp sgt i32 %1436, 0
  br i1 %1437, label %1438, label %1451

1438:                                             ; preds = %1434
  %1439 = tail call ptr @llvm.thread.pointer() #9
  %1440 = getelementptr inbounds %struct.thread_info, ptr %1439, i32 0, i32 2
  %1441 = load i32, ptr %1440, align 8
  %1442 = lshr i32 %1441, 5
  %1443 = getelementptr i32, ptr @__cpu_online_mask, i32 %1442
  %1444 = load volatile i32, ptr %1443, align 4
  %1445 = and i32 %1441, 31
  %1446 = shl nuw i32 1, %1445
  %1447 = and i32 %1446, %1444
  %1448 = icmp eq i32 %1447, 0
  br i1 %1448, label %1451, label %1449

1449:                                             ; preds = %1438
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1450 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1435, i32 noundef 27, i32 noundef 116736) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1451

1451:                                             ; preds = %1449, %1438, %1434
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1452 = load ptr, ptr %86, align 8
  %1453 = getelementptr i8, ptr %1452, i32 108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1453, i32 116736) #9, !srcloc !18
  %1454 = load ptr, ptr %86, align 8
  %1455 = getelementptr i8, ptr %1454, i32 200
  %1456 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1455) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1457 = load ptr, ptr %91, align 8
  %1458 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1459 = icmp sgt i32 %1458, 0
  br i1 %1459, label %1460, label %1474

1460:                                             ; preds = %1451
  %1461 = tail call ptr @llvm.thread.pointer() #9
  %1462 = getelementptr inbounds %struct.thread_info, ptr %1461, i32 0, i32 2
  %1463 = load i32, ptr %1462, align 8
  %1464 = lshr i32 %1463, 5
  %1465 = getelementptr i32, ptr @__cpu_online_mask, i32 %1464
  %1466 = load volatile i32, ptr %1465, align 4
  %1467 = and i32 %1463, 31
  %1468 = shl nuw i32 1, %1467
  %1469 = and i32 %1468, %1466
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %1474, label %1471

1471:                                             ; preds = %1460
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1472 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1457, i32 noundef 50, i32 noundef %1456) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1473 = load ptr, ptr %91, align 8
  br label %1474

1474:                                             ; preds = %1471, %1460, %1451
  %1475 = phi ptr [ %1457, %1451 ], [ %1457, %1460 ], [ %1473, %1471 ]
  %1476 = and i32 %1456, -16777216
  %1477 = or i32 %1476, 1024
  %1478 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1479 = icmp sgt i32 %1478, 0
  br i1 %1479, label %1480, label %1493

1480:                                             ; preds = %1474
  %1481 = tail call ptr @llvm.thread.pointer() #9
  %1482 = getelementptr inbounds %struct.thread_info, ptr %1481, i32 0, i32 2
  %1483 = load i32, ptr %1482, align 8
  %1484 = lshr i32 %1483, 5
  %1485 = getelementptr i32, ptr @__cpu_online_mask, i32 %1484
  %1486 = load volatile i32, ptr %1485, align 4
  %1487 = and i32 %1483, 31
  %1488 = shl nuw i32 1, %1487
  %1489 = and i32 %1488, %1486
  %1490 = icmp eq i32 %1489, 0
  br i1 %1490, label %1493, label %1491

1491:                                             ; preds = %1480
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1492 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1475, i32 noundef 50, i32 noundef %1477) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1493

1493:                                             ; preds = %1491, %1480, %1474
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1494 = load ptr, ptr %86, align 8
  %1495 = getelementptr i8, ptr %1494, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1495, i32 %1477) #9, !srcloc !18
  %1496 = load ptr, ptr %86, align 8
  %1497 = getelementptr i8, ptr %1496, i32 204
  %1498 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1497) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1499 = load ptr, ptr %91, align 8
  %1500 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1501 = icmp sgt i32 %1500, 0
  br i1 %1501, label %1502, label %1516

1502:                                             ; preds = %1493
  %1503 = tail call ptr @llvm.thread.pointer() #9
  %1504 = getelementptr inbounds %struct.thread_info, ptr %1503, i32 0, i32 2
  %1505 = load i32, ptr %1504, align 8
  %1506 = lshr i32 %1505, 5
  %1507 = getelementptr i32, ptr @__cpu_online_mask, i32 %1506
  %1508 = load volatile i32, ptr %1507, align 4
  %1509 = and i32 %1505, 31
  %1510 = shl nuw i32 1, %1509
  %1511 = and i32 %1510, %1508
  %1512 = icmp eq i32 %1511, 0
  br i1 %1512, label %1516, label %1513

1513:                                             ; preds = %1502
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1514 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1499, i32 noundef 51, i32 noundef %1498) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %1515 = load ptr, ptr %91, align 8
  br label %1516

1516:                                             ; preds = %1513, %1502, %1493
  %1517 = phi ptr [ %1499, %1493 ], [ %1499, %1502 ], [ %1515, %1513 ]
  %1518 = and i32 %1498, 1056964608
  %1519 = or i32 %1518, -2147482624
  %1520 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %1521 = icmp sgt i32 %1520, 0
  br i1 %1521, label %1522, label %1535

1522:                                             ; preds = %1516
  %1523 = tail call ptr @llvm.thread.pointer() #9
  %1524 = getelementptr inbounds %struct.thread_info, ptr %1523, i32 0, i32 2
  %1525 = load i32, ptr %1524, align 8
  %1526 = lshr i32 %1525, 5
  %1527 = getelementptr i32, ptr @__cpu_online_mask, i32 %1526
  %1528 = load volatile i32, ptr %1527, align 4
  %1529 = and i32 %1525, 31
  %1530 = shl nuw i32 1, %1529
  %1531 = and i32 %1530, %1528
  %1532 = icmp eq i32 %1531, 0
  br i1 %1532, label %1535, label %1533

1533:                                             ; preds = %1522
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %1534 = call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %1517, i32 noundef 51, i32 noundef %1519) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %1535

1535:                                             ; preds = %1533, %1522, %1516
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1536 = load ptr, ptr %86, align 8
  %1537 = getelementptr i8, ptr %1536, i32 204
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1537, i32 %1519) #9, !srcloc !18
  %1538 = load volatile i32, ptr @jiffies, align 64
  %1539 = sub i32 -25, %1538
  %1540 = load volatile i32, ptr @jiffies, align 64
  %1541 = add i32 %1539, %1540
  %1542 = icmp slt i32 %1541, 0
  br i1 %1542, label %1543, label %1569

1543:                                             ; preds = %1565, %1535
  %1544 = load ptr, ptr %86, align 8
  %1545 = getelementptr i8, ptr %1544, i32 204
  %1546 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1545) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %1547 = load ptr, ptr %91, align 8
  %1548 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %1549 = icmp sgt i32 %1548, 0
  br i1 %1549, label %1550, label %1563

1550:                                             ; preds = %1543
  %1551 = tail call ptr @llvm.thread.pointer() #9
  %1552 = getelementptr inbounds %struct.thread_info, ptr %1551, i32 0, i32 2
  %1553 = load i32, ptr %1552, align 8
  %1554 = lshr i32 %1553, 5
  %1555 = getelementptr i32, ptr @__cpu_online_mask, i32 %1554
  %1556 = load volatile i32, ptr %1555, align 4
  %1557 = and i32 %1553, 31
  %1558 = shl nuw i32 1, %1557
  %1559 = and i32 %1558, %1556
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1563, label %1561

1561:                                             ; preds = %1550
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1562 = call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %1547, i32 noundef 51, i32 noundef %1546) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1563

1563:                                             ; preds = %1561, %1550, %1543
  %1564 = icmp sgt i32 %1546, -1
  br i1 %1564, label %1571, label %1565

1565:                                             ; preds = %1563
  call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #9
  %1566 = load volatile i32, ptr @jiffies, align 64
  %1567 = add i32 %1566, %1539
  %1568 = icmp slt i32 %1567, 0
  br i1 %1568, label %1543, label %1569

1569:                                             ; preds = %1565, %1535
  %1570 = load ptr, ptr %91, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1570, ptr noundef nonnull @.str.82, i32 noundef -110) #10
  br label %1571

1571:                                             ; preds = %1569, %1563, %1429
  call fastcc void @tegra_sor_update(ptr noundef %8)
  %1572 = call fastcc i32 @tegra_sor_power_up(ptr noundef %8)
  %1573 = icmp slt i32 %1572, 0
  br i1 %1573, label %1574, label %1576

1574:                                             ; preds = %1571
  %1575 = load ptr, ptr %91, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1575, ptr noundef nonnull @.str.67, i32 noundef %1572) #10
  br label %1576

1576:                                             ; preds = %1574, %1571
  %1577 = call fastcc i32 @tegra_sor_attach(ptr noundef %8)
  %1578 = icmp slt i32 %1577, 0
  br i1 %1578, label %1579, label %1581

1579:                                             ; preds = %1576
  %1580 = load ptr, ptr %91, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1580, ptr noundef nonnull @.str.68, i32 noundef %1577) #10
  br label %1581

1581:                                             ; preds = %1579, %1576
  %1582 = getelementptr inbounds %struct.tegra_dc, ptr %7, i32 0, i32 8
  %1583 = load ptr, ptr %1582, align 8
  %1584 = getelementptr i8, ptr %1583, i32 4104
  %1585 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1584) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %1586 = getelementptr inbounds %struct.tegra_dc, ptr %7, i32 0, i32 2
  %1587 = load ptr, ptr %1586, align 4
  %1588 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %1589 = icmp sgt i32 %1588, 0
  br i1 %1589, label %1590, label %1604

1590:                                             ; preds = %1581
  %1591 = tail call ptr @llvm.thread.pointer() #9
  %1592 = getelementptr inbounds %struct.thread_info, ptr %1591, i32 0, i32 2
  %1593 = load i32, ptr %1592, align 8
  %1594 = lshr i32 %1593, 5
  %1595 = getelementptr i32, ptr @__cpu_online_mask, i32 %1594
  %1596 = load volatile i32, ptr %1595, align 4
  %1597 = and i32 %1593, 31
  %1598 = shl nuw i32 1, %1597
  %1599 = and i32 %1598, %1596
  %1600 = icmp eq i32 %1599, 0
  br i1 %1600, label %1604, label %1601

1601:                                             ; preds = %1590
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %1602 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %1587, i32 noundef 1026, i32 noundef %1585) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %1603 = load ptr, ptr %1586, align 4
  br label %1604

1604:                                             ; preds = %1601, %1590, %1581
  %1605 = phi ptr [ %1587, %1581 ], [ %1587, %1590 ], [ %1603, %1601 ]
  %1606 = getelementptr i8, ptr %0, i32 1056
  %1607 = load i32, ptr %1606, align 4
  %1608 = icmp ugt i32 %1607, 1
  %1609 = zext i1 %1608 to i32
  %1610 = add i32 %1607, 25
  %1611 = add i32 %1610, %1609
  %1612 = shl nuw i32 1, %1611
  %1613 = or i32 %1612, %1585
  %1614 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1615 = icmp sgt i32 %1614, 0
  br i1 %1615, label %1616, label %1629

1616:                                             ; preds = %1604
  %1617 = tail call ptr @llvm.thread.pointer() #9
  %1618 = getelementptr inbounds %struct.thread_info, ptr %1617, i32 0, i32 2
  %1619 = load i32, ptr %1618, align 8
  %1620 = lshr i32 %1619, 5
  %1621 = getelementptr i32, ptr @__cpu_online_mask, i32 %1620
  %1622 = load volatile i32, ptr %1621, align 4
  %1623 = and i32 %1619, 31
  %1624 = shl nuw i32 1, %1623
  %1625 = and i32 %1624, %1622
  %1626 = icmp eq i32 %1625, 0
  br i1 %1626, label %1629, label %1627

1627:                                             ; preds = %1616
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %1628 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1605, i32 noundef 1026, i32 noundef %1613) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %1629

1629:                                             ; preds = %1627, %1616, %1604
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  call void @arm_heavy_mb() #9
  %1630 = load ptr, ptr %1582, align 8
  %1631 = getelementptr i8, ptr %1630, i32 4104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1631, i32 %1613) #9, !srcloc !18
  call void @tegra_dc_commit(ptr noundef %7) #9
  %1632 = call fastcc i32 @tegra_sor_wakeup(ptr noundef %8)
  %1633 = icmp slt i32 %1632, 0
  br i1 %1633, label %1634, label %1636

1634:                                             ; preds = %1629
  %1635 = load ptr, ptr %91, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1635, ptr noundef nonnull @.str.69, i32 noundef %1632) #10
  br label %1636

1636:                                             ; preds = %1634, %1629
  %1637 = load ptr, ptr %74, align 4
  %1638 = icmp eq ptr %1637, null
  br i1 %1638, label %1641, label %1639

1639:                                             ; preds = %1636
  %1640 = call i32 @drm_panel_enable(ptr noundef nonnull %1637) #9
  br label %1641

1641:                                             ; preds = %1639, %1636, %595, %586, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_link_power_down(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_link_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_link_choose(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_link_train(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_link_power_up(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_link_update_rates(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_dp_link_apply_training(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -52
  %3 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %80, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 12
  %9 = getelementptr inbounds %struct.tegra_sor_soc, ptr %7, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_sor_soc, ptr %7, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_sor_soc, ptr %7, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tegra_sor_soc, ptr %7, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tegra_sor_soc, ptr %7, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 12, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %224

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 3, i32 3
  %24 = load i8, ptr %23, align 1, !range !9
  %25 = icmp eq i8 %24, 0
  %26 = icmp ult i32 %20, 3
  %27 = getelementptr inbounds [3 x i32], ptr @switch.table.tegra_sor_dp_link_apply_training, i32 0, i32 %20
  br label %28

28:                                               ; preds = %69, %22
  %29 = phi i32 [ 0, %22 ], [ %75, %69 ]
  %30 = phi i32 [ 0, %22 ], [ %66, %69 ]
  %31 = phi i32 [ 0, %22 ], [ %74, %69 ]
  %32 = phi i32 [ 0, %22 ], [ %62, %69 ]
  %33 = phi i32 [ 0, %22 ], [ %57, %69 ]
  %34 = phi i32 [ 0, %22 ], [ %52, %69 ]
  %35 = getelementptr [4 x i32], ptr %8, i32 0, i32 %29
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 12, i32 0, i32 1, i32 %29
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 12, i32 0, i32 2, i32 %29
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i8, ptr %10, i32 %29
  %42 = load i8, ptr %41, align 1
  %43 = shl i8 %42, 3
  %44 = and i32 %40, 255
  %45 = and i32 %36, 255
  %46 = and i32 %38, 255
  %47 = getelementptr [4 x [4 x i8]], ptr %12, i32 %44, i32 %45, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = zext i8 %43 to i32
  %51 = shl i32 %49, %50
  %52 = or i32 %51, %34
  %53 = getelementptr [4 x [4 x i8]], ptr %14, i32 %44, i32 %45, i32 %46
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, %50
  %57 = or i32 %56, %33
  %58 = getelementptr [4 x [4 x i8]], ptr %16, i32 %44, i32 %45, i32 %46
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, %50
  %62 = or i32 %61, %32
  %63 = getelementptr [4 x [4 x i8]], ptr %18, i32 %44, i32 %45, i32 %46
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = tail call i32 @llvm.umax.i32(i32 %30, i32 %65)
  br i1 %26, label %67, label %69

67:                                               ; preds = %28
  %68 = load i32, ptr %27, align 4
  br label %69

69:                                               ; preds = %67, %28
  %70 = phi i32 [ %68, %67 ], [ 3, %28 ]
  %71 = or i32 %70, 64
  %72 = select i1 %25, i32 %70, i32 %71
  %73 = shl i32 %31, 8
  %74 = or i32 %72, %73
  %75 = add nuw i32 %29, 1
  %76 = icmp eq i32 %75, %4
  br i1 %76, label %77, label %28

77:                                               ; preds = %69
  %78 = shl i32 %66, 8
  %79 = and i32 %78, 65280
  br label %80

80:                                               ; preds = %77, %1
  %81 = phi i32 [ 0, %1 ], [ %52, %77 ]
  %82 = phi i32 [ 0, %1 ], [ %57, %77 ]
  %83 = phi i32 [ 0, %1 ], [ %62, %77 ]
  %84 = phi i32 [ 0, %1 ], [ %74, %77 ]
  %85 = phi i32 [ 0, %1 ], [ %79, %77 ]
  %86 = getelementptr i8, ptr %0, i32 -56
  %87 = load ptr, ptr %86, align 8
  %88 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %80
  %91 = tail call ptr @llvm.thread.pointer() #9
  %92 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %93 = load i32, ptr %92, align 8
  %94 = lshr i32 %93, 5
  %95 = getelementptr i32, ptr @__cpu_online_mask, i32 %94
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %93, 31
  %98 = shl nuw i32 1, %97
  %99 = and i32 %98, %96
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %90
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %102 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %87, i32 noundef 78, i32 noundef %81) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %103

103:                                              ; preds = %101, %90, %80
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %104 = getelementptr i8, ptr %0, i32 -48
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr i8, ptr %105, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %81) #9, !srcloc !18
  %107 = load ptr, ptr %86, align 8
  %108 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %103
  %111 = tail call ptr @llvm.thread.pointer() #9
  %112 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 2
  %113 = load i32, ptr %112, align 8
  %114 = lshr i32 %113, 5
  %115 = getelementptr i32, ptr @__cpu_online_mask, i32 %114
  %116 = load volatile i32, ptr %115, align 4
  %117 = and i32 %113, 31
  %118 = shl nuw i32 1, %117
  %119 = and i32 %118, %116
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %110
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %122 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %107, i32 noundef 82, i32 noundef %82) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %123

123:                                              ; preds = %121, %110, %103
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %124 = load ptr, ptr %104, align 8
  %125 = getelementptr i8, ptr %124, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %82) #9, !srcloc !18
  %126 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 3, i32 1
  %127 = load i8, ptr %126, align 1, !range !9
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %149, label %129

129:                                              ; preds = %123
  %130 = load ptr, ptr %86, align 8
  %131 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = tail call ptr @llvm.thread.pointer() #9
  %135 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 2
  %136 = load i32, ptr %135, align 8
  %137 = lshr i32 %136, 5
  %138 = getelementptr i32, ptr @__cpu_online_mask, i32 %137
  %139 = load volatile i32, ptr %138, align 4
  %140 = and i32 %136, 31
  %141 = shl nuw i32 1, %140
  %142 = and i32 %141, %139
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %133
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %145 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %130, i32 noundef 86, i32 noundef %83) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %146

146:                                              ; preds = %144, %133, %129
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %147 = load ptr, ptr %104, align 8
  %148 = getelementptr i8, ptr %147, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %83) #9, !srcloc !18
  br label %149

149:                                              ; preds = %146, %123
  %150 = load ptr, ptr %86, align 8
  %151 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %149
  %154 = tail call ptr @llvm.thread.pointer() #9
  %155 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 2
  %156 = load i32, ptr %155, align 8
  %157 = lshr i32 %156, 5
  %158 = getelementptr i32, ptr @__cpu_online_mask, i32 %157
  %159 = load volatile i32, ptr %158, align 4
  %160 = and i32 %156, 31
  %161 = shl nuw i32 1, %160
  %162 = and i32 %161, %159
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %153
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %165 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %150, i32 noundef 109, i32 noundef %84) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %166

166:                                              ; preds = %164, %153, %149
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %167 = load ptr, ptr %104, align 8
  %168 = getelementptr i8, ptr %167, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %84) #9, !srcloc !18
  %169 = load ptr, ptr %2, align 4
  %170 = getelementptr inbounds %struct.tegra_sor_soc, ptr %169, i32 0, i32 5
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.tegra_sor_regs, ptr %171, i32 0, i32 10
  %173 = load i32, ptr %172, align 4
  %174 = load ptr, ptr %104, align 8
  %175 = shl i32 %173, 2
  %176 = getelementptr i8, ptr %174, i32 %175
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %176) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %178 = load ptr, ptr %86, align 8
  %179 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %166
  %182 = tail call ptr @llvm.thread.pointer() #9
  %183 = getelementptr inbounds %struct.thread_info, ptr %182, i32 0, i32 2
  %184 = load i32, ptr %183, align 8
  %185 = lshr i32 %184, 5
  %186 = getelementptr i32, ptr @__cpu_online_mask, i32 %185
  %187 = load volatile i32, ptr %186, align 4
  %188 = and i32 %184, 31
  %189 = shl nuw i32 1, %188
  %190 = and i32 %189, %187
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %181
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %193 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %178, i32 noundef %173, i32 noundef %177) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %194 = load ptr, ptr %86, align 8
  br label %195

195:                                              ; preds = %192, %181, %166
  %196 = phi ptr [ %178, %166 ], [ %178, %181 ], [ %194, %192 ]
  %197 = and i32 %177, -4259585
  %198 = or i32 %85, %197
  %199 = or i32 %198, 4194304
  %200 = load ptr, ptr %2, align 4
  %201 = getelementptr inbounds %struct.tegra_sor_soc, ptr %200, i32 0, i32 5
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.tegra_sor_regs, ptr %202, i32 0, i32 10
  %204 = load i32, ptr %203, align 4
  %205 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %195
  %208 = tail call ptr @llvm.thread.pointer() #9
  %209 = getelementptr inbounds %struct.thread_info, ptr %208, i32 0, i32 2
  %210 = load i32, ptr %209, align 8
  %211 = lshr i32 %210, 5
  %212 = getelementptr i32, ptr @__cpu_online_mask, i32 %211
  %213 = load volatile i32, ptr %212, align 4
  %214 = and i32 %210, 31
  %215 = shl nuw i32 1, %214
  %216 = and i32 %215, %213
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %207
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %219 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %196, i32 noundef %204, i32 noundef %199) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %220

220:                                              ; preds = %218, %207, %195
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %221 = load ptr, ptr %104, align 8
  %222 = shl i32 %204, 2
  %223 = getelementptr i8, ptr %221, i32 %222
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 %199) #9, !srcloc !18
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #9
  br label %224

224:                                              ; preds = %220, %6
  %225 = phi i32 [ 0, %220 ], [ -22, %6 ]
  ret i32 %225
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_dp_link_configure(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %3) #9
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -48
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 76
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %12 = getelementptr i8, ptr %0, i32 -56
  %13 = load ptr, ptr %12, align 8
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = tail call ptr @llvm.thread.pointer() #9
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %28 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %13, i32 noundef 19, i32 noundef %11) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %29 = load ptr, ptr %12, align 8
  br label %30

30:                                               ; preds = %27, %16, %1
  %31 = phi ptr [ %13, %1 ], [ %13, %16 ], [ %29, %27 ]
  %32 = and i32 %11, -125
  %33 = shl nuw nsw i32 %5, 2
  %34 = and i32 %33, 124
  %35 = or i32 %32, %34
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = tail call ptr @llvm.thread.pointer() #9
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %50 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %31, i32 noundef 19, i32 noundef %35) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %51

51:                                               ; preds = %49, %38, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %52 = load ptr, ptr %8, align 8
  %53 = getelementptr i8, ptr %52, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %35) #9, !srcloc !18
  %54 = load ptr, ptr %8, align 8
  %55 = getelementptr i8, ptr %54, i32 304
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %57 = load ptr, ptr %12, align 8
  %58 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %51
  %61 = tail call ptr @llvm.thread.pointer() #9
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 5
  %65 = getelementptr i32, ptr @__cpu_online_mask, i32 %64
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %63, 31
  %68 = shl nuw i32 1, %67
  %69 = and i32 %68, %66
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %60
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %72 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %57, i32 noundef 76, i32 noundef %56) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %73 = load ptr, ptr %12, align 8
  br label %74

74:                                               ; preds = %71, %60, %51
  %75 = phi ptr [ %57, %51 ], [ %57, %60 ], [ %73, %71 ]
  %76 = and i32 %56, -2031617
  %77 = shl nsw i32 -1, %7
  %78 = xor i32 %77, -1
  %79 = shl i32 %78, 16
  %80 = or i32 %76, %79
  %81 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 3
  %82 = load i8, ptr %81, align 4, !range !9
  %83 = icmp eq i8 %82, 0
  %84 = or i32 %80, 16384
  %85 = select i1 %83, i32 %80, i32 %84
  %86 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %74
  %89 = tail call ptr @llvm.thread.pointer() #9
  %90 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %91 = load i32, ptr %90, align 8
  %92 = lshr i32 %91, 5
  %93 = getelementptr i32, ptr @__cpu_online_mask, i32 %92
  %94 = load volatile i32, ptr %93, align 4
  %95 = and i32 %91, 31
  %96 = shl nuw i32 1, %95
  %97 = and i32 %96, %94
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %88
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %100 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %75, i32 noundef 76, i32 noundef %85) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %101

101:                                              ; preds = %99, %88, %74
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %102 = load ptr, ptr %8, align 8
  %103 = getelementptr i8, ptr %102, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %85) #9, !srcloc !18
  tail call void @usleep_range_state(i32 noundef 400, i32 noundef 1000, i32 noundef 2) #9
  %104 = getelementptr i8, ptr %0, i32 -52
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.tegra_sor_soc, ptr %105, i32 0, i32 5
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.tegra_sor_regs, ptr %107, i32 0, i32 7
  %109 = load i32, ptr %108, align 4
  %110 = load ptr, ptr %8, align 8
  %111 = shl i32 %109, 2
  %112 = getelementptr i8, ptr %110, i32 %111
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %114 = load ptr, ptr %12, align 8
  %115 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %101
  %118 = tail call ptr @llvm.thread.pointer() #9
  %119 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %120 = load i32, ptr %119, align 8
  %121 = lshr i32 %120, 5
  %122 = getelementptr i32, ptr @__cpu_online_mask, i32 %121
  %123 = load volatile i32, ptr %122, align 4
  %124 = and i32 %120, 31
  %125 = shl nuw i32 1, %124
  %126 = and i32 %125, %123
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %117
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %129 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %114, i32 noundef %109, i32 noundef %113) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %130

130:                                              ; preds = %128, %117, %101
  %131 = and i32 %113, -15728641
  switch i8 %4, label %138 [
    i8 6, label %132
    i8 10, label %134
    i8 20, label %136
  ]

132:                                              ; preds = %130
  %133 = or i32 %131, 3145728
  br label %138

134:                                              ; preds = %130
  %135 = or i32 %131, 4194304
  br label %138

136:                                              ; preds = %130
  %137 = or i32 %131, 6291456
  br label %138

138:                                              ; preds = %136, %134, %132, %130
  %139 = phi i32 [ %131, %130 ], [ %137, %136 ], [ %135, %134 ], [ %133, %132 ]
  %140 = load ptr, ptr %104, align 4
  %141 = getelementptr inbounds %struct.tegra_sor_soc, ptr %140, i32 0, i32 5
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.tegra_sor_regs, ptr %142, i32 0, i32 7
  %144 = load i32, ptr %143, align 4
  %145 = load ptr, ptr %12, align 8
  %146 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %138
  %149 = tail call ptr @llvm.thread.pointer() #9
  %150 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 2
  %151 = load i32, ptr %150, align 8
  %152 = lshr i32 %151, 5
  %153 = getelementptr i32, ptr @__cpu_online_mask, i32 %152
  %154 = load volatile i32, ptr %153, align 4
  %155 = and i32 %151, 31
  %156 = shl nuw i32 1, %155
  %157 = and i32 %156, %154
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %148
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %160 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %145, i32 noundef %144, i32 noundef %139) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %161

161:                                              ; preds = %159, %148, %138
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %162 = load ptr, ptr %8, align 8
  %163 = shl i32 %144, 2
  %164 = getelementptr i8, ptr %162, i32 %163
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 %139) #9, !srcloc !18
  %165 = load ptr, ptr %8, align 8
  %166 = getelementptr i8, ptr %165, i32 384
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %168 = load ptr, ptr %12, align 8
  %169 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %161
  %172 = tail call ptr @llvm.thread.pointer() #9
  %173 = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 2
  %174 = load i32, ptr %173, align 8
  %175 = lshr i32 %174, 5
  %176 = getelementptr i32, ptr @__cpu_online_mask, i32 %175
  %177 = load volatile i32, ptr %176, align 4
  %178 = and i32 %174, 31
  %179 = shl nuw i32 1, %178
  %180 = and i32 %179, %177
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %171
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %183 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %168, i32 noundef 96, i32 noundef %167) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %184 = load ptr, ptr %12, align 8
  br label %185

185:                                              ; preds = %182, %171, %161
  %186 = phi ptr [ %168, %161 ], [ %168, %171 ], [ %184, %182 ]
  %187 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 5
  %188 = load i8, ptr %187, align 4
  %189 = icmp eq i8 %188, 0
  %190 = and i32 %167, -3
  %191 = select i1 %189, i32 0, i32 2
  %192 = or i32 %191, %190
  %193 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %208

195:                                              ; preds = %185
  %196 = tail call ptr @llvm.thread.pointer() #9
  %197 = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 2
  %198 = load i32, ptr %197, align 8
  %199 = lshr i32 %198, 5
  %200 = getelementptr i32, ptr @__cpu_online_mask, i32 %199
  %201 = load volatile i32, ptr %200, align 4
  %202 = and i32 %198, 31
  %203 = shl nuw i32 1, %202
  %204 = and i32 %203, %201
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %195
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %207 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %186, i32 noundef 96, i32 noundef %192) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %208

208:                                              ; preds = %206, %195, %185
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %209 = load ptr, ptr %8, align 8
  %210 = getelementptr i8, ptr %209, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %192) #9, !srcloc !18
  %211 = load ptr, ptr %104, align 4
  %212 = getelementptr inbounds %struct.tegra_sor_soc, ptr %211, i32 0, i32 5
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.tegra_sor_regs, ptr %213, i32 0, i32 10
  %215 = load i32, ptr %214, align 4
  %216 = load ptr, ptr %8, align 8
  %217 = shl i32 %215, 2
  %218 = getelementptr i8, ptr %216, i32 %217
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %220 = load ptr, ptr %12, align 8
  %221 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %237

223:                                              ; preds = %208
  %224 = tail call ptr @llvm.thread.pointer() #9
  %225 = getelementptr inbounds %struct.thread_info, ptr %224, i32 0, i32 2
  %226 = load i32, ptr %225, align 8
  %227 = lshr i32 %226, 5
  %228 = getelementptr i32, ptr @__cpu_online_mask, i32 %227
  %229 = load volatile i32, ptr %228, align 4
  %230 = and i32 %226, 31
  %231 = shl nuw i32 1, %230
  %232 = and i32 %231, %229
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %223
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %235 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %220, i32 noundef %215, i32 noundef %219) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %236 = load ptr, ptr %12, align 8
  br label %237

237:                                              ; preds = %234, %223, %208
  %238 = phi ptr [ %220, %208 ], [ %220, %223 ], [ %236, %234 ]
  %239 = and i32 %219, -16
  %240 = load ptr, ptr %104, align 4
  %241 = getelementptr inbounds %struct.tegra_sor_soc, ptr %240, i32 0, i32 5
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr inbounds %struct.tegra_sor_regs, ptr %242, i32 0, i32 10
  %244 = load i32, ptr %243, align 4
  %245 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %260

247:                                              ; preds = %237
  %248 = tail call ptr @llvm.thread.pointer() #9
  %249 = getelementptr inbounds %struct.thread_info, ptr %248, i32 0, i32 2
  %250 = load i32, ptr %249, align 8
  %251 = lshr i32 %250, 5
  %252 = getelementptr i32, ptr @__cpu_online_mask, i32 %251
  %253 = load volatile i32, ptr %252, align 4
  %254 = and i32 %250, 31
  %255 = shl nuw i32 1, %254
  %256 = and i32 %255, %253
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %247
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %259 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %238, i32 noundef %244, i32 noundef %239) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %260

260:                                              ; preds = %258, %247, %237
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %261 = load ptr, ptr %8, align 8
  %262 = shl i32 %244, 2
  %263 = getelementptr i8, ptr %261, i32 %262
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 %239) #9, !srcloc !18
  %264 = load ptr, ptr %12, align 8
  %265 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %280

267:                                              ; preds = %260
  %268 = tail call ptr @llvm.thread.pointer() #9
  %269 = getelementptr inbounds %struct.thread_info, ptr %268, i32 0, i32 2
  %270 = load i32, ptr %269, align 8
  %271 = lshr i32 %270, 5
  %272 = getelementptr i32, ptr @__cpu_online_mask, i32 %271
  %273 = load volatile i32, ptr %272, align 4
  %274 = and i32 %270, 31
  %275 = shl nuw i32 1, %274
  %276 = and i32 %275, %273
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %267
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %279 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %264, i32 noundef 33, i32 noundef -2147418112) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %280

280:                                              ; preds = %278, %267, %260
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %281 = load ptr, ptr %8, align 8
  %282 = getelementptr i8, ptr %281, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 -2147418112) #9, !srcloc !18
  %283 = load volatile i32, ptr @jiffies, align 64
  %284 = sub i32 -25, %283
  %285 = load volatile i32, ptr @jiffies, align 64
  %286 = add i32 %284, %285
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %314

288:                                              ; preds = %310, %280
  %289 = load ptr, ptr %8, align 8
  %290 = getelementptr i8, ptr %289, i32 132
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %290) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %292 = load ptr, ptr %12, align 8
  %293 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %294 = icmp sgt i32 %293, 0
  br i1 %294, label %295, label %308

295:                                              ; preds = %288
  %296 = tail call ptr @llvm.thread.pointer() #9
  %297 = getelementptr inbounds %struct.thread_info, ptr %296, i32 0, i32 2
  %298 = load i32, ptr %297, align 8
  %299 = lshr i32 %298, 5
  %300 = getelementptr i32, ptr @__cpu_online_mask, i32 %299
  %301 = load volatile i32, ptr %300, align 4
  %302 = and i32 %298, 31
  %303 = shl nuw i32 1, %302
  %304 = and i32 %303, %301
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %295
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %307 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %292, i32 noundef 33, i32 noundef %291) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %308

308:                                              ; preds = %306, %295, %288
  %309 = icmp sgt i32 %291, -1
  br i1 %309, label %316, label %310

310:                                              ; preds = %308
  tail call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #9
  %311 = load volatile i32, ptr @jiffies, align 64
  %312 = add i32 %311, %284
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %288, label %314

314:                                              ; preds = %310, %280
  %315 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %315, ptr noundef nonnull @.str.86, i32 noundef -110) #10
  br label %620

316:                                              ; preds = %308
  %317 = load ptr, ptr %104, align 4
  %318 = getelementptr inbounds %struct.tegra_sor_soc, ptr %317, i32 0, i32 5
  %319 = load ptr, ptr %318, align 4
  %320 = getelementptr inbounds %struct.tegra_sor_regs, ptr %319, i32 0, i32 10
  %321 = load i32, ptr %320, align 4
  %322 = load ptr, ptr %8, align 8
  %323 = shl i32 %321, 2
  %324 = getelementptr i8, ptr %322, i32 %323
  %325 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %324) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %326 = load ptr, ptr %12, align 8
  %327 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %328 = icmp sgt i32 %327, 0
  br i1 %328, label %329, label %342

329:                                              ; preds = %316
  %330 = tail call ptr @llvm.thread.pointer() #9
  %331 = getelementptr inbounds %struct.thread_info, ptr %330, i32 0, i32 2
  %332 = load i32, ptr %331, align 8
  %333 = lshr i32 %332, 5
  %334 = getelementptr i32, ptr @__cpu_online_mask, i32 %333
  %335 = load volatile i32, ptr %334, align 4
  %336 = and i32 %332, 31
  %337 = shl nuw i32 1, %336
  %338 = and i32 %337, %335
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %342, label %340

340:                                              ; preds = %329
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %341 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %326, i32 noundef %321, i32 noundef %325) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %342

342:                                              ; preds = %340, %329, %316
  %343 = icmp ult i32 %7, 3
  %344 = load ptr, ptr %104, align 4
  %345 = getelementptr inbounds %struct.tegra_sor_soc, ptr %344, i32 0, i32 10
  %346 = load ptr, ptr %345, align 4
  %347 = getelementptr i8, ptr %346, i32 3
  %348 = load i8, ptr %347, align 1
  %349 = zext i8 %348 to i32
  %350 = shl nuw i32 1, %349
  %351 = getelementptr i8, ptr %346, i32 2
  %352 = load i8, ptr %351, align 1
  %353 = zext i8 %352 to i32
  %354 = shl nuw i32 1, %353
  %355 = or i32 %354, %350
  br i1 %343, label %358, label %356

356:                                              ; preds = %342
  %357 = or i32 %355, %325
  br label %362

358:                                              ; preds = %342
  %359 = xor i32 %355, -1
  %360 = and i32 %325, %359
  %361 = icmp eq i32 %7, 2
  br i1 %361, label %362, label %369

362:                                              ; preds = %358, %356
  %363 = phi i32 [ %357, %356 ], [ %360, %358 ]
  %364 = getelementptr i8, ptr %346, i32 1
  %365 = load i8, ptr %364, align 1
  %366 = zext i8 %365 to i32
  %367 = shl nuw i32 1, %366
  %368 = or i32 %367, %363
  br label %383

369:                                              ; preds = %358
  %370 = getelementptr i8, ptr %346, i32 1
  %371 = load i8, ptr %370, align 1
  %372 = zext i8 %371 to i32
  %373 = shl nuw i32 1, %372
  %374 = xor i32 %373, -1
  %375 = and i32 %360, %374
  %376 = icmp eq i32 %7, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %369
  %378 = load i8, ptr %346, align 1
  %379 = zext i8 %378 to i32
  %380 = shl nuw i32 1, %379
  %381 = xor i32 %380, -1
  %382 = and i32 %375, %381
  br label %389

383:                                              ; preds = %369, %362
  %384 = phi i32 [ %368, %362 ], [ %375, %369 ]
  %385 = load i8, ptr %346, align 1
  %386 = zext i8 %385 to i32
  %387 = shl nuw i32 1, %386
  %388 = or i32 %387, %384
  br label %389

389:                                              ; preds = %383, %377
  %390 = phi i32 [ %382, %377 ], [ %388, %383 ]
  %391 = getelementptr inbounds %struct.tegra_sor_soc, ptr %344, i32 0, i32 5
  %392 = load ptr, ptr %391, align 4
  %393 = getelementptr inbounds %struct.tegra_sor_regs, ptr %392, i32 0, i32 10
  %394 = load i32, ptr %393, align 4
  %395 = load ptr, ptr %12, align 8
  %396 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %397 = icmp sgt i32 %396, 0
  br i1 %397, label %398, label %411

398:                                              ; preds = %389
  %399 = tail call ptr @llvm.thread.pointer() #9
  %400 = getelementptr inbounds %struct.thread_info, ptr %399, i32 0, i32 2
  %401 = load i32, ptr %400, align 8
  %402 = lshr i32 %401, 5
  %403 = getelementptr i32, ptr @__cpu_online_mask, i32 %402
  %404 = load volatile i32, ptr %403, align 4
  %405 = and i32 %401, 31
  %406 = shl nuw i32 1, %405
  %407 = and i32 %406, %404
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %411, label %409

409:                                              ; preds = %398
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %410 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %395, i32 noundef %394, i32 noundef %390) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %411

411:                                              ; preds = %409, %398, %389
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %412 = load ptr, ptr %8, align 8
  %413 = shl i32 %394, 2
  %414 = getelementptr i8, ptr %412, i32 %413
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %414, i32 %390) #9, !srcloc !18
  %415 = load ptr, ptr %12, align 8
  %416 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %417 = icmp sgt i32 %416, 0
  br i1 %417, label %418, label %431

418:                                              ; preds = %411
  %419 = tail call ptr @llvm.thread.pointer() #9
  %420 = getelementptr inbounds %struct.thread_info, ptr %419, i32 0, i32 2
  %421 = load i32, ptr %420, align 8
  %422 = lshr i32 %421, 5
  %423 = getelementptr i32, ptr @__cpu_online_mask, i32 %422
  %424 = load volatile i32, ptr %423, align 4
  %425 = and i32 %421, 31
  %426 = shl nuw i32 1, %425
  %427 = and i32 %426, %424
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %431, label %429

429:                                              ; preds = %418
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %430 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %415, i32 noundef 33, i32 noundef -2146435072) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %431

431:                                              ; preds = %429, %418, %411
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %432 = load ptr, ptr %8, align 8
  %433 = getelementptr i8, ptr %432, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %433, i32 -2146435072) #9, !srcloc !18
  %434 = load volatile i32, ptr @jiffies, align 64
  %435 = sub i32 -25, %434
  %436 = load volatile i32, ptr @jiffies, align 64
  %437 = add i32 %435, %436
  %438 = icmp slt i32 %437, 0
  br i1 %438, label %439, label %465

439:                                              ; preds = %461, %431
  %440 = load ptr, ptr %8, align 8
  %441 = getelementptr i8, ptr %440, i32 132
  %442 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %441) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %443 = load ptr, ptr %12, align 8
  %444 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %445 = icmp sgt i32 %444, 0
  br i1 %445, label %446, label %459

446:                                              ; preds = %439
  %447 = tail call ptr @llvm.thread.pointer() #9
  %448 = getelementptr inbounds %struct.thread_info, ptr %447, i32 0, i32 2
  %449 = load i32, ptr %448, align 8
  %450 = lshr i32 %449, 5
  %451 = getelementptr i32, ptr @__cpu_online_mask, i32 %450
  %452 = load volatile i32, ptr %451, align 4
  %453 = and i32 %449, 31
  %454 = shl nuw i32 1, %453
  %455 = and i32 %454, %452
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %459, label %457

457:                                              ; preds = %446
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %458 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %443, i32 noundef 33, i32 noundef %442) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %459

459:                                              ; preds = %457, %446, %439
  %460 = icmp sgt i32 %442, -1
  br i1 %460, label %469, label %461

461:                                              ; preds = %459
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 1000, i32 noundef 2) #9
  %462 = load volatile i32, ptr @jiffies, align 64
  %463 = add i32 %462, %435
  %464 = icmp slt i32 %463, 0
  br i1 %464, label %439, label %465

465:                                              ; preds = %461, %431
  %466 = load ptr, ptr %12, align 8
  %467 = icmp eq i32 %7, 1
  %468 = select i1 %467, ptr @.str.89, ptr @.str.88
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %466, ptr noundef nonnull @.str.87, i32 noundef %7, ptr noundef nonnull %468, i32 noundef -110) #10
  br label %620

469:                                              ; preds = %459
  %470 = load ptr, ptr %104, align 4
  %471 = getelementptr inbounds %struct.tegra_sor_soc, ptr %470, i32 0, i32 5
  %472 = load ptr, ptr %471, align 4
  %473 = getelementptr inbounds %struct.tegra_sor_regs, ptr %472, i32 0, i32 10
  %474 = load i32, ptr %473, align 4
  %475 = load ptr, ptr %8, align 8
  %476 = shl i32 %474, 2
  %477 = getelementptr i8, ptr %475, i32 %476
  %478 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %477) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %479 = load ptr, ptr %12, align 8
  %480 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %481 = icmp sgt i32 %480, 0
  br i1 %481, label %482, label %495

482:                                              ; preds = %469
  %483 = tail call ptr @llvm.thread.pointer() #9
  %484 = getelementptr inbounds %struct.thread_info, ptr %483, i32 0, i32 2
  %485 = load i32, ptr %484, align 8
  %486 = lshr i32 %485, 5
  %487 = getelementptr i32, ptr @__cpu_online_mask, i32 %486
  %488 = load volatile i32, ptr %487, align 4
  %489 = and i32 %485, 31
  %490 = shl nuw i32 1, %489
  %491 = and i32 %490, %488
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %495, label %493

493:                                              ; preds = %482
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %494 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %479, i32 noundef %474, i32 noundef %478) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %495

495:                                              ; preds = %493, %482, %469
  %496 = load ptr, ptr %104, align 4
  %497 = getelementptr inbounds %struct.tegra_sor_soc, ptr %496, i32 0, i32 10
  %498 = load ptr, ptr %497, align 4
  %499 = getelementptr i8, ptr %498, i32 3
  %500 = load i8, ptr %499, align 1
  %501 = zext i8 %500 to i32
  %502 = shl i32 16, %501
  %503 = getelementptr i8, ptr %498, i32 2
  %504 = load i8, ptr %503, align 1
  %505 = zext i8 %504 to i32
  %506 = shl i32 16, %505
  %507 = or i32 %506, %502
  br i1 %343, label %510, label %508

508:                                              ; preds = %495
  %509 = or i32 %507, %478
  br label %514

510:                                              ; preds = %495
  %511 = xor i32 %507, -1
  %512 = and i32 %478, %511
  %513 = icmp eq i32 %7, 2
  br i1 %513, label %514, label %521

514:                                              ; preds = %510, %508
  %515 = phi i32 [ %509, %508 ], [ %512, %510 ]
  %516 = getelementptr i8, ptr %498, i32 1
  %517 = load i8, ptr %516, align 1
  %518 = zext i8 %517 to i32
  %519 = shl i32 16, %518
  %520 = or i32 %519, %515
  br label %535

521:                                              ; preds = %510
  %522 = getelementptr i8, ptr %498, i32 1
  %523 = load i8, ptr %522, align 1
  %524 = zext i8 %523 to i32
  %525 = shl i32 16, %524
  %526 = xor i32 %525, -1
  %527 = and i32 %512, %526
  %528 = icmp eq i32 %7, 0
  br i1 %528, label %529, label %535

529:                                              ; preds = %521
  %530 = load i8, ptr %498, align 1
  %531 = zext i8 %530 to i32
  %532 = shl i32 16, %531
  %533 = xor i32 %532, -1
  %534 = and i32 %527, %533
  br label %541

535:                                              ; preds = %521, %514
  %536 = phi i32 [ %520, %514 ], [ %527, %521 ]
  %537 = load i8, ptr %498, align 1
  %538 = zext i8 %537 to i32
  %539 = shl i32 16, %538
  %540 = or i32 %539, %536
  br label %541

541:                                              ; preds = %535, %529
  %542 = phi i32 [ %534, %529 ], [ %540, %535 ]
  %543 = getelementptr inbounds %struct.tegra_sor_soc, ptr %496, i32 0, i32 5
  %544 = load ptr, ptr %543, align 4
  %545 = getelementptr inbounds %struct.tegra_sor_regs, ptr %544, i32 0, i32 10
  %546 = load i32, ptr %545, align 4
  %547 = load ptr, ptr %12, align 8
  %548 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %549 = icmp sgt i32 %548, 0
  br i1 %549, label %550, label %563

550:                                              ; preds = %541
  %551 = tail call ptr @llvm.thread.pointer() #9
  %552 = getelementptr inbounds %struct.thread_info, ptr %551, i32 0, i32 2
  %553 = load i32, ptr %552, align 8
  %554 = lshr i32 %553, 5
  %555 = getelementptr i32, ptr @__cpu_online_mask, i32 %554
  %556 = load volatile i32, ptr %555, align 4
  %557 = and i32 %553, 31
  %558 = shl nuw i32 1, %557
  %559 = and i32 %558, %556
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %563, label %561

561:                                              ; preds = %550
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %562 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %547, i32 noundef %546, i32 noundef %542) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %563

563:                                              ; preds = %561, %550, %541
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %564 = load ptr, ptr %8, align 8
  %565 = shl i32 %546, 2
  %566 = getelementptr i8, ptr %564, i32 %565
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %566, i32 %542) #9, !srcloc !18
  tail call void @usleep_range_state(i32 noundef 15, i32 noundef 100, i32 noundef 2) #9
  %567 = load ptr, ptr %104, align 4
  %568 = getelementptr inbounds %struct.tegra_sor_soc, ptr %567, i32 0, i32 5
  %569 = load ptr, ptr %568, align 4
  %570 = getelementptr inbounds %struct.tegra_sor_regs, ptr %569, i32 0, i32 10
  %571 = load i32, ptr %570, align 4
  %572 = load ptr, ptr %8, align 8
  %573 = shl i32 %571, 2
  %574 = getelementptr i8, ptr %572, i32 %573
  %575 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %574) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %576 = load ptr, ptr %12, align 8
  %577 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %578 = icmp sgt i32 %577, 0
  br i1 %578, label %579, label %593

579:                                              ; preds = %563
  %580 = tail call ptr @llvm.thread.pointer() #9
  %581 = getelementptr inbounds %struct.thread_info, ptr %580, i32 0, i32 2
  %582 = load i32, ptr %581, align 8
  %583 = lshr i32 %582, 5
  %584 = getelementptr i32, ptr @__cpu_online_mask, i32 %583
  %585 = load volatile i32, ptr %584, align 4
  %586 = and i32 %582, 31
  %587 = shl nuw i32 1, %586
  %588 = and i32 %587, %585
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %593, label %590

590:                                              ; preds = %579
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %591 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %576, i32 noundef %571, i32 noundef %575) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %592 = load ptr, ptr %12, align 8
  br label %593

593:                                              ; preds = %590, %579, %563
  %594 = phi ptr [ %576, %563 ], [ %576, %579 ], [ %592, %590 ]
  %595 = and i32 %575, -241
  %596 = load ptr, ptr %104, align 4
  %597 = getelementptr inbounds %struct.tegra_sor_soc, ptr %596, i32 0, i32 5
  %598 = load ptr, ptr %597, align 4
  %599 = getelementptr inbounds %struct.tegra_sor_regs, ptr %598, i32 0, i32 10
  %600 = load i32, ptr %599, align 4
  %601 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %602 = icmp sgt i32 %601, 0
  br i1 %602, label %603, label %616

603:                                              ; preds = %593
  %604 = tail call ptr @llvm.thread.pointer() #9
  %605 = getelementptr inbounds %struct.thread_info, ptr %604, i32 0, i32 2
  %606 = load i32, ptr %605, align 8
  %607 = lshr i32 %606, 5
  %608 = getelementptr i32, ptr @__cpu_online_mask, i32 %607
  %609 = load volatile i32, ptr %608, align 4
  %610 = and i32 %606, 31
  %611 = shl nuw i32 1, %610
  %612 = and i32 %611, %609
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %616, label %614

614:                                              ; preds = %603
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %615 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %594, i32 noundef %600, i32 noundef %595) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %616

616:                                              ; preds = %614, %603, %593
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %617 = load ptr, ptr %8, align 8
  %618 = shl i32 %600, 2
  %619 = getelementptr i8, ptr %617, i32 %618
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %619, i32 %595) #9, !srcloc !18
  br label %620

620:                                              ; preds = %616, %465, %314
  %621 = phi i32 [ -110, %314 ], [ -110, %465 ], [ 0, %616 ]
  ret i32 %621
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sor_connector_reset(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 128) #12
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_connector_detect(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1212
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @drm_dp_aux_detect(ptr noundef nonnull %4) #9
  br label %10

8:                                                ; preds = %2
  %9 = tail call i32 @tegra_output_connector_detect(ptr noundef %0, i1 noundef zeroext %1) #9
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_late_register(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 51
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @kmemdup(ptr noundef nonnull @debugfs_files, i32 noundef 32, i32 noundef 3264) #9
  %8 = getelementptr i8, ptr %0, i32 1216
  store ptr %7, ptr %8, align 8
  %9 = icmp eq ptr %7, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -208
  %12 = getelementptr %struct.drm_info_list, ptr %7, i32 0, i32 3
  store ptr %11, ptr %12, align 4
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr %struct.drm_info_list, ptr %13, i32 1, i32 3
  store ptr %11, ptr %14, align 4
  %15 = load ptr, ptr %8, align 8
  tail call void @drm_debugfs_create_files(ptr noundef %15, i32 noundef 2, ptr noundef %6, ptr noundef %4) #9
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i32 [ 0, %10 ], [ -12, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_sor_early_unregister(ptr nocapture noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1216
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @drm_debugfs_remove_files(ptr noundef %3, i32 noundef 2, ptr noundef %6) #9
  %8 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %8) #9
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_connector_destroy(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_sor_connector_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 52
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef 128, i32 noundef 3264) #9
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
declare dso_local i32 @drm_dp_aux_detect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_connector_detect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_show_crc(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_sor, ptr %8, i32 0, i32 1, i32 9, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.drm_minor, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void @drm_modeset_lock_all(ptr noundef %13) #9
  %14 = icmp eq ptr %10, null
  br i1 %14, label %219, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 22
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 2
  %19 = load i8, ptr %18, align 1, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %219, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tegra_sor, ptr %8, i32 0, i32 4
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %23, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %26 = getelementptr inbounds %struct.tegra_sor, ptr %8, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %44

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
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %42 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %27, i32 noundef 4, i32 noundef %25) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %43 = load ptr, ptr %26, align 8
  br label %44

44:                                               ; preds = %41, %30, %21
  %45 = phi ptr [ %27, %21 ], [ %27, %30 ], [ %43, %41 ]
  %46 = and i32 %25, -193
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %61 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %45, i32 noundef 4, i32 noundef %46) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %62

62:                                               ; preds = %60, %49, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %63 = load ptr, ptr %22, align 8
  %64 = getelementptr i8, ptr %63, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %46) #9, !srcloc !18
  %65 = load ptr, ptr %22, align 8
  %66 = getelementptr i8, ptr %65, i32 68
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %68 = load ptr, ptr %26, align 8
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %62
  %72 = tail call ptr @llvm.thread.pointer() #9
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 5
  %76 = getelementptr i32, ptr @__cpu_online_mask, i32 %75
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %74, 31
  %79 = shl nuw i32 1, %78
  %80 = and i32 %79, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %83 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %68, i32 noundef 17, i32 noundef %67) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %84 = load ptr, ptr %26, align 8
  br label %85

85:                                               ; preds = %82, %71, %62
  %86 = phi ptr [ %68, %62 ], [ %68, %71 ], [ %84, %82 ]
  %87 = or i32 %67, 1
  %88 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = tail call ptr @llvm.thread.pointer() #9
  %92 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %93 = load i32, ptr %92, align 8
  %94 = lshr i32 %93, 5
  %95 = getelementptr i32, ptr @__cpu_online_mask, i32 %94
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %93, 31
  %98 = shl nuw i32 1, %97
  %99 = and i32 %98, %96
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %90
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %102 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %86, i32 noundef 17, i32 noundef %87) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %103

103:                                              ; preds = %101, %90, %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %104 = load ptr, ptr %22, align 8
  %105 = getelementptr i8, ptr %104, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %87) #9, !srcloc !18
  %106 = load ptr, ptr %22, align 8
  %107 = getelementptr i8, ptr %106, i32 88
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %109 = load ptr, ptr %26, align 8
  %110 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %103
  %113 = tail call ptr @llvm.thread.pointer() #9
  %114 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 2
  %115 = load i32, ptr %114, align 8
  %116 = lshr i32 %115, 5
  %117 = getelementptr i32, ptr @__cpu_online_mask, i32 %116
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %115, 31
  %120 = shl nuw i32 1, %119
  %121 = and i32 %120, %118
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %112
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %124 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %109, i32 noundef 22, i32 noundef %108) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %125 = load ptr, ptr %26, align 8
  br label %126

126:                                              ; preds = %123, %112, %103
  %127 = phi ptr [ %109, %103 ], [ %109, %112 ], [ %125, %123 ]
  %128 = and i32 %108, -8388609
  %129 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %126
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %143 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %127, i32 noundef 22, i32 noundef %128) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %144

144:                                              ; preds = %142, %131, %126
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %145 = load ptr, ptr %22, align 8
  %146 = getelementptr i8, ptr %145, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %128) #9, !srcloc !18
  %147 = load volatile i32, ptr @jiffies, align 64
  %148 = sub i32 -10, %147
  %149 = load volatile i32, ptr @jiffies, align 64
  %150 = add i32 %148, %149
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %219

152:                                              ; preds = %175, %144
  %153 = load ptr, ptr %22, align 8
  %154 = getelementptr i8, ptr %153, i32 116
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %156 = load ptr, ptr %26, align 8
  %157 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %152
  %160 = tail call ptr @llvm.thread.pointer() #9
  %161 = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 2
  %162 = load i32, ptr %161, align 8
  %163 = lshr i32 %162, 5
  %164 = getelementptr i32, ptr @__cpu_online_mask, i32 %163
  %165 = load volatile i32, ptr %164, align 4
  %166 = and i32 %162, 31
  %167 = shl nuw i32 1, %166
  %168 = and i32 %167, %165
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %159
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %171 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %156, i32 noundef 29, i32 noundef %155) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %172

172:                                              ; preds = %170, %159, %152
  %173 = and i32 %155, 1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #9
  %176 = load volatile i32, ptr @jiffies, align 64
  %177 = add i32 %176, %148
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %152, label %219

179:                                              ; preds = %172
  %180 = load ptr, ptr %26, align 8
  %181 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %179
  %184 = tail call ptr @llvm.thread.pointer() #9
  %185 = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 2
  %186 = load i32, ptr %185, align 8
  %187 = lshr i32 %186, 5
  %188 = getelementptr i32, ptr @__cpu_online_mask, i32 %187
  %189 = load volatile i32, ptr %188, align 4
  %190 = and i32 %186, 31
  %191 = shl nuw i32 1, %190
  %192 = and i32 %191, %189
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %183
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %195 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %180, i32 noundef 29, i32 noundef 1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %196

196:                                              ; preds = %194, %183, %179
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %197 = load ptr, ptr %22, align 8
  %198 = getelementptr i8, ptr %197, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 1) #9, !srcloc !18
  %199 = load ptr, ptr %22, align 8
  %200 = getelementptr i8, ptr %199, i32 120
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %200) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %202 = load ptr, ptr %26, align 8
  %203 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %196
  %206 = tail call ptr @llvm.thread.pointer() #9
  %207 = getelementptr inbounds %struct.thread_info, ptr %206, i32 0, i32 2
  %208 = load i32, ptr %207, align 8
  %209 = lshr i32 %208, 5
  %210 = getelementptr i32, ptr @__cpu_online_mask, i32 %209
  %211 = load volatile i32, ptr %210, align 4
  %212 = and i32 %208, 31
  %213 = shl nuw i32 1, %212
  %214 = and i32 %213, %211
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %205
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %217 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %202, i32 noundef 30, i32 noundef %201) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %218

218:                                              ; preds = %216, %205, %196
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.92, i32 noundef %201) #9
  br label %219

219:                                              ; preds = %218, %175, %144, %15, %2
  %220 = phi i32 [ 0, %218 ], [ -16, %15 ], [ -16, %2 ], [ -110, %144 ], [ -110, %175 ]
  tail call void @drm_modeset_unlock_all(ptr noundef %13) #9
  ret i32 %220
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_show_regs(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_sor, ptr %8, i32 0, i32 1, i32 9, i32 8
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
  %19 = load i8, ptr %18, align 1, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tegra_sor, ptr %8, i32 0, i32 4
  %23 = getelementptr inbounds %struct.tegra_sor, ptr %8, i32 0, i32 2
  br label %24

24:                                               ; preds = %50, %21
  %25 = phi i32 [ 0, %21 ], [ %51, %50 ]
  %26 = getelementptr [115 x %struct.debugfs_reg32], ptr @tegra_sor_regs, i32 0, i32 %25
  %27 = getelementptr [115 x %struct.debugfs_reg32], ptr @tegra_sor_regs, i32 0, i32 %25, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = load ptr, ptr %22, align 8
  %31 = shl i32 %28, 2
  %32 = getelementptr i8, ptr %30, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %34 = load ptr, ptr %23, align 8
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %49 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %34, i32 noundef %28, i32 noundef %33) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %50

50:                                               ; preds = %48, %37, %24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.93, ptr noundef %29, i32 noundef %28, i32 noundef %33) #9
  %51 = add nuw nsw i32 %25, 1
  %52 = icmp eq i32 %51, 115
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_connector_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1212
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @drm_dp_aux_enable(ptr noundef nonnull %3) #9
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call i32 @tegra_output_connector_get_modes(ptr noundef %0) #9
  %9 = load ptr, ptr %2, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @drm_dp_aux_disable(ptr noundef nonnull %9) #9
  br label %13

13:                                               ; preds = %11, %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra_sor_connector_mode_valid(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #7 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_connector_get_modes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_clk_sor_pad_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_clk_sor_pad, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_sor, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 76
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %9 = getelementptr inbounds %struct.tegra_sor, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = tail call ptr @llvm.thread.pointer() #9
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %25 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %10, i32 noundef 19, i32 noundef %8) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %26 = load ptr, ptr %9, align 8
  br label %27

27:                                               ; preds = %24, %13, %2
  %28 = phi ptr [ %10, %2 ], [ %10, %13 ], [ %26, %24 ]
  %29 = and i32 %8, -4
  %30 = icmp eq i8 %1, 1
  %31 = or i32 %29, 2
  %32 = select i1 %30, i32 %31, i32 %29
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_writel, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = tail call ptr @llvm.thread.pointer() #9
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %47 = tail call i32 @__traceiter_sor_writel(ptr noundef null, ptr noundef %28, i32 noundef 19, i32 noundef %32) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  br label %48

48:                                               ; preds = %46, %35, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr i8, ptr %49, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %32) #9, !srcloc !18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @tegra_clk_sor_pad_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_clk_sor_pad, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_sor, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 76
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %8 = getelementptr inbounds %struct.tegra_sor, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sor_readl, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = tail call ptr @llvm.thread.pointer() #9
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %24 = tail call i32 @__traceiter_sor_readl(ptr noundef null, ptr noundef %9, i32 noundef 19, i32 noundef %7) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %25

25:                                               ; preds = %23, %12, %1
  %26 = trunc i32 %7 to i8
  %27 = lshr i8 %26, 1
  %28 = and i8 %27, 1
  ret i8 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_sor, ptr %3, i32 0, i32 1
  %5 = tail call i32 @tegra_output_suspend(ptr noundef %4) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef %5) #10
  br label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_sor, ptr %3, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @regulator_disable(ptr noundef nonnull %10) #9
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 @tegra_output_resume(ptr noundef %4) #9
  br label %17

17:                                               ; preds = %15, %12, %8, %7
  %18 = phi i32 [ %5, %7 ], [ %13, %15 ], [ 0, %12 ], [ 0, %8 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_sor_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_sor, ptr %3, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @regulator_enable(ptr noundef nonnull %5) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.tegra_sor, ptr %3, i32 0, i32 1
  %12 = tail call i32 @tegra_output_resume(ptr noundef %11) #9
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.218, i32 noundef %12) #10
  %15 = load ptr, ptr %4, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @regulator_disable(ptr noundef nonnull %15) #9
  br label %19

19:                                               ; preds = %17, %14, %10, %7
  %20 = phi i32 [ %8, %7 ], [ %12, %17 ], [ %12, %14 ], [ 0, %10 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

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
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 4262658}
!12 = !{i64 2156087542}
!13 = !{i64 2156032514}
!14 = !{i64 2156032680}
!15 = !{i64 2156016487}
!16 = !{i64 2156016655}
!17 = !{i64 2156087906}
!18 = !{i64 4262240}
!19 = !{i64 2148043433}
!20 = !{i64 541743, i64 2148031714, i64 2148031740, i64 2148031787, i64 2148031809, i64 2148031837, i64 2148031857}
!21 = !{i64 528312, i64 528337, i64 528359, i64 528375, i64 528387, i64 528407, i64 528431, i64 528447, i64 528459}
!22 = !{i64 2148043559}
!23 = !{i64 2156055388}
!24 = !{i64 2155895742}
!25 = !{i64 2155895906}
!26 = !{i64 2155879807}
!27 = !{i64 2155879973}
!28 = !{i64 2156054724}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2148457106, i64 2148457386, i64 2148457720, i64 2148458054}
!31 = !{i64 971562, i64 971589, i64 971611, i64 971639}
!32 = !{i64 971970, i64 971997, i64 972030, i64 972051, i64 972078, i64 972104}
