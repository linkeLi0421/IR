; ModuleID = '/llk/IR/drivers/gpu/drm/sti/sti_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_hdmi.c"
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
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdmi_phy_ops = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.component_ops = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.drm_prop_enum_list = type { i32, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.sti_hdmi = type { %struct.device, ptr, %struct.drm_display_mode, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, i8, %struct.wait_queue_head, i8, ptr, ptr, i32, i8, ptr, %struct.hdmi_audio_params, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hdmi_audio_params = type { i8, i32, i32, %struct.hdmi_audio_infoframe }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.cec_connector_info = type { i32, %union.anon.76 }
%union.anon.76 = type { [16 x i32] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.66, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.66 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.sti_hdmi_connector = type { %struct.drm_connector, ptr, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.72 }
%union.anon.72 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.hdmi_vendor_infoframe = type { i32, i8, i8, i32, i8, i32, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.77 }
%union.anon.77 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hdmi_codec_daifmt = type { i32, i8, i32 }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }

@hdmi_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tx3g4c28phy_ops }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [9 x i8] c"sti-hdmi\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@sti_hdmi_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @sti_hdmi_probe, ptr @sti_hdmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr @hdmi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__UNIQUE_ID_author275 = internal constant [52 x i8] c"author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description276 = internal constant [46 x i8] c"description=STMicroelectronics SoC DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@tx3g4c28phy_ops = external dso_local global %struct.hdmi_phy_ops, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"\016[drm] %s\0A\00", align 1
@__func__.sti_hdmi_probe = private unnamed_addr constant [15 x i8] c"sti_hdmi_probe\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ddc\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"hdmi-reg\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Invalid hdmi resource\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pix\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Cannot get hdmi_pix clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"tmds\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Cannot get hdmi_tmds clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Cannot get hdmi_phy clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Cannot get hdmi_audio clock\0A\00", align 1
@sti_hdmi_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"&hdmi->wait_event\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Cannot get HDMI irq\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Failed to register HDMI interrupt\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@sti_hdmi_ops = internal constant %struct.component_ops { ptr @sti_hdmi_bind, ptr @sti_hdmi_unbind }, align 4
@.str.18 = private unnamed_addr constant [46 x i8] c"\016[drm] Warning: audio FIFO underrun occurs!\0A\00", align 1
@sti_hdmi_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr null, ptr null, ptr null, ptr null, ptr @sti_hdmi_disable, ptr @sti_hdmi_bridge_nope, ptr @sti_hdmi_set_mode, ptr @sti_hdmi_pre_enable, ptr @sti_hdmi_bridge_nope, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sti_hdmi_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @sti_hdmi_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @sti_hdmi_late_register, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr @sti_hdmi_connector_set_property, ptr @sti_hdmi_connector_get_property, ptr null, ptr null }, align 4
@sti_hdmi_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @sti_hdmi_connector_get_modes, ptr null, ptr @sti_hdmi_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.19 = private unnamed_addr constant [43 x i8] c"Failed to attach a connector to a encoder\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Failed to attach an audio codec\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Failed to init audio infoframe\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"Cannot set rate (%dHz) for hdmi_pix clk\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"Cannot set rate (%dHz) for hdmi_rejection_pll clk\0A\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"Failed to prepare/enable hdmi_pix clk\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"Failed to prepare/enable hdmi_tmds clk\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"Failed to prepare/enable hdmi_rejec_pll clk\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"Unable to start hdmi phy\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"Unable to configure AVI infoframe\0A\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"Unable to configure audio\0A\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"Unable to configure VS infoframe\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"H Sync Negative\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"V Sync Negative\0A\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"failed to setup AVI infoframe: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"failed to pack AVI infoframe: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"unsupported infoframe type: %#x\0A\00", align 1
@.str.38 = private unnamed_addr constant [48 x i8] c"Audio rate = %d Hz, TMDS clock = %d Hz, n = %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"ERROR: Unsupported number of channels (%d)!\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"enter %s, AIF %s\0A\00", align 1
@__func__.hdmi_audio_infoframe_config = private unnamed_addr constant [28 x i8] c"hdmi_audio_infoframe_config\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"failed to pack audio infoframe: %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"failed to pack VS infoframe: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [49 x i8] c"\016[drm] Failed to prepare/enable hdmi_audio clk\0A\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"Warning: HDMI sw reset timeout occurs\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"hdmi cable connected\0A\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"hdmi cable disconnected\0A\00", align 1
@hdmi_debugfs_files = internal global [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.17, ptr @hdmi_dbg_show, i32 0, ptr null }], align 4
@.str.49 = private unnamed_addr constant [21 x i8] c"HDMI: (vaddr = 0x%p)\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"%s  %-25s 0x%08X\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"HDMI_CFG\00", align 1
@.str.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"HDMI_INT_EN\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"HDMI_STA\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"HDMI_ACTIVE_VID_XMIN\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"%-24s %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"Xmin:\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"HDMI_ACTIVE_VID_XMAX\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"Xmax:\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"HDMI_ACTIVE_VID_YMIN\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"Ymin:\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"HDMI_ACTIVE_VID_YMAX\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"Ymax:\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"HDMI_SW_DI_CFG\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"HDMI_AUDIO_CFG\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"HDMI_SPDIF_FIFO_STATUS\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"HDMI_AUDN\00", align 1
@.str.68 = private unnamed_addr constant [41 x i8] c"\0A AVI Infoframe (Data Island slot N=%d):\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_HEAD_WORD(1)\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD0(1)\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD1(1)\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD2(1)\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD3(1)\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD4(1)\00", align 1
@.str.75 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD5(1)\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD6(1)\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"\0A\0A AUDIO Infoframe (Data Island slot N=%d):\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_HEAD_WORD(2)\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD0(2)\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD1(2)\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD2(2)\00", align 1
@.str.82 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD3(2)\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD4(2)\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD5(2)\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD6(2)\00", align 1
@.str.86 = private unnamed_addr constant [54 x i8] c"\0A\0A VENDOR SPECIFIC Infoframe (Data Island slot N=%d):\00", align 1
@.str.87 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_HEAD_WORD(3)\00", align 1
@.str.88 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD0(3)\00", align 1
@.str.89 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD1(3)\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD2(3)\00", align 1
@.str.91 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD3(3)\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD4(3)\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD5(3)\00", align 1
@.str.94 = private unnamed_addr constant [26 x i8] c"HDMI_SW_DI_N_PKT_WORD6(3)\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"%-24s %s\0A\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"mode:\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"DVI\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"\09\09\09\09\09\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"HDCP:\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"HDCP mode:\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"ESS enable\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"OESS enable\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"Hsync polarity:\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"inverted\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"Vsync polarity:\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"YUV422 format:\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"pll:\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"not locked\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"hdmi cable:\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"not connected\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"no transmission\00", align 1
@.str.116 = private unnamed_addr constant [20 x i8] c"single transmission\00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"once every field\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"once every frame\00", align 1
@__const.hdmi_dbg_sw_di_cfg.en_di = private unnamed_addr constant [4 x ptr] [ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], align 4
@.str.119 = private unnamed_addr constant [15 x i8] c"Data island 1:\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"Data island 2:\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"Data island 3:\00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c"Data island 4:\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"Data island 5:\00", align 1
@.str.124 = private unnamed_addr constant [15 x i8] c"Data island 6:\00", align 1
@.str.125 = private unnamed_addr constant [39 x i8] c"failed to set hdmi connector property\0A\00", align 1
@.str.126 = private unnamed_addr constant [39 x i8] c"failed to get hdmi connector property\0A\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"%s : %dx%d cm\0A\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"hdmi monitor\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"dvi monitor\00", align 1
@.str.130 = private unnamed_addr constant [22 x i8] c"Can't read HDMI EDID\0A\00", align 1
@.str.131 = private unnamed_addr constant [41 x i8] c"target rate = %d => available rate = %d\0A\00", align 1
@.str.132 = private unnamed_addr constant [30 x i8] c"hdmi pixclk=%d not supported\0A\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"colorspace\00", align 1
@colorspace_mode_names = internal constant [3 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.135 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.136 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.137 }], align 4
@.str.134 = private unnamed_addr constant [37 x i8] c"fails to create colorspace property\0A\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"yuv422\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"yuv444\00", align 1
@audio_codec_ops = internal constant %struct.hdmi_codec_ops { ptr null, ptr @hdmi_audio_hw_params, ptr null, ptr @hdmi_audio_shutdown, ptr @hdmi_audio_mute, ptr @hdmi_audio_get_eld, ptr null, ptr null, i8 1 }, align 4
@__const.sti_hdmi_register_audio_driver.codec_data = private unnamed_addr constant { ptr, i8, [3 x i8], i32, ptr } { ptr @audio_codec_ops, i8 1, [3 x i8] zeroinitializer, i32 8, ptr null }, align 4
@.str.138 = private unnamed_addr constant [17 x i8] c"hdmi-audio-codec\00", align 1
@.str.139 = private unnamed_addr constant [28 x i8] c"\016[drm] %s Driver bound %s\0A\00", align 1
@.str.140 = private unnamed_addr constant [27 x i8] c"%s: Bad flags %d %d %d %d\0A\00", align 1
@__func__.hdmi_audio_hw_params = private unnamed_addr constant [21 x i8] c"hdmi_audio_hw_params\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_license277], section "llvm.metadata"

