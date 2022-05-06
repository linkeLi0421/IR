; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/hdmi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.anon.84 = type { i32, i32 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.tegra_hdmi_config = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.tmds_config = type { i32, i32, i32, i32, i32, i32 }
%struct.tegra_core_opp_params = type { i8 }
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
%struct.tegra_hdmi = type { %struct.host1x_client, %struct.tegra_output, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.tegra_hda_format, i32, i8, i8, ptr, ptr, %struct.mutex }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.tegra_hda_format = type { i32, i32, i32, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.72, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.78, ptr, i32, ptr, i8, i32 }
%struct.anon.72 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.78 = type { i32, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.hdmi_vendor_infoframe = type { i32, i8, i8, i32, i8, i32, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.tegra_dc = type { %struct.host1x_client, ptr, ptr, %struct.drm_crtc, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.tegra_dc_stats, %struct.list_head, ptr, ptr, i8 }
%struct.tegra_dc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }

@.str = private unnamed_addr constant [11 x i8] c"tegra-hdmi\00", align 1
@tegra_hdmi_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_hdmi_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_hdmi_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_hdmi_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_hdmi_config }, %struct.of_device_id zeroinitializer], align 4
@tegra_hdmi_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @tegra_hdmi_probe, ptr @tegra_hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_hdmi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@tegra_hdmi_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"&hdmi->audio_lock\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"failed to get reset\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to setup clocks: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"failed to get HDMI regulator: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"pll\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"failed to get PLL regulator: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"failed to get VDD regulator: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"failed to request IRQ#%u: %d\0A\00", align 1
@hdmi_client_ops = internal constant %struct.host1x_client_ops { ptr null, ptr @tegra_hdmi_init, ptr @tegra_hdmi_exit, ptr null, ptr @tegra_hdmi_runtime_suspend, ptr @tegra_hdmi_runtime_resume }, align 4
@tegra_hdmi_probe.__key.15 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@__tracepoint_hdmi_readl = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_hdmi_writel = external dso_local global %struct.tracepoint, align 4
@.str.18 = private unnamed_addr constant [48 x i8] c"cannot set audio to %u Hz at %u Hz pixel clock\0A\00", align 1
@tegra_hdmi_write_aval.regs = internal unnamed_addr constant [7 x %struct.anon.84] [%struct.anon.84 { i32 32000, i32 191 }, %struct.anon.84 { i32 44100, i32 192 }, %struct.anon.84 { i32 48000, i32 195 }, %struct.anon.84 { i32 88200, i32 193 }, %struct.anon.84 { i32 96000, i32 196 }, %struct.anon.84 { i32 176400, i32 194 }, %struct.anon.84 { i32 192000, i32 197 }], align 4
@__const.tegra_hdmi_setup_audio_fs_tables.freqs = private unnamed_addr constant [7 x i32] [i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], align 4
@.str.19 = private unnamed_addr constant [38 x i8] c"failed to setup audio infoframe: %zd\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"failed to pack audio infoframe: %zd\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"unsupported infoframe type: %02x\0A\00", align 1
@tegra_hdmi_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @tegra_hdmi_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @tegra_hdmi_late_register, ptr @tegra_hdmi_early_unregister, ptr @tegra_output_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_hdmi_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @tegra_output_connector_get_modes, ptr null, ptr @tegra_hdmi_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_hdmi_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_hdmi_encoder_disable, ptr @tegra_hdmi_encoder_enable, ptr @tegra_hdmi_encoder_atomic_check }, align 4
@.str.22 = private unnamed_addr constant [33 x i8] c"failed to initialize output: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"failed to enable HDMI regulator: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"failed to enable PLL regulator: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"failed to enable VDD regulator: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"failed to register audio codec: %d\0A\00", align 1
@debugfs_files = internal global [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.27, ptr @tegra_hdmi_show_regs, i32 0, ptr null }], align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@tegra_hdmi_regs = internal unnamed_addr constant [164 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.29, i32 0 }, %struct.debugfs_reg32 { ptr @.str.30, i32 1 }, %struct.debugfs_reg32 { ptr @.str.31, i32 2 }, %struct.debugfs_reg32 { ptr @.str.32, i32 3 }, %struct.debugfs_reg32 { ptr @.str.33, i32 4 }, %struct.debugfs_reg32 { ptr @.str.34, i32 5 }, %struct.debugfs_reg32 { ptr @.str.35, i32 6 }, %struct.debugfs_reg32 { ptr @.str.36, i32 7 }, %struct.debugfs_reg32 { ptr @.str.37, i32 8 }, %struct.debugfs_reg32 { ptr @.str.38, i32 9 }, %struct.debugfs_reg32 { ptr @.str.39, i32 10 }, %struct.debugfs_reg32 { ptr @.str.40, i32 11 }, %struct.debugfs_reg32 { ptr @.str.41, i32 12 }, %struct.debugfs_reg32 { ptr @.str.42, i32 13 }, %struct.debugfs_reg32 { ptr @.str.43, i32 14 }, %struct.debugfs_reg32 { ptr @.str.44, i32 15 }, %struct.debugfs_reg32 { ptr @.str.45, i32 16 }, %struct.debugfs_reg32 { ptr @.str.46, i32 17 }, %struct.debugfs_reg32 { ptr @.str.47, i32 18 }, %struct.debugfs_reg32 { ptr @.str.48, i32 19 }, %struct.debugfs_reg32 { ptr @.str.49, i32 20 }, %struct.debugfs_reg32 { ptr @.str.50, i32 21 }, %struct.debugfs_reg32 { ptr @.str.51, i32 22 }, %struct.debugfs_reg32 { ptr @.str.52, i32 23 }, %struct.debugfs_reg32 { ptr @.str.53, i32 24 }, %struct.debugfs_reg32 { ptr @.str.54, i32 25 }, %struct.debugfs_reg32 { ptr @.str.55, i32 26 }, %struct.debugfs_reg32 { ptr @.str.56, i32 27 }, %struct.debugfs_reg32 { ptr @.str.57, i32 28 }, %struct.debugfs_reg32 { ptr @.str.58, i32 29 }, %struct.debugfs_reg32 { ptr @.str.59, i32 30 }, %struct.debugfs_reg32 { ptr @.str.60, i32 31 }, %struct.debugfs_reg32 { ptr @.str.61, i32 32 }, %struct.debugfs_reg32 { ptr @.str.62, i32 33 }, %struct.debugfs_reg32 { ptr @.str.63, i32 34 }, %struct.debugfs_reg32 { ptr @.str.64, i32 35 }, %struct.debugfs_reg32 { ptr @.str.65, i32 36 }, %struct.debugfs_reg32 { ptr @.str.66, i32 37 }, %struct.debugfs_reg32 { ptr @.str.67, i32 38 }, %struct.debugfs_reg32 { ptr @.str.68, i32 39 }, %struct.debugfs_reg32 { ptr @.str.69, i32 40 }, %struct.debugfs_reg32 { ptr @.str.70, i32 41 }, %struct.debugfs_reg32 { ptr @.str.71, i32 42 }, %struct.debugfs_reg32 { ptr @.str.72, i32 43 }, %struct.debugfs_reg32 { ptr @.str.73, i32 44 }, %struct.debugfs_reg32 { ptr @.str.74, i32 45 }, %struct.debugfs_reg32 { ptr @.str.75, i32 46 }, %struct.debugfs_reg32 { ptr @.str.76, i32 47 }, %struct.debugfs_reg32 { ptr @.str.77, i32 48 }, %struct.debugfs_reg32 { ptr @.str.78, i32 49 }, %struct.debugfs_reg32 { ptr @.str.79, i32 50 }, %struct.debugfs_reg32 { ptr @.str.80, i32 51 }, %struct.debugfs_reg32 { ptr @.str.81, i32 52 }, %struct.debugfs_reg32 { ptr @.str.82, i32 53 }, %struct.debugfs_reg32 { ptr @.str.83, i32 54 }, %struct.debugfs_reg32 { ptr @.str.84, i32 55 }, %struct.debugfs_reg32 { ptr @.str.85, i32 56 }, %struct.debugfs_reg32 { ptr @.str.86, i32 57 }, %struct.debugfs_reg32 { ptr @.str.87, i32 58 }, %struct.debugfs_reg32 { ptr @.str.88, i32 59 }, %struct.debugfs_reg32 { ptr @.str.89, i32 60 }, %struct.debugfs_reg32 { ptr @.str.90, i32 61 }, %struct.debugfs_reg32 { ptr @.str.91, i32 62 }, %struct.debugfs_reg32 { ptr @.str.92, i32 63 }, %struct.debugfs_reg32 { ptr @.str.93, i32 64 }, %struct.debugfs_reg32 { ptr @.str.94, i32 65 }, %struct.debugfs_reg32 { ptr @.str.95, i32 66 }, %struct.debugfs_reg32 { ptr @.str.96, i32 67 }, %struct.debugfs_reg32 { ptr @.str.97, i32 68 }, %struct.debugfs_reg32 { ptr @.str.98, i32 69 }, %struct.debugfs_reg32 { ptr @.str.99, i32 70 }, %struct.debugfs_reg32 { ptr @.str.100, i32 71 }, %struct.debugfs_reg32 { ptr @.str.101, i32 72 }, %struct.debugfs_reg32 { ptr @.str.102, i32 73 }, %struct.debugfs_reg32 { ptr @.str.103, i32 74 }, %struct.debugfs_reg32 { ptr @.str.104, i32 75 }, %struct.debugfs_reg32 { ptr @.str.105, i32 76 }, %struct.debugfs_reg32 { ptr @.str.106, i32 77 }, %struct.debugfs_reg32 { ptr @.str.107, i32 78 }, %struct.debugfs_reg32 { ptr @.str.108, i32 79 }, %struct.debugfs_reg32 { ptr @.str.109, i32 80 }, %struct.debugfs_reg32 { ptr @.str.110, i32 81 }, %struct.debugfs_reg32 { ptr @.str.111, i32 83 }, %struct.debugfs_reg32 { ptr @.str.112, i32 84 }, %struct.debugfs_reg32 { ptr @.str.113, i32 85 }, %struct.debugfs_reg32 { ptr @.str.114, i32 86 }, %struct.debugfs_reg32 { ptr @.str.115, i32 87 }, %struct.debugfs_reg32 { ptr @.str.116, i32 88 }, %struct.debugfs_reg32 { ptr @.str.117, i32 89 }, %struct.debugfs_reg32 { ptr @.str.118, i32 90 }, %struct.debugfs_reg32 { ptr @.str.119, i32 91 }, %struct.debugfs_reg32 { ptr @.str.120, i32 92 }, %struct.debugfs_reg32 { ptr @.str.121, i32 93 }, %struct.debugfs_reg32 { ptr @.str.122, i32 94 }, %struct.debugfs_reg32 { ptr @.str.123, i32 95 }, %struct.debugfs_reg32 { ptr @.str.124, i32 96 }, %struct.debugfs_reg32 { ptr @.str.125, i32 97 }, %struct.debugfs_reg32 { ptr @.str.126, i32 98 }, %struct.debugfs_reg32 { ptr @.str.127, i32 99 }, %struct.debugfs_reg32 { ptr @.str.128, i32 100 }, %struct.debugfs_reg32 { ptr @.str.129, i32 101 }, %struct.debugfs_reg32 { ptr @.str.130, i32 102 }, %struct.debugfs_reg32 { ptr @.str.131, i32 103 }, %struct.debugfs_reg32 { ptr @.str.132, i32 104 }, %struct.debugfs_reg32 { ptr @.str.133, i32 105 }, %struct.debugfs_reg32 { ptr @.str.134, i32 106 }, %struct.debugfs_reg32 { ptr @.str.135, i32 107 }, %struct.debugfs_reg32 { ptr @.str.136, i32 108 }, %struct.debugfs_reg32 { ptr @.str.137, i32 109 }, %struct.debugfs_reg32 { ptr @.str.138, i32 110 }, %struct.debugfs_reg32 { ptr @.str.139, i32 111 }, %struct.debugfs_reg32 { ptr @.str.140, i32 114 }, %struct.debugfs_reg32 { ptr @.str.141, i32 115 }, %struct.debugfs_reg32 { ptr @.str.142, i32 116 }, %struct.debugfs_reg32 { ptr @.str.143, i32 117 }, %struct.debugfs_reg32 { ptr @.str.144, i32 118 }, %struct.debugfs_reg32 { ptr @.str.145, i32 119 }, %struct.debugfs_reg32 { ptr @.str.146, i32 120 }, %struct.debugfs_reg32 { ptr @.str.147, i32 121 }, %struct.debugfs_reg32 { ptr @.str.148, i32 122 }, %struct.debugfs_reg32 { ptr @.str.149, i32 123 }, %struct.debugfs_reg32 { ptr @.str.150, i32 124 }, %struct.debugfs_reg32 { ptr @.str.151, i32 125 }, %struct.debugfs_reg32 { ptr @.str.152, i32 126 }, %struct.debugfs_reg32 { ptr @.str.153, i32 127 }, %struct.debugfs_reg32 { ptr @.str.154, i32 128 }, %struct.debugfs_reg32 { ptr @.str.155, i32 129 }, %struct.debugfs_reg32 { ptr @.str.156, i32 130 }, %struct.debugfs_reg32 { ptr @.str.157, i32 131 }, %struct.debugfs_reg32 { ptr @.str.158, i32 132 }, %struct.debugfs_reg32 { ptr @.str.159, i32 133 }, %struct.debugfs_reg32 { ptr @.str.160, i32 134 }, %struct.debugfs_reg32 { ptr @.str.161, i32 135 }, %struct.debugfs_reg32 { ptr @.str.162, i32 136 }, %struct.debugfs_reg32 { ptr @.str.163, i32 137 }, %struct.debugfs_reg32 { ptr @.str.164, i32 138 }, %struct.debugfs_reg32 { ptr @.str.165, i32 139 }, %struct.debugfs_reg32 { ptr @.str.166, i32 140 }, %struct.debugfs_reg32 { ptr @.str.167, i32 148 }, %struct.debugfs_reg32 { ptr @.str.168, i32 149 }, %struct.debugfs_reg32 { ptr @.str.169, i32 150 }, %struct.debugfs_reg32 { ptr @.str.170, i32 151 }, %struct.debugfs_reg32 { ptr @.str.171, i32 152 }, %struct.debugfs_reg32 { ptr @.str.172, i32 153 }, %struct.debugfs_reg32 { ptr @.str.173, i32 154 }, %struct.debugfs_reg32 { ptr @.str.174, i32 155 }, %struct.debugfs_reg32 { ptr @.str.175, i32 156 }, %struct.debugfs_reg32 { ptr @.str.176, i32 157 }, %struct.debugfs_reg32 { ptr @.str.177, i32 158 }, %struct.debugfs_reg32 { ptr @.str.178, i32 159 }, %struct.debugfs_reg32 { ptr @.str.179, i32 160 }, %struct.debugfs_reg32 { ptr @.str.180, i32 161 }, %struct.debugfs_reg32 { ptr @.str.181, i32 162 }, %struct.debugfs_reg32 { ptr @.str.182, i32 163 }, %struct.debugfs_reg32 { ptr @.str.183, i32 172 }, %struct.debugfs_reg32 { ptr @.str.184, i32 174 }, %struct.debugfs_reg32 { ptr @.str.185, i32 186 }, %struct.debugfs_reg32 { ptr @.str.186, i32 187 }, %struct.debugfs_reg32 { ptr @.str.187, i32 188 }, %struct.debugfs_reg32 { ptr @.str.188, i32 189 }, %struct.debugfs_reg32 { ptr @.str.189, i32 204 }, %struct.debugfs_reg32 { ptr @.str.190, i32 205 }, %struct.debugfs_reg32 { ptr @.str.191, i32 206 }, %struct.debugfs_reg32 { ptr @.str.192, i32 209 }], align 4
@.str.28 = private unnamed_addr constant [18 x i8] c"%-56s %#05x %08x\0A\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"HDMI_CTXSW\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_SOR_STATE0\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_SOR_STATE1\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_SOR_STATE2\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"HDMI_NV_PDISP_RG_HDCP_AN_MSB\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"HDMI_NV_PDISP_RG_HDCP_AN_LSB\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"HDMI_NV_PDISP_RG_HDCP_CN_MSB\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"HDMI_NV_PDISP_RG_HDCP_CN_LSB\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_AKSV_MSB\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_AKSV_LSB\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_BKSV_MSB\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_BKSV_LSB\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_CKSV_MSB\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_CKSV_LSB\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_DKSV_MSB\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_RG_HDCP_DKSV_LSB\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"HDMI_NV_PDISP_RG_HDCP_CTRL\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"HDMI_NV_PDISP_RG_HDCP_CMODE\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"HDMI_NV_PDISP_RG_HDCP_MPRIME_MSB\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"HDMI_NV_PDISP_RG_HDCP_MPRIME_LSB\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"HDMI_NV_PDISP_RG_HDCP_SPRIME_MSB\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"HDMI_NV_PDISP_RG_HDCP_SPRIME_LSB2\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"HDMI_NV_PDISP_RG_HDCP_SPRIME_LSB1\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_RG_HDCP_RI\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"HDMI_NV_PDISP_RG_HDCP_CS_MSB\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"HDMI_NV_PDISP_RG_HDCP_CS_LSB\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_EMU0\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_EMU_RDATA0\00", align 1
@.str.57 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_EMU1\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_EMU2\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_STATUS\00", align 1
@.str.61 = private unnamed_addr constant [42 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_HEADER\00", align 1
@.str.62 = private unnamed_addr constant [48 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_SUBPACK0_LOW\00", align 1
@.str.63 = private unnamed_addr constant [49 x i8] c"HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_SUBPACK0_HIGH\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_CTRL\00", align 1
@.str.65 = private unnamed_addr constant [40 x i8] c"HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_STATUS\00", align 1
@.str.66 = private unnamed_addr constant [40 x i8] c"HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_HEADER\00", align 1
@.str.67 = private unnamed_addr constant [46 x i8] c"HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_LOW\00", align 1
@.str.68 = private unnamed_addr constant [47 x i8] c"HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_HIGH\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_LOW\00", align 1
@.str.70 = private unnamed_addr constant [47 x i8] c"HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_HIGH\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_CTRL\00", align 1
@.str.72 = private unnamed_addr constant [34 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_STATUS\00", align 1
@.str.73 = private unnamed_addr constant [34 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_HEADER\00", align 1
@.str.74 = private unnamed_addr constant [40 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK0_LOW\00", align 1
@.str.75 = private unnamed_addr constant [41 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK0_HIGH\00", align 1
@.str.76 = private unnamed_addr constant [40 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK1_LOW\00", align 1
@.str.77 = private unnamed_addr constant [41 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK1_HIGH\00", align 1
@.str.78 = private unnamed_addr constant [40 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK2_LOW\00", align 1
@.str.79 = private unnamed_addr constant [41 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK2_HIGH\00", align 1
@.str.80 = private unnamed_addr constant [40 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK3_LOW\00", align 1
@.str.81 = private unnamed_addr constant [41 x i8] c"HDMI_NV_PDISP_HDMI_GENERIC_SUBPACK3_HIGH\00", align 1
@.str.82 = private unnamed_addr constant [28 x i8] c"HDMI_NV_PDISP_HDMI_ACR_CTRL\00", align 1
@.str.83 = private unnamed_addr constant [40 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0320_SUBPACK_LOW\00", align 1
@.str.84 = private unnamed_addr constant [41 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0320_SUBPACK_HIGH\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_LOW\00", align 1
@.str.86 = private unnamed_addr constant [41 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0441_SUBPACK_HIGH\00", align 1
@.str.87 = private unnamed_addr constant [40 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0882_SUBPACK_LOW\00", align 1
@.str.88 = private unnamed_addr constant [41 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0882_SUBPACK_HIGH\00", align 1
@.str.89 = private unnamed_addr constant [40 x i8] c"HDMI_NV_PDISP_HDMI_ACR_1764_SUBPACK_LOW\00", align 1
@.str.90 = private unnamed_addr constant [41 x i8] c"HDMI_NV_PDISP_HDMI_ACR_1764_SUBPACK_HIGH\00", align 1
@.str.91 = private unnamed_addr constant [40 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0480_SUBPACK_LOW\00", align 1
@.str.92 = private unnamed_addr constant [41 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0480_SUBPACK_HIGH\00", align 1
@.str.93 = private unnamed_addr constant [40 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0960_SUBPACK_LOW\00", align 1
@.str.94 = private unnamed_addr constant [41 x i8] c"HDMI_NV_PDISP_HDMI_ACR_0960_SUBPACK_HIGH\00", align 1
@.str.95 = private unnamed_addr constant [40 x i8] c"HDMI_NV_PDISP_HDMI_ACR_1920_SUBPACK_LOW\00", align 1
@.str.96 = private unnamed_addr constant [41 x i8] c"HDMI_NV_PDISP_HDMI_ACR_1920_SUBPACK_HIGH\00", align 1
@.str.97 = private unnamed_addr constant [24 x i8] c"HDMI_NV_PDISP_HDMI_CTRL\00", align 1
@.str.98 = private unnamed_addr constant [33 x i8] c"HDMI_NV_PDISP_HDMI_VSYNC_KEEPOUT\00", align 1
@.str.99 = private unnamed_addr constant [32 x i8] c"HDMI_NV_PDISP_HDMI_VSYNC_WINDOW\00", align 1
@.str.100 = private unnamed_addr constant [28 x i8] c"HDMI_NV_PDISP_HDMI_GCP_CTRL\00", align 1
@.str.101 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_HDMI_GCP_STATUS\00", align 1
@.str.102 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_HDMI_GCP_SUBPACK\00", align 1
@.str.103 = private unnamed_addr constant [35 x i8] c"HDMI_NV_PDISP_HDMI_CHANNEL_STATUS1\00", align 1
@.str.104 = private unnamed_addr constant [35 x i8] c"HDMI_NV_PDISP_HDMI_CHANNEL_STATUS2\00", align 1
@.str.105 = private unnamed_addr constant [24 x i8] c"HDMI_NV_PDISP_HDMI_EMU0\00", align 1
@.str.106 = private unnamed_addr constant [24 x i8] c"HDMI_NV_PDISP_HDMI_EMU1\00", align 1
@.str.107 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_HDMI_EMU1_RDATA\00", align 1
@.str.108 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_HDMI_SPARE\00", align 1
@.str.109 = private unnamed_addr constant [37 x i8] c"HDMI_NV_PDISP_HDMI_SPDIF_CHN_STATUS1\00", align 1
@.str.110 = private unnamed_addr constant [37 x i8] c"HDMI_NV_PDISP_HDMI_SPDIF_CHN_STATUS2\00", align 1
@.str.111 = private unnamed_addr constant [36 x i8] c"HDMI_NV_PDISP_HDMI_HDCPRIF_ROM_CTRL\00", align 1
@.str.112 = private unnamed_addr constant [22 x i8] c"HDMI_NV_PDISP_SOR_CAP\00", align 1
@.str.113 = private unnamed_addr constant [22 x i8] c"HDMI_NV_PDISP_SOR_PWR\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"HDMI_NV_PDISP_SOR_TEST\00", align 1
@.str.115 = private unnamed_addr constant [23 x i8] c"HDMI_NV_PDISP_SOR_PLL0\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"HDMI_NV_PDISP_SOR_PLL1\00", align 1
@.str.117 = private unnamed_addr constant [23 x i8] c"HDMI_NV_PDISP_SOR_PLL2\00", align 1
@.str.118 = private unnamed_addr constant [23 x i8] c"HDMI_NV_PDISP_SOR_CSTM\00", align 1
@.str.119 = private unnamed_addr constant [23 x i8] c"HDMI_NV_PDISP_SOR_LVDS\00", align 1
@.str.120 = private unnamed_addr constant [23 x i8] c"HDMI_NV_PDISP_SOR_CRCA\00", align 1
@.str.121 = private unnamed_addr constant [23 x i8] c"HDMI_NV_PDISP_SOR_CRCB\00", align 1
@.str.122 = private unnamed_addr constant [24 x i8] c"HDMI_NV_PDISP_SOR_BLANK\00", align 1
@.str.123 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_SOR_SEQ_CTL\00", align 1
@.str.124 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(0)\00", align 1
@.str.125 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(1)\00", align 1
@.str.126 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(2)\00", align 1
@.str.127 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(3)\00", align 1
@.str.128 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(4)\00", align 1
@.str.129 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(5)\00", align 1
@.str.130 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(6)\00", align 1
@.str.131 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(7)\00", align 1
@.str.132 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(8)\00", align 1
@.str.133 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(9)\00", align 1
@.str.134 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(10)\00", align 1
@.str.135 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(11)\00", align 1
@.str.136 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(12)\00", align 1
@.str.137 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(13)\00", align 1
@.str.138 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(14)\00", align 1
@.str.139 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_SOR_SEQ_INST(15)\00", align 1
@.str.140 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_SOR_VCRCA0\00", align 1
@.str.141 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_SOR_VCRCA1\00", align 1
@.str.142 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_SOR_CCRCA0\00", align 1
@.str.143 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_SOR_CCRCA1\00", align 1
@.str.144 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_SOR_EDATAA0\00", align 1
@.str.145 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_SOR_EDATAA1\00", align 1
@.str.146 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_SOR_COUNTA0\00", align 1
@.str.147 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_SOR_COUNTA1\00", align 1
@.str.148 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_SOR_DEBUGA0\00", align 1
@.str.149 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_SOR_DEBUGA1\00", align 1
@.str.150 = private unnamed_addr constant [23 x i8] c"HDMI_NV_PDISP_SOR_TRIG\00", align 1
@.str.151 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_SOR_MSCHECK\00", align 1
@.str.152 = private unnamed_addr constant [37 x i8] c"HDMI_NV_PDISP_SOR_LANE_DRIVE_CURRENT\00", align 1
@.str.153 = private unnamed_addr constant [27 x i8] c"HDMI_NV_PDISP_AUDIO_DEBUG0\00", align 1
@.str.154 = private unnamed_addr constant [27 x i8] c"HDMI_NV_PDISP_AUDIO_DEBUG1\00", align 1
@.str.155 = private unnamed_addr constant [27 x i8] c"HDMI_NV_PDISP_AUDIO_DEBUG2\00", align 1
@.str.156 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_AUDIO_FS(0)\00", align 1
@.str.157 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_AUDIO_FS(1)\00", align 1
@.str.158 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_AUDIO_FS(2)\00", align 1
@.str.159 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_AUDIO_FS(3)\00", align 1
@.str.160 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_AUDIO_FS(4)\00", align 1
@.str.161 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_AUDIO_FS(5)\00", align 1
@.str.162 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_AUDIO_FS(6)\00", align 1
@.str.163 = private unnamed_addr constant [32 x i8] c"HDMI_NV_PDISP_AUDIO_PULSE_WIDTH\00", align 1
@.str.164 = private unnamed_addr constant [30 x i8] c"HDMI_NV_PDISP_AUDIO_THRESHOLD\00", align 1
@.str.165 = private unnamed_addr constant [27 x i8] c"HDMI_NV_PDISP_AUDIO_CNTRL0\00", align 1
@.str.166 = private unnamed_addr constant [22 x i8] c"HDMI_NV_PDISP_AUDIO_N\00", align 1
@.str.167 = private unnamed_addr constant [33 x i8] c"HDMI_NV_PDISP_HDCPRIF_ROM_TIMING\00", align 1
@.str.168 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_SOR_REFCLK\00", align 1
@.str.169 = private unnamed_addr constant [26 x i8] c"HDMI_NV_PDISP_CRC_CONTROL\00", align 1
@.str.170 = private unnamed_addr constant [28 x i8] c"HDMI_NV_PDISP_INPUT_CONTROL\00", align 1
@.str.171 = private unnamed_addr constant [22 x i8] c"HDMI_NV_PDISP_SCRATCH\00", align 1
@.str.172 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_PE_CURRENT\00", align 1
@.str.173 = private unnamed_addr constant [23 x i8] c"HDMI_NV_PDISP_KEY_CTRL\00", align 1
@.str.174 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_KEY_DEBUG0\00", align 1
@.str.175 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_KEY_DEBUG1\00", align 1
@.str.176 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_KEY_DEBUG2\00", align 1
@.str.177 = private unnamed_addr constant [29 x i8] c"HDMI_NV_PDISP_KEY_HDCP_KEY_0\00", align 1
@.str.178 = private unnamed_addr constant [29 x i8] c"HDMI_NV_PDISP_KEY_HDCP_KEY_1\00", align 1
@.str.179 = private unnamed_addr constant [29 x i8] c"HDMI_NV_PDISP_KEY_HDCP_KEY_2\00", align 1
@.str.180 = private unnamed_addr constant [29 x i8] c"HDMI_NV_PDISP_KEY_HDCP_KEY_3\00", align 1
@.str.181 = private unnamed_addr constant [32 x i8] c"HDMI_NV_PDISP_KEY_HDCP_KEY_TRIG\00", align 1
@.str.182 = private unnamed_addr constant [29 x i8] c"HDMI_NV_PDISP_KEY_SKEY_INDEX\00", align 1
@.str.183 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_SOR_AUDIO_CNTRL0\00", align 1
@.str.184 = private unnamed_addr constant [31 x i8] c"HDMI_NV_PDISP_SOR_AUDIO_SPARE0\00", align 1
@.str.185 = private unnamed_addr constant [43 x i8] c"HDMI_NV_PDISP_SOR_AUDIO_HDA_CODEC_SCRATCH0\00", align 1
@.str.186 = private unnamed_addr constant [43 x i8] c"HDMI_NV_PDISP_SOR_AUDIO_HDA_CODEC_SCRATCH1\00", align 1
@.str.187 = private unnamed_addr constant [38 x i8] c"HDMI_NV_PDISP_SOR_AUDIO_HDA_ELD_BUFWR\00", align 1
@.str.188 = private unnamed_addr constant [37 x i8] c"HDMI_NV_PDISP_SOR_AUDIO_HDA_PRESENSE\00", align 1
@.str.189 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_INT_STATUS\00", align 1
@.str.190 = private unnamed_addr constant [23 x i8] c"HDMI_NV_PDISP_INT_MASK\00", align 1
@.str.191 = private unnamed_addr constant [25 x i8] c"HDMI_NV_PDISP_INT_ENABLE\00", align 1
@.str.192 = private unnamed_addr constant [34 x i8] c"HDMI_NV_PDISP_SOR_IO_PEAK_CURRENT\00", align 1
@.str.193 = private unnamed_addr constant [23 x i8] c"failed to suspend: %d\0A\00", align 1
@__tracepoint_dc_readl = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dc_writel = external dso_local global %struct.tracepoint, align 4
@.str.194 = private unnamed_addr constant [22 x i8] c"failed to resume: %d\0A\00", align 1
@.str.195 = private unnamed_addr constant [40 x i8] c"failed to set HDMI clock frequency: %d\0A\00", align 1
@.str.196 = private unnamed_addr constant [25 x i8] c"HDMI clock rate: %lu Hz\0A\00", align 1
@.str.197 = private unnamed_addr constant [36 x i8] c"failed to setup AVI infoframe: %zd\0A\00", align 1
@.str.198 = private unnamed_addr constant [35 x i8] c"failed to pack AVI infoframe: %zd\0A\00", align 1
@.str.199 = private unnamed_addr constant [38 x i8] c"failed to pack vendor infoframe: %zd\0A\00", align 1
@.str.200 = private unnamed_addr constant [32 x i8] c"failed to setup CRTC state: %d\0A\00", align 1
@tegra_hdmi_codec_ops = internal constant %struct.hdmi_codec_ops { ptr @tegra_hdmi_audio_startup, ptr @tegra_hdmi_hw_params, ptr null, ptr @tegra_hdmi_audio_shutdown, ptr null, ptr null, ptr null, ptr null, i8 0 }, align 4
@.str.201 = private unnamed_addr constant [17 x i8] c"hdmi-audio-codec\00", align 1
@.str.202 = private unnamed_addr constant [28 x i8] c"failed to assert reset: %d\0A\00", align 1
@.str.203 = private unnamed_addr constant [30 x i8] c"failed to get runtime PM: %d\0A\00", align 1
@.str.204 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@.str.205 = private unnamed_addr constant [30 x i8] c"failed to deassert reset: %d\0A\00", align 1
@.str.206 = private unnamed_addr constant [40 x i8] c"failed to unregister host1x client: %d\0A\00", align 1
@tegra124_hdmi_config = internal constant %struct.tegra_hdmi_config { ptr @tegra124_tmds_config, i32 4, i32 210, i32 -2147483648, i8 1, i8 1, i8 1 }, align 4
@tegra114_hdmi_config = internal constant %struct.tegra_hdmi_config { ptr @tegra114_tmds_config, i32 4, i32 210, i32 -2147483648, i8 1, i8 1, i8 1 }, align 4
@tegra30_hdmi_config = internal constant %struct.tegra_hdmi_config { ptr @tegra30_tmds_config, i32 3, i32 126, i32 -2147483648, i8 0, i8 1, i8 0 }, align 4
@tegra20_hdmi_config = internal constant %struct.tegra_hdmi_config { ptr @tegra20_tmds_config, i32 2, i32 126, i32 -2147483648, i8 0, i8 0, i8 0 }, align 4
@tegra124_tmds_config = internal constant [4 x %struct.tmds_config] [%struct.tmds_config { i32 27000000, i32 16789520, i32 3145728, i32 0, i32 437918234, i32 0 }, %struct.tmds_config { i32 74250000, i32 16789776, i32 271581184, i32 252645135, i32 437918234, i32 0 }, %struct.tmds_config { i32 148500000, i32 16790288, i32 271581184, i32 168430090, i32 522133279, i32 0 }, %struct.tmds_config { i32 -1, i32 16793360, i32 3149568, i32 0, i32 809451327, i32 68095759 }], align 4
@tegra114_tmds_config = internal constant [4 x %struct.tmds_config] [%struct.tmds_config { i32 27000000, i32 16789520, i32 3145728, i32 0, i32 437918234, i32 0 }, %struct.tmds_config { i32 74250000, i32 16789776, i32 271581184, i32 252645135, i32 437918234, i32 0 }, %struct.tmds_config { i32 148500000, i32 16790288, i32 271581184, i32 168430090, i32 522133279, i32 0 }, %struct.tmds_config { i32 -1, i32 16793360, i32 3149568, i32 0, i32 809451327, i32 68095759 }], align 4
@tegra30_tmds_config = internal constant [3 x %struct.tmds_config] [%struct.tmds_config { i32 27000000, i32 16789520, i32 256, i32 0, i32 168430090, i32 0 }, %struct.tmds_config { i32 74250000, i32 16789776, i32 268435712, i32 168430090, i32 168430090, i32 0 }, %struct.tmds_config { i32 -1, i32 16790288, i32 268435712, i32 168430090, i32 168430090, i32 0 }], align 4
@tegra20_tmds_config = internal constant [2 x %struct.tmds_config] [%struct.tmds_config { i32 27000000, i32 822095888, i32 256, i32 0, i32 252645135, i32 0 }, %struct.tmds_config { i32 -1, i32 822096144, i32 268435712, i32 202116108, i32 252645135, i32 0 }], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.tegra_core_opp_params, align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1272, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %110, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_device_get_match_data(ptr noundef %3) #7
  %8 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 11
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 2
  store ptr %3, ptr %9, align 8
  %10 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 12
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 15
  store i8 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 16
  store i8 0, ptr %12, align 1
  %13 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @tegra_hdmi_probe.__key) #7
  %14 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #7
  %15 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 9
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  %18 = load ptr, ptr %15, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %110

20:                                               ; preds = %6
  %21 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %22 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 10
  store ptr %21, ptr %22, align 8
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  %25 = load ptr, ptr %22, align 8
  %26 = ptrtoint ptr %25 to i32
  br label %110

27:                                               ; preds = %20
  %28 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.6) #7
  %29 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 8
  store ptr %28, ptr %29, align 8
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = ptrtoint ptr %28 to i32
  br label %110

33:                                               ; preds = %27
  %34 = load ptr, ptr %15, align 4
  %35 = tail call i32 @clk_set_parent(ptr noundef %34, ptr noundef %28) #7
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %35) #8
  br label %110

38:                                               ; preds = %33
  %39 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  %40 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 3
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  %42 = ptrtoint ptr %39 to i32
  %43 = select i1 %41, i32 %42, i32 0
  switch i32 %43, label %45 [
    i32 0, label %47
    i32 -517, label %44
  ]

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %38
  %46 = phi ptr [ @.str.8, %44 ], [ @.str.1, %38 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %46, ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %43) #8
  br label %110

47:                                               ; preds = %38
  %48 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.10) #7
  %49 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 4
  store ptr %48, ptr %49, align 8
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  %51 = ptrtoint ptr %48 to i32
  %52 = select i1 %50, i32 %51, i32 0
  switch i32 %52, label %54 [
    i32 0, label %56
    i32 -517, label %53
  ]

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi ptr [ @.str.8, %53 ], [ @.str.1, %47 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %55, ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %52) #8
  br label %110

56:                                               ; preds = %47
  %57 = tail call ptr @devm_regulator_get(ptr noundef %3, ptr noundef nonnull @.str.12) #7
  %58 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 5
  store ptr %57, ptr %58, align 4
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  %60 = ptrtoint ptr %57 to i32
  %61 = select i1 %59, i32 %60, i32 0
  switch i32 %61, label %63 [
    i32 0, label %65
    i32 -517, label %62
  ]

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %56
  %64 = phi ptr [ @.str.8, %62 ], [ @.str.1, %56 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %64, ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %61) #8
  br label %110

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 1
  %67 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 1, i32 1
  store ptr %3, ptr %67, align 4
  %68 = tail call i32 @tegra_output_probe(ptr noundef %66) #7
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %110, label %70

70:                                               ; preds = %65
  %71 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %72 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %71) #7
  %73 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 6
  store ptr %72, ptr %73, align 8
  %74 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = ptrtoint ptr %72 to i32
  br label %110

77:                                               ; preds = %70
  %78 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %110, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.tegra_hdmi, ptr %4, i32 0, i32 7
  store i32 %78, ptr %81, align 4
  %82 = load ptr, ptr %9, align 8
  %83 = getelementptr inbounds %struct.device, ptr %82, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load ptr, ptr %82, align 4
  br label %88

88:                                               ; preds = %86, %80
  %89 = phi ptr [ %87, %86 ], [ %84, %80 ]
  %90 = tail call i32 @devm_request_threaded_irq(ptr noundef %82, i32 noundef %78, ptr noundef nonnull @tegra_hdmi_irq, ptr noundef null, i32 noundef 0, ptr noundef %89, ptr noundef nonnull %4) #7
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, ptr %81, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %93, i32 noundef %90) #8
  br label %110

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %95, align 8
  %96 = tail call i32 @devm_pm_runtime_enable(ptr noundef %3) #7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 1, ptr %2, align 1
  %99 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %3, ptr noundef nonnull %2) #7
  %100 = icmp eq i32 %99, -19
  %101 = select i1 %100, i32 0, i32 %99
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  store volatile ptr %4, ptr %4, align 4
  %104 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %104, align 4
  %105 = getelementptr inbounds %struct.host1x_client, ptr %4, i32 0, i32 4
  store ptr @hdmi_client_ops, ptr %105, align 4
  %106 = getelementptr inbounds %struct.host1x_client, ptr %4, i32 0, i32 2
  store ptr %3, ptr %106, align 4
  call void @__host1x_client_init(ptr noundef nonnull %4, ptr noundef nonnull @tegra_hdmi_probe.__key.15) #7
  %107 = call i32 @__host1x_client_register(ptr noundef nonnull %4) #7
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %107) #8
  br label %110

110:                                              ; preds = %109, %103, %98, %94, %92, %77, %75, %65, %63, %54, %45, %37, %31, %24, %17, %1
  %111 = phi i32 [ %19, %17 ], [ %26, %24 ], [ %32, %31 ], [ %35, %37 ], [ %43, %45 ], [ %52, %54 ], [ %61, %63 ], [ %76, %75 ], [ %90, %92 ], [ %107, %109 ], [ -12, %1 ], [ %68, %65 ], [ %78, %77 ], [ %96, %94 ], [ %101, %98 ], [ 0, %103 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @host1x_client_unregister(ptr noundef %3) #7
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.206, i32 noundef %4) #8
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_hdmi, ptr %3, i32 0, i32 1
  tail call void @tegra_output_remove(ptr noundef %9) #7
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %4, %6 ], [ 0, %8 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 816
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %7 = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %23 = tail call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %8, i32 noundef 204, i32 noundef %6) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %24 = load ptr, ptr %7, align 8
  br label %25

25:                                               ; preds = %22, %11, %2
  %26 = phi ptr [ %8, %2 ], [ %8, %11 ], [ %24, %22 ]
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %41 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %26, i32 noundef 204, i32 noundef %6) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %42

42:                                               ; preds = %40, %29, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr i8, ptr %43, i32 816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %6) #7, !srcloc !15
  %45 = and i32 %6, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %78, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr i8, ptr %48, i32 744
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %51 = load ptr, ptr %7, align 8
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %66 = tail call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %51, i32 noundef 186, i32 noundef %50) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  br label %67

67:                                               ; preds = %65, %54, %47
  %68 = and i32 %50, 1073741824
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = and i32 %50, 65535
  %72 = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 13
  tail call void @tegra_hda_parse_format(i32 noundef %71, ptr noundef %72) #7
  %73 = tail call fastcc i32 @tegra_hdmi_setup_audio(ptr noundef %1) #7
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  tail call fastcc void @tegra_hdmi_disable_audio_infoframe(ptr noundef %1) #7
  tail call fastcc void @tegra_hdmi_disable_audio(ptr noundef %1) #7
  br label %78

76:                                               ; preds = %70
  tail call fastcc void @tegra_hdmi_setup_audio_infoframe(ptr noundef %1) #7
  tail call fastcc void @tegra_hdmi_enable_audio_infoframe(ptr noundef %1) #7
  tail call fastcc void @tegra_hdmi_enable_audio(ptr noundef %1) #7
  br label %78

77:                                               ; preds = %67
  tail call fastcc void @tegra_hdmi_disable_audio_infoframe(ptr noundef %1)
  tail call fastcc void @tegra_hdmi_disable_audio(ptr noundef %1)
  br label %78

78:                                               ; preds = %77, %76, %75, %42
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_hda_parse_format(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_hdmi_disable_audio_infoframe(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 120
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %6 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %22 = tail call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %7, i32 noundef 30, i32 noundef %5) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %23 = load ptr, ptr %6, align 8
  br label %24

24:                                               ; preds = %21, %10, %1
  %25 = phi ptr [ %7, %1 ], [ %7, %10 ], [ %23, %21 ]
  %26 = and i32 %5, -2
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %41 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %25, i32 noundef 30, i32 noundef %26) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %42

42:                                               ; preds = %40, %29, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %26) #7, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_hdmi_disable_audio(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 168
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %6 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %22 = tail call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %7, i32 noundef 42, i32 noundef %5) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %23 = load ptr, ptr %6, align 8
  br label %24

24:                                               ; preds = %21, %10, %1
  %25 = phi ptr [ %7, %1 ], [ %7, %10 ], [ %23, %21 ]
  %26 = and i32 %5, -65537
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %41 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %25, i32 noundef 42, i32 noundef %26) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %42

42:                                               ; preds = %40, %29, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %26) #7, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hdmi_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_hdmi_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_hdmi_setup_audio(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %10 [
    i32 2, label %4
    i32 1, label %11
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_hdmi_config, ptr %6, i32 0, i32 5
  %8 = load i8, ptr %7, align 1, !range !16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %419, label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %4, %1
  %12 = phi i32 [ 2097152, %4 ], [ 1048576, %1 ], [ 0, %10 ]
  %13 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tegra_hdmi_config, ptr %14, i32 0, i32 5
  %16 = load i8, ptr %15, align 1, !range !16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 13, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  %22 = select i1 %21, i32 536870912, i32 0
  %23 = or i32 %22, %12
  %24 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %18
  %29 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %40 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %25, i32 noundef 172, i32 noundef %23) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %41

41:                                               ; preds = %39, %28, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %42 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 6
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr i8, ptr %43, i32 688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %23) #7, !srcloc !15
  %45 = load ptr, ptr %13, align 4
  %46 = getelementptr inbounds %struct.tegra_hdmi_config, ptr %45, i32 0, i32 5
  %47 = load i8, ptr %46, align 1, !range !16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41, %11
  %50 = or i32 %12, -1073741818
  br label %51

51:                                               ; preds = %49, %41
  %52 = phi i32 [ %50, %49 ], [ -1073741818, %41 ]
  %53 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %69 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %54, i32 noundef 139, i32 noundef %52) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %70

