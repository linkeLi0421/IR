; ModuleID = '/llk/IR/drivers/gpu/drm/exynos/exynos_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_hdmi.c"
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
%struct.hdmi_driver_data = type { i32, i8, %struct.hdmiphy_configs, %struct.string_array_spec, %struct.string_array_spec }
%struct.hdmiphy_configs = type { i32, ptr }
%struct.string_array_spec = type { i32, ptr }
%struct.hdmiphy_config = type { i32, [32 x i8] }
%struct.lock_class_key = type {}
%struct.component_ops = type { ptr, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.hdmi_context = type { %struct.drm_encoder, ptr, ptr, %struct.drm_connector, i8, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, [3 x %struct.regulator_bulk_data], ptr, %struct.exynos_drm_clk, ptr, %struct.mutex, %struct.hdmi_audio, i8 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.exynos_drm_clk = type { ptr }
%struct.hdmi_audio = type { ptr, %struct.hdmi_audio_infoframe, %struct.hdmi_codec_params, i8 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.hdmi_codec_daifmt = type { i32, i8, i32 }
%struct.cec_connector_info = type { i32, %union.anon.106 }
%union.anon.106 = type { [16 x i32] }
%struct.exynos_drm_crtc = type { %struct.drm_crtc, i32, ptr, ptr, ptr, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.72, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.anon.72 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.75 = type { i32, ptr }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.76 }
%union.anon.76 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@hdmi_match_types = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_hdmi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4212_hdmi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_hdmi_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_hdmi_driver_data }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [12 x i8] c"exynos-hdmi\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@exynos_hdmi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_hdmi_suspend, ptr @exynos_hdmi_resume, ptr null }, align 4
@hdmi_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @hdmi_probe, ptr @hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr @hdmi_match_types, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_hdmi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@exynos4210_hdmi_driver_data = internal constant %struct.hdmi_driver_data { i32 0, i8 0, %struct.hdmiphy_configs { i32 5, ptr @hdmiphy_v13_configs }, %struct.string_array_spec { i32 2, ptr @hdmi_clk_gates4 }, %struct.string_array_spec { i32 3, ptr @hdmi_clk_muxes4 } }, align 4
@exynos4212_hdmi_driver_data = internal constant %struct.hdmi_driver_data { i32 1, i8 0, %struct.hdmiphy_configs { i32 18, ptr @hdmiphy_v14_configs }, %struct.string_array_spec { i32 2, ptr @hdmi_clk_gates4 }, %struct.string_array_spec { i32 3, ptr @hdmi_clk_muxes4 } }, align 4
@exynos5420_hdmi_driver_data = internal constant %struct.hdmi_driver_data { i32 1, i8 1, %struct.hdmiphy_configs { i32 18, ptr @hdmiphy_5420_configs }, %struct.string_array_spec { i32 2, ptr @hdmi_clk_gates4 }, %struct.string_array_spec { i32 3, ptr @hdmi_clk_muxes4 } }, align 4
@exynos5433_hdmi_driver_data = internal constant %struct.hdmi_driver_data { i32 1, i8 3, %struct.hdmiphy_configs { i32 10, ptr @hdmiphy_5433_configs }, %struct.string_array_spec { i32 5, ptr @hdmi_clk_gates5433 }, %struct.string_array_spec { i32 6, ptr @hdmi_clk_muxes5433 } }, align 4
@hdmiphy_v13_configs = internal constant [5 x %struct.hdmiphy_config] [%struct.hdmiphy_config { i32 27000000, [32 x i8] c"\01\05\00\D8\10\1C0@k\10\02Q\DF\F2T\87\84\0008\00\08\10\E0\22@\E3&\00\00\00\80" }, %struct.hdmiphy_config { i32 27027000, [32 x i8] c"\01\05\00\D4\10\9C\09dk\10\02Q\DF\F2T\87\84\0008\00\08\10\E0\22@\E3&\00\00\00\80" }, %struct.hdmiphy_config { i32 74176000, [32 x i8] c"\01\05\00\D8\10\9C\EF[m\10\01Q\EF\F3T\B9\84\0008\00\08\10\E0\22@\A5&\01\00\00\80" }, %struct.hdmiphy_config { i32 74250000, [32 x i8] c"\01\05\00\D8\10\9C\F8@j\10\01Q\FF\F1T\BA\84\00\108\00\08\10\E0\22@\A4&\01\00\00\80" }, %struct.hdmiphy_config { i32 148500000, [32 x i8] c"\01\05\00\D8\10\9C\F8@j\18\00Q\FF\F1T\BA\84\00\108\00\08\10\E0\22@\A4&\02\00\00\80" }], align 4
@hdmi_clk_gates4 = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], align 4
@hdmi_clk_muxes4 = internal constant [3 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sclk_hdmi\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"sclk_pixel\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"sclk_hdmiphy\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"mout_hdmi\00", align 1
@hdmiphy_v14_configs = internal constant [18 x %struct.hdmiphy_config] [%struct.hdmiphy_config { i32 25200000, [32 x i8] c"\01Q*u@\01\00\08\82\80\FC\D8E\A0\AC\80\08\80\11\04\02\22D\86T\F4$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 27000000, [32 x i8] c"\01\D1\22Q@\08\FC \98\A0\CB\D8E\A0\AC\80\06\80\11\04\02\22D\86T\E4$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 27027000, [32 x i8] c"\01\D1-r@d\12\08C\A0\0E\D9E\A0\AC\80\08\80\11\04\02\22D\86T\E3$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 36000000, [32 x i8] c"\01Q-U@\01\00\08\82\80\0E\D9E\A0\AC\80\08\80\11\04\02\22D\86T\AB$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 40000000, [32 x i8] c"\01Q2U@\01\00\08\82\80,\D9E\A0\AC\80\08\80\11\04\02\22D\86T\9A$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 65000000, [32 x i8] c"\01\D164@\1E\0A\08\82\A0E\D9E\A0\AC\80\08\80\11\04\02\22D\86T\BD$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 71000000, [32 x i8] c"\01\D1;5@\0C\04\08\85\A0c\D9E\A0\AC\80\08\80\11\04\02\22D\86T\AD$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 73250000, [32 x i8] c"\01\D1=5@\18\02\08\83\A0n\D9E\A0\AC\80\08\80\11\04\02\22D\86T\A8$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 74176000, [32 x i8] c"\01\D1>5@[\DE\08\82\A0s\D9E\A0\AC\80V\80\11\04\02\22D\86T\A6$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 74250000, [32 x i8] c"\01\D1\1F\10@@\F8\08\81\A0\BA\D8E\A0\AC\80<\80\11\04\02\22D\86T\A5$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 83500000, [32 x i8] c"\01\D1#\11@\0C\FB\08\85\A0\D1\D8E\A0\AC\80\08\80\11\04\02\22D\86T\93$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 85500000, [32 x i8] c"\01\D1$\11@@\D0\08\84\A0\D6\D8E\A0\AC\80\08\80\11\04\02\22D\86T\90$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 106500000, [32 x i8] c"\01\D1,\12@\0C\09\08\84\A0\0A\D9E\A0\AC\80\08\80\11\04\02\22D\86Ts$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 108000000, [32 x i8] c"\01Q-\15@\01\00\08\82\80\0E\D9E\A0\AC\80\08\80\11\04\02\22D\86T\C7%\03\00\00\01\80" }, %struct.hdmiphy_config { i32 115500000, [32 x i8] c"\01\D10\12@@\10\08\80\80!\D9E\A0\AC\80\08\80\11\04\02\22D\86T\AA%\03\00\00\01\80" }, %struct.hdmiphy_config { i32 119000000, [32 x i8] c"\01\D12\1A@0\D8\08\04\A0*\D9E\A0\AC\80\08\80\11\04\02\22D\86T\9D%\03\00\00\01\80" }, %struct.hdmiphy_config { i32 146250000, [32 x i8] c"\01\D1=\15@\18\FD\08\83\A0n\D9E\A0\AC\80\08\80\11\04\02\22D\86TP%\03\00\00\01\80" }, %struct.hdmiphy_config { i32 148500000, [32 x i8] c"\01\D1\1F\00@@\F8\08\81\A0\BA\D8E\A0\AC\80<\80\11\04\02\22D\86TK%\03\00\00\01\80" }], align 4
@hdmiphy_5420_configs = internal constant [18 x %struct.hdmiphy_config] [%struct.hdmiphy_config { i32 25200000, [32 x i8] c"\01R?U@\01\00\C8\82\C8\BD\D8E\A0\AC\80\06\80\01\84\05\02$fT\F4$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 27000000, [32 x i8] c"\01\D1\22Q@\08\FC\E0\98\E8\CB\D8E\A0\AC\80\06\80\09\84\05\02$fT\E4$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 27027000, [32 x i8] c"\01\D1-r@d\12\C8C\E8\0E\D9E\A0\AC\80&\80\09\84\05\02$fT\E3$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 36000000, [32 x i8] c"\01Q-U@@\00\C8\02\C8\0E\D9E\A0\AC\80\08\80\09\84\05\02$fT\AB$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 40000000, [32 x i8] c"\01\D1!1@<(\C8\87\E8\C8\D8E\A0\AC\80\08\80\09\84\05\02$fT\9A$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 65000000, [32 x i8] c"\01\D164@\0C\04\C8\82\E8E\D9E\A0\AC\80\08\80\09\84\05\02$fT\BD$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 71000000, [32 x i8] c"\01\D1;5@\0C\04\C8\85\E8c\D9E\A0\AC\80\08\80\09\84\05\02$fTW$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 73250000, [32 x i8] c"\01\D1\1F\10@x\8D\C8\81\E8\B7\D8E\A0\AC\80V\80\09\84\05\02$fT\A8$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 74176000, [32 x i8] c"\01\D1\1F\10@[\EF\C8\81\E8\B9\D8E\A0\AC\80V\80\09\84\05\02$fT\A6$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 74250000, [32 x i8] c"\01\D1\1F\10@@\F8\08\81\E8\BA\D8E\A0\AC\80&\80\09\84\05\22$fT\A5$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 83500000, [32 x i8] c"\01\D1#\11@\0C\FB\C8\85\E8\D1\D8E\A0\AC\80\08\80\09\84\05\02$fTJ$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 88750000, [32 x i8] c"\01\D1%\11@\18\FF\C8\83\E8\DE\D8E\A0\AC\80\08\80\09\84\05\02$fTE$\00\00\00\01\80" }, %struct.hdmiphy_config { i32 106500000, [32 x i8] c"\01\D1,\12@\0C\09\C8\84\E8\0A\D9E\A0\AC\80\08\80\09\84\05\02$fTs$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 108000000, [32 x i8] c"\01Q-\15@\01\00\C8\82\C8\0E\D9E\A0\AC\80\08\80\09\84\05\02$fT\C7%\03\00\00\01\80" }, %struct.hdmiphy_config { i32 115500000, [32 x i8] c"\01\D10\14@\0C\03\C8\88\E8!\D9E\A0\AC\80\08\80\09\84\05\02$fTj$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 146250000, [32 x i8] c"\01\D1=\15@\18\FD\C8\83\E8n\D9E\A0\AC\80\08\80\09\84\05\02$fTT$\01\00\00\01\80" }, %struct.hdmiphy_config { i32 148500000, [32 x i8] c"\01\D1\1F\00@@\F8\08\81\E8\BA\D8E\A0\AC\80&\80\09\84\05\22$fTK%\03\00\80\01\80" }, %struct.hdmiphy_config { i32 154000000, [32 x i8] c"\01\D1 \01@0\08\CC\8C\E8\C1\D8E\A0\AC\80\08\80\09\84\05\02$\86T?%\03\00\00\01\80" }], align 4
@hdmiphy_5433_configs = internal constant [10 x %struct.hdmiphy_config] [%struct.hdmiphy_config { i32 27000000, [32 x i8] c"\01Q-u\01\00\88\02rPD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 27027000, [32 x i8] c"\01Q-rd\09\88\C3qPD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 40000000, [32 x i8] c"\01Q2U\01\00\88\02MPD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 50000000, [32 x i8] c"\01Q4@d\09\88\C3=PD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 65000000, [32 x i8] c"\01Q61@\10\04\C6.\E8D\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 74176000, [32 x i8] c"\01Q>5[\DE\88BSQD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 74250000, [32 x i8] c"\01Q>5@\F0\88\C2RQD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 108000000, [32 x i8] c"\01Q-\15\01\00\88\02rRD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }, %struct.hdmiphy_config { i32 148500000, [32 x i8] c"\01Q\1F\00@\F8\88\C1RR$\0C$\0F|\A5\D4+\87\00\00\04\000\08\10\01\01HJ\00@" }, %struct.hdmiphy_config { i32 297000000, [32 x i8] c"\01Q>\05@\F0\88\C2RSD\8C'\00|\AC\D6+g\00\00\04\000\08\10\01\01H@\00@" }], align 4
@hdmi_clk_gates5433 = internal constant [5 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4
@hdmi_clk_muxes5433 = internal constant [6 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.11, ptr @.str.14, ptr @.str.15], align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"hdmi_pclk\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"hdmi_i_pclk\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"i_tmds_clk\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"i_pixel_clk\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"i_spdif_clk\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"oscclk\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"tmds_clko\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"tmds_clko_user\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"pixel_clko\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"pixel_clko_user\00", align 1
@hdmi_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"&hdata->mutex\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"*ERROR* hdmi_resources_init failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"*ERROR* failed to register hdmi interrupt\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"samsung,syscon-phandle\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"*ERROR* syscon regmap lookup failed.\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"samsung,sysreg-phandle\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"*ERROR* sysreg regmap lookup failed.\0A\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"*ERROR* failed to enable hdmi-en regulator\0A\00", align 1
@hdmi_component_ops = internal constant %struct.component_ops { ptr @hdmi_bind, ptr @hdmi_unbind }, align 4
@.str.25 = private unnamed_addr constant [20 x i8] c"HDMI resource init\0A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"hpd\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"*ERROR* cannot get hpd gpio property\0A\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"*ERROR* failed to get GPIO irq\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"failed to get regulators\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"hdmi-en\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"Cannot get clock %s, %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"Cannot set clock parent of '%s' to '%s', %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"vdd_osc\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"vdd_pll\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"*ERROR* failed to get remote port parent\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"samsung,exynos4210-hdmiddc\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"ddc\00", align 1
@.str.39 = private unnamed_addr constant [48 x i8] c"*ERROR* Failed to find ddc node in device tree\0A\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"\016[drm] Failed to get ddc i2c adapter by node\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"samsung,exynos4212-hdmiphy\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.43 = private unnamed_addr constant [52 x i8] c"*ERROR* Failed to find hdmiphy node in device tree\0A\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"*ERROR* failed to ioremap hdmi phy\0A\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"\016[drm] Failed to get hdmi phy i2c client\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@audio_codec_ops = internal constant %struct.hdmi_codec_ops { ptr null, ptr @hdmi_audio_hw_params, ptr null, ptr @hdmi_audio_shutdown, ptr @hdmi_audio_mute, ptr @hdmi_audio_get_eld, ptr null, ptr null, i8 1 }, align 4
@__const.hdmi_register_audio_device.codec_data = private unnamed_addr constant { ptr, i8, [3 x i8], i32, ptr } { ptr @audio_codec_ops, i8 1, [3 x i8] zeroinitializer, i32 6, ptr null }, align 4
@.str.46 = private unnamed_addr constant [17 x i8] c"hdmi-audio-codec\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"%s: Bad flags %d %d %d %d\0A\00", align 1
@__func__.hdmi_audio_hw_params = private unnamed_addr constant [21 x i8] c"hdmi_audio_hw_params\00", align 1
@hdmi_reg_map = internal unnamed_addr constant [6 x [2 x i32]] [[2 x i32] [i32 65556, i32 32], [2 x i32] [i32 20, i32 116], [2 x i32] [i32 65920, i32 66560], [2 x i32] [i32 65924, i32 66576], [2 x i32] [i32 65936, i32 66592], [2 x i32] [i32 65952, i32 66608]], align 4
@exynos_hdmi_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr @hdmi_mode_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_disable, ptr @hdmi_enable, ptr null }, align 4
@.str.48 = private unnamed_addr constant [45 x i8] c"*ERROR* failed to create connector ret = %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"failed to enable HDMIPHY device.\0A\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"failed to enable regulator bulk\0A\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"*ERROR* failed to find hdmiphy conf\0A\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"*ERROR* failed to configure hdmiphy\0A\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"Could not find phy config for %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"PLL stabilized after %d tries\0A\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"*ERROR* PLL could not reach steady state\0A\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"\016[drm] desired mode doesn't exist so\0A\00", align 1
@.str.57 = private unnamed_addr constant [49 x i8] c"\016[drm] use the most suitable mode among modes.\0A\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"Adjusted Mode: [%d]x[%d] [%d]Hz\0A\00", align 1
@.str.59 = private unnamed_addr constant [48 x i8] c"xres=%d, yres=%d, refresh=%d, intl=%d clock=%d\0A\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"\016[drm] %s: invalid AVI infoframe (%d)\0A\00", align 1
@__func__.hdmi_reg_infoframes = private unnamed_addr constant [20 x i8] c"hdmi_reg_infoframes\00", align 1
@hdmi_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @hdmi_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @hdmi_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.61 = private unnamed_addr constant [49 x i8] c"*ERROR* Failed to initialize connector with drm\0A\00", align 1
@hdmi_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @hdmi_get_modes, ptr null, ptr @hdmi_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.62 = private unnamed_addr constant [41 x i8] c"*ERROR* Failed to allocate CEC notifier\0A\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"%s : width[%d] x height[%d]\0A\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"dvi monitor\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"hdmi monitor\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"Cannot enable clock '%s', %d\0A\00", align 1

@__mod_of__hdmi_match_types_device_table = dso_local alias [5 x %struct.of_device_id], ptr @hdmi_match_types

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 1472, i32 noundef 3520) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %295, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %4) #9
  %9 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 7
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %10, align 8
  %11 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 1
  store ptr %4, ptr %11, align 8
  %12 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.16, ptr noundef nonnull @hdmi_probe.__key) #9
  %13 = load ptr, ptr %11, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %13, i32 noundef 4, ptr noundef nonnull @.str.25) #9
  %14 = tail call ptr @devm_gpiod_get(ptr noundef %13, ptr noundef nonnull @.str.26, i32 noundef 1) #9
  %15 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 12
  store ptr %14, ptr %15, align 8
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %20

17:                                               ; preds = %7
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.27) #9
  %18 = load ptr, ptr %15, align 8
  %19 = ptrtoint ptr %18 to i32
  br label %152

20:                                               ; preds = %7
  %21 = tail call i32 @gpiod_to_irq(ptr noundef %14) #9
  %22 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 13
  store i32 %21, ptr %22, align 4
  %23 = icmp slt i32 %21, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.28) #9
  %25 = load i32, ptr %22, align 4
  br label %152

26:                                               ; preds = %20
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr inbounds %struct.hdmi_driver_data, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.hdmi_driver_data, ptr %27, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %96, label %34

34:                                               ; preds = %26
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 4) #9
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %154, label %37, !prof !8