@__mod_of__hdmi_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @hdmi_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hdmi_read(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hdmi_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %4 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #8, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hdmi_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.sti_hdmi_probe) #9
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 712, i32 noundef 3520) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %98, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !12
  %11 = call i32 @__of_parse_phandle_with_args(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #8
  %12 = icmp ne i32 %11, 0
  %13 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %14 = icmp eq ptr %13, null
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = call ptr @of_get_i2c_adapter_by_node(ptr noundef nonnull %13) #8
  %18 = getelementptr inbounds %struct.sti_hdmi, ptr %7, i32 0, i32 17
  store ptr %17, ptr %18, align 8
  call void @of_node_put(ptr noundef nonnull %13) #8
  %19 = icmp eq ptr %17, null
  br i1 %19, label %98, label %20

20:                                               ; preds = %16, %9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(472) %7, ptr noundef align 8 dereferenceable(472) %3, i32 472, i1 false)
  %21 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.3) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %94

24:                                               ; preds = %20
  %25 = load i32, ptr %21, align 4
  %26 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 1, %25
  %29 = add i32 %28, %27
  %30 = call ptr @devm_ioremap(ptr noundef %3, i32 noundef %25, i32 noundef %29) #8
  %31 = getelementptr inbounds %struct.sti_hdmi, ptr %7, i32 0, i32 3
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %94, label %33

33:                                               ; preds = %24
  %34 = call ptr @of_match_node(ptr noundef nonnull @hdmi_of_match, ptr noundef %5) #8
  %35 = getelementptr inbounds %struct.of_device_id, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sti_hdmi, ptr %7, i32 0, i32 11
  store ptr %36, ptr %37, align 4
  %38 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  %39 = getelementptr inbounds %struct.sti_hdmi, ptr %7, i32 0, i32 5
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #8
  %42 = ptrtoint ptr %38 to i32
  br label %94

43:                                               ; preds = %33
  %44 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.7) #8
  %45 = getelementptr inbounds %struct.sti_hdmi, ptr %7, i32 0, i32 6
  store ptr %44, ptr %45, align 8
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #8
  %48 = ptrtoint ptr %44 to i32
  br label %94

49:                                               ; preds = %43
  %50 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.9) #8
  %51 = getelementptr inbounds %struct.sti_hdmi, ptr %7, i32 0, i32 7
  store ptr %50, ptr %51, align 4
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #8
  %54 = ptrtoint ptr %50 to i32
  br label %94

55:                                               ; preds = %49
  %56 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.11) #8
  %57 = getelementptr inbounds %struct.sti_hdmi, ptr %7, i32 0, i32 8
  store ptr %56, ptr %57, align 8
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #8
  %60 = ptrtoint ptr %56 to i32
  br label %94

61:                                               ; preds = %55
  %62 = getelementptr i8, ptr %30, i32 16
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %64 = getelementptr inbounds %struct.sti_hdmi, ptr %7, i32 0, i32 13
  %65 = trunc i32 %63 to i8
  %66 = lshr i8 %65, 4
  %67 = and i8 %66, 1
  store i8 %67, ptr %64, align 1
  %68 = getelementptr inbounds %struct.sti_hdmi, ptr %7, i32 0, i32 14
  call void @__init_waitqueue_head(ptr noundef %68, ptr noundef nonnull @.str.13, ptr noundef nonnull @sti_hdmi_probe.__key) #8
  %69 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.14) #8
  %70 = getelementptr inbounds %struct.sti_hdmi, ptr %7, i32 0, i32 9
  store i32 %69, ptr %70, align 4
  %71 = icmp slt i32 %69, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  %73 = load i32, ptr %70, align 4
  br label %94

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load ptr, ptr %3, align 4
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi ptr [ %79, %78 ], [ %76, %74 ]
  %82 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %69, ptr noundef nonnull @hdmi_irq, ptr noundef nonnull @hdmi_irq_thread, i32 noundef 8192, ptr noundef %81, ptr noundef nonnull %7) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %94