70:                                               ; preds = %68, %57, %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %71 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 6
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr i8, ptr %72, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %52) #7, !srcloc !15
  %74 = load ptr, ptr %13, align 4
  %75 = getelementptr inbounds %struct.tegra_hdmi_config, ptr %74, i32 0, i32 6
  %76 = load i8, ptr %75, align 2, !range !16
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %120, label %78

78:                                               ; preds = %70
  %79 = load ptr, ptr %71, align 8
  %80 = getelementptr i8, ptr %79, i32 696
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %82 = load ptr, ptr %53, align 8
  %83 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %78
  %86 = tail call ptr @llvm.thread.pointer() #7
  %87 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 8
  %89 = lshr i32 %88, 5
  %90 = getelementptr i32, ptr @__cpu_online_mask, i32 %89
  %91 = load volatile i32, ptr %90, align 4
  %92 = and i32 %88, 31
  %93 = shl nuw i32 1, %92
  %94 = and i32 %93, %91
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %85
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %97 = tail call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %82, i32 noundef 174, i32 noundef %81) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %98 = load ptr, ptr %53, align 8
  br label %99

99:                                               ; preds = %96, %85, %78
  %100 = phi ptr [ %82, %78 ], [ %82, %85 ], [ %98, %96 ]
  %101 = or i32 %81, 134217728
  %102 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %99
  %105 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %116 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %100, i32 noundef 174, i32 noundef %101) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %117