37:                                               ; preds = %34
  %38 = load ptr, ptr %11, align 8
  %39 = extractvalue { i32, i1 } %35, 0
  %40 = tail call noalias ptr @devm_kmalloc(ptr noundef %38, i32 noundef %39, i32 noundef 3520) #9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %154, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 16
  store ptr %40, ptr %43, align 8
  %44 = load i32, ptr %28, align 4
  %45 = getelementptr ptr, ptr %40, i32 %44
  %46 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 17
  store ptr %45, ptr %46, align 4
  %47 = load ptr, ptr %11, align 8
  %48 = load i32, ptr %28, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.hdmi_driver_data, ptr %27, i32 0, i32 3, i32 1
  br label %52

52:                                               ; preds = %59, %50
  %53 = phi i32 [ 0, %50 ], [ %61, %59 ]
  %54 = load ptr, ptr %51, align 4
  %55 = getelementptr ptr, ptr %54, i32 %53
  %56 = load ptr, ptr %55, align 4
  %57 = tail call ptr @devm_clk_get(ptr noundef %47, ptr noundef %56) #9
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %64, label %59

59:                                               ; preds = %52
  %60 = getelementptr ptr, ptr %40, i32 %53
  store ptr %57, ptr %60, align 4
  %61 = add nuw nsw i32 %53, 1
  %62 = load i32, ptr %28, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %52, label %69

64:                                               ; preds = %52
  %65 = ptrtoint ptr %57 to i32
  %66 = load ptr, ptr %51, align 4
  %67 = getelementptr ptr, ptr %66, i32 %53
  %68 = load ptr, ptr %67, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.31, ptr noundef %68, i32 noundef %65) #10
  br label %152

69:                                               ; preds = %59
  %70 = load ptr, ptr %46, align 4
  %71 = load ptr, ptr %11, align 8
  br label %72

72:                                               ; preds = %69, %42
  %73 = phi ptr [ %71, %69 ], [ %47, %42 ]
  %74 = phi ptr [ %70, %69 ], [ %45, %42 ]
  %75 = load i32, ptr %30, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.hdmi_driver_data, ptr %27, i32 0, i32 4, i32 1
  br label %79

79:                                               ; preds = %91, %77
  %80 = phi i32 [ 0, %77 ], [ %93, %91 ]
  %81 = load ptr, ptr %78, align 4
  %82 = getelementptr ptr, ptr %81, i32 %80
  %83 = load ptr, ptr %82, align 4
  %84 = tail call ptr @devm_clk_get(ptr noundef %73, ptr noundef %83) #9
  %85 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = ptrtoint ptr %84 to i32
  %88 = load ptr, ptr %78, align 4
  %89 = getelementptr ptr, ptr %88, i32 %80
  %90 = load ptr, ptr %89, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.31, ptr noundef %90, i32 noundef %87) #10
  br label %152

91:                                               ; preds = %79
  %92 = getelementptr ptr, ptr %74, i32 %80
  store ptr %84, ptr %92, align 4
  %93 = add nuw nsw i32 %80, 1
  %94 = load i32, ptr %30, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %79, label %96

96:                                               ; preds = %91, %72, %26
  %97 = load ptr, ptr %11, align 8
  %98 = load ptr, ptr %9, align 4
  %99 = getelementptr inbounds %struct.hdmi_driver_data, ptr %98, i32 0, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %135

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 17
  br label %104

104:                                              ; preds = %119, %102
  %105 = phi i32 [ 0, %102 ], [ %120, %119 ]
  %106 = load ptr, ptr %103, align 4
  %107 = getelementptr ptr, ptr %106, i32 %105
  %108 = getelementptr ptr, ptr %107, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = load ptr, ptr %107, align 4
  %111 = tail call i32 @clk_set_parent(ptr noundef %109, ptr noundef %110) #9
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %104
  %114 = add i32 %105, 3
  %115 = load ptr, ptr %9, align 4
  %116 = getelementptr inbounds %struct.hdmi_driver_data, ptr %115, i32 0, i32 4
  %117 = load i32, ptr %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %121, %113
  %120 = phi i32 [ %114, %113 ], [ %130, %121 ]
  br label %104

121:                                              ; preds = %104
  %122 = load ptr, ptr %9, align 4
  %123 = getelementptr inbounds %struct.hdmi_driver_data, ptr %122, i32 0, i32 4, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = add i32 %105, 2
  %126 = getelementptr ptr, ptr %124, i32 %125
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr ptr, ptr %124, i32 %105
  %129 = load ptr, ptr %128, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.32, ptr noundef %127, ptr noundef %129, i32 noundef %111) #10
  %130 = add i32 %105, 3
  %131 = load ptr, ptr %9, align 4
  %132 = getelementptr inbounds %struct.hdmi_driver_data, ptr %131, i32 0, i32 4
  %133 = load i32, ptr %132, align 4
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %119, label %152

135:                                              ; preds = %113, %96
  %136 = getelementptr %struct.hdmi_context, ptr %5, i32 0, i32 18, i32 0
  store ptr @.str.33, ptr %136, align 4
  %137 = getelementptr %struct.hdmi_context, ptr %5, i32 0, i32 18, i32 1
  store ptr @.str.34, ptr %137, align 4
  %138 = getelementptr %struct.hdmi_context, ptr %5, i32 0, i32 18, i32 2
  store ptr @.str.35, ptr %138, align 4
  %139 = tail call i32 @devm_regulator_bulk_get(ptr noundef %13, i32 noundef 3, ptr noundef %136) #9
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %135
  %142 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %13, i32 noundef %139, ptr noundef nonnull @.str.29) #9
  br label %152

143:                                              ; preds = %135
  %144 = tail call ptr @devm_regulator_get_optional(ptr noundef %13, ptr noundef nonnull @.str.30) #9
  %145 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 19
  store ptr %144, ptr %145, align 4
  %146 = ptrtoint ptr %144 to i32
  %147 = icmp ne ptr %144, inttoptr (i32 -19 to ptr)
  %148 = icmp ugt ptr %144, inttoptr (i32 -4096 to ptr)
  %149 = and i1 %147, %148
  br i1 %149, label %152, label %150

150:                                              ; preds = %143
  %151 = tail call fastcc i32 @hdmi_bridge_init(ptr noundef %5) #9
  br label %152

152:                                              ; preds = %150, %143, %141, %121, %86, %64, %24, %17
  %153 = phi i32 [ %19, %17 ], [ %25, %24 ], [ %142, %141 ], [ %151, %150 ], [ %146, %143 ], [ %65, %64 ], [ %87, %86 ], [ %111, %121 ]
  switch i32 %153, label %154 [
    i32 0, label %156
    i32 -517, label %295
  ]

154:                                              ; preds = %152, %37, %34
  %155 = phi i32 [ %153, %152 ], [ -12, %37 ], [ -12, %34 ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #9
  br label %295

156:                                              ; preds = %152
  %157 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %158 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 8
  store ptr %157, ptr %158, align 8
  %159 = icmp ugt ptr %157, inttoptr (i32 -4096 to ptr)
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = ptrtoint ptr %157 to i32
  br label %295

162:                                              ; preds = %156
  %163 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37) #9
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = tail call ptr @of_get_next_parent(ptr noundef nonnull %163) #9
  br label %174

167:                                              ; preds = %162
  %168 = load ptr, ptr %11, align 8
  %169 = getelementptr inbounds %struct.device, ptr %168, i32 0, i32 25
  %170 = load ptr, ptr %169, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !9
  %171 = call i32 @__of_parse_phandle_with_args(ptr noundef %170, ptr noundef nonnull @.str.38, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #9
  %172 = icmp eq i32 %171, 0
  %173 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  br i1 %172, label %174, label %177

174:                                              ; preds = %167, %165
  %175 = phi ptr [ %166, %165 ], [ %173, %167 ]
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %174, %167
  %178 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %178, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.39) #9
  br label %295

179:                                              ; preds = %174
  %180 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %175) #9
  call void @of_node_put(ptr noundef nonnull %175) #9
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #10
  br label %295

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 11
  store ptr %180, ptr %185, align 4
  %186 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.41) #9
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %199

188:                                              ; preds = %184
  %189 = load ptr, ptr %11, align 8
  %190 = getelementptr inbounds %struct.device, ptr %189, i32 0, i32 25
  %191 = load ptr, ptr %190, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #9, !annotation !9
  %192 = call i32 @__of_parse_phandle_with_args(ptr noundef %191, ptr noundef nonnull @.str.42, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #9
  %193 = icmp ne i32 %192, 0
  %194 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  %195 = icmp eq ptr %194, null
  %196 = select i1 %193, i1 true, i1 %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %188
  %198 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %198, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.43) #9
  br label %291

199:                                              ; preds = %188, %184
  %200 = phi ptr [ %186, %184 ], [ %194, %188 ]
  %201 = load ptr, ptr %9, align 4
  %202 = getelementptr inbounds %struct.hdmi_driver_data, ptr %201, i32 0, i32 1
  %203 = load i8, ptr %202, align 4
  %204 = and i8 %203, 1
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %199
  %207 = call ptr @of_iomap(ptr noundef nonnull %200, i32 noundef 0) #9
  %208 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 9
  store ptr %207, ptr %208, align 4
  %209 = icmp eq ptr %207, null
  br i1 %209, label %210, label %220

210:                                              ; preds = %206
  %211 = load ptr, ptr %11, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %211, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.44) #9
  br label %218

212:                                              ; preds = %199
  %213 = call ptr @of_find_i2c_device_by_node(ptr noundef nonnull %200) #9
  %214 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 10
  store ptr %213, ptr %214, align 8
  %215 = icmp eq ptr %213, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %212
  %217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %218

218:                                              ; preds = %216, %210
  %219 = phi i32 [ -12, %210 ], [ -517, %216 ]
  call void @of_node_put(ptr noundef nonnull %200) #9
  br label %291

220:                                              ; preds = %212, %206
  call void @of_node_put(ptr noundef nonnull %200) #9
  %221 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 5
  store i32 -32, ptr %221, align 4
  %222 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 5, i32 0, i32 1
  store volatile ptr %222, ptr %222, align 4
  %223 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 5, i32 0, i32 1, i32 1
  store ptr %222, ptr %223, align 4
  %224 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 5, i32 0, i32 2
  store ptr @hdmi_hotplug_work_func, ptr %224, align 4
  %225 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 5, i32 1
  call void @init_timer_key(ptr noundef %225, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #9
  %226 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 13
  %227 = load i32, ptr %226, align 4
  %228 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %227, ptr noundef null, ptr noundef nonnull @hdmi_irq_thread, i32 noundef 8195, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #9
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %220
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19) #9
  br label %279

231:                                              ; preds = %220
  %232 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %233 = load ptr, ptr %232, align 8
  %234 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %233, ptr noundef nonnull @.str.20) #9
  %235 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 14
  store ptr %234, ptr %235, align 8
  %236 = icmp ugt ptr %234, inttoptr (i32 -4096 to ptr)
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.21) #9
  br label %279

238:                                              ; preds = %231
  %239 = load ptr, ptr %9, align 4
  %240 = getelementptr inbounds %struct.hdmi_driver_data, ptr %239, i32 0, i32 1
  %241 = load i8, ptr %240, align 4
  %242 = and i8 %241, 2
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %238
  %245 = load ptr, ptr %232, align 8
  %246 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %245, ptr noundef nonnull @.str.22) #9
  %247 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 15
  store ptr %246, ptr %247, align 4
  %248 = icmp ugt ptr %246, inttoptr (i32 -4096 to ptr)
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.23) #9
  br label %279

250:                                              ; preds = %244, %238
  %251 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 19
  %252 = load ptr, ptr %251, align 4
  %253 = icmp ugt ptr %252, inttoptr (i32 -4096 to ptr)
  br i1 %253, label %258, label %254

254:                                              ; preds = %250
  %255 = call i32 @regulator_enable(ptr noundef %252) #9
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %254
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.24) #9
  br label %279

258:                                              ; preds = %254, %250
  call void @pm_runtime_enable(ptr noundef %4) #9
  %259 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 23
  %260 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 23, i32 1
  %261 = call i32 @hdmi_audio_infoframe_init(ptr noundef %260) #9
  %262 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 23, i32 1, i32 4
  store i32 0, ptr %262, align 4
  %263 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 23, i32 1, i32 5
  store i32 0, ptr %263, align 4
  %264 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 23, i32 1, i32 6
  store i32 0, ptr %264, align 4
  %265 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 23, i32 1, i32 3
  store i8 2, ptr %265, align 2
  %266 = call fastcc i32 @hdmi_register_audio_device(ptr noundef nonnull %5)
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %258
  %269 = call i32 @component_add(ptr noundef %4, ptr noundef nonnull @hdmi_component_ops) #9
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %295, label %271