85:                                               ; preds = %80
  %86 = call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %87 = getelementptr inbounds %struct.sti_hdmi, ptr %7, i32 0, i32 16
  store ptr %86, ptr %87, align 4
  %88 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = call i32 @reset_control_deassert(ptr noundef %86) #8
  br label %91

91:                                               ; preds = %89, %85
  %92 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %92, align 8
  %93 = call i32 @component_add(ptr noundef %3, ptr noundef nonnull @sti_hdmi_ops) #8
  br label %98

94:                                               ; preds = %84, %72, %59, %53, %47, %41, %24, %23
  %95 = phi i32 [ %42, %41 ], [ %48, %47 ], [ %54, %53 ], [ %60, %59 ], [ %73, %72 ], [ %82, %84 ], [ -12, %23 ], [ -12, %24 ]
  %96 = getelementptr inbounds %struct.sti_hdmi, ptr %7, i32 0, i32 17
  %97 = load ptr, ptr %96, align 8
  call void @i2c_put_adapter(ptr noundef %97) #8
  br label %98

98:                                               ; preds = %94, %91, %16, %1
  %99 = phi i32 [ %95, %94 ], [ %93, %91 ], [ -12, %1 ], [ -517, %16 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hdmi_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  tail call void @i2c_put_adapter(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @platform_device_unregister(ptr noundef nonnull %7) #8
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %11, ptr noundef nonnull @sti_hdmi_ops) #8
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_irq(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %7 = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 10
  store i32 %6, ptr %7, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #8, !srcloc !11
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_irq_thread(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 10
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %12 = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 13
  %13 = trunc i32 %11 to i8
  %14 = lshr i8 %13, 4
  %15 = and i8 %14, 1
  store i8 %15, ptr %12, align 1
  %16 = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %7
  %20 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef nonnull %17) #8
  br label %21

21:                                               ; preds = %19, %7, %2
  %22 = load i32, ptr %3, align 8
  %23 = and i32 %22, 34
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 15
  store i8 1, ptr %26, align 8
  %27 = getelementptr inbounds %struct.sti_hdmi, ptr %1, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %27, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %28 = load i32, ptr %3, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %28, %25 ], [ %22, %21 ]
  %31 = and i32 %30, 256
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %35

35:                                               ; preds = %33, %29
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hdmi_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca %struct.platform_device_info, align 8
  %5 = alloca %struct.hdmi_codec_pdata, align 4
  %6 = alloca %struct.cec_connector_info, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %6, i8 0, i32 68, i1 false), !annotation !12
  %9 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 1
  store ptr %2, ptr %9, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 16
  br label %11

11:                                               ; preds = %15, %3
  %12 = phi ptr [ %10, %3 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %89, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %13, i32 32
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %11

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %13, i32 -4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %89, label %22

22:                                               ; preds = %19
  %23 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 984, i32 noundef 3520) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %89, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %23, i32 0, i32 2
  store ptr %8, ptr %26, align 4
  %27 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 132, i32 noundef 3520) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %89, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.drm_bridge, ptr %27, i32 0, i32 8
  store ptr %8, ptr %30, align 4
  %31 = getelementptr inbounds %struct.drm_bridge, ptr %27, i32 0, i32 7
  store ptr @sti_hdmi_bridge_funcs, ptr %31, align 4
  %32 = tail call i32 @drm_bridge_attach(ptr noundef nonnull %20, ptr noundef nonnull %27, ptr noundef null, i32 noundef 0) #8
  %33 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %23, i32 0, i32 1
  store ptr %20, ptr %33, align 8
  %34 = getelementptr inbounds %struct.drm_connector, ptr %23, i32 0, i32 33
  store i8 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 17
  %36 = load ptr, ptr %35, align 8
  %37 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %2, ptr noundef nonnull %23, ptr noundef nonnull @sti_hdmi_connector_funcs, i32 noundef 11, ptr noundef %36) #8
  %38 = getelementptr inbounds %struct.drm_connector, ptr %23, i32 0, i32 35
  store ptr @sti_hdmi_connector_helper_funcs, ptr %38, align 4
  %39 = load ptr, ptr %26, align 4
  %40 = getelementptr inbounds %struct.sti_hdmi, ptr %39, i32 0, i32 18
  store i32 0, ptr %40, align 4
  %41 = tail call ptr @drm_property_create_enum(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @.str.133, ptr noundef nonnull @colorspace_mode_names, i32 noundef 3) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.134) #8
  br label %49

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %23, i32 0, i32 3
  store ptr %41, ptr %45, align 8
  %46 = getelementptr inbounds %struct.drm_connector, ptr %23, i32 0, i32 6
  %47 = load i32, ptr %40, align 4
  %48 = zext i32 %47 to i64
  tail call void @drm_object_attach_property(ptr noundef %46, ptr noundef nonnull %41, i64 noundef %48) #8
  br label %49

49:                                               ; preds = %44, %43
  %50 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 22
  store ptr %23, ptr %50, align 8
  %51 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %23, ptr noundef nonnull %20) #8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #8
  br label %88

54:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const.sti_hdmi_register_audio_driver.codec_data, i32 16, i1 false) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #8
  %55 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 21
  store i8 0, ptr %55, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #8
  %56 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %56, i8 0, i32 48, i1 false) #8, !annotation !12
  store ptr %0, ptr %4, align 8
  %57 = getelementptr inbounds %struct.platform_device_info, ptr %4, i32 0, i32 1
  store ptr null, ptr %57, align 4
  %58 = getelementptr inbounds %struct.platform_device_info, ptr %4, i32 0, i32 3
  store ptr @.str.138, ptr %58, align 4
  %59 = getelementptr inbounds %struct.platform_device_info, ptr %4, i32 0, i32 4
  store i32 -2, ptr %59, align 8
  %60 = getelementptr inbounds %struct.platform_device_info, ptr %4, i32 0, i32 7
  store ptr %5, ptr %60, align 4
  %61 = getelementptr inbounds %struct.platform_device_info, ptr %4, i32 0, i32 8
  store i32 16, ptr %61, align 8
  %62 = call ptr @platform_device_register_full(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #8
  %63 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 20
  store ptr %62, ptr %63, align 4
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %77, label %65

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load ptr, ptr %0, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi ptr [ %70, %69 ], [ %67, %65 ]
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.138, ptr noundef %72) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  %74 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 21, i32 3
  %75 = call i32 @hdmi_audio_infoframe_init(ptr noundef %74) #8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %78

77:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #8
  br label %88

78:                                               ; preds = %71
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #8
  br label %88

79:                                               ; preds = %71
  call void @cec_fill_conn_info_from_drm(ptr noundef nonnull %6, ptr noundef nonnull %23) #8
  %80 = call ptr @cec_notifier_conn_register(ptr noundef %8, ptr noundef null, ptr noundef nonnull %6) #8
  %81 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 23
  store ptr %80, ptr %81, align 4
  %82 = icmp eq ptr %80, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store ptr null, ptr %50, align 8
  br label %89

