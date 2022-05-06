; ModuleID = '/llk/IR/drivers/gpu/drm/sti/sti_hda.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_hda.c"
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
%struct.component_ops = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sti_hda_video_config = type { %struct.drm_display_mode, ptr, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sti_hda = type { %struct.device, ptr, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
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
%struct.anon.74 = type { i32, ptr }
%struct.sti_hda_connector = type { %struct.drm_connector, ptr, ptr }
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
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }

@hda_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih416-hda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-hda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [8 x i8] c"sti-hda\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@sti_hda_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @sti_hda_probe, ptr @sti_hda_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr @hda_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__UNIQUE_ID_author265 = internal constant [52 x i8] c"author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description266 = internal constant [46 x i8] c"description=STMicroelectronics SoC DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\016[drm] %s\0A\00", align 1
@__func__.sti_hda_probe = private unnamed_addr constant [14 x i8] c"sti_hda_probe\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"hda-reg\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Invalid hda resource\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"video-dacs-ctrl\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"No video-dacs-ctrl resource\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pix\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Cannot get hda_pix clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"hddac\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Cannot get hda_hddac clock\0A\00", align 1
@sti_hda_ops = internal constant %struct.component_ops { ptr @sti_hda_bind, ptr @sti_hda_unbind }, align 4
@sti_hda_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr null, ptr null, ptr null, ptr null, ptr @sti_hda_disable, ptr @sti_hda_bridge_nope, ptr @sti_hda_set_mode, ptr @sti_hda_pre_enable, ptr @sti_hda_bridge_nope, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sti_hda_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @sti_hda_late_register, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@sti_hda_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @sti_hda_connector_get_modes, ptr null, ptr @sti_hda_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [43 x i8] c"Failed to attach a connector to a encoder\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Undefined mode\0A\00", align 1
@hda_supported_modes = internal constant [10 x %struct.sti_hda_video_config] [%struct.sti_hda_video_config { %struct.drm_display_mode { i32 74250, i16 1920, i16 2008, i16 2052, i16 2200, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_1080p_30, i32 21, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 74176, i16 1920, i16 2008, i16 2052, i16 2200, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_1080p_30, i32 21, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 74250, i16 1920, i16 2558, i16 2602, i16 2750, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_1080p_24, i32 21, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 74176, i16 1920, i16 2558, i16 2602, i16 2750, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_1080p_24, i32 21, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 74250, i16 1920, i16 2448, i16 2492, i16 2640, i16 0, i16 1080, i16 1084, i16 1089, i16 1125, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_1080p_25, i32 21, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 74250, i16 1280, i16 1390, i16 1430, i16 1650, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_720p_60, i32 18, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 74176, i16 1280, i16 1390, i16 1430, i16 1650, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_720p_60, i32 18, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 74250, i16 1280, i16 1720, i16 1760, i16 1980, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_720p_50, i32 18, i32 2 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 27027, i16 720, i16 736, i16 798, i16 858, i16 0, i16 480, i16 489, i16 495, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_720x480p_60, i32 8, i32 1 }, %struct.sti_hda_video_config { %struct.drm_display_mode { i32 27000, i16 720, i16 736, i16 798, i16 858, i16 0, i16 480, i16 489, i16 495, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, ptr @AWGi_720x480p_60, i32 8, i32 1 }], align 4
@.str.13 = private unnamed_addr constant [42 x i8] c"Cannot set rate (%dHz) for hda_hddac clk\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Cannot set rate (%dHz) for hda_pix clk\0A\00", align 1
@AWGi_1080p_30 = internal global [21 x i32] [i32 2417, i32 3114, i32 315, i32 3158, i32 260, i32 4060, i32 4061, i32 315, i32 3114, i32 260, i32 6148, i32 2417, i32 3114, i32 59, i32 3774, i32 3775, i32 3775, i32 260, i32 6703, i32 7243, i32 7250], align 4
@AWGi_1080p_24 = internal global [21 x i32] [i32 2417, i32 3114, i32 315, i32 3158, i32 260, i32 4060, i32 4061, i32 315, i32 3664, i32 260, i32 6148, i32 2417, i32 3114, i32 59, i32 3958, i32 3958, i32 3958, i32 260, i32 6703, i32 7243, i32 7250], align 4
@AWGi_1080p_25 = internal global [21 x i32] [i32 2417, i32 3114, i32 315, i32 3158, i32 260, i32 4060, i32 4061, i32 315, i32 3554, i32 260, i32 6148, i32 2417, i32 3114, i32 59, i32 3921, i32 3921, i32 3922, i32 260, i32 6703, i32 7243, i32 7250], align 4
@AWGi_720p_60 = internal global [18 x i32] [i32 2417, i32 3110, i32 315, i32 3290, i32 260, i32 3710, i32 3711, i32 315, i32 3140, i32 260, i32 6148, i32 2417, i32 3110, i32 59, i32 3855, i32 3856, i32 260, i32 6888], align 4
@AWGi_720p_50 = internal global [18 x i32] [i32 2417, i32 3110, i32 315, i32 3290, i32 260, i32 3710, i32 3711, i32 315, i32 3470, i32 260, i32 6148, i32 2417, i32 3110, i32 59, i32 4020, i32 4021, i32 260, i32 6888], align 4
@AWGi_720x480p_60 = internal global [8 x i32] [i32 2308, i32 3864, i32 315, i32 6149, i32 2308, i32 3133, i32 59, i32 6662], align 4
@.str.15 = private unnamed_addr constant [38 x i8] c"Failed to prepare/enable hda_pix clk\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Failed to prepare/enable hda_hddac clk\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Beyond HD analog capabilities\0A\00", align 1
@coef_y_alt_2x = internal unnamed_addr constant [8 x i32] [i32 16679931, i32 529531905, i32 0, i32 0, i32 15993081, i32 90143781, i32 0, i32 0], align 4
@coef_c_alt_2x = internal unnamed_addr constant [8 x i32] [i32 1246711, i32 86461392, i32 0, i32 0, i32 299132, i32 164105117, i32 0, i32 0], align 4
@coef_yc_4x = internal unnamed_addr constant [8 x i32] [i32 16548479, i32 9429515, i32 16155900, i32 84900900, i32 16024956, i32 169820206, i32 16384639, i32 235367965], align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"Not supported\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Undefined resolution\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Using HDA mode #%d\0A\00", align 1
@hda_debugfs_files = internal global [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.21, ptr @hda_dbg_show, i32 0, ptr null }], align 4
@.str.21 = private unnamed_addr constant [4 x i8] c"hda\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"HD Analog: (vaddr = 0x%p)\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"\0A  %-25s 0x%08X\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"HDA_ANA_CFG\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"HDA_ANA_SCALE_CTRL_Y\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"HDA_ANA_SCALE_CTRL_CB\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"HDA_ANA_SCALE_CTRL_CR\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"HDA_ANA_ANC_CTRL\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"HDA_ANA_SRC_Y_CFG\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"HDA_ANA_SRC_C_CFG\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"\09AWG \00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"\0A\0A  HDA AWG microcode:\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"\0A  %04X:\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c" %04X\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"\0A\0A  %-25s 0x%08X\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"VIDEO_DACS_CONTROL\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"\09HD DACs \00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"target rate = %d => available rate = %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"hda pixclk=%d not supported\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_license267], section "llvm.metadata"

@__mod_of__hda_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @hda_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hda_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.sti_hda_probe) #6
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 608, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %48, label %6

6:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(472) %4, ptr noundef align 8 dereferenceable(472) %2, i32 472, i1 false)
  %7 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.2) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #7
  br label %48