271:                                              ; preds = %268
  %272 = load ptr, ptr %259, align 4
  call void @platform_device_unregister(ptr noundef %272) #9
  br label %273

273:                                              ; preds = %271, %258
  %274 = phi i32 [ %266, %258 ], [ %269, %271 ]
  call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #9
  %275 = load ptr, ptr %251, align 4
  %276 = icmp ugt ptr %275, inttoptr (i32 -4096 to ptr)
  br i1 %276, label %279, label %277

277:                                              ; preds = %273
  %278 = call i32 @regulator_disable(ptr noundef %275) #9
  br label %279

279:                                              ; preds = %277, %273, %257, %249, %237, %230
  %280 = phi i32 [ %228, %230 ], [ -517, %237 ], [ -517, %249 ], [ %274, %273 ], [ %274, %277 ], [ %255, %257 ]
  %281 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 10
  %282 = load ptr, ptr %281, align 8
  %283 = icmp eq ptr %282, null
  br i1 %283, label %286, label %284

284:                                              ; preds = %279
  %285 = getelementptr inbounds %struct.i2c_client, ptr %282, i32 0, i32 4
  call void @put_device(ptr noundef %285) #9
  br label %286

286:                                              ; preds = %284, %279
  %287 = getelementptr inbounds %struct.hdmi_context, ptr %5, i32 0, i32 9
  %288 = load ptr, ptr %287, align 4
  %289 = icmp eq ptr %288, null
  br i1 %289, label %291, label %290

290:                                              ; preds = %286
  call void @iounmap(ptr noundef nonnull %288) #9
  br label %291

291:                                              ; preds = %290, %286, %218, %197
  %292 = phi i32 [ %219, %218 ], [ %280, %290 ], [ %280, %286 ], [ -19, %197 ]
  %293 = load ptr, ptr %185, align 4
  %294 = getelementptr inbounds %struct.i2c_adapter, ptr %293, i32 0, i32 9
  call void @put_device(ptr noundef %294) #9
  br label %295

295:                                              ; preds = %291, %268, %182, %177, %160, %154, %152, %1
  %296 = phi i32 [ %161, %160 ], [ %292, %291 ], [ -12, %1 ], [ %153, %152 ], [ %155, %154 ], [ 0, %268 ], [ -19, %177 ], [ -517, %182 ]
  ret i32 %296
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hdmi_context, ptr %3, i32 0, i32 5
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %6, ptr noundef nonnull @hdmi_component_ops) #9
  %7 = getelementptr inbounds %struct.hdmi_context, ptr %3, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  tail call void @platform_device_unregister(ptr noundef %8) #9
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #9
  %9 = getelementptr inbounds %struct.hdmi_context, ptr %3, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @regulator_disable(ptr noundef %10) #9
  br label %14

14:                                               ; preds = %12, %1
  %15 = getelementptr inbounds %struct.hdmi_context, ptr %3, i32 0, i32 10
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void @put_device(ptr noundef %19) #9
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.hdmi_context, ptr %3, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @iounmap(ptr noundef nonnull %22) #9
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.hdmi_context, ptr %3, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 9
  tail call void @put_device(ptr noundef %28) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_hotplug_work_func(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -976
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef nonnull %3) #9
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_irq_thread(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @system_wq, align 4
  %4 = getelementptr inbounds %struct.hdmi_context, ptr %1, i32 0, i32 5
  %5 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %4, i32 noundef 110) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_register_audio_device(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.platform_device_info, align 8
  %3 = alloca %struct.hdmi_codec_pdata, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) @__const.hdmi_register_audio_device.codec_data, i32 16, i1 false)
  %4 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #9
  %6 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i32 48, i1 false) #9, !annotation !9
  store ptr %5, ptr %2, align 8
  %7 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 1
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 3
  store ptr @.str.46, ptr %8, align 4
  %9 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 4
  store i32 -2, ptr %9, align 8
  %10 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 7
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 8
  store i32 16, ptr %11, align 8
  %12 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #9
  %13 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 23
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %12 to i32
  %16 = select i1 %14, i32 %15, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_bridge_init(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %5, i32 noundef 1, i32 noundef -1) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %6) #9
  tail call void @of_node_put(ptr noundef nonnull %6) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.36) #9
  br label %18

12:                                               ; preds = %8
  %13 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %9) #9
  %14 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 21
  store ptr %13, ptr %14, align 4
  tail call void @of_node_put(ptr noundef nonnull %9) #9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, i32 -517, i32 0
  br label %18

18:                                               ; preds = %12, %11, %1
  %19 = phi i32 [ -22, %11 ], [ 0, %1 ], [ %17, %12 ]
  ret i32 %19
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_audio_hw_params(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca [14 x i8], align 1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %2, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 15
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %9, i1 %13, i1 false
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  %16 = and i8 %11, 1
  %17 = zext i8 %16 to i32
  %18 = lshr i8 %11, 1
  %19 = and i8 %18, 1
  %20 = zext i8 %19 to i32
  %21 = lshr i8 %11, 2
  %22 = and i8 %21, 1
  %23 = zext i8 %22 to i32
  %24 = lshr i8 %11, 3
  %25 = and i8 %24, 1
  %26 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.hdmi_audio_hw_params, i32 noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %26) #10
  br label %56

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.hdmi_context, ptr %7, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %28) #9
  %29 = getelementptr inbounds %struct.hdmi_context, ptr %7, i32 0, i32 23, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(216) %29, ptr noundef align 4 dereferenceable(216) %3, i32 216, i1 false)
  %30 = getelementptr inbounds %struct.hdmi_context, ptr %7, i32 0, i32 24
  %31 = load i8, ptr %30, align 8, !range !10
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %27
  tail call fastcc void @hdmi_audio_config(ptr noundef %7)
  %34 = getelementptr inbounds %struct.hdmi_context, ptr %7, i32 0, i32 23, i32 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %5, i8 0, i32 14, i1 false) #9, !annotation !9
  %35 = call i32 @hdmi_audio_infoframe_pack(ptr noundef %34, ptr noundef nonnull %5, i32 noundef 14) #9
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %38 = getelementptr inbounds %struct.hdmi_context, ptr %7, i32 0, i32 8
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr i8, ptr %39, i32 67584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 2) #9, !srcloc !12
  %41 = icmp eq i32 %35, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %42, %37
  %43 = phi i32 [ %51, %42 ], [ %35, %37 ]
  %44 = phi ptr [ %46, %42 ], [ %5, %37 ]
  %45 = phi i32 [ %52, %42 ], [ 67600, %37 ]
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  %46 = getelementptr i8, ptr %44, i32 1
  %47 = load i8, ptr %44, align 1
  %48 = zext i8 %47 to i32
  %49 = load ptr, ptr %38, align 8
  %50 = getelementptr i8, ptr %49, i32 %45
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #9, !srcloc !12
  %51 = add i32 %43, -1
  %52 = add i32 %45, 4
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %54, label %42

54:                                               ; preds = %42, %37, %33
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %5) #9
  br label %55

55:                                               ; preds = %54, %27
  call void @mutex_unlock(ptr noundef %28) #9
  br label %56

56:                                               ; preds = %55, %15
  %57 = phi i32 [ -22, %15 ], [ 0, %55 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_audio_shutdown(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hdmi_context, ptr %4, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.hdmi_context, ptr %4, i32 0, i32 23, i32 3
  store i8 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.hdmi_context, ptr %4, i32 0, i32 24
  %8 = load i8, ptr %7, align 8, !range !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.hdmi_context, ptr %4, i32 0, i32 4
  %12 = load i8, ptr %11, align 8, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %15 = getelementptr inbounds %struct.hdmi_context, ptr %4, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 67584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #9, !srcloc !12
  %18 = load ptr, ptr %15, align 8
  %19 = getelementptr i8, ptr %18, i32 65536
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %21 = and i32 %20, -5
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %22 = load ptr, ptr %15, align 8
  %23 = getelementptr i8, ptr %22, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #9, !srcloc !12
  br label %24

24:                                               ; preds = %14, %10, %2
  tail call void @mutex_unlock(ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_audio_mute(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = zext i1 %2 to i8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hdmi_context, ptr %7, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.hdmi_context, ptr %7, i32 0, i32 23, i32 3
  store i8 %5, ptr %9, align 4
  %10 = getelementptr inbounds %struct.hdmi_context, ptr %7, i32 0, i32 24
  %11 = load i8, ptr %10, align 8, !range !10
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.hdmi_context, ptr %7, i32 0, i32 4
  %15 = load i8, ptr %14, align 8, !range !10
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = select i1 %2, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %19 = getelementptr inbounds %struct.hdmi_context, ptr %7, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 67584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #9, !srcloc !12
  %22 = select i1 %2, i32 0, i32 4
  %23 = load ptr, ptr %19, align 8
  %24 = getelementptr i8, ptr %23, i32 65536
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %26 = and i32 %25, -5
  %27 = or i32 %26, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %28 = load ptr, ptr %19, align 8
  %29 = getelementptr i8, ptr %28, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #9, !srcloc !12
  br label %30

30:                                               ; preds = %17, %13, %4
  tail call void @mutex_unlock(ptr noundef %8) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_audio_get_eld(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #7 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hdmi_context, ptr %6, i32 0, i32 3, i32 42
  %8 = tail call i32 @llvm.umin.i32(i32 %3, i32 128)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 8 %7, i32 %8, i1 false)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hdmi_audio_config(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 23, i32 2, i32 3
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %5 [
    i32 20, label %6
    i32 24, label %4
  ]

4:                                                ; preds = %1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %4, %1
  %7 = phi i32 [ 0, %5 ], [ 16, %4 ], [ 16, %1 ]
  %8 = phi i32 [ 4, %5 ], [ 12, %4 ], [ 8, %1 ]
  %9 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 23, i32 2, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = urem i32 %10, 9
  %12 = icmp eq i32 %11, 0
  %13 = shl i32 %10, 7
  %14 = select i1 %12, i32 900, i32 1000
  %15 = udiv i32 %13, %14
  %16 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr [6 x [2 x i32]], ptr @hdmi_reg_map, i32 0, i32 5, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %22 = and i32 %15, 255
  %23 = load ptr, ptr %21, align 8
  %24 = getelementptr i8, ptr %23, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !12
  %25 = lshr i32 %15, 8
  %26 = add i32 %20, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %27 = and i32 %25, 255
  %28 = load ptr, ptr %21, align 8
  %29 = getelementptr i8, ptr %28, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #9, !srcloc !12
  %30 = lshr i32 %15, 16
  %31 = add i32 %20, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %32 = load ptr, ptr %21, align 8
  %33 = getelementptr i8, ptr %32, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %30) #9, !srcloc !12
  %34 = select i1 %12, i32 30000, i32 27000
  %35 = load ptr, ptr %16, align 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr [6 x [2 x i32]], ptr @hdmi_reg_map, i32 0, i32 3, i32 %36
  %38 = load i32, ptr %37, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %39 = and i32 %34, 120
  %40 = load ptr, ptr %21, align 8
  %41 = getelementptr i8, ptr %40, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #9, !srcloc !12
  %42 = lshr i32 %34, 8
  %43 = add i32 %38, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %44 = load ptr, ptr %21, align 8
  %45 = getelementptr i8, ptr %44, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %42) #9, !srcloc !12
  %46 = add i32 %38, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %47 = load ptr, ptr %21, align 8
  %48 = getelementptr i8, ptr %47, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #9, !srcloc !12
  %49 = load ptr, ptr %16, align 4
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr [6 x [2 x i32]], ptr @hdmi_reg_map, i32 0, i32 4, i32 %50
  %52 = load i32, ptr %51, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %53 = load ptr, ptr %21, align 8
  %54 = getelementptr i8, ptr %53, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %39) #9, !srcloc !12
  %55 = add i32 %52, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %56 = load ptr, ptr %21, align 8
  %57 = getelementptr i8, ptr %56, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %42) #9, !srcloc !12
  %58 = add i32 %52, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %59 = load ptr, ptr %21, align 8
  %60 = getelementptr i8, ptr %59, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 0) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %61 = load ptr, ptr %21, align 8
  %62 = load ptr, ptr %16, align 4
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr [6 x [2 x i32]], ptr @hdmi_reg_map, i32 0, i32 2, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr i8, ptr %61, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 4) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %67 = load ptr, ptr %21, align 8
  %68 = getelementptr i8, ptr %67, i32 262176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 23) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %69 = load ptr, ptr %21, align 8
  %70 = getelementptr i8, ptr %69, i32 262228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 63) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %71 = load ptr, ptr %21, align 8
  %72 = getelementptr i8, ptr %71, i32 262232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 3) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %73 = load ptr, ptr %21, align 8
  %74 = getelementptr i8, ptr %73, i32 262144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 0) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %75 = load ptr, ptr %21, align 8
  %76 = getelementptr i8, ptr %75, i32 262144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 1) #9, !srcloc !12
  %77 = load ptr, ptr %21, align 8
  %78 = getelementptr i8, ptr %77, i32 262172
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %80 = load ptr, ptr %21, align 8
  %81 = and i32 %79, 254
  %82 = or i32 %81, 1
  %83 = getelementptr i8, ptr %80, i32 262172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %82) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %84 = load ptr, ptr %21, align 8
  %85 = getelementptr i8, ptr %84, i32 262156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 86) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %86 = load ptr, ptr %21, align 8
  %87 = getelementptr i8, ptr %86, i32 262160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 52) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %88 = load ptr, ptr %21, align 8
  %89 = getelementptr i8, ptr %88, i32 262164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 18) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %90 = load ptr, ptr %21, align 8
  %91 = getelementptr i8, ptr %90, i32 262168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 0) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %92 = load ptr, ptr %21, align 8
  %93 = getelementptr i8, ptr %92, i32 262148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 0) #9, !srcloc !12
  %94 = or i32 %8, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %95 = load ptr, ptr %21, align 8
  %96 = getelementptr i8, ptr %95, i32 262152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #9, !srcloc !12
  %97 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 23, i32 2, i32 1
  %98 = load i8, ptr %97, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %99 = load ptr, ptr %21, align 8
  %100 = zext i8 %98 to i32
  %101 = getelementptr i8, ptr %99, i32 262184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %100) #9, !srcloc !12
  %102 = getelementptr %struct.hdmi_context, ptr %0, i32 0, i32 23, i32 2, i32 1, i32 0, i32 1
  %103 = load i8, ptr %102, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %104 = load ptr, ptr %21, align 8
  %105 = zext i8 %103 to i32
  %106 = getelementptr i8, ptr %104, i32 262188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %105) #9, !srcloc !12
  %107 = getelementptr %struct.hdmi_context, ptr %0, i32 0, i32 23, i32 2, i32 1, i32 0, i32 2
  %108 = load i8, ptr %107, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %109 = load ptr, ptr %21, align 8
  %110 = zext i8 %108 to i32
  %111 = getelementptr i8, ptr %109, i32 262192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %110) #9, !srcloc !12
  %112 = getelementptr %struct.hdmi_context, ptr %0, i32 0, i32 23, i32 2, i32 1, i32 0, i32 3
  %113 = load i8, ptr %112, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %114 = load ptr, ptr %21, align 8
  %115 = zext i8 %113 to i32
  %116 = getelementptr i8, ptr %114, i32 262196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %115) #9, !srcloc !12
  %117 = getelementptr %struct.hdmi_context, ptr %0, i32 0, i32 23, i32 2, i32 1, i32 0, i32 4
  %118 = load i8, ptr %117, align 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %119 = load ptr, ptr %21, align 8
  %120 = zext i8 %118 to i32
  %121 = getelementptr i8, ptr %119, i32 262200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %120) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %122 = load ptr, ptr %21, align 8
  %123 = getelementptr i8, ptr %122, i32 262180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 1) #9, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca %struct.cec_connector_info, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.hdmi_context, ptr %6, i32 0, i32 2
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.hdmi_context, ptr %6, i32 0, i32 20
  store ptr @hdmiphy_clk_enable, ptr %8, align 8
  %9 = tail call i32 @drm_simple_encoder_init(ptr noundef %2, ptr noundef %6, i32 noundef 2) #9
  %10 = getelementptr inbounds %struct.drm_encoder, ptr %6, i32 0, i32 11
  store ptr @exynos_hdmi_encoder_helper_funcs, ptr %10, align 4
  %11 = tail call i32 @exynos_drm_set_possible_crtcs(ptr noundef %6, i32 noundef 2) #9
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %50, label %13