117:                                              ; preds = %115, %104, %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %118 = load ptr, ptr %71, align 8
  %119 = getelementptr i8, ptr %118, i32 696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %101) #7, !srcloc !15
  br label %120

120:                                              ; preds = %117, %70
  %121 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 13
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 14
  %124 = load i32, ptr %123, align 4
  %125 = shl i32 %122, 7
  %126 = udiv i32 %125, 1500
  %127 = udiv i32 %125, 300
  %128 = udiv i32 %125, 1000
  %129 = icmp ugt i32 %126, %127
  br i1 %129, label %196, label %130

130:                                              ; preds = %120
  %131 = zext i32 %124 to i64
  %132 = shl nuw nsw i64 %131, 16
  br label %133

133:                                              ; preds = %185, %130
  %134 = phi i32 [ -1, %130 ], [ %186, %185 ]
  %135 = phi i32 [ 0, %130 ], [ %187, %185 ]
  %136 = phi i32 [ 0, %130 ], [ %188, %185 ]
  %137 = phi i32 [ -1, %130 ], [ %189, %185 ]
  %138 = phi i64 [ 9223372036854775807, %130 ], [ %191, %185 ]
  %139 = phi i32 [ -1, %130 ], [ %190, %185 ]
  %140 = phi i32 [ %126, %130 ], [ %192, %185 ]
  %141 = zext i32 %140 to i64
  %142 = mul i64 %141, 1572864000000
  %143 = icmp ult i64 %142, 4294967296
  br i1 %143, label %144, label %148, !prof !17

144:                                              ; preds = %133
  %145 = trunc i64 %142 to i32
  %146 = udiv i32 %145, %125
  %147 = zext i32 %146 to i64
  br label %151

148:                                              ; preds = %133
  %149 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %125, i64 %142) #9, !srcloc !18
  %150 = extractvalue { i64, i64 } %149, 1
  br label %151

151:                                              ; preds = %148, %144
  %152 = phi i64 [ %147, %144 ], [ %150, %148 ]
  %153 = and i64 %152, 65535
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %185

155:                                              ; preds = %151
  %156 = mul i64 %132, %141
  %157 = icmp ult i64 %156, 4294967296
  br i1 %157, label %158, label %162, !prof !17

158:                                              ; preds = %155
  %159 = trunc i64 %156 to i32
  %160 = udiv i32 %159, %125
  %161 = zext i32 %160 to i64
  br label %165

162:                                              ; preds = %155
  %163 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %125, i64 %156) #9, !srcloc !18
  %164 = extractvalue { i64, i64 } %163, 1
  br label %165

165:                                              ; preds = %162, %158
  %166 = phi i64 [ %161, %158 ], [ %164, %162 ]
  %167 = and i64 %166, -65536
  %168 = shl i64 %166, 1
  %169 = and i64 %168, 65536
  %170 = add i64 %169, %167
  %171 = sub nsw i32 %140, %128
  %172 = tail call i32 @llvm.abs.i32(i32 %171, i1 false) #7
  %173 = sub i64 %166, %170
  %174 = tail call i64 @llvm.abs.i64(i64 %173, i1 false) #7
  %175 = icmp slt i64 %174, %138
  br i1 %175, label %180, label %176

176:                                              ; preds = %165
  %177 = icmp eq i64 %174, %138
  %178 = icmp ult i32 %172, %139
  %179 = select i1 %177, i1 %178, i1 false
  br i1 %179, label %180, label %185

180:                                              ; preds = %176, %165
  %181 = lshr exact i64 %170, 16
  %182 = trunc i64 %181 to i32
  %183 = lshr i64 %152, 16
  %184 = trunc i64 %183 to i32
  br label %185

185:                                              ; preds = %180, %176, %151
  %186 = phi i32 [ %140, %180 ], [ %134, %176 ], [ %134, %151 ]
  %187 = phi i32 [ %182, %180 ], [ %135, %176 ], [ %135, %151 ]
  %188 = phi i32 [ %184, %180 ], [ %136, %176 ], [ %136, %151 ]
  %189 = phi i32 [ %140, %180 ], [ %137, %176 ], [ %137, %151 ]
  %190 = phi i32 [ %172, %180 ], [ %139, %176 ], [ %139, %151 ]
  %191 = phi i64 [ %174, %180 ], [ %138, %176 ], [ %138, %151 ]
  %192 = add nuw nsw i32 %140, 1
  %193 = icmp eq i32 %140, %127
  br i1 %193, label %194, label %133

194:                                              ; preds = %185
  %195 = icmp eq i32 %189, -1
  br i1 %195, label %196, label %198

196:                                              ; preds = %194, %120
  %197 = load ptr, ptr %53, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.18, i32 noundef %122, i32 noundef %124) #8
  br label %419

198:                                              ; preds = %194
  %199 = load ptr, ptr %53, align 8
  %200 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %198
  %203 = tail call ptr @llvm.thread.pointer() #7
  %204 = getelementptr inbounds %struct.thread_info, ptr %203, i32 0, i32 2
  %205 = load i32, ptr %204, align 8
  %206 = lshr i32 %205, 5
  %207 = getelementptr i32, ptr @__cpu_online_mask, i32 %206
  %208 = load volatile i32, ptr %207, align 4
  %209 = and i32 %205, 31
  %210 = shl nuw i32 1, %209
  %211 = and i32 %210, %208
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %202
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %214 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %199, i32 noundef 53, i32 noundef 0) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %215

215:                                              ; preds = %213, %202, %198
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %216 = load ptr, ptr %71, align 8
  %217 = getelementptr i8, ptr %216, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 0) #7, !srcloc !15
  %218 = add i32 %186, 1048575
  %219 = and i32 %218, 1048575
  %220 = or i32 %219, 17825792
  %221 = load ptr, ptr %53, align 8
  %222 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %237

224:                                              ; preds = %215
  %225 = tail call ptr @llvm.thread.pointer() #7
  %226 = getelementptr inbounds %struct.thread_info, ptr %225, i32 0, i32 2
  %227 = load i32, ptr %226, align 8
  %228 = lshr i32 %227, 5
  %229 = getelementptr i32, ptr @__cpu_online_mask, i32 %228
  %230 = load volatile i32, ptr %229, align 4
  %231 = and i32 %227, 31
  %232 = shl nuw i32 1, %231
  %233 = and i32 %232, %230
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %224
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %236 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %221, i32 noundef 140, i32 noundef %220) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %237

237:                                              ; preds = %235, %224, %215
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %238 = load ptr, ptr %71, align 8
  %239 = getelementptr i8, ptr %238, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %220) #7, !srcloc !15
  %240 = and i32 %186, 16777215
  %241 = or i32 %240, -2147483648
  %242 = load ptr, ptr %53, align 8
  %243 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %237
  %246 = tail call ptr @llvm.thread.pointer() #7
  %247 = getelementptr inbounds %struct.thread_info, ptr %246, i32 0, i32 2
  %248 = load i32, ptr %247, align 8
  %249 = lshr i32 %248, 5
  %250 = getelementptr i32, ptr @__cpu_online_mask, i32 %249
  %251 = load volatile i32, ptr %250, align 4
  %252 = and i32 %248, 31
  %253 = shl nuw i32 1, %252
  %254 = and i32 %253, %251
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %245
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %257 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %242, i32 noundef 57, i32 noundef %241) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %258