10:                                               ; preds = %6
  %11 = load i32, ptr %7, align 4
  %12 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 1, %11
  %15 = add i32 %14, %13
  %16 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %11, i32 noundef %15) #7
  %17 = getelementptr inbounds %struct.sti_hda, ptr %4, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %10
  %20 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.4) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %20, align 4
  %24 = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 1, %23
  %27 = add i32 %26, %25
  %28 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %23, i32 noundef %27) #7
  %29 = getelementptr inbounds %struct.sti_hda, ptr %4, i32 0, i32 4
  store ptr %28, ptr %29, align 8
  %30 = icmp eq ptr %28, null
  br i1 %30, label %48, label %33

31:                                               ; preds = %19
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5) #7
  %32 = getelementptr inbounds %struct.sti_hda, ptr %4, i32 0, i32 4
  store ptr null, ptr %32, align 8
  br label %33

33:                                               ; preds = %31, %22
  %34 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.6) #7
  %35 = getelementptr inbounds %struct.sti_hda, ptr %4, i32 0, i32 5
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  %38 = ptrtoint ptr %34 to i32
  br label %48

39:                                               ; preds = %33
  %40 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.8) #7
  %41 = getelementptr inbounds %struct.sti_hda, ptr %4, i32 0, i32 6
  store ptr %40, ptr %41, align 8
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  %44 = ptrtoint ptr %40 to i32
  br label %48

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %46, align 8
  %47 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @sti_hda_ops) #7
  br label %48