13:                                               ; preds = %3
  %14 = tail call ptr @exynos_drm_crtc_get_by_type(ptr noundef %2, i32 noundef 2) #9
  %15 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %14, i32 0, i32 4
  store ptr %8, ptr %15, align 4
  %16 = getelementptr inbounds %struct.hdmi_context, ptr %6, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %4, i8 0, i32 68, i1 false) #9, !annotation !9
  %17 = getelementptr inbounds %struct.hdmi_context, ptr %6, i32 0, i32 3, i32 12
  store i8 1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.hdmi_context, ptr %6, i32 0, i32 3, i32 33
  store i8 1, ptr %18, align 4
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.hdmi_context, ptr %6, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %19, ptr noundef %16, ptr noundef nonnull @hdmi_connector_funcs, i32 noundef 11, ptr noundef %21) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.hdmi_context, ptr %6, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %26, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.61) #9
  br label %44

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.hdmi_context, ptr %6, i32 0, i32 3, i32 35
  store ptr @hdmi_connector_helper_funcs, ptr %28, align 4
  %29 = tail call i32 @drm_connector_attach_encoder(ptr noundef %16, ptr noundef %6) #9
  %30 = getelementptr inbounds %struct.hdmi_context, ptr %6, i32 0, i32 21
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = tail call i32 @drm_bridge_attach(ptr noundef %6, ptr noundef nonnull %31, ptr noundef null, i32 noundef 0) #9
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i32 [ %34, %33 ], [ 0, %27 ]
  call void @cec_fill_conn_info_from_drm(ptr noundef nonnull %4, ptr noundef %16) #9
  %37 = getelementptr inbounds %struct.hdmi_context, ptr %6, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = call ptr @cec_notifier_conn_register(ptr noundef %38, ptr noundef null, ptr noundef nonnull %4) #9
  %40 = getelementptr inbounds %struct.hdmi_context, ptr %6, i32 0, i32 6
  store ptr %39, ptr %40, align 8
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load ptr, ptr %37, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %43, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.62) #9
  br label %44

44:                                               ; preds = %42, %24
  %45 = phi i32 [ -12, %42 ], [ %22, %24 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #9
  br label %48

46:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #9
  %47 = icmp eq i32 %36, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %36, %46 ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.48, i32 noundef %49) #9
  call void @drm_encoder_cleanup(ptr noundef %6) #9
  br label %50

50:                                               ; preds = %48, %46, %3
  %51 = phi i32 [ %49, %48 ], [ %11, %3 ], [ 0, %46 ]
  ret i32 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @hdmi_unbind(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #8 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmiphy_clk_enable(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 8
  tail call void @mutex_lock(ptr noundef %3) #9
  br i1 %1, label %4, label %6

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 -1184
  tail call fastcc void @hdmiphy_enable(ptr noundef %5)
  br label %38

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 280
  %8 = load i8, ptr %7, align 8, !range !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -80
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 65536
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %15 = and i32 %14, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %16 = load ptr, ptr %11, align 8
  %17 = getelementptr i8, ptr %16, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !12
  %18 = load ptr, ptr %11, align 8
  %19 = getelementptr i8, ptr %18, i32 48
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %21 = or i32 %20, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %22 = load ptr, ptr %11, align 8
  %23 = getelementptr i8, ptr %22, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #9, !srcloc !12
  %24 = getelementptr i8, ptr %0, i32 -52
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %10
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %25, i32 noundef 4104, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %29

29:                                               ; preds = %27, %10
  %30 = getelementptr i8, ptr %0, i32 -56
  %31 = load ptr, ptr %30, align 8
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 1792, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %33 = getelementptr i8, ptr %0, i32 -40
  %34 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %33) #9
  %35 = getelementptr i8, ptr %0, i32 -1112
  %36 = load ptr, ptr %35, align 8
  %37 = tail call i32 @__pm_runtime_idle(ptr noundef %36, i32 noundef 4) #9
  store i8 0, ptr %7, align 8
  br label %38

38:                                               ; preds = %29, %6, %4
  tail call void @mutex_unlock(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_set_possible_crtcs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_crtc_get_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hdmiphy_enable(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 24
  %3 = load i8, ptr %2, align 8, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %220

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #9, !srcloc !20
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #9, !srcloc !21
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  br label %16

16:                                               ; preds = %15, %10
  %17 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.49) #10
  br label %220

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 18
  %20 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %19) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %23, i32 noundef 4, ptr noundef nonnull @.str.50) #9
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 1792, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %28 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %29, i32 noundef 4104, i32 noundef 1, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %33

33:                                               ; preds = %31, %24
  %34 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 8
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %35, i32 48
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %38 = and i32 %37, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %39 = load ptr, ptr %34, align 8
  %40 = getelementptr i8, ptr %39, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #9, !srcloc !12
  %41 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.drm_crtc, ptr %42, i32 0, i32 22
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.drm_crtc_state, ptr %44, i32 0, i32 8
  %46 = load i32, ptr %45, align 4
  %47 = mul i32 %46, 1000
  %48 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 7
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.hdmi_driver_data, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %33
  %54 = getelementptr inbounds %struct.hdmi_driver_data, ptr %49, i32 0, i32 2, i32 1
  %55 = load ptr, ptr %54, align 4
  br label %56

56:                                               ; preds = %61, %53
  %57 = phi i32 [ 0, %53 ], [ %62, %61 ]
  %58 = getelementptr %struct.hdmiphy_config, ptr %55, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, %47
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = add nuw nsw i32 %57, 1
  %63 = icmp eq i32 %62, %51
  br i1 %63, label %64, label %56

64:                                               ; preds = %61, %33
  %65 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %65, i32 noundef 4, ptr noundef nonnull @.str.53, i32 noundef %47) #9
  %66 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %66, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.51) #9
  br label %219

67:                                               ; preds = %56
  %68 = getelementptr %struct.hdmiphy_config, ptr %55, i32 %57, i32 1
  %69 = load ptr, ptr %6, align 8
  %70 = getelementptr inbounds %struct.hdmi_driver_data, ptr %49, i32 0, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 17
  br label %75

75:                                               ; preds = %93, %73
  %76 = phi i32 [ 0, %73 ], [ %94, %93 ]
  %77 = load ptr, ptr %74, align 4
  %78 = getelementptr ptr, ptr %77, i32 %76
  %79 = getelementptr ptr, ptr %78, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %78, align 4
  %82 = tail call i32 @clk_set_parent(ptr noundef %80, ptr noundef %81) #9
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %75
  %85 = load ptr, ptr %48, align 4
  %86 = getelementptr inbounds %struct.hdmi_driver_data, ptr %85, i32 0, i32 4, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = add i32 %76, 2
  %89 = getelementptr ptr, ptr %87, i32 %88
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr ptr, ptr %87, i32 %76
  %92 = load ptr, ptr %91, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.32, ptr noundef %90, ptr noundef %92, i32 noundef %82) #10
  br label %93

93:                                               ; preds = %84, %75
  %94 = add i32 %76, 3
  %95 = load ptr, ptr %48, align 4
  %96 = getelementptr inbounds %struct.hdmi_driver_data, ptr %95, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %75, label %99

99:                                               ; preds = %93, %67
  %100 = load ptr, ptr %34, align 8
  %101 = getelementptr i8, ptr %100, i32 128
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %103 = and i32 %102, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %104 = load ptr, ptr %34, align 8
  %105 = getelementptr i8, ptr %104, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #9, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #9
  %106 = load ptr, ptr %34, align 8
  %107 = getelementptr i8, ptr %106, i32 128
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %109 = or i32 %108, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %110 = load ptr, ptr %34, align 8
  %111 = getelementptr i8, ptr %110, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #9, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #9
  %112 = load ptr, ptr %48, align 4
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr [6 x [2 x i32]], ptr @hdmi_reg_map, i32 0, i32 1, i32 %113
  %115 = load i32, ptr %114, align 4
  %116 = load ptr, ptr %34, align 8
  %117 = getelementptr i8, ptr %116, i32 %115
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %119 = or i32 %118, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %120 = load ptr, ptr %34, align 8
  %121 = getelementptr i8, ptr %120, i32 %115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #9, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #9
  %122 = load ptr, ptr %48, align 4
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr [6 x [2 x i32]], ptr @hdmi_reg_map, i32 0, i32 1, i32 %123
  %125 = load i32, ptr %124, align 4
  %126 = load ptr, ptr %34, align 8
  %127 = getelementptr i8, ptr %126, i32 %125
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %129 = and i32 %128, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %130 = load ptr, ptr %34, align 8
  %131 = getelementptr i8, ptr %130, i32 %125
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #9, !srcloc !12
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #9
  %132 = load ptr, ptr %48, align 4
  %133 = icmp eq ptr %132, @exynos5433_hdmi_driver_data
  br i1 %133, label %134, label %138

134:                                              ; preds = %99
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %135 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 9
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr i8, ptr %136, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 0) #9, !srcloc !12
  br label %138

138:                                              ; preds = %134, %99
  %139 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 10
  %140 = load ptr, ptr %139, align 8
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 9
  br label %146

144:                                              ; preds = %138
  %145 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef nonnull %140, ptr noundef %68, i32 noundef 32, i16 noundef zeroext 0) #9
  switch i32 %145, label %156 [
    i32 32, label %158
    i32 0, label %158
  ]

146:                                              ; preds = %146, %142
  %147 = phi i32 [ 0, %142 ], [ %154, %146 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %148 = getelementptr i8, ptr %68, i32 %147
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = load ptr, ptr %143, align 4
  %152 = shl nuw nsw i32 %147, 2
  %153 = getelementptr i8, ptr %151, i32 %152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %150) #9, !srcloc !12
  %154 = add nuw nsw i32 %147, 1
  %155 = icmp eq i32 %154, 32
  br i1 %155, label %158, label %146

156:                                              ; preds = %144
  %157 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %157, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.52) #9
  br label %219

158:                                              ; preds = %146, %144, %144
  %159 = load ptr, ptr %48, align 4
  %160 = icmp eq ptr %159, @exynos5433_hdmi_driver_data
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %162 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 9
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr i8, ptr %163, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 128) #9, !srcloc !12
  %165 = load ptr, ptr %48, align 4
  br label %166

166:                                              ; preds = %161, %158
  %167 = phi ptr [ %159, %158 ], [ %165, %161 ]
  %168 = load ptr, ptr %6, align 8
  %169 = getelementptr inbounds %struct.hdmi_driver_data, ptr %167, i32 0, i32 4
  %170 = load i32, ptr %169, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %200

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 17
  br label %174

174:                                              ; preds = %194, %172
  %175 = phi i32 [ 0, %172 ], [ %195, %194 ]
  %176 = load ptr, ptr %173, align 4
  %177 = getelementptr ptr, ptr %176, i32 %175
  %178 = getelementptr ptr, ptr %177, i32 2
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr ptr, ptr %177, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = tail call i32 @clk_set_parent(ptr noundef %179, ptr noundef %181) #9
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %194, label %184

184:                                              ; preds = %174
  %185 = load ptr, ptr %48, align 4
  %186 = getelementptr inbounds %struct.hdmi_driver_data, ptr %185, i32 0, i32 4, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = add i32 %175, 2
  %189 = getelementptr ptr, ptr %187, i32 %188
  %190 = load ptr, ptr %189, align 4
  %191 = add nsw i32 %175, 1
  %192 = getelementptr ptr, ptr %187, i32 %191
  %193 = load ptr, ptr %192, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.32, ptr noundef %190, ptr noundef %193, i32 noundef %182) #10
  br label %194

194:                                              ; preds = %184, %174
  %195 = add i32 %175, 3
  %196 = load ptr, ptr %48, align 4
  %197 = getelementptr inbounds %struct.hdmi_driver_data, ptr %196, i32 0, i32 4
  %198 = load i32, ptr %197, align 4
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %174, label %200

200:                                              ; preds = %194, %166
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #9
  br label %201

201:                                              ; preds = %214, %200
  %202 = phi i32 [ 0, %200 ], [ %215, %214 ]
  %203 = load ptr, ptr %34, align 8
  %204 = load ptr, ptr %48, align 4
  %205 = load i32, ptr %204, align 4
  %206 = getelementptr [6 x [2 x i32]], ptr @hdmi_reg_map, i32 0, i32 0, i32 %205
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr i8, ptr %203, i32 %207
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %208) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %201
  %213 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %213, i32 noundef 4, ptr noundef nonnull @.str.54, i32 noundef %202) #9
  br label %219

214:                                              ; preds = %201
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #9
  %215 = add nuw nsw i32 %202, 1
  %216 = icmp eq i32 %215, 10
  br i1 %216, label %217, label %201

217:                                              ; preds = %214
  %218 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %218, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.55) #9
  br label %219

219:                                              ; preds = %217, %212, %156, %64
  store i8 1, ptr %2, align 8
  br label %220

220:                                              ; preds = %219, %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @hdmi_mode_fixup(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca %struct.drm_connector_list_iter, align 8
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !9
  tail call void @drm_mode_set_crtcinfo(ptr noundef %2, i32 noundef 0) #9
  call void @drm_connector_list_iter_begin(ptr noundef %5, ptr noundef nonnull %4) #9
  br label %6

6:                                                ; preds = %9, %3
  %7 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.drm_connector, ptr %7, i32 0, i32 41
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %6

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.drm_connector, ptr %7, i32 0, i32 6
  call void @drm_mode_object_get(ptr noundef %14) #9
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #9
  %15 = call i32 @hdmi_mode_valid(ptr noundef nonnull %7, ptr noundef %2)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %40, label %18

17:                                               ; preds = %6
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #9
  br label %41

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.drm_connector, ptr %7, i32 0, i32 17
  br label %20

20:                                               ; preds = %24, %18
  %21 = phi ptr [ %19, %18 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %19
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %22, i32 -64
  %26 = call i32 @hdmi_mode_valid(ptr noundef nonnull %7, ptr noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %20

28:                                               ; preds = %24
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #10
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #10
  %31 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %22, i32 -60
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %22, i32 -50
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = call i32 @drm_mode_vrefresh(ptr noundef %25) #9
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %32, i32 noundef 4, ptr noundef nonnull @.str.58, i32 noundef %35, i32 noundef %38, i32 noundef %39) #9
  call void @drm_mode_copy(ptr noundef %2, ptr noundef %25) #9
  br label %40

40:                                               ; preds = %28, %20, %13
  call void @drm_mode_object_put(ptr noundef %14) #9
  br label %41

41:                                               ; preds = %40, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 24
  %4 = load i8, ptr %3, align 8, !range !10
  %5 = icmp eq i8 %4, 0
  tail call void @mutex_unlock(ptr noundef %2) #9
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 5
  %8 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %7) #9
  %9 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void @cec_notifier_set_phys_addr(ptr noundef nonnull %10, i16 noundef zeroext -1) #9
  br label %13

13:                                               ; preds = %12, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_enable(ptr noundef %0) #0 {
  %2 = alloca [14 x i8], align 1
  %3 = alloca %union.hdmi_infoframe, align 4
  %4 = alloca [25 x i8], align 1
  %5 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %5) #9
  tail call fastcc void @hdmiphy_enable(ptr noundef %0)
  %6 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 22
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 8, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 3
  %13 = and i32 %12, 2
  %14 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 65536
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %18 = and i32 %17, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %19 = load ptr, ptr %14, align 8
  %20 = getelementptr i8, ptr %19, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !12
  %21 = load ptr, ptr %14, align 8
  %22 = getelementptr i8, ptr %21, i32 327680
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %24 = and i32 %23, -4
  %25 = or i32 %24, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %26 = load ptr, ptr %14, align 8
  %27 = getelementptr i8, ptr %26, i32 327680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #9, !srcloc !12
  %28 = load ptr, ptr %14, align 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %30 = and i32 %29, -77
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %31 = load ptr, ptr %14, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #9, !srcloc !12
  %32 = load ptr, ptr %14, align 8
  %33 = getelementptr i8, ptr %32, i32 65600
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %35 = and i32 %34, -4
  %36 = or i32 %35, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %37 = load ptr, ptr %14, align 8
  %38 = getelementptr i8, ptr %37, i32 65600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %39 = load ptr, ptr %14, align 8
  %40 = getelementptr i8, ptr %39, i32 65544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #9, !srcloc !12
  %41 = load ptr, ptr %14, align 8
  %42 = getelementptr i8, ptr %41, i32 65536
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %44 = and i32 %43, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %45 = load ptr, ptr %14, align 8
  %46 = getelementptr i8, ptr %45, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #9, !srcloc !12
  %47 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 4
  %48 = load i8, ptr %47, align 8, !range !10
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %1
  %51 = load ptr, ptr %14, align 8
  %52 = getelementptr i8, ptr %51, i32 65600
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %54 = and i32 %53, -4
  %55 = or i32 %54, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %56 = load ptr, ptr %14, align 8
  %57 = getelementptr i8, ptr %56, i32 65600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %58 = load ptr, ptr %14, align 8
  %59 = getelementptr i8, ptr %58, i32 65544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 34) #9, !srcloc !12
  br label %60