258:                                              ; preds = %256, %245, %237
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %259 = load ptr, ptr %71, align 8
  %260 = getelementptr i8, ptr %259, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %260, i32 %241) #7, !srcloc !15
  %261 = shl i32 %187, 8
  %262 = load ptr, ptr %53, align 8
  %263 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %278

265:                                              ; preds = %258
  %266 = tail call ptr @llvm.thread.pointer() #7
  %267 = getelementptr inbounds %struct.thread_info, ptr %266, i32 0, i32 2
  %268 = load i32, ptr %267, align 8
  %269 = lshr i32 %268, 5
  %270 = getelementptr i32, ptr @__cpu_online_mask, i32 %269
  %271 = load volatile i32, ptr %270, align 4
  %272 = and i32 %268, 31
  %273 = shl nuw i32 1, %272
  %274 = and i32 %273, %271
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %265
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %277 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %262, i32 noundef 56, i32 noundef %261) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %278

278:                                              ; preds = %276, %265, %258
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %279 = load ptr, ptr %71, align 8
  %280 = getelementptr i8, ptr %279, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 %261) #7, !srcloc !15
  %281 = load ptr, ptr %53, align 8
  %282 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %284, label %297

284:                                              ; preds = %278
  %285 = tail call ptr @llvm.thread.pointer() #7
  %286 = getelementptr inbounds %struct.thread_info, ptr %285, i32 0, i32 2
  %287 = load i32, ptr %286, align 8
  %288 = lshr i32 %287, 5
  %289 = getelementptr i32, ptr @__cpu_online_mask, i32 %288
  %290 = load volatile i32, ptr %289, align 4
  %291 = and i32 %287, 31
  %292 = shl nuw i32 1, %291
  %293 = and i32 %292, %290
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %284
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %296 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %281, i32 noundef 79, i32 noundef 65539) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %297

297:                                              ; preds = %295, %284, %278
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %298 = load ptr, ptr %71, align 8
  %299 = getelementptr i8, ptr %298, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %299, i32 65539) #7, !srcloc !15
  %300 = load ptr, ptr %71, align 8
  %301 = getelementptr i8, ptr %300, i32 560
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %301) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %303 = load ptr, ptr %53, align 8
  %304 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %320

306:                                              ; preds = %297
  %307 = tail call ptr @llvm.thread.pointer() #7
  %308 = getelementptr inbounds %struct.thread_info, ptr %307, i32 0, i32 2
  %309 = load i32, ptr %308, align 8
  %310 = lshr i32 %309, 5
  %311 = getelementptr i32, ptr @__cpu_online_mask, i32 %310
  %312 = load volatile i32, ptr %311, align 4
  %313 = and i32 %309, 31
  %314 = shl nuw i32 1, %313
  %315 = and i32 %314, %312
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %320, label %317

317:                                              ; preds = %306
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %318 = tail call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %303, i32 noundef 140, i32 noundef %302) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %319 = load ptr, ptr %53, align 8
  br label %320

320:                                              ; preds = %317, %306, %297
  %321 = phi ptr [ %303, %297 ], [ %303, %306 ], [ %319, %317 ]
  %322 = and i32 %302, -1048577
  %323 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %338

325:                                              ; preds = %320
  %326 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %337 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %321, i32 noundef 140, i32 noundef %322) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %338

338:                                              ; preds = %336, %325, %320
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %339 = load ptr, ptr %71, align 8
  %340 = getelementptr i8, ptr %339, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %340, i32 %322) #7, !srcloc !15
  %341 = load ptr, ptr %13, align 4
  %342 = getelementptr inbounds %struct.tegra_hdmi_config, ptr %341, i32 0, i32 5
  %343 = load i8, ptr %342, align 1, !range !16
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %377, label %345

345:                                              ; preds = %338
  %346 = load i32, ptr %121, align 4
  switch i32 %346, label %377 [
    i32 32000, label %353
    i32 44100, label %347
    i32 48000, label %348
    i32 88200, label %349
    i32 96000, label %350
    i32 176400, label %351
    i32 192000, label %352
  ]

347:                                              ; preds = %345
  br label %353

348:                                              ; preds = %345
  br label %353

349:                                              ; preds = %345
  br label %353

350:                                              ; preds = %345
  br label %353

351:                                              ; preds = %345
  br label %353

352:                                              ; preds = %345
  br label %353

353:                                              ; preds = %352, %351, %350, %349, %348, %347, %345
  %354 = phi i32 [ 0, %345 ], [ 1, %347 ], [ 2, %348 ], [ 3, %349 ], [ 4, %350 ], [ 5, %351 ], [ 6, %352 ]
  %355 = getelementptr [7 x %struct.anon.84], ptr @tegra_hdmi_write_aval.regs, i32 0, i32 %354, i32 1
  %356 = load i32, ptr %355, align 4
  %357 = load ptr, ptr %53, align 8
  %358 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %359 = icmp sgt i32 %358, 0
  br i1 %359, label %360, label %373

360:                                              ; preds = %353
  %361 = tail call ptr @llvm.thread.pointer() #7
  %362 = getelementptr inbounds %struct.thread_info, ptr %361, i32 0, i32 2
  %363 = load i32, ptr %362, align 8
  %364 = lshr i32 %363, 5
  %365 = getelementptr i32, ptr @__cpu_online_mask, i32 %364
  %366 = load volatile i32, ptr %365, align 4
  %367 = and i32 %363, 31
  %368 = shl nuw i32 1, %367
  %369 = and i32 %368, %366
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %373, label %371

371:                                              ; preds = %360
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %372 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %357, i32 noundef %356, i32 noundef %188) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %373

373:                                              ; preds = %371, %360, %353
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %374 = load ptr, ptr %71, align 8
  %375 = shl i32 %356, 2
  %376 = getelementptr i8, ptr %374, i32 %375
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %376, i32 %188) #7, !srcloc !15
  br label %377

377:                                              ; preds = %373, %345, %338
  br label %378

378:                                              ; preds = %413, %377
  %379 = phi i32 [ %417, %413 ], [ 0, %377 ]
  %380 = getelementptr [7 x i32], ptr @__const.tegra_hdmi_setup_audio_fs_tables.freqs, i32 0, i32 %379
  %381 = load i32, ptr %380, align 4
  %382 = add nsw i32 %379, -5
  %383 = icmp ult i32 %382, 2
  %384 = add nsw i32 %379, -3
  %385 = icmp ult i32 %384, 4
  %386 = select i1 %385, i32 6, i32 9
  %387 = select i1 %383, i32 2, i32 %386
  %388 = shl i32 %381, 7
  %389 = udiv i32 1728000000, %388
  %390 = sub nsw i32 %389, %387
  %391 = and i32 %390, 4095
  %392 = add nuw nsw i32 %387, %389
  %393 = shl i32 %392, 16
  %394 = and i32 %393, 268369920
  %395 = or i32 %394, %391
  %396 = add nuw nsw i32 %379, 130
  %397 = load ptr, ptr %53, align 8
  %398 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %399 = icmp sgt i32 %398, 0
  br i1 %399, label %400, label %413

400:                                              ; preds = %378
  %401 = tail call ptr @llvm.thread.pointer() #7
  %402 = getelementptr inbounds %struct.thread_info, ptr %401, i32 0, i32 2
  %403 = load i32, ptr %402, align 8
  %404 = lshr i32 %403, 5
  %405 = getelementptr i32, ptr @__cpu_online_mask, i32 %404
  %406 = load volatile i32, ptr %405, align 4
  %407 = and i32 %403, 31
  %408 = shl nuw i32 1, %407
  %409 = and i32 %408, %406
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %413, label %411

411:                                              ; preds = %400
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %412 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %397, i32 noundef %396, i32 noundef %395) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %413

413:                                              ; preds = %411, %400, %378
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %414 = load ptr, ptr %71, align 8
  %415 = shl nuw nsw i32 %396, 2
  %416 = getelementptr i8, ptr %414, i32 %415
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %416, i32 %395) #7, !srcloc !15
  %417 = add nuw nsw i32 %379, 1
  %418 = icmp eq i32 %417, 7
  br i1 %418, label %419, label %378

419:                                              ; preds = %413, %196, %4
  %420 = phi i32 [ -22, %196 ], [ -22, %4 ], [ 0, %413 ]
  ret i32 %420
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_hdmi_setup_audio_infoframe(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.hdmi_audio_infoframe, align 4
  %3 = alloca [14 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !19
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %3, i8 0, i32 14, i1 false), !annotation !19
  %4 = call i32 @hdmi_audio_infoframe_init(ptr noundef nonnull %2) #7
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.19, i32 noundef %4) #8
  br label %21

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 13, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %2, i32 0, i32 3
  store i8 %12, ptr %13, align 2
  %14 = call i32 @hdmi_audio_infoframe_pack(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 14) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.20, i32 noundef %14) #8
  br label %21

19:                                               ; preds = %9
  %20 = call i32 @llvm.umin.i32(i32 %14, i32 10)
  call fastcc void @tegra_hdmi_write_infopack(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %20)
  br label %21

21:                                               ; preds = %19, %16, %6
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_hdmi_enable_audio_infoframe(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 120
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %6 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %22 = tail call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %7, i32 noundef 30, i32 noundef %5) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %23 = load ptr, ptr %6, align 8
  br label %24

24:                                               ; preds = %21, %10, %1
  %25 = phi ptr [ %7, %1 ], [ %7, %10 ], [ %23, %21 ]
  %26 = or i32 %5, 1
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %41 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %25, i32 noundef 30, i32 noundef %26) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %42

42:                                               ; preds = %40, %29, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %26) #7, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_hdmi_enable_audio(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 168
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %6 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %22 = tail call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %7, i32 noundef 42, i32 noundef %5) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %23 = load ptr, ptr %6, align 8
  br label %24

24:                                               ; preds = %21, %10, %1
  %25 = phi ptr [ %7, %1 ], [ %7, %10 ], [ %23, %21 ]
  %26 = or i32 %5, 65536
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %41 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %25, i32 noundef 42, i32 noundef %26) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %42

42:                                               ; preds = %40, %29, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %26) #7, !srcloc !15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_hdmi_write_infopack(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
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
  %9 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.21, i32 noundef %8) #8
  br label %158

11:                                               ; preds = %6, %5, %3
  %12 = phi i32 [ 44, %6 ], [ 32, %5 ], [ 37, %3 ]
  %13 = zext i8 %4 to i32
  %14 = getelementptr i8, ptr %1, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or i32 %17, %13
  %19 = getelementptr i8, ptr %1, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 15
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 16
  %24 = or i32 %23, %18
  %25 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %11
  %30 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %41 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %26, i32 noundef %12, i32 noundef %24) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %42

42:                                               ; preds = %40, %29, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %43 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 6
  %44 = load ptr, ptr %43, align 8
  %45 = shl nuw nsw i32 %12, 2
  %46 = getelementptr i8, ptr %44, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %24) #7, !srcloc !15
  %47 = icmp ugt i32 %2, 3
  br i1 %47, label %48, label %158

48:                                               ; preds = %152, %42
  %49 = phi i32 [ %87, %152 ], [ %12, %42 ]
  %50 = phi i32 [ %156, %152 ], [ 3, %42 ]
  %51 = add i32 %49, 1
  %52 = sub i32 %2, %50
  %53 = tail call i32 @llvm.umin.i32(i32 %52, i32 4)
  %54 = getelementptr i8, ptr %1, i32 %50
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %85, label %56

56:                                               ; preds = %48
  %57 = add nsw i32 %53, -1
  %58 = getelementptr i8, ptr %54, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %57, 0
  br i1 %61, label %85, label %62

62:                                               ; preds = %56
  %63 = shl nuw nsw i32 %60, 8
  %64 = add nsw i32 %53, -2
  %65 = getelementptr i8, ptr %54, i32 %64
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %63, %67
  %69 = icmp eq i32 %64, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %62
  %71 = shl nuw nsw i32 %68, 8
  %72 = add nsw i32 %53, -3
  %73 = getelementptr i8, ptr %54, i32 %72
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %71, %75
  %77 = icmp eq i32 %72, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %70
  %79 = shl nuw i32 %76, 8
  %80 = add nsw i32 %53, -4
  %81 = getelementptr i8, ptr %54, i32 %80
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %79, %83
  br label %85

85:                                               ; preds = %78, %70, %62, %56, %48
  %86 = phi i32 [ 0, %48 ], [ %60, %56 ], [ %68, %62 ], [ %76, %70 ], [ %84, %78 ]
  %87 = add i32 %49, 2
  %88 = load ptr, ptr %25, align 8
  %89 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = tail call ptr @llvm.thread.pointer() #7
  %93 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %94 = load i32, ptr %93, align 8
  %95 = lshr i32 %94, 5
  %96 = getelementptr i32, ptr @__cpu_online_mask, i32 %95
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %94, 31
  %99 = shl nuw i32 1, %98
  %100 = and i32 %99, %97
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %91
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %103 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %88, i32 noundef %51, i32 noundef %86) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %104

104:                                              ; preds = %102, %91, %85
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %105 = load ptr, ptr %43, align 8
  %106 = shl i32 %51, 2
  %107 = getelementptr i8, ptr %105, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %86) #7, !srcloc !15
  %108 = sub i32 %52, %53
  %109 = tail call i32 @llvm.umin.i32(i32 %108, i32 3)
  %110 = add i32 %50, 4
  %111 = getelementptr i8, ptr %1, i32 %110
  %112 = icmp eq i32 %109, 0
  br i1 %112, label %134, label %113

113:                                              ; preds = %104
  %114 = add nsw i32 %109, -1
  %115 = getelementptr i8, ptr %111, i32 %114
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %114, 0
  br i1 %118, label %134, label %119

119:                                              ; preds = %113
  %120 = shl nuw nsw i32 %117, 8
  %121 = add nsw i32 %109, -2
  %122 = getelementptr i8, ptr %111, i32 %121
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %120, %124
  %126 = icmp eq i32 %121, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %119
  %128 = shl nuw nsw i32 %125, 8
  %129 = add nsw i32 %109, -3
  %130 = getelementptr i8, ptr %111, i32 %129
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %128, %132
  br label %134

134:                                              ; preds = %127, %119, %113, %104
  %135 = phi i32 [ 0, %104 ], [ %117, %113 ], [ %125, %119 ], [ %133, %127 ]
  %136 = load ptr, ptr %25, align 8
  %137 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %134
  %140 = tail call ptr @llvm.thread.pointer() #7
  %141 = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 2
  %142 = load i32, ptr %141, align 8
  %143 = lshr i32 %142, 5
  %144 = getelementptr i32, ptr @__cpu_online_mask, i32 %143
  %145 = load volatile i32, ptr %144, align 4
  %146 = and i32 %142, 31
  %147 = shl nuw i32 1, %146
  %148 = and i32 %147, %145
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %139
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %151 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %136, i32 noundef %87, i32 noundef %135) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %152

152:                                              ; preds = %150, %139, %134
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %153 = load ptr, ptr %43, align 8
  %154 = shl i32 %87, 2
  %155 = getelementptr i8, ptr %153, i32 %154
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %135) #7, !srcloc !15
  %156 = add i32 %50, 7
  %157 = icmp ult i32 %156, %2
  br i1 %157, label %48, label %158

158:                                              ; preds = %152, %42, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_init(ptr noundef %0) #0 {
  %2 = alloca %struct.platform_device_info, align 8
  %3 = alloca %struct.hdmi_codec_pdata, align 4
  %4 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 1, i32 1
  store ptr %9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 1, i32 10
  %13 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 1, i32 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %7, ptr noundef %12, ptr noundef nonnull @tegra_hdmi_connector_funcs, i32 noundef 11, ptr noundef %14) #7
  %16 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 1, i32 10, i32 35
  store ptr @tegra_hdmi_connector_helper_funcs, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 1, i32 10, i32 34
  store i32 3, ptr %17, align 8
  %18 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 1, i32 9
  %19 = tail call i32 @drm_simple_encoder_init(ptr noundef %7, ptr noundef %18, i32 noundef 2) #7
  %20 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 1, i32 9, i32 11
  store ptr @tegra_hdmi_encoder_helper_funcs, ptr %20, align 4
  %21 = tail call i32 @drm_connector_attach_encoder(ptr noundef %12, ptr noundef %18) #7
  %22 = tail call i32 @drm_connector_register(ptr noundef %12) #7
  %23 = tail call i32 @tegra_output_init(ptr noundef %7, ptr noundef %10) #7
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.22, i32 noundef %23) #8
  br label %91

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 1, i32 9, i32 6
  store i32 3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @regulator_enable(ptr noundef %30) #7
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.23, i32 noundef %31) #8
  br label %89

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 4
  %37 = load ptr, ptr %36, align 8
  %38 = tail call i32 @regulator_enable(ptr noundef %37) #7
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.24, i32 noundef %38) #8
  br label %85

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @regulator_enable(ptr noundef %45) #7
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.25, i32 noundef %46) #8
  br label %81

51:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %52 = getelementptr inbounds i8, ptr %3, i32 4
  store i64 2, ptr %52, align 4
  %53 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 11
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.tegra_hdmi_config, ptr %54, i32 0, i32 5
  %56 = load i8, ptr %55, align 1, !range !16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  store ptr @tegra_hdmi_codec_ops, ptr %3, align 4
  %59 = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %3, i32 0, i32 3
  store ptr %0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #7
  %62 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %62, i8 0, i32 48, i1 false) #7, !annotation !19
  store ptr %61, ptr %2, align 8
  %63 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 1
  store ptr null, ptr %63, align 4
  %64 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 3
  store ptr @.str.201, ptr %64, align 4
  %65 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 4
  store i32 -2, ptr %65, align 8
  %66 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 7
  store ptr %3, ptr %66, align 4
  %67 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 8
  store i32 16, ptr %67, align 8
  %68 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #7
  %69 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 18
  store ptr %68, ptr %69, align 8
  %70 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %74, label %71