48:                                               ; preds = %45, %43, %37, %22, %10, %9, %1
  %49 = phi i32 [ %38, %37 ], [ %44, %43 ], [ %47, %45 ], [ -12, %9 ], [ -12, %1 ], [ -12, %10 ], [ -12, %22 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hda_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @sti_hda_ops) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hda_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sti_hda, ptr %5, i32 0, i32 1
  store ptr %2, ptr %6, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 16
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %45, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 32
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %10, i32 -4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %16
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 976, i32 noundef 3520) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.sti_hda_connector, ptr %20, i32 0, i32 2
  store ptr %5, ptr %23, align 4
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 132, i32 noundef 3520) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.drm_bridge, ptr %24, i32 0, i32 8
  store ptr %5, ptr %27, align 4
  %28 = getelementptr inbounds %struct.drm_bridge, ptr %24, i32 0, i32 7
  store ptr @sti_hda_bridge_funcs, ptr %28, align 4
  %29 = tail call i32 @drm_bridge_attach(ptr noundef nonnull %17, ptr noundef nonnull %24, ptr noundef null, i32 noundef 0) #7
  %30 = getelementptr inbounds %struct.sti_hda_connector, ptr %20, i32 0, i32 1
  store ptr %17, ptr %30, align 8
  %31 = getelementptr inbounds %struct.drm_connector, ptr %20, i32 0, i32 33
  store i8 1, ptr %31, align 4
  %32 = tail call i32 @drm_connector_init(ptr noundef %2, ptr noundef nonnull %20, ptr noundef nonnull @sti_hda_connector_funcs, i32 noundef 8) #7
  %33 = getelementptr inbounds %struct.drm_connector, ptr %20, i32 0, i32 35
  store ptr @sti_hda_connector_helper_funcs, ptr %33, align 4
  %34 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %20, ptr noundef nonnull %17) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #7
  br label %45

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.sti_hda, ptr %5, i32 0, i32 4
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %39) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %43 = or i32 %42, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %44 = load ptr, ptr %38, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %43) #7, !srcloc !11
  br label %45

45:                                               ; preds = %41, %37, %36, %22, %19, %16, %8
  %46 = phi i32 [ -22, %36 ], [ -12, %16 ], [ -12, %19 ], [ -12, %22 ], [ 0, %37 ], [ 0, %41 ], [ -12, %8 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @sti_hda_unbind(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #5 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_hda_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sti_hda, ptr %3, i32 0, i32 7
  %5 = load i8, ptr %4, align 4, !range !12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11) #7
  %8 = getelementptr inbounds %struct.sti_hda, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %11 = and i32 %10, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %12 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #7, !srcloc !11
  %15 = getelementptr inbounds %struct.sti_hda, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %7
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %20 = or i32 %19, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %21 = load ptr, ptr %15, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #7, !srcloc !11
  br label %22

22:                                               ; preds = %18, %7
  %23 = getelementptr inbounds %struct.sti_hda, ptr %3, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  tail call void @clk_disable(ptr noundef %24) #7
  tail call void @clk_unprepare(ptr noundef %24) #7
  %25 = getelementptr inbounds %struct.sti_hda, ptr %3, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %26) #7
  tail call void @clk_unprepare(ptr noundef %26) #7
  store i8 0, ptr %4, align 4
  br label %27

27:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @sti_hda_bridge_nope(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_hda_set_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !15
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11) #7
  %7 = getelementptr inbounds %struct.sti_hda, ptr %6, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(112) %7, ptr noundef align 4 dereferenceable(112) %1, i32 112, i1 false)
  %8 = call fastcc zeroext i1 @hda_get_mode_idx(ptr noundef byval(%struct.drm_display_mode) align 4 %1, ptr noundef nonnull %4)
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %35