84:                                               ; preds = %79
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %85 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i8, ptr %86, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 2097) #8, !srcloc !11
  br label %89

88:                                               ; preds = %78, %77, %53
  store ptr null, ptr %50, align 8
  br label %89

89:                                               ; preds = %88, %84, %83, %25, %22, %19, %11
  %90 = phi i32 [ -22, %88 ], [ 0, %84 ], [ -12, %83 ], [ -22, %19 ], [ -22, %22 ], [ -22, %25 ], [ -22, %11 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %6) #8
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_hdmi_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sti_hdmi, ptr %5, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  tail call void @cec_notifier_conn_unregister(ptr noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_fill_conn_info_from_drm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_conn_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_hdmi_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %7 = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 12
  %8 = load i8, ptr %7, align 8, !range !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %69, label %10

10:                                               ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #8
  %11 = and i32 %6, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %12 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #8, !srcloc !11
  %15 = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.hdmi_phy_ops, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %3) #8
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 560
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %22 = and i32 %21, -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i8, ptr %29, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #8, !srcloc !11
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 560
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %34 = and i32 %33, -49
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i8, ptr %35, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr i8, ptr %37, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr i8, ptr %39, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr i8, ptr %41, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #8, !srcloc !11
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr i8, ptr %43, i32 560
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %46 = and i32 %45, -769
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr i8, ptr %47, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr i8, ptr %49, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr i8, ptr %51, i32 1572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr i8, ptr %53, i32 1576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 0) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %55 = load ptr, ptr %4, align 4
  %56 = getelementptr i8, ptr %55, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 0) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr i8, ptr %57, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 0) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr i8, ptr %59, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 96) #8, !srcloc !11
  %61 = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 7
  %62 = load ptr, ptr %61, align 4
  tail call void @clk_disable(ptr noundef %62) #8
  tail call void @clk_unprepare(ptr noundef %62) #8
  %63 = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 6
  %64 = load ptr, ptr %63, align 8
  tail call void @clk_disable(ptr noundef %64) #8
  tail call void @clk_unprepare(ptr noundef %64) #8
  %65 = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  tail call void @clk_disable(ptr noundef %66) #8
  tail call void @clk_unprepare(ptr noundef %66) #8
  store i8 0, ptr %7, align 8
  %67 = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 23
  %68 = load ptr, ptr %67, align 4
  tail call void @cec_notifier_set_phys_addr(ptr noundef %68, i16 noundef zeroext -1) #8
  br label %69

69:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @sti_hdmi_bridge_nope(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_hdmi_set_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #8
  %6 = getelementptr inbounds %struct.sti_hdmi, ptr %5, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(112) %6, ptr noundef align 4 dereferenceable(112) %1, i32 112, i1 false)
  %7 = getelementptr inbounds %struct.sti_hdmi, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %1, align 4
  %10 = mul i32 %9, 1000
  %11 = tail call i32 @clk_set_rate(ptr noundef %8, i32 noundef %10) #8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.sti_hdmi, ptr %5, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %1, align 4
  %17 = mul i32 %16, 1000
  %18 = tail call i32 @clk_set_rate(ptr noundef %15, i32 noundef %17) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13, %3
  %21 = phi ptr [ @.str.24, %3 ], [ @.str.25, %13 ]
  %22 = load i32, ptr %1, align 4
  %23 = mul i32 %22, 1000
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %21, i32 noundef %23) #8
  br label %24

24:                                               ; preds = %20, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_hdmi_pre_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = alloca %struct.hdmi_vendor_infoframe, align 4
  %4 = alloca [10 x i8], align 1
  %5 = alloca %struct.hdmi_avi_infoframe, align 4
  %6 = alloca [17 x i8], align 1
  %7 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #8
  %9 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 12
  %10 = load i8, ptr %9, align 8, !range !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %184

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_prepare(ptr noundef %14) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = tail call i32 @clk_enable(ptr noundef %14) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %14) #8
  br label %21

21:                                               ; preds = %20, %12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #8
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @clk_prepare(ptr noundef %24) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = tail call i32 @clk_enable(ptr noundef %24) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  tail call void @clk_unprepare(ptr noundef %24) #8
  br label %31

31:                                               ; preds = %30, %22
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27) #8
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @clk_prepare(ptr noundef %34) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = tail call i32 @clk_enable(ptr noundef %34) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  tail call void @clk_unprepare(ptr noundef %34) #8
  br label %41

41:                                               ; preds = %40, %32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #8
  br label %42

42:                                               ; preds = %41, %37
  store i8 1, ptr %9, align 8
  %43 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 11
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = tail call zeroext i1 %45(ptr noundef %8) #8
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #8
  br label %184

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 2
  %50 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %49, i32 noundef 1) #8
  %51 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 2, i32 1
  %52 = load i16, ptr %51, align 4
  %53 = zext i16 %52 to i32
  %54 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %49, i32 noundef %53) #8
  %55 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %49, i32 noundef 0) #8
  %56 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 2, i32 6
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = add nsw i32 %58, -1
  %60 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %49, i32 noundef %59) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %61 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %50) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %64 = load ptr, ptr %61, align 4
  %65 = getelementptr i8, ptr %64, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %54) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %66 = load ptr, ptr %61, align 4
  %67 = getelementptr i8, ptr %66, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %55) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %68 = load ptr, ptr %61, align 4
  %69 = getelementptr i8, ptr %68, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %60) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %70 = load ptr, ptr %61, align 4
  %71 = getelementptr i8, ptr %70, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 2555) #8, !srcloc !11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #8
  %72 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 19
  %73 = load i8, ptr %72, align 8, !range !15
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, i32 12296, i32 12298
  %76 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 2, i32 11
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %48
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33) #8
  %81 = or i32 %75, 16
  %82 = load i32, ptr %76, align 4
  br label %83

83:                                               ; preds = %80, %48
  %84 = phi i32 [ %82, %80 ], [ %77, %48 ]
  %85 = phi i32 [ %81, %80 ], [ %75, %48 ]
  %86 = and i32 %84, 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.34) #8
  %89 = or i32 %85, 64
  br label %90

90:                                               ; preds = %88, %83
  %91 = phi i32 [ %89, %88 ], [ %85, %83 ]
  %92 = or i32 %91, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %93 = load ptr, ptr %61, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %92) #8, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false) #8, !annotation !12
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %6, i8 0, i32 17, i1 false) #8, !annotation !12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #8
  %94 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 22
  %95 = load ptr, ptr %94, align 8
  %96 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %5, ptr noundef %95, ptr noundef %49) #8
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %96) #8
  br label %109

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 18
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %5, i32 0, i32 3
  store i32 %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %5, i32 0, i32 10
  store i32 0, ptr %103, align 4
  %104 = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %5, i32 0, i32 5
  store i32 0, ptr %104, align 4
  %105 = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 17) #8
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36, i32 noundef %105) #8
  br label %109