71:                                               ; preds = %58
  %72 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 13, i32 1
  store i32 2, ptr %72, align 4
  br label %73

73:                                               ; preds = %71, %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %91

74:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  %75 = icmp slt ptr %68, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %74
  %77 = ptrtoint ptr %68 to i32
  %78 = load ptr, ptr %60, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.26, i32 noundef %77) #8
  %79 = load ptr, ptr %44, align 4
  %80 = call i32 @regulator_disable(ptr noundef %79) #7
  br label %81

81:                                               ; preds = %76, %48
  %82 = phi i32 [ %46, %48 ], [ %77, %76 ]
  %83 = load ptr, ptr %36, align 8
  %84 = call i32 @regulator_disable(ptr noundef %83) #7
  br label %85

85:                                               ; preds = %81, %40
  %86 = phi i32 [ %38, %40 ], [ %82, %81 ]
  %87 = load ptr, ptr %29, align 4
  %88 = call i32 @regulator_disable(ptr noundef %87) #7
  br label %89

89:                                               ; preds = %85, %33
  %90 = phi i32 [ %31, %33 ], [ %86, %85 ]
  call void @tegra_output_exit(ptr noundef %10) #7
  br label %91

91:                                               ; preds = %89, %74, %73, %25
  %92 = phi i32 [ %23, %25 ], [ %90, %89 ], [ 0, %74 ], [ 0, %73 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @platform_device_unregister(ptr noundef nonnull %3) #7
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 1
  tail call void @tegra_output_exit(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regulator_disable(ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @regulator_disable(ptr noundef %12) #7
  %14 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regulator_disable(ptr noundef %15) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.202, i32 noundef %6) #8
  br label %13

9:                                                ; preds = %1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %10 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  %12 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #7
  br label %13

13:                                               ; preds = %9, %8
  %14 = phi i32 [ %6, %8 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #7, !srcloc !21
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #7, !srcloc !22
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !23
  br label %12

12:                                               ; preds = %11, %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.203, i32 noundef %4) #8
  br label %36

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = tail call i32 @clk_enable(ptr noundef %15) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #7
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi i32 [ %16, %13 ], [ %19, %21 ]
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.204, i32 noundef %23) #8
  br label %33

26:                                               ; preds = %22, %18
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %27 = getelementptr inbounds %struct.tegra_hdmi, ptr %0, i32 0, i32 10
  %28 = load ptr, ptr %27, align 8
  %29 = tail call i32 @reset_control_deassert(ptr noundef %28) #7
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.205, i32 noundef %29) #8
  %32 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %32) #7
  tail call void @clk_unprepare(ptr noundef %32) #7
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi i32 [ %23, %25 ], [ %29, %31 ]
  %35 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #7
  br label %36

36:                                               ; preds = %33, %26, %12
  %37 = phi i32 [ %4, %12 ], [ %34, %33 ], [ 0, %26 ]
  ret i32 %37
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
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_connector_detect(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = tail call i32 @tegra_output_connector_detect(ptr noundef %0, i1 noundef zeroext %1) #7
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 968
  %7 = load ptr, ptr %6, align 8
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = tail call ptr @llvm.thread.pointer() #7
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %22 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %7, i32 noundef 189, i32 noundef 0) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %23

23:                                               ; preds = %21, %10, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %24 = getelementptr i8, ptr %0, i32 984
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr i8, ptr %25, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #7, !srcloc !15
  br label %27

27:                                               ; preds = %23, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_late_register(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 51
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @kmemdup(ptr noundef nonnull @debugfs_files, i32 noundef 16, i32 noundef 3264) #7
  %8 = getelementptr i8, ptr %0, i32 1036
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -208
  %12 = getelementptr inbounds %struct.drm_info_list, ptr %7, i32 0, i32 3
  store ptr %11, ptr %12, align 4
  %13 = load ptr, ptr %8, align 4
  tail call void @drm_debugfs_create_files(ptr noundef %13, i32 noundef 1, ptr noundef %6, ptr noundef %4) #7
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i32 [ 0, %10 ], [ -12, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_hdmi_early_unregister(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 1036
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @drm_debugfs_remove_files(ptr noundef %6, i32 noundef 1, ptr noundef %4) #7
  %8 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %8) #7
  store ptr null, ptr %5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_connector_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_connector_detect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_show_regs(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_hdmi, ptr %8, i32 0, i32 1, i32 9, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.drm_minor, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void @drm_modeset_lock_all(ptr noundef %13) #7
  %14 = icmp eq ptr %10, null
  br i1 %14, label %53, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 22
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 2
  %19 = load i8, ptr %18, align 1, !range !16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tegra_hdmi, ptr %8, i32 0, i32 6
  %23 = getelementptr inbounds %struct.tegra_hdmi, ptr %8, i32 0, i32 2
  br label %24

24:                                               ; preds = %50, %21
  %25 = phi i32 [ 0, %21 ], [ %51, %50 ]
  %26 = getelementptr [164 x %struct.debugfs_reg32], ptr @tegra_hdmi_regs, i32 0, i32 %25
  %27 = getelementptr [164 x %struct.debugfs_reg32], ptr @tegra_hdmi_regs, i32 0, i32 %25, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = load ptr, ptr %22, align 8
  %31 = shl i32 %28, 2
  %32 = getelementptr i8, ptr %30, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %34 = load ptr, ptr %23, align 8
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %24
  %38 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %49 = tail call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %34, i32 noundef %28, i32 noundef %33) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  br label %50

50:                                               ; preds = %48, %37, %24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef %29, i32 noundef %28, i32 noundef %33) #7
  %51 = add nuw nsw i32 %25, 1
  %52 = icmp eq i32 %51, 164
  br i1 %52, label %53, label %24

53:                                               ; preds = %50, %15, %2
  %54 = phi i32 [ -16, %15 ], [ -16, %2 ], [ 0, %50 ]
  tail call void @drm_modeset_unlock_all(ptr noundef %13) #7
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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_connector_get_modes(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_connector_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr i8, ptr %0, i32 992
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @clk_get_parent(ptr noundef %5) #7
  %7 = mul i32 %3, 4000
  %8 = tail call i32 @clk_round_rate(ptr noundef %6, i32 noundef %7) #7
  %9 = icmp sgt i32 %8, 0
  %10 = select i1 %9, i32 0, i32 14
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_hdmi_encoder_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -104
  %6 = getelementptr i8, ptr %0, i32 -132
  %7 = getelementptr i8, ptr %0, i32 1120
  tail call void @mutex_lock(ptr noundef %7) #7
  %8 = getelementptr i8, ptr %0, i32 1064
  %9 = load i32, ptr %8, align 4
  tail call void @disable_irq(i32 noundef %9) #7
  %10 = icmp eq ptr %5, null
  %11 = or i1 %4, %10
  br i1 %11, label %56, label %12

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %3, i32 768
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i32 4104
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %17 = getelementptr i8, ptr %3, i32 -4
  %18 = load ptr, ptr %17, align 4
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %12
  %22 = tail call ptr @llvm.thread.pointer() #7
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  %33 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %18, i32 noundef 1026, i32 noundef %16) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  %34 = load ptr, ptr %17, align 4
  br label %35

35:                                               ; preds = %32, %21, %12
  %36 = phi ptr [ %18, %12 ], [ %18, %21 ], [ %34, %32 ]
  %37 = and i32 %16, -1073741825
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = tail call ptr @llvm.thread.pointer() #7
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %52 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %36, i32 noundef 1026, i32 noundef %37) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  br label %53

53:                                               ; preds = %51, %40, %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %54 = load ptr, ptr %13, align 8
  %55 = getelementptr i8, ptr %54, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %37) #7, !srcloc !15
  tail call void @tegra_dc_commit(ptr noundef nonnull %5) #7
  br label %56

56:                                               ; preds = %53, %1
  %57 = getelementptr i8, ptr %0, i32 1109
  %58 = load i8, ptr %57, align 1, !range !16
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %152

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %0, i32 1108
  %62 = load i8, ptr %61, align 8, !range !16
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %108, label %64

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %0, i32 1060
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr i8, ptr %66, i32 168
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %69 = getelementptr i8, ptr %0, i32 1044
  %70 = load ptr, ptr %69, align 8
  %71 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %64
  %74 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %85 = tail call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %70, i32 noundef 42, i32 noundef %68) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %86 = load ptr, ptr %69, align 8
  br label %87

87:                                               ; preds = %84, %73, %64
  %88 = phi ptr [ %70, %64 ], [ %70, %73 ], [ %86, %84 ]
  %89 = and i32 %68, -2
  %90 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %104 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %88, i32 noundef 42, i32 noundef %89) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %105

105:                                              ; preds = %103, %92, %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %106 = load ptr, ptr %65, align 8
  %107 = getelementptr i8, ptr %106, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %89) #7, !srcloc !15
  br label %108

108:                                              ; preds = %105, %60
  tail call fastcc void @tegra_hdmi_disable_audio_infoframe(ptr noundef %6)
  %109 = getelementptr i8, ptr %0, i32 1060
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr i8, ptr %110, i32 140
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %113 = getelementptr i8, ptr %0, i32 1044
  %114 = load ptr, ptr %113, align 8
  %115 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %108
  %118 = tail call ptr @llvm.thread.pointer() #7
  %119 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %120 = load i32, ptr %119, align 8
  %121 = lshr i32 %120, 5
  %122 = getelementptr i32, ptr @__cpu_online_mask, i32 %121
  %123 = load volatile i32, ptr %122, align 4
  %124 = and i32 %120, 31
  %125 = shl nuw i32 1, %124
  %126 = and i32 %125, %123
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %117
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %129 = tail call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %114, i32 noundef 35, i32 noundef %112) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %130 = load ptr, ptr %113, align 8
  br label %131

131:                                              ; preds = %128, %117, %108
  %132 = phi ptr [ %114, %108 ], [ %114, %117 ], [ %130, %128 ]
  %133 = and i32 %112, -2
  %134 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = tail call ptr @llvm.thread.pointer() #7
  %138 = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 2
  %139 = load i32, ptr %138, align 8
  %140 = lshr i32 %139, 5
  %141 = getelementptr i32, ptr @__cpu_online_mask, i32 %140
  %142 = load volatile i32, ptr %141, align 4
  %143 = and i32 %139, 31
  %144 = shl nuw i32 1, %143
  %145 = and i32 %144, %142
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %136
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %148 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %132, i32 noundef 35, i32 noundef %133) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %149

149:                                              ; preds = %147, %136, %131
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %150 = load ptr, ptr %109, align 8
  %151 = getelementptr i8, ptr %150, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %133) #7, !srcloc !15
  tail call fastcc void @tegra_hdmi_disable_audio(ptr noundef %6)
  br label %152

152:                                              ; preds = %149, %56
  %153 = getelementptr i8, ptr %0, i32 1044
  %154 = load ptr, ptr %153, align 8
  %155 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %152
  %158 = tail call ptr @llvm.thread.pointer() #7
  %159 = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 2
  %160 = load i32, ptr %159, align 8
  %161 = lshr i32 %160, 5
  %162 = getelementptr i32, ptr @__cpu_online_mask, i32 %161
  %163 = load volatile i32, ptr %162, align 4
  %164 = and i32 %160, 31
  %165 = shl nuw i32 1, %164
  %166 = and i32 %165, %163
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %157
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %169 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %154, i32 noundef 206, i32 noundef 0) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %170

170:                                              ; preds = %168, %157, %152
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %171 = getelementptr i8, ptr %0, i32 1060
  %172 = load ptr, ptr %171, align 8
  %173 = getelementptr i8, ptr %172, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 0) #7, !srcloc !15
  %174 = load ptr, ptr %153, align 8
  %175 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %170
  %178 = tail call ptr @llvm.thread.pointer() #7
  %179 = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 2
  %180 = load i32, ptr %179, align 8
  %181 = lshr i32 %180, 5
  %182 = getelementptr i32, ptr @__cpu_online_mask, i32 %181
  %183 = load volatile i32, ptr %182, align 4
  %184 = and i32 %180, 31
  %185 = shl nuw i32 1, %184
  %186 = and i32 %185, %183
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %177
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %189 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %174, i32 noundef 205, i32 noundef 0) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %190

190:                                              ; preds = %188, %177, %170
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %191 = load ptr, ptr %171, align 8
  %192 = getelementptr i8, ptr %191, i32 820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 0) #7, !srcloc !15
  %193 = getelementptr i8, ptr %0, i32 1104
  store i32 0, ptr %193, align 4
  %194 = load i32, ptr %8, align 4
  tail call void @enable_irq(i32 noundef %194) #7
  tail call void @mutex_unlock(ptr noundef %7) #7
  %195 = tail call i32 @host1x_client_suspend(ptr noundef %6) #7
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %190
  %198 = load ptr, ptr %153, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.193, i32 noundef %195) #8
  br label %199

199:                                              ; preds = %197, %190
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_hdmi_encoder_enable(ptr noundef %0) #0 {
  %2 = alloca %struct.hdmi_vendor_infoframe, align 4
  %3 = alloca [10 x i8], align 1
  %4 = alloca %struct.hdmi_avi_infoframe, align 4
  %5 = alloca [17 x i8], align 1
  %6 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 22
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7
  %11 = icmp eq ptr %7, null
  %12 = getelementptr i8, ptr %7, i32 -104
  %13 = select i1 %11, ptr null, ptr %12
  %14 = getelementptr i8, ptr %0, i32 -132
  %15 = tail call i32 @host1x_client_resume(ptr noundef %14) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = getelementptr i8, ptr %0, i32 1044
  %19 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.194, i32 noundef %15) #8
  br label %1131

20:                                               ; preds = %1
  %21 = getelementptr i8, ptr %0, i32 1120
  tail call void @mutex_lock(ptr noundef %21) #7
  %22 = getelementptr i8, ptr %0, i32 1064
  %23 = load i32, ptr %22, align 4
  tail call void @disable_irq(i32 noundef %23) #7
  %24 = getelementptr i8, ptr %0, i32 1044
  %25 = load ptr, ptr %24, align 8
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %40 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %25, i32 noundef 206, i32 noundef 1) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %41

41:                                               ; preds = %39, %28, %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %42 = getelementptr i8, ptr %0, i32 1060
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr i8, ptr %43, i32 824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 1) #7, !srcloc !15
  %45 = load ptr, ptr %24, align 8
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  %49 = tail call ptr @llvm.thread.pointer() #7
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 5
  %53 = getelementptr i32, ptr @__cpu_online_mask, i32 %52
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %51, 31
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %60 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %45, i32 noundef 205, i32 noundef 1) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %61

61:                                               ; preds = %59, %48, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %62 = load ptr, ptr %42, align 8
  %63 = getelementptr i8, ptr %62, i32 820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 1) #7, !srcloc !15
  %64 = load i32, ptr %10, align 4
  %65 = mul i32 %64, 1000
  %66 = getelementptr i8, ptr %0, i32 1104
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 3
  %68 = load i16, ptr %67, align 4
  %69 = zext i16 %68 to i32
  %70 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 2
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  %73 = sub nsw i32 %69, %72
  %74 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 4
  %75 = load i16, ptr %74, align 2
  %76 = zext i16 %75 to i32
  %77 = sub nsw i32 %76, %69
  %78 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 1
  %79 = load i16, ptr %78, align 4
  %80 = zext i16 %79 to i32
  %81 = load ptr, ptr %24, align 8
  %82 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %81, i32 noundef %65) #7
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %61
  %85 = load ptr, ptr %24, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.195, i32 noundef %82) #8
  br label %86

86:                                               ; preds = %84, %61
  %87 = getelementptr i8, ptr %0, i32 1072
  %88 = load ptr, ptr %87, align 4
  %89 = tail call i32 @clk_get_rate(ptr noundef %88) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.196, i32 noundef %89) #7
  %90 = load ptr, ptr %42, align 8
  %91 = getelementptr i8, ptr %90, i32 348
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %93 = load ptr, ptr %24, align 8
  %94 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %86
  %97 = tail call ptr @llvm.thread.pointer() #7
  %98 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %99 = load i32, ptr %98, align 8
  %100 = lshr i32 %99, 5
  %101 = getelementptr i32, ptr @__cpu_online_mask, i32 %100
  %102 = load volatile i32, ptr %101, align 4
  %103 = and i32 %99, 31
  %104 = shl nuw i32 1, %103
  %105 = and i32 %104, %102
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %96
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %108 = tail call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %93, i32 noundef 87, i32 noundef %92) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %109 = load ptr, ptr %24, align 8
  br label %110

110:                                              ; preds = %107, %96, %86
  %111 = phi ptr [ %93, %86 ], [ %93, %96 ], [ %109, %107 ]
  %112 = and i32 %92, -3
  %113 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  %116 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %127 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %111, i32 noundef 87, i32 noundef %112) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %128

128:                                              ; preds = %126, %115, %110
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %129 = load ptr, ptr %42, align 8
  %130 = getelementptr i8, ptr %129, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %112) #7, !srcloc !15
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %131 = load ptr, ptr %42, align 8
  %132 = getelementptr i8, ptr %131, i32 348
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %134 = load ptr, ptr %24, align 8
  %135 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %128
  %138 = tail call ptr @llvm.thread.pointer() #7
  %139 = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 2
  %140 = load i32, ptr %139, align 8
  %141 = lshr i32 %140, 5
  %142 = getelementptr i32, ptr @__cpu_online_mask, i32 %141
  %143 = load volatile i32, ptr %142, align 4
  %144 = and i32 %140, 31
  %145 = shl nuw i32 1, %144
  %146 = and i32 %145, %143
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %137
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %149 = tail call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %134, i32 noundef 87, i32 noundef %133) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %150 = load ptr, ptr %24, align 8
  br label %151