10:                                               ; preds = %3
  %11 = load i32, ptr %4, align 4
  %12 = getelementptr [10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 %11, i32 3
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %15 [
    i32 2, label %16
    i32 1, label %14
  ]

14:                                               ; preds = %10
  br label %16

15:                                               ; preds = %10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %35

16:                                               ; preds = %14, %10
  %17 = phi i32 [ 4000, %14 ], [ 2000, %10 ]
  %18 = load i32, ptr %1, align 4
  %19 = mul i32 %18, %17
  %20 = getelementptr inbounds %struct.sti_hda, ptr %6, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 @clk_set_rate(ptr noundef %21, i32 noundef %19) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %19) #7
  br label %25

25:                                               ; preds = %24, %16
  %26 = getelementptr inbounds %struct.sti_hda, ptr %6, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %1, align 4
  %29 = mul i32 %28, 1000
  %30 = tail call i32 @clk_set_rate(ptr noundef %27, i32 noundef %29) #7
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, ptr %1, align 4
  %34 = mul i32 %33, 1000
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %34) #7
  br label %35

35:                                               ; preds = %32, %25, %15, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_hda_pre_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !15
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11) #7
  %5 = getelementptr inbounds %struct.sti_hda, ptr %4, i32 0, i32 7
  %6 = load i8, ptr %5, align 4, !range !12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %161

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sti_hda, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = tail call i32 @clk_enable(ptr noundef %10) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #7
  br label %17

17:                                               ; preds = %16, %8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #7
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.sti_hda, ptr %4, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = tail call i32 @clk_enable(ptr noundef %20) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #7
  br label %27

27:                                               ; preds = %26, %18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #7
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.sti_hda, ptr %4, i32 0, i32 2
  %30 = call fastcc zeroext i1 @hda_get_mode_idx(ptr noundef byval(%struct.drm_display_mode) align 4 %29, ptr noundef nonnull %2)
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %161

32:                                               ; preds = %28
  %33 = load i32, ptr %2, align 4
  %34 = getelementptr [10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 %33, i32 3
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %39 [
    i32 3, label %36
    i32 2, label %40
    i32 1, label %37
    i32 0, label %38
  ]

36:                                               ; preds = %32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #7
  br label %161

37:                                               ; preds = %32
  br label %40

38:                                               ; preds = %32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #7
  br label %161

39:                                               ; preds = %32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #7
  br label %161

40:                                               ; preds = %37, %32
  %41 = phi i32 [ 32309253, %37 ], [ 18022400, %32 ]
  %42 = phi i32 [ 32309252, %37 ], [ 24444932, %32 ]
  %43 = phi ptr [ @coef_yc_4x, %37 ], [ @coef_y_alt_2x, %32 ]
  %44 = phi ptr [ @coef_yc_4x, %37 ], [ @coef_c_alt_2x, %32 ]
  %45 = phi i32 [ 16, %37 ], [ 32, %32 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef %33) #7
  %46 = getelementptr inbounds %struct.sti_hda, ptr %4, i32 0, i32 4
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %47) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %51 = and i32 %50, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %52 = load ptr, ptr %46, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %51) #7, !srcloc !11
  br label %53