108:                                              ; preds = %99
  call fastcc void @hdmi_infoframe_write_infopack(ptr noundef %8, ptr noundef nonnull %6, i32 noundef %105) #8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #8
  br label %110

109:                                              ; preds = %107, %98
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30) #8
  br label %110

110:                                              ; preds = %109, %108
  %111 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 21
  %112 = load i8, ptr %111, align 8, !range !15
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = call fastcc i32 @hdmi_audio_configure(ptr noundef %8)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31) #8
  br label %120

118:                                              ; preds = %110
  %119 = call fastcc i32 @hdmi_audio_infoframe_config(ptr noundef %8)
  br label %120

120:                                              ; preds = %118, %117, %114
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #8, !annotation !12
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %4, i8 0, i32 10, i1 false) #8, !annotation !12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #8
  %121 = load ptr, ptr %94, align 8
  %122 = call i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef nonnull %3, ptr noundef %121, ptr noundef %49) #8
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = call i32 @hdmi_vendor_infoframe_pack(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 10) #8
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %124
  call fastcc void @hdmi_infoframe_write_infopack(ptr noundef %8, ptr noundef nonnull %4, i32 noundef %125) #8
  br label %128

128:                                              ; preds = %127, %120
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  br label %130

129:                                              ; preds = %124
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %125) #8
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32) #8
  br label %130

130:                                              ; preds = %129, %128
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #8
  %131 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 8
  %132 = load ptr, ptr %131, align 8
  %133 = call i32 @clk_prepare(ptr noundef %132) #8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = call i32 @clk_enable(ptr noundef %132) #8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  call void @clk_unprepare(ptr noundef %132) #8
  br label %139

139:                                              ; preds = %138, %130
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #9
  br label %141

141:                                              ; preds = %139, %135
  %142 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 15
  store i8 0, ptr %142, align 8
  %143 = load ptr, ptr %61, align 4
  %144 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %145 = or i32 %144, -2147483648
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %146 = load ptr, ptr %61, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %145) #8, !srcloc !11
  %147 = load i8, ptr %142, align 8, !range !15
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #8, !annotation !12
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #8
  %150 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 14
  %151 = call i32 @prepare_to_wait_event(ptr noundef %150, ptr noundef nonnull %2, i32 noundef 1) #8
  %152 = load i8, ptr %142, align 8, !range !15
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %169

154:                                              ; preds = %158, %149
  %155 = phi i32 [ %166, %158 ], [ 10, %149 ]
  %156 = phi i32 [ %160, %158 ], [ %151, %149 ]
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = call i32 @schedule_timeout(i32 noundef %155) #8
  %160 = call i32 @prepare_to_wait_event(ptr noundef %150, ptr noundef nonnull %2, i32 noundef 1) #8
  %161 = load i8, ptr %142, align 8, !range !15
  %162 = icmp ne i8 %161, 0
  %163 = xor i1 %162, true
  %164 = icmp ne i32 %159, 0
  %165 = select i1 %163, i1 true, i1 %164
  %166 = select i1 %165, i32 %159, i32 1
  %167 = icmp eq i32 %166, 0
  %168 = select i1 %162, i1 true, i1 %167
  br i1 %168, label %169, label %154

169:                                              ; preds = %158, %149
  call void @finish_wait(ptr noundef %150, ptr noundef nonnull %2) #8
  br label %170

170:                                              ; preds = %169, %154
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  br label %171

171:                                              ; preds = %170, %141
  %172 = load ptr, ptr %61, align 4
  %173 = getelementptr i8, ptr %172, i32 16
  %174 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %175 = and i32 %174, 2
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.46) #8
  br label %178

178:                                              ; preds = %177, %171
  %179 = load ptr, ptr %61, align 4
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %181 = and i32 %180, 2147483647
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  %182 = load ptr, ptr %61, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %181) #8, !srcloc !11
  %183 = load ptr, ptr %131, align 8
  call void @clk_disable(ptr noundef %183) #8
  call void @clk_unprepare(ptr noundef %183) #8
  br label %184

184:                                              ; preds = %178, %47, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_audio_configure(ptr noundef %0) unnamed_addr #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #8
  %2 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 12
  %3 = load i8, ptr %2, align 8, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 21, i32 2
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %14 [
    i32 32000, label %17
    i32 44100, label %8
    i32 48000, label %9
    i32 88200, label %10
    i32 96000, label %11
    i32 176400, label %12
    i32 192000, label %13
  ]

8:                                                ; preds = %5
  br label %17

9:                                                ; preds = %5
  br label %17

10:                                               ; preds = %5
  br label %17

11:                                               ; preds = %5
  br label %17

12:                                               ; preds = %5
  br label %17

13:                                               ; preds = %5
  br label %17

14:                                               ; preds = %5
  %15 = shl i32 %7, 7
  %16 = udiv i32 %15, 1000
  br label %17

17:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %5
  %18 = phi i32 [ %16, %14 ], [ 24576, %13 ], [ 25088, %12 ], [ 12288, %11 ], [ 12544, %10 ], [ 6144, %9 ], [ 6272, %8 ], [ 4096, %5 ]
  %19 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = mul i32 %20, 1000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef %7, i32 noundef %21, i32 noundef %18) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %22 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %18) #8, !srcloc !11
  %25 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 21, i32 3, i32 3
  %26 = load i8, ptr %25, align 2
  switch i8 %26, label %37 [
    i8 8, label %27
    i8 6, label %28
    i8 4, label %30
    i8 2, label %32
  ]

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %17
  %29 = phi i32 [ 1883045891, %17 ], [ -264437757, %27 ]
  br label %30

30:                                               ; preds = %28, %17
  %31 = phi i32 [ 809304067, %17 ], [ %29, %28 ]
  br label %32

32:                                               ; preds = %30, %17
  %33 = phi i32 [ 272433154, %17 ], [ %31, %30 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %34 = load ptr, ptr %22, align 4
  %35 = getelementptr i8, ptr %34, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #8, !srcloc !11
  %36 = tail call fastcc i32 @hdmi_audio_infoframe_config(ptr noundef %0)
  br label %39

37:                                               ; preds = %17
  %38 = zext i8 %26 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %38) #8
  br label %39