60:                                               ; preds = %50, %1
  %61 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %66 = load ptr, ptr %14, align 8
  %67 = getelementptr i8, ptr %66, i32 65616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 18) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %68 = load ptr, ptr %14, align 8
  %69 = getelementptr i8, ptr %68, i32 65620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 52) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %70 = load ptr, ptr %14, align 8
  %71 = getelementptr i8, ptr %70, i32 65624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 86) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %72 = load ptr, ptr %14, align 8
  %73 = getelementptr i8, ptr %72, i32 66304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 2) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %74 = load ptr, ptr %14, align 8
  %75 = getelementptr i8, ptr %74, i32 66336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 0) #9, !srcloc !12
  %76 = load ptr, ptr %14, align 8
  %77 = getelementptr i8, ptr %76, i32 65540
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %79 = and i32 %78, -545
  %80 = or i32 %79, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %81 = load ptr, ptr %14, align 8
  %82 = getelementptr i8, ptr %81, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %83 = load ptr, ptr %14, align 8
  %84 = getelementptr i8, ptr %83, i32 66560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 2) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %85 = load ptr, ptr %14, align 8
  %86 = getelementptr i8, ptr %85, i32 66400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 2) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %87 = load ptr, ptr %14, align 8
  %88 = getelementptr i8, ptr %87, i32 65920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 4) #9, !srcloc !12
  br label %198

89:                                               ; preds = %60
  %90 = load ptr, ptr %6, align 4
  %91 = getelementptr inbounds %struct.drm_crtc, ptr %90, i32 0, i32 22
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.drm_crtc_state, ptr %92, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i32 68, i1 false) #9, !annotation !9
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(25) %4, i8 0, i32 25, i1 false) #9, !annotation !9
  %94 = load i8, ptr %47, align 8, !range !10
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %97 = load ptr, ptr %14, align 8
  %98 = getelementptr i8, ptr %97, i32 67328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 0) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %99 = load ptr, ptr %14, align 8
  %100 = getelementptr i8, ptr %99, i32 68608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 0) #9, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %101 = load ptr, ptr %14, align 8
  %102 = getelementptr i8, ptr %101, i32 67584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 0) #9, !srcloc !12
  br label %191

103:                                              ; preds = %89
  %104 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 3
  %105 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %3, ptr noundef %104, ptr noundef %93) #9
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 25) #9
  br label %109

109:                                              ; preds = %107, %103
  %110 = phi i32 [ %105, %103 ], [ %108, %107 ]
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %109
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %113 = load ptr, ptr %14, align 8
  %114 = getelementptr i8, ptr %113, i32 67328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 2) #9, !srcloc !12
  br label %115

115:                                              ; preds = %115, %112
  %116 = phi i32 [ %110, %112 ], [ %124, %115 ]
  %117 = phi ptr [ %4, %112 ], [ %119, %115 ]
  %118 = phi i32 [ 67344, %112 ], [ %125, %115 ]
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  %119 = getelementptr i8, ptr %117, i32 1
  %120 = load i8, ptr %117, align 1
  %121 = zext i8 %120 to i32
  %122 = load ptr, ptr %14, align 8
  %123 = getelementptr i8, ptr %122, i32 %118
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #9, !srcloc !12
  %124 = add i32 %116, -1
  %125 = add i32 %118, 4
  %126 = icmp eq i32 %124, 0
  br i1 %126, label %129, label %115

127:                                              ; preds = %109
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.hdmi_reg_infoframes, i32 noundef %110) #10
  br label %129

129:                                              ; preds = %127, %115
  %130 = call i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef nonnull %3, ptr noundef %104, ptr noundef %93) #9
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 @hdmi_vendor_infoframe_pack(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 25) #9
  br label %134

134:                                              ; preds = %132, %129
  %135 = phi i32 [ %130, %129 ], [ %133, %132 ]
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %170

137:                                              ; preds = %134
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %138 = load ptr, ptr %14, align 8
  %139 = getelementptr i8, ptr %138, i32 68608
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 2) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  %140 = getelementptr inbounds i8, ptr %4, i32 1
  %141 = load i8, ptr %4, align 1
  %142 = zext i8 %141 to i32
  %143 = load ptr, ptr %14, align 8
  %144 = getelementptr i8, ptr %143, i32 68624
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  %145 = getelementptr inbounds i8, ptr %4, i32 2
  %146 = load i8, ptr %140, align 1
  %147 = zext i8 %146 to i32
  %148 = load ptr, ptr %14, align 8
  %149 = getelementptr i8, ptr %148, i32 68628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  %150 = load i8, ptr %145, align 1
  %151 = zext i8 %150 to i32
  %152 = load ptr, ptr %14, align 8
  %153 = getelementptr i8, ptr %152, i32 68632
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %151) #9, !srcloc !12
  %154 = add nsw i32 %135, -3
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %170, label %156

156:                                              ; preds = %137
  %157 = getelementptr inbounds i8, ptr %4, i32 3
  br label %158

158:                                              ; preds = %158, %156
  %159 = phi i32 [ %167, %158 ], [ %154, %156 ]
  %160 = phi ptr [ %162, %158 ], [ %157, %156 ]
  %161 = phi i32 [ %168, %158 ], [ 68640, %156 ]
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  %162 = getelementptr i8, ptr %160, i32 1
  %163 = load i8, ptr %160, align 1
  %164 = zext i8 %163 to i32
  %165 = load ptr, ptr %14, align 8
  %166 = getelementptr i8, ptr %165, i32 %161
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %164) #9, !srcloc !12
  %167 = add i32 %159, -1
  %168 = add i32 %161, 4
  %169 = icmp eq i32 %167, 0
  br i1 %169, label %170, label %158

170:                                              ; preds = %158, %137, %134
  %171 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 23, i32 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %2, i8 0, i32 14, i1 false) #9, !annotation !9
  %172 = call i32 @hdmi_audio_infoframe_pack(ptr noundef %171, ptr noundef nonnull %2, i32 noundef 14) #9
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %190, label %174

174:                                              ; preds = %170
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %175 = load ptr, ptr %14, align 8
  %176 = getelementptr i8, ptr %175, i32 67584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 2) #9, !srcloc !12
  %177 = icmp eq i32 %172, 0
  br i1 %177, label %190, label %178

178:                                              ; preds = %178, %174
  %179 = phi i32 [ %187, %178 ], [ %172, %174 ]
  %180 = phi ptr [ %182, %178 ], [ %2, %174 ]
  %181 = phi i32 [ %188, %178 ], [ 67600, %174 ]
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  %182 = getelementptr i8, ptr %180, i32 1
  %183 = load i8, ptr %180, align 1
  %184 = zext i8 %183 to i32
  %185 = load ptr, ptr %14, align 8
  %186 = getelementptr i8, ptr %185, i32 %181
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %184) #9, !srcloc !12
  %187 = add i32 %179, -1
  %188 = add i32 %181, 4
  %189 = icmp eq i32 %187, 0
  br i1 %189, label %190, label %178

190:                                              ; preds = %178, %174, %170
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #9
  br label %191

191:                                              ; preds = %190, %96
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #9
  %192 = load ptr, ptr %14, align 8
  %193 = getelementptr i8, ptr %192, i32 65540
  %194 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #9, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %195 = and i32 %194, -97
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  call void @arm_heavy_mb() #9
  %196 = load ptr, ptr %14, align 8
  %197 = getelementptr i8, ptr %196, i32 65540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %195) #9, !srcloc !12
  br label %198

198:                                              ; preds = %191, %65
  call fastcc void @hdmi_audio_config(ptr noundef %0) #9
  %199 = load ptr, ptr %61, align 4
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq i32 %200, 0
  %202 = load ptr, ptr %6, align 4
  %203 = getelementptr inbounds %struct.drm_crtc, ptr %202, i32 0, i32 22
  %204 = load ptr, ptr %203, align 4
  br i1 %201, label %205, label %536

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 4
  %207 = load i16, ptr %206, align 2
  %208 = zext i16 %207 to i32
  %209 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 1
  %210 = load i16, ptr %209, align 4
  %211 = zext i16 %210 to i32
  %212 = sub nsw i32 %208, %211
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %213 = and i32 %212, 255
  %214 = load ptr, ptr %14, align 8
  %215 = getelementptr i8, ptr %214, i32 65696
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %213) #9, !srcloc !12
  %216 = lshr i32 %212, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %217 = and i32 %216, 255
  %218 = load ptr, ptr %14, align 8
  %219 = getelementptr i8, ptr %218, i32 65700
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 %217) #9, !srcloc !12
  %220 = load i16, ptr %206, align 2
  %221 = zext i16 %220 to i32
  %222 = shl nuw nsw i32 %221, 12
  %223 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 9
  %224 = load i16, ptr %223, align 4
  %225 = zext i16 %224 to i32
  %226 = or i32 %222, %225
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %227 = and i32 %225, 255
  %228 = load ptr, ptr %14, align 8
  %229 = getelementptr i8, ptr %228, i32 65728
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %227) #9, !srcloc !12
  %230 = lshr i32 %226, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %231 = and i32 %230, 255
  %232 = load ptr, ptr %14, align 8
  %233 = getelementptr i8, ptr %232, i32 65732
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 %231) #9, !srcloc !12
  %234 = lshr i32 %221, 4
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %235 = and i32 %234, 255
  %236 = load ptr, ptr %14, align 8
  %237 = getelementptr i8, ptr %236, i32 65736
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %235) #9, !srcloc !12
  %238 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 11
  %239 = load i32, ptr %238, align 4
  %240 = lshr i32 %239, 3
  %241 = and i32 %240, 1
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %242 = load ptr, ptr %14, align 8
  %243 = getelementptr i8, ptr %242, i32 65764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %243, i32 %241) #9, !srcloc !12
  %244 = load i32, ptr %238, align 4
  %245 = lshr i32 %244, 4
  %246 = and i32 %245, 1
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %247 = load ptr, ptr %14, align 8
  %248 = getelementptr i8, ptr %247, i32 65768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 %246) #9, !srcloc !12
  %249 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 2
  %250 = load i16, ptr %249, align 2
  %251 = zext i16 %250 to i32
  %252 = load i16, ptr %209, align 4
  %253 = zext i16 %252 to i32
  %254 = add nsw i32 %251, -2
  %255 = sub nsw i32 %254, %253
  %256 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 3
  %257 = load i16, ptr %256, align 4
  %258 = zext i16 %257 to i32
  %259 = sub nsw i32 %258, %253
  %260 = shl nsw i32 %259, 10
  %261 = add nsw i32 %260, -2048
  %262 = load i32, ptr %238, align 4
  %263 = shl i32 %262, 19
  %264 = and i32 %263, 1048576
  %265 = or i32 %264, %255
  %266 = or i32 %265, %261
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %267 = and i32 %255, 255
  %268 = load ptr, ptr %14, align 8
  %269 = getelementptr i8, ptr %268, i32 65824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %269, i32 %267) #9, !srcloc !12
  %270 = lshr i32 %266, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %271 = and i32 %270, 255
  %272 = load ptr, ptr %14, align 8
  %273 = getelementptr i8, ptr %272, i32 65828
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 %271) #9, !srcloc !12
  %274 = lshr i32 %266, 16
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %275 = and i32 %274, 255
  %276 = load ptr, ptr %14, align 8
  %277 = getelementptr i8, ptr %276, i32 65832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %277, i32 %275) #9, !srcloc !12
  %278 = load i32, ptr %238, align 4
  %279 = and i32 %278, 16
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %418, label %281