53:                                               ; preds = %49, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %54 = getelementptr inbounds %struct.sti_hda, ptr %4, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 12911190) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %57 = load ptr, ptr %54, align 4
  %58 = getelementptr i8, ptr %57, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 14352969) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %59 = load ptr, ptr %54, align 4
  %60 = getelementptr i8, ptr %59, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 14352969) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %61 = load ptr, ptr %54, align 4
  %62 = getelementptr i8, ptr %61, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %41) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %63 = load ptr, ptr %54, align 4
  %64 = getelementptr i8, ptr %63, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %42) #7, !srcloc !11
  %65 = load i32, ptr %43, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %66 = load ptr, ptr %54, align 4
  %67 = getelementptr i8, ptr %66, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #7, !srcloc !11
  %68 = load i32, ptr %44, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %69 = load ptr, ptr %54, align 4
  %70 = getelementptr i8, ptr %69, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #7, !srcloc !11
  %71 = getelementptr i32, ptr %43, i32 1
  %72 = load i32, ptr %71, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %73 = load ptr, ptr %54, align 4
  %74 = getelementptr i8, ptr %73, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #7, !srcloc !11
  %75 = getelementptr i32, ptr %44, i32 1
  %76 = load i32, ptr %75, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %77 = load ptr, ptr %54, align 4
  %78 = getelementptr i8, ptr %77, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #7, !srcloc !11
  %79 = getelementptr i32, ptr %43, i32 2
  %80 = load i32, ptr %79, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %81 = load ptr, ptr %54, align 4
  %82 = getelementptr i8, ptr %81, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #7, !srcloc !11
  %83 = getelementptr i32, ptr %44, i32 2
  %84 = load i32, ptr %83, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %85 = load ptr, ptr %54, align 4
  %86 = getelementptr i8, ptr %85, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #7, !srcloc !11
  %87 = getelementptr i32, ptr %43, i32 3
  %88 = load i32, ptr %87, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %89 = load ptr, ptr %54, align 4
  %90 = getelementptr i8, ptr %89, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %88) #7, !srcloc !11
  %91 = getelementptr i32, ptr %44, i32 3
  %92 = load i32, ptr %91, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %93 = load ptr, ptr %54, align 4
  %94 = getelementptr i8, ptr %93, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #7, !srcloc !11
  %95 = getelementptr i32, ptr %43, i32 4
  %96 = load i32, ptr %95, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %97 = load ptr, ptr %54, align 4
  %98 = getelementptr i8, ptr %97, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #7, !srcloc !11
  %99 = getelementptr i32, ptr %44, i32 4
  %100 = load i32, ptr %99, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %101 = load ptr, ptr %54, align 4
  %102 = getelementptr i8, ptr %101, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #7, !srcloc !11
  %103 = getelementptr i32, ptr %43, i32 5
  %104 = load i32, ptr %103, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %105 = load ptr, ptr %54, align 4
  %106 = getelementptr i8, ptr %105, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #7, !srcloc !11
  %107 = getelementptr i32, ptr %44, i32 5
  %108 = load i32, ptr %107, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %109 = load ptr, ptr %54, align 4
  %110 = getelementptr i8, ptr %109, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #7, !srcloc !11
  %111 = getelementptr i32, ptr %43, i32 6
  %112 = load i32, ptr %111, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %113 = load ptr, ptr %54, align 4
  %114 = getelementptr i8, ptr %113, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #7, !srcloc !11
  %115 = getelementptr i32, ptr %44, i32 6
  %116 = load i32, ptr %115, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %117 = load ptr, ptr %54, align 4
  %118 = getelementptr i8, ptr %117, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #7, !srcloc !11
  %119 = getelementptr i32, ptr %43, i32 7
  %120 = load i32, ptr %119, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %121 = load ptr, ptr %54, align 4
  %122 = getelementptr i8, ptr %121, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #7, !srcloc !11
  %123 = getelementptr i32, ptr %44, i32 7
  %124 = load i32, ptr %123, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %125 = load ptr, ptr %54, align 4
  %126 = getelementptr i8, ptr %125, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %124) #7, !srcloc !11
  %127 = getelementptr inbounds %struct.sti_hda, ptr %4, i32 0, i32 2, i32 11
  %128 = load i32, ptr %127, align 4
  %129 = lshr i32 %128, 2
  %130 = and i32 %129, 4
  %131 = or i32 %130, %45
  %132 = xor i32 %131, 18284548
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %133 = load ptr, ptr %54, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %132) #7, !srcloc !11
  %134 = getelementptr [10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 %33, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr [10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 %33, i32 2
  %137 = load i32, ptr %136, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11) #7
  br label %138

138:                                              ; preds = %138, %53
  %139 = phi i32 [ %146, %138 ], [ 0, %53 ]
  %140 = getelementptr i32, ptr %135, i32 %139
  %141 = load i32, ptr %140, align 4
  %142 = shl i32 %139, 2
  %143 = add i32 %142, 768
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %144 = load ptr, ptr %54, align 4
  %145 = getelementptr i8, ptr %144, i32 %143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %141) #7, !srcloc !11
  %146 = add nuw i32 %139, 1
  %147 = icmp eq i32 %146, %137
  br i1 %147, label %148, label %138

148:                                              ; preds = %148, %138
  %149 = phi i32 [ %154, %148 ], [ %137, %138 ]
  %150 = shl nuw nsw i32 %149, 2
  %151 = add nuw nsw i32 %150, 768
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %152 = load ptr, ptr %54, align 4
  %153 = getelementptr i8, ptr %152, i32 %151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 0) #7, !srcloc !11
  %154 = add i32 %149, 1
  %155 = icmp eq i32 %154, 64
  br i1 %155, label %156, label %148