39:                                               ; preds = %37, %32, %1
  %40 = phi i32 [ -22, %37 ], [ %36, %32 ], [ 0, %1 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_audio_infoframe_config(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [14 x i8], align 1
  %3 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %2, i8 0, i32 14, i1 false), !annotation !12
  %4 = load i8, ptr %3, align 4, !range !15
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, ptr @.str.42, ptr @.str.41
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.hdmi_audio_infoframe_config, ptr noundef nonnull %6) #8
  %7 = load i8, ptr %3, align 4, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 21, i32 3
  %11 = call i32 @hdmi_audio_infoframe_pack(ptr noundef %10, ptr noundef nonnull %2, i32 noundef 14) #8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef %11) #8
  br label %23

14:                                               ; preds = %9
  call fastcc void @hdmi_infoframe_write_infopack(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %11)
  br label %23

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 560
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %20 = and i32 %19, -49
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr i8, ptr %21, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !11
  br label %23

23:                                               ; preds = %15, %14, %13
  %24 = phi i32 [ %11, %13 ], [ 0, %15 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #8
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hdmi_infoframe_write_infopack(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i8, ptr %1, align 1
  switch i8 %4, label %7 [
    i8 -126, label %9
    i8 -124, label %5
    i8 -127, label %6
  ]

5:                                                ; preds = %3
  br label %9

6:                                                ; preds = %3
  br label %9

7:                                                ; preds = %3
  %8 = zext i8 %4 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37, i32 noundef %8) #8
  br label %93

9:                                                ; preds = %6, %5, %3
  %10 = phi i32 [ 3, %6 ], [ 3, %5 ], [ 2, %3 ]
  %11 = phi i32 [ 1568, %6 ], [ 1536, %5 ], [ 528, %3 ]
  %12 = phi i32 [ 1572, %6 ], [ 1540, %5 ], [ 532, %3 ]
  %13 = phi i32 [ 8, %6 ], [ 4, %5 ], [ 0, %3 ]
  %14 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 560
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %18 = shl nuw nsw i32 3, %13
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr i8, ptr %21, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !11
  %23 = getelementptr i8, ptr %1, i32 1
  %24 = load i8, ptr %1, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr i8, ptr %1, i32 2
  %27 = load i8, ptr %23, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or i32 %29, %25
  %31 = load i8, ptr %26, align 1
  %32 = and i8 %31, 15
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 16
  %35 = or i32 %34, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %36 = load ptr, ptr %14, align 4
  %37 = getelementptr i8, ptr %36, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #8, !srcloc !11
  %38 = add i32 %2, -3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %85, label %40

40:                                               ; preds = %9
  %41 = getelementptr i8, ptr %1, i32 3
  br label %42

42:                                               ; preds = %77, %40
  %43 = phi ptr [ %79, %77 ], [ %41, %40 ]
  %44 = phi i32 [ %83, %77 ], [ 0, %40 ]
  %45 = sub i32 %38, %44
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 4)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %77, label %48

48:                                               ; preds = %42
  %49 = add nsw i32 %46, -1
  %50 = getelementptr i8, ptr %43, i32 %49
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %49, 0
  br i1 %53, label %77, label %54

54:                                               ; preds = %48
  %55 = shl nuw nsw i32 %52, 8
  %56 = add nsw i32 %46, -2
  %57 = getelementptr i8, ptr %43, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %55, %59
  %61 = icmp eq i32 %56, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %54
  %63 = shl nuw nsw i32 %60, 8
  %64 = add nsw i32 %46, -3
  %65 = getelementptr i8, ptr %43, i32 %64
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %63, %67
  %69 = icmp eq i32 %64, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %62
  %71 = shl nuw i32 %68, 8
  %72 = add nsw i32 %46, -4
  %73 = getelementptr i8, ptr %43, i32 %72
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %71, %75
  br label %77

77:                                               ; preds = %70, %62, %54, %48, %42
  %78 = phi i32 [ 0, %42 ], [ %52, %48 ], [ %60, %54 ], [ %68, %62 ], [ %76, %70 ]
  %79 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %80 = load ptr, ptr %14, align 4
  %81 = getelementptr i8, ptr %80, i32 %12
  %82 = getelementptr i8, ptr %81, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %78) #8, !srcloc !11
  %83 = add i32 %44, 4
  %84 = icmp ugt i32 %38, %83
  br i1 %84, label %42, label %85

85:                                               ; preds = %77, %9
  %86 = load ptr, ptr %14, align 4
  %87 = getelementptr i8, ptr %86, i32 560
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %89 = shl i32 %10, %13
  %90 = or i32 %88, %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %91 = load ptr, ptr %14, align 4
  %92 = getelementptr i8, ptr %91, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #8, !srcloc !11
  br label %93

93:                                               ; preds = %85, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_audio_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_vendor_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hdmi_connector_detect(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #8
  %5 = getelementptr inbounds %struct.sti_hdmi, ptr %4, i32 0, i32 13
  %6 = load i8, ptr %5, align 1, !range !15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.47) #8
  br label %12