281:                                              ; preds = %205
  %282 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 8
  %283 = load i16, ptr %282, align 2
  %284 = zext i16 %283 to i32
  %285 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 6
  %286 = load i16, ptr %285, align 2
  %287 = zext i16 %286 to i32
  %288 = sub nsw i32 %284, %287
  %289 = sdiv i32 %288, 2
  %290 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 7
  %291 = load i16, ptr %290, align 4
  %292 = zext i16 %291 to i32
  %293 = sub nsw i32 %292, %287
  %294 = sdiv i32 %293, 2
  %295 = shl nsw i32 %294, 12
  %296 = or i32 %295, %289
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %297 = and i32 %289, 255
  %298 = load ptr, ptr %14, align 8
  %299 = getelementptr i8, ptr %298, i32 65840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %299, i32 %297) #9, !srcloc !12
  %300 = lshr i32 %296, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %301 = and i32 %300, 255
  %302 = load ptr, ptr %14, align 8
  %303 = getelementptr i8, ptr %302, i32 65844
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %303, i32 %301) #9, !srcloc !12
  %304 = lshr i32 %296, 16
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %305 = and i32 %304, 255
  %306 = load ptr, ptr %14, align 8
  %307 = getelementptr i8, ptr %306, i32 65848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %307, i32 %305) #9, !srcloc !12
  %308 = load i16, ptr %223, align 4
  %309 = zext i16 %308 to i32
  %310 = lshr i32 %309, 1
  %311 = load i16, ptr %285, align 2
  %312 = zext i16 %311 to i32
  %313 = sub nsw i32 %309, %312
  %314 = sdiv i32 %313, 2
  %315 = shl nsw i32 %314, 11
  %316 = or i32 %315, %310
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %317 = and i32 %310, 255
  %318 = load ptr, ptr %14, align 8
  %319 = getelementptr i8, ptr %318, i32 65712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %319, i32 %317) #9, !srcloc !12
  %320 = lshr i32 %316, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %321 = and i32 %320, 255
  %322 = load ptr, ptr %14, align 8
  %323 = getelementptr i8, ptr %322, i32 65716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 %321) #9, !srcloc !12
  %324 = lshr i32 %315, 16
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %325 = and i32 %324, 255
  %326 = load ptr, ptr %14, align 8
  %327 = getelementptr i8, ptr %326, i32 65720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %327, i32 %325) #9, !srcloc !12
  %328 = load i16, ptr %223, align 4
  %329 = zext i16 %328 to i32
  %330 = load i16, ptr %282, align 2
  %331 = zext i16 %330 to i32
  %332 = load i16, ptr %290, align 4
  %333 = zext i16 %332 to i32
  %334 = sub nsw i32 %331, %333
  %335 = shl nsw i32 %334, 2
  %336 = add nuw nsw i32 %329, 5
  %337 = add nsw i32 %336, %335
  %338 = sdiv i32 %337, 2
  %339 = shl nuw nsw i32 %329, 11
  %340 = or i32 %338, %339
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %341 = and i32 %338, 255
  %342 = load ptr, ptr %14, align 8
  %343 = getelementptr i8, ptr %342, i32 65808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %343, i32 %341) #9, !srcloc !12
  %344 = lshr i32 %340, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %345 = and i32 %344, 255
  %346 = load ptr, ptr %14, align 8
  %347 = getelementptr i8, ptr %346, i32 65812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %347, i32 %345) #9, !srcloc !12
  %348 = lshr i32 %340, 16
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %349 = and i32 %348, 255
  %350 = load ptr, ptr %14, align 8
  %351 = getelementptr i8, ptr %350, i32 65816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %351, i32 %349) #9, !srcloc !12
  %352 = load i16, ptr %223, align 4
  %353 = lshr i16 %352, 1
  %354 = zext i16 %353 to i32
  %355 = add nuw nsw i32 %354, 7
  %356 = shl nuw nsw i32 %354, 12
  %357 = add nuw nsw i32 %356, 8192
  %358 = or i32 %357, %355
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %359 = and i32 %355, 255
  %360 = load ptr, ptr %14, align 8
  %361 = getelementptr i8, ptr %360, i32 65856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %361, i32 %359) #9, !srcloc !12
  %362 = lshr i32 %358, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %363 = and i32 %362, 255
  %364 = load ptr, ptr %14, align 8
  %365 = getelementptr i8, ptr %364, i32 65860
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %365, i32 %363) #9, !srcloc !12
  %366 = lshr i32 %357, 16
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %367 = and i32 %366, 255
  %368 = load ptr, ptr %14, align 8
  %369 = getelementptr i8, ptr %368, i32 65864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %369, i32 %367) #9, !srcloc !12
  %370 = load i16, ptr %206, align 2
  %371 = lshr i16 %370, 1
  %372 = zext i16 %371 to i32
  %373 = load i16, ptr %249, align 2
  %374 = zext i16 %373 to i32
  %375 = load i16, ptr %209, align 4
  %376 = zext i16 %375 to i32
  %377 = sub nsw i32 %374, %376
  %378 = add nsw i32 %377, %372
  %379 = shl nsw i32 %378, 12
  %380 = or i32 %379, %378
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %381 = and i32 %378, 255
  %382 = load ptr, ptr %14, align 8
  %383 = getelementptr i8, ptr %382, i32 65872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %383, i32 %381) #9, !srcloc !12
  %384 = lshr i32 %380, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %385 = and i32 %384, 255
  %386 = load ptr, ptr %14, align 8
  %387 = getelementptr i8, ptr %386, i32 65876
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %387, i32 %385) #9, !srcloc !12
  %388 = lshr i32 %380, 16
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %389 = and i32 %388, 255
  %390 = load ptr, ptr %14, align 8
  %391 = getelementptr i8, ptr %390, i32 65880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %391, i32 %389) #9, !srcloc !12
  %392 = load i16, ptr %223, align 4
  %393 = zext i16 %392 to i32
  %394 = load i16, ptr %285, align 2
  %395 = zext i16 %394 to i32
  %396 = sub nsw i32 %393, %395
  %397 = sdiv i32 %396, 2
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %398 = and i32 %397, 255
  %399 = load ptr, ptr %14, align 8
  %400 = getelementptr i8, ptr %399, i32 327752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %400, i32 %398) #9, !srcloc !12
  %401 = lshr i32 %397, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %402 = and i32 %401, 255
  %403 = load ptr, ptr %14, align 8
  %404 = getelementptr i8, ptr %403, i32 327756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %404, i32 %402) #9, !srcloc !12
  %405 = load i16, ptr %285, align 2
  %406 = lshr i16 %405, 1
  %407 = zext i16 %406 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %408 = and i32 %407, 255
  %409 = load ptr, ptr %14, align 8
  %410 = getelementptr i8, ptr %409, i32 327760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %410, i32 %408) #9, !srcloc !12
  %411 = lshr i32 %407, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %412 = load ptr, ptr %14, align 8
  %413 = getelementptr i8, ptr %412, i32 327764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %413, i32 %411) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %414 = load ptr, ptr %14, align 8
  %415 = getelementptr i8, ptr %414, i32 327776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %415, i32 73) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %416 = load ptr, ptr %14, align 8
  %417 = getelementptr i8, ptr %416, i32 327780
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %417, i32 2) #9, !srcloc !12
  br label %499

418:                                              ; preds = %205
  %419 = load i16, ptr %223, align 4
  %420 = zext i16 %419 to i32
  %421 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 6
  %422 = load i16, ptr %421, align 2
  %423 = zext i16 %422 to i32
  %424 = sub nsw i32 %420, %423
  %425 = shl nsw i32 %424, 11
  %426 = or i32 %425, %420
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %427 = and i32 %420, 255
  %428 = load ptr, ptr %14, align 8
  %429 = getelementptr i8, ptr %428, i32 65712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %429, i32 %427) #9, !srcloc !12
  %430 = lshr i32 %426, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %431 = and i32 %430, 255
  %432 = load ptr, ptr %14, align 8
  %433 = getelementptr i8, ptr %432, i32 65716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %433, i32 %431) #9, !srcloc !12
  %434 = lshr i32 %425, 16
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %435 = and i32 %434, 255
  %436 = load ptr, ptr %14, align 8
  %437 = getelementptr i8, ptr %436, i32 65720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %437, i32 %435) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %438 = load ptr, ptr %14, align 8
  %439 = getelementptr i8, ptr %438, i32 65808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %439, i32 0) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %440 = load ptr, ptr %14, align 8
  %441 = getelementptr i8, ptr %440, i32 65812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %441, i32 0) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %442 = load ptr, ptr %14, align 8
  %443 = getelementptr i8, ptr %442, i32 65816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %443, i32 0) #9, !srcloc !12
  %444 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 8
  %445 = load i16, ptr %444, align 2
  %446 = zext i16 %445 to i32
  %447 = load i16, ptr %421, align 2
  %448 = zext i16 %447 to i32
  %449 = sub nsw i32 %446, %448
  %450 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 7
  %451 = load i16, ptr %450, align 4
  %452 = zext i16 %451 to i32
  %453 = sub nsw i32 %452, %448
  %454 = shl nsw i32 %453, 12
  %455 = or i32 %454, %449
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %456 = and i32 %449, 255
  %457 = load ptr, ptr %14, align 8
  %458 = getelementptr i8, ptr %457, i32 65840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %458, i32 %456) #9, !srcloc !12
  %459 = lshr i32 %455, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %460 = and i32 %459, 255
  %461 = load ptr, ptr %14, align 8
  %462 = getelementptr i8, ptr %461, i32 65844
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %462, i32 %460) #9, !srcloc !12
  %463 = lshr i32 %455, 16
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %464 = and i32 %463, 255
  %465 = load ptr, ptr %14, align 8
  %466 = getelementptr i8, ptr %465, i32 65848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %466, i32 %464) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %467 = load ptr, ptr %14, align 8
  %468 = getelementptr i8, ptr %467, i32 65856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %468, i32 1) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %469 = load ptr, ptr %14, align 8
  %470 = getelementptr i8, ptr %469, i32 65860
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %470, i32 16) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %471 = load ptr, ptr %14, align 8
  %472 = getelementptr i8, ptr %471, i32 65864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %472, i32 0) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %473 = load ptr, ptr %14, align 8
  %474 = getelementptr i8, ptr %473, i32 65872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %474, i32 1) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %475 = load ptr, ptr %14, align 8
  %476 = getelementptr i8, ptr %475, i32 65876
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %476, i32 16) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %477 = load ptr, ptr %14, align 8
  %478 = getelementptr i8, ptr %477, i32 65880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %478, i32 0) #9, !srcloc !12
  %479 = load i16, ptr %223, align 4
  %480 = zext i16 %479 to i32
  %481 = load i16, ptr %421, align 2
  %482 = zext i16 %481 to i32
  %483 = sub nsw i32 %480, %482
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %484 = and i32 %483, 255
  %485 = load ptr, ptr %14, align 8
  %486 = getelementptr i8, ptr %485, i32 327752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %486, i32 %484) #9, !srcloc !12
  %487 = lshr i32 %483, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %488 = and i32 %487, 255
  %489 = load ptr, ptr %14, align 8
  %490 = getelementptr i8, ptr %489, i32 327756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %490, i32 %488) #9, !srcloc !12
  %491 = load i16, ptr %421, align 2
  %492 = zext i16 %491 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %493 = and i32 %492, 255
  %494 = load ptr, ptr %14, align 8
  %495 = getelementptr i8, ptr %494, i32 327760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %495, i32 %493) #9, !srcloc !12
  %496 = lshr i32 %492, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %497 = load ptr, ptr %14, align 8
  %498 = getelementptr i8, ptr %497, i32 327764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %498, i32 %496) #9, !srcloc !12
  br label %499

499:                                              ; preds = %418, %281
  %500 = load i16, ptr %206, align 2
  %501 = zext i16 %500 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %502 = and i32 %501, 255
  %503 = load ptr, ptr %14, align 8
  %504 = getelementptr i8, ptr %503, i32 327704
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %504, i32 %502) #9, !srcloc !12
  %505 = lshr i32 %501, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %506 = load ptr, ptr %14, align 8
  %507 = getelementptr i8, ptr %506, i32 327708
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %507, i32 %505) #9, !srcloc !12
  %508 = load i16, ptr %206, align 2
  %509 = zext i16 %508 to i32
  %510 = load i16, ptr %209, align 4
  %511 = zext i16 %510 to i32
  %512 = sub nsw i32 %509, %511
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %513 = and i32 %512, 255
  %514 = load ptr, ptr %14, align 8
  %515 = getelementptr i8, ptr %514, i32 327712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %515, i32 %513) #9, !srcloc !12
  %516 = lshr i32 %512, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %517 = and i32 %516, 255
  %518 = load ptr, ptr %14, align 8
  %519 = getelementptr i8, ptr %518, i32 327716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %519, i32 %517) #9, !srcloc !12
  %520 = load i16, ptr %209, align 4
  %521 = zext i16 %520 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %522 = and i32 %521, 255
  %523 = load ptr, ptr %14, align 8
  %524 = getelementptr i8, ptr %523, i32 327720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %524, i32 %522) #9, !srcloc !12
  %525 = lshr i32 %521, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %526 = load ptr, ptr %14, align 8
  %527 = getelementptr i8, ptr %526, i32 327724
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %527, i32 %525) #9, !srcloc !12
  %528 = load i16, ptr %223, align 4
  %529 = zext i16 %528 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %530 = and i32 %529, 255
  %531 = load ptr, ptr %14, align 8
  %532 = getelementptr i8, ptr %531, i32 327728
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %532, i32 %530) #9, !srcloc !12
  %533 = lshr i32 %529, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %534 = load ptr, ptr %14, align 8
  %535 = getelementptr i8, ptr %534, i32 327732
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %535, i32 %533) #9, !srcloc !12
  br label %1024

536:                                              ; preds = %198
  %537 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 6
  %538 = load i16, ptr %537, align 2
  %539 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 7, i32 6
  %540 = load i16, ptr %539, align 2
  %541 = icmp eq i16 %538, %540
  %542 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 1
  %543 = load i16, ptr %542, align 4
  br i1 %541, label %546, label %544

544:                                              ; preds = %536
  switch i16 %543, label %546 [
    i16 1280, label %545
    i16 1024, label %545
    i16 1366, label %545
  ]

545:                                              ; preds = %544, %544, %544
  br label %546

546:                                              ; preds = %545, %544, %536
  %547 = phi i32 [ 258, %545 ], [ 0, %544 ], [ 0, %536 ]
  %548 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 4
  %549 = load i16, ptr %548, align 2
  %550 = zext i16 %549 to i32
  %551 = zext i16 %543 to i32
  %552 = sub nsw i32 %550, %551
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %553 = and i32 %552, 255
  %554 = load ptr, ptr %14, align 8
  %555 = getelementptr i8, ptr %554, i32 65696
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %555, i32 %553) #9, !srcloc !12
  %556 = lshr i32 %552, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %557 = and i32 %556, 255
  %558 = load ptr, ptr %14, align 8
  %559 = getelementptr i8, ptr %558, i32 65700
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %559, i32 %557) #9, !srcloc !12
  %560 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 9
  %561 = load i16, ptr %560, align 4
  %562 = zext i16 %561 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %563 = and i32 %562, 255
  %564 = load ptr, ptr %14, align 8
  %565 = getelementptr i8, ptr %564, i32 65728
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %565, i32 %563) #9, !srcloc !12
  %566 = lshr i32 %562, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %567 = load ptr, ptr %14, align 8
  %568 = getelementptr i8, ptr %567, i32 65732
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %568, i32 %566) #9, !srcloc !12
  %569 = load i16, ptr %548, align 2
  %570 = zext i16 %569 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %571 = and i32 %570, 255
  %572 = load ptr, ptr %14, align 8
  %573 = getelementptr i8, ptr %572, i32 65736
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %573, i32 %571) #9, !srcloc !12
  %574 = lshr i32 %570, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %575 = load ptr, ptr %14, align 8
  %576 = getelementptr i8, ptr %575, i32 65740
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %576, i32 %574) #9, !srcloc !12
  %577 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 11
  %578 = load i32, ptr %577, align 4
  %579 = lshr i32 %578, 1
  %580 = and i32 %579, 1
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %581 = load ptr, ptr %14, align 8
  %582 = getelementptr i8, ptr %581, i32 65760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %582, i32 %580) #9, !srcloc !12
  %583 = load i32, ptr %577, align 4
  %584 = lshr i32 %583, 3
  %585 = and i32 %584, 1
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %586 = load ptr, ptr %14, align 8
  %587 = getelementptr i8, ptr %586, i32 65764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %587, i32 %585) #9, !srcloc !12
  %588 = load i32, ptr %577, align 4
  %589 = lshr i32 %588, 4
  %590 = and i32 %589, 1
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %591 = load ptr, ptr %14, align 8
  %592 = getelementptr i8, ptr %591, i32 65768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %592, i32 %590) #9, !srcloc !12
  %593 = load i32, ptr %577, align 4
  %594 = and i32 %593, 16
  %595 = icmp eq i32 %594, 0
  %596 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 8
  %597 = load i16, ptr %596, align 2
  %598 = zext i16 %597 to i32
  %599 = load i16, ptr %537, align 2
  %600 = zext i16 %599 to i32
  %601 = sub nsw i32 %598, %600
  br i1 %595, label %794, label %602