156:                                              ; preds = %148
  %157 = load ptr, ptr %54, align 4
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %159 = or i32 %158, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %160 = load ptr, ptr %54, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %159) #7, !srcloc !11
  store i8 1, ptr %5, align 4
  br label %161

161:                                              ; preds = %156, %39, %38, %36, %31, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @hda_get_mode_idx(ptr noundef byval(%struct.drm_display_mode) align 4 %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = call zeroext i1 @drm_mode_equal(ptr noundef nonnull @hda_supported_modes, ptr noundef %0) #7
  br i1 %3, label %4, label %6

4:                                                ; preds = %22, %20, %18, %16, %14, %12, %10, %8, %6, %2
  %5 = phi i32 [ 0, %2 ], [ 1, %6 ], [ 2, %8 ], [ 3, %10 ], [ 4, %12 ], [ 5, %14 ], [ 6, %16 ], [ 7, %18 ], [ 8, %20 ], [ 9, %22 ]
  store i32 %5, ptr %1, align 4
  br label %24

6:                                                ; preds = %2
  %7 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 1), ptr noundef %0) #7
  br i1 %7, label %4, label %8

8:                                                ; preds = %6
  %9 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 2), ptr noundef %0) #7
  br i1 %9, label %4, label %10

10:                                               ; preds = %8
  %11 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 3), ptr noundef %0) #7
  br i1 %11, label %4, label %12

12:                                               ; preds = %10
  %13 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 4), ptr noundef %0) #7
  br i1 %13, label %4, label %14

14:                                               ; preds = %12
  %15 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 5), ptr noundef %0) #7
  br i1 %15, label %4, label %16

16:                                               ; preds = %14
  %17 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 6), ptr noundef %0) #7
  br i1 %17, label %4, label %18

18:                                               ; preds = %16
  %19 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 7), ptr noundef %0) #7
  br i1 %19, label %4, label %20

20:                                               ; preds = %18
  %21 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 8), ptr noundef %0) #7
  br i1 %21, label %4, label %22

22:                                               ; preds = %20
  %23 = call zeroext i1 @drm_mode_equal(ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 9), ptr noundef %0) #7
  br i1 %23, label %4, label %24

24:                                               ; preds = %22, %4
  %25 = phi i1 [ true, %4 ], [ false, %22 ]
  ret i1 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_equal(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hda_late_register(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sti_hda_connector, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sti_hda, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  store ptr %3, ptr getelementptr inbounds ([1 x %struct.drm_info_list], ptr @hda_debugfs_files, i32 0, i32 0, i32 3), align 4
  %8 = getelementptr inbounds %struct.drm_minor, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @hda_debugfs_files, i32 noundef 1, ptr noundef %9, ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hda_dbg_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sti_hda, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %10) #7
  %11 = load ptr, ptr %9, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %12) #7
  %13 = load ptr, ptr %9, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.31) #7
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, ptr @.str.33, ptr @.str.32
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %17) #7
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25, i32 noundef %20) #7
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.26, i32 noundef %23) #7
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr i8, ptr %24, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.27, i32 noundef %26) #7
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.28, i32 noundef %29) #7
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr i8, ptr %30, i32 20
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.29, i32 noundef %32) #7
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr i8, ptr %33, i32 64
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.30, i32 noundef %35) #7
  %36 = load ptr, ptr %9, align 4
  %37 = getelementptr i8, ptr %36, i32 768
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.34) #7
  br label %38

38:                                               ; preds = %43, %2
  %39 = phi i32 [ 0, %2 ], [ %47, %43 ]
  %40 = and i32 %39, 7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %39) #7
  br label %43

43:                                               ; preds = %42, %38
  %44 = shl nuw nsw i32 %39, 2
  %45 = getelementptr i8, ptr %37, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %46) #7
  %47 = add nuw nsw i32 %39, 1
  %48 = icmp eq i32 %47, 64
  br i1 %48, label %49, label %38

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.sti_hda, ptr %8, i32 0, i32 4
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %51) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %54) #7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.39) #7
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, ptr @.str.32, ptr @.str.33
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %57) #7
  br label %58