9:                                                ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.48) #8
  %10 = getelementptr inbounds %struct.sti_hdmi, ptr %4, i32 0, i32 23
  %11 = load ptr, ptr %10, align 4
  tail call void @cec_notifier_set_phys_addr(ptr noundef %11, i16 noundef zeroext -1) #8
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ 1, %8 ], [ 2, %9 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hdmi_late_register(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  store ptr %3, ptr getelementptr inbounds ([1 x %struct.drm_info_list], ptr @hdmi_debugfs_files, i32 0, i32 0, i32 3), align 4
  %8 = getelementptr inbounds %struct.drm_minor, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @hdmi_debugfs_files, i32 noundef 1, ptr noundef %9, ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hdmi_connector_set_property(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef readnone %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = trunc i64 %3 to i32
  %12 = getelementptr inbounds %struct.sti_hdmi, ptr %10, i32 0, i32 18
  store i32 %11, ptr %12, align 4
  br label %14

13:                                               ; preds = %4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.125) #8
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi i32 [ 0, %8 ], [ -22, %13 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hdmi_connector_get_property(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sti_hdmi, ptr %10, i32 0, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = zext i32 %12 to i64
  store i64 %13, ptr %3, align 8
  br label %15

14:                                               ; preds = %4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.126) #8
  br label %15

15:                                               ; preds = %14, %8
  %16 = phi i32 [ 0, %8 ], [ -22, %14 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_dbg_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sti_hdmi, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.49, ptr noundef %10) #8
  %11 = load ptr, ptr %9, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.51, i32 noundef %12) #8
  %13 = load ptr, ptr %9, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 9) #8
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, ptr @.str.98, ptr @.str.97
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, ptr noundef nonnull %17) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.99) #8
  %18 = and i32 %14, 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr @.str.42, ptr @.str.41
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.100, ptr noundef nonnull %20) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.99) #8
  %21 = and i32 %14, 8
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @.str.103, ptr @.str.102
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.101, ptr noundef nonnull %23) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.99) #8
  %24 = and i32 %14, 16
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr @.str.106, ptr @.str.105
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.104, ptr noundef nonnull %26) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.99) #8
  %27 = and i32 %14, 64
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, ptr @.str.106, ptr @.str.105
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.107, ptr noundef nonnull %29) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.99) #8
  %30 = and i32 %14, 256
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, ptr @.str.42, ptr @.str.41
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.108, ptr noundef nonnull %32) #8
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %35) #8
  %36 = load ptr, ptr %9, align 4
  %37 = getelementptr i8, ptr %36, i32 16
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.54, i32 noundef %38) #8
  %39 = load ptr, ptr %9, align 4
  %40 = getelementptr i8, ptr %39, i32 16
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 9) #8
  %42 = and i32 %41, 32
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, ptr @.str.111, ptr @.str.110
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.109, ptr noundef nonnull %44) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.99) #8
  %45 = and i32 %41, 16
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr @.str.114, ptr @.str.113
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.112, ptr noundef nonnull %47) #8
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr i8, ptr %48, i32 256
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.55, i32 noundef %50) #8
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 9) #8
  %51 = load ptr, ptr %9, align 4
  %52 = getelementptr i8, ptr %51, i32 256
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %53) #8
  %54 = load ptr, ptr %9, align 4
  %55 = getelementptr i8, ptr %54, i32 260
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.58, i32 noundef %56) #8
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 9) #8
  %57 = load ptr, ptr %9, align 4
  %58 = getelementptr i8, ptr %57, i32 260
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.59, i32 noundef %59) #8
  %60 = load ptr, ptr %9, align 4
  %61 = getelementptr i8, ptr %60, i32 264
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.60, i32 noundef %62) #8
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 9) #8
  %63 = load ptr, ptr %9, align 4
  %64 = getelementptr i8, ptr %63, i32 264
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.61, i32 noundef %65) #8
  %66 = load ptr, ptr %9, align 4
  %67 = getelementptr i8, ptr %66, i32 268
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.62, i32 noundef %68) #8
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 9) #8
  %69 = load ptr, ptr %9, align 4
  %70 = getelementptr i8, ptr %69, i32 268
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.63, i32 noundef %71) #8
  %72 = load ptr, ptr %9, align 4
  %73 = getelementptr i8, ptr %72, i32 560
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.64, i32 noundef %74) #8
  %75 = load ptr, ptr %9, align 4
  %76 = getelementptr i8, ptr %75, i32 560
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 9) #8
  %78 = and i32 %77, 3
  %79 = getelementptr [4 x ptr], ptr @__const.hdmi_dbg_sw_di_cfg.en_di, i32 0, i32 %78
  %80 = load ptr, ptr %79, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.119, ptr noundef %80) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.99) #8
  %81 = lshr i32 %77, 4
  %82 = and i32 %81, 3
  %83 = getelementptr [4 x ptr], ptr @__const.hdmi_dbg_sw_di_cfg.en_di, i32 0, i32 %82
  %84 = load ptr, ptr %83, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.120, ptr noundef %84) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.99) #8
  %85 = lshr i32 %77, 8
  %86 = and i32 %85, 3
  %87 = getelementptr [4 x ptr], ptr @__const.hdmi_dbg_sw_di_cfg.en_di, i32 0, i32 %86
  %88 = load ptr, ptr %87, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.121, ptr noundef %88) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.99) #8
  %89 = lshr i32 %77, 12
  %90 = and i32 %89, 3
  %91 = getelementptr [4 x ptr], ptr @__const.hdmi_dbg_sw_di_cfg.en_di, i32 0, i32 %90
  %92 = load ptr, ptr %91, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.122, ptr noundef %92) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.99) #8
  %93 = lshr i32 %77, 16
  %94 = and i32 %93, 3
  %95 = getelementptr [4 x ptr], ptr @__const.hdmi_dbg_sw_di_cfg.en_di, i32 0, i32 %94
  %96 = load ptr, ptr %95, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.123, ptr noundef %96) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.99) #8
  %97 = lshr i32 %77, 20
  %98 = and i32 %97, 3
  %99 = getelementptr [4 x ptr], ptr @__const.hdmi_dbg_sw_di_cfg.en_di, i32 0, i32 %98
  %100 = load ptr, ptr %99, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.124, ptr noundef %100) #8
  %101 = load ptr, ptr %9, align 4
  %102 = getelementptr i8, ptr %101, i32 512
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.65, i32 noundef %103) #8
  %104 = load ptr, ptr %9, align 4
  %105 = getelementptr i8, ptr %104, i32 516
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.66, i32 noundef %106) #8
  %107 = load ptr, ptr %9, align 4
  %108 = getelementptr i8, ptr %107, i32 1024
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.67, i32 noundef %109) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef 1) #8
  %110 = load ptr, ptr %9, align 4
  %111 = getelementptr i8, ptr %110, i32 528
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.69, i32 noundef %112) #8
  %113 = load ptr, ptr %9, align 4
  %114 = getelementptr i8, ptr %113, i32 532
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.70, i32 noundef %115) #8
  %116 = load ptr, ptr %9, align 4
  %117 = getelementptr i8, ptr %116, i32 536
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.71, i32 noundef %118) #8
  %119 = load ptr, ptr %9, align 4
  %120 = getelementptr i8, ptr %119, i32 540
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.72, i32 noundef %121) #8
  %122 = load ptr, ptr %9, align 4
  %123 = getelementptr i8, ptr %122, i32 544
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.73, i32 noundef %124) #8
  %125 = load ptr, ptr %9, align 4
  %126 = getelementptr i8, ptr %125, i32 548
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.74, i32 noundef %127) #8
  %128 = load ptr, ptr %9, align 4
  %129 = getelementptr i8, ptr %128, i32 552
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.75, i32 noundef %130) #8
  %131 = load ptr, ptr %9, align 4
  %132 = getelementptr i8, ptr %131, i32 556
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.76, i32 noundef %133) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef 2) #8
  %134 = load ptr, ptr %9, align 4
  %135 = getelementptr i8, ptr %134, i32 1536
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.78, i32 noundef %136) #8
  %137 = load ptr, ptr %9, align 4
  %138 = getelementptr i8, ptr %137, i32 1540
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.79, i32 noundef %139) #8
  %140 = load ptr, ptr %9, align 4
  %141 = getelementptr i8, ptr %140, i32 1544
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.80, i32 noundef %142) #8
  %143 = load ptr, ptr %9, align 4
  %144 = getelementptr i8, ptr %143, i32 1548
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.81, i32 noundef %145) #8
  %146 = load ptr, ptr %9, align 4
  %147 = getelementptr i8, ptr %146, i32 1552
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.82, i32 noundef %148) #8
  %149 = load ptr, ptr %9, align 4
  %150 = getelementptr i8, ptr %149, i32 1556
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.83, i32 noundef %151) #8
  %152 = load ptr, ptr %9, align 4
  %153 = getelementptr i8, ptr %152, i32 1560
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.84, i32 noundef %154) #8
  %155 = load ptr, ptr %9, align 4
  %156 = getelementptr i8, ptr %155, i32 1564
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.85, i32 noundef %157) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.86, i32 noundef 3) #8
  %158 = load ptr, ptr %9, align 4
  %159 = getelementptr i8, ptr %158, i32 1568
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.87, i32 noundef %160) #8
  %161 = load ptr, ptr %9, align 4
  %162 = getelementptr i8, ptr %161, i32 1572
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.88, i32 noundef %163) #8
  %164 = load ptr, ptr %9, align 4
  %165 = getelementptr i8, ptr %164, i32 1576
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.89, i32 noundef %166) #8
  %167 = load ptr, ptr %9, align 4
  %168 = getelementptr i8, ptr %167, i32 1580
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.90, i32 noundef %169) #8
  %170 = load ptr, ptr %9, align 4
  %171 = getelementptr i8, ptr %170, i32 1584
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.91, i32 noundef %172) #8
  %173 = load ptr, ptr %9, align 4
  %174 = getelementptr i8, ptr %173, i32 1588
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.92, i32 noundef %175) #8
  %176 = load ptr, ptr %9, align 4
  %177 = getelementptr i8, ptr %176, i32 1592
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.93, i32 noundef %178) #8
  %179 = load ptr, ptr %9, align 4
  %180 = getelementptr i8, ptr %179, i32 1596
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %180) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.94, i32 noundef %181) #8
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hdmi_connector_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #8
  %4 = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @drm_get_edid(ptr noundef %0, ptr noundef %5) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef nonnull %6) #8
  %10 = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 19
  %11 = zext i1 %9 to i8
  store i8 %11, ptr %10, align 8
  %12 = select i1 %9, ptr @.str.128, ptr @.str.129
  %13 = getelementptr inbounds %struct.edid, ptr %6, i32 0, i32 9
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.edid, ptr %6, i32 0, i32 10
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.127, ptr noundef nonnull %12, i32 noundef %15, i32 noundef %18) #8
  %19 = getelementptr inbounds %struct.sti_hdmi, ptr %3, i32 0, i32 23
  %20 = load ptr, ptr %19, align 4
  tail call void @cec_notifier_set_phys_addr_from_edid(ptr noundef %20, ptr noundef nonnull %6) #8
  %21 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef nonnull %6) #8
  %22 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef nonnull %6) #8
  tail call void @kfree(ptr noundef nonnull %6) #8
  br label %24