602:                                              ; preds = %546
  %603 = sdiv i32 %601, 2
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %604 = and i32 %603, 255
  %605 = load ptr, ptr %14, align 8
  %606 = getelementptr i8, ptr %605, i32 65840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %606, i32 %604) #9, !srcloc !12
  %607 = lshr i32 %603, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %608 = and i32 %607, 255
  %609 = load ptr, ptr %14, align 8
  %610 = getelementptr i8, ptr %609, i32 65844
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %610, i32 %608) #9, !srcloc !12
  %611 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 7
  %612 = load i16, ptr %611, align 4
  %613 = zext i16 %612 to i32
  %614 = load i16, ptr %537, align 2
  %615 = zext i16 %614 to i32
  %616 = sub nsw i32 %613, %615
  %617 = sdiv i32 %616, 2
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %618 = and i32 %617, 255
  %619 = load ptr, ptr %14, align 8
  %620 = getelementptr i8, ptr %619, i32 65848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %620, i32 %618) #9, !srcloc !12
  %621 = lshr i32 %617, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %622 = and i32 %621, 255
  %623 = load ptr, ptr %14, align 8
  %624 = getelementptr i8, ptr %623, i32 65852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %624, i32 %622) #9, !srcloc !12
  %625 = load i16, ptr %560, align 4
  %626 = lshr i16 %625, 1
  %627 = zext i16 %626 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %628 = and i32 %627, 255
  %629 = load ptr, ptr %14, align 8
  %630 = getelementptr i8, ptr %629, i32 65712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %630, i32 %628) #9, !srcloc !12
  %631 = lshr i32 %627, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %632 = load ptr, ptr %14, align 8
  %633 = getelementptr i8, ptr %632, i32 65716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %633, i32 %631) #9, !srcloc !12
  %634 = load i16, ptr %560, align 4
  %635 = zext i16 %634 to i32
  %636 = load i16, ptr %537, align 2
  %637 = zext i16 %636 to i32
  %638 = sub nsw i32 %635, %637
  %639 = sdiv i32 %638, 2
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %640 = and i32 %639, 255
  %641 = load ptr, ptr %14, align 8
  %642 = getelementptr i8, ptr %641, i32 65720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %642, i32 %640) #9, !srcloc !12
  %643 = lshr i32 %639, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %644 = and i32 %643, 255
  %645 = load ptr, ptr %14, align 8
  %646 = getelementptr i8, ptr %645, i32 65724
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %646, i32 %644) #9, !srcloc !12
  %647 = load i16, ptr %560, align 4
  %648 = zext i16 %647 to i32
  %649 = load i16, ptr %537, align 2
  %650 = lshr i16 %649, 1
  %651 = zext i16 %650 to i32
  %652 = sub nsw i32 %648, %651
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %653 = and i32 %652, 255
  %654 = load ptr, ptr %14, align 8
  %655 = getelementptr i8, ptr %654, i32 65808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %655, i32 %653) #9, !srcloc !12
  %656 = lshr i32 %652, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %657 = and i32 %656, 255
  %658 = load ptr, ptr %14, align 8
  %659 = getelementptr i8, ptr %658, i32 65812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %659, i32 %657) #9, !srcloc !12
  %660 = load i16, ptr %560, align 4
  %661 = zext i16 %660 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %662 = and i32 %661, 255
  %663 = load ptr, ptr %14, align 8
  %664 = getelementptr i8, ptr %663, i32 65816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %664, i32 %662) #9, !srcloc !12
  %665 = lshr i32 %661, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %666 = load ptr, ptr %14, align 8
  %667 = getelementptr i8, ptr %666, i32 65820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %667, i32 %665) #9, !srcloc !12
  %668 = load i16, ptr %560, align 4
  %669 = lshr i16 %668, 1
  %670 = add nuw i16 %669, 7
  %671 = zext i16 %670 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %672 = and i32 %671, 255
  %673 = load ptr, ptr %14, align 8
  %674 = getelementptr i8, ptr %673, i32 65856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %674, i32 %672) #9, !srcloc !12
  %675 = lshr i32 %671, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %676 = load ptr, ptr %14, align 8
  %677 = getelementptr i8, ptr %676, i32 65860
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %677, i32 %675) #9, !srcloc !12
  %678 = load i16, ptr %560, align 4
  %679 = lshr i16 %678, 1
  %680 = add nuw i16 %679, 2
  %681 = zext i16 %680 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %682 = and i32 %681, 255
  %683 = load ptr, ptr %14, align 8
  %684 = getelementptr i8, ptr %683, i32 65864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %684, i32 %682) #9, !srcloc !12
  %685 = lshr i32 %681, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %686 = load ptr, ptr %14, align 8
  %687 = getelementptr i8, ptr %686, i32 65868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %687, i32 %685) #9, !srcloc !12
  %688 = load i16, ptr %548, align 2
  %689 = lshr i16 %688, 1
  %690 = zext i16 %689 to i32
  %691 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 2
  %692 = load i16, ptr %691, align 2
  %693 = zext i16 %692 to i32
  %694 = load i16, ptr %542, align 4
  %695 = zext i16 %694 to i32
  %696 = add nuw nsw i32 %690, %693
  %697 = sub nsw i32 %696, %695
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %698 = and i32 %697, 255
  %699 = load ptr, ptr %14, align 8
  %700 = getelementptr i8, ptr %699, i32 65872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %700, i32 %698) #9, !srcloc !12
  %701 = lshr i32 %697, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %702 = and i32 %701, 255
  %703 = load ptr, ptr %14, align 8
  %704 = getelementptr i8, ptr %703, i32 65876
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %704, i32 %702) #9, !srcloc !12
  %705 = load i16, ptr %548, align 2
  %706 = lshr i16 %705, 1
  %707 = zext i16 %706 to i32
  %708 = load i16, ptr %691, align 2
  %709 = zext i16 %708 to i32
  %710 = load i16, ptr %542, align 4
  %711 = zext i16 %710 to i32
  %712 = add nuw nsw i32 %707, %709
  %713 = sub nsw i32 %712, %711
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %714 = and i32 %713, 255
  %715 = load ptr, ptr %14, align 8
  %716 = getelementptr i8, ptr %715, i32 65880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %716, i32 %714) #9, !srcloc !12
  %717 = lshr i32 %713, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %718 = and i32 %717, 255
  %719 = load ptr, ptr %14, align 8
  %720 = getelementptr i8, ptr %719, i32 65884
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %720, i32 %718) #9, !srcloc !12
  %721 = load i16, ptr %560, align 4
  %722 = zext i16 %721 to i32
  %723 = load i16, ptr %537, align 2
  %724 = zext i16 %723 to i32
  %725 = sub nsw i32 %722, %724
  %726 = sdiv i32 %725, 2
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %727 = and i32 %726, 255
  %728 = load ptr, ptr %14, align 8
  %729 = getelementptr i8, ptr %728, i32 327752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %729, i32 %727) #9, !srcloc !12
  %730 = lshr i32 %726, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %731 = and i32 %730, 255
  %732 = load ptr, ptr %14, align 8
  %733 = getelementptr i8, ptr %732, i32 327756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %733, i32 %731) #9, !srcloc !12
  %734 = load i16, ptr %537, align 2
  %735 = lshr i16 %734, 1
  %736 = zext i16 %735 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %737 = and i32 %736, 255
  %738 = load ptr, ptr %14, align 8
  %739 = getelementptr i8, ptr %738, i32 327760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %739, i32 %737) #9, !srcloc !12
  %740 = lshr i32 %736, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %741 = load ptr, ptr %14, align 8
  %742 = getelementptr i8, ptr %741, i32 327764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %742, i32 %740) #9, !srcloc !12
  %743 = load i16, ptr %560, align 4
  %744 = zext i16 %743 to i32
  %745 = load i16, ptr %537, align 2
  %746 = lshr i16 %745, 1
  %747 = zext i16 %746 to i32
  %748 = sub nsw i32 %744, %747
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %749 = and i32 %748, 255
  %750 = load ptr, ptr %14, align 8
  %751 = getelementptr i8, ptr %750, i32 327776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %751, i32 %749) #9, !srcloc !12
  %752 = lshr i32 %748, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %753 = and i32 %752, 255
  %754 = load ptr, ptr %14, align 8
  %755 = getelementptr i8, ptr %754, i32 327780
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %755, i32 %753) #9, !srcloc !12
  %756 = load i16, ptr %560, align 4
  %757 = lshr i16 %756, 1
  %758 = add nuw i16 %757, 1
  %759 = zext i16 %758 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %760 = and i32 %759, 255
  %761 = load ptr, ptr %14, align 8
  %762 = getelementptr i8, ptr %761, i32 327744
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %762, i32 %760) #9, !srcloc !12
  %763 = lshr i32 %759, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %764 = load ptr, ptr %14, align 8
  %765 = getelementptr i8, ptr %764, i32 327748
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %765, i32 %763) #9, !srcloc !12
  %766 = load i16, ptr %560, align 4
  %767 = lshr i16 %766, 1
  %768 = add nuw i16 %767, 1
  %769 = zext i16 %768 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %770 = and i32 %769, 255
  %771 = load ptr, ptr %14, align 8
  %772 = getelementptr i8, ptr %771, i32 327808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %772, i32 %770) #9, !srcloc !12
  %773 = lshr i32 %769, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %774 = load ptr, ptr %14, align 8
  %775 = getelementptr i8, ptr %774, i32 327812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %775, i32 %773) #9, !srcloc !12
  %776 = load i16, ptr %560, align 4
  %777 = lshr i16 %776, 1
  %778 = add nuw i16 %777, 1
  %779 = zext i16 %778 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %780 = and i32 %779, 255
  %781 = load ptr, ptr %14, align 8
  %782 = getelementptr i8, ptr %781, i32 327824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %782, i32 %780) #9, !srcloc !12
  %783 = lshr i32 %779, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %784 = load ptr, ptr %14, align 8
  %785 = getelementptr i8, ptr %784, i32 327828
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %785, i32 %783) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %786 = load ptr, ptr %14, align 8
  %787 = getelementptr i8, ptr %786, i32 327784
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %787, i32 0) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %788 = load ptr, ptr %14, align 8
  %789 = getelementptr i8, ptr %788, i32 327788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %789, i32 0) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %790 = load ptr, ptr %14, align 8
  %791 = getelementptr i8, ptr %790, i32 327792
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %791, i32 0) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %792 = load ptr, ptr %14, align 8
  %793 = getelementptr i8, ptr %792, i32 327796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %793, i32 0) #9, !srcloc !12
  br label %879

794:                                              ; preds = %546
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %795 = and i32 %601, 255
  %796 = load ptr, ptr %14, align 8
  %797 = getelementptr i8, ptr %796, i32 65840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %797, i32 %795) #9, !srcloc !12
  %798 = lshr i32 %601, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %799 = and i32 %798, 255
  %800 = load ptr, ptr %14, align 8
  %801 = getelementptr i8, ptr %800, i32 65844
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %801, i32 %799) #9, !srcloc !12
  %802 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 7
  %803 = load i16, ptr %802, align 4
  %804 = zext i16 %803 to i32
  %805 = load i16, ptr %537, align 2
  %806 = zext i16 %805 to i32
  %807 = sub nsw i32 %804, %806
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %808 = and i32 %807, 255
  %809 = load ptr, ptr %14, align 8
  %810 = getelementptr i8, ptr %809, i32 65848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %810, i32 %808) #9, !srcloc !12
  %811 = lshr i32 %807, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %812 = and i32 %811, 255
  %813 = load ptr, ptr %14, align 8
  %814 = getelementptr i8, ptr %813, i32 65852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %814, i32 %812) #9, !srcloc !12
  %815 = load i16, ptr %560, align 4
  %816 = zext i16 %815 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %817 = and i32 %816, 255
  %818 = load ptr, ptr %14, align 8
  %819 = getelementptr i8, ptr %818, i32 65712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %819, i32 %817) #9, !srcloc !12
  %820 = lshr i32 %816, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %821 = load ptr, ptr %14, align 8
  %822 = getelementptr i8, ptr %821, i32 65716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %822, i32 %820) #9, !srcloc !12
  %823 = load i16, ptr %560, align 4
  %824 = zext i16 %823 to i32
  %825 = load i16, ptr %537, align 2
  %826 = zext i16 %825 to i32
  %827 = sub nsw i32 %824, %826
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %828 = and i32 %827, 255
  %829 = load ptr, ptr %14, align 8
  %830 = getelementptr i8, ptr %829, i32 65720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %830, i32 %828) #9, !srcloc !12
  %831 = lshr i32 %827, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %832 = and i32 %831, 255
  %833 = load ptr, ptr %14, align 8
  %834 = getelementptr i8, ptr %833, i32 65724
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %834, i32 %832) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %835 = load ptr, ptr %14, align 8
  %836 = getelementptr i8, ptr %835, i32 65808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %836, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %837 = load ptr, ptr %14, align 8
  %838 = getelementptr i8, ptr %837, i32 65812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %838, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %839 = load ptr, ptr %14, align 8
  %840 = getelementptr i8, ptr %839, i32 65816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %840, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %841 = load ptr, ptr %14, align 8
  %842 = getelementptr i8, ptr %841, i32 65820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %842, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %843 = load ptr, ptr %14, align 8
  %844 = getelementptr i8, ptr %843, i32 65856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %844, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %845 = load ptr, ptr %14, align 8
  %846 = getelementptr i8, ptr %845, i32 65860
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %846, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %847 = load ptr, ptr %14, align 8
  %848 = getelementptr i8, ptr %847, i32 65864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %848, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %849 = load ptr, ptr %14, align 8
  %850 = getelementptr i8, ptr %849, i32 65868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %850, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %851 = load ptr, ptr %14, align 8
  %852 = getelementptr i8, ptr %851, i32 65872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %852, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %853 = load ptr, ptr %14, align 8
  %854 = getelementptr i8, ptr %853, i32 65876
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %854, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %855 = load ptr, ptr %14, align 8
  %856 = getelementptr i8, ptr %855, i32 65880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %856, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %857 = load ptr, ptr %14, align 8
  %858 = getelementptr i8, ptr %857, i32 65884
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %858, i32 255) #9, !srcloc !12
  %859 = load i16, ptr %560, align 4
  %860 = zext i16 %859 to i32
  %861 = load i16, ptr %537, align 2
  %862 = zext i16 %861 to i32
  %863 = sub nsw i32 %860, %862
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %864 = and i32 %863, 255
  %865 = load ptr, ptr %14, align 8
  %866 = getelementptr i8, ptr %865, i32 327752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %866, i32 %864) #9, !srcloc !12
  %867 = lshr i32 %863, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %868 = and i32 %867, 255
  %869 = load ptr, ptr %14, align 8
  %870 = getelementptr i8, ptr %869, i32 327756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %870, i32 %868) #9, !srcloc !12
  %871 = load i16, ptr %537, align 2
  %872 = zext i16 %871 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %873 = and i32 %872, 255
  %874 = load ptr, ptr %14, align 8
  %875 = getelementptr i8, ptr %874, i32 327760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %875, i32 %873) #9, !srcloc !12
  %876 = lshr i32 %872, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %877 = load ptr, ptr %14, align 8
  %878 = getelementptr i8, ptr %877, i32 327764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %878, i32 %876) #9, !srcloc !12
  br label %879