151:                                              ; preds = %148, %137, %128
  %152 = phi ptr [ %134, %128 ], [ %134, %137 ], [ %150, %148 ]
  %153 = and i32 %133, -2
  %154 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %151
  %157 = tail call ptr @llvm.thread.pointer() #7
  %158 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 2
  %159 = load i32, ptr %158, align 8
  %160 = lshr i32 %159, 5
  %161 = getelementptr i32, ptr @__cpu_online_mask, i32 %160
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %159, 31
  %164 = shl nuw i32 1, %163
  %165 = and i32 %164, %162
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %156
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %168 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %152, i32 noundef 87, i32 noundef %153) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %169

169:                                              ; preds = %167, %156, %151
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %170 = load ptr, ptr %42, align 8
  %171 = getelementptr i8, ptr %170, i32 348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %153) #7, !srcloc !15
  %172 = getelementptr inbounds %struct.tegra_dc, ptr %13, i32 0, i32 2
  %173 = load ptr, ptr %172, align 4
  %174 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %169
  %177 = tail call ptr @llvm.thread.pointer() #7
  %178 = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 2
  %179 = load i32, ptr %178, align 8
  %180 = lshr i32 %179, 5
  %181 = getelementptr i32, ptr @__cpu_online_mask, i32 %180
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %179, 31
  %184 = shl nuw i32 1, %183
  %185 = and i32 %184, %182
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %176
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %188 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %173, i32 noundef 1029, i32 noundef 1) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  br label %189

189:                                              ; preds = %187, %176, %169
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %190 = getelementptr inbounds %struct.tegra_dc, ptr %13, i32 0, i32 8
  %191 = load ptr, ptr %190, align 8
  %192 = getelementptr i8, ptr %191, i32 4116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 1) #7, !srcloc !15
  %193 = load ptr, ptr %172, align 4
  %194 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %189
  %197 = tail call ptr @llvm.thread.pointer() #7
  %198 = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 2
  %199 = load i32, ptr %198, align 8
  %200 = lshr i32 %199, 5
  %201 = getelementptr i32, ptr @__cpu_online_mask, i32 %200
  %202 = load volatile i32, ptr %201, align 4
  %203 = and i32 %199, 31
  %204 = shl nuw i32 1, %203
  %205 = and i32 %204, %202
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %196
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %208 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %193, i32 noundef 1072, i32 noundef 8) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  br label %209

209:                                              ; preds = %207, %196, %189
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %210 = load ptr, ptr %190, align 8
  %211 = getelementptr i8, ptr %210, i32 4288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 8) #7, !srcloc !15
  %212 = add nsw i32 %77, %73
  %213 = add nsw i32 %212, 4087
  %214 = load ptr, ptr %172, align 4
  %215 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %209
  %218 = tail call ptr @llvm.thread.pointer() #7
  %219 = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 2
  %220 = load i32, ptr %219, align 8
  %221 = lshr i32 %220, 5
  %222 = getelementptr i32, ptr @__cpu_online_mask, i32 %221
  %223 = load volatile i32, ptr %222, align 4
  %224 = and i32 %220, 31
  %225 = shl nuw i32 1, %224
  %226 = and i32 %225, %223
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %217
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %229 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %214, i32 noundef 1024, i32 noundef 4096) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  br label %230

230:                                              ; preds = %228, %217, %209
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %231 = load ptr, ptr %190, align 8
  %232 = getelementptr i8, ptr %231, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 4096) #7, !srcloc !15
  %233 = load ptr, ptr %172, align 4
  %234 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %249

236:                                              ; preds = %230
  %237 = tail call ptr @llvm.thread.pointer() #7
  %238 = getelementptr inbounds %struct.thread_info, ptr %237, i32 0, i32 2
  %239 = load i32, ptr %238, align 8
  %240 = lshr i32 %239, 5
  %241 = getelementptr i32, ptr @__cpu_online_mask, i32 %240
  %242 = load volatile i32, ptr %241, align 4
  %243 = and i32 %239, 31
  %244 = shl nuw i32 1, %243
  %245 = and i32 %244, %242
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %236
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %248 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %233, i32 noundef 1045, i32 noundef 384) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  br label %249

249:                                              ; preds = %247, %236, %230
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %250 = load ptr, ptr %190, align 8
  %251 = getelementptr i8, ptr %250, i32 4180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 384) #7, !srcloc !15
  %252 = and i32 %213, 4095
  %253 = shl i32 %212, 16
  %254 = add i32 %253, 268369920
  %255 = and i32 %254, 268369920
  %256 = or i32 %255, %252
  %257 = load ptr, ptr %172, align 4
  %258 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %273

260:                                              ; preds = %249
  %261 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %272 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %257, i32 noundef 1046, i32 noundef %256) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  br label %273

273:                                              ; preds = %271, %260, %249
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %274 = load ptr, ptr %190, align 8
  %275 = getelementptr i8, ptr %274, i32 4184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 %256) #7, !srcloc !15
  %276 = load ptr, ptr %24, align 8
  %277 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %292

279:                                              ; preds = %273
  %280 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %291 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %276, i32 noundef 70, i32 noundef -2113928688) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %292

292:                                              ; preds = %290, %279, %273
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %293 = load ptr, ptr %42, align 8
  %294 = getelementptr i8, ptr %293, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %294, i32 -2113928688) #7, !srcloc !15
  %295 = getelementptr inbounds %struct.tegra_dc, ptr %13, i32 0, i32 5
  %296 = load i32, ptr %295, align 4
  %297 = icmp ne i32 %296, 0
  %298 = zext i1 %297 to i32
  %299 = load i16, ptr %78, align 4
  %300 = icmp eq i16 %299, 720
  br i1 %300, label %301, label %324

301:                                              ; preds = %292
  %302 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 6
  %303 = load i16, ptr %302, align 2
  switch i16 %303, label %324 [
    i16 480, label %304
    i16 576, label %304
  ]

304:                                              ; preds = %301, %301
  %305 = load ptr, ptr %24, align 8
  %306 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %307 = icmp sgt i32 %306, 0
  br i1 %307, label %308, label %321

308:                                              ; preds = %304
  %309 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %320 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %305, i32 noundef 151, i32 noundef %298) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %321

321:                                              ; preds = %319, %308, %304
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %322 = load ptr, ptr %42, align 8
  %323 = getelementptr i8, ptr %322, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 %298) #7, !srcloc !15
  br label %345

324:                                              ; preds = %301, %292
  %325 = or i32 %298, 2
  %326 = load ptr, ptr %24, align 8
  %327 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %328 = icmp sgt i32 %327, 0
  br i1 %328, label %329, label %342

329:                                              ; preds = %324
  %330 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %341 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %326, i32 noundef 151, i32 noundef %325) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %342

342:                                              ; preds = %340, %329, %324
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %343 = load ptr, ptr %42, align 8
  %344 = getelementptr i8, ptr %343, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %344, i32 %325) #7, !srcloc !15
  br label %345

345:                                              ; preds = %342, %321
  %346 = load ptr, ptr %87, align 4
  %347 = tail call i32 @clk_get_rate(ptr noundef %346) #7
  %348 = udiv i32 %347, 1000000
  %349 = shl nuw nsw i32 %348, 8
  %350 = and i32 %349, 65280
  %351 = load ptr, ptr %24, align 8
  %352 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %353 = icmp sgt i32 %352, 0
  br i1 %353, label %354, label %367

354:                                              ; preds = %345
  %355 = tail call ptr @llvm.thread.pointer() #7
  %356 = getelementptr inbounds %struct.thread_info, ptr %355, i32 0, i32 2
  %357 = load i32, ptr %356, align 8
  %358 = lshr i32 %357, 5
  %359 = getelementptr i32, ptr @__cpu_online_mask, i32 %358
  %360 = load volatile i32, ptr %359, align 4
  %361 = and i32 %357, 31
  %362 = shl nuw i32 1, %361
  %363 = and i32 %362, %360
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %367, label %365

365:                                              ; preds = %354
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %366 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %351, i32 noundef 149, i32 noundef %350) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %367

367:                                              ; preds = %365, %354, %345
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %368 = load ptr, ptr %42, align 8
  %369 = getelementptr i8, ptr %368, i32 596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %369, i32 %350) #7, !srcloc !15
  %370 = getelementptr i8, ptr %0, i32 360
  %371 = load ptr, ptr %370, align 4
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %375

373:                                              ; preds = %367
  %374 = getelementptr i8, ptr %0, i32 1109
  br label %389

375:                                              ; preds = %367
  %376 = getelementptr inbounds %struct.drm_property_blob, ptr %371, i32 0, i32 5
  %377 = load ptr, ptr %376, align 4
  %378 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %377) #7
  %379 = xor i1 %378, true
  %380 = getelementptr i8, ptr %0, i32 1109
  %381 = zext i1 %379 to i8
  store i8 %381, ptr %380, align 1
  br i1 %378, label %382, label %391

382:                                              ; preds = %375
  %383 = getelementptr i8, ptr %0, i32 1088
  %384 = load i32, ptr %383, align 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %391, label %386

386:                                              ; preds = %382
  %387 = tail call fastcc i32 @tegra_hdmi_setup_audio(ptr noundef %14)
  %388 = icmp slt i32 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %386, %373
  %390 = phi ptr [ %374, %373 ], [ %380, %386 ]
  store i8 1, ptr %390, align 1
  br label %391

391:                                              ; preds = %389, %386, %382, %375
  %392 = phi ptr [ %380, %382 ], [ %380, %386 ], [ %380, %375 ], [ %390, %389 ]
  %393 = getelementptr i8, ptr %0, i32 1080
  %394 = load ptr, ptr %393, align 4
  %395 = getelementptr inbounds %struct.tegra_hdmi_config, ptr %394, i32 0, i32 5
  %396 = load i8, ptr %395, align 1, !range !16
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %478, label %398

398:                                              ; preds = %391
  %399 = getelementptr i8, ptr %0, i32 830
  %400 = load i8, ptr %399, align 1
  %401 = zext i8 %400 to i32
  %402 = shl nuw nsw i32 %401, 2
  %403 = add nuw nsw i32 %402, 4
  br label %406

404:                                              ; preds = %429
  %405 = icmp ult i8 %400, 23
  br i1 %405, label %434, label %458

406:                                              ; preds = %429, %398
  %407 = phi i32 [ 0, %398 ], [ %432, %429 ]
  %408 = shl i32 %407, 8
  %409 = getelementptr %struct.tegra_hdmi, ptr %14, i32 0, i32 1, i32 10, i32 42, i32 %407
  %410 = load i8, ptr %409, align 1
  %411 = zext i8 %410 to i32
  %412 = or i32 %408, %411
  %413 = load ptr, ptr %24, align 8
  %414 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %416, label %429

416:                                              ; preds = %406
  %417 = tail call ptr @llvm.thread.pointer() #7
  %418 = getelementptr inbounds %struct.thread_info, ptr %417, i32 0, i32 2
  %419 = load i32, ptr %418, align 8
  %420 = lshr i32 %419, 5
  %421 = getelementptr i32, ptr @__cpu_online_mask, i32 %420
  %422 = load volatile i32, ptr %421, align 4
  %423 = and i32 %419, 31
  %424 = shl nuw i32 1, %423
  %425 = and i32 %424, %422
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %429, label %427

427:                                              ; preds = %416
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %428 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %413, i32 noundef 188, i32 noundef %412) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %429

429:                                              ; preds = %427, %416, %406
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %430 = load ptr, ptr %42, align 8
  %431 = getelementptr i8, ptr %430, i32 752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %431, i32 %412) #7, !srcloc !15
  %432 = add nuw nsw i32 %407, 1
  %433 = icmp eq i32 %432, %403
  br i1 %433, label %404, label %406

434:                                              ; preds = %453, %404
  %435 = phi i32 [ %456, %453 ], [ %403, %404 ]
  %436 = shl nuw nsw i32 %435, 8
  %437 = load ptr, ptr %24, align 8
  %438 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %439 = icmp sgt i32 %438, 0
  br i1 %439, label %440, label %453

440:                                              ; preds = %434
  %441 = tail call ptr @llvm.thread.pointer() #7
  %442 = getelementptr inbounds %struct.thread_info, ptr %441, i32 0, i32 2
  %443 = load i32, ptr %442, align 8
  %444 = lshr i32 %443, 5
  %445 = getelementptr i32, ptr @__cpu_online_mask, i32 %444
  %446 = load volatile i32, ptr %445, align 4
  %447 = and i32 %443, 31
  %448 = shl nuw i32 1, %447
  %449 = and i32 %448, %446
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %453, label %451

451:                                              ; preds = %440
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %452 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %437, i32 noundef 188, i32 noundef %436) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %453

453:                                              ; preds = %451, %440, %434
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %454 = load ptr, ptr %42, align 8
  %455 = getelementptr i8, ptr %454, i32 752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %455, i32 %436) #7, !srcloc !15
  %456 = add nuw nsw i32 %435, 1
  %457 = icmp ult i32 %435, 95
  br i1 %457, label %434, label %458

458:                                              ; preds = %453, %404
  %459 = load ptr, ptr %24, align 8
  %460 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %461 = icmp sgt i32 %460, 0
  br i1 %461, label %462, label %475

462:                                              ; preds = %458
  %463 = tail call ptr @llvm.thread.pointer() #7
  %464 = getelementptr inbounds %struct.thread_info, ptr %463, i32 0, i32 2
  %465 = load i32, ptr %464, align 8
  %466 = lshr i32 %465, 5
  %467 = getelementptr i32, ptr @__cpu_online_mask, i32 %466
  %468 = load volatile i32, ptr %467, align 4
  %469 = and i32 %465, 31
  %470 = shl nuw i32 1, %469
  %471 = and i32 %470, %468
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %475, label %473

473:                                              ; preds = %462
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %474 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %459, i32 noundef 189, i32 noundef 3) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %475

475:                                              ; preds = %473, %462, %458
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %476 = load ptr, ptr %42, align 8
  %477 = getelementptr i8, ptr %476, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %477, i32 3) #7, !srcloc !15
  br label %478

478:                                              ; preds = %475, %391
  %479 = sub nsw i32 %76, %80
  %480 = shl nsw i32 %479, 11
  %481 = add nsw i32 %480, 1945600
  %482 = and i32 %481, 2031616
  %483 = load i8, ptr %392, align 1, !range !16
  %484 = icmp eq i8 %483, 0
  %485 = select i1 %484, i32 1073741880, i32 56
  %486 = or i32 %485, %482
  %487 = load ptr, ptr %24, align 8
  %488 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %489 = icmp sgt i32 %488, 0
  br i1 %489, label %490, label %503

490:                                              ; preds = %478
  %491 = tail call ptr @llvm.thread.pointer() #7
  %492 = getelementptr inbounds %struct.thread_info, ptr %491, i32 0, i32 2
  %493 = load i32, ptr %492, align 8
  %494 = lshr i32 %493, 5
  %495 = getelementptr i32, ptr @__cpu_online_mask, i32 %494
  %496 = load volatile i32, ptr %495, align 4
  %497 = and i32 %493, 31
  %498 = shl nuw i32 1, %497
  %499 = and i32 %498, %496
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %503, label %501

501:                                              ; preds = %490
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %502 = tail call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %487, i32 noundef 68, i32 noundef %486) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %503

503:                                              ; preds = %501, %490, %478
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %504 = load ptr, ptr %42, align 8
  %505 = getelementptr i8, ptr %504, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %505, i32 %486) #7, !srcloc !15
  %506 = load i8, ptr %392, align 1, !range !16
  %507 = icmp eq i8 %506, 0
  br i1 %507, label %508, label %533

508:                                              ; preds = %503
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %4, i8 0, i32 68, i1 false) #7, !annotation !19
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %5, i8 0, i32 17, i1 false) #7, !annotation !19
  %509 = getelementptr i8, ptr %0, i32 76
  %510 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %4, ptr noundef %509, ptr noundef %10) #7
  %511 = icmp slt i32 %510, 0
  br i1 %511, label %512, label %514

512:                                              ; preds = %508
  %513 = load ptr, ptr %24, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %513, ptr noundef nonnull @.str.197, i32 noundef %510) #8
  br label %520

514:                                              ; preds = %508
  %515 = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 17) #7
  %516 = icmp slt i32 %515, 0
  br i1 %516, label %517, label %519

517:                                              ; preds = %514
  %518 = load ptr, ptr %24, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %518, ptr noundef nonnull @.str.198, i32 noundef %515) #8
  br label %520

519:                                              ; preds = %514
  call fastcc void @tegra_hdmi_write_infopack(ptr noundef %14, ptr noundef nonnull %5, i32 noundef %515) #7
  br label %520

520:                                              ; preds = %519, %517, %512
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #7
  call fastcc void @tegra_hdmi_setup_audio_infoframe(ptr noundef %14)
  %521 = getelementptr i8, ptr %0, i32 1108
  %522 = load i8, ptr %521, align 8, !range !16
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %533, label %524

524:                                              ; preds = %520
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false) #7, !annotation !19
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %3, i8 0, i32 10, i1 false) #7, !annotation !19
  %525 = call i32 @hdmi_vendor_infoframe_init(ptr noundef nonnull %2) #7
  %526 = getelementptr inbounds %struct.hdmi_vendor_infoframe, ptr %2, i32 0, i32 5
  store i32 0, ptr %526, align 4
  %527 = call i32 @hdmi_vendor_infoframe_pack(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 10) #7
  %528 = icmp slt i32 %527, 0
  br i1 %528, label %529, label %531

529:                                              ; preds = %524
  %530 = load ptr, ptr %24, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %530, ptr noundef nonnull @.str.199, i32 noundef %527) #8
  br label %532

531:                                              ; preds = %524
  call fastcc void @tegra_hdmi_write_infopack(ptr noundef %14, ptr noundef nonnull %3, i32 noundef %527) #7
  br label %532

532:                                              ; preds = %531, %529
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  br label %533