23:                                               ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.130) #8
  br label %24

24:                                               ; preds = %23, %8
  %25 = phi i32 [ %21, %8 ], [ 0, %23 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hdmi_connector_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = mul i32 %3, 1000
  %5 = add i32 %4, -50
  %6 = getelementptr inbounds %struct.sti_hdmi_connector, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sti_hdmi, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_round_rate(ptr noundef %9, i32 noundef %4) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.131, i32 noundef %4, i32 noundef %10) #8
  %11 = icmp slt i32 %10, %5
  %12 = add i32 %4, 50
  %13 = icmp sgt i32 %10, %12
  %14 = or i1 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.132, i32 noundef %4) #8
  br label %16

16:                                               ; preds = %15, %2
  %17 = phi i32 [ -2, %15 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr_from_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_enum(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_audio_hw_params(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #8
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.hdmi_codec_daifmt, ptr %2, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 15
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %8, i1 %12, i1 false
  br i1 %13, label %26, label %14

14:                                               ; preds = %4
  %15 = and i8 %10, 1
  %16 = zext i8 %15 to i32
  %17 = lshr i8 %10, 1
  %18 = and i8 %17, 1
  %19 = zext i8 %18 to i32
  %20 = lshr i8 %10, 2
  %21 = and i8 %20, 1
  %22 = zext i8 %21 to i32
  %23 = lshr i8 %10, 3
  %24 = and i8 %23, 1
  %25 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.hdmi_audio_hw_params, i32 noundef %16, i32 noundef %19, i32 noundef %22, i32 noundef %25) #9
  br label %37

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sti_hdmi, ptr %6, i32 0, i32 21
  %30 = getelementptr inbounds %struct.sti_hdmi, ptr %6, i32 0, i32 21, i32 1
  store i32 %28, ptr %30, align 4
  %31 = getelementptr inbounds %struct.hdmi_codec_params, ptr %3, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.sti_hdmi, ptr %6, i32 0, i32 21, i32 2
  store i32 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.sti_hdmi, ptr %6, i32 0, i32 21, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %34, ptr noundef align 4 dereferenceable(28) %3, i32 28, i1 false)
  store i8 1, ptr %29, align 8
  %35 = tail call fastcc i32 @hdmi_audio_configure(ptr noundef %6)
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 0)
  br label %37

37:                                               ; preds = %26, %14
  %38 = phi i32 [ -22, %14 ], [ %36, %26 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_audio_shutdown(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %5 = getelementptr inbounds %struct.sti_hdmi, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 3997698) #8, !srcloc !11
  %8 = getelementptr inbounds %struct.sti_hdmi, ptr %4, i32 0, i32 21
  store i8 0, ptr %8, align 8
  %9 = tail call fastcc i32 @hdmi_audio_infoframe_config(ptr noundef %4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_audio_mute(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = select i1 %2, ptr @.str.41, ptr @.str.42
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.141, ptr noundef nonnull %7) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  %8 = getelementptr inbounds %struct.sti_hdmi, ptr %6, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 580
  br i1 %2, label %11, label %12

11:                                               ; preds = %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 15) #8, !srcloc !11
  br label %13

12:                                               ; preds = %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #8, !srcloc !11
  br label %13

13:                                               ; preds = %12, %11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_audio_get_eld(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sti_hdmi, ptr %6, i32 0, i32 22
  %8 = load ptr, ptr %7, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22) #8
  %9 = getelementptr inbounds %struct.drm_connector, ptr %8, i32 0, i32 42
  %10 = tail call i32 @llvm.umin.i32(i32 %3, i32 128)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 8 %9, i32 %10, i1 false)
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_conn_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i64 4430210}
!9 = !{i64 2156143732}
!10 = !{i64 2156143919}
!11 = !{i64 4429792}
!12 = !{!"auto-init"}
!13 = !{i64 2156194705}
!14 = !{i64 2156144479}
!15 = !{i8 0, i8 2}
!16 = !{i64 2156152445}
!17 = !{i64 2156154568}
