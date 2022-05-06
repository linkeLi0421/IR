; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_hdmi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
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
%struct.atomic_t = type { i32 }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.vc4_hdmi_variant = type { i32, ptr, ptr, i64, ptr, i32, [4 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%struct.vc4_hdmi_register = type { ptr, i32, i32 }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.vc4_hdmi = type { %struct.vc4_hdmi_audio, ptr, ptr, %struct.vc4_hdmi_encoder, %struct.drm_connector, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, ptr, %struct.cec_msg, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.debugfs_regset32, %struct.debugfs_regset32, %struct.spinlock, %struct.mutex, %struct.drm_display_mode, i8, i8 }
%struct.vc4_hdmi_audio = type { %struct.snd_soc_card, %struct.snd_soc_dai_link, %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component, %struct.snd_dmaengine_dai_dma_data, %struct.hdmi_audio_infoframe, ptr, i8 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [80 x i8], [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24 }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.vc4_hdmi_encoder = type { %struct.vc4_encoder, i8, i8 }
%struct.vc4_encoder = type { %struct.drm_encoder, i32, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.98 }
%union.anon.98 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.103, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.104, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.95, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.99, ptr, i32, ptr, i8, i32 }
%struct.anon.95 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.99 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.103 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.anon.104 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.vc4_hvs = type { ptr, ptr, ptr, ptr, %struct.drm_mm, %struct.drm_mm, %struct.spinlock, %struct.drm_mm_node, %struct.debugfs_regset32, i8 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.vc4_hdmi_connector_state = type { %struct.drm_connector_state, i64 }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.hdmi_spd_infoframe = type { i32, i8, i8, [8 x i8], [16 x i8], i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"vc4_hdmi\00", align 1
@vc4_hdmi_dt_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-hdmi0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_hdmi0_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-hdmi1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_hdmi1_variant }, %struct.of_device_id zeroinitializer], align 4
@vc4_hdmi_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_hdmi_runtime_suspend, ptr @vc4_hdmi_runtime_resume, ptr null }, align 4
@vc4_hdmi_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @vc4_hdmi_dev_probe, ptr @vc4_hdmi_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_hdmi_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_hdmi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@vc4_hdmi_ops = internal constant %struct.component_ops { ptr @vc4_hdmi_bind, ptr @vc4_hdmi_unbind }, align 4
@vc4_hdmi_bind.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"&vc4_hdmi->mutex\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ddc\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to find ddc node in device tree\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to get ddc i2c adapter by node\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"hpd\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"wifi-2.4ghz-coexistence\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"brcm,bcm2711-hdmi0\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"brcm,bcm2711-hdmi1\00", align 1
@vc4_hdmi_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr @vc4_hdmi_encoder_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr @vc4_hdmi_encoder_atomic_mode_set, ptr null, ptr null, ptr null, ptr @vc4_hdmi_encoder_disable, ptr @vc4_hdmi_encoder_enable, ptr @vc4_hdmi_encoder_atomic_check }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"Failed to set HSM clock rate: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Failed to retain power domain: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Failed to set pixel clock rate: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Failed to turn on pixel clock: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Failed to set pixel bvb clock rate: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Failed to turn on pixel bvb clock: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"drivers/gpu/drm/vc4/vc4_hdmi_regs.h\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Invalid register ID %u\0A\00", align 1
@vc4_hdmi_encoder_post_crtc_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"drivers/gpu/drm/vc4/vc4_hdmi.c\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"Timeout waiting for VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE\0A\00", align 1
@vc4_hdmi_encoder_post_crtc_enable.__already_done.19 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"Timeout waiting for !VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"couldn't fill AVI infoframe\0A\00", align 1
@vc4_hdmi_write_infoframe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"Packet RAM has to be on to store the packet.\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"Failed to wait for infoframe to go idle: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"Failed to wait for infoframe to start: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Broadcom\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Videocore\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"couldn't fill SPD infoframe\0A\00", align 1
@vc4_hdmi_recenter_fifo.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c"Timeout waiting for VC4_HDMI_FIFO_CTL_RECENTER_DONE\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.29 = private unnamed_addr constant [36 x i8] c"Failed to release power domain: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"Unknown register ID %u\0A\00", align 1
@vc4_hdmi_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @vc4_hdmi_connector_reset, ptr @vc4_hdmi_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @vc4_hdmi_connector_destroy, ptr @vc4_hdmi_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@vc4_hdmi_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @vc4_hdmi_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_hdmi_connector_atomic_check, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@vc4_hdmi_connector_get_modes.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.31 = private unnamed_addr constant [80 x i8] c"[drm] The core clock cannot reach frequencies high enough to support 4k @ 60Hz.\00", align 1
@vc4_hdmi_connector_get_modes.__print_once.32 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.33 = private unnamed_addr constant [67 x i8] c"[drm] Please change your config.txt file to add hdmi_enable_4kp60.\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"hpd-connected\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"hpd-removed\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"vc4 hdmi hpd connected\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"vc4 hdmi hpd disconnected\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.39 = private unnamed_addr constant [46 x i8] c"'dmas' DT property is missing, no HDMI audio\0A\00", align 1
@vc4_hdmi_audio_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"MAI isn't in the HD block\0A\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"hd\00", align 1
@pcm_conf = internal constant %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] [ptr @.str.52, ptr null], ptr null, i32 0 }, align 4
@.str.43 = private unnamed_addr constant [38 x i8] c"Could not register PCM component: %d\0A\00", align 1
@vc4_hdmi_audio_cpu_dai_comp = internal constant %struct.snd_soc_component_driver { ptr @.str.53, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@vc4_hdmi_audio_cpu_dai_drv = internal global %struct.snd_soc_dai_driver { ptr @.str.54, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @vc4_hdmi_audio_cpu_dai_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.55, i64 262144, i32 7904, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, align 8
@.str.44 = private unnamed_addr constant [32 x i8] c"Could not register CPU DAI: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"hdmi-audio-codec\00", align 1
@vc4_hdmi_codec_pdata = internal global %struct.hdmi_codec_pdata { ptr @vc4_hdmi_codec_ops, i8 1, i32 8, ptr null }, align 4
@.str.46 = private unnamed_addr constant [39 x i8] c"Couldn't register the HDMI codec: %ld\0A\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"MAI\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"MAI PCM\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"i2s-hifi\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"vc4-hdmi\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.51 = private unnamed_addr constant [31 x i8] c"Could not register sound card\0A\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"audio-rx\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"vc4-hdmi-cpu-dai-component\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"vc4-hdmi-cpu-dai\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@vc4_hdmi_codec_ops = internal constant %struct.hdmi_codec_ops { ptr @vc4_hdmi_audio_startup, ptr null, ptr @vc4_hdmi_audio_prepare, ptr @vc4_hdmi_audio_shutdown, ptr null, ptr @vc4_hdmi_audio_get_eld, ptr null, ptr null, i8 0 }, align 4
@.str.56 = private unnamed_addr constant [36 x i8] c"Failed to stop audio infoframe: %d\0A\00", align 1
@bcm2835_variant = internal constant %struct.vc4_hdmi_variant { i32 1, ptr @.str.50, ptr @.str.57, i64 162000000, ptr @vc4_hdmi_fields, i32 81, [4 x i32] zeroinitializer, i8 0, i8 0, ptr @vc4_hdmi_init_resources, ptr @vc4_hdmi_reset, ptr @vc4_hdmi_csc_setup, ptr @vc4_hdmi_set_timings, ptr @vc4_hdmi_phy_init, ptr @vc4_hdmi_phy_disable, ptr @vc4_hdmi_phy_rng_enable, ptr @vc4_hdmi_phy_rng_disable, ptr @vc4_hdmi_channel_map, i8 0, ptr null }, align 8
@bcm2711_hdmi0_variant = internal constant %struct.vc4_hdmi_variant { i32 1, ptr @.str.120, ptr @.str.121, i64 600000000, ptr @vc5_hdmi_hdmi0_fields, i32 81, [4 x i32] [i32 0, i32 1, i32 2, i32 3], i8 1, i8 1, ptr @vc5_hdmi_init_resources, ptr @vc5_hdmi_reset, ptr @vc5_hdmi_csc_setup, ptr @vc5_hdmi_set_timings, ptr @vc5_hdmi_phy_init, ptr @vc5_hdmi_phy_disable, ptr @vc5_hdmi_phy_rng_enable, ptr @vc5_hdmi_phy_rng_disable, ptr @vc5_hdmi_channel_map, i8 1, ptr @vc5_hdmi_hp_detect }, align 8
@bcm2711_hdmi1_variant = internal constant %struct.vc4_hdmi_variant { i32 2, ptr @.str.157, ptr @.str.158, i64 340000000, ptr @vc5_hdmi_hdmi1_fields, i32 81, [4 x i32] [i32 1, i32 0, i32 3, i32 2], i8 1, i8 1, ptr @vc5_hdmi_init_resources, ptr @vc5_hdmi_reset, ptr @vc5_hdmi_csc_setup, ptr @vc5_hdmi_set_timings, ptr @vc5_hdmi_phy_init, ptr @vc5_hdmi_phy_disable, ptr @vc5_hdmi_phy_rng_enable, ptr @vc5_hdmi_phy_rng_disable, ptr @vc5_hdmi_channel_map, i8 1, ptr @vc5_hdmi_hp_detect }, align 8
@.str.57 = private unnamed_addr constant [10 x i8] c"hdmi_regs\00", align 1
@vc4_hdmi_fields = internal constant [81 x %struct.vc4_hdmi_register] [%struct.vc4_hdmi_register { ptr @.str.58, i32 1, i32 156 }, %struct.vc4_hdmi_register { ptr @.str.59, i32 1, i32 232 }, %struct.vc4_hdmi_register { ptr @.str.60, i32 1, i32 236 }, %struct.vc4_hdmi_register { ptr @.str.61, i32 1, i32 240 }, %struct.vc4_hdmi_register { ptr @.str.62, i32 1, i32 244 }, %struct.vc4_hdmi_register { ptr @.str.63, i32 1, i32 248 }, %struct.vc4_hdmi_register { ptr @.str.64, i32 1, i32 840 }, %struct.vc4_hdmi_register { ptr @.str.65, i32 1, i32 852 }, %struct.vc4_hdmi_register { ptr @.str.66, i32 1, i32 848 }, %struct.vc4_hdmi_register { ptr @.str.67, i32 1, i32 844 }, %struct.vc4_hdmi_register { ptr @.str.68, i32 1, i32 832 }, %struct.vc4_hdmi_register { ptr @.str.69, i32 1, i32 836 }, %struct.vc4_hdmi_register { ptr @.str.70, i32 1, i32 268 }, %struct.vc4_hdmi_register { ptr @.str.71, i32 1, i32 272 }, %struct.vc4_hdmi_register { ptr @.str.72, i32 1, i32 276 }, %struct.vc4_hdmi_register { ptr @.str.73, i32 1, i32 280 }, %struct.vc4_hdmi_register { ptr @.str.74, i32 1, i32 252 }, %struct.vc4_hdmi_register { ptr @.str.75, i32 1, i32 256 }, %struct.vc4_hdmi_register { ptr @.str.76, i32 1, i32 260 }, %struct.vc4_hdmi_register { ptr @.str.77, i32 1, i32 264 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.78, i32 1, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.79, i32 1, i32 168 }, %struct.vc4_hdmi_register { ptr @.str.80, i32 2, i32 68 }, %struct.vc4_hdmi_register { ptr @.str.81, i32 2, i32 72 }, %struct.vc4_hdmi_register { ptr @.str.82, i32 2, i32 76 }, %struct.vc4_hdmi_register { ptr @.str.83, i32 2, i32 80 }, %struct.vc4_hdmi_register { ptr @.str.84, i32 2, i32 84 }, %struct.vc4_hdmi_register { ptr @.str.85, i32 2, i32 88 }, %struct.vc4_hdmi_register { ptr @.str.86, i32 2, i32 64 }, %struct.vc4_hdmi_register { ptr @.str.87, i32 1, i32 172 }, %struct.vc4_hdmi_register { ptr @.str.88, i32 1, i32 176 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.89, i32 1, i32 92 }, %struct.vc4_hdmi_register { ptr @.str.90, i32 2, i32 104 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.91, i32 1, i32 196 }, %struct.vc4_hdmi_register { ptr @.str.92, i32 1, i32 200 }, %struct.vc4_hdmi_register { ptr @.str.93, i32 1, i32 12 }, %struct.vc4_hdmi_register { ptr @.str.94, i32 1, i32 8 }, %struct.vc4_hdmi_register { ptr @.str.95, i32 1, i32 144 }, %struct.vc4_hdmi_register { ptr @.str.96, i32 1, i32 148 }, %struct.vc4_hdmi_register { ptr @.str.97, i32 2, i32 20 }, %struct.vc4_hdmi_register { ptr @.str.98, i32 2, i32 32 }, %struct.vc4_hdmi_register { ptr @.str.99, i32 2, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.100, i32 1, i32 152 }, %struct.vc4_hdmi_register { ptr @.str.101, i32 2, i32 44 }, %struct.vc4_hdmi_register { ptr @.str.102, i32 2, i32 24 }, %struct.vc4_hdmi_register { ptr @.str.103, i32 2, i32 12 }, %struct.vc4_hdmi_register { ptr @.str.104, i32 1, i32 160 }, %struct.vc4_hdmi_register { ptr @.str.105, i32 1, i32 1024 }, %struct.vc4_hdmi_register { ptr @.str.106, i32 1, i32 164 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.107, i32 1, i32 192 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.108, i32 1, i32 4 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.109, i32 1, i32 708 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.110, i32 1, i32 704 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.111, i32 1, i32 204 }, %struct.vc4_hdmi_register { ptr @.str.112, i32 1, i32 212 }, %struct.vc4_hdmi_register { ptr @.str.113, i32 1, i32 208 }, %struct.vc4_hdmi_register { ptr @.str.114, i32 1, i32 216 }, %struct.vc4_hdmi_register { ptr @.str.115, i32 2, i32 56 }], align 4
@.str.58 = private unnamed_addr constant [25 x i8] c"HDMI_AUDIO_PACKET_CONFIG\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"HDMI_CEC_CNTRL_1\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"HDMI_CEC_CNTRL_2\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"HDMI_CEC_CNTRL_3\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"HDMI_CEC_CNTRL_4\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"HDMI_CEC_CNTRL_5\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"HDMI_CEC_CPU_CLEAR\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"HDMI_CEC_CPU_MASK_CLEAR\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"HDMI_CEC_CPU_MASK_SET\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"HDMI_CEC_CPU_MASK_STATUS\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"HDMI_CEC_CPU_STATUS\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"HDMI_CEC_CPU_SET\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"HDMI_CEC_RX_DATA_1\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"HDMI_CEC_RX_DATA_2\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"HDMI_CEC_RX_DATA_3\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"HDMI_CEC_RX_DATA_4\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"HDMI_CEC_TX_DATA_1\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"HDMI_CEC_TX_DATA_2\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"HDMI_CEC_TX_DATA_3\00", align 1
@.str.77 = private unnamed_addr constant [19 x i8] c"HDMI_CEC_TX_DATA_4\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"HDMI_CORE_REV\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"HDMI_CRP_CFG\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"HDMI_CSC_12_11\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"HDMI_CSC_14_13\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"HDMI_CSC_22_21\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"HDMI_CSC_24_23\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"HDMI_CSC_32_31\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"HDMI_CSC_34_33\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"HDMI_CSC_CTL\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"HDMI_CTS_0\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"HDMI_CTS_1\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"HDMI_FIFO_CTL\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"HDMI_FRAME_COUNT\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"HDMI_HORZA\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"HDMI_HORZB\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"HDMI_HOTPLUG\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"HDMI_HOTPLUG_INT\00", align 1
@.str.95 = private unnamed_addr constant [21 x i8] c"HDMI_MAI_CHANNEL_MAP\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"HDMI_MAI_CONFIG\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"HDMI_MAI_CTL\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"HDMI_MAI_DATA\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"HDMI_MAI_FMT\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"HDMI_MAI_FORMAT\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"HDMI_MAI_SMP\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"HDMI_MAI_THR\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"HDMI_M_CTL\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"HDMI_RAM_PACKET_CONFIG\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"HDMI_RAM_PACKET_START\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c"HDMI_RAM_PACKET_STATUS\00", align 1
@.str.107 = private unnamed_addr constant [23 x i8] c"HDMI_SCHEDULER_CONTROL\00", align 1
@.str.108 = private unnamed_addr constant [22 x i8] c"HDMI_SW_RESET_CONTROL\00", align 1
@.str.109 = private unnamed_addr constant [18 x i8] c"HDMI_TX_PHY_CTL_0\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c"HDMI_TX_PHY_RESET_CTL\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"HDMI_VERTA0\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"HDMI_VERTA1\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"HDMI_VERTB0\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"HDMI_VERTB1\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"HDMI_VID_CTL\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@.str.117 = private unnamed_addr constant [27 x i8] c"Failed to get pixel clock\0A\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.119 = private unnamed_addr constant [40 x i8] c"Failed to get HDMI state machine clock\0A\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"vc4-hdmi-0\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"hdmi0_regs\00", align 1
@vc5_hdmi_hdmi0_fields = internal constant [81 x %struct.vc4_hdmi_register] [%struct.vc4_hdmi_register { ptr @.str.58, i32 1, i32 184 }, %struct.vc4_hdmi_register { ptr @.str.59, i32 3, i32 16 }, %struct.vc4_hdmi_register { ptr @.str.60, i32 3, i32 20 }, %struct.vc4_hdmi_register { ptr @.str.61, i32 3, i32 24 }, %struct.vc4_hdmi_register { ptr @.str.62, i32 3, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.63, i32 3, i32 32 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.70, i32 3, i32 56 }, %struct.vc4_hdmi_register { ptr @.str.71, i32 3, i32 60 }, %struct.vc4_hdmi_register { ptr @.str.72, i32 3, i32 64 }, %struct.vc4_hdmi_register { ptr @.str.73, i32 3, i32 68 }, %struct.vc4_hdmi_register { ptr @.str.74, i32 3, i32 40 }, %struct.vc4_hdmi_register { ptr @.str.75, i32 3, i32 44 }, %struct.vc4_hdmi_register { ptr @.str.76, i32 3, i32 48 }, %struct.vc4_hdmi_register { ptr @.str.77, i32 3, i32 52 }, %struct.vc4_hdmi_register { ptr @.str.122, i32 5, i32 188 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.79, i32 1, i32 200 }, %struct.vc4_hdmi_register { ptr @.str.80, i32 4, i32 4 }, %struct.vc4_hdmi_register { ptr @.str.81, i32 4, i32 8 }, %struct.vc4_hdmi_register { ptr @.str.82, i32 4, i32 12 }, %struct.vc4_hdmi_register { ptr @.str.83, i32 4, i32 16 }, %struct.vc4_hdmi_register { ptr @.str.84, i32 4, i32 20 }, %struct.vc4_hdmi_register { ptr @.str.85, i32 4, i32 24 }, %struct.vc4_hdmi_register { ptr @.str.86, i32 4, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.87, i32 1, i32 204 }, %struct.vc4_hdmi_register { ptr @.str.88, i32 1, i32 208 }, %struct.vc4_hdmi_register { ptr @.str.123, i32 1, i32 368 }, %struct.vc4_hdmi_register { ptr @.str.124, i32 2, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.89, i32 1, i32 116 }, %struct.vc4_hdmi_register { ptr @.str.90, i32 2, i32 96 }, %struct.vc4_hdmi_register { ptr @.str.125, i32 1, i32 376 }, %struct.vc4_hdmi_register { ptr @.str.126, i32 1, i32 380 }, %struct.vc4_hdmi_register { ptr @.str.91, i32 1, i32 228 }, %struct.vc4_hdmi_register { ptr @.str.92, i32 1, i32 232 }, %struct.vc4_hdmi_register { ptr @.str.93, i32 1, i32 424 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.95, i32 1, i32 156 }, %struct.vc4_hdmi_register { ptr @.str.96, i32 1, i32 160 }, %struct.vc4_hdmi_register { ptr @.str.97, i32 2, i32 16 }, %struct.vc4_hdmi_register { ptr @.str.98, i32 2, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.99, i32 2, i32 24 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.101, i32 2, i32 32 }, %struct.vc4_hdmi_register { ptr @.str.102, i32 2, i32 20 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.104, i32 1, i32 188 }, %struct.vc4_hdmi_register { ptr @.str.105, i32 7, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.106, i32 1, i32 196 }, %struct.vc4_hdmi_register { ptr @.str.127, i32 8, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.128, i32 8, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.129, i32 8, i32 24 }, %struct.vc4_hdmi_register { ptr @.str.107, i32 1, i32 224 }, %struct.vc4_hdmi_register { ptr @.str.130, i32 1, i32 452 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.131, i32 6, i32 76 }, %struct.vc4_hdmi_register { ptr @.str.132, i32 6, i32 40 }, %struct.vc4_hdmi_register { ptr @.str.109, i32 6, i32 8 }, %struct.vc4_hdmi_register { ptr @.str.133, i32 6, i32 12 }, %struct.vc4_hdmi_register { ptr @.str.134, i32 6, i32 16 }, %struct.vc4_hdmi_register { ptr @.str.135, i32 6, i32 20 }, %struct.vc4_hdmi_register { ptr @.str.136, i32 6, i32 80 }, %struct.vc4_hdmi_register { ptr @.str.137, i32 6, i32 84 }, %struct.vc4_hdmi_register { ptr @.str.138, i32 6, i32 92 }, %struct.vc4_hdmi_register { ptr @.str.139, i32 6, i32 52 }, %struct.vc4_hdmi_register { ptr @.str.140, i32 6, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.141, i32 6, i32 32 }, %struct.vc4_hdmi_register { ptr @.str.142, i32 6, i32 4 }, %struct.vc4_hdmi_register { ptr @.str.110, i32 6, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.143, i32 6, i32 68 }, %struct.vc4_hdmi_register { ptr @.str.144, i32 5, i32 240 }, %struct.vc4_hdmi_register { ptr @.str.111, i32 1, i32 236 }, %struct.vc4_hdmi_register { ptr @.str.112, i32 1, i32 244 }, %struct.vc4_hdmi_register { ptr @.str.113, i32 1, i32 240 }, %struct.vc4_hdmi_register { ptr @.str.114, i32 1, i32 248 }, %struct.vc4_hdmi_register { ptr @.str.115, i32 2, i32 68 }], align 4
@.str.122 = private unnamed_addr constant [16 x i8] c"HDMI_CLOCK_STOP\00", align 1
@.str.123 = private unnamed_addr constant [25 x i8] c"HDMI_DEEP_COLOR_CONFIG_1\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"HDMI_DVP_CTL\00", align 1
@.str.125 = private unnamed_addr constant [16 x i8] c"HDMI_GCP_CONFIG\00", align 1
@.str.126 = private unnamed_addr constant [16 x i8] c"HDMI_GCP_WORD_1\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"HDMI_RM_CONTROL\00", align 1
@.str.128 = private unnamed_addr constant [15 x i8] c"HDMI_RM_FORMAT\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"HDMI_RM_OFFSET\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"HDMI_SCRAMBLER_CTL\00", align 1
@.str.131 = private unnamed_addr constant [25 x i8] c"HDMI_TX_PHY_CHANNEL_SWAP\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"HDMI_TX_PHY_CLK_DIV\00", align 1
@.str.133 = private unnamed_addr constant [18 x i8] c"HDMI_TX_PHY_CTL_1\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"HDMI_TX_PHY_CTL_2\00", align 1
@.str.135 = private unnamed_addr constant [18 x i8] c"HDMI_TX_PHY_CTL_3\00", align 1
@.str.136 = private unnamed_addr constant [37 x i8] c"HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_1\00", align 1
@.str.137 = private unnamed_addr constant [37 x i8] c"HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_2\00", align 1
@.str.138 = private unnamed_addr constant [37 x i8] c"HDMI_TX_PHY_PLL_CALIBRATION_CONFIG_4\00", align 1
@.str.139 = private unnamed_addr constant [20 x i8] c"HDMI_TX_PHY_PLL_CFG\00", align 1
@.str.140 = private unnamed_addr constant [22 x i8] c"HDMI_TX_PHY_PLL_CTL_0\00", align 1
@.str.141 = private unnamed_addr constant [22 x i8] c"HDMI_TX_PHY_PLL_CTL_1\00", align 1
@.str.142 = private unnamed_addr constant [26 x i8] c"HDMI_TX_PHY_POWERDOWN_CTL\00", align 1
@.str.143 = private unnamed_addr constant [30 x i8] c"HDMI_TX_PHY_TMDS_CLK_WORD_SEL\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"HDMI_VEC_INTERFACE_XBAR\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"cec\00", align 1
@.str.146 = private unnamed_addr constant [4 x i8] c"csc\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"dvp\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"packet\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"bvb\00", align 1
@.str.152 = private unnamed_addr constant [31 x i8] c"Failed to get pixel bvb clock\0A\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.154 = private unnamed_addr constant [27 x i8] c"Failed to get audio clock\0A\00", align 1
@.str.155 = private unnamed_addr constant [25 x i8] c"Failed to get CEC clock\0A\00", align 1
@.str.156 = private unnamed_addr constant [31 x i8] c"Failed to get HDMI reset line\0A\00", align 1
@.str.157 = private unnamed_addr constant [11 x i8] c"vc4-hdmi-1\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"hdmi1_regs\00", align 1
@vc5_hdmi_hdmi1_fields = internal constant [81 x %struct.vc4_hdmi_register] [%struct.vc4_hdmi_register { ptr @.str.58, i32 1, i32 184 }, %struct.vc4_hdmi_register { ptr @.str.59, i32 3, i32 16 }, %struct.vc4_hdmi_register { ptr @.str.60, i32 3, i32 20 }, %struct.vc4_hdmi_register { ptr @.str.61, i32 3, i32 24 }, %struct.vc4_hdmi_register { ptr @.str.62, i32 3, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.63, i32 3, i32 32 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.70, i32 3, i32 56 }, %struct.vc4_hdmi_register { ptr @.str.71, i32 3, i32 60 }, %struct.vc4_hdmi_register { ptr @.str.72, i32 3, i32 64 }, %struct.vc4_hdmi_register { ptr @.str.73, i32 3, i32 68 }, %struct.vc4_hdmi_register { ptr @.str.74, i32 3, i32 40 }, %struct.vc4_hdmi_register { ptr @.str.75, i32 3, i32 44 }, %struct.vc4_hdmi_register { ptr @.str.76, i32 3, i32 48 }, %struct.vc4_hdmi_register { ptr @.str.77, i32 3, i32 52 }, %struct.vc4_hdmi_register { ptr @.str.122, i32 5, i32 188 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.79, i32 1, i32 200 }, %struct.vc4_hdmi_register { ptr @.str.80, i32 4, i32 4 }, %struct.vc4_hdmi_register { ptr @.str.81, i32 4, i32 8 }, %struct.vc4_hdmi_register { ptr @.str.82, i32 4, i32 12 }, %struct.vc4_hdmi_register { ptr @.str.83, i32 4, i32 16 }, %struct.vc4_hdmi_register { ptr @.str.84, i32 4, i32 20 }, %struct.vc4_hdmi_register { ptr @.str.85, i32 4, i32 24 }, %struct.vc4_hdmi_register { ptr @.str.86, i32 4, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.87, i32 1, i32 204 }, %struct.vc4_hdmi_register { ptr @.str.88, i32 1, i32 208 }, %struct.vc4_hdmi_register { ptr @.str.123, i32 1, i32 368 }, %struct.vc4_hdmi_register { ptr @.str.124, i32 2, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.89, i32 1, i32 116 }, %struct.vc4_hdmi_register { ptr @.str.90, i32 2, i32 100 }, %struct.vc4_hdmi_register { ptr @.str.125, i32 1, i32 376 }, %struct.vc4_hdmi_register { ptr @.str.126, i32 1, i32 380 }, %struct.vc4_hdmi_register { ptr @.str.91, i32 1, i32 228 }, %struct.vc4_hdmi_register { ptr @.str.92, i32 1, i32 232 }, %struct.vc4_hdmi_register { ptr @.str.93, i32 1, i32 424 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.95, i32 1, i32 156 }, %struct.vc4_hdmi_register { ptr @.str.96, i32 1, i32 160 }, %struct.vc4_hdmi_register { ptr @.str.97, i32 2, i32 48 }, %struct.vc4_hdmi_register { ptr @.str.98, i32 2, i32 60 }, %struct.vc4_hdmi_register { ptr @.str.99, i32 2, i32 56 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.101, i32 2, i32 64 }, %struct.vc4_hdmi_register { ptr @.str.102, i32 2, i32 52 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.104, i32 1, i32 188 }, %struct.vc4_hdmi_register { ptr @.str.105, i32 7, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.106, i32 1, i32 196 }, %struct.vc4_hdmi_register { ptr @.str.127, i32 8, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.128, i32 8, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.129, i32 8, i32 24 }, %struct.vc4_hdmi_register { ptr @.str.107, i32 1, i32 224 }, %struct.vc4_hdmi_register { ptr @.str.130, i32 1, i32 452 }, %struct.vc4_hdmi_register zeroinitializer, %struct.vc4_hdmi_register { ptr @.str.131, i32 6, i32 76 }, %struct.vc4_hdmi_register { ptr @.str.132, i32 6, i32 40 }, %struct.vc4_hdmi_register { ptr @.str.109, i32 6, i32 8 }, %struct.vc4_hdmi_register { ptr @.str.133, i32 6, i32 12 }, %struct.vc4_hdmi_register { ptr @.str.134, i32 6, i32 16 }, %struct.vc4_hdmi_register { ptr @.str.135, i32 6, i32 20 }, %struct.vc4_hdmi_register { ptr @.str.136, i32 6, i32 80 }, %struct.vc4_hdmi_register { ptr @.str.137, i32 6, i32 84 }, %struct.vc4_hdmi_register { ptr @.str.138, i32 6, i32 92 }, %struct.vc4_hdmi_register { ptr @.str.139, i32 6, i32 52 }, %struct.vc4_hdmi_register { ptr @.str.140, i32 6, i32 28 }, %struct.vc4_hdmi_register { ptr @.str.141, i32 6, i32 32 }, %struct.vc4_hdmi_register { ptr @.str.142, i32 6, i32 4 }, %struct.vc4_hdmi_register { ptr @.str.110, i32 6, i32 0 }, %struct.vc4_hdmi_register { ptr @.str.143, i32 6, i32 68 }, %struct.vc4_hdmi_register { ptr @.str.144, i32 5, i32 240 }, %struct.vc4_hdmi_register { ptr @.str.111, i32 1, i32 236 }, %struct.vc4_hdmi_register { ptr @.str.112, i32 1, i32 244 }, %struct.vc4_hdmi_register { ptr @.str.113, i32 1, i32 240 }, %struct.vc4_hdmi_register { ptr @.str.114, i32 1, i32 248 }, %struct.vc4_hdmi_register { ptr @.str.115, i32 2, i32 72 }], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_dev_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @vc4_hdmi_ops) #14
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_dev_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @vc4_hdmi_ops) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_bind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = tail call ptr @of_device_get_match_data(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 2104, i32 noundef 3520) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %141, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 31
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @vc4_hdmi_bind.__key) #14
  %13 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 30
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 5
  store i32 -32, ptr %14, align 8
  %15 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 5, i32 0, i32 1
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 5, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 5, i32 0, i32 2
  store ptr @vc4_hdmi_scrambling_wq, ptr %17, align 4
  %18 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %18, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #14
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %8, ptr %19, align 8
  %20 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 3
  %21 = load i32, ptr %5, align 8
  %22 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 3, i32 0, i32 1
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 3, i32 0, i32 3
  store ptr @vc4_hdmi_encoder_pre_crtc_configure, ptr %23, align 8
  %24 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 3, i32 0, i32 4
  store ptr @vc4_hdmi_encoder_pre_crtc_enable, ptr %24, align 4
  %25 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 3, i32 0, i32 5
  store ptr @vc4_hdmi_encoder_post_crtc_enable, ptr %25, align 8
  %26 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 3, i32 0, i32 6
  store ptr @vc4_hdmi_encoder_post_crtc_disable, ptr %26, align 4
  %27 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 3, i32 0, i32 7
  store ptr @vc4_hdmi_encoder_post_crtc_powerdown, ptr %27, align 8
  %28 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 1
  store ptr %11, ptr %28, align 8
  %29 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 2
  store ptr %5, ptr %29, align 4
  %30 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 3
  %31 = load i64, ptr %30, align 8
  %32 = icmp ugt i64 %31, 340000000
  br i1 %32, label %33, label %35

33:                                               ; preds = %10
  %34 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 34
  store i8 1, ptr %34, align 1
  br label %35

35:                                               ; preds = %33, %10
  %36 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 9
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef nonnull %8) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %141

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %42 = load ptr, ptr %41, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #14, !annotation !8
  %43 = call i32 @__of_parse_phandle_with_args(ptr noundef %42, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #14
  %44 = icmp ne i32 %43, 0
  %45 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #14
  %46 = icmp eq ptr %45, null
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #14
  br label %141

49:                                               ; preds = %40
  %50 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %45) #14
  %51 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 6
  store ptr %50, ptr %51, align 4
  call void @of_node_put(ptr noundef nonnull %45) #14
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4) #14
  br label %141

55:                                               ; preds = %49
  %56 = call ptr @devm_gpiod_get_optional(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 1) #14
  %57 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 15
  store ptr %56, ptr %57, align 8
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = ptrtoint ptr %56 to i32
  br label %137

61:                                               ; preds = %55
  %62 = load ptr, ptr %41, align 8
  %63 = call ptr @of_find_property(ptr noundef %62, ptr noundef nonnull @.str.6, ptr noundef null) #14
  %64 = icmp ne ptr %63, null
  %65 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 16
  %66 = zext i1 %64 to i8
  store i8 %66, ptr %65, align 4
  %67 = load i64, ptr %30, align 8
  %68 = icmp eq i64 %67, 600000000
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.vc4_dev, ptr %7, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.vc4_hvs, ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 @clk_round_rate(ptr noundef %73, i32 noundef 550000000) #14
  %75 = icmp slt i32 %74, 550000000
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 17
  store i8 1, ptr %77, align 1
  br label %78

78:                                               ; preds = %76, %69, %61
  %79 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 24
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 @clk_set_min_rate(ptr noundef %80, i32 noundef 120000000) #14
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %137

83:                                               ; preds = %78
  %84 = call i32 @vc4_hdmi_runtime_resume(ptr noundef %0)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %137

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #14, !srcloc !9
  %88 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #14, !srcloc !10
  %89 = call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #14
  call void @pm_runtime_enable(ptr noundef %0) #14
  %90 = load ptr, ptr %29, align 4
  %91 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %90, i32 0, i32 10
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %86
  call void %92(ptr noundef nonnull %8) #14
  br label %95

95:                                               ; preds = %94, %86
  %96 = load ptr, ptr %41, align 8
  %97 = call i32 @of_device_is_compatible(ptr noundef %96, ptr noundef nonnull @.str.7) #14
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load ptr, ptr %41, align 8
  %101 = call i32 @of_device_is_compatible(ptr noundef %100, ptr noundef nonnull @.str.8) #14
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %99, %95
  %104 = call fastcc i32 @vc4_hdmi_read(ptr noundef nonnull %8, i32 noundef 80)
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %115, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 23
  %108 = load ptr, ptr %107, align 8
  %109 = call fastcc i32 @clk_prepare_enable(ptr noundef %108)
  %110 = load ptr, ptr %79, align 4
  %111 = call fastcc i32 @clk_prepare_enable(ptr noundef %110)
  %112 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 26
  %113 = load ptr, ptr %112, align 4
  %114 = call fastcc i32 @clk_prepare_enable(ptr noundef %113)
  br label %115

115:                                              ; preds = %106, %103, %99
  %116 = call i32 @drm_simple_encoder_init(ptr noundef %7, ptr noundef %20, i32 noundef 2) #14
  %117 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 3, i32 0, i32 0, i32 11
  store ptr @vc4_hdmi_encoder_helper_funcs, ptr %117, align 4
  %118 = call fastcc i32 @vc4_hdmi_connector_init(ptr noundef %7, ptr noundef nonnull %8)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %115
  %121 = call fastcc i32 @vc4_hdmi_hotplug_init(ptr noundef nonnull %8)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = call fastcc i32 @vc4_hdmi_audio_init(ptr noundef nonnull %8)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 2
  %128 = load ptr, ptr %127, align 8
  call void @vc4_debugfs_add_file(ptr noundef %7, ptr noundef %128, ptr noundef nonnull @vc4_hdmi_debugfs_regs, ptr noundef nonnull %8) #14
  %129 = call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #14
  br label %141

130:                                              ; preds = %123
  call fastcc void @vc4_hdmi_hotplug_exit(ptr noundef nonnull %8)
  br label %131

131:                                              ; preds = %130, %120
  %132 = phi i32 [ %121, %120 ], [ %124, %130 ]
  %133 = getelementptr inbounds %struct.vc4_hdmi, ptr %8, i32 0, i32 4
  call void @drm_connector_unregister(ptr noundef %133) #14
  call void @drm_connector_cleanup(ptr noundef %133) #14
  br label %134

134:                                              ; preds = %131, %115
  %135 = phi i32 [ %118, %115 ], [ %132, %131 ]
  call void @drm_encoder_cleanup(ptr noundef %20) #14
  %136 = call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #14
  call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #14
  br label %137

137:                                              ; preds = %134, %83, %78, %59
  %138 = phi i32 [ %60, %59 ], [ %81, %78 ], [ %84, %83 ], [ %135, %134 ]
  %139 = load ptr, ptr %51, align 4
  %140 = getelementptr inbounds %struct.i2c_adapter, ptr %139, i32 0, i32 9
  call void @put_device(ptr noundef %140) #14
  br label %141

141:                                              ; preds = %137, %126, %54, %48, %35, %3
  %142 = phi i32 [ %138, %137 ], [ 0, %126 ], [ -517, %54 ], [ -19, %48 ], [ -12, %3 ], [ %38, %35 ]
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_unbind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.vc4_hdmi, ptr %5, i32 0, i32 28
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #14
  %8 = getelementptr inbounds %struct.vc4_hdmi, ptr %5, i32 0, i32 29
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #14
  %10 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %5, i32 0, i32 7
  %11 = load ptr, ptr %10, align 8
  tail call void @platform_device_unregister(ptr noundef %11) #14
  store ptr null, ptr %10, align 8
  %12 = getelementptr inbounds %struct.vc4_hdmi, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %13, i32 0, i32 8
  %15 = load i8, ptr %14, align 1, !range !11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.vc4_hdmi, ptr %5, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @platform_get_irq_byname(ptr noundef %19, ptr noundef nonnull @.str.34) #14
  %21 = tail call ptr @free_irq(i32 noundef %20, ptr noundef %5) #14
  %22 = tail call i32 @platform_get_irq_byname(ptr noundef %19, ptr noundef nonnull @.str.35) #14
  %23 = tail call ptr @free_irq(i32 noundef %22, ptr noundef %5) #14
  br label %24

24:                                               ; preds = %17, %3
  %25 = getelementptr inbounds %struct.vc4_hdmi, ptr %5, i32 0, i32 4
  tail call void @drm_connector_unregister(ptr noundef %25) #14
  tail call void @drm_connector_cleanup(ptr noundef %25) #14
  %26 = getelementptr inbounds %struct.vc4_hdmi, ptr %5, i32 0, i32 3
  tail call void @drm_encoder_cleanup(ptr noundef %26) #14
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #14
  %27 = getelementptr inbounds %struct.vc4_hdmi, ptr %5, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 9
  tail call void @put_device(ptr noundef %29) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_scrambling_wq(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 44
  %3 = load ptr, ptr %2, align 4
  %4 = tail call zeroext i1 @drm_scdc_get_scrambling_status(ptr noundef %3) #14
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4
  %7 = tail call zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef %6, i1 noundef zeroext true) #14
  %8 = load ptr, ptr %2, align 4
  %9 = tail call zeroext i1 @drm_scdc_set_scrambling(ptr noundef %8, i1 noundef zeroext true) #14
  %10 = load ptr, ptr @system_wq, align 4
  %11 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %10, ptr noundef %0, i32 noundef 100) #14
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_pre_crtc_configure(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %20, %6
  %10 = phi i32 [ 0, %6 ], [ %21, %20 ]
  %11 = getelementptr %struct.__drm_connnectors_state, ptr %8, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.__drm_connnectors_state, ptr %8, i32 %10, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_connector_state, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14, %9
  %21 = add nuw i32 %10, 1
  %22 = icmp eq i32 %21, %4
  br i1 %22, label %23, label %9

23:                                               ; preds = %20, %14, %2
  %24 = phi ptr [ null, %2 ], [ %16, %14 ], [ null, %20 ]
  %25 = getelementptr i8, ptr %0, i32 -680
  %26 = getelementptr i8, ptr %0, i32 1308
  %27 = getelementptr inbounds %struct.vc4_hdmi_connector_state, ptr %24, i32 0, i32 1
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = getelementptr i8, ptr %0, i32 1288
  tail call void @mutex_lock(ptr noundef %30) #14
  %31 = udiv i32 %29, 100
  %32 = mul i32 %31, 101
  %33 = tail call i32 @llvm.umax.i32(i32 %32, i32 120000000)
  %34 = getelementptr i8, ptr %0, i32 1236
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @clk_set_min_rate(ptr noundef %35, i32 noundef %33) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %23
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %36) #14
  br label %106

39:                                               ; preds = %23
  %40 = getelementptr i8, ptr %0, i32 -8
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  %43 = tail call i32 @__pm_runtime_resume(ptr noundef %42, i32 noundef 4) #14
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #14, !srcloc !9
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 0, i32 -1, ptr elementtype(i32) %46) #14, !srcloc !13
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  br label %51

51:                                               ; preds = %50, %45
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %43) #14
  br label %106

52:                                               ; preds = %39
  %53 = getelementptr i8, ptr %0, i32 1232
  %54 = load ptr, ptr %53, align 8
  %55 = tail call i32 @clk_set_rate(ptr noundef %54, i32 noundef %29) #14
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %55) #14
  br label %102

58:                                               ; preds = %52
  %59 = load ptr, ptr %53, align 8
  %60 = tail call i32 @clk_prepare(ptr noundef %59) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = tail call i32 @clk_enable(ptr noundef %59) #14
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  tail call void @clk_unprepare(ptr noundef %59) #14
  br label %66

66:                                               ; preds = %65, %58
  %67 = phi i32 [ %63, %65 ], [ %60, %58 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %67) #14
  br label %102

68:                                               ; preds = %62
  %69 = icmp ugt i32 %29, 297000000
  %70 = icmp ugt i32 %29, 148500000
  %71 = select i1 %70, i32 150000000, i32 75000000
  %72 = select i1 %69, i32 300000000, i32 %71
  %73 = getelementptr i8, ptr %0, i32 1244
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 @clk_set_min_rate(ptr noundef %74, i32 noundef %72) #14
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %75) #14
  br label %100

78:                                               ; preds = %68
  %79 = load ptr, ptr %73, align 4
  %80 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %80) #14
  br label %100

83:                                               ; preds = %78
  %84 = getelementptr i8, ptr %0, i32 -4
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %85, i32 0, i32 13
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  tail call void %87(ptr noundef %25, ptr noundef %24) #14
  br label %90

90:                                               ; preds = %89, %83
  %91 = getelementptr i8, ptr %0, i32 1284
  %92 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %91) #14
  %93 = tail call fastcc i32 @vc4_hdmi_read(ptr noundef %25, i32 noundef 57)
  %94 = or i32 %93, 32800
  tail call fastcc void @vc4_hdmi_write(ptr noundef %25, i32 noundef 57, i32 noundef %94)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %91, i32 noundef %92) #14
  %95 = load ptr, ptr %84, align 4
  %96 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %95, i32 0, i32 12
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %106, label %99

99:                                               ; preds = %90
  tail call void %97(ptr noundef %25, ptr noundef %24, ptr noundef %26) #14
  br label %106

100:                                              ; preds = %82, %77
  %101 = load ptr, ptr %53, align 8
  tail call void @clk_disable(ptr noundef %101) #14
  tail call void @clk_unprepare(ptr noundef %101) #14
  br label %102

102:                                              ; preds = %100, %66, %57
  %103 = load ptr, ptr %40, align 8
  %104 = getelementptr inbounds %struct.platform_device, ptr %103, i32 0, i32 3
  %105 = tail call i32 @__pm_runtime_idle(ptr noundef %104, i32 noundef 5) #14
  br label %106

106:                                              ; preds = %102, %99, %90, %51, %38
  tail call void @mutex_unlock(ptr noundef %30) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_pre_crtc_enable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -680
  %4 = getelementptr i8, ptr %0, i32 1288
  tail call void @mutex_lock(ptr noundef %4) #14
  %5 = getelementptr inbounds %struct.vc4_hdmi_encoder, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 4, !range !11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 1308
  %10 = tail call i32 @drm_default_rgb_quant_range(ptr noundef %9) #14
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 -4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %14, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  tail call void %16(ptr noundef %3, i1 noundef zeroext true) #14
  br label %26

19:                                               ; preds = %8, %2
  %20 = getelementptr i8, ptr %0, i32 -4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %21, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void %23(ptr noundef %3, i1 noundef zeroext false) #14
  br label %26

26:                                               ; preds = %25, %19, %18, %12
  %27 = phi i8 [ 1, %18 ], [ 1, %12 ], [ 0, %25 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.vc4_hdmi_encoder, ptr %0, i32 0, i32 2
  store i8 %27, ptr %28, align 1
  %29 = getelementptr i8, ptr %0, i32 1284
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #14
  %31 = getelementptr i8, ptr %0, i32 -4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %0, i32 -8
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3, i32 11, i32 18
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3, i32 11, i32 15
  %40 = load i16, ptr %39, align 8
  %41 = and i16 %40, 7
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %44, !prof !15

43:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %44

44:                                               ; preds = %43, %38, %26
  %45 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %32, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %46, 34
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %33, align 8
  %50 = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.16, i32 noundef 34) #15
  br label %68

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %32, i32 0, i32 4
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr %struct.vc4_hdmi_register, ptr %53, i32 34, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, -1
  %57 = icmp ult i32 %56, 8
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = shl i32 %56, 2
  %60 = add i32 %59, 1120
  %61 = getelementptr i8, ptr %0, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %65 = getelementptr %struct.vc4_hdmi_register, ptr %53, i32 34, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr i8, ptr %62, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 1) #14, !srcloc !17
  br label %68

68:                                               ; preds = %64, %58, %51, %48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #14
  tail call void @mutex_unlock(ptr noundef %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_post_crtc_enable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %union.hdmi_infoframe, align 4
  %4 = alloca %union.hdmi_infoframe, align 4
  %5 = alloca %union.hdmi_infoframe, align 4
  %6 = alloca %union.hdmi_infoframe, align 4
  %7 = getelementptr i8, ptr %0, i32 1332
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 1288
  tail call void @mutex_lock(ptr noundef %9) #14
  %10 = getelementptr i8, ptr %0, i32 1284
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #14
  %12 = shl i32 %8, 26
  %13 = and i32 %12, 268435456
  %14 = shl i32 %8, 27
  %15 = and i32 %14, 134217728
  %16 = or i32 %15, %13
  %17 = xor i32 %16, -125829120
  %18 = getelementptr i8, ptr %0, i32 -4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 -8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3, i32 11, i32 18
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3, i32 11, i32 15
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, 7
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %31, !prof !15

30:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %31

31:                                               ; preds = %30, %25, %2
  %32 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %19, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %33, 80
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %20, align 8
  %37 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.16, i32 noundef 80) #15
  br label %55

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %19, i32 0, i32 4
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr %struct.vc4_hdmi_register, ptr %40, i32 80, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, -1
  %44 = icmp ult i32 %43, 8
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = shl i32 %43, 2
  %47 = add i32 %46, 1120
  %48 = getelementptr i8, ptr %0, i32 %47
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %52 = getelementptr %struct.vc4_hdmi_register, ptr %40, i32 80, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %49, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %17) #14, !srcloc !17
  br label %55

55:                                               ; preds = %51, %45, %38, %35
  %56 = load ptr, ptr %18, align 4
  %57 = load ptr, ptr %20, align 8
  %58 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3, i32 11, i32 18
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3, i32 11, i32 15
  %63 = load i16, ptr %62, align 8
  %64 = and i16 %63, 7
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %67, !prof !15

66:                                               ; preds = %61
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %67

67:                                               ; preds = %66, %61, %55
  %68 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %56, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = icmp ugt i32 %69, 80
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %20, align 8
  %73 = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.16, i32 noundef 80) #15
  br label %95

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %56, i32 0, i32 4
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr %struct.vc4_hdmi_register, ptr %76, i32 80, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, -1
  %80 = icmp ult i32 %79, 8
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = shl i32 %79, 2
  %83 = add i32 %82, 1120
  %84 = getelementptr i8, ptr %0, i32 %83
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %81, %74
  %88 = load ptr, ptr %20, align 8
  %89 = getelementptr inbounds %struct.platform_device, ptr %88, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %89, ptr noundef nonnull @.str.30, i32 noundef 80) #15
  br label %95

90:                                               ; preds = %81
  %91 = getelementptr %struct.vc4_hdmi_register, ptr %76, i32 80, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr i8, ptr %85, i32 %92
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %95

95:                                               ; preds = %90, %87, %71
  %96 = phi i32 [ 0, %71 ], [ %94, %90 ], [ 0, %87 ]
  %97 = and i32 %96, -262145
  %98 = load ptr, ptr %18, align 4
  %99 = load ptr, ptr %20, align 8
  %100 = getelementptr inbounds %struct.platform_device, ptr %99, i32 0, i32 3, i32 11, i32 18
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.platform_device, ptr %99, i32 0, i32 3, i32 11, i32 15
  %105 = load i16, ptr %104, align 8
  %106 = and i16 %105, 7
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %109, !prof !15

108:                                              ; preds = %103
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %109

109:                                              ; preds = %108, %103, %95
  %110 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %98, i32 0, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = icmp ugt i32 %111, 80
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %20, align 8
  %115 = getelementptr inbounds %struct.platform_device, ptr %114, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %115, ptr noundef nonnull @.str.16, i32 noundef 80) #15
  br label %133

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %98, i32 0, i32 4
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr %struct.vc4_hdmi_register, ptr %118, i32 80, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, -1
  %122 = icmp ult i32 %121, 8
  br i1 %122, label %123, label %133

123:                                              ; preds = %116
  %124 = shl i32 %121, 2
  %125 = add i32 %124, 1120
  %126 = getelementptr i8, ptr %0, i32 %125
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %123
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %130 = getelementptr %struct.vc4_hdmi_register, ptr %118, i32 80, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr i8, ptr %127, i32 %131
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %97) #14, !srcloc !17
  br label %133

133:                                              ; preds = %129, %123, %116, %113
  %134 = getelementptr inbounds %struct.vc4_hdmi_encoder, ptr %0, i32 0, i32 1
  %135 = load i8, ptr %134, align 4, !range !11
  %136 = icmp eq i8 %135, 0
  %137 = load ptr, ptr %18, align 4
  %138 = load ptr, ptr %20, align 8
  %139 = getelementptr inbounds %struct.platform_device, ptr %138, i32 0, i32 3, i32 11, i32 18
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %136, label %285, label %142

142:                                              ; preds = %133
  br i1 %141, label %149, label %143

143:                                              ; preds = %142
  %144 = getelementptr inbounds %struct.platform_device, ptr %138, i32 0, i32 3, i32 11, i32 15
  %145 = load i16, ptr %144, align 8
  %146 = and i16 %145, 7
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %149, !prof !15

148:                                              ; preds = %143
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %149

149:                                              ; preds = %148, %143, %142
  %150 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %137, i32 0, i32 5
  %151 = load i32, ptr %150, align 4
  %152 = icmp ugt i32 %151, 57
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = load ptr, ptr %20, align 8
  %155 = getelementptr inbounds %struct.platform_device, ptr %154, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %155, ptr noundef nonnull @.str.16, i32 noundef 57) #15
  br label %177

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %137, i32 0, i32 4
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr %struct.vc4_hdmi_register, ptr %158, i32 57, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, -1
  %162 = icmp ult i32 %161, 8
  br i1 %162, label %163, label %169

163:                                              ; preds = %156
  %164 = shl i32 %161, 2
  %165 = add i32 %164, 1120
  %166 = getelementptr i8, ptr %0, i32 %165
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %163, %156
  %170 = load ptr, ptr %20, align 8
  %171 = getelementptr inbounds %struct.platform_device, ptr %170, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %171, ptr noundef nonnull @.str.30, i32 noundef 57) #15
  br label %177

172:                                              ; preds = %163
  %173 = getelementptr %struct.vc4_hdmi_register, ptr %158, i32 57, i32 2
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr i8, ptr %167, i32 %174
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %175) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %177

177:                                              ; preds = %172, %169, %153
  %178 = phi i32 [ 0, %153 ], [ %176, %172 ], [ 0, %169 ]
  %179 = or i32 %178, 1
  %180 = load ptr, ptr %18, align 4
  %181 = load ptr, ptr %20, align 8
  %182 = getelementptr inbounds %struct.platform_device, ptr %181, i32 0, i32 3, i32 11, i32 18
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %177
  %186 = getelementptr inbounds %struct.platform_device, ptr %181, i32 0, i32 3, i32 11, i32 15
  %187 = load i16, ptr %186, align 8
  %188 = and i16 %187, 7
  %189 = icmp eq i16 %188, 0
  br i1 %189, label %190, label %191, !prof !15

190:                                              ; preds = %185
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %191

191:                                              ; preds = %190, %185, %177
  %192 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %180, i32 0, i32 5
  %193 = load i32, ptr %192, align 4
  %194 = icmp ugt i32 %193, 57
  br i1 %194, label %198, label %195

195:                                              ; preds = %191
  %196 = load ptr, ptr %20, align 8
  %197 = getelementptr inbounds %struct.platform_device, ptr %196, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %197, ptr noundef nonnull @.str.16, i32 noundef 57) #15
  br label %215

198:                                              ; preds = %191
  %199 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %180, i32 0, i32 4
  %200 = load ptr, ptr %199, align 8
  %201 = getelementptr %struct.vc4_hdmi_register, ptr %200, i32 57, i32 1
  %202 = load i32, ptr %201, align 4
  %203 = add i32 %202, -1
  %204 = icmp ult i32 %203, 8
  br i1 %204, label %205, label %215

205:                                              ; preds = %198
  %206 = shl i32 %203, 2
  %207 = add i32 %206, 1120
  %208 = getelementptr i8, ptr %0, i32 %207
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %205
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %212 = getelementptr %struct.vc4_hdmi_register, ptr %200, i32 57, i32 2
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr i8, ptr %209, i32 %213
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %179) #14, !srcloc !17
  br label %215

215:                                              ; preds = %211, %205, %198, %195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #14
  %216 = tail call i64 @ktime_get_raw() #14
  %217 = add i64 %216, 1000000000
  %218 = getelementptr i8, ptr %0, i32 1148
  %219 = getelementptr i8, ptr %0, i32 1144
  %220 = getelementptr i8, ptr %0, i32 1140
  %221 = getelementptr i8, ptr %0, i32 1136
  %222 = getelementptr i8, ptr %0, i32 1128
  %223 = getelementptr i8, ptr %0, i32 1132
  %224 = getelementptr i8, ptr %0, i32 1120
  %225 = getelementptr i8, ptr %0, i32 1124
  br label %226

226:                                              ; preds = %277, %215
  %227 = phi i32 [ 10, %215 ], [ %280, %277 ]
  %228 = tail call i64 @ktime_get_raw() #14
  %229 = icmp sgt i64 %228, %217
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !20
  %230 = load ptr, ptr %18, align 4
  %231 = load ptr, ptr %20, align 8
  %232 = getelementptr inbounds %struct.platform_device, ptr %231, i32 0, i32 3, i32 11, i32 18
  %233 = load i32, ptr %232, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %226
  %236 = getelementptr inbounds %struct.platform_device, ptr %231, i32 0, i32 3, i32 11, i32 15
  %237 = load i16, ptr %236, align 8
  %238 = and i16 %237, 7
  %239 = icmp eq i16 %238, 0
  br i1 %239, label %240, label %241, !prof !15

240:                                              ; preds = %235
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %241

241:                                              ; preds = %240, %235, %226
  %242 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %230, i32 0, i32 5
  %243 = load i32, ptr %242, align 4
  %244 = icmp ugt i32 %243, 57
  br i1 %244, label %248, label %245

245:                                              ; preds = %241
  %246 = load ptr, ptr %20, align 8
  %247 = getelementptr inbounds %struct.platform_device, ptr %246, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %247, ptr noundef nonnull @.str.16, i32 noundef 57) #15
  br label %272

248:                                              ; preds = %241
  %249 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %230, i32 0, i32 4
  %250 = load ptr, ptr %249, align 8
  %251 = getelementptr %struct.vc4_hdmi_register, ptr %250, i32 57, i32 1
  %252 = load i32, ptr %251, align 4
  switch i32 %252, label %264 [
    i32 2, label %260
    i32 1, label %253
    i32 4, label %254
    i32 3, label %255
    i32 5, label %256
    i32 6, label %257
    i32 7, label %258
    i32 8, label %259
  ]

253:                                              ; preds = %248
  br label %260

254:                                              ; preds = %248
  br label %260

255:                                              ; preds = %248
  br label %260

256:                                              ; preds = %248
  br label %260

257:                                              ; preds = %248
  br label %260

258:                                              ; preds = %248
  br label %260

259:                                              ; preds = %248
  br label %260

260:                                              ; preds = %259, %258, %257, %256, %255, %254, %253, %248
  %261 = phi ptr [ %218, %259 ], [ %219, %258 ], [ %220, %257 ], [ %221, %256 ], [ %222, %255 ], [ %223, %254 ], [ %224, %253 ], [ %225, %248 ]
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %260, %248
  %265 = load ptr, ptr %20, align 8
  %266 = getelementptr inbounds %struct.platform_device, ptr %265, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %266, ptr noundef nonnull @.str.30, i32 noundef 57) #15
  br label %272

267:                                              ; preds = %260
  %268 = getelementptr %struct.vc4_hdmi_register, ptr %250, i32 57, i32 2
  %269 = load i32, ptr %268, align 4
  %270 = getelementptr i8, ptr %262, i32 %269
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %270) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %272

272:                                              ; preds = %267, %264, %245
  %273 = phi i32 [ 0, %245 ], [ %271, %267 ], [ 0, %264 ]
  %274 = and i32 %273, 2
  %275 = icmp ne i32 %274, 0
  %276 = select i1 %275, i1 true, i1 %229
  br i1 %276, label %281, label %277

277:                                              ; preds = %272
  %278 = shl i32 %227, 1
  tail call void @usleep_range_state(i32 noundef %227, i32 noundef %278, i32 noundef 2) #14
  %279 = icmp slt i32 %227, 1000
  %280 = select i1 %279, i32 %278, i32 %227
  br label %226

281:                                              ; preds = %272
  %282 = load i1, ptr @vc4_hdmi_encoder_post_crtc_enable.__already_done, align 1
  %283 = select i1 %275, i1 true, i1 %282
  br i1 %283, label %504, label %284, !prof !21

284:                                              ; preds = %281
  store i1 true, ptr @vc4_hdmi_encoder_post_crtc_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1172, i32 noundef 9, ptr noundef nonnull @.str.18) #14
  br label %504

285:                                              ; preds = %133
  br i1 %141, label %292, label %286

286:                                              ; preds = %285
  %287 = getelementptr inbounds %struct.platform_device, ptr %138, i32 0, i32 3, i32 11, i32 15
  %288 = load i16, ptr %287, align 8
  %289 = and i16 %288, 7
  %290 = icmp eq i16 %289, 0
  br i1 %290, label %291, label %292, !prof !15

291:                                              ; preds = %286
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %292

292:                                              ; preds = %291, %286, %285
  %293 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %137, i32 0, i32 5
  %294 = load i32, ptr %293, align 4
  %295 = icmp ugt i32 %294, 51
  br i1 %295, label %299, label %296

296:                                              ; preds = %292
  %297 = load ptr, ptr %20, align 8
  %298 = getelementptr inbounds %struct.platform_device, ptr %297, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %298, ptr noundef nonnull @.str.16, i32 noundef 51) #15
  br label %320

299:                                              ; preds = %292
  %300 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %137, i32 0, i32 4
  %301 = load ptr, ptr %300, align 8
  %302 = getelementptr %struct.vc4_hdmi_register, ptr %301, i32 51, i32 1
  %303 = load i32, ptr %302, align 4
  %304 = add i32 %303, -1
  %305 = icmp ult i32 %304, 8
  br i1 %305, label %306, label %312

306:                                              ; preds = %299
  %307 = shl i32 %304, 2
  %308 = add i32 %307, 1120
  %309 = getelementptr i8, ptr %0, i32 %308
  %310 = load ptr, ptr %309, align 4
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %315

312:                                              ; preds = %306, %299
  %313 = load ptr, ptr %20, align 8
  %314 = getelementptr inbounds %struct.platform_device, ptr %313, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %314, ptr noundef nonnull @.str.30, i32 noundef 51) #15
  br label %320

315:                                              ; preds = %306
  %316 = getelementptr %struct.vc4_hdmi_register, ptr %301, i32 51, i32 2
  %317 = load i32, ptr %316, align 4
  %318 = getelementptr i8, ptr %310, i32 %317
  %319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %318) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %320

320:                                              ; preds = %315, %312, %296
  %321 = phi i32 [ 0, %296 ], [ %319, %315 ], [ 0, %312 ]
  %322 = and i32 %321, -65537
  %323 = load ptr, ptr %18, align 4
  %324 = load ptr, ptr %20, align 8
  %325 = getelementptr inbounds %struct.platform_device, ptr %324, i32 0, i32 3, i32 11, i32 18
  %326 = load i32, ptr %325, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %334, label %328

328:                                              ; preds = %320
  %329 = getelementptr inbounds %struct.platform_device, ptr %324, i32 0, i32 3, i32 11, i32 15
  %330 = load i16, ptr %329, align 8
  %331 = and i16 %330, 7
  %332 = icmp eq i16 %331, 0
  br i1 %332, label %333, label %334, !prof !15

333:                                              ; preds = %328
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %334

334:                                              ; preds = %333, %328, %320
  %335 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %323, i32 0, i32 5
  %336 = load i32, ptr %335, align 4
  %337 = icmp ugt i32 %336, 51
  br i1 %337, label %341, label %338

338:                                              ; preds = %334
  %339 = load ptr, ptr %20, align 8
  %340 = getelementptr inbounds %struct.platform_device, ptr %339, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %340, ptr noundef nonnull @.str.16, i32 noundef 51) #15
  br label %358

341:                                              ; preds = %334
  %342 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %323, i32 0, i32 4
  %343 = load ptr, ptr %342, align 8
  %344 = getelementptr %struct.vc4_hdmi_register, ptr %343, i32 51, i32 1
  %345 = load i32, ptr %344, align 4
  %346 = add i32 %345, -1
  %347 = icmp ult i32 %346, 8
  br i1 %347, label %348, label %358

348:                                              ; preds = %341
  %349 = shl i32 %346, 2
  %350 = add i32 %349, 1120
  %351 = getelementptr i8, ptr %0, i32 %350
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %358, label %354

354:                                              ; preds = %348
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %355 = getelementptr %struct.vc4_hdmi_register, ptr %343, i32 51, i32 2
  %356 = load i32, ptr %355, align 4
  %357 = getelementptr i8, ptr %352, i32 %356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %357, i32 %322) #14, !srcloc !17
  br label %358

358:                                              ; preds = %354, %348, %341, %338
  %359 = load ptr, ptr %18, align 4
  %360 = load ptr, ptr %20, align 8
  %361 = getelementptr inbounds %struct.platform_device, ptr %360, i32 0, i32 3, i32 11, i32 18
  %362 = load i32, ptr %361, align 4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %370, label %364

364:                                              ; preds = %358
  %365 = getelementptr inbounds %struct.platform_device, ptr %360, i32 0, i32 3, i32 11, i32 15
  %366 = load i16, ptr %365, align 8
  %367 = and i16 %366, 7
  %368 = icmp eq i16 %367, 0
  br i1 %368, label %369, label %370, !prof !15

369:                                              ; preds = %364
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %370

370:                                              ; preds = %369, %364, %358
  %371 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %359, i32 0, i32 5
  %372 = load i32, ptr %371, align 4
  %373 = icmp ugt i32 %372, 57
  br i1 %373, label %377, label %374

374:                                              ; preds = %370
  %375 = load ptr, ptr %20, align 8
  %376 = getelementptr inbounds %struct.platform_device, ptr %375, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %376, ptr noundef nonnull @.str.16, i32 noundef 57) #15
  br label %398

377:                                              ; preds = %370
  %378 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %359, i32 0, i32 4
  %379 = load ptr, ptr %378, align 8
  %380 = getelementptr %struct.vc4_hdmi_register, ptr %379, i32 57, i32 1
  %381 = load i32, ptr %380, align 4
  %382 = add i32 %381, -1
  %383 = icmp ult i32 %382, 8
  br i1 %383, label %384, label %390

384:                                              ; preds = %377
  %385 = shl i32 %382, 2
  %386 = add i32 %385, 1120
  %387 = getelementptr i8, ptr %0, i32 %386
  %388 = load ptr, ptr %387, align 4
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %393

390:                                              ; preds = %384, %377
  %391 = load ptr, ptr %20, align 8
  %392 = getelementptr inbounds %struct.platform_device, ptr %391, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %392, ptr noundef nonnull @.str.30, i32 noundef 57) #15
  br label %398

393:                                              ; preds = %384
  %394 = getelementptr %struct.vc4_hdmi_register, ptr %379, i32 57, i32 2
  %395 = load i32, ptr %394, align 4
  %396 = getelementptr i8, ptr %388, i32 %395
  %397 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %396) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %398

398:                                              ; preds = %393, %390, %374
  %399 = phi i32 [ 0, %374 ], [ %397, %393 ], [ 0, %390 ]
  %400 = and i32 %399, -2
  %401 = load ptr, ptr %18, align 4
  %402 = load ptr, ptr %20, align 8
  %403 = getelementptr inbounds %struct.platform_device, ptr %402, i32 0, i32 3, i32 11, i32 18
  %404 = load i32, ptr %403, align 4
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %412, label %406

406:                                              ; preds = %398
  %407 = getelementptr inbounds %struct.platform_device, ptr %402, i32 0, i32 3, i32 11, i32 15
  %408 = load i16, ptr %407, align 8
  %409 = and i16 %408, 7
  %410 = icmp eq i16 %409, 0
  br i1 %410, label %411, label %412, !prof !15

411:                                              ; preds = %406
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %412

412:                                              ; preds = %411, %406, %398
  %413 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %401, i32 0, i32 5
  %414 = load i32, ptr %413, align 4
  %415 = icmp ugt i32 %414, 57
  br i1 %415, label %419, label %416

416:                                              ; preds = %412
  %417 = load ptr, ptr %20, align 8
  %418 = getelementptr inbounds %struct.platform_device, ptr %417, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %418, ptr noundef nonnull @.str.16, i32 noundef 57) #15
  br label %436

419:                                              ; preds = %412
  %420 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %401, i32 0, i32 4
  %421 = load ptr, ptr %420, align 8
  %422 = getelementptr %struct.vc4_hdmi_register, ptr %421, i32 57, i32 1
  %423 = load i32, ptr %422, align 4
  %424 = add i32 %423, -1
  %425 = icmp ult i32 %424, 8
  br i1 %425, label %426, label %436

426:                                              ; preds = %419
  %427 = shl i32 %424, 2
  %428 = add i32 %427, 1120
  %429 = getelementptr i8, ptr %0, i32 %428
  %430 = load ptr, ptr %429, align 4
  %431 = icmp eq ptr %430, null
  br i1 %431, label %436, label %432

432:                                              ; preds = %426
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %433 = getelementptr %struct.vc4_hdmi_register, ptr %421, i32 57, i32 2
  %434 = load i32, ptr %433, align 4
  %435 = getelementptr i8, ptr %430, i32 %434
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %435, i32 %400) #14, !srcloc !17
  br label %436

436:                                              ; preds = %432, %426, %419, %416
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #14
  %437 = tail call i64 @ktime_get_raw() #14
  %438 = add i64 %437, 1000000000
  %439 = getelementptr i8, ptr %0, i32 1148
  %440 = getelementptr i8, ptr %0, i32 1144
  %441 = getelementptr i8, ptr %0, i32 1140
  %442 = getelementptr i8, ptr %0, i32 1136
  %443 = getelementptr i8, ptr %0, i32 1128
  %444 = getelementptr i8, ptr %0, i32 1132
  %445 = getelementptr i8, ptr %0, i32 1120
  %446 = getelementptr i8, ptr %0, i32 1124
  br label %447

447:                                              ; preds = %496, %436
  %448 = phi i32 [ 10, %436 ], [ %499, %496 ]
  %449 = tail call i64 @ktime_get_raw() #14
  %450 = icmp sgt i64 %449, %438
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  %451 = load ptr, ptr %18, align 4
  %452 = load ptr, ptr %20, align 8
  %453 = getelementptr inbounds %struct.platform_device, ptr %452, i32 0, i32 3, i32 11, i32 18
  %454 = load i32, ptr %453, align 4
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %462, label %456

456:                                              ; preds = %447
  %457 = getelementptr inbounds %struct.platform_device, ptr %452, i32 0, i32 3, i32 11, i32 15
  %458 = load i16, ptr %457, align 8
  %459 = and i16 %458, 7
  %460 = icmp eq i16 %459, 0
  br i1 %460, label %461, label %462, !prof !15

461:                                              ; preds = %456
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %462

462:                                              ; preds = %461, %456, %447
  %463 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %451, i32 0, i32 5
  %464 = load i32, ptr %463, align 4
  %465 = icmp ugt i32 %464, 57
  br i1 %465, label %469, label %466

466:                                              ; preds = %462
  %467 = load ptr, ptr %20, align 8
  %468 = getelementptr inbounds %struct.platform_device, ptr %467, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %468, ptr noundef nonnull @.str.16, i32 noundef 57) #15
  br label %504

469:                                              ; preds = %462
  %470 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %451, i32 0, i32 4
  %471 = load ptr, ptr %470, align 8
  %472 = getelementptr %struct.vc4_hdmi_register, ptr %471, i32 57, i32 1
  %473 = load i32, ptr %472, align 4
  switch i32 %473, label %485 [
    i32 2, label %481
    i32 1, label %474
    i32 4, label %475
    i32 3, label %476
    i32 5, label %477
    i32 6, label %478
    i32 7, label %479
    i32 8, label %480
  ]

474:                                              ; preds = %469
  br label %481

475:                                              ; preds = %469
  br label %481

476:                                              ; preds = %469
  br label %481

477:                                              ; preds = %469
  br label %481

478:                                              ; preds = %469
  br label %481

479:                                              ; preds = %469
  br label %481

480:                                              ; preds = %469
  br label %481

481:                                              ; preds = %480, %479, %478, %477, %476, %475, %474, %469
  %482 = phi ptr [ %439, %480 ], [ %440, %479 ], [ %441, %478 ], [ %442, %477 ], [ %443, %476 ], [ %444, %475 ], [ %445, %474 ], [ %446, %469 ]
  %483 = load ptr, ptr %482, align 4
  %484 = icmp eq ptr %483, null
  br i1 %484, label %485, label %488

485:                                              ; preds = %481, %469
  %486 = load ptr, ptr %20, align 8
  %487 = getelementptr inbounds %struct.platform_device, ptr %486, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %487, ptr noundef nonnull @.str.30, i32 noundef 57) #15
  br label %504

488:                                              ; preds = %481
  %489 = getelementptr %struct.vc4_hdmi_register, ptr %471, i32 57, i32 2
  %490 = load i32, ptr %489, align 4
  %491 = getelementptr i8, ptr %483, i32 %490
  %492 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %491) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  %493 = and i32 %492, 2
  %494 = icmp eq i32 %493, 0
  %495 = select i1 %494, i1 true, i1 %450
  br i1 %495, label %500, label %496

496:                                              ; preds = %488
  %497 = shl i32 %448, 1
  tail call void @usleep_range_state(i32 noundef %448, i32 noundef %497, i32 noundef 2) #14
  %498 = icmp slt i32 %448, 1000
  %499 = select i1 %498, i32 %497, i32 %448
  br label %447

500:                                              ; preds = %488
  %501 = load i1, ptr @vc4_hdmi_encoder_post_crtc_enable.__already_done.19, align 1
  %502 = select i1 %494, i1 true, i1 %501
  br i1 %502, label %504, label %503, !prof !21

503:                                              ; preds = %500
  store i1 true, ptr @vc4_hdmi_encoder_post_crtc_enable.__already_done.19, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1186, i32 noundef 9, ptr noundef nonnull @.str.20) #14
  br label %504

504:                                              ; preds = %503, %500, %485, %466, %284, %281
  %505 = load i8, ptr %134, align 4, !range !11
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %704, label %507

507:                                              ; preds = %504
  %508 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #14
  %509 = load ptr, ptr %18, align 4
  %510 = load ptr, ptr %20, align 8
  %511 = getelementptr inbounds %struct.platform_device, ptr %510, i32 0, i32 3, i32 11, i32 18
  %512 = load i32, ptr %511, align 4
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %520, label %514

514:                                              ; preds = %507
  %515 = getelementptr inbounds %struct.platform_device, ptr %510, i32 0, i32 3, i32 11, i32 15
  %516 = load i16, ptr %515, align 8
  %517 = and i16 %516, 7
  %518 = icmp eq i16 %517, 0
  br i1 %518, label %519, label %520, !prof !15

519:                                              ; preds = %514
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %520

520:                                              ; preds = %519, %514, %507
  %521 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %509, i32 0, i32 5
  %522 = load i32, ptr %521, align 4
  %523 = icmp ugt i32 %522, 57
  br i1 %523, label %524, label %544

524:                                              ; preds = %520
  %525 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %509, i32 0, i32 4
  %526 = load ptr, ptr %525, align 8
  %527 = getelementptr %struct.vc4_hdmi_register, ptr %526, i32 57, i32 1
  %528 = load i32, ptr %527, align 4
  %529 = add i32 %528, -1
  %530 = icmp ult i32 %529, 8
  br i1 %530, label %531, label %544

531:                                              ; preds = %524
  %532 = shl i32 %529, 2
  %533 = add i32 %532, 1120
  %534 = getelementptr i8, ptr %0, i32 %533
  %535 = load ptr, ptr %534, align 4
  %536 = icmp eq ptr %535, null
  br i1 %536, label %544, label %537

537:                                              ; preds = %531
  %538 = getelementptr %struct.vc4_hdmi_register, ptr %526, i32 57, i32 2
  %539 = load i32, ptr %538, align 4
  %540 = getelementptr i8, ptr %535, i32 %539
  %541 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %540) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  %542 = and i32 %541, 2
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %548, label %549, !prof !15

544:                                              ; preds = %531, %524, %520
  %545 = phi ptr [ @.str.16, %520 ], [ @.str.30, %531 ], [ @.str.30, %524 ]
  %546 = load ptr, ptr %20, align 8
  %547 = getelementptr inbounds %struct.platform_device, ptr %546, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %547, ptr noundef nonnull %545, i32 noundef 57) #15
  br label %548

548:                                              ; preds = %544, %537
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1193, i32 noundef 9, ptr noundef null) #14
  br label %549

549:                                              ; preds = %548, %537
  %550 = load ptr, ptr %18, align 4
  %551 = load ptr, ptr %20, align 8
  %552 = getelementptr inbounds %struct.platform_device, ptr %551, i32 0, i32 3, i32 11, i32 18
  %553 = load i32, ptr %552, align 4
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %561, label %555

555:                                              ; preds = %549
  %556 = getelementptr inbounds %struct.platform_device, ptr %551, i32 0, i32 3, i32 11, i32 15
  %557 = load i16, ptr %556, align 8
  %558 = and i16 %557, 7
  %559 = icmp eq i16 %558, 0
  br i1 %559, label %560, label %561, !prof !15

560:                                              ; preds = %555
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %561

561:                                              ; preds = %560, %555, %549
  %562 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %550, i32 0, i32 5
  %563 = load i32, ptr %562, align 4
  %564 = icmp ugt i32 %563, 57
  br i1 %564, label %568, label %565

565:                                              ; preds = %561
  %566 = load ptr, ptr %20, align 8
  %567 = getelementptr inbounds %struct.platform_device, ptr %566, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %567, ptr noundef nonnull @.str.16, i32 noundef 57) #15
  br label %589

568:                                              ; preds = %561
  %569 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %550, i32 0, i32 4
  %570 = load ptr, ptr %569, align 8
  %571 = getelementptr %struct.vc4_hdmi_register, ptr %570, i32 57, i32 1
  %572 = load i32, ptr %571, align 4
  %573 = add i32 %572, -1
  %574 = icmp ult i32 %573, 8
  br i1 %574, label %575, label %581

575:                                              ; preds = %568
  %576 = shl i32 %573, 2
  %577 = add i32 %576, 1120
  %578 = getelementptr i8, ptr %0, i32 %577
  %579 = load ptr, ptr %578, align 4
  %580 = icmp eq ptr %579, null
  br i1 %580, label %581, label %584

581:                                              ; preds = %575, %568
  %582 = load ptr, ptr %20, align 8
  %583 = getelementptr inbounds %struct.platform_device, ptr %582, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %583, ptr noundef nonnull @.str.30, i32 noundef 57) #15
  br label %589

584:                                              ; preds = %575
  %585 = getelementptr %struct.vc4_hdmi_register, ptr %570, i32 57, i32 2
  %586 = load i32, ptr %585, align 4
  %587 = getelementptr i8, ptr %579, i32 %586
  %588 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %587) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %589

589:                                              ; preds = %584, %581, %565
  %590 = phi i32 [ 0, %565 ], [ %588, %584 ], [ 0, %581 ]
  %591 = or i32 %590, 8
  %592 = load ptr, ptr %18, align 4
  %593 = load ptr, ptr %20, align 8
  %594 = getelementptr inbounds %struct.platform_device, ptr %593, i32 0, i32 3, i32 11, i32 18
  %595 = load i32, ptr %594, align 4
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %603, label %597

597:                                              ; preds = %589
  %598 = getelementptr inbounds %struct.platform_device, ptr %593, i32 0, i32 3, i32 11, i32 15
  %599 = load i16, ptr %598, align 8
  %600 = and i16 %599, 7
  %601 = icmp eq i16 %600, 0
  br i1 %601, label %602, label %603, !prof !15

602:                                              ; preds = %597
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %603

603:                                              ; preds = %602, %597, %589
  %604 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %592, i32 0, i32 5
  %605 = load i32, ptr %604, align 4
  %606 = icmp ugt i32 %605, 57
  br i1 %606, label %610, label %607

607:                                              ; preds = %603
  %608 = load ptr, ptr %20, align 8
  %609 = getelementptr inbounds %struct.platform_device, ptr %608, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %609, ptr noundef nonnull @.str.16, i32 noundef 57) #15
  br label %627

610:                                              ; preds = %603
  %611 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %592, i32 0, i32 4
  %612 = load ptr, ptr %611, align 8
  %613 = getelementptr %struct.vc4_hdmi_register, ptr %612, i32 57, i32 1
  %614 = load i32, ptr %613, align 4
  %615 = add i32 %614, -1
  %616 = icmp ult i32 %615, 8
  br i1 %616, label %617, label %627

617:                                              ; preds = %610
  %618 = shl i32 %615, 2
  %619 = add i32 %618, 1120
  %620 = getelementptr i8, ptr %0, i32 %619
  %621 = load ptr, ptr %620, align 4
  %622 = icmp eq ptr %621, null
  br i1 %622, label %627, label %623

623:                                              ; preds = %617
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %624 = getelementptr %struct.vc4_hdmi_register, ptr %612, i32 57, i32 2
  %625 = load i32, ptr %624, align 4
  %626 = getelementptr i8, ptr %621, i32 %625
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %626, i32 %591) #14, !srcloc !17
  br label %627

627:                                              ; preds = %623, %617, %610, %607
  %628 = load ptr, ptr %18, align 4
  %629 = load ptr, ptr %20, align 8
  %630 = getelementptr inbounds %struct.platform_device, ptr %629, i32 0, i32 3, i32 11, i32 18
  %631 = load i32, ptr %630, align 4
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %639, label %633

633:                                              ; preds = %627
  %634 = getelementptr inbounds %struct.platform_device, ptr %629, i32 0, i32 3, i32 11, i32 15
  %635 = load i16, ptr %634, align 8
  %636 = and i16 %635, 7
  %637 = icmp eq i16 %636, 0
  br i1 %637, label %638, label %639, !prof !15

638:                                              ; preds = %633
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %639

639:                                              ; preds = %638, %633, %627
  %640 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %628, i32 0, i32 5
  %641 = load i32, ptr %640, align 4
  %642 = icmp ugt i32 %641, 51
  br i1 %642, label %646, label %643

643:                                              ; preds = %639
  %644 = load ptr, ptr %20, align 8
  %645 = getelementptr inbounds %struct.platform_device, ptr %644, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %645, ptr noundef nonnull @.str.16, i32 noundef 51) #15
  br label %663

646:                                              ; preds = %639
  %647 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %628, i32 0, i32 4
  %648 = load ptr, ptr %647, align 8
  %649 = getelementptr %struct.vc4_hdmi_register, ptr %648, i32 51, i32 1
  %650 = load i32, ptr %649, align 4
  %651 = add i32 %650, -1
  %652 = icmp ult i32 %651, 8
  br i1 %652, label %653, label %663

653:                                              ; preds = %646
  %654 = shl i32 %651, 2
  %655 = add i32 %654, 1120
  %656 = getelementptr i8, ptr %0, i32 %655
  %657 = load ptr, ptr %656, align 4
  %658 = icmp eq ptr %657, null
  br i1 %658, label %663, label %659

659:                                              ; preds = %653
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %660 = getelementptr %struct.vc4_hdmi_register, ptr %648, i32 51, i32 2
  %661 = load i32, ptr %660, align 4
  %662 = getelementptr i8, ptr %657, i32 %661
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %662, i32 65536) #14, !srcloc !17
  br label %663

663:                                              ; preds = %659, %653, %646, %643
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %508) #14
  %664 = getelementptr i8, ptr %0, i32 104
  %665 = getelementptr i8, ptr %0, i32 1024
  %666 = load ptr, ptr %665, align 8
  %667 = getelementptr i8, ptr %0, i32 1308
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %6, i8 0, i32 68, i1 false) #14, !annotation !8
  %668 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %6, ptr noundef %664, ptr noundef %667) #14
  %669 = icmp slt i32 %668, 0
  br i1 %669, label %670, label %671

670:                                              ; preds = %663
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #14
  br label %676

671:                                              ; preds = %663
  %672 = getelementptr inbounds %struct.vc4_hdmi_encoder, ptr %0, i32 0, i32 2
  %673 = load i8, ptr %672, align 1, !range !11
  %674 = icmp eq i8 %673, 0
  %675 = select i1 %674, i32 2, i32 1
  call void @drm_hdmi_avi_infoframe_quant_range(ptr noundef nonnull %6, ptr noundef %664, ptr noundef %667, i32 noundef %675) #14
  call void @drm_hdmi_avi_infoframe_colorspace(ptr noundef nonnull %6, ptr noundef %666) #14
  call void @drm_hdmi_avi_infoframe_bars(ptr noundef nonnull %6, ptr noundef %666) #14
  call fastcc void @vc4_hdmi_write_infoframe(ptr noundef %0, ptr noundef nonnull %6) #14
  br label %676

676:                                              ; preds = %671, %670
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false) #14, !annotation !8
  %677 = call i32 @hdmi_spd_infoframe_init(ptr noundef nonnull %5, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #14
  %678 = icmp slt i32 %677, 0
  br i1 %678, label %679, label %680

679:                                              ; preds = %676
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27) #14
  br label %682

680:                                              ; preds = %676
  %681 = getelementptr inbounds %struct.hdmi_spd_infoframe, ptr %5, i32 0, i32 5
  store i32 9, ptr %681, align 4
  call fastcc void @vc4_hdmi_write_infoframe(ptr noundef %0, ptr noundef nonnull %5) #14
  br label %682

682:                                              ; preds = %680, %679
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #14
  %683 = getelementptr i8, ptr %0, i32 -12
  %684 = load i8, ptr %683, align 4, !range !11
  %685 = icmp eq i8 %684, 0
  br i1 %685, label %689, label %686

686:                                              ; preds = %682
  %687 = getelementptr i8, ptr %0, i32 -44
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #14
  %688 = getelementptr inbounds i8, ptr %4, i32 28
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %688, i8 0, i32 40, i1 false) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef align 4 dereferenceable(28) %687, i32 28, i1 false) #14
  call fastcc void @vc4_hdmi_write_infoframe(ptr noundef %0, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #14
  br label %689

689:                                              ; preds = %686, %682
  %690 = load ptr, ptr %665, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i32 68, i1 false) #14, !annotation !8
  %691 = load ptr, ptr %18, align 4
  %692 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %691, i32 0, i32 18
  %693 = load i8, ptr %692, align 8, !range !11
  %694 = icmp eq i8 %693, 0
  br i1 %694, label %703, label %695

695:                                              ; preds = %689
  %696 = getelementptr inbounds %struct.drm_connector_state, ptr %690, i32 0, i32 18
  %697 = load ptr, ptr %696, align 4
  %698 = icmp eq ptr %697, null
  br i1 %698, label %703, label %699

699:                                              ; preds = %695
  %700 = call i32 @drm_hdmi_infoframe_set_hdr_metadata(ptr noundef nonnull %3, ptr noundef %690) #14
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %702, label %703

702:                                              ; preds = %699
  call fastcc void @vc4_hdmi_write_infoframe(ptr noundef %0, ptr noundef nonnull %3) #14
  br label %703

703:                                              ; preds = %702, %699, %695, %689
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #14
  br label %704

704:                                              ; preds = %703, %504
  %705 = call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #14
  %706 = load ptr, ptr %18, align 4
  %707 = load ptr, ptr %20, align 8
  %708 = getelementptr inbounds %struct.platform_device, ptr %707, i32 0, i32 3, i32 11, i32 18
  %709 = load i32, ptr %708, align 4
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %717, label %711

711:                                              ; preds = %704
  %712 = getelementptr inbounds %struct.platform_device, ptr %707, i32 0, i32 3, i32 11, i32 15
  %713 = load i16, ptr %712, align 8
  %714 = and i16 %713, 7
  %715 = icmp eq i16 %714, 0
  br i1 %715, label %716, label %717, !prof !15

716:                                              ; preds = %711
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %717

717:                                              ; preds = %716, %711, %704
  %718 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %706, i32 0, i32 5
  %719 = load i32, ptr %718, align 4
  %720 = icmp ugt i32 %719, 34
  br i1 %720, label %724, label %721

721:                                              ; preds = %717
  %722 = load ptr, ptr %20, align 8
  %723 = getelementptr inbounds %struct.platform_device, ptr %722, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %723, ptr noundef nonnull @.str.16, i32 noundef 34) #15
  br label %745

724:                                              ; preds = %717
  %725 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %706, i32 0, i32 4
  %726 = load ptr, ptr %725, align 8
  %727 = getelementptr %struct.vc4_hdmi_register, ptr %726, i32 34, i32 1
  %728 = load i32, ptr %727, align 4
  %729 = add i32 %728, -1
  %730 = icmp ult i32 %729, 8
  br i1 %730, label %731, label %737

731:                                              ; preds = %724
  %732 = shl i32 %729, 2
  %733 = add i32 %732, 1120
  %734 = getelementptr i8, ptr %0, i32 %733
  %735 = load ptr, ptr %734, align 4
  %736 = icmp eq ptr %735, null
  br i1 %736, label %737, label %740

737:                                              ; preds = %731, %724
  %738 = load ptr, ptr %20, align 8
  %739 = getelementptr inbounds %struct.platform_device, ptr %738, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %739, ptr noundef nonnull @.str.30, i32 noundef 34) #15
  br label %745

740:                                              ; preds = %731
  %741 = getelementptr %struct.vc4_hdmi_register, ptr %726, i32 34, i32 2
  %742 = load i32, ptr %741, align 4
  %743 = getelementptr i8, ptr %735, i32 %742
  %744 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %743) #14, !srcloc !18
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %745

745:                                              ; preds = %740, %737, %721
  %746 = phi i32 [ 0, %721 ], [ %744, %740 ], [ 0, %737 ]
  %747 = and i32 %746, 61375
  %748 = load ptr, ptr %18, align 4
  %749 = load ptr, ptr %20, align 8
  %750 = getelementptr inbounds %struct.platform_device, ptr %749, i32 0, i32 3, i32 11, i32 18
  %751 = load i32, ptr %750, align 4
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %759, label %753

753:                                              ; preds = %745
  %754 = getelementptr inbounds %struct.platform_device, ptr %749, i32 0, i32 3, i32 11, i32 15
  %755 = load i16, ptr %754, align 8
  %756 = and i16 %755, 7
  %757 = icmp eq i16 %756, 0
  br i1 %757, label %758, label %759, !prof !15

758:                                              ; preds = %753
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %759

759:                                              ; preds = %758, %753, %745
  %760 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %748, i32 0, i32 5
  %761 = load i32, ptr %760, align 4
  %762 = icmp ugt i32 %761, 34
  br i1 %762, label %766, label %763

763:                                              ; preds = %759
  %764 = load ptr, ptr %20, align 8
  %765 = getelementptr inbounds %struct.platform_device, ptr %764, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %765, ptr noundef nonnull @.str.16, i32 noundef 34) #15
  br label %783

766:                                              ; preds = %759
  %767 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %748, i32 0, i32 4
  %768 = load ptr, ptr %767, align 8
  %769 = getelementptr %struct.vc4_hdmi_register, ptr %768, i32 34, i32 1
  %770 = load i32, ptr %769, align 4
  %771 = add i32 %770, -1
  %772 = icmp ult i32 %771, 8
  br i1 %772, label %773, label %783

773:                                              ; preds = %766
  %774 = shl i32 %771, 2
  %775 = add i32 %774, 1120
  %776 = getelementptr i8, ptr %0, i32 %775
  %777 = load ptr, ptr %776, align 4
  %778 = icmp eq ptr %777, null
  br i1 %778, label %783, label %779

779:                                              ; preds = %773
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  call void @arm_heavy_mb() #14
  %780 = getelementptr %struct.vc4_hdmi_register, ptr %768, i32 34, i32 2
  %781 = load i32, ptr %780, align 4
  %782 = getelementptr i8, ptr %777, i32 %781
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %782, i32 %747) #14, !srcloc !17
  br label %783

783:                                              ; preds = %779, %773, %766, %763
  %784 = or i32 %747, 64
  %785 = load ptr, ptr %18, align 4
  %786 = load ptr, ptr %20, align 8
  %787 = getelementptr inbounds %struct.platform_device, ptr %786, i32 0, i32 3, i32 11, i32 18
  %788 = load i32, ptr %787, align 4
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %796, label %790

790:                                              ; preds = %783
  %791 = getelementptr inbounds %struct.platform_device, ptr %786, i32 0, i32 3, i32 11, i32 15
  %792 = load i16, ptr %791, align 8
  %793 = and i16 %792, 7
  %794 = icmp eq i16 %793, 0
  br i1 %794, label %795, label %796, !prof !15

795:                                              ; preds = %790
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %796

796:                                              ; preds = %795, %790, %783
  %797 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %785, i32 0, i32 5
  %798 = load i32, ptr %797, align 4
  %799 = icmp ugt i32 %798, 34
  br i1 %799, label %803, label %800

800:                                              ; preds = %796
  %801 = load ptr, ptr %20, align 8
  %802 = getelementptr inbounds %struct.platform_device, ptr %801, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %802, ptr noundef nonnull @.str.16, i32 noundef 34) #15
  br label %820

803:                                              ; preds = %796
  %804 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %785, i32 0, i32 4
  %805 = load ptr, ptr %804, align 8
  %806 = getelementptr %struct.vc4_hdmi_register, ptr %805, i32 34, i32 1
  %807 = load i32, ptr %806, align 4
  %808 = add i32 %807, -1
  %809 = icmp ult i32 %808, 8
  br i1 %809, label %810, label %820

810:                                              ; preds = %803
  %811 = shl i32 %808, 2
  %812 = add i32 %811, 1120
  %813 = getelementptr i8, ptr %0, i32 %812
  %814 = load ptr, ptr %813, align 4
  %815 = icmp eq ptr %814, null
  br i1 %815, label %820, label %816

816:                                              ; preds = %810
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  call void @arm_heavy_mb() #14
  %817 = getelementptr %struct.vc4_hdmi_register, ptr %805, i32 34, i32 2
  %818 = load i32, ptr %817, align 4
  %819 = getelementptr i8, ptr %814, i32 %818
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %819, i32 %784) #14, !srcloc !17
  br label %820

820:                                              ; preds = %816, %810, %803, %800
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %705) #14
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #14
  %821 = call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #14
  %822 = load ptr, ptr %18, align 4
  %823 = load ptr, ptr %20, align 8
  %824 = getelementptr inbounds %struct.platform_device, ptr %823, i32 0, i32 3, i32 11, i32 18
  %825 = load i32, ptr %824, align 4
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %833, label %827

827:                                              ; preds = %820
  %828 = getelementptr inbounds %struct.platform_device, ptr %823, i32 0, i32 3, i32 11, i32 15
  %829 = load i16, ptr %828, align 8
  %830 = and i16 %829, 7
  %831 = icmp eq i16 %830, 0
  br i1 %831, label %832, label %833, !prof !15

832:                                              ; preds = %827
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %833

833:                                              ; preds = %832, %827, %820
  %834 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %822, i32 0, i32 5
  %835 = load i32, ptr %834, align 4
  %836 = icmp ugt i32 %835, 34
  br i1 %836, label %840, label %837

837:                                              ; preds = %833
  %838 = load ptr, ptr %20, align 8
  %839 = getelementptr inbounds %struct.platform_device, ptr %838, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %839, ptr noundef nonnull @.str.16, i32 noundef 34) #15
  br label %857

840:                                              ; preds = %833
  %841 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %822, i32 0, i32 4
  %842 = load ptr, ptr %841, align 8
  %843 = getelementptr %struct.vc4_hdmi_register, ptr %842, i32 34, i32 1
  %844 = load i32, ptr %843, align 4
  %845 = add i32 %844, -1
  %846 = icmp ult i32 %845, 8
  br i1 %846, label %847, label %857

847:                                              ; preds = %840
  %848 = shl i32 %845, 2
  %849 = add i32 %848, 1120
  %850 = getelementptr i8, ptr %0, i32 %849
  %851 = load ptr, ptr %850, align 4
  %852 = icmp eq ptr %851, null
  br i1 %852, label %857, label %853

853:                                              ; preds = %847
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  call void @arm_heavy_mb() #14
  %854 = getelementptr %struct.vc4_hdmi_register, ptr %842, i32 34, i32 2
  %855 = load i32, ptr %854, align 4
  %856 = getelementptr i8, ptr %851, i32 %855
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %856, i32 %747) #14, !srcloc !17
  br label %857

857:                                              ; preds = %853, %847, %840, %837
  %858 = load ptr, ptr %18, align 4
  %859 = load ptr, ptr %20, align 8
  %860 = getelementptr inbounds %struct.platform_device, ptr %859, i32 0, i32 3, i32 11, i32 18
  %861 = load i32, ptr %860, align 4
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %869, label %863

863:                                              ; preds = %857
  %864 = getelementptr inbounds %struct.platform_device, ptr %859, i32 0, i32 3, i32 11, i32 15
  %865 = load i16, ptr %864, align 8
  %866 = and i16 %865, 7
  %867 = icmp eq i16 %866, 0
  br i1 %867, label %868, label %869, !prof !15

868:                                              ; preds = %863
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %869

869:                                              ; preds = %868, %863, %857
  %870 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %858, i32 0, i32 5
  %871 = load i32, ptr %870, align 4
  %872 = icmp ugt i32 %871, 34
  br i1 %872, label %876, label %873

873:                                              ; preds = %869
  %874 = load ptr, ptr %20, align 8
  %875 = getelementptr inbounds %struct.platform_device, ptr %874, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %875, ptr noundef nonnull @.str.16, i32 noundef 34) #15
  br label %893

876:                                              ; preds = %869
  %877 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %858, i32 0, i32 4
  %878 = load ptr, ptr %877, align 8
  %879 = getelementptr %struct.vc4_hdmi_register, ptr %878, i32 34, i32 1
  %880 = load i32, ptr %879, align 4
  %881 = add i32 %880, -1
  %882 = icmp ult i32 %881, 8
  br i1 %882, label %883, label %893

883:                                              ; preds = %876
  %884 = shl i32 %881, 2
  %885 = add i32 %884, 1120
  %886 = getelementptr i8, ptr %0, i32 %885
  %887 = load ptr, ptr %886, align 4
  %888 = icmp eq ptr %887, null
  br i1 %888, label %893, label %889

889:                                              ; preds = %883
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  call void @arm_heavy_mb() #14
  %890 = getelementptr %struct.vc4_hdmi_register, ptr %878, i32 34, i32 2
  %891 = load i32, ptr %890, align 4
  %892 = getelementptr i8, ptr %887, i32 %891
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %892, i32 %784) #14, !srcloc !17
  br label %893

893:                                              ; preds = %889, %883, %876, %873
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %821) #14
  %894 = call i64 @ktime_get_raw() #14
  %895 = add i64 %894, 1000000
  %896 = getelementptr i8, ptr %0, i32 1148
  %897 = getelementptr i8, ptr %0, i32 1144
  %898 = getelementptr i8, ptr %0, i32 1140
  %899 = getelementptr i8, ptr %0, i32 1136
  %900 = getelementptr i8, ptr %0, i32 1128
  %901 = getelementptr i8, ptr %0, i32 1132
  %902 = getelementptr i8, ptr %0, i32 1120
  %903 = getelementptr i8, ptr %0, i32 1124
  br label %904

904:                                              ; preds = %955, %893
  %905 = phi i32 [ 10, %893 ], [ %958, %955 ]
  %906 = call i64 @ktime_get_raw() #14
  %907 = icmp sgt i64 %906, %895
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  %908 = load ptr, ptr %18, align 4
  %909 = load ptr, ptr %20, align 8
  %910 = getelementptr inbounds %struct.platform_device, ptr %909, i32 0, i32 3, i32 11, i32 18
  %911 = load i32, ptr %910, align 4
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %919, label %913

913:                                              ; preds = %904
  %914 = getelementptr inbounds %struct.platform_device, ptr %909, i32 0, i32 3, i32 11, i32 15
  %915 = load i16, ptr %914, align 8
  %916 = and i16 %915, 7
  %917 = icmp eq i16 %916, 0
  br i1 %917, label %918, label %919, !prof !15

918:                                              ; preds = %913
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %919

919:                                              ; preds = %918, %913, %904
  %920 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %908, i32 0, i32 5
  %921 = load i32, ptr %920, align 4
  %922 = icmp ugt i32 %921, 34
  br i1 %922, label %926, label %923

923:                                              ; preds = %919
  %924 = load ptr, ptr %20, align 8
  %925 = getelementptr inbounds %struct.platform_device, ptr %924, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %925, ptr noundef nonnull @.str.16, i32 noundef 34) #15
  br label %950

926:                                              ; preds = %919
  %927 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %908, i32 0, i32 4
  %928 = load ptr, ptr %927, align 8
  %929 = getelementptr %struct.vc4_hdmi_register, ptr %928, i32 34, i32 1
  %930 = load i32, ptr %929, align 4
  switch i32 %930, label %942 [
    i32 2, label %938
    i32 1, label %931
    i32 4, label %932
    i32 3, label %933
    i32 5, label %934
    i32 6, label %935
    i32 7, label %936
    i32 8, label %937
  ]

931:                                              ; preds = %926
  br label %938

932:                                              ; preds = %926
  br label %938

933:                                              ; preds = %926
  br label %938

934:                                              ; preds = %926
  br label %938

935:                                              ; preds = %926
  br label %938

936:                                              ; preds = %926
  br label %938

937:                                              ; preds = %926
  br label %938

938:                                              ; preds = %937, %936, %935, %934, %933, %932, %931, %926
  %939 = phi ptr [ %896, %937 ], [ %897, %936 ], [ %898, %935 ], [ %899, %934 ], [ %900, %933 ], [ %901, %932 ], [ %902, %931 ], [ %903, %926 ]
  %940 = load ptr, ptr %939, align 4
  %941 = icmp eq ptr %940, null
  br i1 %941, label %942, label %945

942:                                              ; preds = %938, %926
  %943 = load ptr, ptr %20, align 8
  %944 = getelementptr inbounds %struct.platform_device, ptr %943, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %944, ptr noundef nonnull @.str.30, i32 noundef 34) #15
  br label %950

945:                                              ; preds = %938
  %946 = getelementptr %struct.vc4_hdmi_register, ptr %928, i32 34, i32 2
  %947 = load i32, ptr %946, align 4
  %948 = getelementptr i8, ptr %940, i32 %947
  %949 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %948) #14, !srcloc !18
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %950

950:                                              ; preds = %945, %942, %923
  %951 = phi i32 [ 0, %923 ], [ %949, %945 ], [ 0, %942 ]
  %952 = and i32 %951, 16384
  %953 = icmp ne i32 %952, 0
  %954 = select i1 %953, i1 true, i1 %907
  br i1 %954, label %959, label %955

955:                                              ; preds = %950
  %956 = shl i32 %905, 1
  call void @usleep_range_state(i32 noundef %905, i32 noundef %956, i32 noundef 2) #14
  %957 = icmp slt i32 %905, 1000
  %958 = select i1 %957, i32 %956, i32 %905
  br label %904

959:                                              ; preds = %950
  %960 = load i1, ptr @vc4_hdmi_recenter_fifo.__already_done, align 1
  %961 = select i1 %953, i1 true, i1 %960
  br i1 %961, label %963, label %962, !prof !21

962:                                              ; preds = %959
  store i1 true, ptr @vc4_hdmi_recenter_fifo.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 980, i32 noundef 9, ptr noundef nonnull @.str.28) #14
  br label %963

963:                                              ; preds = %962, %959
  call fastcc void @vc4_hdmi_enable_scrambling(ptr noundef %0)
  call void @mutex_unlock(ptr noundef %9) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_post_crtc_disable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1288
  tail call void @mutex_lock(ptr noundef %3) #14
  %4 = getelementptr i8, ptr %0, i32 1284
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 11, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 11, i32 15
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 7
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19, !prof !15

18:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %19

19:                                               ; preds = %18, %13, %2
  %20 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %7, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 51
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.16, i32 noundef 51) #15
  br label %43

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %7, i32 0, i32 4
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr %struct.vc4_hdmi_register, ptr %28, i32 51, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -1
  %32 = icmp ult i32 %31, 8
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = shl i32 %31, 2
  %35 = add i32 %34, 1120
  %36 = getelementptr i8, ptr %0, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %40 = getelementptr %struct.vc4_hdmi_register, ptr %28, i32 51, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %37, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #14, !srcloc !17
  br label %43

43:                                               ; preds = %39, %33, %26, %23
  %44 = load ptr, ptr %6, align 4
  %45 = load ptr, ptr %8, align 8
  %46 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3, i32 11, i32 18
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3, i32 11, i32 15
  %51 = load i16, ptr %50, align 8
  %52 = and i16 %51, 7
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %55, !prof !15

54:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %55

55:                                               ; preds = %54, %49, %43
  %56 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %44, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = icmp ugt i32 %57, 80
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %8, align 8
  %61 = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.16, i32 noundef 80) #15
  br label %83

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %44, i32 0, i32 4
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr %struct.vc4_hdmi_register, ptr %64, i32 80, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, -1
  %68 = icmp ult i32 %67, 8
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = shl i32 %67, 2
  %71 = add i32 %70, 1120
  %72 = getelementptr i8, ptr %0, i32 %71
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %69, %62
  %76 = load ptr, ptr %8, align 8
  %77 = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.30, i32 noundef 80) #15
  br label %83

78:                                               ; preds = %69
  %79 = getelementptr %struct.vc4_hdmi_register, ptr %64, i32 80, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %73, i32 %80
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %83

83:                                               ; preds = %78, %75, %59
  %84 = phi i32 [ 0, %59 ], [ %82, %78 ], [ 0, %75 ]
  %85 = or i32 %84, 8388608
  %86 = load ptr, ptr %6, align 4
  %87 = load ptr, ptr %8, align 8
  %88 = getelementptr inbounds %struct.platform_device, ptr %87, i32 0, i32 3, i32 11, i32 18
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.platform_device, ptr %87, i32 0, i32 3, i32 11, i32 15
  %93 = load i16, ptr %92, align 8
  %94 = and i16 %93, 7
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %97, !prof !15

96:                                               ; preds = %91
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %97

97:                                               ; preds = %96, %91, %83
  %98 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %86, i32 0, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = icmp ugt i32 %99, 80
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %8, align 8
  %103 = getelementptr inbounds %struct.platform_device, ptr %102, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %103, ptr noundef nonnull @.str.16, i32 noundef 80) #15
  br label %121

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %86, i32 0, i32 4
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr %struct.vc4_hdmi_register, ptr %106, i32 80, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, -1
  %110 = icmp ult i32 %109, 8
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = shl i32 %109, 2
  %113 = add i32 %112, 1120
  %114 = getelementptr i8, ptr %0, i32 %113
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %111
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %118 = getelementptr %struct.vc4_hdmi_register, ptr %106, i32 80, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr i8, ptr %115, i32 %119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %85) #14, !srcloc !17
  br label %121

121:                                              ; preds = %117, %111, %104, %101
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 214748000) #14
  %123 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %124 = load ptr, ptr %6, align 4
  %125 = load ptr, ptr %8, align 8
  %126 = getelementptr inbounds %struct.platform_device, ptr %125, i32 0, i32 3, i32 11, i32 18
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.platform_device, ptr %125, i32 0, i32 3, i32 11, i32 15
  %131 = load i16, ptr %130, align 8
  %132 = and i16 %131, 7
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %134, label %135, !prof !15

134:                                              ; preds = %129
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %135

135:                                              ; preds = %134, %129, %121
  %136 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %124, i32 0, i32 5
  %137 = load i32, ptr %136, align 4
  %138 = icmp ugt i32 %137, 80
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %8, align 8
  %141 = getelementptr inbounds %struct.platform_device, ptr %140, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %141, ptr noundef nonnull @.str.16, i32 noundef 80) #15
  br label %164

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %124, i32 0, i32 4
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr %struct.vc4_hdmi_register, ptr %144, i32 80, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, -1
  %148 = icmp ult i32 %147, 8
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = shl i32 %147, 2
  %151 = add i32 %150, 1120
  %152 = getelementptr i8, ptr %0, i32 %151
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %149, %142
  %156 = load ptr, ptr %8, align 8
  %157 = getelementptr inbounds %struct.platform_device, ptr %156, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %157, ptr noundef nonnull @.str.30, i32 noundef 80) #15
  br label %164

158:                                              ; preds = %149
  %159 = getelementptr %struct.vc4_hdmi_register, ptr %144, i32 80, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr i8, ptr %153, i32 %160
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  %163 = and i32 %162, 2147483647
  br label %164

164:                                              ; preds = %158, %155, %139
  %165 = phi i32 [ 0, %139 ], [ %163, %158 ], [ 0, %155 ]
  %166 = load ptr, ptr %6, align 4
  %167 = load ptr, ptr %8, align 8
  %168 = getelementptr inbounds %struct.platform_device, ptr %167, i32 0, i32 3, i32 11, i32 18
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.platform_device, ptr %167, i32 0, i32 3, i32 11, i32 15
  %173 = load i16, ptr %172, align 8
  %174 = and i16 %173, 7
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %176, label %177, !prof !15

176:                                              ; preds = %171
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %177

177:                                              ; preds = %176, %171, %164
  %178 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %166, i32 0, i32 5
  %179 = load i32, ptr %178, align 4
  %180 = icmp ugt i32 %179, 80
  br i1 %180, label %184, label %181

181:                                              ; preds = %177
  %182 = load ptr, ptr %8, align 8
  %183 = getelementptr inbounds %struct.platform_device, ptr %182, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %183, ptr noundef nonnull @.str.16, i32 noundef 80) #15
  br label %201

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %166, i32 0, i32 4
  %186 = load ptr, ptr %185, align 8
  %187 = getelementptr %struct.vc4_hdmi_register, ptr %186, i32 80, i32 1
  %188 = load i32, ptr %187, align 4
  %189 = add i32 %188, -1
  %190 = icmp ult i32 %189, 8
  br i1 %190, label %191, label %201

191:                                              ; preds = %184
  %192 = shl i32 %189, 2
  %193 = add i32 %192, 1120
  %194 = getelementptr i8, ptr %0, i32 %193
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %191
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %198 = getelementptr %struct.vc4_hdmi_register, ptr %186, i32 80, i32 2
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr i8, ptr %195, i32 %199
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %165) #14, !srcloc !17
  br label %201

201:                                              ; preds = %197, %191, %184, %181
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %123) #14
  %202 = getelementptr i8, ptr %0, i32 1421
  %203 = load i8, ptr %202, align 1, !range !11
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %297, label %205

205:                                              ; preds = %201
  store i8 0, ptr %202, align 1
  %206 = getelementptr i8, ptr %0, i32 1072
  %207 = load volatile i32, ptr %206, align 4
  %208 = and i32 %207, 1
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %205
  %211 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %206) #14
  br label %212

212:                                              ; preds = %210, %205
  %213 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %214 = load ptr, ptr %6, align 4
  %215 = load ptr, ptr %8, align 8
  %216 = getelementptr inbounds %struct.platform_device, ptr %215, i32 0, i32 3, i32 11, i32 18
  %217 = load i32, ptr %216, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %212
  %220 = getelementptr inbounds %struct.platform_device, ptr %215, i32 0, i32 3, i32 11, i32 15
  %221 = load i16, ptr %220, align 8
  %222 = and i16 %221, 7
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %224, label %225, !prof !15

224:                                              ; preds = %219
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %225

225:                                              ; preds = %224, %219, %212
  %226 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %214, i32 0, i32 5
  %227 = load i32, ptr %226, align 4
  %228 = icmp ugt i32 %227, 58
  br i1 %228, label %232, label %229

229:                                              ; preds = %225
  %230 = load ptr, ptr %8, align 8
  %231 = getelementptr inbounds %struct.platform_device, ptr %230, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %231, ptr noundef nonnull @.str.16, i32 noundef 58) #15
  br label %254

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %214, i32 0, i32 4
  %234 = load ptr, ptr %233, align 8
  %235 = getelementptr %struct.vc4_hdmi_register, ptr %234, i32 58, i32 1
  %236 = load i32, ptr %235, align 4
  %237 = add i32 %236, -1
  %238 = icmp ult i32 %237, 8
  br i1 %238, label %239, label %245

239:                                              ; preds = %232
  %240 = shl i32 %237, 2
  %241 = add i32 %240, 1120
  %242 = getelementptr i8, ptr %0, i32 %241
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %248

245:                                              ; preds = %239, %232
  %246 = load ptr, ptr %8, align 8
  %247 = getelementptr inbounds %struct.platform_device, ptr %246, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %247, ptr noundef nonnull @.str.30, i32 noundef 58) #15
  br label %254

248:                                              ; preds = %239
  %249 = getelementptr %struct.vc4_hdmi_register, ptr %234, i32 58, i32 2
  %250 = load i32, ptr %249, align 4
  %251 = getelementptr i8, ptr %243, i32 %250
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %251) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  %253 = and i32 %252, -2
  br label %254

254:                                              ; preds = %248, %245, %229
  %255 = phi i32 [ 0, %229 ], [ %253, %248 ], [ 0, %245 ]
  %256 = load ptr, ptr %6, align 4
  %257 = load ptr, ptr %8, align 8
  %258 = getelementptr inbounds %struct.platform_device, ptr %257, i32 0, i32 3, i32 11, i32 18
  %259 = load i32, ptr %258, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %267, label %261

261:                                              ; preds = %254
  %262 = getelementptr inbounds %struct.platform_device, ptr %257, i32 0, i32 3, i32 11, i32 15
  %263 = load i16, ptr %262, align 8
  %264 = and i16 %263, 7
  %265 = icmp eq i16 %264, 0
  br i1 %265, label %266, label %267, !prof !15

266:                                              ; preds = %261
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %267

267:                                              ; preds = %266, %261, %254
  %268 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %256, i32 0, i32 5
  %269 = load i32, ptr %268, align 4
  %270 = icmp ugt i32 %269, 58
  br i1 %270, label %274, label %271

271:                                              ; preds = %267
  %272 = load ptr, ptr %8, align 8
  %273 = getelementptr inbounds %struct.platform_device, ptr %272, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %273, ptr noundef nonnull @.str.16, i32 noundef 58) #15
  br label %291

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %256, i32 0, i32 4
  %276 = load ptr, ptr %275, align 8
  %277 = getelementptr %struct.vc4_hdmi_register, ptr %276, i32 58, i32 1
  %278 = load i32, ptr %277, align 4
  %279 = add i32 %278, -1
  %280 = icmp ult i32 %279, 8
  br i1 %280, label %281, label %291

281:                                              ; preds = %274
  %282 = shl i32 %279, 2
  %283 = add i32 %282, 1120
  %284 = getelementptr i8, ptr %0, i32 %283
  %285 = load ptr, ptr %284, align 4
  %286 = icmp eq ptr %285, null
  br i1 %286, label %291, label %287

287:                                              ; preds = %281
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %288 = getelementptr %struct.vc4_hdmi_register, ptr %276, i32 58, i32 2
  %289 = load i32, ptr %288, align 4
  %290 = getelementptr i8, ptr %285, i32 %289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 %255) #14, !srcloc !17
  br label %291

291:                                              ; preds = %287, %281, %274, %271
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %213) #14
  %292 = getelementptr i8, ptr %0, i32 1116
  %293 = load ptr, ptr %292, align 4
  %294 = tail call zeroext i1 @drm_scdc_set_scrambling(ptr noundef %293, i1 noundef zeroext false) #14
  %295 = load ptr, ptr %292, align 4
  %296 = tail call zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef %295, i1 noundef zeroext false) #14
  br label %297

297:                                              ; preds = %291, %201
  tail call void @mutex_unlock(ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_post_crtc_powerdown(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -680
  %4 = getelementptr i8, ptr %0, i32 1288
  tail call void @mutex_lock(ptr noundef %4) #14
  %5 = getelementptr i8, ptr %0, i32 1284
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 11, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 11, i32 15
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 7
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %20, !prof !15

19:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %20

20:                                               ; preds = %19, %14, %2
  %21 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %8, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 80
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %9, align 8
  %26 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.16, i32 noundef 80) #15
  br label %49

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %8, i32 0, i32 4
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr %struct.vc4_hdmi_register, ptr %29, i32 80, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  %33 = icmp ult i32 %32, 8
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = shl i32 %32, 2
  %36 = add i32 %35, 1120
  %37 = getelementptr i8, ptr %0, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %27
  %41 = load ptr, ptr %9, align 8
  %42 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.30, i32 noundef 80) #15
  br label %49

43:                                               ; preds = %34
  %44 = getelementptr %struct.vc4_hdmi_register, ptr %29, i32 80, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i8, ptr %38, i32 %45
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  %48 = or i32 %47, 262144
  br label %49

49:                                               ; preds = %43, %40, %24
  %50 = phi i32 [ 262144, %24 ], [ %48, %43 ], [ 262144, %40 ]
  %51 = load ptr, ptr %7, align 4
  %52 = load ptr, ptr %9, align 8
  %53 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3, i32 11, i32 18
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3, i32 11, i32 15
  %58 = load i16, ptr %57, align 8
  %59 = and i16 %58, 7
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %62, !prof !15

61:                                               ; preds = %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %62

62:                                               ; preds = %61, %56, %49
  %63 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %51, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = icmp ugt i32 %64, 80
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %9, align 8
  %68 = getelementptr inbounds %struct.platform_device, ptr %67, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %68, ptr noundef nonnull @.str.16, i32 noundef 80) #15
  br label %86

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %51, i32 0, i32 4
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr %struct.vc4_hdmi_register, ptr %71, i32 80, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, -1
  %75 = icmp ult i32 %74, 8
  br i1 %75, label %76, label %86

76:                                               ; preds = %69
  %77 = shl i32 %74, 2
  %78 = add i32 %77, 1120
  %79 = getelementptr i8, ptr %0, i32 %78
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %83 = getelementptr %struct.vc4_hdmi_register, ptr %71, i32 80, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr i8, ptr %80, i32 %84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %50) #14, !srcloc !17
  br label %86

86:                                               ; preds = %82, %76, %69, %66
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  %87 = load ptr, ptr %7, align 4
  %88 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %87, i32 0, i32 14
  %89 = load ptr, ptr %88, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  tail call void %89(ptr noundef %3) #14
  br label %92

92:                                               ; preds = %91, %86
  %93 = getelementptr i8, ptr %0, i32 1244
  %94 = load ptr, ptr %93, align 4
  tail call void @clk_disable(ptr noundef %94) #14
  tail call void @clk_unprepare(ptr noundef %94) #14
  %95 = getelementptr i8, ptr %0, i32 1232
  %96 = load ptr, ptr %95, align 8
  tail call void @clk_disable(ptr noundef %96) #14
  tail call void @clk_unprepare(ptr noundef %96) #14
  %97 = load ptr, ptr %9, align 8
  %98 = getelementptr inbounds %struct.platform_device, ptr %97, i32 0, i32 3
  %99 = tail call i32 @__pm_runtime_idle(ptr noundef %98, i32 noundef 5) #14
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29, i32 noundef %99) #14
  br label %102

102:                                              ; preds = %101, %92
  tail call void @mutex_unlock(ptr noundef %4) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_min_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vc4_hdmi, ptr %3, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #14
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = phi i32 [ %6, %1 ], [ %9, %11 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc4_hdmi_read(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 11, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 11, i32 15
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 7
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %16, !prof !15

15:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %16

16:                                               ; preds = %15, %10, %2
  %17 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, %1
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.16, i32 noundef %1) #15
  br label %56

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr %struct.vc4_hdmi_register, ptr %25, i32 %1, i32 1
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %48 [
    i32 2, label %28
    i32 1, label %30
    i32 4, label %32
    i32 3, label %34
    i32 5, label %36
    i32 6, label %38
    i32 7, label %40
    i32 8, label %42
  ]

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %44

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %44

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %44

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %44

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %44

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %44

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %44

42:                                               ; preds = %23
  %43 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %44

44:                                               ; preds = %42, %40, %38, %36, %34, %32, %30, %28
  %45 = phi ptr [ %43, %42 ], [ %41, %40 ], [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ]
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %23
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.30, i32 noundef %1) #15
  br label %56

51:                                               ; preds = %44
  %52 = getelementptr %struct.vc4_hdmi_register, ptr %25, i32 %1, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %46, i32 %53
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %56

56:                                               ; preds = %51, %48, %20
  %57 = phi i32 [ 0, %20 ], [ %55, %51 ], [ 0, %48 ]
  ret i32 %57
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #14
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc4_hdmi_connector_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 4
  %4 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 3
  %5 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %0, ptr noundef %3, ptr noundef nonnull @vc4_hdmi_connector_funcs, i32 noundef 11, ptr noundef %6) #14
  %8 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 4, i32 35
  store ptr @vc4_hdmi_connector_helper_funcs, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 4, i32 21
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_connector_funcs, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call void %12(ptr noundef %3) #14
  br label %15

15:                                               ; preds = %14, %2
  %16 = tail call i32 @drm_mode_create_tv_margin_properties(ptr noundef %0) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = tail call i32 @drm_mode_create_hdmi_colorspace_property(ptr noundef %3) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = tail call i32 @drm_connector_attach_colorspace_property(ptr noundef %3) #14
  tail call void @drm_connector_attach_tv_margin_properties(ptr noundef %3) #14
  %23 = tail call i32 @drm_connector_attach_max_bpc_property(ptr noundef %3, i32 noundef 8, i32 noundef 12) #14
  %24 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 4, i32 33
  store i8 6, ptr %24, align 4
  %25 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 4, i32 12
  store i8 1, ptr %25, align 8
  %26 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 4, i32 13
  store i8 0, ptr %26, align 1
  %27 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %28, i32 0, i32 18
  %30 = load i8, ptr %29, align 8, !range !11
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = tail call i32 @drm_connector_attach_hdr_output_metadata_property(ptr noundef %3) #14
  br label %34

34:                                               ; preds = %32, %21
  %35 = tail call i32 @drm_connector_attach_encoder(ptr noundef %3, ptr noundef %4) #14
  br label %36

36:                                               ; preds = %34, %18, %15
  %37 = phi i32 [ 0, %34 ], [ %16, %15 ], [ %19, %18 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc4_hdmi_hotplug_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 8
  %5 = load i8, ptr %4, align 1, !range !11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @platform_get_irq_byname(ptr noundef %9, ptr noundef nonnull @.str.34) #14
  %11 = tail call i32 @platform_get_irq_byname(ptr noundef %9, ptr noundef nonnull @.str.35) #14
  %12 = tail call i32 @request_threaded_irq(i32 noundef %10, ptr noundef null, ptr noundef nonnull @vc4_hdmi_hpd_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.36, ptr noundef %0) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = tail call i32 @request_threaded_irq(i32 noundef %11, ptr noundef null, ptr noundef nonnull @vc4_hdmi_hpd_irq_thread, i32 noundef 8192, ptr noundef nonnull @.str.37, ptr noundef %0) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %0) #14
  br label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 4, i32 33
  store i8 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %17, %7, %1
  %22 = phi i32 [ 0, %19 ], [ 0, %1 ], [ %12, %7 ], [ %15, %17 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc4_hdmi_audio_init(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.platform_device_info, align 8
  %3 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = tail call ptr @of_find_property(ptr noundef %12, ptr noundef nonnull @.str.38, ptr noundef null) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.39) #15
  br label %104

16:                                               ; preds = %1
  %17 = getelementptr %struct.vc4_hdmi_register, ptr %6, i32 45, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i1, ptr @vc4_hdmi_audio_init.__already_done, align 1
  br i1 %21, label %104, label %22, !prof !21

22:                                               ; preds = %20
  store i1 true, ptr @vc4_hdmi_audio_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1709, i32 noundef 9, ptr noundef nonnull @.str.40) #14
  br label %104

23:                                               ; preds = %16
  %24 = load ptr, ptr %11, align 8
  %25 = tail call i32 @of_property_match_string(ptr noundef %24, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #14
  %26 = icmp slt i32 %25, 0
  %27 = select i1 %26, i32 1, i32 %25
  %28 = load ptr, ptr %11, align 8
  %29 = tail call ptr @__of_get_address(ptr noundef %28, i32 noundef %27, i32 noundef -1, ptr noundef null, ptr noundef null) #14
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #14
  %32 = getelementptr %struct.vc4_hdmi_register, ptr %6, i32 45, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %31, %33
  %35 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 5
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 5, i32 1
  store i32 4, ptr %36, align 4
  %37 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 5, i32 2
  store i32 2, ptr %37, align 8
  %38 = tail call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %10, ptr noundef nonnull @pcm_conf, i32 noundef 0) #14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.43, i32 noundef %38) #15
  br label %104

41:                                               ; preds = %23
  %42 = tail call i32 @devm_snd_soc_register_component(ptr noundef %10, ptr noundef nonnull @vc4_hdmi_audio_cpu_dai_comp, ptr noundef nonnull @vc4_hdmi_audio_cpu_dai_drv, i32 noundef 1) #14
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.44, i32 noundef %42) #15
  br label %104

45:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #14
  %46 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %46, i8 0, i32 48, i1 false) #14, !annotation !8
  store ptr %10, ptr %2, align 8
  %47 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 1
  store ptr null, ptr %47, align 4
  %48 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 3
  store ptr @.str.45, ptr %48, align 4
  %49 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 4
  store i32 -2, ptr %49, align 8
  %50 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 7
  store ptr @vc4_hdmi_codec_pdata, ptr %50, align 4
  %51 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 8
  store i32 16, ptr %51, align 8
  %52 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #14
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = ptrtoint ptr %52 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.46, i32 noundef %55) #15
  br label %104

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 7
  store ptr %52, ptr %57, align 8
  %58 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 2
  %59 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 1, i32 2
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 3
  %61 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 1, i32 4
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 4
  %63 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 1, i32 6
  store ptr %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 1, i32 3
  store i32 1, ptr %64, align 4
  %65 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 1, i32 5
  store i32 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 1, i32 7
  store i32 1, ptr %66, align 4
  store ptr @.str.47, ptr %7, align 4
  %67 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 1, i32 1
  store ptr @.str.48, ptr %67, align 4
  %68 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 3, i32 2
  store ptr @.str.49, ptr %68, align 4
  %69 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = load ptr, ptr %10, align 4
  br label %74

74:                                               ; preds = %72, %56
  %75 = phi ptr [ %73, %72 ], [ %70, %56 ]
  %76 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %0, i32 0, i32 2, i32 2
  store ptr %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  br label %83

83:                                               ; preds = %80, %74
  %84 = phi ptr [ %82, %80 ], [ %78, %74 ]
  store ptr %84, ptr %60, align 4
  %85 = load ptr, ptr %69, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load ptr, ptr %10, align 4
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi ptr [ %88, %87 ], [ %85, %83 ]
  store ptr %90, ptr %62, align 4
  %91 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 25
  store ptr %7, ptr %91, align 4
  %92 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 26
  store i32 1, ptr %92, align 4
  %93 = load ptr, ptr %3, align 4
  %94 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  store ptr %95, ptr %0, align 4
  %96 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 2
  store ptr @.str.50, ptr %96, align 4
  %97 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 6
  store ptr %10, ptr %97, align 4
  %98 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 8
  store ptr @__this_module, ptr %98, align 4
  %99 = getelementptr inbounds %struct.snd_soc_card, ptr %0, i32 0, i32 58
  store ptr %0, ptr %99, align 4
  %100 = call i32 @devm_snd_soc_register_card(ptr noundef %10, ptr noundef %0) #14
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %89
  %103 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %10, i32 noundef %100, ptr noundef nonnull @.str.51) #14
  br label %104

104:                                              ; preds = %102, %89, %54, %44, %40, %22, %20, %15
  %105 = phi i32 [ %38, %40 ], [ %42, %44 ], [ %55, %54 ], [ 0, %15 ], [ -22, %22 ], [ -22, %20 ], [ %100, %102 ], [ 0, %89 ]
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_debugfs_regs(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.drm_printer, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_info_node, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_info_list, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  store ptr @__drm_printfn_seq_file, ptr %3, align 4, !alias.scope !24
  %10 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 1
  store ptr @__drm_puts_seq_file, ptr %10, align 4, !alias.scope !24
  %11 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 2
  store ptr %0, ptr %11, align 4, !alias.scope !24
  %12 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 3
  store ptr null, ptr %12, align 4, !alias.scope !24
  %13 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 28
  call void @drm_print_regset32(ptr noundef nonnull %3, ptr noundef %13) #14
  %14 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 29
  call void @drm_print_regset32(ptr noundef nonnull %3, ptr noundef %14) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_hdmi_hotplug_exit(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %3, i32 0, i32 8
  %5 = load i8, ptr %4, align 1, !range !11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @platform_get_irq_byname(ptr noundef %9, ptr noundef nonnull @.str.34) #14
  %11 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %0) #14
  %12 = tail call i32 @platform_get_irq_byname(ptr noundef %9, ptr noundef nonnull @.str.35) #14
  %13 = tail call ptr @free_irq(i32 noundef %12, ptr noundef %0) #14
  br label %14

14:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_connector_destroy(ptr noundef %0) #0 {
  tail call void @drm_connector_unregister(ptr noundef %0) #14
  tail call void @drm_connector_cleanup(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_scdc_get_scrambling_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_scdc_set_scrambling(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_hdmi_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 15
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 7
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %17, !prof !15

16:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %17

17:                                               ; preds = %16, %11, %3
  %18 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, %1
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.16, i32 noundef %1) #15
  br label %53

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 %1, i32 1
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %53 [
    i32 2, label %29
    i32 1, label %31
    i32 4, label %33
    i32 3, label %35
    i32 5, label %37
    i32 6, label %39
    i32 7, label %41
    i32 8, label %43
  ]

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %45

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %45

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %45

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %45

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %45

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %45

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %45

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %45

45:                                               ; preds = %43, %41, %39, %37, %35, %33, %31, %29
  %46 = phi ptr [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %50 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 %1, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i8, ptr %47, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %2) #14, !srcloc !17
  br label %53

53:                                               ; preds = %49, %45, %24, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_default_rgb_quant_range(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_hdmi_enable_scrambling(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi_encoder, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 4, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %110, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 272
  %7 = load i8, ptr %6, align 8, !range !11
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %110, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 274
  %11 = load i8, ptr %10, align 2, !range !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %110, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 1308
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, 1000
  %17 = icmp sgt i32 %16, 340000000
  br i1 %17, label %18, label %110

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %0, i32 1116
  %20 = load ptr, ptr %19, align 4
  %21 = tail call zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef %20, i1 noundef zeroext true) #14
  %22 = load ptr, ptr %19, align 4
  %23 = tail call zeroext i1 @drm_scdc_set_scrambling(ptr noundef %22, i1 noundef zeroext true) #14
  %24 = getelementptr i8, ptr %0, i32 1284
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #14
  %26 = getelementptr i8, ptr %0, i32 -4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %0, i32 -8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3, i32 11, i32 18
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3, i32 11, i32 15
  %35 = load i16, ptr %34, align 8
  %36 = and i16 %35, 7
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %39, !prof !15

38:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %39

39:                                               ; preds = %38, %33, %18
  %40 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %27, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %41, 58
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %28, align 8
  %45 = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.16, i32 noundef 58) #15
  br label %68

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %27, i32 0, i32 4
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr %struct.vc4_hdmi_register, ptr %48, i32 58, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, -1
  %52 = icmp ult i32 %51, 8
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = shl i32 %51, 2
  %55 = add i32 %54, 1120
  %56 = getelementptr i8, ptr %0, i32 %55
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %53, %46
  %60 = load ptr, ptr %28, align 8
  %61 = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.30, i32 noundef 58) #15
  br label %68

62:                                               ; preds = %53
  %63 = getelementptr %struct.vc4_hdmi_register, ptr %48, i32 58, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i8, ptr %57, i32 %64
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  %67 = or i32 %66, 1
  br label %68

68:                                               ; preds = %62, %59, %43
  %69 = phi i32 [ 1, %43 ], [ %67, %62 ], [ 1, %59 ]
  %70 = load ptr, ptr %26, align 4
  %71 = load ptr, ptr %28, align 8
  %72 = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3, i32 11, i32 18
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3, i32 11, i32 15
  %77 = load i16, ptr %76, align 8
  %78 = and i16 %77, 7
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %81, !prof !15

80:                                               ; preds = %75
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %81

81:                                               ; preds = %80, %75, %68
  %82 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %70, i32 0, i32 5
  %83 = load i32, ptr %82, align 4
  %84 = icmp ugt i32 %83, 58
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %28, align 8
  %87 = getelementptr inbounds %struct.platform_device, ptr %86, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.16, i32 noundef 58) #15
  br label %105

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %70, i32 0, i32 4
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr %struct.vc4_hdmi_register, ptr %90, i32 58, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, -1
  %94 = icmp ult i32 %93, 8
  br i1 %94, label %95, label %105

95:                                               ; preds = %88
  %96 = shl i32 %93, 2
  %97 = add i32 %96, 1120
  %98 = getelementptr i8, ptr %0, i32 %97
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %102 = getelementptr %struct.vc4_hdmi_register, ptr %90, i32 58, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr i8, ptr %99, i32 %103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %69) #14, !srcloc !17
  br label %105

105:                                              ; preds = %101, %95, %88, %85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #14
  %106 = getelementptr i8, ptr %0, i32 1421
  store i8 1, ptr %106, align 1
  %107 = load ptr, ptr @system_wq, align 4
  %108 = getelementptr i8, ptr %0, i32 1072
  %109 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %107, ptr noundef %108, i32 noundef 100) #14
  br label %110

110:                                              ; preds = %105, %13, %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_hdmi_avi_infoframe_quant_range(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_hdmi_avi_infoframe_colorspace(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_hdmi_avi_infoframe_bars(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_hdmi_write_infoframe(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [36 x i8], align 1
  %4 = load i32, ptr %1, align 4
  %5 = add i32 %4, -128
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr %struct.vc4_hdmi_register, ptr %9, i32 52, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %5, 36
  %13 = add i32 %11, %12
  %14 = getelementptr %struct.vc4_hdmi_register, ptr %9, i32 52, i32 1
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %40 [
    i32 2, label %16
    i32 1, label %19
    i32 4, label %22
    i32 3, label %25
    i32 5, label %28
    i32 6, label %31
    i32 7, label %34
    i32 8, label %37
  ]

16:                                               ; preds = %2
  %17 = getelementptr i8, ptr %0, i32 1124
  %18 = load ptr, ptr %17, align 4
  br label %40

19:                                               ; preds = %2
  %20 = getelementptr i8, ptr %0, i32 1120
  %21 = load ptr, ptr %20, align 8
  br label %40

22:                                               ; preds = %2
  %23 = getelementptr i8, ptr %0, i32 1132
  %24 = load ptr, ptr %23, align 4
  br label %40

25:                                               ; preds = %2
  %26 = getelementptr i8, ptr %0, i32 1128
  %27 = load ptr, ptr %26, align 8
  br label %40

28:                                               ; preds = %2
  %29 = getelementptr i8, ptr %0, i32 1136
  %30 = load ptr, ptr %29, align 8
  br label %40

31:                                               ; preds = %2
  %32 = getelementptr i8, ptr %0, i32 1140
  %33 = load ptr, ptr %32, align 4
  br label %40

34:                                               ; preds = %2
  %35 = getelementptr i8, ptr %0, i32 1144
  %36 = load ptr, ptr %35, align 8
  br label %40

37:                                               ; preds = %2
  %38 = getelementptr i8, ptr %0, i32 1148
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %34, %31, %28, %25, %22, %19, %16, %2
  %41 = phi ptr [ %39, %37 ], [ %36, %34 ], [ %33, %31 ], [ %30, %28 ], [ %27, %25 ], [ %24, %22 ], [ %21, %19 ], [ %18, %16 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(36) %3, i8 0, i32 36, i1 false), !annotation !8
  %42 = getelementptr i8, ptr %0, i32 -8
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3, i32 11, i32 18
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3, i32 11, i32 15
  %49 = load i16, ptr %48, align 8
  %50 = and i16 %49, 7
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %53, !prof !15

52:                                               ; preds = %47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %53

53:                                               ; preds = %52, %47, %40
  %54 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %7, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp ugt i32 %55, 51
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %42, align 8
  %59 = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.16, i32 noundef 51) #15
  br label %82

60:                                               ; preds = %53
  %61 = load ptr, ptr %8, align 8
  %62 = getelementptr %struct.vc4_hdmi_register, ptr %61, i32 51, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, -1
  %65 = icmp ult i32 %64, 8
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = shl i32 %64, 2
  %68 = add i32 %67, 1120
  %69 = getelementptr i8, ptr %0, i32 %68
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %66, %60
  %73 = load ptr, ptr %42, align 8
  %74 = getelementptr inbounds %struct.platform_device, ptr %73, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.30, i32 noundef 51) #15
  br label %82

75:                                               ; preds = %66
  %76 = getelementptr %struct.vc4_hdmi_register, ptr %61, i32 51, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr i8, ptr %70, i32 %77
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  %80 = and i32 %79, 65536
  %81 = icmp eq i32 %80, 0
  br label %82

82:                                               ; preds = %75, %72, %57
  %83 = phi i1 [ true, %57 ], [ %81, %75 ], [ true, %72 ]
  %84 = load i1, ptr @vc4_hdmi_write_infoframe.__already_done, align 1
  %85 = xor i1 %84, true
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %88, !prof !15

87:                                               ; preds = %82
  store i1 true, ptr @vc4_hdmi_write_infoframe.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 435, i32 noundef 9, ptr noundef nonnull @.str.22) #14
  br label %88

88:                                               ; preds = %87, %82
  %89 = call i32 @hdmi_infoframe_pack(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 36) #14
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %293, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr %1, align 4
  %93 = call fastcc i32 @vc4_hdmi_stop_packet(ptr noundef %0, i32 noundef %92, i1 noundef zeroext true)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %93) #14
  br label %293

96:                                               ; preds = %91
  %97 = getelementptr i8, ptr %0, i32 1284
  %98 = call i32 @_raw_spin_lock_irqsave(ptr noundef %97) #14
  %99 = icmp eq i32 %89, 0
  br i1 %99, label %146, label %100

100:                                              ; preds = %100, %96
  %101 = phi i32 [ %143, %100 ], [ %13, %96 ]
  %102 = phi i32 [ %144, %100 ], [ 0, %96 ]
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !27
  call void @arm_heavy_mb() #14
  %103 = getelementptr [36 x i8], ptr %3, i32 0, i32 %102
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = add nsw i32 %102, 1
  %107 = getelementptr [36 x i8], ptr %3, i32 0, i32 %106
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 8
  %111 = or i32 %110, %105
  %112 = add i32 %102, 2
  %113 = getelementptr [36 x i8], ptr %3, i32 0, i32 %112
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = shl nuw nsw i32 %115, 16
  %117 = or i32 %111, %116
  %118 = getelementptr i8, ptr %41, i32 %101
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %117) #14, !srcloc !17
  %119 = add i32 %101, 4
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !28
  call void @arm_heavy_mb() #14
  %120 = add i32 %102, 3
  %121 = getelementptr [36 x i8], ptr %3, i32 0, i32 %120
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = add i32 %102, 4
  %125 = getelementptr [36 x i8], ptr %3, i32 0, i32 %124
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = shl nuw nsw i32 %127, 8
  %129 = or i32 %128, %123
  %130 = add i32 %102, 5
  %131 = getelementptr [36 x i8], ptr %3, i32 0, i32 %130
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = shl nuw nsw i32 %133, 16
  %135 = or i32 %129, %134
  %136 = add i32 %102, 6
  %137 = getelementptr [36 x i8], ptr %3, i32 0, i32 %136
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = shl nuw i32 %139, 24
  %141 = or i32 %135, %140
  %142 = getelementptr i8, ptr %41, i32 %119
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %141) #14, !srcloc !17
  %143 = add i32 %101, 8
  %144 = add i32 %102, 7
  %145 = icmp slt i32 %144, %89
  br i1 %145, label %100, label %146

146:                                              ; preds = %100, %96
  %147 = load ptr, ptr %6, align 4
  %148 = load ptr, ptr %42, align 8
  %149 = getelementptr inbounds %struct.platform_device, ptr %148, i32 0, i32 3, i32 11, i32 18
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.platform_device, ptr %148, i32 0, i32 3, i32 11, i32 15
  %154 = load i16, ptr %153, align 8
  %155 = and i16 %154, 7
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %157, label %158, !prof !15

157:                                              ; preds = %152
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %158

158:                                              ; preds = %157, %152, %146
  %159 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %147, i32 0, i32 5
  %160 = load i32, ptr %159, align 4
  %161 = icmp ugt i32 %160, 51
  br i1 %161, label %165, label %162

162:                                              ; preds = %158
  %163 = load ptr, ptr %42, align 8
  %164 = getelementptr inbounds %struct.platform_device, ptr %163, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %164, ptr noundef nonnull @.str.16, i32 noundef 51) #15
  br label %186

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %147, i32 0, i32 4
  %167 = load ptr, ptr %166, align 8
  %168 = getelementptr %struct.vc4_hdmi_register, ptr %167, i32 51, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = add i32 %169, -1
  %171 = icmp ult i32 %170, 8
  br i1 %171, label %172, label %178

172:                                              ; preds = %165
  %173 = shl i32 %170, 2
  %174 = add i32 %173, 1120
  %175 = getelementptr i8, ptr %0, i32 %174
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %172, %165
  %179 = load ptr, ptr %42, align 8
  %180 = getelementptr inbounds %struct.platform_device, ptr %179, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %180, ptr noundef nonnull @.str.30, i32 noundef 51) #15
  br label %186

181:                                              ; preds = %172
  %182 = getelementptr %struct.vc4_hdmi_register, ptr %167, i32 51, i32 2
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr i8, ptr %176, i32 %183
  %185 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %184) #14, !srcloc !18
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %186

186:                                              ; preds = %181, %178, %162
  %187 = phi i32 [ 0, %162 ], [ %185, %181 ], [ 0, %178 ]
  %188 = shl nuw i32 1, %5
  %189 = or i32 %187, %188
  %190 = load ptr, ptr %6, align 4
  %191 = load ptr, ptr %42, align 8
  %192 = getelementptr inbounds %struct.platform_device, ptr %191, i32 0, i32 3, i32 11, i32 18
  %193 = load i32, ptr %192, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.platform_device, ptr %191, i32 0, i32 3, i32 11, i32 15
  %197 = load i16, ptr %196, align 8
  %198 = and i16 %197, 7
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %200, label %201, !prof !15

200:                                              ; preds = %195
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %201

201:                                              ; preds = %200, %195, %186
  %202 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %190, i32 0, i32 5
  %203 = load i32, ptr %202, align 4
  %204 = icmp ugt i32 %203, 51
  br i1 %204, label %208, label %205

205:                                              ; preds = %201
  %206 = load ptr, ptr %42, align 8
  %207 = getelementptr inbounds %struct.platform_device, ptr %206, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %207, ptr noundef nonnull @.str.16, i32 noundef 51) #15
  br label %225

208:                                              ; preds = %201
  %209 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %190, i32 0, i32 4
  %210 = load ptr, ptr %209, align 8
  %211 = getelementptr %struct.vc4_hdmi_register, ptr %210, i32 51, i32 1
  %212 = load i32, ptr %211, align 4
  %213 = add i32 %212, -1
  %214 = icmp ult i32 %213, 8
  br i1 %214, label %215, label %225

215:                                              ; preds = %208
  %216 = shl i32 %213, 2
  %217 = add i32 %216, 1120
  %218 = getelementptr i8, ptr %0, i32 %217
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %225, label %221

221:                                              ; preds = %215
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  call void @arm_heavy_mb() #14
  %222 = getelementptr %struct.vc4_hdmi_register, ptr %210, i32 51, i32 2
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr i8, ptr %219, i32 %223
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %189) #14, !srcloc !17
  br label %225

225:                                              ; preds = %221, %215, %208, %205
  call void @_raw_spin_unlock_irqrestore(ptr noundef %97, i32 noundef %98) #14
  %226 = call i64 @ktime_get_raw() #14
  %227 = add i64 %226, 100000000
  %228 = getelementptr i8, ptr %0, i32 1148
  %229 = getelementptr i8, ptr %0, i32 1144
  %230 = getelementptr i8, ptr %0, i32 1140
  %231 = getelementptr i8, ptr %0, i32 1136
  %232 = getelementptr i8, ptr %0, i32 1128
  %233 = getelementptr i8, ptr %0, i32 1132
  %234 = getelementptr i8, ptr %0, i32 1120
  %235 = getelementptr i8, ptr %0, i32 1124
  br label %236

236:                                              ; preds = %287, %225
  %237 = phi i32 [ 10, %225 ], [ %290, %287 ]
  %238 = call i64 @ktime_get_raw() #14
  %239 = icmp sgt i64 %238, %227
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  %240 = load ptr, ptr %6, align 4
  %241 = load ptr, ptr %42, align 8
  %242 = getelementptr inbounds %struct.platform_device, ptr %241, i32 0, i32 3, i32 11, i32 18
  %243 = load i32, ptr %242, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %236
  %246 = getelementptr inbounds %struct.platform_device, ptr %241, i32 0, i32 3, i32 11, i32 15
  %247 = load i16, ptr %246, align 8
  %248 = and i16 %247, 7
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %250, label %251, !prof !15

250:                                              ; preds = %245
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %251

251:                                              ; preds = %250, %245, %236
  %252 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %240, i32 0, i32 5
  %253 = load i32, ptr %252, align 4
  %254 = icmp ugt i32 %253, 53
  br i1 %254, label %258, label %255

255:                                              ; preds = %251
  %256 = load ptr, ptr %42, align 8
  %257 = getelementptr inbounds %struct.platform_device, ptr %256, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %257, ptr noundef nonnull @.str.16, i32 noundef 53) #15
  br label %282

258:                                              ; preds = %251
  %259 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %240, i32 0, i32 4
  %260 = load ptr, ptr %259, align 8
  %261 = getelementptr %struct.vc4_hdmi_register, ptr %260, i32 53, i32 1
  %262 = load i32, ptr %261, align 4
  switch i32 %262, label %274 [
    i32 2, label %270
    i32 1, label %263
    i32 4, label %264
    i32 3, label %265
    i32 5, label %266
    i32 6, label %267
    i32 7, label %268
    i32 8, label %269
  ]

263:                                              ; preds = %258
  br label %270

264:                                              ; preds = %258
  br label %270

265:                                              ; preds = %258
  br label %270

266:                                              ; preds = %258
  br label %270

267:                                              ; preds = %258
  br label %270

268:                                              ; preds = %258
  br label %270

269:                                              ; preds = %258
  br label %270

270:                                              ; preds = %269, %268, %267, %266, %265, %264, %263, %258
  %271 = phi ptr [ %228, %269 ], [ %229, %268 ], [ %230, %267 ], [ %231, %266 ], [ %232, %265 ], [ %233, %264 ], [ %234, %263 ], [ %235, %258 ]
  %272 = load ptr, ptr %271, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %277

274:                                              ; preds = %270, %258
  %275 = load ptr, ptr %42, align 8
  %276 = getelementptr inbounds %struct.platform_device, ptr %275, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %276, ptr noundef nonnull @.str.30, i32 noundef 53) #15
  br label %282

277:                                              ; preds = %270
  %278 = getelementptr %struct.vc4_hdmi_register, ptr %260, i32 53, i32 2
  %279 = load i32, ptr %278, align 4
  %280 = getelementptr i8, ptr %272, i32 %279
  %281 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %280) #14, !srcloc !18
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %282

282:                                              ; preds = %277, %274, %255
  %283 = phi i32 [ 0, %255 ], [ %281, %277 ], [ 0, %274 ]
  %284 = and i32 %283, %188
  %285 = icmp ne i32 %284, 0
  %286 = select i1 %285, i1 true, i1 %239
  br i1 %286, label %291, label %287

287:                                              ; preds = %282
  %288 = shl i32 %237, 1
  call void @usleep_range_state(i32 noundef %237, i32 noundef %288, i32 noundef 2) #14
  %289 = icmp slt i32 %237, 1000
  %290 = select i1 %289, i32 %288, i32 %237
  br label %236

291:                                              ; preds = %282
  br i1 %285, label %293, label %292

292:                                              ; preds = %291
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24, i32 noundef -110) #14
  br label %293

293:                                              ; preds = %292, %291, %95, %88
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vc4_hdmi_stop_packet(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = add i32 %1, -128
  %5 = getelementptr i8, ptr %0, i32 1284
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 11, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 11, i32 15
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 7
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %20, !prof !15

19:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %20

20:                                               ; preds = %19, %14, %3
  %21 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %8, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 51
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %9, align 8
  %26 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.16, i32 noundef 51) #15
  br label %48

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %8, i32 0, i32 4
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr %struct.vc4_hdmi_register, ptr %29, i32 51, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  %33 = icmp ult i32 %32, 8
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = shl i32 %32, 2
  %36 = add i32 %35, 1120
  %37 = getelementptr i8, ptr %0, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %27
  %41 = load ptr, ptr %9, align 8
  %42 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.30, i32 noundef 51) #15
  br label %48

43:                                               ; preds = %34
  %44 = getelementptr %struct.vc4_hdmi_register, ptr %29, i32 51, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i8, ptr %38, i32 %45
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %48

48:                                               ; preds = %43, %40, %24
  %49 = phi i32 [ 0, %24 ], [ %47, %43 ], [ 0, %40 ]
  %50 = shl nuw i32 1, %4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = load ptr, ptr %7, align 4
  %54 = load ptr, ptr %9, align 8
  %55 = getelementptr inbounds %struct.platform_device, ptr %54, i32 0, i32 3, i32 11, i32 18
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.platform_device, ptr %54, i32 0, i32 3, i32 11, i32 15
  %60 = load i16, ptr %59, align 8
  %61 = and i16 %60, 7
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %64, !prof !15

63:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %64

64:                                               ; preds = %63, %58, %48
  %65 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %53, i32 0, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = icmp ugt i32 %66, 51
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %9, align 8
  %70 = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.16, i32 noundef 51) #15
  br label %88

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %53, i32 0, i32 4
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr %struct.vc4_hdmi_register, ptr %73, i32 51, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, -1
  %77 = icmp ult i32 %76, 8
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = shl i32 %76, 2
  %80 = add i32 %79, 1120
  %81 = getelementptr i8, ptr %0, i32 %80
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %85 = getelementptr %struct.vc4_hdmi_register, ptr %73, i32 51, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr i8, ptr %82, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %52) #14, !srcloc !17
  br label %88

88:                                               ; preds = %84, %78, %71, %68
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  br i1 %2, label %89, label %157

89:                                               ; preds = %88
  %90 = tail call i64 @ktime_get_raw() #14
  %91 = add i64 %90, 100000000
  %92 = getelementptr i8, ptr %0, i32 1148
  %93 = getelementptr i8, ptr %0, i32 1144
  %94 = getelementptr i8, ptr %0, i32 1140
  %95 = getelementptr i8, ptr %0, i32 1136
  %96 = getelementptr i8, ptr %0, i32 1128
  %97 = getelementptr i8, ptr %0, i32 1132
  %98 = getelementptr i8, ptr %0, i32 1120
  %99 = getelementptr i8, ptr %0, i32 1124
  br label %100

100:                                              ; preds = %151, %89
  %101 = phi i32 [ 10, %89 ], [ %154, %151 ]
  %102 = tail call i64 @ktime_get_raw() #14
  %103 = icmp sgt i64 %102, %91
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !30
  %104 = load ptr, ptr %7, align 4
  %105 = load ptr, ptr %9, align 8
  %106 = getelementptr inbounds %struct.platform_device, ptr %105, i32 0, i32 3, i32 11, i32 18
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.platform_device, ptr %105, i32 0, i32 3, i32 11, i32 15
  %111 = load i16, ptr %110, align 8
  %112 = and i16 %111, 7
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %115, !prof !15

114:                                              ; preds = %109
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %115

115:                                              ; preds = %114, %109, %100
  %116 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %104, i32 0, i32 5
  %117 = load i32, ptr %116, align 4
  %118 = icmp ugt i32 %117, 53
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %9, align 8
  %121 = getelementptr inbounds %struct.platform_device, ptr %120, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %121, ptr noundef nonnull @.str.16, i32 noundef 53) #15
  br label %146

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %104, i32 0, i32 4
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr %struct.vc4_hdmi_register, ptr %124, i32 53, i32 1
  %126 = load i32, ptr %125, align 4
  switch i32 %126, label %138 [
    i32 2, label %134
    i32 1, label %127
    i32 4, label %128
    i32 3, label %129
    i32 5, label %130
    i32 6, label %131
    i32 7, label %132
    i32 8, label %133
  ]

127:                                              ; preds = %122
  br label %134

128:                                              ; preds = %122
  br label %134

129:                                              ; preds = %122
  br label %134

130:                                              ; preds = %122
  br label %134

131:                                              ; preds = %122
  br label %134

132:                                              ; preds = %122
  br label %134

133:                                              ; preds = %122
  br label %134

134:                                              ; preds = %133, %132, %131, %130, %129, %128, %127, %122
  %135 = phi ptr [ %92, %133 ], [ %93, %132 ], [ %94, %131 ], [ %95, %130 ], [ %96, %129 ], [ %97, %128 ], [ %98, %127 ], [ %99, %122 ]
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %134, %122
  %139 = load ptr, ptr %9, align 8
  %140 = getelementptr inbounds %struct.platform_device, ptr %139, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %140, ptr noundef nonnull @.str.30, i32 noundef 53) #15
  br label %146

141:                                              ; preds = %134
  %142 = getelementptr %struct.vc4_hdmi_register, ptr %124, i32 53, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr i8, ptr %136, i32 %143
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %146

146:                                              ; preds = %141, %138, %119
  %147 = phi i32 [ 0, %119 ], [ %145, %141 ], [ 0, %138 ]
  %148 = and i32 %147, %50
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, i1 true, i1 %103
  br i1 %150, label %155, label %151

151:                                              ; preds = %146
  %152 = shl i32 %101, 1
  tail call void @usleep_range_state(i32 noundef %101, i32 noundef %152, i32 noundef 2) #14
  %153 = icmp slt i32 %101, 1000
  %154 = select i1 %153, i32 %152, i32 %101
  br label %100

155:                                              ; preds = %146
  %156 = select i1 %149, i32 0, i32 -110
  br label %157

157:                                              ; preds = %155, %88
  %158 = phi i32 [ 0, %88 ], [ %156, %155 ]
  ret i32 %158
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_spd_infoframe_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_infoframe_set_hdr_metadata(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @vc4_hdmi_encoder_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 7
  %6 = load i8, ptr %5, align 8, !range !11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 4096
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 2
  %20 = load i16, ptr %19, align 2
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 3
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 4
  %30 = load i16, ptr %29, align 2
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28, %8, %2
  %34 = load i32, ptr %1, align 4
  %35 = mul i32 %34, 1000
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %4, i32 0, i32 3
  %38 = load i64, ptr %37, align 8
  %39 = icmp ult i64 %38, %36
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = getelementptr i8, ptr %0, i32 1157
  %42 = load i8, ptr %41, align 1, !range !11
  %43 = icmp ne i8 %42, 0
  %44 = icmp sgt i32 %35, 340000000
  %45 = select i1 %43, i1 %44, i1 false
  %46 = select i1 %45, i32 15, i32 0
  br label %47

47:                                               ; preds = %40, %33, %28, %23, %18, %13
  %48 = phi i32 [ 3, %28 ], [ 3, %23 ], [ 3, %18 ], [ 3, %13 ], [ 15, %33 ], [ %46, %40 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_atomic_mode_set(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1288
  tail call void @mutex_lock(ptr noundef %4) #14
  %5 = getelementptr i8, ptr %0, i32 1308
  %6 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(112) %5, ptr noundef align 4 dereferenceable(112) %6, i32 112, i1 false)
  tail call void @mutex_unlock(ptr noundef %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_disable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1288
  tail call void @mutex_lock(ptr noundef %2) #14
  %3 = getelementptr i8, ptr %0, i32 1420
  store i8 0, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_encoder_enable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1288
  tail call void @mutex_lock(ptr noundef %2) #14
  %3 = getelementptr i8, ptr %0, i32 1420
  store i8 1, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_encoder_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, 1000
  %7 = sext i32 %6 to i64
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %9, i32 0, i32 7
  %11 = load i8, ptr %10, align 8, !range !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 4096
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %88

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 2
  %25 = load i16, ptr %24, align 2
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %88

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 3
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %88

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 4
  %35 = load i16, ptr %34, align 2
  %36 = and i16 %35, 1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %88

38:                                               ; preds = %33, %13, %3
  %39 = mul nsw i64 %7, 10
  %40 = getelementptr i8, ptr %0, i32 1156
  %41 = load i8, ptr %40, align 4, !range !11
  %42 = icmp ne i8 %41, 0
  %43 = icmp ugt i64 %39, 2399999999
  %44 = select i1 %42, i1 %43, i1 false
  %45 = icmp ult i64 %39, 2422000001
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 238560, ptr %4, align 4
  br label %48

48:                                               ; preds = %47, %38
  %49 = phi i64 [ 238560000, %47 ], [ %7, %38 ]
  %50 = getelementptr inbounds %struct.drm_connector_state, ptr %2, i32 0, i32 16
  %51 = load i8, ptr %50, align 1
  switch i8 %51, label %68 [
    i8 12, label %52
    i8 10, label %60
  ]

52:                                               ; preds = %48
  %53 = mul nsw i64 %49, 150
  %54 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %53, i32 0) #16, !srcloc !31
  %55 = extractvalue { i64, i32 } %54, 0
  %56 = extractvalue { i64, i32 } %54, 1
  %57 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %53, i64 %55, i32 %56) #16, !srcloc !32
  %58 = extractvalue { i64, i32 } %57, 0
  %59 = lshr i64 %58, 6
  br label %68

60:                                               ; preds = %48
  %61 = mul nsw i64 %49, 125
  %62 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %61, i32 0) #16, !srcloc !31
  %63 = extractvalue { i64, i32 } %62, 0
  %64 = extractvalue { i64, i32 } %62, 1
  %65 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %61, i64 %63, i32 %64) #16, !srcloc !32
  %66 = extractvalue { i64, i32 } %65, 0
  %67 = lshr i64 %66, 6
  br label %68

68:                                               ; preds = %60, %52, %48
  %69 = phi i64 [ %59, %52 ], [ %67, %60 ], [ %49, %48 ]
  %70 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 11
  %71 = load i32, ptr %70, align 4
  %72 = lshr i32 %71, 12
  %73 = and i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = shl nsw i64 %69, %74
  %76 = load ptr, ptr %8, align 4
  %77 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %76, i32 0, i32 3
  %78 = load i64, ptr %77, align 8
  %79 = icmp ugt i64 %75, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %68
  %81 = getelementptr i8, ptr %0, i32 1157
  %82 = load i8, ptr %81, align 1, !range !11
  %83 = icmp ne i8 %82, 0
  %84 = icmp ugt i64 %75, 340000000
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.vc4_hdmi_connector_state, ptr %2, i32 0, i32 1
  store i64 %75, ptr %87, align 8
  br label %88

88:                                               ; preds = %86, %80, %68, %33, %28, %23, %18
  %89 = phi i32 [ 0, %86 ], [ -22, %33 ], [ -22, %28 ], [ -22, %23 ], [ -22, %18 ], [ -22, %68 ], [ -22, %80 ]
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_tv_margin_properties(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_hdmi_colorspace_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_colorspace_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_attach_tv_margin_properties(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_max_bpc_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_hdr_output_metadata_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_connector_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 52
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 128) #17
  %6 = load ptr, ptr %2, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @__drm_atomic_helper_connector_destroy_state(ptr noundef nonnull %6) #14
  br label %9

9:                                                ; preds = %8, %1
  tail call void @kfree(ptr noundef %3) #14
  tail call void @__drm_atomic_helper_connector_reset(ptr noundef %0, ptr noundef %5) #14
  %10 = icmp eq ptr %5, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.drm_connector_state, ptr %5, i32 0, i32 16
  store i8 8, ptr %12, align 1
  %13 = getelementptr inbounds %struct.drm_connector_state, ptr %5, i32 0, i32 15
  store i8 8, ptr %13, align 8
  tail call void @drm_atomic_helper_connector_tv_reset(ptr noundef %0) #14
  br label %14

14:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_connector_detect(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -784
  %4 = getelementptr i8, ptr %0, i32 1184
  tail call void @mutex_lock(ptr noundef %4) #14
  %5 = getelementptr i8, ptr %0, i32 -112
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #14
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #14, !srcloc !9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #14, !srcloc !13
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  br label %16

16:                                               ; preds = %15, %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 193, i32 noundef 9, ptr noundef null) #14
  br label %17

17:                                               ; preds = %16, %2
  %18 = getelementptr i8, ptr %0, i32 1048
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %19) #14
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %49, label %32

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %0, i32 -108
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %26, i32 0, i32 19
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %49, label %30

30:                                               ; preds = %24
  %31 = tail call zeroext i1 %28(ptr noundef %3) #14
  br i1 %31, label %32, label %49

32:                                               ; preds = %30, %21
  %33 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 18
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %0, i32 1012
  %38 = load ptr, ptr %37, align 4
  %39 = tail call ptr @drm_get_edid(ptr noundef %0, ptr noundef %38) #14
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %0, i32 1056
  %43 = load ptr, ptr %42, align 8
  tail call void @cec_s_phys_addr_from_edid(ptr noundef %43, ptr noundef nonnull %39) #14
  %44 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef nonnull %39) #14
  %45 = getelementptr i8, ptr %0, i32 -4
  %46 = zext i1 %44 to i8
  store i8 %46, ptr %45, align 4
  tail call void @kfree(ptr noundef nonnull %39) #14
  br label %47

47:                                               ; preds = %41, %36, %32
  %48 = getelementptr i8, ptr %0, i32 -104
  tail call fastcc void @vc4_hdmi_enable_scrambling(ptr noundef %48)
  br label %52

49:                                               ; preds = %30, %24, %21
  %50 = getelementptr i8, ptr %0, i32 1056
  %51 = load ptr, ptr %50, align 8
  tail call void @cec_s_phys_addr(ptr noundef %51, i16 noundef zeroext -1, i1 noundef zeroext false) #14
  br label %52

52:                                               ; preds = %49, %47
  %53 = phi i32 [ 1, %47 ], [ 2, %49 ]
  %54 = load ptr, ptr %5, align 8
  %55 = getelementptr inbounds %struct.platform_device, ptr %54, i32 0, i32 3
  %56 = tail call i32 @__pm_runtime_idle(ptr noundef %55, i32 noundef 5) #14
  tail call void @mutex_unlock(ptr noundef %4) #14
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vc4_hdmi_connector_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 52
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 128) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vc4_hdmi_connector_state, ptr %3, i32 0, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.vc4_hdmi_connector_state, ptr %5, i32 0, i32 1
  store i64 %9, ptr %10, align 8
  tail call void @__drm_atomic_helper_connector_duplicate_state(ptr noundef %0, ptr noundef nonnull %5) #14
  br label %11

11:                                               ; preds = %7, %1
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_destroy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_tv_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr_from_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_connector_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1184
  tail call void @mutex_lock(ptr noundef %2) #14
  %3 = getelementptr i8, ptr %0, i32 1012
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @drm_get_edid(ptr noundef %0, ptr noundef %4) #14
  %6 = getelementptr i8, ptr %0, i32 1056
  %7 = load ptr, ptr %6, align 8
  tail call void @cec_s_phys_addr_from_edid(ptr noundef %7, ptr noundef %5) #14
  %8 = icmp eq ptr %5, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %1
  %10 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef nonnull %5) #14
  %11 = getelementptr i8, ptr %0, i32 -4
  %12 = zext i1 %10 to i8
  store i8 %12, ptr %11, align 4
  %13 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef nonnull %5) #14
  %14 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef nonnull %5) #14
  tail call void @kfree(ptr noundef nonnull %5) #14
  %15 = getelementptr i8, ptr %0, i32 1053
  %16 = load i8, ptr %15, align 1, !range !11
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %42, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 2
  br label %25

25:                                               ; preds = %39, %22
  %26 = phi ptr [ %20, %22 ], [ %40, %39 ]
  %27 = getelementptr i8, ptr %26, i32 -64
  %28 = load i32, ptr %27, align 4
  %29 = mul i32 %28, 1000
  %30 = icmp sgt i32 %29, 340000000
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i1, ptr @vc4_hdmi_connector_get_modes.__print_once, align 1
  br i1 %32, label %35, label %33

33:                                               ; preds = %31
  store i1 true, ptr @vc4_hdmi_connector_get_modes.__print_once, align 1
  %34 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.31) #15
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i1, ptr @vc4_hdmi_connector_get_modes.__print_once.32, align 1
  br i1 %36, label %39, label %37

37:                                               ; preds = %35
  store i1 true, ptr @vc4_hdmi_connector_get_modes.__print_once.32, align 1
  %38 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.33) #15
  br label %39

39:                                               ; preds = %37, %35, %25
  %40 = load ptr, ptr %26, align 4
  %41 = icmp eq ptr %40, %19
  br i1 %41, label %42, label %25

42:                                               ; preds = %39, %18, %9, %1
  %43 = phi i32 [ %14, %9 ], [ -19, %1 ], [ %14, %18 ], [ %14, %39 ]
  tail call void @mutex_unlock(ptr noundef %2) #14
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_connector_atomic_check(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.__drm_connnectors_state, ptr %10, i32 %4, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.__drm_connnectors_state, ptr %10, i32 %4, i32 3
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi ptr [ %12, %8 ], [ null, %2 ]
  %17 = phi ptr [ %14, %8 ], [ null, %2 ]
  %18 = getelementptr inbounds %struct.drm_connector_state, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.drm_connector_state, ptr %16, i32 0, i32 13
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_connector_state, ptr %17, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = tail call zeroext i1 @drm_connector_atomic_hdr_metadata_equal(ptr noundef %16, ptr noundef %17) #14
  br i1 %28, label %38, label %29

29:                                               ; preds = %27, %21
  %30 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %1, ptr noundef nonnull %19) #14
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = ptrtoint ptr %30 to i32
  br label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.drm_crtc_state, ptr %30, i32 0, i32 3
  %36 = load i8, ptr %35, align 2
  %37 = or i8 %36, 2
  store i8 %37, ptr %35, align 2
  br label %38

38:                                               ; preds = %34, %32, %27, %15
  %39 = phi i32 [ 0, %15 ], [ %33, %32 ], [ 0, %34 ], [ 0, %27 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_connector_atomic_hdr_metadata_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_hpd_irq_thread(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vc4_hdmi, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 8
  %8 = load i8, ptr %7, align 4, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call zeroext i1 @drm_connector_helper_hpd_irq_event(ptr noundef %3) #14
  br label %12

12:                                               ; preds = %10, %6, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_connector_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vc4_hdmi_audio_cpu_dai_probe(ptr nocapture noundef %0) #11 {
  %2 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 58
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 7
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.snd_soc_dai, ptr %0, i32 0, i32 8
  store ptr null, ptr %10, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_audio_startup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %5) #14
  %6 = tail call fastcc zeroext i1 @vc4_hdmi_audio_can_stream(ptr noundef %4)
  br i1 %6, label %7, label %66

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %4, i32 0, i32 8
  store i8 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 30
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #14
  %11 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 11, i32 18
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 11, i32 15
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 7
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %24, !prof !15

23:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %24

24:                                               ; preds = %23, %18, %7
  %25 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %12, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 44
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %13, align 8
  %30 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.16, i32 noundef 44) #15
  br label %60

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %12, i32 0, i32 4
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr %struct.vc4_hdmi_register, ptr %33, i32 44, i32 1
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %60 [
    i32 2, label %36
    i32 1, label %38
    i32 4, label %40
    i32 3, label %42
    i32 5, label %44
    i32 6, label %46
    i32 7, label %48
    i32 8, label %50
  ]

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 8
  br label %52

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 7
  br label %52

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 10
  br label %52

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 9
  br label %52

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 11
  br label %52

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 12
  br label %52

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 13
  br label %52

50:                                               ; preds = %31
  %51 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 14
  br label %52

52:                                               ; preds = %50, %48, %46, %44, %42, %40, %38, %36
  %53 = phi ptr [ %51, %50 ], [ %49, %48 ], [ %47, %46 ], [ %45, %44 ], [ %43, %42 ], [ %41, %40 ], [ %39, %38 ], [ %37, %36 ]
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %57 = getelementptr %struct.vc4_hdmi_register, ptr %33, i32 44, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i8, ptr %54, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 33287) #14, !srcloc !17
  br label %60

60:                                               ; preds = %56, %52, %31, %28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #14
  %61 = load ptr, ptr %11, align 4
  %62 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %61, i32 0, i32 15
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  tail call void %63(ptr noundef %4) #14
  br label %66

66:                                               ; preds = %65, %60, %2
  %67 = phi i32 [ -19, %2 ], [ 0, %65 ], [ 0, %60 ]
  tail call void @mutex_unlock(ptr noundef %5) #14
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_audio_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %union.hdmi_infoframe, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %15) #14
  %16 = tail call fastcc zeroext i1 @vc4_hdmi_audio_can_stream(ptr noundef %9)
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  tail call void @mutex_unlock(ptr noundef %15) #14
  br label %595

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 25
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @clk_get_rate(ptr noundef %20) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  call void @rational_best_approximation(i32 noundef %21, i32 noundef %12, i32 noundef 16777215, i32 noundef 256, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %22 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 30
  %23 = call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #14
  %24 = load i32, ptr %6, align 4
  %25 = load i32, ptr %7, align 4
  %26 = add i32 %25, -1
  %27 = icmp ult i32 %26, 256
  br i1 %27, label %30, label %28, !prof !21

28:                                               ; preds = %18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1372, i32 noundef 9, ptr noundef null) #14
  %29 = load i32, ptr %7, align 4
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi i32 [ %29, %28 ], [ %25, %18 ]
  %32 = shl i32 %24, 8
  %33 = add i32 %31, 255
  %34 = and i32 %33, 255
  %35 = or i32 %34, %32
  %36 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3, i32 11, i32 18
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3, i32 11, i32 15
  %45 = load i16, ptr %44, align 8
  %46 = and i16 %45, 7
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %49, !prof !15

48:                                               ; preds = %43
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %49

49:                                               ; preds = %48, %43, %30
  %50 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %37, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, 48
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %38, align 8
  %55 = getelementptr inbounds %struct.platform_device, ptr %54, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.16, i32 noundef 48) #15
  br label %85

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %37, i32 0, i32 4
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr %struct.vc4_hdmi_register, ptr %58, i32 48, i32 1
  %60 = load i32, ptr %59, align 4
  switch i32 %60, label %85 [
    i32 2, label %61
    i32 1, label %63
    i32 4, label %65
    i32 3, label %67
    i32 5, label %69
    i32 6, label %71
    i32 7, label %73
    i32 8, label %75
  ]

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 8
  br label %77

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 7
  br label %77

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 10
  br label %77

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 9
  br label %77

69:                                               ; preds = %56
  %70 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 11
  br label %77

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 12
  br label %77

73:                                               ; preds = %56
  %74 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 13
  br label %77

75:                                               ; preds = %56
  %76 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 14
  br label %77

77:                                               ; preds = %75, %73, %71, %69, %67, %65, %63, %61
  %78 = phi ptr [ %76, %75 ], [ %74, %73 ], [ %72, %71 ], [ %70, %69 ], [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ]
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  call void @arm_heavy_mb() #14
  %82 = getelementptr %struct.vc4_hdmi_register, ptr %58, i32 48, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr i8, ptr %79, i32 %83
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %35) #14, !srcloc !17
  br label %85

85:                                               ; preds = %81, %77, %56, %53
  call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %86 = call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #14
  %87 = shl i32 %14, 4
  %88 = icmp ult i32 %87, 256
  br i1 %88, label %90, label %89, !prof !21

89:                                               ; preds = %85
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1576, i32 noundef 9, ptr noundef null) #14
  br label %90

90:                                               ; preds = %89, %85
  %91 = and i32 %87, 240
  %92 = or i32 %91, 12296
  %93 = load ptr, ptr %36, align 4
  %94 = load ptr, ptr %38, align 8
  %95 = getelementptr inbounds %struct.platform_device, ptr %94, i32 0, i32 3, i32 11, i32 18
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.platform_device, ptr %94, i32 0, i32 3, i32 11, i32 15
  %100 = load i16, ptr %99, align 8
  %101 = and i16 %100, 7
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %104, !prof !15

103:                                              ; preds = %98
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %104

104:                                              ; preds = %103, %98, %90
  %105 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %93, i32 0, i32 5
  %106 = load i32, ptr %105, align 4
  %107 = icmp ugt i32 %106, 44
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %38, align 8
  %110 = getelementptr inbounds %struct.platform_device, ptr %109, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %110, ptr noundef nonnull @.str.16, i32 noundef 44) #15
  br label %140

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %93, i32 0, i32 4
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr %struct.vc4_hdmi_register, ptr %113, i32 44, i32 1
  %115 = load i32, ptr %114, align 4
  switch i32 %115, label %140 [
    i32 2, label %116
    i32 1, label %118
    i32 4, label %120
    i32 3, label %122
    i32 5, label %124
    i32 6, label %126
    i32 7, label %128
    i32 8, label %130
  ]

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 8
  br label %132

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 7
  br label %132

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 10
  br label %132

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 9
  br label %132

124:                                              ; preds = %111
  %125 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 11
  br label %132

126:                                              ; preds = %111
  %127 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 12
  br label %132

128:                                              ; preds = %111
  %129 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 13
  br label %132

130:                                              ; preds = %111
  %131 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 14
  br label %132

132:                                              ; preds = %130, %128, %126, %124, %122, %120, %118, %116
  %133 = phi ptr [ %131, %130 ], [ %129, %128 ], [ %127, %126 ], [ %125, %124 ], [ %123, %122 ], [ %121, %120 ], [ %119, %118 ], [ %117, %116 ]
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  call void @arm_heavy_mb() #14
  %137 = getelementptr %struct.vc4_hdmi_register, ptr %113, i32 44, i32 2
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr i8, ptr %134, i32 %138
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %92) #14, !srcloc !17
  br label %140

140:                                              ; preds = %136, %132, %111, %108
  switch i32 %12, label %155 [
    i32 8000, label %156
    i32 11025, label %141
    i32 12000, label %142
    i32 16000, label %143
    i32 22050, label %144
    i32 24000, label %145
    i32 32000, label %146
    i32 44100, label %147
    i32 48000, label %148
    i32 64000, label %149
    i32 88200, label %150
    i32 96000, label %151
    i32 128000, label %152
    i32 176400, label %153
    i32 192000, label %154
  ]

141:                                              ; preds = %140
  br label %156

142:                                              ; preds = %140
  br label %156

143:                                              ; preds = %140
  br label %156

144:                                              ; preds = %140
  br label %156

145:                                              ; preds = %140
  br label %156

146:                                              ; preds = %140
  br label %156

147:                                              ; preds = %140
  br label %156

148:                                              ; preds = %140
  br label %156

149:                                              ; preds = %140
  br label %156

150:                                              ; preds = %140
  br label %156

151:                                              ; preds = %140
  br label %156

152:                                              ; preds = %140
  br label %156

153:                                              ; preds = %140
  br label %156

154:                                              ; preds = %140
  br label %156

155:                                              ; preds = %140
  br label %156

156:                                              ; preds = %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140
  %157 = phi i32 [ 0, %155 ], [ 3840, %154 ], [ 3584, %153 ], [ 3328, %152 ], [ 3072, %151 ], [ 2816, %150 ], [ 2560, %149 ], [ 2304, %148 ], [ 2048, %147 ], [ 1792, %146 ], [ 1536, %145 ], [ 1280, %144 ], [ 1024, %143 ], [ 768, %142 ], [ 512, %141 ], [ 256, %140 ]
  %158 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 1
  %159 = load i8, ptr %158, align 4
  %160 = and i8 %159, 2
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %156
  %163 = load i32, ptr %13, align 4
  %164 = icmp eq i32 %163, 8
  br i1 %164, label %166, label %165

165:                                              ; preds = %162, %156
  br label %166

166:                                              ; preds = %165, %162
  %167 = phi i32 [ 131072, %165 ], [ 13107200, %162 ]
  %168 = or i32 %167, %157
  %169 = load ptr, ptr %36, align 4
  %170 = load ptr, ptr %38, align 8
  %171 = getelementptr inbounds %struct.platform_device, ptr %170, i32 0, i32 3, i32 11, i32 18
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %166
  %175 = getelementptr inbounds %struct.platform_device, ptr %170, i32 0, i32 3, i32 11, i32 15
  %176 = load i16, ptr %175, align 8
  %177 = and i16 %176, 7
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %179, label %180, !prof !15

179:                                              ; preds = %174
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %180

180:                                              ; preds = %179, %174, %166
  %181 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %169, i32 0, i32 5
  %182 = load i32, ptr %181, align 4
  %183 = icmp ugt i32 %182, 46
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %38, align 8
  %186 = getelementptr inbounds %struct.platform_device, ptr %185, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %186, ptr noundef nonnull @.str.16, i32 noundef 46) #15
  br label %216

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %169, i32 0, i32 4
  %189 = load ptr, ptr %188, align 8
  %190 = getelementptr %struct.vc4_hdmi_register, ptr %189, i32 46, i32 1
  %191 = load i32, ptr %190, align 4
  switch i32 %191, label %216 [
    i32 2, label %192
    i32 1, label %194
    i32 4, label %196
    i32 3, label %198
    i32 5, label %200
    i32 6, label %202
    i32 7, label %204
    i32 8, label %206
  ]

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 8
  br label %208

194:                                              ; preds = %187
  %195 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 7
  br label %208

196:                                              ; preds = %187
  %197 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 10
  br label %208

198:                                              ; preds = %187
  %199 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 9
  br label %208

200:                                              ; preds = %187
  %201 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 11
  br label %208

202:                                              ; preds = %187
  %203 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 12
  br label %208

204:                                              ; preds = %187
  %205 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 13
  br label %208

206:                                              ; preds = %187
  %207 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 14
  br label %208

208:                                              ; preds = %206, %204, %202, %200, %198, %196, %194, %192
  %209 = phi ptr [ %207, %206 ], [ %205, %204 ], [ %203, %202 ], [ %201, %200 ], [ %199, %198 ], [ %197, %196 ], [ %195, %194 ], [ %193, %192 ]
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  call void @arm_heavy_mb() #14
  %213 = getelementptr %struct.vc4_hdmi_register, ptr %189, i32 46, i32 2
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr i8, ptr %210, i32 %214
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %168) #14, !srcloc !17
  br label %216

216:                                              ; preds = %212, %208, %187, %184
  %217 = sub i32 32, %14
  %218 = lshr i32 -1, %217
  %219 = icmp ult i32 %218, 256
  br i1 %219, label %221, label %220, !prof !21

220:                                              ; preds = %216
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1601, i32 noundef 9, ptr noundef null) #14
  br label %221

221:                                              ; preds = %220, %216
  %222 = and i32 %218, 255
  %223 = or i32 %222, 553656320
  %224 = load ptr, ptr %36, align 4
  %225 = load ptr, ptr %38, align 8
  %226 = getelementptr inbounds %struct.platform_device, ptr %225, i32 0, i32 3, i32 11, i32 18
  %227 = load i32, ptr %226, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %235, label %229

229:                                              ; preds = %221
  %230 = getelementptr inbounds %struct.platform_device, ptr %225, i32 0, i32 3, i32 11, i32 15
  %231 = load i16, ptr %230, align 8
  %232 = and i16 %231, 7
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %234, label %235, !prof !15

234:                                              ; preds = %229
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %235

235:                                              ; preds = %234, %229, %221
  %236 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %224, i32 0, i32 5
  %237 = load i32, ptr %236, align 4
  %238 = icmp ugt i32 %237, 49
  br i1 %238, label %242, label %239

239:                                              ; preds = %235
  %240 = load ptr, ptr %38, align 8
  %241 = getelementptr inbounds %struct.platform_device, ptr %240, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %241, ptr noundef nonnull @.str.16, i32 noundef 49) #15
  br label %271

242:                                              ; preds = %235
  %243 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %224, i32 0, i32 4
  %244 = load ptr, ptr %243, align 8
  %245 = getelementptr %struct.vc4_hdmi_register, ptr %244, i32 49, i32 1
  %246 = load i32, ptr %245, align 4
  switch i32 %246, label %271 [
    i32 2, label %247
    i32 1, label %249
    i32 4, label %251
    i32 3, label %253
    i32 5, label %255
    i32 6, label %257
    i32 7, label %259
    i32 8, label %261
  ]

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 8
  br label %263

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 7
  br label %263

251:                                              ; preds = %242
  %252 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 10
  br label %263

253:                                              ; preds = %242
  %254 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 9
  br label %263

255:                                              ; preds = %242
  %256 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 11
  br label %263

257:                                              ; preds = %242
  %258 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 12
  br label %263

259:                                              ; preds = %242
  %260 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 13
  br label %263

261:                                              ; preds = %242
  %262 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 14
  br label %263

263:                                              ; preds = %261, %259, %257, %255, %253, %251, %249, %247
  %264 = phi ptr [ %262, %261 ], [ %260, %259 ], [ %258, %257 ], [ %256, %255 ], [ %254, %253 ], [ %252, %251 ], [ %250, %249 ], [ %248, %247 ]
  %265 = load ptr, ptr %264, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %271, label %267

267:                                              ; preds = %263
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  call void @arm_heavy_mb() #14
  %268 = getelementptr %struct.vc4_hdmi_register, ptr %244, i32 49, i32 2
  %269 = load i32, ptr %268, align 4
  %270 = getelementptr i8, ptr %265, i32 %269
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 269488144) #14, !srcloc !17
  br label %271

271:                                              ; preds = %267, %263, %242, %239
  %272 = icmp ult i32 %218, 65536
  br i1 %272, label %274, label %273, !prof !21

273:                                              ; preds = %271
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1613, i32 noundef 9, ptr noundef null) #14
  br label %274

274:                                              ; preds = %273, %271
  %275 = and i32 %218, 65535
  %276 = or i32 %275, 201326592
  %277 = load ptr, ptr %36, align 4
  %278 = load ptr, ptr %38, align 8
  %279 = getelementptr inbounds %struct.platform_device, ptr %278, i32 0, i32 3, i32 11, i32 18
  %280 = load i32, ptr %279, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %288, label %282

282:                                              ; preds = %274
  %283 = getelementptr inbounds %struct.platform_device, ptr %278, i32 0, i32 3, i32 11, i32 15
  %284 = load i16, ptr %283, align 8
  %285 = and i16 %284, 7
  %286 = icmp eq i16 %285, 0
  br i1 %286, label %287, label %288, !prof !15

287:                                              ; preds = %282
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %288

288:                                              ; preds = %287, %282, %274
  %289 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %277, i32 0, i32 5
  %290 = load i32, ptr %289, align 4
  %291 = icmp ugt i32 %290, 43
  br i1 %291, label %295, label %292

292:                                              ; preds = %288
  %293 = load ptr, ptr %38, align 8
  %294 = getelementptr inbounds %struct.platform_device, ptr %293, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %294, ptr noundef nonnull @.str.16, i32 noundef 43) #15
  br label %324

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %277, i32 0, i32 4
  %297 = load ptr, ptr %296, align 8
  %298 = getelementptr %struct.vc4_hdmi_register, ptr %297, i32 43, i32 1
  %299 = load i32, ptr %298, align 4
  switch i32 %299, label %324 [
    i32 2, label %300
    i32 1, label %302
    i32 4, label %304
    i32 3, label %306
    i32 5, label %308
    i32 6, label %310
    i32 7, label %312
    i32 8, label %314
  ]

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 8
  br label %316

302:                                              ; preds = %295
  %303 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 7
  br label %316

304:                                              ; preds = %295
  %305 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 10
  br label %316

306:                                              ; preds = %295
  %307 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 9
  br label %316

308:                                              ; preds = %295
  %309 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 11
  br label %316

310:                                              ; preds = %295
  %311 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 12
  br label %316

312:                                              ; preds = %295
  %313 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 13
  br label %316

314:                                              ; preds = %295
  %315 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 14
  br label %316

316:                                              ; preds = %314, %312, %310, %308, %306, %304, %302, %300
  %317 = phi ptr [ %315, %314 ], [ %313, %312 ], [ %311, %310 ], [ %309, %308 ], [ %307, %306 ], [ %305, %304 ], [ %303, %302 ], [ %301, %300 ]
  %318 = load ptr, ptr %317, align 4
  %319 = icmp eq ptr %318, null
  br i1 %319, label %324, label %320

320:                                              ; preds = %316
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  call void @arm_heavy_mb() #14
  %321 = getelementptr %struct.vc4_hdmi_register, ptr %297, i32 43, i32 2
  %322 = load i32, ptr %321, align 4
  %323 = getelementptr i8, ptr %318, i32 %322
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 %276) #14, !srcloc !17
  br label %324

324:                                              ; preds = %320, %316, %295, %292
  %325 = load ptr, ptr %36, align 4
  %326 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %325, i32 0, i32 17
  %327 = load ptr, ptr %326, align 4
  %328 = call i32 %327(ptr noundef %9, i32 noundef %218) #14
  %329 = load ptr, ptr %36, align 4
  %330 = load ptr, ptr %38, align 8
  %331 = getelementptr inbounds %struct.platform_device, ptr %330, i32 0, i32 3, i32 11, i32 18
  %332 = load i32, ptr %331, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %340, label %334

334:                                              ; preds = %324
  %335 = getelementptr inbounds %struct.platform_device, ptr %330, i32 0, i32 3, i32 11, i32 15
  %336 = load i16, ptr %335, align 8
  %337 = and i16 %336, 7
  %338 = icmp eq i16 %337, 0
  br i1 %338, label %339, label %340, !prof !15

339:                                              ; preds = %334
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %340

340:                                              ; preds = %339, %334, %324
  %341 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %329, i32 0, i32 5
  %342 = load i32, ptr %341, align 4
  %343 = icmp ugt i32 %342, 42
  br i1 %343, label %347, label %344

344:                                              ; preds = %340
  %345 = load ptr, ptr %38, align 8
  %346 = getelementptr inbounds %struct.platform_device, ptr %345, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %346, ptr noundef nonnull @.str.16, i32 noundef 42) #15
  br label %376

347:                                              ; preds = %340
  %348 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %329, i32 0, i32 4
  %349 = load ptr, ptr %348, align 8
  %350 = getelementptr %struct.vc4_hdmi_register, ptr %349, i32 42, i32 1
  %351 = load i32, ptr %350, align 4
  switch i32 %351, label %376 [
    i32 2, label %352
    i32 1, label %354
    i32 4, label %356
    i32 3, label %358
    i32 5, label %360
    i32 6, label %362
    i32 7, label %364
    i32 8, label %366
  ]

352:                                              ; preds = %347
  %353 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 8
  br label %368

354:                                              ; preds = %347
  %355 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 7
  br label %368

356:                                              ; preds = %347
  %357 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 10
  br label %368

358:                                              ; preds = %347
  %359 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 9
  br label %368

360:                                              ; preds = %347
  %361 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 11
  br label %368

362:                                              ; preds = %347
  %363 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 12
  br label %368

364:                                              ; preds = %347
  %365 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 13
  br label %368

366:                                              ; preds = %347
  %367 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 14
  br label %368

368:                                              ; preds = %366, %364, %362, %360, %358, %356, %354, %352
  %369 = phi ptr [ %367, %366 ], [ %365, %364 ], [ %363, %362 ], [ %361, %360 ], [ %359, %358 ], [ %357, %356 ], [ %355, %354 ], [ %353, %352 ]
  %370 = load ptr, ptr %369, align 4
  %371 = icmp eq ptr %370, null
  br i1 %371, label %376, label %372

372:                                              ; preds = %368
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  call void @arm_heavy_mb() #14
  %373 = getelementptr %struct.vc4_hdmi_register, ptr %349, i32 42, i32 2
  %374 = load i32, ptr %373, align 4
  %375 = getelementptr i8, ptr %370, i32 %374
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %375, i32 %328) #14, !srcloc !17
  br label %376

376:                                              ; preds = %372, %368, %347, %344
  %377 = load ptr, ptr %36, align 4
  %378 = load ptr, ptr %38, align 8
  %379 = getelementptr inbounds %struct.platform_device, ptr %378, i32 0, i32 3, i32 11, i32 18
  %380 = load i32, ptr %379, align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %388, label %382

382:                                              ; preds = %376
  %383 = getelementptr inbounds %struct.platform_device, ptr %378, i32 0, i32 3, i32 11, i32 15
  %384 = load i16, ptr %383, align 8
  %385 = and i16 %384, 7
  %386 = icmp eq i16 %385, 0
  br i1 %386, label %387, label %388, !prof !15

387:                                              ; preds = %382
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %388

388:                                              ; preds = %387, %382, %376
  %389 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %377, i32 0, i32 5
  %390 = load i32, ptr %389, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %388
  %393 = load ptr, ptr %38, align 8
  %394 = getelementptr inbounds %struct.platform_device, ptr %393, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %394, ptr noundef nonnull @.str.16, i32 noundef 0) #15
  br label %424

395:                                              ; preds = %388
  %396 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %377, i32 0, i32 4
  %397 = load ptr, ptr %396, align 8
  %398 = getelementptr %struct.vc4_hdmi_register, ptr %397, i32 0, i32 1
  %399 = load i32, ptr %398, align 4
  switch i32 %399, label %424 [
    i32 2, label %400
    i32 1, label %402
    i32 4, label %404
    i32 3, label %406
    i32 5, label %408
    i32 6, label %410
    i32 7, label %412
    i32 8, label %414
  ]

400:                                              ; preds = %395
  %401 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 8
  br label %416

402:                                              ; preds = %395
  %403 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 7
  br label %416

404:                                              ; preds = %395
  %405 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 10
  br label %416

406:                                              ; preds = %395
  %407 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 9
  br label %416

408:                                              ; preds = %395
  %409 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 11
  br label %416

410:                                              ; preds = %395
  %411 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 12
  br label %416

412:                                              ; preds = %395
  %413 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 13
  br label %416

414:                                              ; preds = %395
  %415 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 14
  br label %416

416:                                              ; preds = %414, %412, %410, %408, %406, %404, %402, %400
  %417 = phi ptr [ %415, %414 ], [ %413, %412 ], [ %411, %410 ], [ %409, %408 ], [ %407, %406 ], [ %405, %404 ], [ %403, %402 ], [ %401, %400 ]
  %418 = load ptr, ptr %417, align 4
  %419 = icmp eq ptr %418, null
  br i1 %419, label %424, label %420

420:                                              ; preds = %416
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  call void @arm_heavy_mb() #14
  %421 = getelementptr %struct.vc4_hdmi_register, ptr %397, i32 0, i32 2
  %422 = load i32, ptr %421, align 4
  %423 = getelementptr i8, ptr %418, i32 %422
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %423, i32 %223) #14, !srcloc !17
  br label %424

424:                                              ; preds = %420, %416, %395, %392
  %425 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 32
  %426 = shl i32 %12, 7
  %427 = udiv i32 %426, 1000
  %428 = load i32, ptr %425, align 4
  %429 = mul i32 %428, 1000
  %430 = sext i32 %429 to i64
  %431 = zext i32 %427 to i64
  %432 = mul nsw i64 %430, %431
  %433 = icmp ult i64 %432, 4294967296
  br i1 %433, label %434, label %437, !prof !21

434:                                              ; preds = %424
  %435 = trunc i64 %432 to i32
  %436 = udiv i32 %435, %426
  br label %441

437:                                              ; preds = %424
  %438 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %426, i64 %432) #16, !srcloc !33
  %439 = extractvalue { i64, i64 } %438, 1
  %440 = trunc i64 %439 to i32
  br label %441

441:                                              ; preds = %437, %434
  %442 = phi i32 [ %436, %434 ], [ %440, %437 ]
  %443 = and i32 %427, 7340032
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %446, label %445, !prof !21

445:                                              ; preds = %441
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1392, i32 noundef 9, ptr noundef null) #14
  br label %446

446:                                              ; preds = %445, %441
  %447 = and i32 %427, 1048575
  %448 = or i32 %447, 16777216
  %449 = load ptr, ptr %36, align 4
  %450 = load ptr, ptr %38, align 8
  %451 = getelementptr inbounds %struct.platform_device, ptr %450, i32 0, i32 3, i32 11, i32 18
  %452 = load i32, ptr %451, align 4
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %460, label %454

454:                                              ; preds = %446
  %455 = getelementptr inbounds %struct.platform_device, ptr %450, i32 0, i32 3, i32 11, i32 15
  %456 = load i16, ptr %455, align 8
  %457 = and i16 %456, 7
  %458 = icmp eq i16 %457, 0
  br i1 %458, label %459, label %460, !prof !15

459:                                              ; preds = %454
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %460

460:                                              ; preds = %459, %454, %446
  %461 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %449, i32 0, i32 5
  %462 = load i32, ptr %461, align 4
  %463 = icmp ugt i32 %462, 22
  br i1 %463, label %467, label %464

464:                                              ; preds = %460
  %465 = load ptr, ptr %38, align 8
  %466 = getelementptr inbounds %struct.platform_device, ptr %465, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %466, ptr noundef nonnull @.str.16, i32 noundef 22) #15
  br label %496

467:                                              ; preds = %460
  %468 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %449, i32 0, i32 4
  %469 = load ptr, ptr %468, align 8
  %470 = getelementptr %struct.vc4_hdmi_register, ptr %469, i32 22, i32 1
  %471 = load i32, ptr %470, align 4
  switch i32 %471, label %496 [
    i32 2, label %472
    i32 1, label %474
    i32 4, label %476
    i32 3, label %478
    i32 5, label %480
    i32 6, label %482
    i32 7, label %484
    i32 8, label %486
  ]

472:                                              ; preds = %467
  %473 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 8
  br label %488

474:                                              ; preds = %467
  %475 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 7
  br label %488

476:                                              ; preds = %467
  %477 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 10
  br label %488

478:                                              ; preds = %467
  %479 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 9
  br label %488

480:                                              ; preds = %467
  %481 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 11
  br label %488

482:                                              ; preds = %467
  %483 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 12
  br label %488

484:                                              ; preds = %467
  %485 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 13
  br label %488

486:                                              ; preds = %467
  %487 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 14
  br label %488

488:                                              ; preds = %486, %484, %482, %480, %478, %476, %474, %472
  %489 = phi ptr [ %487, %486 ], [ %485, %484 ], [ %483, %482 ], [ %481, %480 ], [ %479, %478 ], [ %477, %476 ], [ %475, %474 ], [ %473, %472 ]
  %490 = load ptr, ptr %489, align 4
  %491 = icmp eq ptr %490, null
  br i1 %491, label %496, label %492

492:                                              ; preds = %488
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  call void @arm_heavy_mb() #14
  %493 = getelementptr %struct.vc4_hdmi_register, ptr %469, i32 22, i32 2
  %494 = load i32, ptr %493, align 4
  %495 = getelementptr i8, ptr %490, i32 %494
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %495, i32 %448) #14, !srcloc !17
  br label %496

496:                                              ; preds = %492, %488, %467, %464
  %497 = load ptr, ptr %36, align 4
  %498 = load ptr, ptr %38, align 8
  %499 = getelementptr inbounds %struct.platform_device, ptr %498, i32 0, i32 3, i32 11, i32 18
  %500 = load i32, ptr %499, align 4
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %508, label %502

502:                                              ; preds = %496
  %503 = getelementptr inbounds %struct.platform_device, ptr %498, i32 0, i32 3, i32 11, i32 15
  %504 = load i16, ptr %503, align 8
  %505 = and i16 %504, 7
  %506 = icmp eq i16 %505, 0
  br i1 %506, label %507, label %508, !prof !15

507:                                              ; preds = %502
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %508

508:                                              ; preds = %507, %502, %496
  %509 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %497, i32 0, i32 5
  %510 = load i32, ptr %509, align 4
  %511 = icmp ugt i32 %510, 30
  br i1 %511, label %515, label %512

512:                                              ; preds = %508
  %513 = load ptr, ptr %38, align 8
  %514 = getelementptr inbounds %struct.platform_device, ptr %513, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %514, ptr noundef nonnull @.str.16, i32 noundef 30) #15
  br label %544

515:                                              ; preds = %508
  %516 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %497, i32 0, i32 4
  %517 = load ptr, ptr %516, align 8
  %518 = getelementptr %struct.vc4_hdmi_register, ptr %517, i32 30, i32 1
  %519 = load i32, ptr %518, align 4
  switch i32 %519, label %544 [
    i32 2, label %520
    i32 1, label %522
    i32 4, label %524
    i32 3, label %526
    i32 5, label %528
    i32 6, label %530
    i32 7, label %532
    i32 8, label %534
  ]

520:                                              ; preds = %515
  %521 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 8
  br label %536

522:                                              ; preds = %515
  %523 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 7
  br label %536

524:                                              ; preds = %515
  %525 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 10
  br label %536

526:                                              ; preds = %515
  %527 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 9
  br label %536

528:                                              ; preds = %515
  %529 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 11
  br label %536

530:                                              ; preds = %515
  %531 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 12
  br label %536

532:                                              ; preds = %515
  %533 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 13
  br label %536

534:                                              ; preds = %515
  %535 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 14
  br label %536

536:                                              ; preds = %534, %532, %530, %528, %526, %524, %522, %520
  %537 = phi ptr [ %535, %534 ], [ %533, %532 ], [ %531, %530 ], [ %529, %528 ], [ %527, %526 ], [ %525, %524 ], [ %523, %522 ], [ %521, %520 ]
  %538 = load ptr, ptr %537, align 4
  %539 = icmp eq ptr %538, null
  br i1 %539, label %544, label %540

540:                                              ; preds = %536
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  call void @arm_heavy_mb() #14
  %541 = getelementptr %struct.vc4_hdmi_register, ptr %517, i32 30, i32 2
  %542 = load i32, ptr %541, align 4
  %543 = getelementptr i8, ptr %538, i32 %542
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %543, i32 %442) #14, !srcloc !17
  br label %544

544:                                              ; preds = %540, %536, %515, %512
  %545 = load ptr, ptr %36, align 4
  %546 = load ptr, ptr %38, align 8
  %547 = getelementptr inbounds %struct.platform_device, ptr %546, i32 0, i32 3, i32 11, i32 18
  %548 = load i32, ptr %547, align 4
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %556, label %550

550:                                              ; preds = %544
  %551 = getelementptr inbounds %struct.platform_device, ptr %546, i32 0, i32 3, i32 11, i32 15
  %552 = load i16, ptr %551, align 8
  %553 = and i16 %552, 7
  %554 = icmp eq i16 %553, 0
  br i1 %554, label %555, label %556, !prof !15

555:                                              ; preds = %550
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %556

556:                                              ; preds = %555, %550, %544
  %557 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %545, i32 0, i32 5
  %558 = load i32, ptr %557, align 4
  %559 = icmp ugt i32 %558, 31
  br i1 %559, label %563, label %560

560:                                              ; preds = %556
  %561 = load ptr, ptr %38, align 8
  %562 = getelementptr inbounds %struct.platform_device, ptr %561, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %562, ptr noundef nonnull @.str.16, i32 noundef 31) #15
  br label %592

563:                                              ; preds = %556
  %564 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %545, i32 0, i32 4
  %565 = load ptr, ptr %564, align 8
  %566 = getelementptr %struct.vc4_hdmi_register, ptr %565, i32 31, i32 1
  %567 = load i32, ptr %566, align 4
  switch i32 %567, label %592 [
    i32 2, label %568
    i32 1, label %570
    i32 4, label %572
    i32 3, label %574
    i32 5, label %576
    i32 6, label %578
    i32 7, label %580
    i32 8, label %582
  ]

568:                                              ; preds = %563
  %569 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 8
  br label %584

570:                                              ; preds = %563
  %571 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 7
  br label %584

572:                                              ; preds = %563
  %573 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 10
  br label %584

574:                                              ; preds = %563
  %575 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 9
  br label %584

576:                                              ; preds = %563
  %577 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 11
  br label %584

578:                                              ; preds = %563
  %579 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 12
  br label %584

580:                                              ; preds = %563
  %581 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 13
  br label %584

582:                                              ; preds = %563
  %583 = getelementptr inbounds %struct.vc4_hdmi, ptr %9, i32 0, i32 14
  br label %584

584:                                              ; preds = %582, %580, %578, %576, %574, %572, %570, %568
  %585 = phi ptr [ %583, %582 ], [ %581, %580 ], [ %579, %578 ], [ %577, %576 ], [ %575, %574 ], [ %573, %572 ], [ %571, %570 ], [ %569, %568 ]
  %586 = load ptr, ptr %585, align 4
  %587 = icmp eq ptr %586, null
  br i1 %587, label %592, label %588

588:                                              ; preds = %584
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  call void @arm_heavy_mb() #14
  %589 = getelementptr %struct.vc4_hdmi_register, ptr %565, i32 31, i32 2
  %590 = load i32, ptr %589, align 4
  %591 = getelementptr i8, ptr %586, i32 %590
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %591, i32 %442) #14, !srcloc !17
  br label %592

592:                                              ; preds = %588, %584, %563, %560
  call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %86) #14
  %593 = getelementptr %struct.vc4_hdmi_audio, ptr %9, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %593, ptr noundef align 4 dereferenceable(28) %3, i32 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #14
  %594 = getelementptr inbounds i8, ptr %5, i32 28
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %594, i8 0, i32 40, i1 false) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef align 4 dereferenceable(28) %593, i32 28, i1 false) #14
  call fastcc void @vc4_hdmi_write_infoframe(ptr noundef %10, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #14
  call void @mutex_unlock(ptr noundef %15) #14
  br label %595

595:                                              ; preds = %592, %17
  %596 = phi i32 [ 0, %592 ], [ -22, %17 ]
  ret i32 %596
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_audio_shutdown(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %5) #14
  %6 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 30
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %8 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 11, i32 18
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 11, i32 15
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, 7
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %21, !prof !15

20:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %21

21:                                               ; preds = %20, %15, %2
  %22 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %9, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 44
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %10, align 8
  %27 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.16, i32 noundef 44) #15
  br label %57

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %9, i32 0, i32 4
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr %struct.vc4_hdmi_register, ptr %30, i32 44, i32 1
  %32 = load i32, ptr %31, align 4
  switch i32 %32, label %57 [
    i32 2, label %33
    i32 1, label %35
    i32 4, label %37
    i32 3, label %39
    i32 5, label %41
    i32 6, label %43
    i32 7, label %45
    i32 8, label %47
  ]

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 8
  br label %49

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 7
  br label %49

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 10
  br label %49

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 9
  br label %49

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 11
  br label %49

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 12
  br label %49

45:                                               ; preds = %28
  %46 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 13
  br label %49

47:                                               ; preds = %28
  %48 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 14
  br label %49

49:                                               ; preds = %47, %45, %43, %41, %39, %37, %35, %33
  %50 = phi ptr [ %48, %47 ], [ %46, %45 ], [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ]
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %54 = getelementptr %struct.vc4_hdmi_register, ptr %30, i32 44, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr i8, ptr %51, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 32774) #14, !srcloc !17
  br label %57

57:                                               ; preds = %53, %49, %28, %25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #14
  %58 = load ptr, ptr %8, align 4
  %59 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %58, i32 0, i32 16
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void %60(ptr noundef %4) #14
  br label %63

63:                                               ; preds = %62, %57
  %64 = getelementptr inbounds %struct.vc4_hdmi_audio, ptr %4, i32 0, i32 8
  %65 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 3
  %66 = load ptr, ptr %10, align 8
  store i8 0, ptr %64, align 4
  %67 = tail call fastcc i32 @vc4_hdmi_stop_packet(ptr noundef %65, i32 noundef 132, i1 noundef zeroext false) #14
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.platform_device, ptr %66, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.56, i32 noundef %67) #15
  br label %71

71:                                               ; preds = %69, %63
  %72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %73 = load ptr, ptr %8, align 4
  %74 = load ptr, ptr %10, align 8
  %75 = getelementptr inbounds %struct.platform_device, ptr %74, i32 0, i32 3, i32 11, i32 18
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.platform_device, ptr %74, i32 0, i32 3, i32 11, i32 15
  %80 = load i16, ptr %79, align 8
  %81 = and i16 %80, 7
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %84, !prof !15

83:                                               ; preds = %78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %84

84:                                               ; preds = %83, %78, %71
  %85 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %73, i32 0, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = icmp ugt i32 %86, 44
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %10, align 8
  %90 = getelementptr inbounds %struct.platform_device, ptr %89, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str.16, i32 noundef 44) #15
  br label %120

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %73, i32 0, i32 4
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr %struct.vc4_hdmi_register, ptr %93, i32 44, i32 1
  %95 = load i32, ptr %94, align 4
  switch i32 %95, label %120 [
    i32 2, label %96
    i32 1, label %98
    i32 4, label %100
    i32 3, label %102
    i32 5, label %104
    i32 6, label %106
    i32 7, label %108
    i32 8, label %110
  ]

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 8
  br label %112

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 7
  br label %112

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 10
  br label %112

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 9
  br label %112

104:                                              ; preds = %91
  %105 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 11
  br label %112

106:                                              ; preds = %91
  %107 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 12
  br label %112

108:                                              ; preds = %91
  %109 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 13
  br label %112

110:                                              ; preds = %91
  %111 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 14
  br label %112

112:                                              ; preds = %110, %108, %106, %104, %102, %100, %98, %96
  %113 = phi ptr [ %111, %110 ], [ %109, %108 ], [ %107, %106 ], [ %105, %104 ], [ %103, %102 ], [ %101, %100 ], [ %99, %98 ], [ %97, %96 ]
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %117 = getelementptr %struct.vc4_hdmi_register, ptr %93, i32 44, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr i8, ptr %114, i32 %118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 1) #14, !srcloc !17
  br label %120

120:                                              ; preds = %116, %112, %91, %88
  %121 = load ptr, ptr %8, align 4
  %122 = load ptr, ptr %10, align 8
  %123 = getelementptr inbounds %struct.platform_device, ptr %122, i32 0, i32 3, i32 11, i32 18
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.platform_device, ptr %122, i32 0, i32 3, i32 11, i32 15
  %128 = load i16, ptr %127, align 8
  %129 = and i16 %128, 7
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %131, label %132, !prof !15

131:                                              ; preds = %126
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %132

132:                                              ; preds = %131, %126, %120
  %133 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %121, i32 0, i32 5
  %134 = load i32, ptr %133, align 4
  %135 = icmp ugt i32 %134, 44
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr %10, align 8
  %138 = getelementptr inbounds %struct.platform_device, ptr %137, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %138, ptr noundef nonnull @.str.16, i32 noundef 44) #15
  br label %168

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %121, i32 0, i32 4
  %141 = load ptr, ptr %140, align 8
  %142 = getelementptr %struct.vc4_hdmi_register, ptr %141, i32 44, i32 1
  %143 = load i32, ptr %142, align 4
  switch i32 %143, label %168 [
    i32 2, label %144
    i32 1, label %146
    i32 4, label %148
    i32 3, label %150
    i32 5, label %152
    i32 6, label %154
    i32 7, label %156
    i32 8, label %158
  ]

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 8
  br label %160

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 7
  br label %160

148:                                              ; preds = %139
  %149 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 10
  br label %160

150:                                              ; preds = %139
  %151 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 9
  br label %160

152:                                              ; preds = %139
  %153 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 11
  br label %160

154:                                              ; preds = %139
  %155 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 12
  br label %160

156:                                              ; preds = %139
  %157 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 13
  br label %160

158:                                              ; preds = %139
  %159 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 14
  br label %160

160:                                              ; preds = %158, %156, %154, %152, %150, %148, %146, %144
  %161 = phi ptr [ %159, %158 ], [ %157, %156 ], [ %155, %154 ], [ %153, %152 ], [ %151, %150 ], [ %149, %148 ], [ %147, %146 ], [ %145, %144 ]
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %165 = getelementptr %struct.vc4_hdmi_register, ptr %141, i32 44, i32 2
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr i8, ptr %162, i32 %166
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 2) #14, !srcloc !17
  br label %168

168:                                              ; preds = %164, %160, %139, %136
  %169 = load ptr, ptr %8, align 4
  %170 = load ptr, ptr %10, align 8
  %171 = getelementptr inbounds %struct.platform_device, ptr %170, i32 0, i32 3, i32 11, i32 18
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.platform_device, ptr %170, i32 0, i32 3, i32 11, i32 15
  %176 = load i16, ptr %175, align 8
  %177 = and i16 %176, 7
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %179, label %180, !prof !15

179:                                              ; preds = %174
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %180

180:                                              ; preds = %179, %174, %168
  %181 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %169, i32 0, i32 5
  %182 = load i32, ptr %181, align 4
  %183 = icmp ugt i32 %182, 44
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %10, align 8
  %186 = getelementptr inbounds %struct.platform_device, ptr %185, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %186, ptr noundef nonnull @.str.16, i32 noundef 44) #15
  br label %216

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %169, i32 0, i32 4
  %189 = load ptr, ptr %188, align 8
  %190 = getelementptr %struct.vc4_hdmi_register, ptr %189, i32 44, i32 1
  %191 = load i32, ptr %190, align 4
  switch i32 %191, label %216 [
    i32 2, label %192
    i32 1, label %194
    i32 4, label %196
    i32 3, label %198
    i32 5, label %200
    i32 6, label %202
    i32 7, label %204
    i32 8, label %206
  ]

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 8
  br label %208

194:                                              ; preds = %187
  %195 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 7
  br label %208

196:                                              ; preds = %187
  %197 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 10
  br label %208

198:                                              ; preds = %187
  %199 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 9
  br label %208

200:                                              ; preds = %187
  %201 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 11
  br label %208

202:                                              ; preds = %187
  %203 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 12
  br label %208

204:                                              ; preds = %187
  %205 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 13
  br label %208

206:                                              ; preds = %187
  %207 = getelementptr inbounds %struct.vc4_hdmi, ptr %4, i32 0, i32 14
  br label %208

208:                                              ; preds = %206, %204, %202, %200, %198, %196, %194, %192
  %209 = phi ptr [ %207, %206 ], [ %205, %204 ], [ %203, %202 ], [ %201, %200 ], [ %199, %198 ], [ %197, %196 ], [ %195, %194 ], [ %193, %192 ]
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %213 = getelementptr %struct.vc4_hdmi_register, ptr %189, i32 44, i32 2
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr i8, ptr %210, i32 %214
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 512) #14, !srcloc !17
  br label %216

216:                                              ; preds = %212, %208, %187, %184
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %72) #14
  tail call void @mutex_unlock(ptr noundef %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_audio_get_eld(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vc4_hdmi, ptr %6, i32 0, i32 31
  tail call void @mutex_lock(ptr noundef %7) #14
  %8 = getelementptr inbounds %struct.vc4_hdmi, ptr %6, i32 0, i32 4, i32 42
  %9 = tail call i32 @llvm.umin.i32(i32 %3, i32 128)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 8 %8, i32 %9, i1 false)
  tail call void @mutex_unlock(ptr noundef %7) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @vc4_hdmi_audio_can_stream(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 33
  %3 = load i8, ptr %2, align 4, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %61, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 11, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 11, i32 15
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 7
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19, !prof !15

18:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %7, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 51
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.16, i32 noundef 51) #15
  br label %61

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %7, i32 0, i32 4
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr %struct.vc4_hdmi_register, ptr %28, i32 51, i32 1
  %30 = load i32, ptr %29, align 4
  switch i32 %30, label %51 [
    i32 2, label %31
    i32 1, label %33
    i32 4, label %35
    i32 3, label %37
    i32 5, label %39
    i32 6, label %41
    i32 7, label %43
    i32 8, label %45
  ]

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %47

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %47

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %47

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %47

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %47

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %47

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %47

45:                                               ; preds = %26
  %46 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %47

47:                                               ; preds = %45, %43, %41, %39, %37, %35, %33, %31
  %48 = phi ptr [ %46, %45 ], [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %26
  %52 = load ptr, ptr %8, align 8
  %53 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.30, i32 noundef 51) #15
  br label %61

54:                                               ; preds = %47
  %55 = getelementptr %struct.vc4_hdmi_register, ptr %28, i32 51, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %49, i32 %56
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  %59 = and i32 %58, 65536
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %54, %51, %23, %1
  %62 = phi i1 [ false, %1 ], [ false, %23 ], [ %60, %54 ], [ false, %51 ]
  ret i1 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_print_regset32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_init_resources(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call ptr @vc4_ioremap_regs(ptr noundef %3, i32 noundef 0) #14
  %6 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  store ptr %5, ptr %6, align 8
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %5 to i32
  br label %127

10:                                               ; preds = %1
  %11 = tail call ptr @vc4_ioremap_regs(ptr noundef %3, i32 noundef 1) #14
  %12 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = ptrtoint ptr %11 to i32
  br label %127

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 29
  %18 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 8) #14
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %127, label %24, !prof !15

24:                                               ; preds = %16
  %25 = extractvalue { i32, i1 } %22, 0
  %26 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %127, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %20, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %19, i32 0, i32 4
  br label %33

33:                                               ; preds = %50, %31
  %34 = phi i32 [ %29, %31 ], [ %51, %50 ]
  %35 = phi i32 [ 0, %31 ], [ %53, %50 ]
  %36 = phi i32 [ 0, %31 ], [ %52, %50 ]
  %37 = load ptr, ptr %32, align 8
  %38 = getelementptr %struct.vc4_hdmi_register, ptr %37, i32 %35, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = getelementptr %struct.vc4_hdmi_register, ptr %37, i32 %35
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr %struct.debugfs_reg32, ptr %26, i32 %36
  store ptr %43, ptr %44, align 8
  %45 = getelementptr %struct.vc4_hdmi_register, ptr %37, i32 %35, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr %struct.debugfs_reg32, ptr %26, i32 %36, i32 1
  store i32 %46, ptr %47, align 4
  %48 = add i32 %36, 1
  %49 = load i32, ptr %20, align 4
  br label %50

50:                                               ; preds = %41, %33
  %51 = phi i32 [ %49, %41 ], [ %34, %33 ]
  %52 = phi i32 [ %48, %41 ], [ %36, %33 ]
  %53 = add nuw i32 %35, 1
  %54 = icmp ult i32 %53, %51
  br i1 %54, label %33, label %55

55:                                               ; preds = %50, %28
  %56 = phi i32 [ 0, %28 ], [ %52, %50 ]
  %57 = shl i32 %56, 3
  %58 = tail call noalias ptr @krealloc(ptr noundef nonnull %26, i32 noundef %57, i32 noundef 3264) #19
  %59 = icmp eq ptr %58, null
  br i1 %59, label %127, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %12, align 4
  %62 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 29, i32 2
  store ptr %61, ptr %62, align 4
  store ptr %58, ptr %17, align 4
  %63 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 29, i32 1
  store i32 %56, ptr %63, align 4
  %64 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 28
  %65 = load ptr, ptr %18, align 4
  %66 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %65, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %67, i32 8) #14
  %69 = extractvalue { i32, i1 } %68, 1
  br i1 %69, label %127, label %70, !prof !15

70:                                               ; preds = %60
  %71 = extractvalue { i32, i1 } %68, 0
  %72 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %71, i32 noundef 3520) #18
  %73 = icmp eq ptr %72, null
  br i1 %73, label %127, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %66, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %101, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %65, i32 0, i32 4
  br label %79

79:                                               ; preds = %96, %77
  %80 = phi i32 [ %75, %77 ], [ %97, %96 ]
  %81 = phi i32 [ 0, %77 ], [ %99, %96 ]
  %82 = phi i32 [ 0, %77 ], [ %98, %96 ]
  %83 = load ptr, ptr %78, align 8
  %84 = getelementptr %struct.vc4_hdmi_register, ptr %83, i32 %81, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %96

87:                                               ; preds = %79
  %88 = getelementptr %struct.vc4_hdmi_register, ptr %83, i32 %81
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr %struct.debugfs_reg32, ptr %72, i32 %82
  store ptr %89, ptr %90, align 8
  %91 = getelementptr %struct.vc4_hdmi_register, ptr %83, i32 %81, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr %struct.debugfs_reg32, ptr %72, i32 %82, i32 1
  store i32 %92, ptr %93, align 4
  %94 = add i32 %82, 1
  %95 = load i32, ptr %66, align 4
  br label %96

96:                                               ; preds = %87, %79
  %97 = phi i32 [ %95, %87 ], [ %80, %79 ]
  %98 = phi i32 [ %94, %87 ], [ %82, %79 ]
  %99 = add nuw i32 %81, 1
  %100 = icmp ult i32 %99, %97
  br i1 %100, label %79, label %101

101:                                              ; preds = %96, %74
  %102 = phi i32 [ 0, %74 ], [ %98, %96 ]
  %103 = shl i32 %102, 3
  %104 = tail call noalias ptr @krealloc(ptr noundef nonnull %72, i32 noundef %103, i32 noundef 3264) #19
  %105 = icmp eq ptr %104, null
  br i1 %105, label %127, label %106

106:                                              ; preds = %101
  %107 = load ptr, ptr %6, align 8
  %108 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 28, i32 2
  store ptr %107, ptr %108, align 4
  store ptr %104, ptr %64, align 4
  %109 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 28, i32 1
  store i32 %102, ptr %109, align 4
  %110 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.116) #14
  %111 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 23
  store ptr %110, ptr %111, align 8
  %112 = icmp ugt ptr %110, inttoptr (i32 -4096 to ptr)
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = icmp eq ptr %110, inttoptr (i32 -517 to ptr)
  br i1 %114, label %127, label %115

115:                                              ; preds = %113
  %116 = ptrtoint ptr %110 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.117) #14
  br label %127

117:                                              ; preds = %106
  %118 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.118) #14
  %119 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 24
  store ptr %118, ptr %119, align 4
  %120 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.119) #14
  %122 = load ptr, ptr %119, align 4
  %123 = ptrtoint ptr %122 to i32
  br label %127

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 25
  store ptr %118, ptr %125, align 8
  %126 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 22
  store ptr %118, ptr %126, align 4
  br label %127

127:                                              ; preds = %124, %121, %115, %113, %101, %70, %60, %55, %24, %16, %14, %8
  %128 = phi i32 [ %9, %8 ], [ %15, %14 ], [ %123, %121 ], [ 0, %124 ], [ %116, %115 ], [ -517, %113 ], [ -12, %24 ], [ -12, %55 ], [ -12, %16 ], [ -12, %70 ], [ -12, %101 ], [ -12, %60 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 30
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #14
  %4 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 15
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 7
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %17, !prof !15

16:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %17

17:                                               ; preds = %16, %11, %1
  %18 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 50
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.16, i32 noundef 50) #15
  br label %53

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 50, i32 1
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %53 [
    i32 2, label %29
    i32 1, label %31
    i32 4, label %33
    i32 3, label %35
    i32 5, label %37
    i32 6, label %39
    i32 7, label %41
    i32 8, label %43
  ]

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %45

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %45

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %45

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %45

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %45

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %45

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %45

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %45

45:                                               ; preds = %43, %41, %39, %37, %35, %33, %31, %29
  %46 = phi ptr [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %50 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 50, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i8, ptr %47, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 4) #14, !srcloc !17
  br label %53

53:                                               ; preds = %49, %45, %24, %21
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #14
  %55 = load ptr, ptr %4, align 4
  %56 = load ptr, ptr %6, align 8
  %57 = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3, i32 11, i32 18
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3, i32 11, i32 15
  %62 = load i16, ptr %61, align 8
  %63 = and i16 %62, 7
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %66, !prof !15

65:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %66

66:                                               ; preds = %65, %60, %53
  %67 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %55, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = icmp ugt i32 %68, 50
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %6, align 8
  %72 = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.16, i32 noundef 50) #15
  br label %102

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %55, i32 0, i32 4
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr %struct.vc4_hdmi_register, ptr %75, i32 50, i32 1
  %77 = load i32, ptr %76, align 4
  switch i32 %77, label %102 [
    i32 2, label %78
    i32 1, label %80
    i32 4, label %82
    i32 3, label %84
    i32 5, label %86
    i32 6, label %88
    i32 7, label %90
    i32 8, label %92
  ]

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %94

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %94

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %94

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %94

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %94

88:                                               ; preds = %73
  %89 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %94

90:                                               ; preds = %73
  %91 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %94

92:                                               ; preds = %73
  %93 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %94

94:                                               ; preds = %92, %90, %88, %86, %84, %82, %80, %78
  %95 = phi ptr [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %87, %86 ], [ %85, %84 ], [ %83, %82 ], [ %81, %80 ], [ %79, %78 ]
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %99 = getelementptr %struct.vc4_hdmi_register, ptr %75, i32 50, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr i8, ptr %96, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 0) #14, !srcloc !17
  br label %102

102:                                              ; preds = %98, %94, %73, %70
  %103 = load ptr, ptr %4, align 4
  %104 = load ptr, ptr %6, align 8
  %105 = getelementptr inbounds %struct.platform_device, ptr %104, i32 0, i32 3, i32 11, i32 18
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.platform_device, ptr %104, i32 0, i32 3, i32 11, i32 15
  %110 = load i16, ptr %109, align 8
  %111 = and i16 %110, 7
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %114, !prof !15

113:                                              ; preds = %108
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %114

114:                                              ; preds = %113, %108, %102
  %115 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %103, i32 0, i32 5
  %116 = load i32, ptr %115, align 4
  %117 = icmp ugt i32 %116, 50
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %6, align 8
  %120 = getelementptr inbounds %struct.platform_device, ptr %119, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %120, ptr noundef nonnull @.str.16, i32 noundef 50) #15
  br label %150

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %103, i32 0, i32 4
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr %struct.vc4_hdmi_register, ptr %123, i32 50, i32 1
  %125 = load i32, ptr %124, align 4
  switch i32 %125, label %150 [
    i32 2, label %126
    i32 1, label %128
    i32 4, label %130
    i32 3, label %132
    i32 5, label %134
    i32 6, label %136
    i32 7, label %138
    i32 8, label %140
  ]

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %142

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %142

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %142

132:                                              ; preds = %121
  %133 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %142

134:                                              ; preds = %121
  %135 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %142

136:                                              ; preds = %121
  %137 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %142

138:                                              ; preds = %121
  %139 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %142

140:                                              ; preds = %121
  %141 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %142

142:                                              ; preds = %140, %138, %136, %134, %132, %130, %128, %126
  %143 = phi ptr [ %141, %140 ], [ %139, %138 ], [ %137, %136 ], [ %135, %134 ], [ %133, %132 ], [ %131, %130 ], [ %129, %128 ], [ %127, %126 ]
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %147 = getelementptr %struct.vc4_hdmi_register, ptr %123, i32 50, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr i8, ptr %144, i32 %148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 1) #14, !srcloc !17
  br label %150

150:                                              ; preds = %146, %142, %121, %118
  %151 = load ptr, ptr %4, align 4
  %152 = load ptr, ptr %6, align 8
  %153 = getelementptr inbounds %struct.platform_device, ptr %152, i32 0, i32 3, i32 11, i32 18
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.platform_device, ptr %152, i32 0, i32 3, i32 11, i32 15
  %158 = load i16, ptr %157, align 8
  %159 = and i16 %158, 7
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %161, label %162, !prof !15

161:                                              ; preds = %156
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %162

162:                                              ; preds = %161, %156, %150
  %163 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %151, i32 0, i32 5
  %164 = load i32, ptr %163, align 4
  %165 = icmp ugt i32 %164, 59
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr %6, align 8
  %168 = getelementptr inbounds %struct.platform_device, ptr %167, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %168, ptr noundef nonnull @.str.16, i32 noundef 59) #15
  br label %198

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %151, i32 0, i32 4
  %171 = load ptr, ptr %170, align 8
  %172 = getelementptr %struct.vc4_hdmi_register, ptr %171, i32 59, i32 1
  %173 = load i32, ptr %172, align 4
  switch i32 %173, label %198 [
    i32 2, label %174
    i32 1, label %176
    i32 4, label %178
    i32 3, label %180
    i32 5, label %182
    i32 6, label %184
    i32 7, label %186
    i32 8, label %188
  ]

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %190

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %190

178:                                              ; preds = %169
  %179 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %190

180:                                              ; preds = %169
  %181 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %190

182:                                              ; preds = %169
  %183 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %190

184:                                              ; preds = %169
  %185 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %190

186:                                              ; preds = %169
  %187 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %190

188:                                              ; preds = %169
  %189 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %190

190:                                              ; preds = %188, %186, %184, %182, %180, %178, %176, %174
  %191 = phi ptr [ %189, %188 ], [ %187, %186 ], [ %185, %184 ], [ %183, %182 ], [ %181, %180 ], [ %179, %178 ], [ %177, %176 ], [ %175, %174 ]
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %195 = getelementptr %struct.vc4_hdmi_register, ptr %171, i32 59, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr i8, ptr %192, i32 %196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 3) #14, !srcloc !17
  br label %198

198:                                              ; preds = %194, %190, %169, %166
  %199 = load ptr, ptr %4, align 4
  %200 = load ptr, ptr %6, align 8
  %201 = getelementptr inbounds %struct.platform_device, ptr %200, i32 0, i32 3, i32 11, i32 18
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.platform_device, ptr %200, i32 0, i32 3, i32 11, i32 15
  %206 = load i16, ptr %205, align 8
  %207 = and i16 %206, 7
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %209, label %210, !prof !15

209:                                              ; preds = %204
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %210

210:                                              ; preds = %209, %204, %198
  %211 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %199, i32 0, i32 5
  %212 = load i32, ptr %211, align 4
  %213 = icmp ugt i32 %212, 59
  br i1 %213, label %217, label %214

214:                                              ; preds = %210
  %215 = load ptr, ptr %6, align 8
  %216 = getelementptr inbounds %struct.platform_device, ptr %215, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %216, ptr noundef nonnull @.str.16, i32 noundef 59) #15
  br label %246

217:                                              ; preds = %210
  %218 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %199, i32 0, i32 4
  %219 = load ptr, ptr %218, align 8
  %220 = getelementptr %struct.vc4_hdmi_register, ptr %219, i32 59, i32 1
  %221 = load i32, ptr %220, align 4
  switch i32 %221, label %246 [
    i32 2, label %222
    i32 1, label %224
    i32 4, label %226
    i32 3, label %228
    i32 5, label %230
    i32 6, label %232
    i32 7, label %234
    i32 8, label %236
  ]

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %238

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %238

226:                                              ; preds = %217
  %227 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %238

228:                                              ; preds = %217
  %229 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %238

230:                                              ; preds = %217
  %231 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %238

232:                                              ; preds = %217
  %233 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %238

234:                                              ; preds = %217
  %235 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %238

236:                                              ; preds = %217
  %237 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %238

238:                                              ; preds = %236, %234, %232, %230, %228, %226, %224, %222
  %239 = phi ptr [ %237, %236 ], [ %235, %234 ], [ %233, %232 ], [ %231, %230 ], [ %229, %228 ], [ %227, %226 ], [ %225, %224 ], [ %223, %222 ]
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %246, label %242

242:                                              ; preds = %238
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %243 = getelementptr %struct.vc4_hdmi_register, ptr %219, i32 59, i32 2
  %244 = load i32, ptr %243, align 4
  %245 = getelementptr i8, ptr %240, i32 %244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 0) #14, !srcloc !17
  br label %246

246:                                              ; preds = %242, %238, %217, %214
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_csc_setup(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 30
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  br i1 %1, label %5, label %295

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 11, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 11, i32 15
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 7
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19, !prof !15

18:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %7, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 23
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.16, i32 noundef 23) #15
  br label %55

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %7, i32 0, i32 4
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr %struct.vc4_hdmi_register, ptr %28, i32 23, i32 1
  %30 = load i32, ptr %29, align 4
  switch i32 %30, label %55 [
    i32 2, label %31
    i32 1, label %33
    i32 4, label %35
    i32 3, label %37
    i32 5, label %39
    i32 6, label %41
    i32 7, label %43
    i32 8, label %45
  ]

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %47

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %47

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %47

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %47

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %47

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %47

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %47

45:                                               ; preds = %26
  %46 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %47

47:                                               ; preds = %45, %43, %41, %39, %37, %35, %33, %31
  %48 = phi ptr [ %46, %45 ], [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %52 = getelementptr %struct.vc4_hdmi_register, ptr %28, i32 23, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %49, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 0) #14, !srcloc !17
  br label %55

55:                                               ; preds = %51, %47, %26, %23
  %56 = load ptr, ptr %6, align 4
  %57 = load ptr, ptr %8, align 8
  %58 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3, i32 11, i32 18
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3, i32 11, i32 15
  %63 = load i16, ptr %62, align 8
  %64 = and i16 %63, 7
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %67, !prof !15

66:                                               ; preds = %61
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %67

67:                                               ; preds = %66, %61, %55
  %68 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %56, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = icmp ugt i32 %69, 24
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %8, align 8
  %73 = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.16, i32 noundef 24) #15
  br label %103

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %56, i32 0, i32 4
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr %struct.vc4_hdmi_register, ptr %76, i32 24, i32 1
  %78 = load i32, ptr %77, align 4
  switch i32 %78, label %103 [
    i32 2, label %79
    i32 1, label %81
    i32 4, label %83
    i32 3, label %85
    i32 5, label %87
    i32 6, label %89
    i32 7, label %91
    i32 8, label %93
  ]

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %95

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %95

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %95

85:                                               ; preds = %74
  %86 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %95

87:                                               ; preds = %74
  %88 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %95

89:                                               ; preds = %74
  %90 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %95

91:                                               ; preds = %74
  %92 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %95

93:                                               ; preds = %74
  %94 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %95

95:                                               ; preds = %93, %91, %89, %87, %85, %83, %81, %79
  %96 = phi ptr [ %94, %93 ], [ %92, %91 ], [ %90, %89 ], [ %88, %87 ], [ %86, %85 ], [ %84, %83 ], [ %82, %81 ], [ %80, %79 ]
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %100 = getelementptr %struct.vc4_hdmi_register, ptr %76, i32 24, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr i8, ptr %97, i32 %101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 16778976) #14, !srcloc !17
  br label %103

103:                                              ; preds = %99, %95, %74, %71
  %104 = load ptr, ptr %6, align 4
  %105 = load ptr, ptr %8, align 8
  %106 = getelementptr inbounds %struct.platform_device, ptr %105, i32 0, i32 3, i32 11, i32 18
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.platform_device, ptr %105, i32 0, i32 3, i32 11, i32 15
  %111 = load i16, ptr %110, align 8
  %112 = and i16 %111, 7
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %115, !prof !15

114:                                              ; preds = %109
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %115

115:                                              ; preds = %114, %109, %103
  %116 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %104, i32 0, i32 5
  %117 = load i32, ptr %116, align 4
  %118 = icmp ugt i32 %117, 25
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %8, align 8
  %121 = getelementptr inbounds %struct.platform_device, ptr %120, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %121, ptr noundef nonnull @.str.16, i32 noundef 25) #15
  br label %151

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %104, i32 0, i32 4
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr %struct.vc4_hdmi_register, ptr %124, i32 25, i32 1
  %126 = load i32, ptr %125, align 4
  switch i32 %126, label %151 [
    i32 2, label %127
    i32 1, label %129
    i32 4, label %131
    i32 3, label %133
    i32 5, label %135
    i32 6, label %137
    i32 7, label %139
    i32 8, label %141
  ]

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %143

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %143

131:                                              ; preds = %122
  %132 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %143

133:                                              ; preds = %122
  %134 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %143

135:                                              ; preds = %122
  %136 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %143

137:                                              ; preds = %122
  %138 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %143

139:                                              ; preds = %122
  %140 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %143

141:                                              ; preds = %122
  %142 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %143

143:                                              ; preds = %141, %139, %137, %135, %133, %131, %129, %127
  %144 = phi ptr [ %142, %141 ], [ %140, %139 ], [ %138, %137 ], [ %136, %135 ], [ %134, %133 ], [ %132, %131 ], [ %130, %129 ], [ %128, %127 ]
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %148 = getelementptr %struct.vc4_hdmi_register, ptr %124, i32 25, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr i8, ptr %145, i32 %149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 115343360) #14, !srcloc !17
  br label %151

151:                                              ; preds = %147, %143, %122, %119
  %152 = load ptr, ptr %6, align 4
  %153 = load ptr, ptr %8, align 8
  %154 = getelementptr inbounds %struct.platform_device, ptr %153, i32 0, i32 3, i32 11, i32 18
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.platform_device, ptr %153, i32 0, i32 3, i32 11, i32 15
  %159 = load i16, ptr %158, align 8
  %160 = and i16 %159, 7
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %163, !prof !15

162:                                              ; preds = %157
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %163

163:                                              ; preds = %162, %157, %151
  %164 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %152, i32 0, i32 5
  %165 = load i32, ptr %164, align 4
  %166 = icmp ugt i32 %165, 26
  br i1 %166, label %170, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr %8, align 8
  %169 = getelementptr inbounds %struct.platform_device, ptr %168, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %169, ptr noundef nonnull @.str.16, i32 noundef 26) #15
  br label %199

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %152, i32 0, i32 4
  %172 = load ptr, ptr %171, align 8
  %173 = getelementptr %struct.vc4_hdmi_register, ptr %172, i32 26, i32 1
  %174 = load i32, ptr %173, align 4
  switch i32 %174, label %199 [
    i32 2, label %175
    i32 1, label %177
    i32 4, label %179
    i32 3, label %181
    i32 5, label %183
    i32 6, label %185
    i32 7, label %187
    i32 8, label %189
  ]

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %191

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %191

179:                                              ; preds = %170
  %180 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %191

181:                                              ; preds = %170
  %182 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %191

183:                                              ; preds = %170
  %184 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %191

185:                                              ; preds = %170
  %186 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %191

187:                                              ; preds = %170
  %188 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %191

189:                                              ; preds = %170
  %190 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %191

191:                                              ; preds = %189, %187, %185, %183, %181, %179, %177, %175
  %192 = phi ptr [ %190, %189 ], [ %188, %187 ], [ %186, %185 ], [ %184, %183 ], [ %182, %181 ], [ %180, %179 ], [ %178, %177 ], [ %176, %175 ]
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %196 = getelementptr %struct.vc4_hdmi_register, ptr %172, i32 26, i32 2
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr i8, ptr %193, i32 %197
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 16777216) #14, !srcloc !17
  br label %199

199:                                              ; preds = %195, %191, %170, %167
  %200 = load ptr, ptr %6, align 4
  %201 = load ptr, ptr %8, align 8
  %202 = getelementptr inbounds %struct.platform_device, ptr %201, i32 0, i32 3, i32 11, i32 18
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.platform_device, ptr %201, i32 0, i32 3, i32 11, i32 15
  %207 = load i16, ptr %206, align 8
  %208 = and i16 %207, 7
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %210, label %211, !prof !15

210:                                              ; preds = %205
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %211

211:                                              ; preds = %210, %205, %199
  %212 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %200, i32 0, i32 5
  %213 = load i32, ptr %212, align 4
  %214 = icmp ugt i32 %213, 27
  br i1 %214, label %218, label %215

215:                                              ; preds = %211
  %216 = load ptr, ptr %8, align 8
  %217 = getelementptr inbounds %struct.platform_device, ptr %216, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %217, ptr noundef nonnull @.str.16, i32 noundef 27) #15
  br label %247

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %200, i32 0, i32 4
  %220 = load ptr, ptr %219, align 8
  %221 = getelementptr %struct.vc4_hdmi_register, ptr %220, i32 27, i32 1
  %222 = load i32, ptr %221, align 4
  switch i32 %222, label %247 [
    i32 2, label %223
    i32 1, label %225
    i32 4, label %227
    i32 3, label %229
    i32 5, label %231
    i32 6, label %233
    i32 7, label %235
    i32 8, label %237
  ]

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %239

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %239

227:                                              ; preds = %218
  %228 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %239

229:                                              ; preds = %218
  %230 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %239

231:                                              ; preds = %218
  %232 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %239

233:                                              ; preds = %218
  %234 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %239

235:                                              ; preds = %218
  %236 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %239

237:                                              ; preds = %218
  %238 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %239

239:                                              ; preds = %237, %235, %233, %231, %229, %227, %225, %223
  %240 = phi ptr [ %238, %237 ], [ %236, %235 ], [ %234, %233 ], [ %232, %231 ], [ %230, %229 ], [ %228, %227 ], [ %226, %225 ], [ %224, %223 ]
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %247, label %243

243:                                              ; preds = %239
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %244 = getelementptr %struct.vc4_hdmi_register, ptr %220, i32 27, i32 2
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr i8, ptr %241, i32 %245
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 1760) #14, !srcloc !17
  br label %247

247:                                              ; preds = %243, %239, %218, %215
  %248 = load ptr, ptr %6, align 4
  %249 = load ptr, ptr %8, align 8
  %250 = getelementptr inbounds %struct.platform_device, ptr %249, i32 0, i32 3, i32 11, i32 18
  %251 = load i32, ptr %250, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %259, label %253

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.platform_device, ptr %249, i32 0, i32 3, i32 11, i32 15
  %255 = load i16, ptr %254, align 8
  %256 = and i16 %255, 7
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %258, label %259, !prof !15

258:                                              ; preds = %253
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %259

259:                                              ; preds = %258, %253, %247
  %260 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %248, i32 0, i32 5
  %261 = load i32, ptr %260, align 4
  %262 = icmp ugt i32 %261, 28
  br i1 %262, label %266, label %263

263:                                              ; preds = %259
  %264 = load ptr, ptr %8, align 8
  %265 = getelementptr inbounds %struct.platform_device, ptr %264, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %265, ptr noundef nonnull @.str.16, i32 noundef 28) #15
  br label %295

266:                                              ; preds = %259
  %267 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %248, i32 0, i32 4
  %268 = load ptr, ptr %267, align 8
  %269 = getelementptr %struct.vc4_hdmi_register, ptr %268, i32 28, i32 1
  %270 = load i32, ptr %269, align 4
  switch i32 %270, label %295 [
    i32 2, label %271
    i32 1, label %273
    i32 4, label %275
    i32 3, label %277
    i32 5, label %279
    i32 6, label %281
    i32 7, label %283
    i32 8, label %285
  ]

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %287

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %287

275:                                              ; preds = %266
  %276 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %287

277:                                              ; preds = %266
  %278 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %287

279:                                              ; preds = %266
  %280 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %287

281:                                              ; preds = %266
  %282 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %287

283:                                              ; preds = %266
  %284 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %287

285:                                              ; preds = %266
  %286 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %287

287:                                              ; preds = %285, %283, %281, %279, %277, %275, %273, %271
  %288 = phi ptr [ %286, %285 ], [ %284, %283 ], [ %282, %281 ], [ %280, %279 ], [ %278, %277 ], [ %276, %275 ], [ %274, %273 ], [ %272, %271 ]
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %295, label %291

291:                                              ; preds = %287
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %292 = getelementptr %struct.vc4_hdmi_register, ptr %268, i32 28, i32 2
  %293 = load i32, ptr %292, align 4
  %294 = getelementptr i8, ptr %289, i32 %293
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %294, i32 16777216) #14, !srcloc !17
  br label %295

295:                                              ; preds = %291, %287, %266, %263, %2
  %296 = phi i32 [ 32, %2 ], [ 47, %263 ], [ 47, %266 ], [ 47, %287 ], [ 47, %291 ]
  %297 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %298 = load ptr, ptr %297, align 4
  %299 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %300 = load ptr, ptr %299, align 8
  %301 = getelementptr inbounds %struct.platform_device, ptr %300, i32 0, i32 3, i32 11, i32 18
  %302 = load i32, ptr %301, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %310, label %304

304:                                              ; preds = %295
  %305 = getelementptr inbounds %struct.platform_device, ptr %300, i32 0, i32 3, i32 11, i32 15
  %306 = load i16, ptr %305, align 8
  %307 = and i16 %306, 7
  %308 = icmp eq i16 %307, 0
  br i1 %308, label %309, label %310, !prof !15

309:                                              ; preds = %304
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %310

310:                                              ; preds = %309, %304, %295
  %311 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %298, i32 0, i32 5
  %312 = load i32, ptr %311, align 4
  %313 = icmp ugt i32 %312, 29
  br i1 %313, label %317, label %314

314:                                              ; preds = %310
  %315 = load ptr, ptr %299, align 8
  %316 = getelementptr inbounds %struct.platform_device, ptr %315, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %316, ptr noundef nonnull @.str.16, i32 noundef 29) #15
  br label %346

317:                                              ; preds = %310
  %318 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %298, i32 0, i32 4
  %319 = load ptr, ptr %318, align 8
  %320 = getelementptr %struct.vc4_hdmi_register, ptr %319, i32 29, i32 1
  %321 = load i32, ptr %320, align 4
  switch i32 %321, label %346 [
    i32 2, label %322
    i32 1, label %324
    i32 4, label %326
    i32 3, label %328
    i32 5, label %330
    i32 6, label %332
    i32 7, label %334
    i32 8, label %336
  ]

322:                                              ; preds = %317
  %323 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %338

324:                                              ; preds = %317
  %325 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %338

326:                                              ; preds = %317
  %327 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %338

328:                                              ; preds = %317
  %329 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %338

330:                                              ; preds = %317
  %331 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %338

332:                                              ; preds = %317
  %333 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %338

334:                                              ; preds = %317
  %335 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %338

336:                                              ; preds = %317
  %337 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %338

338:                                              ; preds = %336, %334, %332, %330, %328, %326, %324, %322
  %339 = phi ptr [ %337, %336 ], [ %335, %334 ], [ %333, %332 ], [ %331, %330 ], [ %329, %328 ], [ %327, %326 ], [ %325, %324 ], [ %323, %322 ]
  %340 = load ptr, ptr %339, align 4
  %341 = icmp eq ptr %340, null
  br i1 %341, label %346, label %342

342:                                              ; preds = %338
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %343 = getelementptr %struct.vc4_hdmi_register, ptr %319, i32 29, i32 2
  %344 = load i32, ptr %343, align 4
  %345 = getelementptr i8, ptr %340, i32 %344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %345, i32 %296) #14, !srcloc !17
  br label %346

346:                                              ; preds = %342, %338, %317, %314
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hdmi_set_timings(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4096
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  %9 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 24
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 23
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = sub nsw i32 %11, %14
  %16 = and i32 %15, 4064
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18, !prof !21

18:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 816, i32 noundef 9, ptr noundef null) #14
  %19 = load i16, ptr %9, align 2
  %20 = load i16, ptr %12, align 4
  %21 = zext i16 %19 to i32
  %22 = zext i16 %20 to i32
  %23 = sub nsw i32 %21, %22
  br label %24

24:                                               ; preds = %18, %3
  %25 = phi i32 [ %23, %18 ], [ %15, %3 ]
  %26 = phi i32 [ %22, %18 ], [ %14, %3 ]
  %27 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 20
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = sub nsw i32 %26, %29
  %31 = and i32 %30, 524160
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33, !prof !21

33:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 818, i32 noundef 9, ptr noundef null) #14
  %34 = load i16, ptr %12, align 4
  %35 = load i16, ptr %27, align 2
  %36 = zext i16 %34 to i32
  %37 = zext i16 %35 to i32
  %38 = sub nsw i32 %36, %37
  br label %39

39:                                               ; preds = %33, %24
  %40 = phi i32 [ %38, %33 ], [ %30, %24 ]
  %41 = phi i32 [ %37, %33 ], [ %29, %24 ]
  %42 = phi i16 [ %35, %33 ], [ %28, %24 ]
  %43 = and i32 %41, 57344
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !21

45:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 819, i32 noundef 9, ptr noundef null) #14
  %46 = load i16, ptr %27, align 2
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi i16 [ %46, %45 ], [ %42, %39 ]
  %49 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 25
  %50 = load i16, ptr %49, align 4
  %51 = zext i16 %50 to i32
  %52 = load i16, ptr %9, align 2
  %53 = zext i16 %52 to i32
  %54 = sub nsw i32 %51, %53
  %55 = icmp ult i32 %54, 512
  br i1 %55, label %62, label %56, !prof !21

56:                                               ; preds = %47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 822, i32 noundef 9, ptr noundef null) #14
  %57 = load i16, ptr %49, align 4
  %58 = load i16, ptr %9, align 2
  %59 = zext i16 %57 to i32
  %60 = zext i16 %58 to i32
  %61 = sub nsw i32 %59, %60
  br label %62

62:                                               ; preds = %56, %47
  %63 = phi i32 [ %61, %56 ], [ %54, %47 ]
  %64 = phi i32 [ %60, %56 ], [ %53, %47 ]
  %65 = phi i32 [ %59, %56 ], [ %51, %47 ]
  %66 = shl i32 %5, 27
  %67 = ashr i32 %66, 31
  %68 = add nsw i32 %67, %65
  %69 = sub nsw i32 %68, %64
  %70 = icmp ult i32 %69, 512
  br i1 %70, label %78, label %71, !prof !21

71:                                               ; preds = %62
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 827, i32 noundef 9, ptr noundef null) #14
  %72 = load i16, ptr %49, align 4
  %73 = load i16, ptr %9, align 2
  %74 = zext i16 %72 to i32
  %75 = zext i16 %73 to i32
  %76 = add nsw i32 %67, %74
  %77 = sub nsw i32 %76, %75
  br label %78

78:                                               ; preds = %71, %62
  %79 = phi i32 [ %77, %71 ], [ %69, %62 ]
  %80 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 30
  %81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %80) #14
  %82 = shl i32 %5, 12
  %83 = and i32 %82, 16384
  %84 = shl i32 %5, 13
  %85 = and i32 %84, 8192
  %86 = or i32 %83, %85
  %87 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  %88 = load i16, ptr %87, align 4
  %89 = zext i16 %88 to i32
  %90 = mul nuw nsw i32 %8, %89
  %91 = and i32 %90, 253952
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93, !prof !21

93:                                               ; preds = %78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 836, i32 noundef 9, ptr noundef null) #14
  %94 = load i16, ptr %87, align 4
  %95 = zext i16 %94 to i32
  %96 = mul nuw nsw i32 %8, %95
  br label %97

97:                                               ; preds = %93, %78
  %98 = phi i32 [ %96, %93 ], [ %90, %78 ]
  %99 = and i32 %98, 8191
  %100 = or i32 %86, %99
  %101 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.platform_device, ptr %104, i32 0, i32 3, i32 11, i32 18
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.platform_device, ptr %104, i32 0, i32 3, i32 11, i32 15
  %110 = load i16, ptr %109, align 8
  %111 = and i16 %110, 7
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %114, !prof !15

113:                                              ; preds = %108
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %114

114:                                              ; preds = %113, %108, %97
  %115 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %102, i32 0, i32 5
  %116 = load i32, ptr %115, align 4
  %117 = icmp ugt i32 %116, 38
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %103, align 8
  %120 = getelementptr inbounds %struct.platform_device, ptr %119, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %120, ptr noundef nonnull @.str.16, i32 noundef 38) #15
  br label %150

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %102, i32 0, i32 4
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr %struct.vc4_hdmi_register, ptr %123, i32 38, i32 1
  %125 = load i32, ptr %124, align 4
  switch i32 %125, label %150 [
    i32 2, label %126
    i32 1, label %128
    i32 4, label %130
    i32 3, label %132
    i32 5, label %134
    i32 6, label %136
    i32 7, label %138
    i32 8, label %140
  ]

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %142

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %142

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %142

132:                                              ; preds = %121
  %133 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %142

134:                                              ; preds = %121
  %135 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %142

136:                                              ; preds = %121
  %137 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %142

138:                                              ; preds = %121
  %139 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %142

140:                                              ; preds = %121
  %141 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %142

142:                                              ; preds = %140, %138, %136, %134, %132, %130, %128, %126
  %143 = phi ptr [ %141, %140 ], [ %139, %138 ], [ %137, %136 ], [ %135, %134 ], [ %133, %132 ], [ %131, %130 ], [ %129, %128 ], [ %127, %126 ]
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %147 = getelementptr %struct.vc4_hdmi_register, ptr %123, i32 38, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr i8, ptr %144, i32 %148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %100) #14, !srcloc !17
  br label %150

150:                                              ; preds = %146, %142, %121, %118
  %151 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 4
  %152 = load i16, ptr %151, align 2
  %153 = zext i16 %152 to i32
  %154 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 3
  %155 = load i16, ptr %154, align 4
  %156 = zext i16 %155 to i32
  %157 = sub nsw i32 %153, %156
  %158 = mul nsw i32 %157, %8
  %159 = and i32 %158, 3072
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %168, label %161, !prof !21

161:                                              ; preds = %150
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 841, i32 noundef 9, ptr noundef null) #14
  %162 = load i16, ptr %151, align 2
  %163 = load i16, ptr %154, align 4
  %164 = zext i16 %162 to i32
  %165 = zext i16 %163 to i32
  %166 = sub nsw i32 %164, %165
  %167 = mul nsw i32 %166, %8
  br label %168

168:                                              ; preds = %161, %150
  %169 = phi i32 [ %167, %161 ], [ %158, %150 ]
  %170 = phi i32 [ %165, %161 ], [ %156, %150 ]
  %171 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 2
  %172 = load i16, ptr %171, align 2
  %173 = zext i16 %172 to i32
  %174 = sub nsw i32 %170, %173
  %175 = mul nsw i32 %174, %8
  %176 = and i32 %175, 4193280
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %185, label %178, !prof !21

178:                                              ; preds = %168
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 844, i32 noundef 9, ptr noundef null) #14
  %179 = load i16, ptr %154, align 4
  %180 = load i16, ptr %171, align 2
  %181 = zext i16 %179 to i32
  %182 = zext i16 %180 to i32
  %183 = sub nsw i32 %181, %182
  %184 = mul nsw i32 %183, %8
  br label %185

185:                                              ; preds = %178, %168
  %186 = phi i32 [ %184, %178 ], [ %175, %168 ]
  %187 = phi i32 [ %182, %178 ], [ %173, %168 ]
  %188 = load i16, ptr %87, align 4
  %189 = zext i16 %188 to i32
  %190 = sub nsw i32 %187, %189
  %191 = mul nsw i32 %190, %8
  %192 = icmp ult i32 %191, 1024
  br i1 %192, label %200, label %193, !prof !21

193:                                              ; preds = %185
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 847, i32 noundef 9, ptr noundef null) #14
  %194 = load i16, ptr %171, align 2
  %195 = load i16, ptr %87, align 4
  %196 = zext i16 %194 to i32
  %197 = zext i16 %195 to i32
  %198 = sub nsw i32 %196, %197
  %199 = mul nsw i32 %198, %8
  br label %200

200:                                              ; preds = %193, %185
  %201 = phi i32 [ %199, %193 ], [ %191, %185 ]
  %202 = shl i32 %169, 20
  %203 = and i32 %202, 1072693248
  %204 = shl nsw i32 %186, 10
  %205 = and i32 %204, 1047552
  %206 = or i32 %205, %203
  %207 = and i32 %79, 511
  %208 = and i32 %63, 511
  %209 = shl i32 %25, 20
  %210 = and i32 %209, 32505856
  %211 = shl nsw i32 %40, 13
  %212 = and i32 %211, 1040384
  %213 = or i32 %212, %210
  %214 = and i16 %48, 8191
  %215 = zext i16 %214 to i32
  %216 = or i32 %213, %215
  %217 = and i32 %201, 1023
  %218 = or i32 %206, %217
  %219 = load ptr, ptr %101, align 4
  %220 = load ptr, ptr %103, align 8
  %221 = getelementptr inbounds %struct.platform_device, ptr %220, i32 0, i32 3, i32 11, i32 18
  %222 = load i32, ptr %221, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %200
  %225 = getelementptr inbounds %struct.platform_device, ptr %220, i32 0, i32 3, i32 11, i32 15
  %226 = load i16, ptr %225, align 8
  %227 = and i16 %226, 7
  %228 = icmp eq i16 %227, 0
  br i1 %228, label %229, label %230, !prof !15

229:                                              ; preds = %224
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %230

230:                                              ; preds = %229, %224, %200
  %231 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %219, i32 0, i32 5
  %232 = load i32, ptr %231, align 4
  %233 = icmp ugt i32 %232, 39
  br i1 %233, label %237, label %234

234:                                              ; preds = %230
  %235 = load ptr, ptr %103, align 8
  %236 = getelementptr inbounds %struct.platform_device, ptr %235, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %236, ptr noundef nonnull @.str.16, i32 noundef 39) #15
  br label %266

237:                                              ; preds = %230
  %238 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %219, i32 0, i32 4
  %239 = load ptr, ptr %238, align 8
  %240 = getelementptr %struct.vc4_hdmi_register, ptr %239, i32 39, i32 1
  %241 = load i32, ptr %240, align 4
  switch i32 %241, label %266 [
    i32 2, label %242
    i32 1, label %244
    i32 4, label %246
    i32 3, label %248
    i32 5, label %250
    i32 6, label %252
    i32 7, label %254
    i32 8, label %256
  ]

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %258

244:                                              ; preds = %237
  %245 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %258

246:                                              ; preds = %237
  %247 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %258

248:                                              ; preds = %237
  %249 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %258

250:                                              ; preds = %237
  %251 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %258

252:                                              ; preds = %237
  %253 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %258

254:                                              ; preds = %237
  %255 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %258

256:                                              ; preds = %237
  %257 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %258

258:                                              ; preds = %256, %254, %252, %250, %248, %246, %244, %242
  %259 = phi ptr [ %257, %256 ], [ %255, %254 ], [ %253, %252 ], [ %251, %250 ], [ %249, %248 ], [ %247, %246 ], [ %245, %244 ], [ %243, %242 ]
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %266, label %262

262:                                              ; preds = %258
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %263 = getelementptr %struct.vc4_hdmi_register, ptr %239, i32 39, i32 2
  %264 = load i32, ptr %263, align 4
  %265 = getelementptr i8, ptr %260, i32 %264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 %218) #14, !srcloc !17
  br label %266

266:                                              ; preds = %262, %258, %237, %234
  %267 = load ptr, ptr %101, align 4
  %268 = load ptr, ptr %103, align 8
  %269 = getelementptr inbounds %struct.platform_device, ptr %268, i32 0, i32 3, i32 11, i32 18
  %270 = load i32, ptr %269, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %278, label %272

272:                                              ; preds = %266
  %273 = getelementptr inbounds %struct.platform_device, ptr %268, i32 0, i32 3, i32 11, i32 15
  %274 = load i16, ptr %273, align 8
  %275 = and i16 %274, 7
  %276 = icmp eq i16 %275, 0
  br i1 %276, label %277, label %278, !prof !15

277:                                              ; preds = %272
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %278

278:                                              ; preds = %277, %272, %266
  %279 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %267, i32 0, i32 5
  %280 = load i32, ptr %279, align 4
  %281 = icmp ugt i32 %280, 76
  br i1 %281, label %285, label %282

282:                                              ; preds = %278
  %283 = load ptr, ptr %103, align 8
  %284 = getelementptr inbounds %struct.platform_device, ptr %283, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %284, ptr noundef nonnull @.str.16, i32 noundef 76) #15
  br label %314

285:                                              ; preds = %278
  %286 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %267, i32 0, i32 4
  %287 = load ptr, ptr %286, align 8
  %288 = getelementptr %struct.vc4_hdmi_register, ptr %287, i32 76, i32 1
  %289 = load i32, ptr %288, align 4
  switch i32 %289, label %314 [
    i32 2, label %290
    i32 1, label %292
    i32 4, label %294
    i32 3, label %296
    i32 5, label %298
    i32 6, label %300
    i32 7, label %302
    i32 8, label %304
  ]

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %306

292:                                              ; preds = %285
  %293 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %306

294:                                              ; preds = %285
  %295 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %306

296:                                              ; preds = %285
  %297 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %306

298:                                              ; preds = %285
  %299 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %306

300:                                              ; preds = %285
  %301 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %306

302:                                              ; preds = %285
  %303 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %306

304:                                              ; preds = %285
  %305 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %306

306:                                              ; preds = %304, %302, %300, %298, %296, %294, %292, %290
  %307 = phi ptr [ %305, %304 ], [ %303, %302 ], [ %301, %300 ], [ %299, %298 ], [ %297, %296 ], [ %295, %294 ], [ %293, %292 ], [ %291, %290 ]
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %314, label %310

310:                                              ; preds = %306
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %311 = getelementptr %struct.vc4_hdmi_register, ptr %287, i32 76, i32 2
  %312 = load i32, ptr %311, align 4
  %313 = getelementptr i8, ptr %308, i32 %312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 %216) #14, !srcloc !17
  br label %314

314:                                              ; preds = %310, %306, %285, %282
  %315 = load ptr, ptr %101, align 4
  %316 = load ptr, ptr %103, align 8
  %317 = getelementptr inbounds %struct.platform_device, ptr %316, i32 0, i32 3, i32 11, i32 18
  %318 = load i32, ptr %317, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %326, label %320

320:                                              ; preds = %314
  %321 = getelementptr inbounds %struct.platform_device, ptr %316, i32 0, i32 3, i32 11, i32 15
  %322 = load i16, ptr %321, align 8
  %323 = and i16 %322, 7
  %324 = icmp eq i16 %323, 0
  br i1 %324, label %325, label %326, !prof !15

325:                                              ; preds = %320
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %326

326:                                              ; preds = %325, %320, %314
  %327 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %315, i32 0, i32 5
  %328 = load i32, ptr %327, align 4
  %329 = icmp ugt i32 %328, 77
  br i1 %329, label %333, label %330

330:                                              ; preds = %326
  %331 = load ptr, ptr %103, align 8
  %332 = getelementptr inbounds %struct.platform_device, ptr %331, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %332, ptr noundef nonnull @.str.16, i32 noundef 77) #15
  br label %362

333:                                              ; preds = %326
  %334 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %315, i32 0, i32 4
  %335 = load ptr, ptr %334, align 8
  %336 = getelementptr %struct.vc4_hdmi_register, ptr %335, i32 77, i32 1
  %337 = load i32, ptr %336, align 4
  switch i32 %337, label %362 [
    i32 2, label %338
    i32 1, label %340
    i32 4, label %342
    i32 3, label %344
    i32 5, label %346
    i32 6, label %348
    i32 7, label %350
    i32 8, label %352
  ]

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %354

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %354

342:                                              ; preds = %333
  %343 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %354

344:                                              ; preds = %333
  %345 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %354

346:                                              ; preds = %333
  %347 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %354

348:                                              ; preds = %333
  %349 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %354

350:                                              ; preds = %333
  %351 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %354

352:                                              ; preds = %333
  %353 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %354

354:                                              ; preds = %352, %350, %348, %346, %344, %342, %340, %338
  %355 = phi ptr [ %353, %352 ], [ %351, %350 ], [ %349, %348 ], [ %347, %346 ], [ %345, %344 ], [ %343, %342 ], [ %341, %340 ], [ %339, %338 ]
  %356 = load ptr, ptr %355, align 4
  %357 = icmp eq ptr %356, null
  br i1 %357, label %362, label %358

358:                                              ; preds = %354
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %359 = getelementptr %struct.vc4_hdmi_register, ptr %335, i32 77, i32 2
  %360 = load i32, ptr %359, align 4
  %361 = getelementptr i8, ptr %356, i32 %360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %361, i32 %216) #14, !srcloc !17
  br label %362

362:                                              ; preds = %358, %354, %333, %330
  %363 = load ptr, ptr %101, align 4
  %364 = load ptr, ptr %103, align 8
  %365 = getelementptr inbounds %struct.platform_device, ptr %364, i32 0, i32 3, i32 11, i32 18
  %366 = load i32, ptr %365, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %374, label %368

368:                                              ; preds = %362
  %369 = getelementptr inbounds %struct.platform_device, ptr %364, i32 0, i32 3, i32 11, i32 15
  %370 = load i16, ptr %369, align 8
  %371 = and i16 %370, 7
  %372 = icmp eq i16 %371, 0
  br i1 %372, label %373, label %374, !prof !15

373:                                              ; preds = %368
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %374

374:                                              ; preds = %373, %368, %362
  %375 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %363, i32 0, i32 5
  %376 = load i32, ptr %375, align 4
  %377 = icmp ugt i32 %376, 78
  br i1 %377, label %381, label %378

378:                                              ; preds = %374
  %379 = load ptr, ptr %103, align 8
  %380 = getelementptr inbounds %struct.platform_device, ptr %379, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %380, ptr noundef nonnull @.str.16, i32 noundef 78) #15
  br label %410

381:                                              ; preds = %374
  %382 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %363, i32 0, i32 4
  %383 = load ptr, ptr %382, align 8
  %384 = getelementptr %struct.vc4_hdmi_register, ptr %383, i32 78, i32 1
  %385 = load i32, ptr %384, align 4
  switch i32 %385, label %410 [
    i32 2, label %386
    i32 1, label %388
    i32 4, label %390
    i32 3, label %392
    i32 5, label %394
    i32 6, label %396
    i32 7, label %398
    i32 8, label %400
  ]

386:                                              ; preds = %381
  %387 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %402

388:                                              ; preds = %381
  %389 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %402

390:                                              ; preds = %381
  %391 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %402

392:                                              ; preds = %381
  %393 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %402

394:                                              ; preds = %381
  %395 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %402

396:                                              ; preds = %381
  %397 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %402

398:                                              ; preds = %381
  %399 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %402

400:                                              ; preds = %381
  %401 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %402

402:                                              ; preds = %400, %398, %396, %394, %392, %390, %388, %386
  %403 = phi ptr [ %401, %400 ], [ %399, %398 ], [ %397, %396 ], [ %395, %394 ], [ %393, %392 ], [ %391, %390 ], [ %389, %388 ], [ %387, %386 ]
  %404 = load ptr, ptr %403, align 4
  %405 = icmp eq ptr %404, null
  br i1 %405, label %410, label %406

406:                                              ; preds = %402
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %407 = getelementptr %struct.vc4_hdmi_register, ptr %383, i32 78, i32 2
  %408 = load i32, ptr %407, align 4
  %409 = getelementptr i8, ptr %404, i32 %408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %409, i32 %207) #14, !srcloc !17
  br label %410

410:                                              ; preds = %406, %402, %381, %378
  %411 = load ptr, ptr %101, align 4
  %412 = load ptr, ptr %103, align 8
  %413 = getelementptr inbounds %struct.platform_device, ptr %412, i32 0, i32 3, i32 11, i32 18
  %414 = load i32, ptr %413, align 4
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %422, label %416

416:                                              ; preds = %410
  %417 = getelementptr inbounds %struct.platform_device, ptr %412, i32 0, i32 3, i32 11, i32 15
  %418 = load i16, ptr %417, align 8
  %419 = and i16 %418, 7
  %420 = icmp eq i16 %419, 0
  br i1 %420, label %421, label %422, !prof !15

421:                                              ; preds = %416
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %422

422:                                              ; preds = %421, %416, %410
  %423 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %411, i32 0, i32 5
  %424 = load i32, ptr %423, align 4
  %425 = icmp ugt i32 %424, 79
  br i1 %425, label %429, label %426

426:                                              ; preds = %422
  %427 = load ptr, ptr %103, align 8
  %428 = getelementptr inbounds %struct.platform_device, ptr %427, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %428, ptr noundef nonnull @.str.16, i32 noundef 79) #15
  br label %458

429:                                              ; preds = %422
  %430 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %411, i32 0, i32 4
  %431 = load ptr, ptr %430, align 8
  %432 = getelementptr %struct.vc4_hdmi_register, ptr %431, i32 79, i32 1
  %433 = load i32, ptr %432, align 4
  switch i32 %433, label %458 [
    i32 2, label %434
    i32 1, label %436
    i32 4, label %438
    i32 3, label %440
    i32 5, label %442
    i32 6, label %444
    i32 7, label %446
    i32 8, label %448
  ]

434:                                              ; preds = %429
  %435 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %450

436:                                              ; preds = %429
  %437 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %450

438:                                              ; preds = %429
  %439 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %450

440:                                              ; preds = %429
  %441 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %450

442:                                              ; preds = %429
  %443 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %450

444:                                              ; preds = %429
  %445 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %450

446:                                              ; preds = %429
  %447 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %450

448:                                              ; preds = %429
  %449 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %450

450:                                              ; preds = %448, %446, %444, %442, %440, %438, %436, %434
  %451 = phi ptr [ %449, %448 ], [ %447, %446 ], [ %445, %444 ], [ %443, %442 ], [ %441, %440 ], [ %439, %438 ], [ %437, %436 ], [ %435, %434 ]
  %452 = load ptr, ptr %451, align 4
  %453 = icmp eq ptr %452, null
  br i1 %453, label %458, label %454

454:                                              ; preds = %450
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %455 = getelementptr %struct.vc4_hdmi_register, ptr %431, i32 79, i32 2
  %456 = load i32, ptr %455, align 4
  %457 = getelementptr i8, ptr %452, i32 %456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %457, i32 %208) #14, !srcloc !17
  br label %458

458:                                              ; preds = %454, %450, %429, %426
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %80, i32 noundef %81) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hdmi_phy_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hdmi_phy_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hdmi_phy_rng_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hdmi_phy_rng_disable(ptr noundef) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_channel_map(ptr nocapture noundef readnone %0, i32 noundef %1) #12 {
  %3 = shl i32 %1, 2
  %4 = and i32 %3, 8
  %5 = shl i32 %1, 5
  %6 = and i32 %5, 128
  %7 = or i32 %6, %4
  %8 = and i32 %1, 8
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 0, i32 1536
  %11 = or i32 %10, %7
  %12 = shl i32 %1, 10
  %13 = and i32 %12, 16384
  %14 = or i32 %13, %11
  %15 = and i32 %1, 32
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 163840
  %18 = or i32 %17, %14
  %19 = and i32 %1, 64
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 1572864
  %22 = or i32 %21, %18
  %23 = and i32 %1, 128
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 0, i32 14680064
  %26 = or i32 %25, %22
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_ioremap_regs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc5_hdmi_init_resources(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call ptr @platform_get_resource_byname(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.118) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %135, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %5, align 4
  %9 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 1, %8
  %12 = add i32 %11, %10
  %13 = tail call ptr @devm_ioremap(ptr noundef %4, i32 noundef %8, i32 noundef %12) #14
  %14 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  store ptr %13, ptr %14, align 8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %135, label %16

16:                                               ; preds = %7
  %17 = tail call ptr @platform_get_resource_byname(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.42) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %135, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %17, align 4
  %21 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 1, %20
  %24 = add i32 %23, %22
  %25 = tail call ptr @devm_ioremap(ptr noundef %4, i32 noundef %20, i32 noundef %24) #14
  %26 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %135, label %28

28:                                               ; preds = %19
  %29 = tail call ptr @platform_get_resource_byname(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.145) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %135, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %29, align 4
  %33 = getelementptr inbounds %struct.resource, ptr %29, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 1, %32
  %36 = add i32 %35, %34
  %37 = tail call ptr @devm_ioremap(ptr noundef %4, i32 noundef %32, i32 noundef %36) #14
  %38 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  store ptr %37, ptr %38, align 8
  %39 = icmp eq ptr %37, null
  br i1 %39, label %135, label %40

40:                                               ; preds = %31
  %41 = tail call ptr @platform_get_resource_byname(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.146) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %135, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %41, align 4
  %45 = getelementptr inbounds %struct.resource, ptr %41, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 1, %44
  %48 = add i32 %47, %46
  %49 = tail call ptr @devm_ioremap(ptr noundef %4, i32 noundef %44, i32 noundef %48) #14
  %50 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  store ptr %49, ptr %50, align 4
  %51 = icmp eq ptr %49, null
  br i1 %51, label %135, label %52

52:                                               ; preds = %43
  %53 = tail call ptr @platform_get_resource_byname(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.147) #14
  %54 = icmp eq ptr %53, null
  br i1 %54, label %135, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %53, align 4
  %57 = getelementptr inbounds %struct.resource, ptr %53, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = sub i32 1, %56
  %60 = add i32 %59, %58
  %61 = tail call ptr @devm_ioremap(ptr noundef %4, i32 noundef %56, i32 noundef %60) #14
  %62 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  store ptr %61, ptr %62, align 8
  %63 = icmp eq ptr %61, null
  br i1 %63, label %135, label %64

64:                                               ; preds = %55
  %65 = tail call ptr @platform_get_resource_byname(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.148) #14
  %66 = icmp eq ptr %65, null
  br i1 %66, label %135, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %65, align 4
  %69 = getelementptr inbounds %struct.resource, ptr %65, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = sub i32 1, %68
  %72 = add i32 %71, %70
  %73 = tail call ptr @devm_ioremap(ptr noundef %4, i32 noundef %68, i32 noundef %72) #14
  %74 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  store ptr %73, ptr %74, align 4
  %75 = icmp eq ptr %73, null
  br i1 %75, label %135, label %76

76:                                               ; preds = %67
  %77 = tail call ptr @platform_get_resource_byname(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.149) #14
  %78 = icmp eq ptr %77, null
  br i1 %78, label %135, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %77, align 4
  %81 = getelementptr inbounds %struct.resource, ptr %77, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = sub i32 1, %80
  %84 = add i32 %83, %82
  %85 = tail call ptr @devm_ioremap(ptr noundef %4, i32 noundef %80, i32 noundef %84) #14
  %86 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  store ptr %85, ptr %86, align 8
  %87 = icmp eq ptr %85, null
  br i1 %87, label %135, label %88

88:                                               ; preds = %79
  %89 = tail call ptr @platform_get_resource_byname(ptr noundef %3, i32 noundef 512, ptr noundef nonnull @.str.150) #14
  %90 = icmp eq ptr %89, null
  br i1 %90, label %135, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr %89, align 4
  %93 = getelementptr inbounds %struct.resource, ptr %89, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = sub i32 1, %92
  %96 = add i32 %95, %94
  %97 = tail call ptr @devm_ioremap(ptr noundef %4, i32 noundef %92, i32 noundef %96) #14
  %98 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  store ptr %97, ptr %98, align 4
  %99 = icmp eq ptr %97, null
  br i1 %99, label %135, label %100

100:                                              ; preds = %91
  %101 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.118) #14
  %102 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 24
  store ptr %101, ptr %102, align 4
  %103 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.119) #14
  %105 = load ptr, ptr %102, align 4
  %106 = ptrtoint ptr %105 to i32
  br label %135

107:                                              ; preds = %100
  %108 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.151) #14
  %109 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 26
  store ptr %108, ptr %109, align 4
  %110 = icmp ugt ptr %108, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.152) #14
  %112 = load ptr, ptr %109, align 4
  %113 = ptrtoint ptr %112 to i32
  br label %135

114:                                              ; preds = %107
  %115 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.153) #14
  %116 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 25
  store ptr %115, ptr %116, align 8
  %117 = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.154) #14
  %119 = load ptr, ptr %116, align 8
  %120 = ptrtoint ptr %119 to i32
  br label %135

121:                                              ; preds = %114
  %122 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.145) #14
  %123 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 22
  store ptr %122, ptr %123, align 4
  %124 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.155) #14
  %126 = load ptr, ptr %123, align 4
  %127 = ptrtoint ptr %126 to i32
  br label %135

128:                                              ; preds = %121
  %129 = tail call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #14
  %130 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 27
  store ptr %129, ptr %130, align 8
  %131 = icmp ugt ptr %129, inttoptr (i32 -4096 to ptr)
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.156) #14
  %133 = load ptr, ptr %130, align 8
  %134 = ptrtoint ptr %133 to i32
  br label %135

135:                                              ; preds = %132, %128, %125, %118, %111, %104, %91, %88, %79, %76, %67, %64, %55, %52, %43, %40, %31, %28, %19, %16, %7, %1
  %136 = phi i32 [ %106, %104 ], [ %113, %111 ], [ %120, %118 ], [ %127, %125 ], [ %134, %132 ], [ -19, %1 ], [ -12, %7 ], [ -19, %16 ], [ -12, %19 ], [ -19, %28 ], [ -12, %31 ], [ -19, %40 ], [ -12, %43 ], [ -19, %52 ], [ -12, %55 ], [ -19, %64 ], [ -12, %67 ], [ -19, %76 ], [ -12, %79 ], [ -19, %88 ], [ -12, %91 ], [ 0, %128 ]
  ret i32 %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc5_hdmi_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @reset_control_reset(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 30
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 11, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 11, i32 15
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 7
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %20, !prof !15

19:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %20

20:                                               ; preds = %19, %14, %1
  %21 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %8, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 33
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %9, align 8
  %26 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.16, i32 noundef 33) #15
  br label %56

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %8, i32 0, i32 4
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr %struct.vc4_hdmi_register, ptr %29, i32 33, i32 1
  %31 = load i32, ptr %30, align 4
  switch i32 %31, label %56 [
    i32 2, label %32
    i32 1, label %34
    i32 4, label %36
    i32 3, label %38
    i32 5, label %40
    i32 6, label %42
    i32 7, label %44
    i32 8, label %46
  ]

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %48

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %48

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %48

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %48

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %48

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %48

44:                                               ; preds = %27
  %45 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %48

46:                                               ; preds = %27
  %47 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %48

48:                                               ; preds = %46, %44, %42, %40, %38, %36, %34, %32
  %49 = phi ptr [ %47, %46 ], [ %45, %44 ], [ %43, %42 ], [ %41, %40 ], [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ]
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %53 = getelementptr %struct.vc4_hdmi_register, ptr %29, i32 33, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %50, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 0) #14, !srcloc !17
  br label %56

56:                                               ; preds = %52, %48, %27, %24
  %57 = load ptr, ptr %7, align 4
  %58 = load ptr, ptr %9, align 8
  %59 = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3, i32 11, i32 18
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3, i32 11, i32 15
  %64 = load i16, ptr %63, align 8
  %65 = and i16 %64, 7
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %68, !prof !15

67:                                               ; preds = %62
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %68

68:                                               ; preds = %67, %62, %56
  %69 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %57, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = icmp ugt i32 %70, 20
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %9, align 8
  %74 = getelementptr inbounds %struct.platform_device, ptr %73, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.16, i32 noundef 20) #15
  br label %109

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %57, i32 0, i32 4
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr %struct.vc4_hdmi_register, ptr %77, i32 20, i32 1
  %79 = load i32, ptr %78, align 4
  switch i32 %79, label %100 [
    i32 2, label %80
    i32 1, label %82
    i32 4, label %84
    i32 3, label %86
    i32 5, label %88
    i32 6, label %90
    i32 7, label %92
    i32 8, label %94
  ]

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %96

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %96

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %96

86:                                               ; preds = %75
  %87 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %96

88:                                               ; preds = %75
  %89 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %96

90:                                               ; preds = %75
  %91 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %96

92:                                               ; preds = %75
  %93 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %96

94:                                               ; preds = %75
  %95 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %96

96:                                               ; preds = %94, %92, %90, %88, %86, %84, %82, %80
  %97 = phi ptr [ %95, %94 ], [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %87, %86 ], [ %85, %84 ], [ %83, %82 ], [ %81, %80 ]
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %96, %75
  %101 = load ptr, ptr %9, align 8
  %102 = getelementptr inbounds %struct.platform_device, ptr %101, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %102, ptr noundef nonnull @.str.30, i32 noundef 20) #15
  br label %109

103:                                              ; preds = %96
  %104 = getelementptr %struct.vc4_hdmi_register, ptr %77, i32 20, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr i8, ptr %98, i32 %105
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  %108 = or i32 %107, 2
  br label %109

109:                                              ; preds = %103, %100, %72
  %110 = phi i32 [ 2, %72 ], [ %108, %103 ], [ 2, %100 ]
  %111 = load ptr, ptr %7, align 4
  %112 = load ptr, ptr %9, align 8
  %113 = getelementptr inbounds %struct.platform_device, ptr %112, i32 0, i32 3, i32 11, i32 18
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.platform_device, ptr %112, i32 0, i32 3, i32 11, i32 15
  %118 = load i16, ptr %117, align 8
  %119 = and i16 %118, 7
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %122, !prof !15

121:                                              ; preds = %116
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %122

122:                                              ; preds = %121, %116, %109
  %123 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %111, i32 0, i32 5
  %124 = load i32, ptr %123, align 4
  %125 = icmp ugt i32 %124, 20
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %9, align 8
  %128 = getelementptr inbounds %struct.platform_device, ptr %127, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %128, ptr noundef nonnull @.str.16, i32 noundef 20) #15
  br label %158

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %111, i32 0, i32 4
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr %struct.vc4_hdmi_register, ptr %131, i32 20, i32 1
  %133 = load i32, ptr %132, align 4
  switch i32 %133, label %158 [
    i32 2, label %134
    i32 1, label %136
    i32 4, label %138
    i32 3, label %140
    i32 5, label %142
    i32 6, label %144
    i32 7, label %146
    i32 8, label %148
  ]

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %150

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %150

138:                                              ; preds = %129
  %139 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %150

140:                                              ; preds = %129
  %141 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %150

142:                                              ; preds = %129
  %143 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %150

144:                                              ; preds = %129
  %145 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %150

146:                                              ; preds = %129
  %147 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %150

148:                                              ; preds = %129
  %149 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %150

150:                                              ; preds = %148, %146, %144, %142, %140, %138, %136, %134
  %151 = phi ptr [ %149, %148 ], [ %147, %146 ], [ %145, %144 ], [ %143, %142 ], [ %141, %140 ], [ %139, %138 ], [ %137, %136 ], [ %135, %134 ]
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %155 = getelementptr %struct.vc4_hdmi_register, ptr %131, i32 20, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr i8, ptr %152, i32 %156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %110) #14, !srcloc !17
  br label %158

158:                                              ; preds = %154, %150, %129, %126
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc5_hdmi_csc_setup(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 30
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 11, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %1, label %12, label %295

12:                                               ; preds = %2
  br i1 %11, label %19, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 11, i32 15
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 7
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19, !prof !15

18:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %19

19:                                               ; preds = %18, %13, %12
  %20 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %6, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 23
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.16, i32 noundef 23) #15
  br label %55

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %6, i32 0, i32 4
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr %struct.vc4_hdmi_register, ptr %28, i32 23, i32 1
  %30 = load i32, ptr %29, align 4
  switch i32 %30, label %55 [
    i32 2, label %31
    i32 1, label %33
    i32 4, label %35
    i32 3, label %37
    i32 5, label %39
    i32 6, label %41
    i32 7, label %43
    i32 8, label %45
  ]

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %47

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %47

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %47

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %47

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %47

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %47

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %47

45:                                               ; preds = %26
  %46 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %47

47:                                               ; preds = %45, %43, %41, %39, %37, %35, %33, %31
  %48 = phi ptr [ %46, %45 ], [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %52 = getelementptr %struct.vc4_hdmi_register, ptr %28, i32 23, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %49, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 7040) #14, !srcloc !17
  br label %55

55:                                               ; preds = %51, %47, %26, %23
  %56 = load ptr, ptr %5, align 4
  %57 = load ptr, ptr %7, align 8
  %58 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3, i32 11, i32 18
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3, i32 11, i32 15
  %63 = load i16, ptr %62, align 8
  %64 = and i16 %63, 7
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %67, !prof !15

66:                                               ; preds = %61
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %67

67:                                               ; preds = %66, %61, %55
  %68 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %56, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = icmp ugt i32 %69, 24
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %7, align 8
  %73 = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.16, i32 noundef 24) #15
  br label %103

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %56, i32 0, i32 4
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr %struct.vc4_hdmi_register, ptr %76, i32 24, i32 1
  %78 = load i32, ptr %77, align 4
  switch i32 %78, label %103 [
    i32 2, label %79
    i32 1, label %81
    i32 4, label %83
    i32 3, label %85
    i32 5, label %87
    i32 6, label %89
    i32 7, label %91
    i32 8, label %93
  ]

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %95

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %95

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %95

85:                                               ; preds = %74
  %86 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %95

87:                                               ; preds = %74
  %88 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %95

89:                                               ; preds = %74
  %90 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %95

91:                                               ; preds = %74
  %92 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %95

93:                                               ; preds = %74
  %94 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %95

95:                                               ; preds = %93, %91, %89, %87, %85, %83, %81, %79
  %96 = phi ptr [ %94, %93 ], [ %92, %91 ], [ %90, %89 ], [ %88, %87 ], [ %86, %85 ], [ %84, %83 ], [ %82, %81 ], [ %80, %79 ]
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %100 = getelementptr %struct.vc4_hdmi_register, ptr %76, i32 24, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr i8, ptr %97, i32 %101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 67108864) #14, !srcloc !17
  br label %103

103:                                              ; preds = %99, %95, %74, %71
  %104 = load ptr, ptr %5, align 4
  %105 = load ptr, ptr %7, align 8
  %106 = getelementptr inbounds %struct.platform_device, ptr %105, i32 0, i32 3, i32 11, i32 18
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.platform_device, ptr %105, i32 0, i32 3, i32 11, i32 15
  %111 = load i16, ptr %110, align 8
  %112 = and i16 %111, 7
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %115, !prof !15

114:                                              ; preds = %109
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %115

115:                                              ; preds = %114, %109, %103
  %116 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %104, i32 0, i32 5
  %117 = load i32, ptr %116, align 4
  %118 = icmp ugt i32 %117, 25
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %7, align 8
  %121 = getelementptr inbounds %struct.platform_device, ptr %120, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %121, ptr noundef nonnull @.str.16, i32 noundef 25) #15
  br label %151

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %104, i32 0, i32 4
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr %struct.vc4_hdmi_register, ptr %124, i32 25, i32 1
  %126 = load i32, ptr %125, align 4
  switch i32 %126, label %151 [
    i32 2, label %127
    i32 1, label %129
    i32 4, label %131
    i32 3, label %133
    i32 5, label %135
    i32 6, label %137
    i32 7, label %139
    i32 8, label %141
  ]

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %143

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %143

131:                                              ; preds = %122
  %132 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %143

133:                                              ; preds = %122
  %134 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %143

135:                                              ; preds = %122
  %136 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %143

137:                                              ; preds = %122
  %138 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %143

139:                                              ; preds = %122
  %140 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %143

141:                                              ; preds = %122
  %142 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %143

143:                                              ; preds = %141, %139, %137, %135, %133, %131, %129, %127
  %144 = phi ptr [ %142, %141 ], [ %140, %139 ], [ %138, %137 ], [ %136, %135 ], [ %134, %133 ], [ %132, %131 ], [ %130, %129 ], [ %128, %127 ]
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %148 = getelementptr %struct.vc4_hdmi_register, ptr %124, i32 25, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr i8, ptr %145, i32 %149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 461373440) #14, !srcloc !17
  br label %151

151:                                              ; preds = %147, %143, %122, %119
  %152 = load ptr, ptr %5, align 4
  %153 = load ptr, ptr %7, align 8
  %154 = getelementptr inbounds %struct.platform_device, ptr %153, i32 0, i32 3, i32 11, i32 18
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.platform_device, ptr %153, i32 0, i32 3, i32 11, i32 15
  %159 = load i16, ptr %158, align 8
  %160 = and i16 %159, 7
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %163, !prof !15

162:                                              ; preds = %157
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %163

163:                                              ; preds = %162, %157, %151
  %164 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %152, i32 0, i32 5
  %165 = load i32, ptr %164, align 4
  %166 = icmp ugt i32 %165, 26
  br i1 %166, label %170, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr %7, align 8
  %169 = getelementptr inbounds %struct.platform_device, ptr %168, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %169, ptr noundef nonnull @.str.16, i32 noundef 26) #15
  br label %199

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %152, i32 0, i32 4
  %172 = load ptr, ptr %171, align 8
  %173 = getelementptr %struct.vc4_hdmi_register, ptr %172, i32 26, i32 1
  %174 = load i32, ptr %173, align 4
  switch i32 %174, label %199 [
    i32 2, label %175
    i32 1, label %177
    i32 4, label %179
    i32 3, label %181
    i32 5, label %183
    i32 6, label %185
    i32 7, label %187
    i32 8, label %189
  ]

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %191

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %191

179:                                              ; preds = %170
  %180 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %191

181:                                              ; preds = %170
  %182 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %191

183:                                              ; preds = %170
  %184 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %191

185:                                              ; preds = %170
  %186 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %191

187:                                              ; preds = %170
  %188 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %191

189:                                              ; preds = %170
  %190 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %191

191:                                              ; preds = %189, %187, %185, %183, %181, %179, %177, %175
  %192 = phi ptr [ %190, %189 ], [ %188, %187 ], [ %186, %185 ], [ %184, %183 ], [ %182, %181 ], [ %180, %179 ], [ %178, %177 ], [ %176, %175 ]
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %196 = getelementptr %struct.vc4_hdmi_register, ptr %172, i32 26, i32 2
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr i8, ptr %193, i32 %197
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 67108864) #14, !srcloc !17
  br label %199

199:                                              ; preds = %195, %191, %170, %167
  %200 = load ptr, ptr %5, align 4
  %201 = load ptr, ptr %7, align 8
  %202 = getelementptr inbounds %struct.platform_device, ptr %201, i32 0, i32 3, i32 11, i32 18
  %203 = load i32, ptr %202, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.platform_device, ptr %201, i32 0, i32 3, i32 11, i32 15
  %207 = load i16, ptr %206, align 8
  %208 = and i16 %207, 7
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %210, label %211, !prof !15

210:                                              ; preds = %205
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %211

211:                                              ; preds = %210, %205, %199
  %212 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %200, i32 0, i32 5
  %213 = load i32, ptr %212, align 4
  %214 = icmp ugt i32 %213, 27
  br i1 %214, label %218, label %215

215:                                              ; preds = %211
  %216 = load ptr, ptr %7, align 8
  %217 = getelementptr inbounds %struct.platform_device, ptr %216, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %217, ptr noundef nonnull @.str.16, i32 noundef 27) #15
  br label %247

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %200, i32 0, i32 4
  %220 = load ptr, ptr %219, align 8
  %221 = getelementptr %struct.vc4_hdmi_register, ptr %220, i32 27, i32 1
  %222 = load i32, ptr %221, align 4
  switch i32 %222, label %247 [
    i32 2, label %223
    i32 1, label %225
    i32 4, label %227
    i32 3, label %229
    i32 5, label %231
    i32 6, label %233
    i32 7, label %235
    i32 8, label %237
  ]

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %239

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %239

227:                                              ; preds = %218
  %228 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %239

229:                                              ; preds = %218
  %230 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %239

231:                                              ; preds = %218
  %232 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %239

233:                                              ; preds = %218
  %234 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %239

235:                                              ; preds = %218
  %236 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %239

237:                                              ; preds = %218
  %238 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %239

239:                                              ; preds = %237, %235, %233, %231, %229, %227, %225, %223
  %240 = phi ptr [ %238, %237 ], [ %236, %235 ], [ %234, %233 ], [ %232, %231 ], [ %230, %229 ], [ %228, %227 ], [ %226, %225 ], [ %224, %223 ]
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %247, label %243

243:                                              ; preds = %239
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %244 = getelementptr %struct.vc4_hdmi_register, ptr %220, i32 27, i32 2
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr i8, ptr %241, i32 %245
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 0) #14, !srcloc !17
  br label %247

247:                                              ; preds = %243, %239, %218, %215
  %248 = load ptr, ptr %5, align 4
  %249 = load ptr, ptr %7, align 8
  %250 = getelementptr inbounds %struct.platform_device, ptr %249, i32 0, i32 3, i32 11, i32 18
  %251 = load i32, ptr %250, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %259, label %253

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.platform_device, ptr %249, i32 0, i32 3, i32 11, i32 15
  %255 = load i16, ptr %254, align 8
  %256 = and i16 %255, 7
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %258, label %259, !prof !15

258:                                              ; preds = %253
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %259

259:                                              ; preds = %258, %253, %247
  %260 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %248, i32 0, i32 5
  %261 = load i32, ptr %260, align 4
  %262 = icmp ugt i32 %261, 28
  br i1 %262, label %266, label %263

263:                                              ; preds = %259
  %264 = load ptr, ptr %7, align 8
  %265 = getelementptr inbounds %struct.platform_device, ptr %264, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %265, ptr noundef nonnull @.str.16, i32 noundef 28) #15
  br label %578

266:                                              ; preds = %259
  %267 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %248, i32 0, i32 4
  %268 = load ptr, ptr %267, align 8
  %269 = getelementptr %struct.vc4_hdmi_register, ptr %268, i32 28, i32 1
  %270 = load i32, ptr %269, align 4
  switch i32 %270, label %578 [
    i32 2, label %271
    i32 1, label %273
    i32 4, label %275
    i32 3, label %277
    i32 5, label %279
    i32 6, label %281
    i32 7, label %283
    i32 8, label %285
  ]

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %287

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %287

275:                                              ; preds = %266
  %276 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %287

277:                                              ; preds = %266
  %278 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %287

279:                                              ; preds = %266
  %280 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %287

281:                                              ; preds = %266
  %282 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %287

283:                                              ; preds = %266
  %284 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %287

285:                                              ; preds = %266
  %286 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %287

287:                                              ; preds = %285, %283, %281, %279, %277, %275, %273, %271
  %288 = phi ptr [ %286, %285 ], [ %284, %283 ], [ %282, %281 ], [ %280, %279 ], [ %278, %277 ], [ %276, %275 ], [ %274, %273 ], [ %272, %271 ]
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %578, label %291

291:                                              ; preds = %287
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %292 = getelementptr %struct.vc4_hdmi_register, ptr %268, i32 28, i32 2
  %293 = load i32, ptr %292, align 4
  %294 = getelementptr i8, ptr %289, i32 %293
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %294, i32 67115904) #14, !srcloc !17
  br label %578

295:                                              ; preds = %2
  br i1 %11, label %302, label %296

296:                                              ; preds = %295
  %297 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 11, i32 15
  %298 = load i16, ptr %297, align 8
  %299 = and i16 %298, 7
  %300 = icmp eq i16 %299, 0
  br i1 %300, label %301, label %302, !prof !15

301:                                              ; preds = %296
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %302

302:                                              ; preds = %301, %296, %295
  %303 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %6, i32 0, i32 5
  %304 = load i32, ptr %303, align 4
  %305 = icmp ugt i32 %304, 23
  br i1 %305, label %309, label %306

306:                                              ; preds = %302
  %307 = load ptr, ptr %7, align 8
  %308 = getelementptr inbounds %struct.platform_device, ptr %307, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %308, ptr noundef nonnull @.str.16, i32 noundef 23) #15
  br label %338

309:                                              ; preds = %302
  %310 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %6, i32 0, i32 4
  %311 = load ptr, ptr %310, align 8
  %312 = getelementptr %struct.vc4_hdmi_register, ptr %311, i32 23, i32 1
  %313 = load i32, ptr %312, align 4
  switch i32 %313, label %338 [
    i32 2, label %314
    i32 1, label %316
    i32 4, label %318
    i32 3, label %320
    i32 5, label %322
    i32 6, label %324
    i32 7, label %326
    i32 8, label %328
  ]

314:                                              ; preds = %309
  %315 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %330

316:                                              ; preds = %309
  %317 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %330

318:                                              ; preds = %309
  %319 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %330

320:                                              ; preds = %309
  %321 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %330

322:                                              ; preds = %309
  %323 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %330

324:                                              ; preds = %309
  %325 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %330

326:                                              ; preds = %309
  %327 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %330

328:                                              ; preds = %309
  %329 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %330

330:                                              ; preds = %328, %326, %324, %322, %320, %318, %316, %314
  %331 = phi ptr [ %329, %328 ], [ %327, %326 ], [ %325, %324 ], [ %323, %322 ], [ %321, %320 ], [ %319, %318 ], [ %317, %316 ], [ %315, %314 ]
  %332 = load ptr, ptr %331, align 4
  %333 = icmp eq ptr %332, null
  br i1 %333, label %338, label %334

334:                                              ; preds = %330
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %335 = getelementptr %struct.vc4_hdmi_register, ptr %311, i32 23, i32 2
  %336 = load i32, ptr %335, align 4
  %337 = getelementptr i8, ptr %332, i32 %336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %337, i32 8192) #14, !srcloc !17
  br label %338

338:                                              ; preds = %334, %330, %309, %306
  %339 = load ptr, ptr %5, align 4
  %340 = load ptr, ptr %7, align 8
  %341 = getelementptr inbounds %struct.platform_device, ptr %340, i32 0, i32 3, i32 11, i32 18
  %342 = load i32, ptr %341, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %350, label %344

344:                                              ; preds = %338
  %345 = getelementptr inbounds %struct.platform_device, ptr %340, i32 0, i32 3, i32 11, i32 15
  %346 = load i16, ptr %345, align 8
  %347 = and i16 %346, 7
  %348 = icmp eq i16 %347, 0
  br i1 %348, label %349, label %350, !prof !15

349:                                              ; preds = %344
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %350

350:                                              ; preds = %349, %344, %338
  %351 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %339, i32 0, i32 5
  %352 = load i32, ptr %351, align 4
  %353 = icmp ugt i32 %352, 24
  br i1 %353, label %357, label %354

354:                                              ; preds = %350
  %355 = load ptr, ptr %7, align 8
  %356 = getelementptr inbounds %struct.platform_device, ptr %355, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %356, ptr noundef nonnull @.str.16, i32 noundef 24) #15
  br label %386

357:                                              ; preds = %350
  %358 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %339, i32 0, i32 4
  %359 = load ptr, ptr %358, align 8
  %360 = getelementptr %struct.vc4_hdmi_register, ptr %359, i32 24, i32 1
  %361 = load i32, ptr %360, align 4
  switch i32 %361, label %386 [
    i32 2, label %362
    i32 1, label %364
    i32 4, label %366
    i32 3, label %368
    i32 5, label %370
    i32 6, label %372
    i32 7, label %374
    i32 8, label %376
  ]

362:                                              ; preds = %357
  %363 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %378

364:                                              ; preds = %357
  %365 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %378

366:                                              ; preds = %357
  %367 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %378

368:                                              ; preds = %357
  %369 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %378

370:                                              ; preds = %357
  %371 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %378

372:                                              ; preds = %357
  %373 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %378

374:                                              ; preds = %357
  %375 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %378

376:                                              ; preds = %357
  %377 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %378

378:                                              ; preds = %376, %374, %372, %370, %368, %366, %364, %362
  %379 = phi ptr [ %377, %376 ], [ %375, %374 ], [ %373, %372 ], [ %371, %370 ], [ %369, %368 ], [ %367, %366 ], [ %365, %364 ], [ %363, %362 ]
  %380 = load ptr, ptr %379, align 4
  %381 = icmp eq ptr %380, null
  br i1 %381, label %386, label %382

382:                                              ; preds = %378
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %383 = getelementptr %struct.vc4_hdmi_register, ptr %359, i32 24, i32 2
  %384 = load i32, ptr %383, align 4
  %385 = getelementptr i8, ptr %380, i32 %384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %385, i32 0) #14, !srcloc !17
  br label %386

386:                                              ; preds = %382, %378, %357, %354
  %387 = load ptr, ptr %5, align 4
  %388 = load ptr, ptr %7, align 8
  %389 = getelementptr inbounds %struct.platform_device, ptr %388, i32 0, i32 3, i32 11, i32 18
  %390 = load i32, ptr %389, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %398, label %392

392:                                              ; preds = %386
  %393 = getelementptr inbounds %struct.platform_device, ptr %388, i32 0, i32 3, i32 11, i32 15
  %394 = load i16, ptr %393, align 8
  %395 = and i16 %394, 7
  %396 = icmp eq i16 %395, 0
  br i1 %396, label %397, label %398, !prof !15

397:                                              ; preds = %392
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %398

398:                                              ; preds = %397, %392, %386
  %399 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %387, i32 0, i32 5
  %400 = load i32, ptr %399, align 4
  %401 = icmp ugt i32 %400, 25
  br i1 %401, label %405, label %402

402:                                              ; preds = %398
  %403 = load ptr, ptr %7, align 8
  %404 = getelementptr inbounds %struct.platform_device, ptr %403, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %404, ptr noundef nonnull @.str.16, i32 noundef 25) #15
  br label %434

405:                                              ; preds = %398
  %406 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %387, i32 0, i32 4
  %407 = load ptr, ptr %406, align 8
  %408 = getelementptr %struct.vc4_hdmi_register, ptr %407, i32 25, i32 1
  %409 = load i32, ptr %408, align 4
  switch i32 %409, label %434 [
    i32 2, label %410
    i32 1, label %412
    i32 4, label %414
    i32 3, label %416
    i32 5, label %418
    i32 6, label %420
    i32 7, label %422
    i32 8, label %424
  ]

410:                                              ; preds = %405
  %411 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %426

412:                                              ; preds = %405
  %413 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %426

414:                                              ; preds = %405
  %415 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %426

416:                                              ; preds = %405
  %417 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %426

418:                                              ; preds = %405
  %419 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %426

420:                                              ; preds = %405
  %421 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %426

422:                                              ; preds = %405
  %423 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %426

424:                                              ; preds = %405
  %425 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %426

426:                                              ; preds = %424, %422, %420, %418, %416, %414, %412, %410
  %427 = phi ptr [ %425, %424 ], [ %423, %422 ], [ %421, %420 ], [ %419, %418 ], [ %417, %416 ], [ %415, %414 ], [ %413, %412 ], [ %411, %410 ]
  %428 = load ptr, ptr %427, align 4
  %429 = icmp eq ptr %428, null
  br i1 %429, label %434, label %430

430:                                              ; preds = %426
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %431 = getelementptr %struct.vc4_hdmi_register, ptr %407, i32 25, i32 2
  %432 = load i32, ptr %431, align 4
  %433 = getelementptr i8, ptr %428, i32 %432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %433, i32 536870912) #14, !srcloc !17
  br label %434

434:                                              ; preds = %430, %426, %405, %402
  %435 = load ptr, ptr %5, align 4
  %436 = load ptr, ptr %7, align 8
  %437 = getelementptr inbounds %struct.platform_device, ptr %436, i32 0, i32 3, i32 11, i32 18
  %438 = load i32, ptr %437, align 4
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %446, label %440

440:                                              ; preds = %434
  %441 = getelementptr inbounds %struct.platform_device, ptr %436, i32 0, i32 3, i32 11, i32 15
  %442 = load i16, ptr %441, align 8
  %443 = and i16 %442, 7
  %444 = icmp eq i16 %443, 0
  br i1 %444, label %445, label %446, !prof !15

445:                                              ; preds = %440
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %446

446:                                              ; preds = %445, %440, %434
  %447 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %435, i32 0, i32 5
  %448 = load i32, ptr %447, align 4
  %449 = icmp ugt i32 %448, 26
  br i1 %449, label %453, label %450

450:                                              ; preds = %446
  %451 = load ptr, ptr %7, align 8
  %452 = getelementptr inbounds %struct.platform_device, ptr %451, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %452, ptr noundef nonnull @.str.16, i32 noundef 26) #15
  br label %482

453:                                              ; preds = %446
  %454 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %435, i32 0, i32 4
  %455 = load ptr, ptr %454, align 8
  %456 = getelementptr %struct.vc4_hdmi_register, ptr %455, i32 26, i32 1
  %457 = load i32, ptr %456, align 4
  switch i32 %457, label %482 [
    i32 2, label %458
    i32 1, label %460
    i32 4, label %462
    i32 3, label %464
    i32 5, label %466
    i32 6, label %468
    i32 7, label %470
    i32 8, label %472
  ]

458:                                              ; preds = %453
  %459 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %474

460:                                              ; preds = %453
  %461 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %474

462:                                              ; preds = %453
  %463 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %474

464:                                              ; preds = %453
  %465 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %474

466:                                              ; preds = %453
  %467 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %474

468:                                              ; preds = %453
  %469 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %474

470:                                              ; preds = %453
  %471 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %474

472:                                              ; preds = %453
  %473 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %474

474:                                              ; preds = %472, %470, %468, %466, %464, %462, %460, %458
  %475 = phi ptr [ %473, %472 ], [ %471, %470 ], [ %469, %468 ], [ %467, %466 ], [ %465, %464 ], [ %463, %462 ], [ %461, %460 ], [ %459, %458 ]
  %476 = load ptr, ptr %475, align 4
  %477 = icmp eq ptr %476, null
  br i1 %477, label %482, label %478

478:                                              ; preds = %474
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %479 = getelementptr %struct.vc4_hdmi_register, ptr %455, i32 26, i32 2
  %480 = load i32, ptr %479, align 4
  %481 = getelementptr i8, ptr %476, i32 %480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %481, i32 0) #14, !srcloc !17
  br label %482

482:                                              ; preds = %478, %474, %453, %450
  %483 = load ptr, ptr %5, align 4
  %484 = load ptr, ptr %7, align 8
  %485 = getelementptr inbounds %struct.platform_device, ptr %484, i32 0, i32 3, i32 11, i32 18
  %486 = load i32, ptr %485, align 4
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %494, label %488

488:                                              ; preds = %482
  %489 = getelementptr inbounds %struct.platform_device, ptr %484, i32 0, i32 3, i32 11, i32 15
  %490 = load i16, ptr %489, align 8
  %491 = and i16 %490, 7
  %492 = icmp eq i16 %491, 0
  br i1 %492, label %493, label %494, !prof !15

493:                                              ; preds = %488
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %494

494:                                              ; preds = %493, %488, %482
  %495 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %483, i32 0, i32 5
  %496 = load i32, ptr %495, align 4
  %497 = icmp ugt i32 %496, 27
  br i1 %497, label %501, label %498

498:                                              ; preds = %494
  %499 = load ptr, ptr %7, align 8
  %500 = getelementptr inbounds %struct.platform_device, ptr %499, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %500, ptr noundef nonnull @.str.16, i32 noundef 27) #15
  br label %530

501:                                              ; preds = %494
  %502 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %483, i32 0, i32 4
  %503 = load ptr, ptr %502, align 8
  %504 = getelementptr %struct.vc4_hdmi_register, ptr %503, i32 27, i32 1
  %505 = load i32, ptr %504, align 4
  switch i32 %505, label %530 [
    i32 2, label %506
    i32 1, label %508
    i32 4, label %510
    i32 3, label %512
    i32 5, label %514
    i32 6, label %516
    i32 7, label %518
    i32 8, label %520
  ]

506:                                              ; preds = %501
  %507 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %522

508:                                              ; preds = %501
  %509 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %522

510:                                              ; preds = %501
  %511 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %522

512:                                              ; preds = %501
  %513 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %522

514:                                              ; preds = %501
  %515 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %522

516:                                              ; preds = %501
  %517 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %522

518:                                              ; preds = %501
  %519 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %522

520:                                              ; preds = %501
  %521 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %522

522:                                              ; preds = %520, %518, %516, %514, %512, %510, %508, %506
  %523 = phi ptr [ %521, %520 ], [ %519, %518 ], [ %517, %516 ], [ %515, %514 ], [ %513, %512 ], [ %511, %510 ], [ %509, %508 ], [ %507, %506 ]
  %524 = load ptr, ptr %523, align 4
  %525 = icmp eq ptr %524, null
  br i1 %525, label %530, label %526

526:                                              ; preds = %522
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %527 = getelementptr %struct.vc4_hdmi_register, ptr %503, i32 27, i32 2
  %528 = load i32, ptr %527, align 4
  %529 = getelementptr i8, ptr %524, i32 %528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %529, i32 0) #14, !srcloc !17
  br label %530

530:                                              ; preds = %526, %522, %501, %498
  %531 = load ptr, ptr %5, align 4
  %532 = load ptr, ptr %7, align 8
  %533 = getelementptr inbounds %struct.platform_device, ptr %532, i32 0, i32 3, i32 11, i32 18
  %534 = load i32, ptr %533, align 4
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %542, label %536

536:                                              ; preds = %530
  %537 = getelementptr inbounds %struct.platform_device, ptr %532, i32 0, i32 3, i32 11, i32 15
  %538 = load i16, ptr %537, align 8
  %539 = and i16 %538, 7
  %540 = icmp eq i16 %539, 0
  br i1 %540, label %541, label %542, !prof !15

541:                                              ; preds = %536
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %542

542:                                              ; preds = %541, %536, %530
  %543 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %531, i32 0, i32 5
  %544 = load i32, ptr %543, align 4
  %545 = icmp ugt i32 %544, 28
  br i1 %545, label %549, label %546

546:                                              ; preds = %542
  %547 = load ptr, ptr %7, align 8
  %548 = getelementptr inbounds %struct.platform_device, ptr %547, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %548, ptr noundef nonnull @.str.16, i32 noundef 28) #15
  br label %578

549:                                              ; preds = %542
  %550 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %531, i32 0, i32 4
  %551 = load ptr, ptr %550, align 8
  %552 = getelementptr %struct.vc4_hdmi_register, ptr %551, i32 28, i32 1
  %553 = load i32, ptr %552, align 4
  switch i32 %553, label %578 [
    i32 2, label %554
    i32 1, label %556
    i32 4, label %558
    i32 3, label %560
    i32 5, label %562
    i32 6, label %564
    i32 7, label %566
    i32 8, label %568
  ]

554:                                              ; preds = %549
  %555 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %570

556:                                              ; preds = %549
  %557 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %570

558:                                              ; preds = %549
  %559 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %570

560:                                              ; preds = %549
  %561 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %570

562:                                              ; preds = %549
  %563 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %570

564:                                              ; preds = %549
  %565 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %570

566:                                              ; preds = %549
  %567 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %570

568:                                              ; preds = %549
  %569 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %570

570:                                              ; preds = %568, %566, %564, %562, %560, %558, %556, %554
  %571 = phi ptr [ %569, %568 ], [ %567, %566 ], [ %565, %564 ], [ %563, %562 ], [ %561, %560 ], [ %559, %558 ], [ %557, %556 ], [ %555, %554 ]
  %572 = load ptr, ptr %571, align 4
  %573 = icmp eq ptr %572, null
  br i1 %573, label %578, label %574

574:                                              ; preds = %570
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %575 = getelementptr %struct.vc4_hdmi_register, ptr %551, i32 28, i32 2
  %576 = load i32, ptr %575, align 4
  %577 = getelementptr i8, ptr %572, i32 %576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %577, i32 8192) #14, !srcloc !17
  br label %578

578:                                              ; preds = %574, %570, %549, %546, %291, %287, %266, %263
  %579 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %580 = load ptr, ptr %579, align 4
  %581 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %582 = load ptr, ptr %581, align 8
  %583 = getelementptr inbounds %struct.platform_device, ptr %582, i32 0, i32 3, i32 11, i32 18
  %584 = load i32, ptr %583, align 4
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %592, label %586

586:                                              ; preds = %578
  %587 = getelementptr inbounds %struct.platform_device, ptr %582, i32 0, i32 3, i32 11, i32 15
  %588 = load i16, ptr %587, align 8
  %589 = and i16 %588, 7
  %590 = icmp eq i16 %589, 0
  br i1 %590, label %591, label %592, !prof !15

591:                                              ; preds = %586
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %592

592:                                              ; preds = %591, %586, %578
  %593 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %580, i32 0, i32 5
  %594 = load i32, ptr %593, align 4
  %595 = icmp ugt i32 %594, 29
  br i1 %595, label %599, label %596

596:                                              ; preds = %592
  %597 = load ptr, ptr %581, align 8
  %598 = getelementptr inbounds %struct.platform_device, ptr %597, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %598, ptr noundef nonnull @.str.16, i32 noundef 29) #15
  br label %628

599:                                              ; preds = %592
  %600 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %580, i32 0, i32 4
  %601 = load ptr, ptr %600, align 8
  %602 = getelementptr %struct.vc4_hdmi_register, ptr %601, i32 29, i32 1
  %603 = load i32, ptr %602, align 4
  switch i32 %603, label %628 [
    i32 2, label %604
    i32 1, label %606
    i32 4, label %608
    i32 3, label %610
    i32 5, label %612
    i32 6, label %614
    i32 7, label %616
    i32 8, label %618
  ]

604:                                              ; preds = %599
  %605 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %620

606:                                              ; preds = %599
  %607 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %620

608:                                              ; preds = %599
  %609 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %620

610:                                              ; preds = %599
  %611 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %620

612:                                              ; preds = %599
  %613 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %620

614:                                              ; preds = %599
  %615 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %620

616:                                              ; preds = %599
  %617 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %620

618:                                              ; preds = %599
  %619 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %620

620:                                              ; preds = %618, %616, %614, %612, %610, %608, %606, %604
  %621 = phi ptr [ %619, %618 ], [ %617, %616 ], [ %615, %614 ], [ %613, %612 ], [ %611, %610 ], [ %609, %608 ], [ %607, %606 ], [ %605, %604 ]
  %622 = load ptr, ptr %621, align 4
  %623 = icmp eq ptr %622, null
  br i1 %623, label %628, label %624

624:                                              ; preds = %620
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %625 = getelementptr %struct.vc4_hdmi_register, ptr %601, i32 29, i32 2
  %626 = load i32, ptr %625, align 4
  %627 = getelementptr i8, ptr %622, i32 %626
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %627, i32 7) #14, !srcloc !17
  br label %628

628:                                              ; preds = %624, %620, %599, %596
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc5_hdmi_set_timings(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4096
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  %9 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 24
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 23
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = sub nsw i32 %11, %14
  %16 = and i32 %15, 224
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18, !prof !21

18:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 867, i32 noundef 9, ptr noundef null) #14
  %19 = load i16, ptr %9, align 2
  %20 = load i16, ptr %12, align 4
  %21 = zext i16 %19 to i32
  %22 = zext i16 %20 to i32
  %23 = sub nsw i32 %21, %22
  br label %24

24:                                               ; preds = %18, %3
  %25 = phi i32 [ %23, %18 ], [ %15, %3 ]
  %26 = phi i32 [ %22, %18 ], [ %14, %3 ]
  %27 = shl i32 %25, 24
  %28 = and i32 %27, 520093696
  %29 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 20
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = sub nsw i32 %26, %31
  %33 = and i32 %32, 65408
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35, !prof !21

35:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 869, i32 noundef 9, ptr noundef null) #14
  %36 = load i16, ptr %12, align 4
  %37 = load i16, ptr %29, align 2
  %38 = zext i16 %36 to i32
  %39 = zext i16 %37 to i32
  %40 = sub nsw i32 %38, %39
  br label %41

41:                                               ; preds = %35, %24
  %42 = phi i32 [ %40, %35 ], [ %32, %24 ]
  %43 = phi i32 [ %39, %35 ], [ %31, %24 ]
  %44 = phi i16 [ %37, %35 ], [ %30, %24 ]
  %45 = shl i32 %42, 16
  %46 = and i32 %45, 8323072
  %47 = or i32 %46, %28
  %48 = and i32 %43, 57344
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50, !prof !21

50:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 870, i32 noundef 9, ptr noundef null) #14
  %51 = load i16, ptr %29, align 2
  br label %52

52:                                               ; preds = %50, %41
  %53 = phi i16 [ %51, %50 ], [ %44, %41 ]
  %54 = and i16 %53, 8191
  %55 = zext i16 %54 to i32
  %56 = or i32 %47, %55
  %57 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 25
  %58 = load i16, ptr %57, align 4
  %59 = zext i16 %58 to i32
  %60 = load i16, ptr %9, align 2
  %61 = zext i16 %60 to i32
  %62 = sub nsw i32 %59, %61
  %63 = icmp ult i32 %62, 512
  br i1 %63, label %70, label %64, !prof !21

64:                                               ; preds = %52
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 873, i32 noundef 9, ptr noundef null) #14
  %65 = load i16, ptr %57, align 4
  %66 = load i16, ptr %9, align 2
  %67 = zext i16 %65 to i32
  %68 = zext i16 %66 to i32
  %69 = sub nsw i32 %67, %68
  br label %70

70:                                               ; preds = %64, %52
  %71 = phi i32 [ %69, %64 ], [ %62, %52 ]
  %72 = phi i32 [ %68, %64 ], [ %61, %52 ]
  %73 = phi i32 [ %67, %64 ], [ %59, %52 ]
  %74 = and i32 %71, 511
  %75 = shl i32 %5, 27
  %76 = ashr i32 %75, 31
  %77 = add nsw i32 %76, %73
  %78 = sub nsw i32 %77, %72
  %79 = icmp ult i32 %78, 512
  br i1 %79, label %87, label %80, !prof !21

80:                                               ; preds = %70
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 878, i32 noundef 9, ptr noundef null) #14
  %81 = load i16, ptr %57, align 4
  %82 = load i16, ptr %9, align 2
  %83 = zext i16 %81 to i32
  %84 = zext i16 %82 to i32
  %85 = add nsw i32 %76, %83
  %86 = sub nsw i32 %85, %84
  br label %87

87:                                               ; preds = %80, %70
  %88 = phi i32 [ %86, %80 ], [ %78, %70 ]
  %89 = and i32 %88, 511
  %90 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 30
  %91 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %90) #14
  %92 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.platform_device, ptr %95, i32 0, i32 3, i32 11, i32 18
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.platform_device, ptr %95, i32 0, i32 3, i32 11, i32 15
  %101 = load i16, ptr %100, align 8
  %102 = and i16 %101, 7
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %105, !prof !15

104:                                              ; preds = %99
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %105

105:                                              ; preds = %104, %99, %87
  %106 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %93, i32 0, i32 5
  %107 = load i32, ptr %106, align 4
  %108 = icmp ugt i32 %107, 75
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr %94, align 8
  %111 = getelementptr inbounds %struct.platform_device, ptr %110, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.16, i32 noundef 75) #15
  br label %141

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %93, i32 0, i32 4
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr %struct.vc4_hdmi_register, ptr %114, i32 75, i32 1
  %116 = load i32, ptr %115, align 4
  switch i32 %116, label %141 [
    i32 2, label %117
    i32 1, label %119
    i32 4, label %121
    i32 3, label %123
    i32 5, label %125
    i32 6, label %127
    i32 7, label %129
    i32 8, label %131
  ]

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %133

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %133

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %133

123:                                              ; preds = %112
  %124 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %133

125:                                              ; preds = %112
  %126 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %133

127:                                              ; preds = %112
  %128 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %133

129:                                              ; preds = %112
  %130 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %133

131:                                              ; preds = %112
  %132 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %133

133:                                              ; preds = %131, %129, %127, %125, %123, %121, %119, %117
  %134 = phi ptr [ %132, %131 ], [ %130, %129 ], [ %128, %127 ], [ %126, %125 ], [ %124, %123 ], [ %122, %121 ], [ %120, %119 ], [ %118, %117 ]
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %138 = getelementptr %struct.vc4_hdmi_register, ptr %114, i32 75, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr i8, ptr %135, i32 %139
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 3489825) #14, !srcloc !17
  br label %141

141:                                              ; preds = %137, %133, %112, %109
  %142 = shl i32 %5, 13
  %143 = and i32 %142, 32768
  %144 = shl i32 %5, 14
  %145 = and i32 %144, 16384
  %146 = or i32 %143, %145
  %147 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  %148 = load i16, ptr %147, align 4
  %149 = zext i16 %148 to i32
  %150 = mul nuw nsw i32 %8, %149
  %151 = and i32 %150, 245760
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %157, label %153, !prof !21

153:                                              ; preds = %141
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 891, i32 noundef 9, ptr noundef null) #14
  %154 = load i16, ptr %147, align 4
  %155 = zext i16 %154 to i32
  %156 = mul nuw nsw i32 %8, %155
  br label %157

157:                                              ; preds = %153, %141
  %158 = phi i32 [ %156, %153 ], [ %150, %141 ]
  %159 = phi i32 [ %155, %153 ], [ %149, %141 ]
  %160 = and i32 %158, 16383
  %161 = or i32 %146, %160
  %162 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 2
  %163 = load i16, ptr %162, align 2
  %164 = zext i16 %163 to i32
  %165 = sub nsw i32 %164, %159
  %166 = mul nsw i32 %165, %8
  %167 = and i32 %166, 57344
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %176, label %169, !prof !21

169:                                              ; preds = %157
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 894, i32 noundef 9, ptr noundef null) #14
  %170 = load i16, ptr %162, align 2
  %171 = load i16, ptr %147, align 4
  %172 = zext i16 %170 to i32
  %173 = zext i16 %171 to i32
  %174 = sub nsw i32 %172, %173
  %175 = mul nsw i32 %174, %8
  br label %176

176:                                              ; preds = %169, %157
  %177 = phi i32 [ %175, %169 ], [ %166, %157 ]
  %178 = shl i32 %177, 16
  %179 = and i32 %178, 536805376
  %180 = or i32 %161, %179
  %181 = load ptr, ptr %92, align 4
  %182 = load ptr, ptr %94, align 8
  %183 = getelementptr inbounds %struct.platform_device, ptr %182, i32 0, i32 3, i32 11, i32 18
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %176
  %187 = getelementptr inbounds %struct.platform_device, ptr %182, i32 0, i32 3, i32 11, i32 15
  %188 = load i16, ptr %187, align 8
  %189 = and i16 %188, 7
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %191, label %192, !prof !15

191:                                              ; preds = %186
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %192

192:                                              ; preds = %191, %186, %176
  %193 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %181, i32 0, i32 5
  %194 = load i32, ptr %193, align 4
  %195 = icmp ugt i32 %194, 38
  br i1 %195, label %199, label %196

196:                                              ; preds = %192
  %197 = load ptr, ptr %94, align 8
  %198 = getelementptr inbounds %struct.platform_device, ptr %197, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %198, ptr noundef nonnull @.str.16, i32 noundef 38) #15
  br label %228

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %181, i32 0, i32 4
  %201 = load ptr, ptr %200, align 8
  %202 = getelementptr %struct.vc4_hdmi_register, ptr %201, i32 38, i32 1
  %203 = load i32, ptr %202, align 4
  switch i32 %203, label %228 [
    i32 2, label %204
    i32 1, label %206
    i32 4, label %208
    i32 3, label %210
    i32 5, label %212
    i32 6, label %214
    i32 7, label %216
    i32 8, label %218
  ]

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %220

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %220

208:                                              ; preds = %199
  %209 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %220

210:                                              ; preds = %199
  %211 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %220

212:                                              ; preds = %199
  %213 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %220

214:                                              ; preds = %199
  %215 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %220

216:                                              ; preds = %199
  %217 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %220

218:                                              ; preds = %199
  %219 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %220

220:                                              ; preds = %218, %216, %214, %212, %210, %208, %206, %204
  %221 = phi ptr [ %219, %218 ], [ %217, %216 ], [ %215, %214 ], [ %213, %212 ], [ %211, %210 ], [ %209, %208 ], [ %207, %206 ], [ %205, %204 ]
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %228, label %224

224:                                              ; preds = %220
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %225 = getelementptr %struct.vc4_hdmi_register, ptr %201, i32 38, i32 2
  %226 = load i32, ptr %225, align 4
  %227 = getelementptr i8, ptr %222, i32 %226
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 %180) #14, !srcloc !17
  br label %228

228:                                              ; preds = %224, %220, %199, %196
  %229 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 4
  %230 = load i16, ptr %229, align 2
  %231 = zext i16 %230 to i32
  %232 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 3
  %233 = load i16, ptr %232, align 4
  %234 = zext i16 %233 to i32
  %235 = sub nsw i32 %231, %234
  %236 = mul nsw i32 %235, %8
  %237 = and i32 %236, 63488
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %246, label %239, !prof !21

239:                                              ; preds = %228
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 899, i32 noundef 9, ptr noundef null) #14
  %240 = load i16, ptr %229, align 2
  %241 = load i16, ptr %232, align 4
  %242 = zext i16 %240 to i32
  %243 = zext i16 %241 to i32
  %244 = sub nsw i32 %242, %243
  %245 = mul nsw i32 %244, %8
  br label %246

246:                                              ; preds = %239, %228
  %247 = phi i32 [ %245, %239 ], [ %236, %228 ]
  %248 = phi i32 [ %243, %239 ], [ %234, %228 ]
  %249 = shl i32 %247, 16
  %250 = and i32 %249, 134152192
  %251 = load i16, ptr %162, align 2
  %252 = zext i16 %251 to i32
  %253 = sub nsw i32 %248, %252
  %254 = mul nsw i32 %253, %8
  %255 = icmp ult i32 %254, 2048
  br i1 %255, label %263, label %256, !prof !21

256:                                              ; preds = %246
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 902, i32 noundef 9, ptr noundef null) #14
  %257 = load i16, ptr %232, align 4
  %258 = load i16, ptr %162, align 2
  %259 = zext i16 %257 to i32
  %260 = zext i16 %258 to i32
  %261 = sub nsw i32 %259, %260
  %262 = mul nsw i32 %261, %8
  br label %263

263:                                              ; preds = %256, %246
  %264 = phi i32 [ %262, %256 ], [ %254, %246 ]
  %265 = and i32 %264, 2047
  %266 = or i32 %265, %250
  %267 = load ptr, ptr %92, align 4
  %268 = load ptr, ptr %94, align 8
  %269 = getelementptr inbounds %struct.platform_device, ptr %268, i32 0, i32 3, i32 11, i32 18
  %270 = load i32, ptr %269, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %278, label %272

272:                                              ; preds = %263
  %273 = getelementptr inbounds %struct.platform_device, ptr %268, i32 0, i32 3, i32 11, i32 15
  %274 = load i16, ptr %273, align 8
  %275 = and i16 %274, 7
  %276 = icmp eq i16 %275, 0
  br i1 %276, label %277, label %278, !prof !15

277:                                              ; preds = %272
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %278

278:                                              ; preds = %277, %272, %263
  %279 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %267, i32 0, i32 5
  %280 = load i32, ptr %279, align 4
  %281 = icmp ugt i32 %280, 39
  br i1 %281, label %285, label %282

282:                                              ; preds = %278
  %283 = load ptr, ptr %94, align 8
  %284 = getelementptr inbounds %struct.platform_device, ptr %283, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %284, ptr noundef nonnull @.str.16, i32 noundef 39) #15
  br label %314

285:                                              ; preds = %278
  %286 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %267, i32 0, i32 4
  %287 = load ptr, ptr %286, align 8
  %288 = getelementptr %struct.vc4_hdmi_register, ptr %287, i32 39, i32 1
  %289 = load i32, ptr %288, align 4
  switch i32 %289, label %314 [
    i32 2, label %290
    i32 1, label %292
    i32 4, label %294
    i32 3, label %296
    i32 5, label %298
    i32 6, label %300
    i32 7, label %302
    i32 8, label %304
  ]

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %306

292:                                              ; preds = %285
  %293 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %306

294:                                              ; preds = %285
  %295 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %306

296:                                              ; preds = %285
  %297 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %306

298:                                              ; preds = %285
  %299 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %306

300:                                              ; preds = %285
  %301 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %306

302:                                              ; preds = %285
  %303 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %306

304:                                              ; preds = %285
  %305 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %306

306:                                              ; preds = %304, %302, %300, %298, %296, %294, %292, %290
  %307 = phi ptr [ %305, %304 ], [ %303, %302 ], [ %301, %300 ], [ %299, %298 ], [ %297, %296 ], [ %295, %294 ], [ %293, %292 ], [ %291, %290 ]
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %314, label %310

310:                                              ; preds = %306
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %311 = getelementptr %struct.vc4_hdmi_register, ptr %287, i32 39, i32 2
  %312 = load i32, ptr %311, align 4
  %313 = getelementptr i8, ptr %308, i32 %312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %313, i32 %266) #14, !srcloc !17
  br label %314

314:                                              ; preds = %310, %306, %285, %282
  %315 = load ptr, ptr %92, align 4
  %316 = load ptr, ptr %94, align 8
  %317 = getelementptr inbounds %struct.platform_device, ptr %316, i32 0, i32 3, i32 11, i32 18
  %318 = load i32, ptr %317, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %326, label %320

320:                                              ; preds = %314
  %321 = getelementptr inbounds %struct.platform_device, ptr %316, i32 0, i32 3, i32 11, i32 15
  %322 = load i16, ptr %321, align 8
  %323 = and i16 %322, 7
  %324 = icmp eq i16 %323, 0
  br i1 %324, label %325, label %326, !prof !15

325:                                              ; preds = %320
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %326

326:                                              ; preds = %325, %320, %314
  %327 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %315, i32 0, i32 5
  %328 = load i32, ptr %327, align 4
  %329 = icmp ugt i32 %328, 76
  br i1 %329, label %333, label %330

330:                                              ; preds = %326
  %331 = load ptr, ptr %94, align 8
  %332 = getelementptr inbounds %struct.platform_device, ptr %331, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %332, ptr noundef nonnull @.str.16, i32 noundef 76) #15
  br label %362

333:                                              ; preds = %326
  %334 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %315, i32 0, i32 4
  %335 = load ptr, ptr %334, align 8
  %336 = getelementptr %struct.vc4_hdmi_register, ptr %335, i32 76, i32 1
  %337 = load i32, ptr %336, align 4
  switch i32 %337, label %362 [
    i32 2, label %338
    i32 1, label %340
    i32 4, label %342
    i32 3, label %344
    i32 5, label %346
    i32 6, label %348
    i32 7, label %350
    i32 8, label %352
  ]

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %354

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %354

342:                                              ; preds = %333
  %343 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %354

344:                                              ; preds = %333
  %345 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %354

346:                                              ; preds = %333
  %347 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %354

348:                                              ; preds = %333
  %349 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %354

350:                                              ; preds = %333
  %351 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %354

352:                                              ; preds = %333
  %353 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %354

354:                                              ; preds = %352, %350, %348, %346, %344, %342, %340, %338
  %355 = phi ptr [ %353, %352 ], [ %351, %350 ], [ %349, %348 ], [ %347, %346 ], [ %345, %344 ], [ %343, %342 ], [ %341, %340 ], [ %339, %338 ]
  %356 = load ptr, ptr %355, align 4
  %357 = icmp eq ptr %356, null
  br i1 %357, label %362, label %358

358:                                              ; preds = %354
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %359 = getelementptr %struct.vc4_hdmi_register, ptr %335, i32 76, i32 2
  %360 = load i32, ptr %359, align 4
  %361 = getelementptr i8, ptr %356, i32 %360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %361, i32 %56) #14, !srcloc !17
  br label %362

362:                                              ; preds = %358, %354, %333, %330
  %363 = load ptr, ptr %92, align 4
  %364 = load ptr, ptr %94, align 8
  %365 = getelementptr inbounds %struct.platform_device, ptr %364, i32 0, i32 3, i32 11, i32 18
  %366 = load i32, ptr %365, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %374, label %368

368:                                              ; preds = %362
  %369 = getelementptr inbounds %struct.platform_device, ptr %364, i32 0, i32 3, i32 11, i32 15
  %370 = load i16, ptr %369, align 8
  %371 = and i16 %370, 7
  %372 = icmp eq i16 %371, 0
  br i1 %372, label %373, label %374, !prof !15

373:                                              ; preds = %368
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %374

374:                                              ; preds = %373, %368, %362
  %375 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %363, i32 0, i32 5
  %376 = load i32, ptr %375, align 4
  %377 = icmp ugt i32 %376, 77
  br i1 %377, label %381, label %378

378:                                              ; preds = %374
  %379 = load ptr, ptr %94, align 8
  %380 = getelementptr inbounds %struct.platform_device, ptr %379, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %380, ptr noundef nonnull @.str.16, i32 noundef 77) #15
  br label %410

381:                                              ; preds = %374
  %382 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %363, i32 0, i32 4
  %383 = load ptr, ptr %382, align 8
  %384 = getelementptr %struct.vc4_hdmi_register, ptr %383, i32 77, i32 1
  %385 = load i32, ptr %384, align 4
  switch i32 %385, label %410 [
    i32 2, label %386
    i32 1, label %388
    i32 4, label %390
    i32 3, label %392
    i32 5, label %394
    i32 6, label %396
    i32 7, label %398
    i32 8, label %400
  ]

386:                                              ; preds = %381
  %387 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %402

388:                                              ; preds = %381
  %389 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %402

390:                                              ; preds = %381
  %391 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %402

392:                                              ; preds = %381
  %393 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %402

394:                                              ; preds = %381
  %395 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %402

396:                                              ; preds = %381
  %397 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %402

398:                                              ; preds = %381
  %399 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %402

400:                                              ; preds = %381
  %401 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %402

402:                                              ; preds = %400, %398, %396, %394, %392, %390, %388, %386
  %403 = phi ptr [ %401, %400 ], [ %399, %398 ], [ %397, %396 ], [ %395, %394 ], [ %393, %392 ], [ %391, %390 ], [ %389, %388 ], [ %387, %386 ]
  %404 = load ptr, ptr %403, align 4
  %405 = icmp eq ptr %404, null
  br i1 %405, label %410, label %406

406:                                              ; preds = %402
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %407 = getelementptr %struct.vc4_hdmi_register, ptr %383, i32 77, i32 2
  %408 = load i32, ptr %407, align 4
  %409 = getelementptr i8, ptr %404, i32 %408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %409, i32 %56) #14, !srcloc !17
  br label %410

410:                                              ; preds = %406, %402, %381, %378
  %411 = load ptr, ptr %92, align 4
  %412 = load ptr, ptr %94, align 8
  %413 = getelementptr inbounds %struct.platform_device, ptr %412, i32 0, i32 3, i32 11, i32 18
  %414 = load i32, ptr %413, align 4
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %422, label %416

416:                                              ; preds = %410
  %417 = getelementptr inbounds %struct.platform_device, ptr %412, i32 0, i32 3, i32 11, i32 15
  %418 = load i16, ptr %417, align 8
  %419 = and i16 %418, 7
  %420 = icmp eq i16 %419, 0
  br i1 %420, label %421, label %422, !prof !15

421:                                              ; preds = %416
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %422

422:                                              ; preds = %421, %416, %410
  %423 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %411, i32 0, i32 5
  %424 = load i32, ptr %423, align 4
  %425 = icmp ugt i32 %424, 78
  br i1 %425, label %429, label %426

426:                                              ; preds = %422
  %427 = load ptr, ptr %94, align 8
  %428 = getelementptr inbounds %struct.platform_device, ptr %427, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %428, ptr noundef nonnull @.str.16, i32 noundef 78) #15
  br label %458

429:                                              ; preds = %422
  %430 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %411, i32 0, i32 4
  %431 = load ptr, ptr %430, align 8
  %432 = getelementptr %struct.vc4_hdmi_register, ptr %431, i32 78, i32 1
  %433 = load i32, ptr %432, align 4
  switch i32 %433, label %458 [
    i32 2, label %434
    i32 1, label %436
    i32 4, label %438
    i32 3, label %440
    i32 5, label %442
    i32 6, label %444
    i32 7, label %446
    i32 8, label %448
  ]

434:                                              ; preds = %429
  %435 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %450

436:                                              ; preds = %429
  %437 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %450

438:                                              ; preds = %429
  %439 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %450

440:                                              ; preds = %429
  %441 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %450

442:                                              ; preds = %429
  %443 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %450

444:                                              ; preds = %429
  %445 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %450

446:                                              ; preds = %429
  %447 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %450

448:                                              ; preds = %429
  %449 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %450

450:                                              ; preds = %448, %446, %444, %442, %440, %438, %436, %434
  %451 = phi ptr [ %449, %448 ], [ %447, %446 ], [ %445, %444 ], [ %443, %442 ], [ %441, %440 ], [ %439, %438 ], [ %437, %436 ], [ %435, %434 ]
  %452 = load ptr, ptr %451, align 4
  %453 = icmp eq ptr %452, null
  br i1 %453, label %458, label %454

454:                                              ; preds = %450
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %455 = getelementptr %struct.vc4_hdmi_register, ptr %431, i32 78, i32 2
  %456 = load i32, ptr %455, align 4
  %457 = getelementptr i8, ptr %452, i32 %456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %457, i32 %89) #14, !srcloc !17
  br label %458

458:                                              ; preds = %454, %450, %429, %426
  %459 = load ptr, ptr %92, align 4
  %460 = load ptr, ptr %94, align 8
  %461 = getelementptr inbounds %struct.platform_device, ptr %460, i32 0, i32 3, i32 11, i32 18
  %462 = load i32, ptr %461, align 4
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %470, label %464

464:                                              ; preds = %458
  %465 = getelementptr inbounds %struct.platform_device, ptr %460, i32 0, i32 3, i32 11, i32 15
  %466 = load i16, ptr %465, align 8
  %467 = and i16 %466, 7
  %468 = icmp eq i16 %467, 0
  br i1 %468, label %469, label %470, !prof !15

469:                                              ; preds = %464
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %470

470:                                              ; preds = %469, %464, %458
  %471 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %459, i32 0, i32 5
  %472 = load i32, ptr %471, align 4
  %473 = icmp ugt i32 %472, 79
  br i1 %473, label %477, label %474

474:                                              ; preds = %470
  %475 = load ptr, ptr %94, align 8
  %476 = getelementptr inbounds %struct.platform_device, ptr %475, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %476, ptr noundef nonnull @.str.16, i32 noundef 79) #15
  br label %506

477:                                              ; preds = %470
  %478 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %459, i32 0, i32 4
  %479 = load ptr, ptr %478, align 8
  %480 = getelementptr %struct.vc4_hdmi_register, ptr %479, i32 79, i32 1
  %481 = load i32, ptr %480, align 4
  switch i32 %481, label %506 [
    i32 2, label %482
    i32 1, label %484
    i32 4, label %486
    i32 3, label %488
    i32 5, label %490
    i32 6, label %492
    i32 7, label %494
    i32 8, label %496
  ]

482:                                              ; preds = %477
  %483 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %498

484:                                              ; preds = %477
  %485 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %498

486:                                              ; preds = %477
  %487 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %498

488:                                              ; preds = %477
  %489 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %498

490:                                              ; preds = %477
  %491 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %498

492:                                              ; preds = %477
  %493 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %498

494:                                              ; preds = %477
  %495 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %498

496:                                              ; preds = %477
  %497 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %498

498:                                              ; preds = %496, %494, %492, %490, %488, %486, %484, %482
  %499 = phi ptr [ %497, %496 ], [ %495, %494 ], [ %493, %492 ], [ %491, %490 ], [ %489, %488 ], [ %487, %486 ], [ %485, %484 ], [ %483, %482 ]
  %500 = load ptr, ptr %499, align 4
  %501 = icmp eq ptr %500, null
  br i1 %501, label %506, label %502

502:                                              ; preds = %498
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %503 = getelementptr %struct.vc4_hdmi_register, ptr %479, i32 79, i32 2
  %504 = load i32, ptr %503, align 4
  %505 = getelementptr i8, ptr %500, i32 %504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %505, i32 %74) #14, !srcloc !17
  br label %506

506:                                              ; preds = %502, %498, %477, %474
  %507 = getelementptr inbounds %struct.drm_connector_state, ptr %1, i32 0, i32 16
  %508 = load i8, ptr %507, align 1
  switch i8 %508, label %510 [
    i8 12, label %511
    i8 10, label %509
  ]

509:                                              ; preds = %506
  br label %511

510:                                              ; preds = %506
  br label %511

511:                                              ; preds = %510, %509, %506
  %512 = phi i32 [ 0, %510 ], [ -2147483648, %509 ], [ -2147483648, %506 ]
  %513 = phi i32 [ 4, %510 ], [ 5, %509 ], [ 6, %506 ]
  %514 = load ptr, ptr %92, align 4
  %515 = load ptr, ptr %94, align 8
  %516 = getelementptr inbounds %struct.platform_device, ptr %515, i32 0, i32 3, i32 11, i32 18
  %517 = load i32, ptr %516, align 4
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %525, label %519

519:                                              ; preds = %511
  %520 = getelementptr inbounds %struct.platform_device, ptr %515, i32 0, i32 3, i32 11, i32 15
  %521 = load i16, ptr %520, align 8
  %522 = and i16 %521, 7
  %523 = icmp eq i16 %522, 0
  br i1 %523, label %524, label %525, !prof !15

524:                                              ; preds = %519
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %525

525:                                              ; preds = %524, %519, %511
  %526 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %514, i32 0, i32 5
  %527 = load i32, ptr %526, align 4
  %528 = icmp ugt i32 %527, 32
  br i1 %528, label %532, label %529

529:                                              ; preds = %525
  %530 = load ptr, ptr %94, align 8
  %531 = getelementptr inbounds %struct.platform_device, ptr %530, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %531, ptr noundef nonnull @.str.16, i32 noundef 32) #15
  br label %565

532:                                              ; preds = %525
  %533 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %514, i32 0, i32 4
  %534 = load ptr, ptr %533, align 8
  %535 = getelementptr %struct.vc4_hdmi_register, ptr %534, i32 32, i32 1
  %536 = load i32, ptr %535, align 4
  switch i32 %536, label %557 [
    i32 2, label %537
    i32 1, label %539
    i32 4, label %541
    i32 3, label %543
    i32 5, label %545
    i32 6, label %547
    i32 7, label %549
    i32 8, label %551
  ]

537:                                              ; preds = %532
  %538 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %553

539:                                              ; preds = %532
  %540 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %553

541:                                              ; preds = %532
  %542 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %553

543:                                              ; preds = %532
  %544 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %553

545:                                              ; preds = %532
  %546 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %553

547:                                              ; preds = %532
  %548 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %553

549:                                              ; preds = %532
  %550 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %553

551:                                              ; preds = %532
  %552 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %553

553:                                              ; preds = %551, %549, %547, %545, %543, %541, %539, %537
  %554 = phi ptr [ %552, %551 ], [ %550, %549 ], [ %548, %547 ], [ %546, %545 ], [ %544, %543 ], [ %542, %541 ], [ %540, %539 ], [ %538, %537 ]
  %555 = load ptr, ptr %554, align 4
  %556 = icmp eq ptr %555, null
  br i1 %556, label %557, label %560

557:                                              ; preds = %553, %532
  %558 = load ptr, ptr %94, align 8
  %559 = getelementptr inbounds %struct.platform_device, ptr %558, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %559, ptr noundef nonnull @.str.30, i32 noundef 32) #15
  br label %565

560:                                              ; preds = %553
  %561 = getelementptr %struct.vc4_hdmi_register, ptr %534, i32 32, i32 2
  %562 = load i32, ptr %561, align 4
  %563 = getelementptr i8, ptr %555, i32 %562
  %564 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %563) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %565

565:                                              ; preds = %560, %557, %529
  %566 = phi i32 [ 0, %529 ], [ %564, %560 ], [ 0, %557 ]
  %567 = and i32 %566, -1808
  %568 = or i32 %513, %567
  %569 = or i32 %568, 512
  %570 = load ptr, ptr %92, align 4
  %571 = load ptr, ptr %94, align 8
  %572 = getelementptr inbounds %struct.platform_device, ptr %571, i32 0, i32 3, i32 11, i32 18
  %573 = load i32, ptr %572, align 4
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %581, label %575

575:                                              ; preds = %565
  %576 = getelementptr inbounds %struct.platform_device, ptr %571, i32 0, i32 3, i32 11, i32 15
  %577 = load i16, ptr %576, align 8
  %578 = and i16 %577, 7
  %579 = icmp eq i16 %578, 0
  br i1 %579, label %580, label %581, !prof !15

580:                                              ; preds = %575
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %581

581:                                              ; preds = %580, %575, %565
  %582 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %570, i32 0, i32 5
  %583 = load i32, ptr %582, align 4
  %584 = icmp ugt i32 %583, 32
  br i1 %584, label %588, label %585

585:                                              ; preds = %581
  %586 = load ptr, ptr %94, align 8
  %587 = getelementptr inbounds %struct.platform_device, ptr %586, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %587, ptr noundef nonnull @.str.16, i32 noundef 32) #15
  br label %617

588:                                              ; preds = %581
  %589 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %570, i32 0, i32 4
  %590 = load ptr, ptr %589, align 8
  %591 = getelementptr %struct.vc4_hdmi_register, ptr %590, i32 32, i32 1
  %592 = load i32, ptr %591, align 4
  switch i32 %592, label %617 [
    i32 2, label %593
    i32 1, label %595
    i32 4, label %597
    i32 3, label %599
    i32 5, label %601
    i32 6, label %603
    i32 7, label %605
    i32 8, label %607
  ]

593:                                              ; preds = %588
  %594 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %609

595:                                              ; preds = %588
  %596 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %609

597:                                              ; preds = %588
  %598 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %609

599:                                              ; preds = %588
  %600 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %609

601:                                              ; preds = %588
  %602 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %609

603:                                              ; preds = %588
  %604 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %609

605:                                              ; preds = %588
  %606 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %609

607:                                              ; preds = %588
  %608 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %609

609:                                              ; preds = %607, %605, %603, %601, %599, %597, %595, %593
  %610 = phi ptr [ %608, %607 ], [ %606, %605 ], [ %604, %603 ], [ %602, %601 ], [ %600, %599 ], [ %598, %597 ], [ %596, %595 ], [ %594, %593 ]
  %611 = load ptr, ptr %610, align 4
  %612 = icmp eq ptr %611, null
  br i1 %612, label %617, label %613

613:                                              ; preds = %609
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %614 = getelementptr %struct.vc4_hdmi_register, ptr %590, i32 32, i32 2
  %615 = load i32, ptr %614, align 4
  %616 = getelementptr i8, ptr %611, i32 %615
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %616, i32 %569) #14, !srcloc !17
  br label %617

617:                                              ; preds = %613, %609, %588, %585
  %618 = load ptr, ptr %92, align 4
  %619 = load ptr, ptr %94, align 8
  %620 = getelementptr inbounds %struct.platform_device, ptr %619, i32 0, i32 3, i32 11, i32 18
  %621 = load i32, ptr %620, align 4
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %629, label %623

623:                                              ; preds = %617
  %624 = getelementptr inbounds %struct.platform_device, ptr %619, i32 0, i32 3, i32 11, i32 15
  %625 = load i16, ptr %624, align 8
  %626 = and i16 %625, 7
  %627 = icmp eq i16 %626, 0
  br i1 %627, label %628, label %629, !prof !15

628:                                              ; preds = %623
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %629

629:                                              ; preds = %628, %623, %617
  %630 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %618, i32 0, i32 5
  %631 = load i32, ptr %630, align 4
  %632 = icmp ugt i32 %631, 37
  br i1 %632, label %636, label %633

633:                                              ; preds = %629
  %634 = load ptr, ptr %94, align 8
  %635 = getelementptr inbounds %struct.platform_device, ptr %634, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %635, ptr noundef nonnull @.str.16, i32 noundef 37) #15
  br label %669

636:                                              ; preds = %629
  %637 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %618, i32 0, i32 4
  %638 = load ptr, ptr %637, align 8
  %639 = getelementptr %struct.vc4_hdmi_register, ptr %638, i32 37, i32 1
  %640 = load i32, ptr %639, align 4
  switch i32 %640, label %661 [
    i32 2, label %641
    i32 1, label %643
    i32 4, label %645
    i32 3, label %647
    i32 5, label %649
    i32 6, label %651
    i32 7, label %653
    i32 8, label %655
  ]

641:                                              ; preds = %636
  %642 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %657

643:                                              ; preds = %636
  %644 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %657

645:                                              ; preds = %636
  %646 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %657

647:                                              ; preds = %636
  %648 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %657

649:                                              ; preds = %636
  %650 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %657

651:                                              ; preds = %636
  %652 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %657

653:                                              ; preds = %636
  %654 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %657

655:                                              ; preds = %636
  %656 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %657

657:                                              ; preds = %655, %653, %651, %649, %647, %645, %643, %641
  %658 = phi ptr [ %656, %655 ], [ %654, %653 ], [ %652, %651 ], [ %650, %649 ], [ %648, %647 ], [ %646, %645 ], [ %644, %643 ], [ %642, %641 ]
  %659 = load ptr, ptr %658, align 4
  %660 = icmp eq ptr %659, null
  br i1 %660, label %661, label %664

661:                                              ; preds = %657, %636
  %662 = load ptr, ptr %94, align 8
  %663 = getelementptr inbounds %struct.platform_device, ptr %662, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %663, ptr noundef nonnull @.str.30, i32 noundef 37) #15
  br label %669

664:                                              ; preds = %657
  %665 = getelementptr %struct.vc4_hdmi_register, ptr %638, i32 37, i32 2
  %666 = load i32, ptr %665, align 4
  %667 = getelementptr i8, ptr %659, i32 %666
  %668 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %667) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %669

669:                                              ; preds = %664, %661, %633
  %670 = phi i32 [ 0, %633 ], [ %668, %664 ], [ 0, %661 ]
  %671 = shl nuw nsw i32 %513, 8
  %672 = and i32 %670, -65281
  %673 = or i32 %672, %671
  %674 = load ptr, ptr %92, align 4
  %675 = load ptr, ptr %94, align 8
  %676 = getelementptr inbounds %struct.platform_device, ptr %675, i32 0, i32 3, i32 11, i32 18
  %677 = load i32, ptr %676, align 4
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %685, label %679

679:                                              ; preds = %669
  %680 = getelementptr inbounds %struct.platform_device, ptr %675, i32 0, i32 3, i32 11, i32 15
  %681 = load i16, ptr %680, align 8
  %682 = and i16 %681, 7
  %683 = icmp eq i16 %682, 0
  br i1 %683, label %684, label %685, !prof !15

684:                                              ; preds = %679
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %685

685:                                              ; preds = %684, %679, %669
  %686 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %674, i32 0, i32 5
  %687 = load i32, ptr %686, align 4
  %688 = icmp ugt i32 %687, 37
  br i1 %688, label %692, label %689

689:                                              ; preds = %685
  %690 = load ptr, ptr %94, align 8
  %691 = getelementptr inbounds %struct.platform_device, ptr %690, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %691, ptr noundef nonnull @.str.16, i32 noundef 37) #15
  br label %721

692:                                              ; preds = %685
  %693 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %674, i32 0, i32 4
  %694 = load ptr, ptr %693, align 8
  %695 = getelementptr %struct.vc4_hdmi_register, ptr %694, i32 37, i32 1
  %696 = load i32, ptr %695, align 4
  switch i32 %696, label %721 [
    i32 2, label %697
    i32 1, label %699
    i32 4, label %701
    i32 3, label %703
    i32 5, label %705
    i32 6, label %707
    i32 7, label %709
    i32 8, label %711
  ]

697:                                              ; preds = %692
  %698 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %713

699:                                              ; preds = %692
  %700 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %713

701:                                              ; preds = %692
  %702 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %713

703:                                              ; preds = %692
  %704 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %713

705:                                              ; preds = %692
  %706 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %713

707:                                              ; preds = %692
  %708 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %713

709:                                              ; preds = %692
  %710 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %713

711:                                              ; preds = %692
  %712 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %713

713:                                              ; preds = %711, %709, %707, %705, %703, %701, %699, %697
  %714 = phi ptr [ %712, %711 ], [ %710, %709 ], [ %708, %707 ], [ %706, %705 ], [ %704, %703 ], [ %702, %701 ], [ %700, %699 ], [ %698, %697 ]
  %715 = load ptr, ptr %714, align 4
  %716 = icmp eq ptr %715, null
  br i1 %716, label %721, label %717

717:                                              ; preds = %713
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %718 = getelementptr %struct.vc4_hdmi_register, ptr %694, i32 37, i32 2
  %719 = load i32, ptr %718, align 4
  %720 = getelementptr i8, ptr %715, i32 %719
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %720, i32 %673) #14, !srcloc !17
  br label %721

721:                                              ; preds = %717, %713, %692, %689
  %722 = load ptr, ptr %92, align 4
  %723 = load ptr, ptr %94, align 8
  %724 = getelementptr inbounds %struct.platform_device, ptr %723, i32 0, i32 3, i32 11, i32 18
  %725 = load i32, ptr %724, align 4
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %733, label %727

727:                                              ; preds = %721
  %728 = getelementptr inbounds %struct.platform_device, ptr %723, i32 0, i32 3, i32 11, i32 15
  %729 = load i16, ptr %728, align 8
  %730 = and i16 %729, 7
  %731 = icmp eq i16 %730, 0
  br i1 %731, label %732, label %733, !prof !15

732:                                              ; preds = %727
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %733

733:                                              ; preds = %732, %727, %721
  %734 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %722, i32 0, i32 5
  %735 = load i32, ptr %734, align 4
  %736 = icmp ugt i32 %735, 36
  br i1 %736, label %740, label %737

737:                                              ; preds = %733
  %738 = load ptr, ptr %94, align 8
  %739 = getelementptr inbounds %struct.platform_device, ptr %738, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %739, ptr noundef nonnull @.str.16, i32 noundef 36) #15
  br label %773

740:                                              ; preds = %733
  %741 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %722, i32 0, i32 4
  %742 = load ptr, ptr %741, align 8
  %743 = getelementptr %struct.vc4_hdmi_register, ptr %742, i32 36, i32 1
  %744 = load i32, ptr %743, align 4
  switch i32 %744, label %765 [
    i32 2, label %745
    i32 1, label %747
    i32 4, label %749
    i32 3, label %751
    i32 5, label %753
    i32 6, label %755
    i32 7, label %757
    i32 8, label %759
  ]

745:                                              ; preds = %740
  %746 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %761

747:                                              ; preds = %740
  %748 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %761

749:                                              ; preds = %740
  %750 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %761

751:                                              ; preds = %740
  %752 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %761

753:                                              ; preds = %740
  %754 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %761

755:                                              ; preds = %740
  %756 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %761

757:                                              ; preds = %740
  %758 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %761

759:                                              ; preds = %740
  %760 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %761

761:                                              ; preds = %759, %757, %755, %753, %751, %749, %747, %745
  %762 = phi ptr [ %760, %759 ], [ %758, %757 ], [ %756, %755 ], [ %754, %753 ], [ %752, %751 ], [ %750, %749 ], [ %748, %747 ], [ %746, %745 ]
  %763 = load ptr, ptr %762, align 4
  %764 = icmp eq ptr %763, null
  br i1 %764, label %765, label %768

765:                                              ; preds = %761, %740
  %766 = load ptr, ptr %94, align 8
  %767 = getelementptr inbounds %struct.platform_device, ptr %766, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %767, ptr noundef nonnull @.str.30, i32 noundef 36) #15
  br label %773

768:                                              ; preds = %761
  %769 = getelementptr %struct.vc4_hdmi_register, ptr %742, i32 36, i32 2
  %770 = load i32, ptr %769, align 4
  %771 = getelementptr i8, ptr %763, i32 %770
  %772 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %771) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  br label %773

773:                                              ; preds = %768, %765, %737
  %774 = phi i32 [ 0, %737 ], [ %772, %768 ], [ 0, %765 ]
  %775 = and i32 %774, 2147483647
  %776 = or i32 %775, %512
  %777 = load ptr, ptr %92, align 4
  %778 = load ptr, ptr %94, align 8
  %779 = getelementptr inbounds %struct.platform_device, ptr %778, i32 0, i32 3, i32 11, i32 18
  %780 = load i32, ptr %779, align 4
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %788, label %782

782:                                              ; preds = %773
  %783 = getelementptr inbounds %struct.platform_device, ptr %778, i32 0, i32 3, i32 11, i32 15
  %784 = load i16, ptr %783, align 8
  %785 = and i16 %784, 7
  %786 = icmp eq i16 %785, 0
  br i1 %786, label %787, label %788, !prof !15

787:                                              ; preds = %782
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %788

788:                                              ; preds = %787, %782, %773
  %789 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %777, i32 0, i32 5
  %790 = load i32, ptr %789, align 4
  %791 = icmp ugt i32 %790, 36
  br i1 %791, label %795, label %792

792:                                              ; preds = %788
  %793 = load ptr, ptr %94, align 8
  %794 = getelementptr inbounds %struct.platform_device, ptr %793, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %794, ptr noundef nonnull @.str.16, i32 noundef 36) #15
  br label %824

795:                                              ; preds = %788
  %796 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %777, i32 0, i32 4
  %797 = load ptr, ptr %796, align 8
  %798 = getelementptr %struct.vc4_hdmi_register, ptr %797, i32 36, i32 1
  %799 = load i32, ptr %798, align 4
  switch i32 %799, label %824 [
    i32 2, label %800
    i32 1, label %802
    i32 4, label %804
    i32 3, label %806
    i32 5, label %808
    i32 6, label %810
    i32 7, label %812
    i32 8, label %814
  ]

800:                                              ; preds = %795
  %801 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %816

802:                                              ; preds = %795
  %803 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %816

804:                                              ; preds = %795
  %805 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %816

806:                                              ; preds = %795
  %807 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %816

808:                                              ; preds = %795
  %809 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %816

810:                                              ; preds = %795
  %811 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %816

812:                                              ; preds = %795
  %813 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %816

814:                                              ; preds = %795
  %815 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %816

816:                                              ; preds = %814, %812, %810, %808, %806, %804, %802, %800
  %817 = phi ptr [ %815, %814 ], [ %813, %812 ], [ %811, %810 ], [ %809, %808 ], [ %807, %806 ], [ %805, %804 ], [ %803, %802 ], [ %801, %800 ]
  %818 = load ptr, ptr %817, align 4
  %819 = icmp eq ptr %818, null
  br i1 %819, label %824, label %820

820:                                              ; preds = %816
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %821 = getelementptr %struct.vc4_hdmi_register, ptr %797, i32 36, i32 2
  %822 = load i32, ptr %821, align 4
  %823 = getelementptr i8, ptr %818, i32 %822
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %823, i32 %776) #14, !srcloc !17
  br label %824

824:                                              ; preds = %820, %816, %795, %792
  %825 = load ptr, ptr %92, align 4
  %826 = load ptr, ptr %94, align 8
  %827 = getelementptr inbounds %struct.platform_device, ptr %826, i32 0, i32 3, i32 11, i32 18
  %828 = load i32, ptr %827, align 4
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %836, label %830

830:                                              ; preds = %824
  %831 = getelementptr inbounds %struct.platform_device, ptr %826, i32 0, i32 3, i32 11, i32 15
  %832 = load i16, ptr %831, align 8
  %833 = and i16 %832, 7
  %834 = icmp eq i16 %833, 0
  br i1 %834, label %835, label %836, !prof !15

835:                                              ; preds = %830
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 447, i32 noundef 9, ptr noundef null) #14
  br label %836

836:                                              ; preds = %835, %830, %824
  %837 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %825, i32 0, i32 5
  %838 = load i32, ptr %837, align 4
  %839 = icmp ugt i32 %838, 20
  br i1 %839, label %843, label %840

840:                                              ; preds = %836
  %841 = load ptr, ptr %94, align 8
  %842 = getelementptr inbounds %struct.platform_device, ptr %841, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %842, ptr noundef nonnull @.str.16, i32 noundef 20) #15
  br label %872

843:                                              ; preds = %836
  %844 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %825, i32 0, i32 4
  %845 = load ptr, ptr %844, align 8
  %846 = getelementptr %struct.vc4_hdmi_register, ptr %845, i32 20, i32 1
  %847 = load i32, ptr %846, align 4
  switch i32 %847, label %872 [
    i32 2, label %848
    i32 1, label %850
    i32 4, label %852
    i32 3, label %854
    i32 5, label %856
    i32 6, label %858
    i32 7, label %860
    i32 8, label %862
  ]

848:                                              ; preds = %843
  %849 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %864

850:                                              ; preds = %843
  %851 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %864

852:                                              ; preds = %843
  %853 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %864

854:                                              ; preds = %843
  %855 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %864

856:                                              ; preds = %843
  %857 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %864

858:                                              ; preds = %843
  %859 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %864

860:                                              ; preds = %843
  %861 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %864

862:                                              ; preds = %843
  %863 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %864

864:                                              ; preds = %862, %860, %858, %856, %854, %852, %850, %848
  %865 = phi ptr [ %863, %862 ], [ %861, %860 ], [ %859, %858 ], [ %857, %856 ], [ %855, %854 ], [ %853, %852 ], [ %851, %850 ], [ %849, %848 ]
  %866 = load ptr, ptr %865, align 4
  %867 = icmp eq ptr %866, null
  br i1 %867, label %872, label %868

868:                                              ; preds = %864
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !16
  tail call void @arm_heavy_mb() #14
  %869 = getelementptr %struct.vc4_hdmi_register, ptr %845, i32 20, i32 2
  %870 = load i32, ptr %869, align 4
  %871 = getelementptr i8, ptr %866, i32 %870
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %871, i32 0) #14, !srcloc !17
  br label %872

872:                                              ; preds = %868, %864, %843, %840
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %90, i32 noundef %91) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc5_hdmi_phy_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc5_hdmi_phy_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc5_hdmi_phy_rng_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc5_hdmi_phy_rng_disable(ptr noundef) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define internal i32 @vc5_hdmi_channel_map(ptr nocapture noundef readnone %0, i32 noundef %1) #12 {
  %3 = shl i32 %1, 3
  %4 = and i32 %3, 16
  %5 = shl i32 %1, 7
  %6 = and i32 %5, 512
  %7 = or i32 %6, %4
  %8 = and i32 %1, 8
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 0, i32 12288
  %11 = or i32 %10, %7
  %12 = shl i32 %1, 14
  %13 = and i32 %12, 262144
  %14 = or i32 %13, %11
  %15 = and i32 %1, 32
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 5242880
  %18 = or i32 %17, %14
  %19 = and i32 %1, 64
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 100663296
  %22 = or i32 %21, %18
  %23 = and i32 %1, 128
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 0, i32 1879048192
  %26 = or i32 %25, %22
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @vc5_hdmi_hp_detect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 30
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #14
  %4 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 11, i32 15
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 7
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %17, !prof !15

16:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 417, i32 noundef 9, ptr noundef null) #14
  br label %17

17:                                               ; preds = %16, %11, %1
  %18 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 40
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.16, i32 noundef 40) #15
  br label %59

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %5, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 40, i32 1
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %49 [
    i32 2, label %29
    i32 1, label %31
    i32 4, label %33
    i32 3, label %35
    i32 5, label %37
    i32 6, label %39
    i32 7, label %41
    i32 8, label %43
  ]

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 8
  br label %45

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 7
  br label %45

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 10
  br label %45

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 9
  br label %45

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 11
  br label %45

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 12
  br label %45

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 13
  br label %45

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.vc4_hdmi, ptr %0, i32 0, i32 14
  br label %45

45:                                               ; preds = %43, %41, %39, %37, %35, %33, %31, %29
  %46 = phi ptr [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %24
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.30, i32 noundef 40) #15
  br label %59

52:                                               ; preds = %45
  %53 = getelementptr %struct.vc4_hdmi_register, ptr %26, i32 40, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %47, i32 %54
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #14, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %52, %49, %21
  %60 = phi i1 [ false, %21 ], [ %58, %52 ], [ false, %49 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #14
  ret i1 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_hdmi_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vc4_hdmi, ptr %3, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #14
  tail call void @clk_unprepare(ptr noundef %5) #14
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(1) }

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
!9 = !{i64 677320, i64 2148167291, i64 2148167317, i64 2148167364, i64 2148167386, i64 2148167414, i64 2148167434}
!10 = !{i64 2148179503, i64 2148179529, i64 2148179558, i64 2148179592, i64 2148179623, i64 2148179646}
!11 = !{i8 0, i8 2}
!12 = !{i64 2148179010}
!13 = !{i64 663889, i64 663914, i64 663936, i64 663952, i64 663964, i64 663984, i64 664008, i64 664024, i64 664036}
!14 = !{i64 2148179136}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2156698924}
!17 = !{i64 5480006}
!18 = !{i64 5480424}
!19 = !{i64 2156697413}
!20 = !{i64 2159461531}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2159464680}
!23 = !{i64 2159452649}
!24 = !{!25}
!25 = distinct !{!25, !26, !"drm_seq_file_printer: argument 0"}
!26 = distinct !{!26, !"drm_seq_file_printer"}
!27 = !{i64 2156780967}
!28 = !{i64 2156781540}
!29 = !{i64 2156783541}
!30 = !{i64 2156778820}
!31 = !{i64 1367792, i64 1367819, i64 1367841, i64 1367869}
!32 = !{i64 1368200, i64 1368227, i64 1368260, i64 1368281, i64 1368308, i64 1368334}
!33 = !{i64 2148853336, i64 2148853616, i64 2148853950, i64 2148854284}