533:                                              ; preds = %532, %520, %503
  %534 = load ptr, ptr %393, align 4
  %535 = getelementptr inbounds %struct.tegra_hdmi_config, ptr %534, i32 0, i32 1
  %536 = load i32, ptr %535, align 4
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %711, label %538

538:                                              ; preds = %533
  %539 = load i32, ptr %66, align 4
  %540 = load ptr, ptr %534, align 4
  br label %541

541:                                              ; preds = %708, %538
  %542 = phi i32 [ 0, %538 ], [ %709, %708 ]
  %543 = getelementptr %struct.tmds_config, ptr %540, i32 %542
  %544 = load i32, ptr %543, align 4
  %545 = icmp ugt i32 %539, %544
  br i1 %545, label %708, label %546

546:                                              ; preds = %541
  %547 = getelementptr %struct.tmds_config, ptr %540, i32 %542, i32 1
  %548 = load i32, ptr %547, align 4
  %549 = load ptr, ptr %24, align 8
  %550 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %551 = icmp sgt i32 %550, 0
  br i1 %551, label %552, label %565

552:                                              ; preds = %546
  %553 = tail call ptr @llvm.thread.pointer() #7
  %554 = getelementptr inbounds %struct.thread_info, ptr %553, i32 0, i32 2
  %555 = load i32, ptr %554, align 8
  %556 = lshr i32 %555, 5
  %557 = getelementptr i32, ptr @__cpu_online_mask, i32 %556
  %558 = load volatile i32, ptr %557, align 4
  %559 = and i32 %555, 31
  %560 = shl nuw i32 1, %559
  %561 = and i32 %560, %558
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %565, label %563

563:                                              ; preds = %552
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %564 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %549, i32 noundef 87, i32 noundef %548) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %565

565:                                              ; preds = %563, %552, %546
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %566 = load ptr, ptr %42, align 8
  %567 = getelementptr i8, ptr %566, i32 348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %567, i32 %548) #7, !srcloc !15
  %568 = getelementptr %struct.tmds_config, ptr %540, i32 %542, i32 2
  %569 = load i32, ptr %568, align 4
  %570 = load ptr, ptr %24, align 8
  %571 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %572 = icmp sgt i32 %571, 0
  br i1 %572, label %573, label %586

573:                                              ; preds = %565
  %574 = tail call ptr @llvm.thread.pointer() #7
  %575 = getelementptr inbounds %struct.thread_info, ptr %574, i32 0, i32 2
  %576 = load i32, ptr %575, align 8
  %577 = lshr i32 %576, 5
  %578 = getelementptr i32, ptr @__cpu_online_mask, i32 %577
  %579 = load volatile i32, ptr %578, align 4
  %580 = and i32 %576, 31
  %581 = shl nuw i32 1, %580
  %582 = and i32 %581, %579
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %586, label %584

584:                                              ; preds = %573
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %585 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %570, i32 noundef 88, i32 noundef %569) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %586

586:                                              ; preds = %584, %573, %565
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %587 = load ptr, ptr %42, align 8
  %588 = getelementptr i8, ptr %587, i32 352
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %588, i32 %569) #7, !srcloc !15
  %589 = getelementptr %struct.tmds_config, ptr %540, i32 %542, i32 3
  %590 = load i32, ptr %589, align 4
  %591 = load ptr, ptr %24, align 8
  %592 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %593 = icmp sgt i32 %592, 0
  br i1 %593, label %594, label %607

594:                                              ; preds = %586
  %595 = tail call ptr @llvm.thread.pointer() #7
  %596 = getelementptr inbounds %struct.thread_info, ptr %595, i32 0, i32 2
  %597 = load i32, ptr %596, align 8
  %598 = lshr i32 %597, 5
  %599 = getelementptr i32, ptr @__cpu_online_mask, i32 %598
  %600 = load volatile i32, ptr %599, align 4
  %601 = and i32 %597, 31
  %602 = shl nuw i32 1, %601
  %603 = and i32 %602, %600
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %607, label %605

605:                                              ; preds = %594
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %606 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %591, i32 noundef 153, i32 noundef %590) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %607

607:                                              ; preds = %605, %594, %586
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %608 = load ptr, ptr %42, align 8
  %609 = getelementptr i8, ptr %608, i32 612
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %609, i32 %590) #7, !srcloc !15
  %610 = getelementptr %struct.tmds_config, ptr %540, i32 %542, i32 4
  %611 = load i32, ptr %610, align 4
  %612 = load ptr, ptr %24, align 8
  %613 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %614 = icmp sgt i32 %613, 0
  br i1 %614, label %615, label %628

615:                                              ; preds = %607
  %616 = tail call ptr @llvm.thread.pointer() #7
  %617 = getelementptr inbounds %struct.thread_info, ptr %616, i32 0, i32 2
  %618 = load i32, ptr %617, align 8
  %619 = lshr i32 %618, 5
  %620 = getelementptr i32, ptr @__cpu_online_mask, i32 %619
  %621 = load volatile i32, ptr %620, align 4
  %622 = and i32 %618, 31
  %623 = shl nuw i32 1, %622
  %624 = and i32 %623, %621
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %628, label %626

626:                                              ; preds = %615
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %627 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %612, i32 noundef 126, i32 noundef %611) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %628

628:                                              ; preds = %626, %615, %607
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %629 = load ptr, ptr %42, align 8
  %630 = getelementptr i8, ptr %629, i32 504
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %630, i32 %611) #7, !srcloc !15
  %631 = load ptr, ptr %393, align 4
  %632 = getelementptr inbounds %struct.tegra_hdmi_config, ptr %631, i32 0, i32 2
  %633 = load i32, ptr %632, align 4
  %634 = load ptr, ptr %42, align 8
  %635 = shl i32 %633, 2
  %636 = getelementptr i8, ptr %634, i32 %635
  %637 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %636) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %638 = load ptr, ptr %24, align 8
  %639 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %640 = icmp sgt i32 %639, 0
  br i1 %640, label %641, label %655

641:                                              ; preds = %628
  %642 = tail call ptr @llvm.thread.pointer() #7
  %643 = getelementptr inbounds %struct.thread_info, ptr %642, i32 0, i32 2
  %644 = load i32, ptr %643, align 8
  %645 = lshr i32 %644, 5
  %646 = getelementptr i32, ptr @__cpu_online_mask, i32 %645
  %647 = load volatile i32, ptr %646, align 4
  %648 = and i32 %644, 31
  %649 = shl nuw i32 1, %648
  %650 = and i32 %649, %647
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %655, label %652

652:                                              ; preds = %641
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %653 = call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %638, i32 noundef %633, i32 noundef %637) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %654 = load ptr, ptr %24, align 8
  br label %655

655:                                              ; preds = %652, %641, %628
  %656 = phi ptr [ %638, %628 ], [ %638, %641 ], [ %654, %652 ]
  %657 = load ptr, ptr %393, align 4
  %658 = getelementptr inbounds %struct.tegra_hdmi_config, ptr %657, i32 0, i32 3
  %659 = load i32, ptr %658, align 4
  %660 = or i32 %659, %637
  %661 = getelementptr inbounds %struct.tegra_hdmi_config, ptr %657, i32 0, i32 2
  %662 = load i32, ptr %661, align 4
  %663 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %664 = icmp sgt i32 %663, 0
  br i1 %664, label %665, label %678

665:                                              ; preds = %655
  %666 = tail call ptr @llvm.thread.pointer() #7
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
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %677 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %656, i32 noundef %662, i32 noundef %660) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %678

678:                                              ; preds = %676, %665, %655
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %679 = load ptr, ptr %42, align 8
  %680 = shl i32 %662, 2
  %681 = getelementptr i8, ptr %679, i32 %680
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %681, i32 %660) #7, !srcloc !15
  %682 = load ptr, ptr %393, align 4
  %683 = getelementptr inbounds %struct.tegra_hdmi_config, ptr %682, i32 0, i32 4
  %684 = load i8, ptr %683, align 4, !range !16
  %685 = icmp eq i8 %684, 0
  br i1 %685, label %711, label %686

686:                                              ; preds = %678
  %687 = getelementptr %struct.tmds_config, ptr %540, i32 %542, i32 5
  %688 = load i32, ptr %687, align 4
  %689 = load ptr, ptr %24, align 8
  %690 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %691 = icmp sgt i32 %690, 0
  br i1 %691, label %692, label %705

692:                                              ; preds = %686
  %693 = tail call ptr @llvm.thread.pointer() #7
  %694 = getelementptr inbounds %struct.thread_info, ptr %693, i32 0, i32 2
  %695 = load i32, ptr %694, align 8
  %696 = lshr i32 %695, 5
  %697 = getelementptr i32, ptr @__cpu_online_mask, i32 %696
  %698 = load volatile i32, ptr %697, align 4
  %699 = and i32 %695, 31
  %700 = shl nuw i32 1, %699
  %701 = and i32 %700, %698
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %705, label %703

703:                                              ; preds = %692
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %704 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %689, i32 noundef 209, i32 noundef %688) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %705

705:                                              ; preds = %703, %692, %686
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %706 = load ptr, ptr %42, align 8
  %707 = getelementptr i8, ptr %706, i32 836
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %707, i32 %688) #7, !srcloc !15
  br label %711

708:                                              ; preds = %541
  %709 = add nuw i32 %542, 1
  %710 = icmp eq i32 %709, %536
  br i1 %710, label %711, label %541

711:                                              ; preds = %708, %705, %678, %533
  %712 = load ptr, ptr %24, align 8
  %713 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %714 = icmp sgt i32 %713, 0
  br i1 %714, label %715, label %728

715:                                              ; preds = %711
  %716 = tail call ptr @llvm.thread.pointer() #7
  %717 = getelementptr inbounds %struct.thread_info, ptr %716, i32 0, i32 2
  %718 = load i32, ptr %717, align 8
  %719 = lshr i32 %718, 5
  %720 = getelementptr i32, ptr @__cpu_online_mask, i32 %719
  %721 = load volatile i32, ptr %720, align 4
  %722 = and i32 %718, 31
  %723 = shl nuw i32 1, %722
  %724 = and i32 %723, %721
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %728, label %726

726:                                              ; preds = %715
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %727 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %712, i32 noundef 95, i32 noundef 34816) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %728

728:                                              ; preds = %726, %715, %711
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %729 = load ptr, ptr %42, align 8
  %730 = getelementptr i8, ptr %729, i32 380
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %730, i32 34816) #7, !srcloc !15
  %731 = load ptr, ptr %24, align 8
  %732 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %733 = icmp sgt i32 %732, 0
  br i1 %733, label %734, label %747

734:                                              ; preds = %728
  %735 = tail call ptr @llvm.thread.pointer() #7
  %736 = getelementptr inbounds %struct.thread_info, ptr %735, i32 0, i32 2
  %737 = load i32, ptr %736, align 8
  %738 = lshr i32 %737, 5
  %739 = getelementptr i32, ptr @__cpu_online_mask, i32 %738
  %740 = load volatile i32, ptr %739, align 4
  %741 = and i32 %737, 31
  %742 = shl nuw i32 1, %741
  %743 = and i32 %742, %740
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %747, label %745

745:                                              ; preds = %734
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %746 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %731, i32 noundef 96, i32 noundef 8429569) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %747

747:                                              ; preds = %745, %734, %728
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %748 = load ptr, ptr %42, align 8
  %749 = getelementptr i8, ptr %748, i32 384
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %749, i32 8429569) #7, !srcloc !15
  %750 = load ptr, ptr %24, align 8
  %751 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %752 = icmp sgt i32 %751, 0
  br i1 %752, label %753, label %766

753:                                              ; preds = %747
  %754 = tail call ptr @llvm.thread.pointer() #7
  %755 = getelementptr inbounds %struct.thread_info, ptr %754, i32 0, i32 2
  %756 = load i32, ptr %755, align 8
  %757 = lshr i32 %756, 5
  %758 = getelementptr i32, ptr @__cpu_online_mask, i32 %757
  %759 = load volatile i32, ptr %758, align 4
  %760 = and i32 %756, 31
  %761 = shl nuw i32 1, %760
  %762 = and i32 %761, %759
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %766, label %764

764:                                              ; preds = %753
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %765 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %750, i32 noundef 104, i32 noundef 8429569) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %766

766:                                              ; preds = %764, %753, %747
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %767 = load ptr, ptr %42, align 8
  %768 = getelementptr i8, ptr %767, i32 416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %768, i32 8429569) #7, !srcloc !15
  %769 = load ptr, ptr %42, align 8
  %770 = getelementptr i8, ptr %769, i32 360
  %771 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %770) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %772 = load ptr, ptr %24, align 8
  %773 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %774 = icmp sgt i32 %773, 0
  br i1 %774, label %775, label %789

775:                                              ; preds = %766
  %776 = tail call ptr @llvm.thread.pointer() #7
  %777 = getelementptr inbounds %struct.thread_info, ptr %776, i32 0, i32 2
  %778 = load i32, ptr %777, align 8
  %779 = lshr i32 %778, 5
  %780 = getelementptr i32, ptr @__cpu_online_mask, i32 %779
  %781 = load volatile i32, ptr %780, align 4
  %782 = and i32 %778, 31
  %783 = shl nuw i32 1, %782
  %784 = and i32 %783, %781
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %789, label %786

786:                                              ; preds = %775
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %787 = call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %772, i32 noundef 90, i32 noundef %771) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %788 = load ptr, ptr %24, align 8
  br label %789

789:                                              ; preds = %786, %775, %766
  %790 = phi ptr [ %772, %766 ], [ %772, %775 ], [ %788, %786 ]
  %791 = and i32 %771, -253833217
  %792 = or i32 %791, 35655680
  %793 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %794 = icmp sgt i32 %793, 0
  br i1 %794, label %795, label %808

795:                                              ; preds = %789
  %796 = tail call ptr @llvm.thread.pointer() #7
  %797 = getelementptr inbounds %struct.thread_info, ptr %796, i32 0, i32 2
  %798 = load i32, ptr %797, align 8
  %799 = lshr i32 %798, 5
  %800 = getelementptr i32, ptr @__cpu_online_mask, i32 %799
  %801 = load volatile i32, ptr %800, align 4
  %802 = and i32 %798, 31
  %803 = shl nuw i32 1, %802
  %804 = and i32 %803, %801
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %808, label %806

806:                                              ; preds = %795
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %807 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %790, i32 noundef 90, i32 noundef %792) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %808

808:                                              ; preds = %806, %795, %789
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %809 = load ptr, ptr %42, align 8
  %810 = getelementptr i8, ptr %809, i32 360
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %810, i32 %792) #7, !srcloc !15
  %811 = load ptr, ptr %24, align 8
  %812 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %813 = icmp sgt i32 %812, 0
  br i1 %813, label %814, label %827

814:                                              ; preds = %808
  %815 = tail call ptr @llvm.thread.pointer() #7
  %816 = getelementptr inbounds %struct.thread_info, ptr %815, i32 0, i32 2
  %817 = load i32, ptr %816, align 8
  %818 = lshr i32 %817, 5
  %819 = getelementptr i32, ptr @__cpu_online_mask, i32 %818
  %820 = load volatile i32, ptr %819, align 4
  %821 = and i32 %817, 31
  %822 = shl nuw i32 1, %821
  %823 = and i32 %822, %820
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %827, label %825

825:                                              ; preds = %814
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %826 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %811, i32 noundef 85, i32 noundef -2147483647) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %827

827:                                              ; preds = %825, %814, %808
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %828 = load ptr, ptr %42, align 8
  %829 = getelementptr i8, ptr %828, i32 340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %829, i32 -2147483647) #7, !srcloc !15
  %830 = load ptr, ptr %24, align 8
  %831 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %832 = icmp sgt i32 %831, 0
  br i1 %832, label %833, label %846

833:                                              ; preds = %827
  %834 = tail call ptr @llvm.thread.pointer() #7
  %835 = getelementptr inbounds %struct.thread_info, ptr %834, i32 0, i32 2
  %836 = load i32, ptr %835, align 8
  %837 = lshr i32 %836, 5
  %838 = getelementptr i32, ptr @__cpu_online_mask, i32 %837
  %839 = load volatile i32, ptr %838, align 4
  %840 = and i32 %836, 31
  %841 = shl nuw i32 1, %840
  %842 = and i32 %841, %839
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %846, label %844

844:                                              ; preds = %833
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %845 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %830, i32 noundef 85, i32 noundef 1) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %846

846:                                              ; preds = %844, %833, %827
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %847 = load ptr, ptr %42, align 8
  %848 = getelementptr i8, ptr %847, i32 340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %848, i32 1) #7, !srcloc !15
  br label %849

849:                                              ; preds = %874, %846
  %850 = phi i32 [ 1000, %846 ], [ %851, %874 ]
  %851 = add nsw i32 %850, -1
  %852 = icmp slt i32 %850, 1
  br i1 %852, label %853, label %854, !prof !30

853:                                              ; preds = %849
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/tegra/hdmi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1384, 0\0A.popsection", ""() #7, !srcloc !31
  unreachable

854:                                              ; preds = %849
  %855 = load ptr, ptr %42, align 8
  %856 = getelementptr i8, ptr %855, i32 340
  %857 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %856) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %858 = load ptr, ptr %24, align 8
  %859 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %860 = icmp sgt i32 %859, 0
  br i1 %860, label %861, label %874

861:                                              ; preds = %854
  %862 = tail call ptr @llvm.thread.pointer() #7
  %863 = getelementptr inbounds %struct.thread_info, ptr %862, i32 0, i32 2
  %864 = load i32, ptr %863, align 8
  %865 = lshr i32 %864, 5
  %866 = getelementptr i32, ptr @__cpu_online_mask, i32 %865
  %867 = load volatile i32, ptr %866, align 4
  %868 = and i32 %864, 31
  %869 = shl nuw i32 1, %868
  %870 = and i32 %869, %867
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %874, label %872

872:                                              ; preds = %861
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %873 = call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %858, i32 noundef 85, i32 noundef %857) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  br label %874