879:                                              ; preds = %794, %602
  %880 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 2
  %881 = load i16, ptr %880, align 2
  %882 = zext i16 %881 to i32
  %883 = load i16, ptr %542, align 4
  %884 = zext i16 %883 to i32
  %885 = add nsw i32 %882, -2
  %886 = sub nsw i32 %885, %884
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %887 = and i32 %886, 255
  %888 = load ptr, ptr %14, align 8
  %889 = getelementptr i8, ptr %888, i32 65824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %889, i32 %887) #9, !srcloc !12
  %890 = lshr i32 %886, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %891 = and i32 %890, 255
  %892 = load ptr, ptr %14, align 8
  %893 = getelementptr i8, ptr %892, i32 65828
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %893, i32 %891) #9, !srcloc !12
  %894 = getelementptr inbounds %struct.drm_crtc_state, ptr %204, i32 0, i32 8, i32 3
  %895 = load i16, ptr %894, align 4
  %896 = zext i16 %895 to i32
  %897 = load i16, ptr %542, align 4
  %898 = zext i16 %897 to i32
  %899 = add nsw i32 %896, -2
  %900 = sub nsw i32 %899, %898
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %901 = and i32 %900, 255
  %902 = load ptr, ptr %14, align 8
  %903 = getelementptr i8, ptr %902, i32 65832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %903, i32 %901) #9, !srcloc !12
  %904 = lshr i32 %900, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %905 = and i32 %904, 255
  %906 = load ptr, ptr %14, align 8
  %907 = getelementptr i8, ptr %906, i32 65836
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %907, i32 %905) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %908 = load ptr, ptr %14, align 8
  %909 = getelementptr i8, ptr %908, i32 65984
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %909, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %910 = load ptr, ptr %14, align 8
  %911 = getelementptr i8, ptr %910, i32 65988
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %911, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %912 = load ptr, ptr %14, align 8
  %913 = getelementptr i8, ptr %912, i32 65992
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %913, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %914 = load ptr, ptr %14, align 8
  %915 = getelementptr i8, ptr %914, i32 65996
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %915, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %916 = load ptr, ptr %14, align 8
  %917 = getelementptr i8, ptr %916, i32 66000
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %917, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %918 = load ptr, ptr %14, align 8
  %919 = getelementptr i8, ptr %918, i32 66004
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %919, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %920 = load ptr, ptr %14, align 8
  %921 = getelementptr i8, ptr %920, i32 66008
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %921, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %922 = load ptr, ptr %14, align 8
  %923 = getelementptr i8, ptr %922, i32 66012
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %923, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %924 = load ptr, ptr %14, align 8
  %925 = getelementptr i8, ptr %924, i32 66016
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %925, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %926 = load ptr, ptr %14, align 8
  %927 = getelementptr i8, ptr %926, i32 66020
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %927, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %928 = load ptr, ptr %14, align 8
  %929 = getelementptr i8, ptr %928, i32 66024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %929, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %930 = load ptr, ptr %14, align 8
  %931 = getelementptr i8, ptr %930, i32 66028
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %931, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %932 = load ptr, ptr %14, align 8
  %933 = getelementptr i8, ptr %932, i32 65888
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %933, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %934 = load ptr, ptr %14, align 8
  %935 = getelementptr i8, ptr %934, i32 65892
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %935, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %936 = load ptr, ptr %14, align 8
  %937 = getelementptr i8, ptr %936, i32 65896
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %937, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %938 = load ptr, ptr %14, align 8
  %939 = getelementptr i8, ptr %938, i32 65900
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %939, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %940 = load ptr, ptr %14, align 8
  %941 = getelementptr i8, ptr %940, i32 65904
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %941, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %942 = load ptr, ptr %14, align 8
  %943 = getelementptr i8, ptr %942, i32 65908
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %943, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %944 = load ptr, ptr %14, align 8
  %945 = getelementptr i8, ptr %944, i32 65912
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %945, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %946 = load ptr, ptr %14, align 8
  %947 = getelementptr i8, ptr %946, i32 65916
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %947, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %948 = load ptr, ptr %14, align 8
  %949 = getelementptr i8, ptr %948, i32 65920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %949, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %950 = load ptr, ptr %14, align 8
  %951 = getelementptr i8, ptr %950, i32 65924
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %951, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %952 = load ptr, ptr %14, align 8
  %953 = getelementptr i8, ptr %952, i32 65928
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %953, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %954 = load ptr, ptr %14, align 8
  %955 = getelementptr i8, ptr %954, i32 65932
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %955, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %956 = load ptr, ptr %14, align 8
  %957 = getelementptr i8, ptr %956, i32 65936
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %957, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %958 = load ptr, ptr %14, align 8
  %959 = getelementptr i8, ptr %958, i32 65940
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %959, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %960 = load ptr, ptr %14, align 8
  %961 = getelementptr i8, ptr %960, i32 65944
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %961, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %962 = load ptr, ptr %14, align 8
  %963 = getelementptr i8, ptr %962, i32 65948
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %963, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %964 = load ptr, ptr %14, align 8
  %965 = getelementptr i8, ptr %964, i32 65952
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %965, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %966 = load ptr, ptr %14, align 8
  %967 = getelementptr i8, ptr %966, i32 65956
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %967, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %968 = load ptr, ptr %14, align 8
  %969 = getelementptr i8, ptr %968, i32 65960
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %969, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %970 = load ptr, ptr %14, align 8
  %971 = getelementptr i8, ptr %970, i32 65964
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %971, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %972 = load ptr, ptr %14, align 8
  %973 = getelementptr i8, ptr %972, i32 65968
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %973, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %974 = load ptr, ptr %14, align 8
  %975 = getelementptr i8, ptr %974, i32 65972
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %975, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %976 = load ptr, ptr %14, align 8
  %977 = getelementptr i8, ptr %976, i32 65976
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %977, i32 255) #9, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %978 = load ptr, ptr %14, align 8
  %979 = getelementptr i8, ptr %978, i32 65980
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %979, i32 255) #9, !srcloc !12
  %980 = load i16, ptr %548, align 2
  %981 = zext i16 %980 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %982 = and i32 %981, 255
  %983 = load ptr, ptr %14, align 8
  %984 = getelementptr i8, ptr %983, i32 327704
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %984, i32 %982) #9, !srcloc !12
  %985 = lshr i32 %981, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %986 = load ptr, ptr %14, align 8
  %987 = getelementptr i8, ptr %986, i32 327708
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %987, i32 %985) #9, !srcloc !12
  %988 = load i16, ptr %548, align 2
  %989 = zext i16 %988 to i32
  %990 = load i16, ptr %542, align 4
  %991 = zext i16 %990 to i32
  %992 = add nuw nsw i32 %547, %991
  %993 = sub nsw i32 %989, %992
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %994 = and i32 %993, 255
  %995 = load ptr, ptr %14, align 8
  %996 = getelementptr i8, ptr %995, i32 327712
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %996, i32 %994) #9, !srcloc !12
  %997 = lshr i32 %993, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %998 = and i32 %997, 255
  %999 = load ptr, ptr %14, align 8
  %1000 = getelementptr i8, ptr %999, i32 327716
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1000, i32 %998) #9, !srcloc !12
  %1001 = load i16, ptr %542, align 4
  %1002 = zext i16 %1001 to i32
  %1003 = add nuw nsw i32 %547, %1002
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1004 = and i32 %1003, 255
  %1005 = load ptr, ptr %14, align 8
  %1006 = getelementptr i8, ptr %1005, i32 327720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1006, i32 %1004) #9, !srcloc !12
  %1007 = lshr i32 %1003, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1008 = and i32 %1007, 255
  %1009 = load ptr, ptr %14, align 8
  %1010 = getelementptr i8, ptr %1009, i32 327724
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1010, i32 %1008) #9, !srcloc !12
  %1011 = load i16, ptr %560, align 4
  %1012 = zext i16 %1011 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1013 = and i32 %1012, 255
  %1014 = load ptr, ptr %14, align 8
  %1015 = getelementptr i8, ptr %1014, i32 327728
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1015, i32 %1013) #9, !srcloc !12
  %1016 = lshr i32 %1012, 8
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  call void @arm_heavy_mb() #9
  %1017 = load ptr, ptr %14, align 8
  %1018 = getelementptr i8, ptr %1017, i32 327732
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1018, i32 %1016) #9, !srcloc !12
  %1019 = load ptr, ptr %61, align 4
  %1020 = icmp eq ptr %1019, @exynos5433_hdmi_driver_data
  br i1 %1020, label %1021, label %1024

1021:                                             ; preds = %879
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %1022 = load ptr, ptr %14, align 8
  %1023 = getelementptr i8, ptr %1022, i32 328160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1023, i32 1) #9, !srcloc !12
  br label %1024

1024:                                             ; preds = %1021, %879, %499
  %1025 = load ptr, ptr %6, align 4
  %1026 = getelementptr inbounds %struct.drm_crtc, ptr %1025, i32 0, i32 22
  %1027 = load ptr, ptr %1026, align 4
  %1028 = getelementptr inbounds %struct.drm_crtc_state, ptr %1027, i32 0, i32 8, i32 11
  %1029 = load i32, ptr %1028, align 4
  %1030 = lshr i32 %1029, 3
  %1031 = and i32 %1030, 2
  %1032 = load ptr, ptr %14, align 8
  %1033 = getelementptr i8, ptr %1032, i32 65536
  %1034 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1033) #9, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %1035 = or i32 %1034, 1
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  call void @arm_heavy_mb() #9
  %1036 = load ptr, ptr %14, align 8
  %1037 = getelementptr i8, ptr %1036, i32 65536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1037, i32 %1035) #9, !srcloc !12
  %1038 = load ptr, ptr %14, align 8
  %1039 = getelementptr i8, ptr %1038, i32 327680
  %1040 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1039) #9, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %1041 = and i32 %1040, -4
  %1042 = or i32 %1031, %1041
  %1043 = or i32 %1042, 1
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  call void @arm_heavy_mb() #9
  %1044 = load ptr, ptr %14, align 8
  %1045 = getelementptr i8, ptr %1044, i32 327680
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1045, i32 %1043) #9, !srcloc !12
  %1046 = load i8, ptr %47, align 8, !range !10
  %1047 = icmp eq i8 %1046, 0
  br i1 %1047, label %1048, label %1063

1048:                                             ; preds = %1024
  %1049 = getelementptr inbounds %struct.hdmi_context, ptr %0, i32 0, i32 23, i32 3
  %1050 = load i8, ptr %1049, align 4, !range !10
  %1051 = icmp eq i8 %1050, 0
  %1052 = select i1 %1051, i32 2, i32 0
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  call void @arm_heavy_mb() #9
  %1053 = load ptr, ptr %14, align 8
  %1054 = getelementptr i8, ptr %1053, i32 67584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1054, i32 %1052) #9, !srcloc !12
  %1055 = select i1 %1051, i32 4, i32 0
  %1056 = load ptr, ptr %14, align 8
  %1057 = getelementptr i8, ptr %1056, i32 65536
  %1058 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1057) #9, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %1059 = and i32 %1058, -5
  %1060 = or i32 %1059, %1055
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  call void @arm_heavy_mb() #9
  %1061 = load ptr, ptr %14, align 8
  %1062 = getelementptr i8, ptr %1061, i32 65536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1062, i32 %1060) #9, !srcloc !12
  br label %1063

1063:                                             ; preds = %1048, %1024
  call void @mutex_unlock(ptr noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_mode_valid(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = tail call i32 @drm_mode_vrefresh(ptr noundef %1) #9
  %12 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 4
  %15 = and i32 %14, 1
  %16 = load i32, ptr %1, align 4
  %17 = mul i32 %16, 1000
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.59, i32 noundef %7, i32 noundef %10, i32 noundef %11, i32 noundef %15, i32 noundef %17) #9
  %18 = load i32, ptr %1, align 4
  %19 = mul i32 %18, 1000
  %20 = getelementptr i8, ptr %0, i32 1020
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.hdmi_driver_data, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.hdmi_driver_data, ptr %21, i32 0, i32 2, i32 1
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %33, %25
  %29 = phi i32 [ 0, %25 ], [ %34, %33 ]
  %30 = getelementptr %struct.hdmiphy_config, ptr %27, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %19
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = add nuw nsw i32 %29, 1
  %35 = icmp eq i32 %34, %23
  br i1 %35, label %36, label %28

36:                                               ; preds = %33, %2
  %37 = load ptr, ptr %3, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %37, i32 noundef 4, ptr noundef nonnull @.str.53, i32 noundef %19) #9
  br label %38

38:                                               ; preds = %36, %28
  %39 = phi i32 [ -2, %36 ], [ 0, %28 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_vendor_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_fill_conn_info_from_drm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_conn_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_detect(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1040
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @gpiod_get_value(ptr noundef %4) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 1016
  %9 = load ptr, ptr %8, align 8
  tail call void @cec_notifier_set_phys_addr(ptr noundef %9, i16 noundef zeroext -1) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 2, %7 ], [ 1, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_connector_destroy(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1016
  %3 = load ptr, ptr %2, align 8
  tail call void @cec_notifier_conn_unregister(ptr noundef %3) #9
  tail call void @drm_connector_unregister(ptr noundef %0) #9
  tail call void @drm_connector_cleanup(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_conn_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1036
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @drm_get_edid(ptr noundef %0, ptr noundef nonnull %3) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef nonnull %6) #9
  %10 = xor i1 %9, true
  %11 = getelementptr i8, ptr %0, i32 968
  %12 = zext i1 %10 to i8
  store i8 %12, ptr %11, align 8
  %13 = getelementptr i8, ptr %0, i32 -8
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %9, ptr @.str.65, ptr @.str.64
  %16 = getelementptr inbounds %struct.edid, ptr %6, i32 0, i32 9
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.edid, ptr %6, i32 0, i32 10
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %14, i32 noundef 4, ptr noundef nonnull @.str.63, ptr noundef nonnull %15, i32 noundef %18, i32 noundef %21) #9
  %22 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef nonnull %6) #9
  %23 = getelementptr i8, ptr %0, i32 1016
  %24 = load ptr, ptr %23, align 8
  tail call void @cec_notifier_set_phys_addr_from_edid(ptr noundef %24, ptr noundef nonnull %6) #9
  %25 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef nonnull %6) #9
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %26

26:                                               ; preds = %8, %5, %1
  %27 = phi i32 [ %25, %8 ], [ -19, %1 ], [ -19, %5 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr_from_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_hdmi_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hdmi_context, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hdmi_driver_data, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.hdmi_context, ptr %3, i32 0, i32 16
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ %7, %9 ], [ %13, %11 ]
  %13 = add i32 %12, -1
  %14 = load ptr, ptr %10, align 8
  %15 = getelementptr ptr, ptr %14, i32 %13
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #9
  tail call void @clk_unprepare(ptr noundef %16) #9
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %18, label %11

18:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_hdmi_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hdmi_context, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hdmi_driver_data, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.hdmi_context, ptr %3, i32 0, i32 16
  br label %11

11:                                               ; preds = %39, %9
  %12 = phi i32 [ 0, %9 ], [ %40, %39 ]
  %13 = load ptr, ptr %10, align 8
  %14 = getelementptr ptr, ptr %13, i32 %12
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = tail call i32 @clk_enable(ptr noundef %15) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %22

22:                                               ; preds = %21, %11
  %23 = phi i32 [ %19, %21 ], [ %16, %11 ]
  %24 = getelementptr inbounds %struct.hdmi_context, ptr %3, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr inbounds %struct.hdmi_driver_data, ptr %26, i32 0, i32 3, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr ptr, ptr %28, i32 %12
  %30 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.66, ptr noundef %30, i32 noundef %23) #10
  %31 = icmp eq i32 %12, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %32, %22
  %33 = phi i32 [ %34, %32 ], [ %12, %22 ]
  %34 = add nsw i32 %33, -1
  %35 = load ptr, ptr %10, align 8
  %36 = getelementptr ptr, ptr %35, i32 %34
  %37 = load ptr, ptr %36, align 4
  tail call void @clk_disable(ptr noundef %37) #9
  tail call void @clk_unprepare(ptr noundef %37) #9
  %38 = icmp eq i32 %34, 0
  br i1 %38, label %45, label %32

39:                                               ; preds = %18
  %40 = add nuw nsw i32 %12, 1
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.hdmi_driver_data, ptr %41, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %11, label %47

45:                                               ; preds = %32, %22
  %46 = tail call i32 @llvm.smin.i32(i32 %23, i32 0)
  br label %47

47:                                               ; preds = %45, %39, %1
  %48 = phi i32 [ 0, %1 ], [ %46, %45 ], [ 0, %39 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{i64 2156245036}
!12 = !{i64 5608691}
!13 = !{i64 2156246063}
!14 = !{i64 5609109}
!15 = !{i64 2156246713}
!16 = !{i64 2156246903}
!17 = !{i64 2156245557}
!18 = !{i64 2156244656}
!19 = !{i64 2148125541}
!20 = !{i64 623851, i64 2148113822, i64 2148113848, i64 2148113895, i64 2148113917, i64 2148113945, i64 2148113965}
!21 = !{i64 610420, i64 610445, i64 610467, i64 610483, i64 610495, i64 610515, i64 610539, i64 610555, i64 610567}
!22 = !{i64 2148125667}
!23 = !{i64 2156262596}
!24 = !{i64 2156247260}