58:                                               ; preds = %53, %49
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hda_connector_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sti_hda_connector, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11) #7
  %4 = getelementptr inbounds %struct.sti_hda, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @drm_mode_duplicate(ptr noundef %5, ptr noundef nonnull @hda_supported_modes) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 28
  %10 = load i8, ptr %9, align 2
  %11 = or i8 %10, 8
  store i8 %11, ptr %9, align 2
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %6) #7
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ 1, %8 ], [ 0, %1 ]
  %14 = load ptr, ptr %4, align 8
  %15 = tail call ptr @drm_mode_duplicate(ptr noundef %14, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 1)) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %15) #7
  %18 = add nuw nsw i32 %13, 1
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %18, %17 ], [ %13, %12 ]
  %21 = load ptr, ptr %4, align 8
  %22 = tail call ptr @drm_mode_duplicate(ptr noundef %21, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 2)) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %22) #7
  %25 = add nsw i32 %20, 1
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %25, %24 ], [ %20, %19 ]
  %28 = load ptr, ptr %4, align 8
  %29 = tail call ptr @drm_mode_duplicate(ptr noundef %28, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 3)) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %29) #7
  %32 = add nsw i32 %27, 1
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi i32 [ %32, %31 ], [ %27, %26 ]
  %35 = load ptr, ptr %4, align 8
  %36 = tail call ptr @drm_mode_duplicate(ptr noundef %35, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 4)) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %36) #7
  %39 = add i32 %34, 1
  br label %40

40:                                               ; preds = %38, %33
  %41 = phi i32 [ %39, %38 ], [ %34, %33 ]
  %42 = load ptr, ptr %4, align 8
  %43 = tail call ptr @drm_mode_duplicate(ptr noundef %42, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 5)) #7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %43) #7
  %46 = add i32 %41, 1
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi i32 [ %46, %45 ], [ %41, %40 ]
  %49 = load ptr, ptr %4, align 8
  %50 = tail call ptr @drm_mode_duplicate(ptr noundef %49, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 6)) #7
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %50) #7
  %53 = add i32 %48, 1
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi i32 [ %53, %52 ], [ %48, %47 ]
  %56 = load ptr, ptr %4, align 8
  %57 = tail call ptr @drm_mode_duplicate(ptr noundef %56, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 7)) #7
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %57) #7
  %60 = add i32 %55, 1
  br label %61

61:                                               ; preds = %59, %54
  %62 = phi i32 [ %60, %59 ], [ %55, %54 ]
  %63 = load ptr, ptr %4, align 8
  %64 = tail call ptr @drm_mode_duplicate(ptr noundef %63, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 8)) #7
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %64) #7
  %67 = add i32 %62, 1
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi i32 [ %67, %66 ], [ %62, %61 ]
  %70 = load ptr, ptr %4, align 8
  %71 = tail call ptr @drm_mode_duplicate(ptr noundef %70, ptr noundef getelementptr inbounds ([10 x %struct.sti_hda_video_config], ptr @hda_supported_modes, i32 0, i32 9)) #7
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %71) #7
  %74 = add i32 %69, 1
  br label %75

75:                                               ; preds = %73, %68
  %76 = phi i32 [ %74, %73 ], [ %69, %68 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_hda_connector_mode_valid(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = load i32, ptr %1, align 4
  %5 = mul i32 %4, 1000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %6 = getelementptr inbounds %struct.sti_hda_connector, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = call fastcc zeroext i1 @hda_get_mode_idx(ptr noundef byval(%struct.drm_display_mode) align 4 %1, ptr noundef nonnull %3)
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = add i32 %5, 50
  %11 = add i32 %5, -50
  %12 = getelementptr inbounds %struct.sti_hda, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_round_rate(ptr noundef %13, i32 noundef %5) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef %5, i32 noundef %14) #7
  %15 = icmp slt i32 %14, %11
  %16 = icmp sgt i32 %14, %10
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef %5) #7
  br label %19

19:                                               ; preds = %18, %9, %2
  %20 = phi i32 [ -2, %18 ], [ -2, %2 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind }

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
!8 = !{i64 1744072}
!9 = !{i64 2155154265}
!10 = !{i64 2155154617}
!11 = !{i64 1743654}
!12 = !{i8 0, i8 2}
!13 = !{i64 2155153157}
!14 = !{i64 2155153343}
!15 = !{!"auto-init"}
!16 = !{i64 2155155962}
!17 = !{i64 2155156306}
!18 = !{i64 2155156753}
!19 = !{i64 2155157201}
!20 = !{i64 2155157649}
!21 = !{i64 2155158092}
!22 = !{i64 2155158536}
!23 = !{i64 2155158980}
!24 = !{i64 2155155150}
!25 = !{i64 2155155442}