874:                                              ; preds = %872, %861, %854
  %875 = icmp sgt i32 %857, -1
  br i1 %875, label %876, label %849

876:                                              ; preds = %874
  %877 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 11
  %878 = load i32, ptr %877, align 4
  %879 = and i32 %878, 2
  %880 = icmp eq i32 %879, 0
  %881 = select i1 %880, i32 369, i32 4465
  %882 = shl i32 %878, 10
  %883 = and i32 %882, 8192
  %884 = or i32 %881, %883
  %885 = load ptr, ptr %24, align 8
  %886 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %887 = icmp sgt i32 %886, 0
  br i1 %887, label %888, label %901

888:                                              ; preds = %876
  %889 = tail call ptr @llvm.thread.pointer() #7
  %890 = getelementptr inbounds %struct.thread_info, ptr %889, i32 0, i32 2
  %891 = load i32, ptr %890, align 8
  %892 = lshr i32 %891, 5
  %893 = getelementptr i32, ptr @__cpu_online_mask, i32 %892
  %894 = load volatile i32, ptr %893, align 4
  %895 = and i32 %891, 31
  %896 = shl nuw i32 1, %895
  %897 = and i32 %896, %894
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %901, label %899

899:                                              ; preds = %888
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %900 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %885, i32 noundef 3, i32 noundef %884) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %901

901:                                              ; preds = %899, %888, %876
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %902 = load ptr, ptr %42, align 8
  %903 = getelementptr i8, ptr %902, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %903, i32 %884) #7, !srcloc !15
  %904 = load ptr, ptr %24, align 8
  %905 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %906 = icmp sgt i32 %905, 0
  br i1 %906, label %907, label %920

907:                                              ; preds = %901
  %908 = tail call ptr @llvm.thread.pointer() #7
  %909 = getelementptr inbounds %struct.thread_info, ptr %908, i32 0, i32 2
  %910 = load i32, ptr %909, align 8
  %911 = lshr i32 %910, 5
  %912 = getelementptr i32, ptr @__cpu_online_mask, i32 %911
  %913 = load volatile i32, ptr %912, align 4
  %914 = and i32 %910, 31
  %915 = shl nuw i32 1, %914
  %916 = and i32 %915, %913
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %920, label %918

918:                                              ; preds = %907
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %919 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %904, i32 noundef 2, i32 noundef 6) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %920

920:                                              ; preds = %918, %907, %901
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %921 = load ptr, ptr %42, align 8
  %922 = getelementptr i8, ptr %921, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %922, i32 6) #7, !srcloc !15
  %923 = load ptr, ptr %24, align 8
  %924 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %925 = icmp sgt i32 %924, 0
  br i1 %925, label %926, label %939

926:                                              ; preds = %920
  %927 = tail call ptr @llvm.thread.pointer() #7
  %928 = getelementptr inbounds %struct.thread_info, ptr %927, i32 0, i32 2
  %929 = load i32, ptr %928, align 8
  %930 = lshr i32 %929, 5
  %931 = getelementptr i32, ptr @__cpu_online_mask, i32 %930
  %932 = load volatile i32, ptr %931, align 4
  %933 = and i32 %929, 31
  %934 = shl nuw i32 1, %933
  %935 = and i32 %934, %932
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %939, label %937

937:                                              ; preds = %926
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %938 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %923, i32 noundef 1, i32 noundef 0) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %939

939:                                              ; preds = %937, %926, %920
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %940 = load ptr, ptr %42, align 8
  %941 = getelementptr i8, ptr %940, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %941, i32 0) #7, !srcloc !15
  %942 = load ptr, ptr %24, align 8
  %943 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %944 = icmp sgt i32 %943, 0
  br i1 %944, label %945, label %958

945:                                              ; preds = %939
  %946 = tail call ptr @llvm.thread.pointer() #7
  %947 = getelementptr inbounds %struct.thread_info, ptr %946, i32 0, i32 2
  %948 = load i32, ptr %947, align 8
  %949 = lshr i32 %948, 5
  %950 = getelementptr i32, ptr @__cpu_online_mask, i32 %949
  %951 = load volatile i32, ptr %950, align 4
  %952 = and i32 %948, 31
  %953 = shl nuw i32 1, %952
  %954 = and i32 %953, %951
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %958, label %956

956:                                              ; preds = %945
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %957 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %942, i32 noundef 1, i32 noundef 1) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %958

958:                                              ; preds = %956, %945, %939
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %959 = load ptr, ptr %42, align 8
  %960 = getelementptr i8, ptr %959, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %960, i32 1) #7, !srcloc !15
  %961 = load ptr, ptr %24, align 8
  %962 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %963 = icmp sgt i32 %962, 0
  br i1 %963, label %964, label %977

964:                                              ; preds = %958
  %965 = tail call ptr @llvm.thread.pointer() #7
  %966 = getelementptr inbounds %struct.thread_info, ptr %965, i32 0, i32 2
  %967 = load i32, ptr %966, align 8
  %968 = lshr i32 %967, 5
  %969 = getelementptr i32, ptr @__cpu_online_mask, i32 %968
  %970 = load volatile i32, ptr %969, align 4
  %971 = and i32 %967, 31
  %972 = shl nuw i32 1, %971
  %973 = and i32 %972, %970
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %977, label %975

975:                                              ; preds = %964
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %976 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %961, i32 noundef 2, i32 noundef 14) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %977

977:                                              ; preds = %975, %964, %958
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %978 = load ptr, ptr %42, align 8
  %979 = getelementptr i8, ptr %978, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %979, i32 14) #7, !srcloc !15
  %980 = load ptr, ptr %24, align 8
  %981 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %982 = icmp sgt i32 %981, 0
  br i1 %982, label %983, label %996

983:                                              ; preds = %977
  %984 = tail call ptr @llvm.thread.pointer() #7
  %985 = getelementptr inbounds %struct.thread_info, ptr %984, i32 0, i32 2
  %986 = load i32, ptr %985, align 8
  %987 = lshr i32 %986, 5
  %988 = getelementptr i32, ptr @__cpu_online_mask, i32 %987
  %989 = load volatile i32, ptr %988, align 4
  %990 = and i32 %986, 31
  %991 = shl nuw i32 1, %990
  %992 = and i32 %991, %989
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %996, label %994

994:                                              ; preds = %983
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %995 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %980, i32 noundef 1, i32 noundef 0) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %996

996:                                              ; preds = %994, %983, %977
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %997 = load ptr, ptr %42, align 8
  %998 = getelementptr i8, ptr %997, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %998, i32 0) #7, !srcloc !15
  %999 = load ptr, ptr %190, align 8
  %1000 = getelementptr i8, ptr %999, i32 4104
  %1001 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1000) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %1002 = load ptr, ptr %172, align 4
  %1003 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %1004 = icmp sgt i32 %1003, 0
  br i1 %1004, label %1005, label %1019

1005:                                             ; preds = %996
  %1006 = tail call ptr @llvm.thread.pointer() #7
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
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  %1017 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %1002, i32 noundef 1026, i32 noundef %1001) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  %1018 = load ptr, ptr %172, align 4
  br label %1019

1019:                                             ; preds = %1016, %1005, %996
  %1020 = phi ptr [ %1002, %996 ], [ %1002, %1005 ], [ %1018, %1016 ]
  %1021 = or i32 %1001, 1073741824
  %1022 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1023 = icmp sgt i32 %1022, 0
  br i1 %1023, label %1024, label %1037

1024:                                             ; preds = %1019
  %1025 = tail call ptr @llvm.thread.pointer() #7
  %1026 = getelementptr inbounds %struct.thread_info, ptr %1025, i32 0, i32 2
  %1027 = load i32, ptr %1026, align 8
  %1028 = lshr i32 %1027, 5
  %1029 = getelementptr i32, ptr @__cpu_online_mask, i32 %1028
  %1030 = load volatile i32, ptr %1029, align 4
  %1031 = and i32 %1027, 31
  %1032 = shl nuw i32 1, %1031
  %1033 = and i32 %1032, %1030
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1037, label %1035

1035:                                             ; preds = %1024
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  %1036 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1020, i32 noundef 1026, i32 noundef %1021) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !28
  br label %1037

1037:                                             ; preds = %1035, %1024, %1019
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  call void @arm_heavy_mb() #7
  %1038 = load ptr, ptr %190, align 8
  %1039 = getelementptr i8, ptr %1038, i32 4104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1039, i32 %1021) #7, !srcloc !15
  call void @tegra_dc_commit(ptr noundef %13) #7
  %1040 = load i8, ptr %392, align 1, !range !16
  %1041 = icmp eq i8 %1040, 0
  br i1 %1041, label %1042, label %1129

1042:                                             ; preds = %1037
  %1043 = load ptr, ptr %42, align 8
  %1044 = getelementptr i8, ptr %1043, i32 140
  %1045 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1044) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %1046 = load ptr, ptr %24, align 8
  %1047 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %1048 = icmp sgt i32 %1047, 0
  br i1 %1048, label %1049, label %1063

1049:                                             ; preds = %1042
  %1050 = tail call ptr @llvm.thread.pointer() #7
  %1051 = getelementptr inbounds %struct.thread_info, ptr %1050, i32 0, i32 2
  %1052 = load i32, ptr %1051, align 8
  %1053 = lshr i32 %1052, 5
  %1054 = getelementptr i32, ptr @__cpu_online_mask, i32 %1053
  %1055 = load volatile i32, ptr %1054, align 4
  %1056 = and i32 %1052, 31
  %1057 = shl nuw i32 1, %1056
  %1058 = and i32 %1057, %1055
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1063, label %1060

1060:                                             ; preds = %1049
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %1061 = call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %1046, i32 noundef 35, i32 noundef %1045) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %1062 = load ptr, ptr %24, align 8
  br label %1063

1063:                                             ; preds = %1060, %1049, %1042
  %1064 = phi ptr [ %1046, %1042 ], [ %1046, %1049 ], [ %1062, %1060 ]
  %1065 = or i32 %1045, 1
  %1066 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %1067 = icmp sgt i32 %1066, 0
  br i1 %1067, label %1068, label %1081

1068:                                             ; preds = %1063
  %1069 = tail call ptr @llvm.thread.pointer() #7
  %1070 = getelementptr inbounds %struct.thread_info, ptr %1069, i32 0, i32 2
  %1071 = load i32, ptr %1070, align 8
  %1072 = lshr i32 %1071, 5
  %1073 = getelementptr i32, ptr @__cpu_online_mask, i32 %1072
  %1074 = load volatile i32, ptr %1073, align 4
  %1075 = and i32 %1071, 31
  %1076 = shl nuw i32 1, %1075
  %1077 = and i32 %1076, %1074
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1081, label %1079

1079:                                             ; preds = %1068
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %1080 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %1064, i32 noundef 35, i32 noundef %1065) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %1081

1081:                                             ; preds = %1079, %1068, %1063
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %1082 = load ptr, ptr %42, align 8
  %1083 = getelementptr i8, ptr %1082, i32 140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1083, i32 %1065) #7, !srcloc !15
  call fastcc void @tegra_hdmi_enable_audio_infoframe(ptr noundef %14)
  call fastcc void @tegra_hdmi_enable_audio(ptr noundef %14)
  %1084 = getelementptr i8, ptr %0, i32 1108
  %1085 = load i8, ptr %1084, align 8, !range !16
  %1086 = icmp eq i8 %1085, 0
  br i1 %1086, label %1129, label %1087

1087:                                             ; preds = %1081
  %1088 = load ptr, ptr %42, align 8
  %1089 = getelementptr i8, ptr %1088, i32 168
  %1090 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1089) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %1091 = load ptr, ptr %24, align 8
  %1092 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_readl, i32 0, i32 1), align 4
  %1093 = icmp sgt i32 %1092, 0
  br i1 %1093, label %1094, label %1108

1094:                                             ; preds = %1087
  %1095 = tail call ptr @llvm.thread.pointer() #7
  %1096 = getelementptr inbounds %struct.thread_info, ptr %1095, i32 0, i32 2
  %1097 = load i32, ptr %1096, align 8
  %1098 = lshr i32 %1097, 5
  %1099 = getelementptr i32, ptr @__cpu_online_mask, i32 %1098
  %1100 = load volatile i32, ptr %1099, align 4
  %1101 = and i32 %1097, 31
  %1102 = shl nuw i32 1, %1101
  %1103 = and i32 %1102, %1100
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1108, label %1105

1105:                                             ; preds = %1094
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %1106 = call i32 @__traceiter_hdmi_readl(ptr noundef null, ptr noundef %1091, i32 noundef 42, i32 noundef %1090) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %1107 = load ptr, ptr %24, align 8
  br label %1108

1108:                                             ; preds = %1105, %1094, %1087
  %1109 = phi ptr [ %1091, %1087 ], [ %1091, %1094 ], [ %1107, %1105 ]
  %1110 = or i32 %1090, 1
  %1111 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hdmi_writel, i32 0, i32 1), align 4
  %1112 = icmp sgt i32 %1111, 0
  br i1 %1112, label %1113, label %1126

1113:                                             ; preds = %1108
  %1114 = tail call ptr @llvm.thread.pointer() #7
  %1115 = getelementptr inbounds %struct.thread_info, ptr %1114, i32 0, i32 2
  %1116 = load i32, ptr %1115, align 8
  %1117 = lshr i32 %1116, 5
  %1118 = getelementptr i32, ptr @__cpu_online_mask, i32 %1117
  %1119 = load volatile i32, ptr %1118, align 4
  %1120 = and i32 %1116, 31
  %1121 = shl nuw i32 1, %1120
  %1122 = and i32 %1121, %1119
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1126, label %1124

1124:                                             ; preds = %1113
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %1125 = call i32 @__traceiter_hdmi_writel(ptr noundef null, ptr noundef %1109, i32 noundef 42, i32 noundef %1110) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %1126

1126:                                             ; preds = %1124, %1113, %1108
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  call void @arm_heavy_mb() #7
  %1127 = load ptr, ptr %42, align 8
  %1128 = getelementptr i8, ptr %1127, i32 168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1128, i32 %1110) #7, !srcloc !15
  br label %1129

1129:                                             ; preds = %1126, %1081, %1037
  %1130 = load i32, ptr %22, align 4
  call void @enable_irq(i32 noundef %1130) #7
  call void @mutex_unlock(ptr noundef %21) #7
  br label %1131

1131:                                             ; preds = %1129, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_encoder_atomic_check(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.drm_connector_state, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -104
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, 1000
  %12 = getelementptr i8, ptr %0, i32 1068
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @tegra_dc_state_setup_clock(ptr noundef %8, ptr noundef %1, ptr noundef %13, i32 noundef %11, i32 noundef 0) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = getelementptr i8, ptr %0, i32 -32
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.200, i32 noundef %14) #8
  br label %19

19:                                               ; preds = %16, %3
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_dc_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_vendor_infoframe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_vendor_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_state_setup_clock(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_audio_startup(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @host1x_client_resume(ptr noundef %1) #7
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.194, i32 noundef %3) #8
  br label %8

8:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_hw_params(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  tail call void @disable_irq(i32 noundef %7) #7
  %8 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 13
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 13, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 14
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 16
  %19 = load i8, ptr %18, align 1, !range !16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @tegra_hdmi_setup_audio(ptr noundef %1) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call fastcc void @tegra_hdmi_disable_audio_infoframe(ptr noundef %1) #7
  tail call fastcc void @tegra_hdmi_disable_audio(ptr noundef %1) #7
  br label %26

25:                                               ; preds = %21
  tail call fastcc void @tegra_hdmi_setup_audio_infoframe(ptr noundef %1) #7
  tail call fastcc void @tegra_hdmi_enable_audio_infoframe(ptr noundef %1) #7
  tail call fastcc void @tegra_hdmi_enable_audio(ptr noundef %1) #7
  br label %26

26:                                               ; preds = %25, %24, %17, %4
  %27 = phi i32 [ 0, %17 ], [ 0, %4 ], [ %22, %24 ], [ %22, %25 ]
  %28 = load i32, ptr %6, align 4
  tail call void @enable_irq(i32 noundef %28) #7
  tail call void @mutex_unlock(ptr noundef %5) #7
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_hdmi_audio_shutdown(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  tail call void @disable_irq(i32 noundef %5) #7
  %6 = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 13
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 13, i32 1
  store i32 0, ptr %7, align 4
  %8 = load i32, ptr %4, align 4
  tail call void @enable_irq(i32 noundef %8) #7
  tail call void @mutex_unlock(ptr noundef %3) #7
  %9 = tail call i32 @host1x_client_suspend(ptr noundef %1) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tegra_hdmi, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.193, i32 noundef %9) #8
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

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
!8 = !{i64 4912240}
!9 = !{i64 2156478951}
!10 = !{i64 2156314666}
!11 = !{i64 2156314834}
!12 = !{i64 2156298547}
!13 = !{i64 2156298717}
!14 = !{i64 2156479316}
!15 = !{i64 4911822}
!16 = !{i8 0, i8 2}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2148411289, i64 2148411569, i64 2148411903, i64 2148412237}
!19 = !{!"auto-init"}
!20 = !{i64 2147997616}
!21 = !{i64 495926, i64 2147985897, i64 2147985923, i64 2147985970, i64 2147985992, i64 2147986020, i64 2147986040}
!22 = !{i64 482495, i64 482520, i64 482542, i64 482558, i64 482570, i64 482590, i64 482614, i64 482630, i64 482642}
!23 = !{i64 2147997742}
!24 = !{i64 2156469575}
!25 = !{i64 2156282552}
!26 = !{i64 2156282716}
!27 = !{i64 2156266617}
!28 = !{i64 2156266783}
!29 = !{i64 2156468911}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2156539825, i64 2156540319, i64 2156539862, i64 2156539918, i64 2156539952, i64 2156539976, i64 2156540017, i64 2156540038, i64 2156540066, i64 2156540100}
