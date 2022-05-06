; ModuleID = '/llk/IR/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/analogix/analogix_dp_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_analogix_dp_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22analogix_dp_probe\22\09\09\09\09\09"
module asm "__kstrtabns_analogix_dp_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_analogix_dp_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22analogix_dp_bind\22\09\09\09\09\09"
module asm "__kstrtabns_analogix_dp_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_analogix_dp_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22analogix_dp_unbind\22\09\09\09\09\09"
module asm "__kstrtabns_analogix_dp_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_analogix_dp_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22analogix_dp_remove\22\09\09\09\09\09"
module asm "__kstrtabns_analogix_dp_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_analogix_dp_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22analogix_dp_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_analogix_dp_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_analogix_dp_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22analogix_dp_resume\22\09\09\09\09\09"
module asm "__kstrtabns_analogix_dp_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_analogix_dp_start_crc:\09\09\09\09\09"
module asm "\09.asciz \09\22analogix_dp_start_crc\22\09\09\09\09\09"
module asm "__kstrtabns_analogix_dp_start_crc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_analogix_dp_stop_crc:\09\09\09\09\09"
module asm "\09.asciz \09\22analogix_dp_stop_crc\22\09\09\09\09\09"
module asm "__kstrtabns_analogix_dp_stop_crc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analogix_dp_device = type { ptr, ptr, ptr, %struct.drm_connector, ptr, %struct.drm_dp_aux, ptr, i32, ptr, %struct.video_info, %struct.link_train, ptr, i32, ptr, i8, i8, i8, %struct.mutex, i8, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.video_info = type { ptr, i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.link_train = type { i32, [4 x i32], i8, i8, [4 x i8], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.analogix_dp_plat_data = type { i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.72 = type { i32, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.dp_sdp = type { %struct.dp_sdp_header, [32 x i8] }
%struct.dp_sdp_header = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [27 x i8] c"Invalided input plat_data\0A\00", align 1
@analogix_dp_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"&dp->panel_lock\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"no DP phy configured\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"force-hpd\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"hpd\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"samsung,hpd\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"error getting HDP GPIO: %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"analogix-dp\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@__kstrtab_analogix_dp_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_analogix_dp_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_analogix_dp_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @analogix_dp_probe to i32), ptr @__kstrtab_analogix_dp_probe, ptr @__kstrtabns_analogix_dp_probe }, section "___ksymtab_gpl+analogix_dp_probe", align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"DP-AUX\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"failed to create bridge (%d)\0A\00", align 1
@__kstrtab_analogix_dp_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_analogix_dp_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_analogix_dp_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @analogix_dp_bind to i32), ptr @__kstrtab_analogix_dp_bind, ptr @__kstrtabns_analogix_dp_bind }, section "___ksymtab_gpl+analogix_dp_bind", align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"failed to turnoff the panel\0A\00", align 1
@__kstrtab_analogix_dp_unbind = external dso_local constant [0 x i8], align 1
@__kstrtabns_analogix_dp_unbind = external dso_local constant [0 x i8], align 1
@__ksymtab_analogix_dp_unbind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @analogix_dp_unbind to i32), ptr @__kstrtab_analogix_dp_unbind, ptr @__kstrtabns_analogix_dp_unbind }, section "___ksymtab_gpl+analogix_dp_unbind", align 4
@__kstrtab_analogix_dp_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_analogix_dp_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_analogix_dp_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @analogix_dp_remove to i32), ptr @__kstrtab_analogix_dp_remove, ptr @__kstrtabns_analogix_dp_remove }, section "___ksymtab_gpl+analogix_dp_remove", align 4
@__kstrtab_analogix_dp_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_analogix_dp_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_analogix_dp_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @analogix_dp_suspend to i32), ptr @__kstrtab_analogix_dp_suspend, ptr @__kstrtabns_analogix_dp_suspend }, section "___ksymtab_gpl+analogix_dp_suspend", align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"Failed to prepare_enable the clock clk [%d]\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"failed to setup the panel\0A\00", align 1
@__kstrtab_analogix_dp_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_analogix_dp_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_analogix_dp_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @analogix_dp_resume to i32), ptr @__kstrtab_analogix_dp_resume, ptr @__kstrtabns_analogix_dp_resume }, section "___ksymtab_gpl+analogix_dp_resume", align 4
@.str.17 = private unnamed_addr constant [45 x i8] c"Connector %s doesn't currently have a CRTC.\0A\00", align 1
@__kstrtab_analogix_dp_start_crc = external dso_local constant [0 x i8], align 1
@__kstrtabns_analogix_dp_start_crc = external dso_local constant [0 x i8], align 1
@__ksymtab_analogix_dp_start_crc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @analogix_dp_start_crc to i32), ptr @__kstrtab_analogix_dp_start_crc, ptr @__kstrtabns_analogix_dp_start_crc }, section "___ksymtab_gpl+analogix_dp_start_crc", align 4
@__kstrtab_analogix_dp_stop_crc = external dso_local constant [0 x i8], align 1
@__kstrtabns_analogix_dp_stop_crc = external dso_local constant [0 x i8], align 1
@__ksymtab_analogix_dp_stop_crc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @analogix_dp_stop_crc to i32), ptr @__kstrtab_analogix_dp_stop_crc, ptr @__kstrtabns_analogix_dp_stop_crc }, section "___ksymtab_gpl+analogix_dp_stop_crc", align 4
@__UNIQUE_ID_author266 = internal constant [40 x i8] c"author=Jingoo Han <jg1.han@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description267 = internal constant [36 x i8] c"description=Analogix DP Core Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license268 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"samsung,link-rate\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"samsung,lane-count\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"failed to allocate for drm bridge\0A\00", align 1
@analogix_dp_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr @analogix_dp_bridge_attach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @analogix_dp_bridge_mode_set, ptr null, ptr null, ptr @analogix_dp_bridge_atomic_pre_enable, ptr @analogix_dp_bridge_atomic_enable, ptr @analogix_dp_bridge_atomic_disable, ptr @analogix_dp_bridge_atomic_post_disable, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_bridge_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.21 = private unnamed_addr constant [46 x i8] c"Fix bridge driver to make connector optional!\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Parent encoder object not found\00", align 1
@analogix_dp_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @analogix_dp_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.23 = private unnamed_addr constant [41 x i8] c"Failed to initialize connector with drm\0A\00", align 1
@analogix_dp_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @analogix_dp_get_modes, ptr null, ptr null, ptr null, ptr @analogix_dp_best_encoder, ptr null, ptr @analogix_dp_atomic_check, ptr null, ptr null, ptr null }, align 4
@.str.24 = private unnamed_addr constant [32 x i8] c"Failed at platform attach func\0A\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"Failed to unprepare panel (%d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"failed to get hpd plug in status\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"drivers/gpu/drm/bridge/analogix/analogix_dp_core.c\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"samsung,color-space\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"samsung,dynamic-range\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"samsung,ycbcr-coeff\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"samsung,color-depth\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"hsync-active-high\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"vsync-active-high\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"failed to setup the panel ret = %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"Failed to disable psr %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"failed to set bridge, retry: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"too many times retry set bridge, give it up\0A\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"*ERROR* Failed to set DP Power0 %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"*ERROR* Failed to read psr status %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"*ERROR* sink inactive, skip disable psr\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"*ERROR* Failed to train the link %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [37 x i8] c"*ERROR* Wait for pll lock failed %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"Rx Max Link Rate is abnormal :%x !\0A\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"Rx Max Lane count is abnormal :%x !\0A\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"LT link start failed!\0A\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"LT CR failed!\0A\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"LT EQ failed!\0A\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"eDP link training failed (%d)\0A\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"failed to set enhance mode\0A\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"Wait for PLL lock timed out\0A\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"CR Max reached (%d,%d,%d)\0A\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"EQ Max loop\0A\00", align 1
@.str.60 = private unnamed_addr constant [35 x i8] c"failed to get hpd single ret = %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"dp commit error, ret = %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"failed to disable the panel\0A\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"unable to do link train, ret=%d\0A\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"can not enable scramble\0A\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"unable to config video\0A\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"failed to enable the panel\0A\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"PLL is not locked yet.\0A\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"Timeout of slave video streamclk ok\0A\00", align 1
@.str.69 = private unnamed_addr constant [40 x i8] c"Ignoring timeout of video streamclk ok\0A\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"failed to read downspread %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"failed to get PSR version, disable it\0A\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"failed to get psr config\0A\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"failed to disable panel psr\0A\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"failed to set panel psr\0A\00", align 1
@.str.75 = private unnamed_addr constant [39 x i8] c"enable psr fail, force to disable psr\0A\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"Failed to enable psr (%d)\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description267, ptr @__UNIQUE_ID_license268, ptr @__ksymtab_analogix_dp_bind, ptr @__ksymtab_analogix_dp_probe, ptr @__ksymtab_analogix_dp_remove, ptr @__ksymtab_analogix_dp_resume, ptr @__ksymtab_analogix_dp_start_crc, ptr @__ksymtab_analogix_dp_stop_crc, ptr @__ksymtab_analogix_dp_suspend, ptr @__ksymtab_analogix_dp_unbind], section "llvm.metadata"
@switch.table.analogix_dp_bridge_mode_set = private unnamed_addr constant [7 x i32] [i32 0, i32 1, i32 1, i32 1, i32 2, i32 1, i32 3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @analogix_dp_probe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str) #7
  br label %92

6:                                                ; preds = %2
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 1920, i32 noundef 3520) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %92, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 12
  store i32 3, ptr %11, align 8
  %12 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @analogix_dp_probe.__key) #8
  %13 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 18
  store i8 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 19
  store ptr %1, ptr %14, align 4
  %15 = load i32, ptr %1, align 4
  switch i32 %15, label %27 [
    i32 1, label %16
    i32 2, label %16
    i32 0, label %19
  ]

16:                                               ; preds = %9, %9
  %17 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 9, i32 8
  store i32 10, ptr %17, align 4
  %18 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 9, i32 9
  store i32 4, ptr %18, align 4
  br label %27

19:                                               ; preds = %9
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 9, i32 8
  %24 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.18, ptr noundef %23, i32 noundef 1, i32 noundef 0) #8
  %25 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 9, i32 9
  %26 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.19, ptr noundef %25, i32 noundef 1, i32 noundef 0) #8
  br label %27

27:                                               ; preds = %19, %16, %9
  %28 = load ptr, ptr %10, align 4
  %29 = tail call ptr @devm_phy_get(ptr noundef %28, ptr noundef nonnull @.str.2) #8
  %30 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 11
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.3) #7
  %34 = load ptr, ptr %30, align 4
  %35 = ptrtoint ptr %34 to i32
  switch i32 %35, label %92 [
    i32 0, label %37
    i32 -19, label %36
    i32 -38, label %36
  ]

36:                                               ; preds = %32, %32
  store ptr null, ptr %30, align 4
  br label %37

37:                                               ; preds = %36, %32, %27
  %38 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  %39 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 6
  store ptr %38, ptr %39, align 8
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  %42 = load ptr, ptr %39, align 8
  br label %92

43:                                               ; preds = %37
  %44 = tail call i32 @clk_prepare(ptr noundef %38) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = tail call i32 @clk_enable(ptr noundef %38) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @clk_unprepare(ptr noundef %38) #8
  br label %50

50:                                               ; preds = %49, %46, %43
  %51 = tail call ptr @platform_get_resource(ptr noundef %3, i32 noundef 512, i32 noundef 0) #8
  %52 = tail call ptr @devm_ioremap_resource(ptr noundef %0, ptr noundef %51) #8
  %53 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 8
  store ptr %52, ptr %53, align 8
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %92, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %57 = load ptr, ptr %56, align 8
  %58 = tail call ptr @of_find_property(ptr noundef %57, ptr noundef nonnull @.str.5, ptr noundef null) #8
  %59 = icmp ne ptr %58, null
  %60 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 14
  %61 = zext i1 %59 to i8
  store i8 %61, ptr %60, align 8
  %62 = tail call ptr @devm_gpiod_get_optional(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef 1) #8
  %63 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 13
  store ptr %62, ptr %63, align 4
  %64 = icmp eq ptr %62, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = tail call ptr @devm_gpiod_get_optional(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 1) #8
  store ptr %66, ptr %63, align 4
  br label %67

67:                                               ; preds = %65, %55
  %68 = phi ptr [ %66, %65 ], [ %62, %55 ]
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = ptrtoint ptr %68 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %71) #7
  %72 = load ptr, ptr %63, align 4
  br label %92

73:                                               ; preds = %67
  %74 = icmp eq ptr %68, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %73
  %76 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %68) #8
  br label %79

77:                                               ; preds = %73
  %78 = tail call i32 @platform_get_irq(ptr noundef %3, i32 noundef 0) #8
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %78, %77 ], [ %76, %75 ]
  %81 = phi i32 [ 0, %77 ], [ 3, %75 ]
  %82 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 7
  store i32 %80, ptr %82, align 4
  %83 = icmp eq i32 %80, -6
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9) #7
  br label %92

85:                                               ; preds = %79
  %86 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %80, ptr noundef nonnull @analogix_dp_hardirq, ptr noundef nonnull @analogix_dp_irq_thread, i32 noundef %81, ptr noundef nonnull @.str.10, ptr noundef nonnull %7) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #7
  %89 = inttoptr i32 %86 to ptr
  br label %92

90:                                               ; preds = %85
  %91 = load i32, ptr %82, align 4
  tail call void @disable_irq(i32 noundef %91) #8
  br label %92

92:                                               ; preds = %90, %88, %84, %70, %50, %41, %32, %6, %5
  %93 = phi ptr [ %42, %41 ], [ %72, %70 ], [ inttoptr (i32 -19 to ptr), %84 ], [ %89, %88 ], [ %7, %90 ], [ inttoptr (i32 -22 to ptr), %5 ], [ inttoptr (i32 -12 to ptr), %6 ], [ %34, %32 ], [ %52, %50 ]
  ret ptr %93
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @analogix_dp_hardirq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @analogix_dp_get_irq_type(ptr noundef %1) #8
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @analogix_dp_mute_hpd_interrupt(ptr noundef %1) #8
  br label %6

6:                                                ; preds = %5, %2
  %7 = phi i32 [ 2, %5 ], [ 0, %2 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @analogix_dp_irq_thread(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @analogix_dp_get_irq_type(ptr noundef %1) #8
  %4 = and i32 %3, 3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.analogix_dp_device, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef nonnull %8) #8
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = icmp eq i32 %3, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  tail call void @analogix_dp_clear_hotplug_interrupts(ptr noundef %1) #8
  tail call void @analogix_dp_unmute_hpd_interrupt(ptr noundef %1) #8
  br label %15

15:                                               ; preds = %14, %12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_bind(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 2
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  store ptr %7, ptr %0, align 8
  %8 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 5
  store ptr @.str.12, ptr %8, align 8
  %9 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 5, i32 8
  store ptr @analogix_dpaux_transfer, ptr %9, align 4
  %10 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 5, i32 2
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 5, i32 3
  store ptr %1, ptr %13, align 4
  %14 = tail call i32 @drm_dp_aux_register(ptr noundef %8) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load ptr, ptr %10, align 4
  tail call void @pm_runtime_enable(ptr noundef %17) #8
  %18 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef 132, i32 noundef 3520) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #8
  br label %30

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 4
  store ptr %20, ptr %24, align 8
  %25 = getelementptr inbounds %struct.drm_bridge, ptr %20, i32 0, i32 8
  store ptr %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.drm_bridge, ptr %20, i32 0, i32 7
  store ptr @analogix_dp_bridge_funcs, ptr %26, align 4
  %27 = load ptr, ptr %0, align 8
  %28 = tail call i32 @drm_bridge_attach(ptr noundef %27, ptr noundef nonnull %20, ptr noundef null, i32 noundef 0) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23, %22
  %31 = phi i32 [ -12, %22 ], [ %28, %23 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %31) #8
  %32 = load ptr, ptr %10, align 4
  tail call void @__pm_runtime_disable(ptr noundef %32, i1 noundef zeroext true) #8
  tail call void @drm_dp_aux_unregister(ptr noundef %8) #8
  br label %33

33:                                               ; preds = %30, %23, %2
  %34 = phi i32 [ %31, %30 ], [ %14, %2 ], [ 0, %23 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @analogix_dpaux_transfer(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -992
  %4 = tail call i32 @analogix_dp_transfer(ptr noundef %3, ptr noundef %1) #8
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_unbind(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @analogix_dp_bridge_disable(ptr noundef %3)
  %4 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 3, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_connector_funcs, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %4) #8
  %9 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = tail call i32 @drm_panel_unprepare(ptr noundef nonnull %12) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #8
  br label %18

18:                                               ; preds = %17, %14, %1
  %19 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 5
  tail call void @drm_dp_aux_unregister(ptr noundef %19) #8
  %20 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void @__pm_runtime_disable(ptr noundef %21, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @analogix_dp_bridge_disable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.analogix_dp_device, ptr %3, i32 0, i32 12
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %52

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.analogix_dp_device, ptr %3, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @drm_panel_disable(ptr noundef nonnull %11) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.62) #8
  br label %52

17:                                               ; preds = %13, %7
  %18 = getelementptr inbounds %struct.analogix_dp_device, ptr %3, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  tail call void @disable_irq(i32 noundef %19) #8
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = tail call i32 %22(ptr noundef %20) #8
  br label %26

26:                                               ; preds = %24, %17
  tail call void @analogix_dp_set_analog_power_down(ptr noundef %3, i32 noundef 6, i1 noundef zeroext true) #8
  %27 = getelementptr inbounds %struct.analogix_dp_device, ptr %3, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @phy_power_off(ptr noundef %28) #8
  %30 = getelementptr inbounds %struct.analogix_dp_device, ptr %3, i32 0, i32 6
  %31 = load ptr, ptr %30, align 8
  tail call void @clk_disable(ptr noundef %31) #8
  tail call void @clk_unprepare(ptr noundef %31) #8
  %32 = getelementptr inbounds %struct.analogix_dp_device, ptr %3, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @__pm_runtime_idle(ptr noundef %33, i32 noundef 4) #8
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.analogix_dp_device, ptr %3, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %40) #8
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @drm_panel_unprepare(ptr noundef %43) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.analogix_dp_device, ptr %3, i32 0, i32 18
  store i8 0, ptr %47, align 8
  tail call void @mutex_unlock(ptr noundef %40) #8
  br label %49

48:                                               ; preds = %39
  tail call void @mutex_unlock(ptr noundef %40) #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36, i32 noundef %44) #8
  br label %49

49:                                               ; preds = %48, %46, %26
  %50 = getelementptr inbounds %struct.analogix_dp_device, ptr %3, i32 0, i32 15
  store i8 0, ptr %50, align 1
  %51 = getelementptr inbounds %struct.analogix_dp_device, ptr %3, i32 0, i32 16
  store i8 0, ptr %51, align 2
  store i32 3, ptr %4, align 8
  br label %52

52:                                               ; preds = %49, %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @analogix_dp_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @drm_panel_unprepare(ptr noundef nonnull %7) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #8
  br label %13

13:                                               ; preds = %12, %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %10

10:                                               ; preds = %9, %1
  %11 = phi i32 [ %4, %1 ], [ %7, %9 ]
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %11) #8
  br label %24

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 19
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @drm_panel_prepare(ptr noundef nonnull %18) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %24

24:                                               ; preds = %23, %20, %14, %13
  %25 = phi i32 [ %11, %13 ], [ -16, %23 ], [ 0, %20 ], [ 0, %14 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_start_crc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 52
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_connector_state, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, ptr noundef %9) #8
  br label %13

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 976
  %12 = tail call i32 @drm_dp_start_crc(ptr noundef %11, ptr noundef nonnull %5) #8
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %12, %10 ], [ -22, %7 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_start_crc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_stop_crc(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 976
  %3 = tail call i32 @drm_dp_stop_crc(ptr noundef %2) #8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_stop_crc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_get_irq_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_mute_hpd_interrupt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_clear_hotplug_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_unmute_hpd_interrupt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_transfer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @analogix_dp_bridge_attach(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.analogix_dp_device, ptr %4, i32 0, i32 19
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %14, i32 0, i32 4
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.analogix_dp_device, ptr %4, i32 0, i32 3
  %20 = getelementptr inbounds %struct.analogix_dp_device, ptr %4, i32 0, i32 3, i32 33
  store i8 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.analogix_dp_device, ptr %4, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @drm_connector_init(ptr noundef %22, ptr noundef %19, ptr noundef nonnull @analogix_dp_connector_funcs, i32 noundef 14) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.analogix_dp_device, ptr %4, i32 0, i32 3, i32 35
  store ptr @analogix_dp_connector_helper_funcs, ptr %26, align 4
  %27 = tail call i32 @drm_connector_attach_encoder(ptr noundef %19, ptr noundef %5) #8
  %28 = load ptr, ptr %13, align 4
  br label %29

29:                                               ; preds = %25, %12
  %30 = phi ptr [ %14, %12 ], [ %28, %25 ]
  %31 = phi ptr [ null, %12 ], [ %19, %25 ]
  %32 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %30, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = tail call i32 %33(ptr noundef %30, ptr noundef %0, ptr noundef %31) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35, %18, %8, %2
  %39 = phi ptr [ @.str.21, %2 ], [ @.str.22, %8 ], [ @.str.23, %18 ], [ @.str.24, %35 ]
  %40 = phi i32 [ -22, %2 ], [ -19, %8 ], [ %23, %18 ], [ %36, %35 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %39) #8
  br label %41

41:                                               ; preds = %38, %35, %29
  %42 = phi i32 [ 0, %35 ], [ 0, %29 ], [ %40, %38 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @analogix_dp_bridge_mode_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 9, i32 3
  %13 = trunc i32 %11 to i8
  %14 = lshr i8 %13, 4
  %15 = and i8 %14, 1
  store i8 %15, ptr %12, align 2
  %16 = load i32, ptr %10, align 4
  %17 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 9, i32 2
  %18 = trunc i32 %16 to i8
  %19 = lshr i8 %18, 3
  %20 = and i8 %19, 1
  store i8 %20, ptr %17, align 1
  %21 = load i32, ptr %10, align 4
  %22 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 9, i32 1
  %23 = trunc i32 %21 to i8
  %24 = lshr i8 %23, 1
  %25 = and i8 %24, 1
  store i8 %25, ptr %22, align 4
  %26 = tail call zeroext i8 @drm_match_cea_mode(ptr noundef %2) #8
  switch i8 %26, label %27 [
    i8 22, label %29
    i8 21, label %29
    i8 18, label %29
    i8 17, label %29
    i8 7, label %29
    i8 6, label %29
    i8 3, label %29
    i8 2, label %29
    i8 0, label %28
  ]

27:                                               ; preds = %3
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %27, %3, %3, %3, %3, %3, %3, %3, %3
  %30 = phi i32 [ 1, %27 ], [ 0, %28 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ]
  %31 = phi i32 [ 1, %27 ], [ 1, %28 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ]
  %32 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 9, i32 5
  store i32 %30, ptr %32, align 4
  %33 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 9, i32 6
  store i32 %31, ptr %33, align 4
  %34 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 3, i32 20, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, -6
  %37 = icmp ult i32 %36, 7
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = getelementptr inbounds [7 x i32], ptr @switch.table.analogix_dp_bridge_mode_set, i32 0, i32 %36
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %29
  %42 = phi i32 [ %40, %38 ], [ 1, %29 ]
  %43 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 9, i32 7
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 3, i32 20, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 9, i32 4
  store i32 2, ptr %49, align 4
  br label %56

50:                                               ; preds = %41
  %51 = and i32 %45, 4
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 9, i32 4
  br i1 %52, label %55, label %54

54:                                               ; preds = %50
  store i32 1, ptr %53, align 4
  br label %56

55:                                               ; preds = %50
  store i32 0, ptr %53, align 4
  br label %56

56:                                               ; preds = %55, %54, %48
  %57 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 9, i32 4
  %58 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.29, ptr noundef %57, i32 noundef 1, i32 noundef 0) #8
  %59 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 9, i32 5
  %60 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef %59, i32 noundef 1, i32 noundef 0) #8
  %61 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 9, i32 6
  %62 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.31, ptr noundef %61, i32 noundef 1, i32 noundef 0) #8
  %63 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 9, i32 7
  %64 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.32, ptr noundef %63, i32 noundef 1, i32 noundef 0) #8
  %65 = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.33, ptr noundef null) #8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  store i8 1, ptr %22, align 4
  br label %68

68:                                               ; preds = %67, %56
  %69 = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.34, ptr noundef null) #8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  store i8 1, ptr %17, align 1
  br label %72

72:                                               ; preds = %71, %68
  %73 = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.35, ptr noundef null) #8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i8 1, ptr %12, align 2
  br label %76

76:                                               ; preds = %75, %72
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @analogix_dp_bridge_atomic_pre_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %3, ptr noundef %6) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %53, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.drm_connector, ptr %7, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_atomic_state, ptr %3, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.drm_atomic_state, ptr %3, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.__drm_connnectors_state, ptr %17, i32 %11, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %53, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.drm_connector_state, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %53, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.drm_atomic_state, ptr %3, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.drm_crtc, ptr %23, i32 0, i32 8
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr %struct.__drm_crtcs_state, ptr %27, i32 %29, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.drm_crtc_state, ptr %31, i32 0, i32 16
  %35 = load i8, ptr %34, align 2, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33, %25
  %38 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 19
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %44) #8
  %45 = load ptr, ptr %38, align 4
  %46 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @drm_panel_prepare(ptr noundef %47) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.analogix_dp_device, ptr %5, i32 0, i32 18
  store i8 1, ptr %51, align 8
  tail call void @mutex_unlock(ptr noundef %44) #8
  br label %53

52:                                               ; preds = %43
  tail call void @mutex_unlock(ptr noundef %44) #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36, i32 noundef %48) #8
  br label %53

53:                                               ; preds = %52, %50, %37, %33, %21, %15, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @analogix_dp_bridge_atomic_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.dp_sdp, align 1
  %13 = alloca i8, align 1
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 8
  %18 = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %14, ptr noundef %17) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %282, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.drm_connector, ptr %18, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_atomic_state, ptr %14, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %282

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.drm_atomic_state, ptr %14, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr %struct.__drm_connnectors_state, ptr %28, i32 %22, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %282, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.drm_connector_state, ptr %30, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %282, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.drm_atomic_state, ptr %14, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.drm_crtc, ptr %34, i32 0, i32 8
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr %struct.__drm_crtcs_state, ptr %38, i32 %40, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %83, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.drm_crtc_state, ptr %42, i32 0, i32 16
  %46 = load i8, ptr %45, align 2, !range !8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %83, label %48

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #8
  store i8 0, ptr %13, align 1, !annotation !9
  tail call void @analogix_dp_set_analog_power_down(ptr noundef %16, i32 noundef 6, i1 noundef zeroext false) #8
  %49 = getelementptr inbounds %struct.analogix_dp_device, ptr %16, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #8
  store i8 1, ptr %11, align 1
  %50 = call i32 @drm_dp_dpcd_write(ptr noundef %49, i32 noundef 1536, ptr noundef nonnull %11, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #8
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.analogix_dp_device, ptr %16, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %54, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %50) #8
  br label %78

55:                                               ; preds = %48
  %56 = call i32 @drm_dp_dpcd_read(ptr noundef %49, i32 noundef 8200, ptr noundef nonnull %13, i32 noundef 1) #8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.analogix_dp_device, ptr %16, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %60, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.42, i32 noundef %56) #8
  br label %78

61:                                               ; preds = %55
  %62 = load i8, ptr %13, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.analogix_dp_device, ptr %16, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %66, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.43) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #8
  br label %282

67:                                               ; preds = %61
  %68 = call fastcc i32 @analogix_dp_train_link(ptr noundef %16) #8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.analogix_dp_device, ptr %16, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %72, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.44, i32 noundef %68) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #8
  br label %81

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.dp_sdp_header, ptr %12, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %12, i8 0, i64 36, i1 false) #8
  store i8 7, ptr %74, align 1
  %75 = getelementptr inbounds %struct.dp_sdp_header, ptr %12, i32 0, i32 2
  store i8 2, ptr %75, align 1
  %76 = getelementptr inbounds %struct.dp_sdp_header, ptr %12, i32 0, i32 3
  store i8 8, ptr %76, align 1
  %77 = call i32 @analogix_dp_send_psr_spd(ptr noundef %16, ptr noundef nonnull %12, i1 noundef zeroext true) #8
  br label %78

78:                                               ; preds = %73, %58, %52
  %79 = phi i32 [ %50, %52 ], [ %56, %58 ], [ %77, %73 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %282, label %81

81:                                               ; preds = %78, %70
  %82 = phi i32 [ %68, %70 ], [ %79, %78 ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37, i32 noundef %82) #8
  br label %282

83:                                               ; preds = %44, %36
  %84 = getelementptr inbounds %struct.analogix_dp_device, ptr %16, i32 0, i32 12
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %282, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.analogix_dp_device, ptr %16, i32 0, i32 1
  %89 = getelementptr inbounds %struct.analogix_dp_device, ptr %16, i32 0, i32 6
  %90 = getelementptr inbounds %struct.analogix_dp_device, ptr %16, i32 0, i32 19
  %91 = getelementptr inbounds %struct.analogix_dp_device, ptr %16, i32 0, i32 11
  %92 = getelementptr inbounds %struct.analogix_dp_device, ptr %16, i32 0, i32 14
  %93 = getelementptr inbounds %struct.analogix_dp_device, ptr %16, i32 0, i32 5
  %94 = getelementptr inbounds %struct.analogix_dp_device, ptr %16, i32 0, i32 15
  br label %95

95:                                               ; preds = %274, %87
  %96 = phi i32 [ 0, %87 ], [ %278, %274 ]
  %97 = load ptr, ptr %88, align 4
  %98 = call i32 @__pm_runtime_resume(ptr noundef %97, i32 noundef 4) #8
  %99 = load ptr, ptr %89, align 8
  %100 = call i32 @clk_prepare(ptr noundef %99) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = call i32 @clk_enable(ptr noundef %99) #8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  call void @clk_unprepare(ptr noundef %99) #8
  br label %106

106:                                              ; preds = %105, %95
  %107 = phi i32 [ %100, %95 ], [ %103, %105 ]
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %107) #8
  br label %274

110:                                              ; preds = %106, %102
  %111 = load ptr, ptr %90, align 4
  %112 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %111, i32 0, i32 5
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %116 = call i32 %113(ptr noundef %111) #8
  br label %117

117:                                              ; preds = %115, %110
  %118 = load ptr, ptr %91, align 4
  %119 = call i32 @phy_power_on(ptr noundef %118) #8
  call void @analogix_dp_reset(ptr noundef %16) #8
  call void @analogix_dp_swreset(ptr noundef %16) #8
  call void @analogix_dp_init_analog_param(ptr noundef %16) #8
  call void @analogix_dp_init_interrupt(ptr noundef %16) #8
  call void @analogix_dp_enable_sw_function(ptr noundef %16) #8
  call void @analogix_dp_config_interrupt(ptr noundef %16) #8
  %120 = call i32 @analogix_dp_init_analog_func(ptr noundef %16) #8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %260

122:                                              ; preds = %117
  call void @analogix_dp_init_hpd(ptr noundef %16) #8
  call void @analogix_dp_init_aux(ptr noundef %16) #8
  br label %123

123:                                              ; preds = %127, %122
  %124 = phi i32 [ 0, %122 ], [ %128, %127 ]
  %125 = call i32 @analogix_dp_get_plug_in_status(ptr noundef %16) #8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %123
  %128 = add nuw nsw i32 %124, 1
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #8
  %129 = icmp eq i32 %128, 100
  br i1 %129, label %130, label %123

130:                                              ; preds = %127
  %131 = load i8, ptr %92, align 8, !range !8
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %130
  call void @analogix_dp_force_hpd(ptr noundef %16) #8
  %134 = call i32 @analogix_dp_get_plug_in_status(ptr noundef %16) #8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.27) #7
  br label %138

138:                                              ; preds = %136, %130
  %139 = phi i32 [ -22, %136 ], [ -110, %130 ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.60, i32 noundef %139) #8
  br label %260

140:                                              ; preds = %133, %123
  %141 = load ptr, ptr %90, align 4
  %142 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %141, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %140
  %146 = call i32 @drm_panel_disable(ptr noundef nonnull %143) #8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.62) #8
  br label %149

149:                                              ; preds = %148, %145, %140
  %150 = call fastcc i32 @analogix_dp_train_link(ptr noundef %16) #8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.63, i32 noundef %150) #7
  br label %251

154:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  store i8 0, ptr %10, align 1, !annotation !9
  call void @analogix_dp_enable_scrambling(ptr noundef %16) #8
  %155 = call i32 @drm_dp_dpcd_read(ptr noundef %93, i32 noundef 258, ptr noundef nonnull %10, i32 noundef 1) #8
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load i8, ptr %10, align 1
  %159 = and i8 %158, -33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  store i8 %159, ptr %9, align 1
  %160 = call i32 @drm_dp_dpcd_write(ptr noundef %93, i32 noundef 258, ptr noundef nonnull %9, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  %161 = call i32 @llvm.smin.i32(i32 %160, i32 0) #8
  br label %162

162:                                              ; preds = %157, %154
  %163 = phi i32 [ %161, %157 ], [ %155, %154 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.64) #7
  br label %251

167:                                              ; preds = %162
  call void @analogix_dp_init_video(ptr noundef %16) #8
  call void @analogix_dp_config_video_slave_mode(ptr noundef %16) #8
  call void @analogix_dp_set_video_color_format(ptr noundef %16) #8
  %168 = call i32 @analogix_dp_get_pll_lock_status(ptr noundef %16) #8
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %196, label %170

170:                                              ; preds = %167
  %171 = call i32 @analogix_dp_is_slave_video_stream_clock_on(ptr noundef %16) #8
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %176, %170
  %174 = phi i32 [ %177, %176 ], [ 1, %170 ]
  %175 = icmp eq i32 %174, 101
  br i1 %175, label %196, label %176

176:                                              ; preds = %173
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1001, i32 noundef 2) #8
  %177 = add nuw nsw i32 %174, 1
  %178 = call i32 @analogix_dp_is_slave_video_stream_clock_on(ptr noundef %16) #8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %173

180:                                              ; preds = %176, %170
  call void @analogix_dp_set_video_cr_mn(ptr noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @analogix_dp_set_video_timing_mode(ptr noundef %16, i32 noundef 0) #8
  call void @analogix_dp_enable_video_mute(ptr noundef %16, i1 noundef zeroext false) #8
  call void @analogix_dp_enable_video_master(ptr noundef %16, i1 noundef zeroext false) #8
  call void @analogix_dp_start_video(ptr noundef %16) #8
  br label %181

181:                                              ; preds = %195, %180
  %182 = phi i32 [ 0, %180 ], [ %184, %195 ]
  %183 = phi i32 [ 0, %180 ], [ %191, %195 ]
  %184 = add nuw nsw i32 %182, 1
  %185 = call i32 @analogix_dp_is_video_stream_on(ptr noundef %16) #8
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = add i32 %183, 1
  %189 = icmp sgt i32 %188, 10
  br i1 %189, label %201, label %190

190:                                              ; preds = %187, %181
  %191 = phi i32 [ %188, %187 ], [ 0, %181 ]
  %192 = icmp eq i32 %182, 100
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %194, ptr noundef nonnull @.str.69) #7
  br label %201

195:                                              ; preds = %190
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1001, i32 noundef 2) #8
  br label %181

196:                                              ; preds = %173, %167
  %197 = phi ptr [ @.str.67, %167 ], [ @.str.68, %173 ]
  %198 = phi i32 [ -22, %167 ], [ -110, %173 ]
  %199 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %199, ptr noundef nonnull %197) #7
  %200 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %200, ptr noundef nonnull @.str.65) #7
  br label %251

201:                                              ; preds = %193, %187
  %202 = load ptr, ptr %90, align 4
  %203 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %202, i32 0, i32 1
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %210, label %206

206:                                              ; preds = %201
  %207 = call i32 @drm_panel_enable(ptr noundef nonnull %204) #8
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %206
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.66) #8
  br label %251

210:                                              ; preds = %206, %201
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 0, ptr %8, align 1, !annotation !9
  %211 = call i32 @drm_dp_dpcd_read(ptr noundef %93, i32 noundef 3, ptr noundef nonnull %8, i32 noundef 1) #8
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i8, ptr %8, align 1
  %215 = lshr i8 %214, 6
  %216 = and i8 %215, 1
  store i8 %216, ptr %94, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  br label %220

217:                                              ; preds = %210
  %218 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %218, ptr noundef nonnull @.str.70, i32 noundef %211) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  %219 = icmp eq i32 %211, 0
  br i1 %219, label %220, label %251

220:                                              ; preds = %217, %213
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1, !annotation !9
  %221 = call i32 @drm_dp_dpcd_read(ptr noundef %93, i32 noundef 112, ptr noundef nonnull %7, i32 noundef 1) #8
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %225, label %223

223:                                              ; preds = %220
  %224 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull @.str.71) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  br label %253

225:                                              ; preds = %220
  %226 = load i8, ptr %7, align 1
  %227 = and i8 %226, 1
  %228 = icmp eq i8 %227, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  br i1 %228, label %253, label %229

229:                                              ; preds = %225
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1, !annotation !9
  %230 = call i32 @drm_dp_dpcd_read(ptr noundef %93, i32 noundef 368, ptr noundef nonnull %6, i32 noundef 1) #8
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %245

232:                                              ; preds = %229
  %233 = load i8, ptr %6, align 1
  %234 = and i8 %233, -2
  store i8 %234, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 %234, ptr %5, align 1
  %235 = call i32 @drm_dp_dpcd_write(ptr noundef %93, i32 noundef 368, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %245

237:                                              ; preds = %232
  store i8 4, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 4, ptr %4, align 1
  %238 = call i32 @drm_dp_dpcd_write(ptr noundef %93, i32 noundef 368, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  store i8 5, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 5, ptr %3, align 1
  %241 = call i32 @drm_dp_dpcd_write(ptr noundef %93, i32 noundef 368, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  call void @analogix_dp_enable_psr_crc(ptr noundef %16) #8
  %244 = getelementptr inbounds %struct.analogix_dp_device, ptr %16, i32 0, i32 16
  store i8 1, ptr %244, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  br label %253

245:                                              ; preds = %240, %237, %232, %229
  %246 = phi ptr [ @.str.72, %229 ], [ @.str.73, %232 ], [ @.str.74, %237 ], [ @.str.74, %240 ]
  %247 = phi i32 [ %230, %229 ], [ %235, %232 ], [ %238, %237 ], [ %241, %240 ]
  %248 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %248, ptr noundef nonnull %246) #7
  %249 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %249, ptr noundef nonnull @.str.75) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  %250 = icmp eq i32 %247, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %245, %217, %209, %196, %165, %152
  %252 = phi i32 [ %247, %245 ], [ %211, %217 ], [ %207, %209 ], [ %198, %196 ], [ %163, %165 ], [ %150, %152 ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.61, i32 noundef %252) #8
  br label %260

253:                                              ; preds = %245, %243, %225, %223
  %254 = load ptr, ptr %90, align 4
  %255 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %254, i32 0, i32 6
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %271, label %258

258:                                              ; preds = %253
  %259 = call i32 %256(ptr noundef %254) #8
  br label %271

260:                                              ; preds = %251, %138, %117
  %261 = load ptr, ptr %91, align 4
  %262 = call i32 @phy_power_off(ptr noundef %261) #8
  %263 = load ptr, ptr %90, align 4
  %264 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %263, i32 0, i32 7
  %265 = load ptr, ptr %264, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %260
  %268 = call i32 %265(ptr noundef %263) #8
  br label %269

269:                                              ; preds = %267, %260
  %270 = load ptr, ptr %89, align 8
  call void @clk_disable(ptr noundef %270) #8
  call void @clk_unprepare(ptr noundef %270) #8
  br label %274

271:                                              ; preds = %258, %253
  %272 = getelementptr inbounds %struct.analogix_dp_device, ptr %16, i32 0, i32 7
  %273 = load i32, ptr %272, align 4
  call void @enable_irq(i32 noundef %273) #8
  store i32 0, ptr %84, align 8
  br label %282

274:                                              ; preds = %269, %109
  %275 = load ptr, ptr %88, align 4
  %276 = call i32 @__pm_runtime_idle(ptr noundef %275, i32 noundef 4) #8
  %277 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %277, ptr noundef nonnull @.str.38, i32 noundef %96) #7
  %278 = add nuw nsw i32 %96, 1
  call void @usleep_range_state(i32 noundef 10, i32 noundef 11, i32 noundef 2) #8
  %279 = icmp eq i32 %278, 5
  br i1 %279, label %280, label %95

280:                                              ; preds = %274
  %281 = load ptr, ptr %88, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %281, ptr noundef nonnull @.str.39) #7
  br label %282

282:                                              ; preds = %280, %271, %83, %81, %78, %64, %32, %26, %20, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @analogix_dp_bridge_atomic_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %3, ptr noundef %6) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.drm_connector, ptr %7, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_atomic_state, ptr %3, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.drm_atomic_state, ptr %3, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.__drm_connnectors_state, ptr %17, i32 %11, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.drm_connector_state, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.drm_atomic_state, ptr %3, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.drm_crtc, ptr %23, i32 0, i32 8
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr %struct.__drm_crtcs_state, ptr %27, i32 %29, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.drm_crtc_state, ptr %31, i32 0, i32 16
  %35 = load i8, ptr %34, align 2, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %25, %21, %15, %9, %2
  tail call fastcc void @analogix_dp_bridge_disable(ptr noundef %0)
  br label %38

38:                                               ; preds = %37, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @analogix_dp_bridge_atomic_post_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.dp_sdp, align 1
  %4 = alloca i8, align 1
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %5, ptr noundef %8) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.drm_connector, ptr %9, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_atomic_state, ptr %5, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.drm_atomic_state, ptr %5, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.__drm_connnectors_state, ptr %19, i32 %13, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %59, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.drm_connector_state, ptr %21, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %59, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.drm_atomic_state, ptr %5, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_crtc, ptr %25, i32 0, i32 8
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr %struct.__drm_crtcs_state, ptr %29, i32 %31, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %59, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.drm_crtc_state, ptr %33, i32 0, i32 16
  %37 = load i8, ptr %36, align 2, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !9
  %40 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 5
  %41 = call i32 @drm_dp_dpcd_read(ptr noundef %40, i32 noundef 8200, ptr noundef nonnull %4, i32 noundef 1) #8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.analogix_dp_device, ptr %7, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %45, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.42, i32 noundef %41) #8
  br label %49

46:                                               ; preds = %39
  %47 = load i8, ptr %4, align 1
  %48 = icmp eq i8 %47, 2
  br i1 %48, label %57, label %49

49:                                               ; preds = %46, %43
  %50 = getelementptr inbounds %struct.dp_sdp_header, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %3, i8 0, i64 36, i1 false) #8
  store i8 7, ptr %50, align 1
  %51 = getelementptr inbounds %struct.dp_sdp_header, ptr %3, i32 0, i32 2
  store i8 2, ptr %51, align 1
  %52 = getelementptr inbounds %struct.dp_sdp_header, ptr %3, i32 0, i32 3
  store i8 8, ptr %52, align 1
  %53 = getelementptr inbounds %struct.dp_sdp, ptr %3, i32 0, i32 1, i32 1
  store i8 5, ptr %53, align 1
  %54 = call i32 @analogix_dp_send_psr_spd(ptr noundef %7, ptr noundef nonnull %3, i1 noundef zeroext true) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  call void @analogix_dp_set_analog_power_down(ptr noundef %7, i32 noundef 6, i1 noundef zeroext true) #8
  br label %57

57:                                               ; preds = %56, %46
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #8
  br label %59

58:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.76, i32 noundef %54) #8
  br label %59

59:                                               ; preds = %58, %57, %35, %27, %23, %17, %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @analogix_dp_detect(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = getelementptr i8, ptr %0, i32 1900
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %45

9:                                                ; preds = %13, %2
  %10 = phi i32 [ %14, %13 ], [ 0, %2 ]
  %11 = tail call i32 @analogix_dp_get_plug_in_status(ptr noundef %3) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = add nuw nsw i32 %10, 1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #8
  %15 = icmp eq i32 %14, 100
  br i1 %15, label %16, label %9

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %0, i32 1872
  %18 = load i8, ptr %17, align 8, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  tail call void @analogix_dp_force_hpd(ptr noundef %3) #8
  %21 = tail call i32 @analogix_dp_get_plug_in_status(ptr noundef %3) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %0, i32 -12
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.27) #7
  br label %26

26:                                               ; preds = %23, %20, %16, %9
  %27 = phi i32 [ 2, %16 ], [ 2, %23 ], [ 1, %20 ], [ 1, %9 ]
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %0, i32 1876
  tail call void @mutex_lock(ptr noundef %33) #8
  %34 = getelementptr i8, ptr %0, i32 1896
  %35 = load i8, ptr %34, align 8, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void @mutex_unlock(ptr noundef %33) #8
  br label %45

38:                                               ; preds = %32
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @drm_panel_unprepare(ptr noundef %41) #8
  tail call void @mutex_unlock(ptr noundef %33) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26, i32 noundef %42) #8
  br label %45

45:                                               ; preds = %44, %38, %37, %26, %2
  %46 = phi i32 [ 1, %2 ], [ %27, %44 ], [ %27, %38 ], [ %27, %37 ], [ %27, %26 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_get_plug_in_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_force_hpd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @analogix_dp_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1900
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @drm_panel_get_modes(ptr noundef nonnull %5, ptr noundef %0) #8
  br label %41

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -12
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #8
  %14 = getelementptr i8, ptr %0, i32 984
  %15 = tail call ptr @drm_get_edid(ptr noundef %0, ptr noundef %14) #8
  %16 = load ptr, ptr %12, align 4
  %17 = tail call i32 @__pm_runtime_idle(ptr noundef %16, i32 noundef 5) #8
  %18 = icmp eq ptr %15, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %9
  %20 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef nonnull %15) #8
  %21 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef nonnull %15) #8
  tail call void @kfree(ptr noundef nonnull %15) #8
  br label %22

22:                                               ; preds = %19, %9
  %23 = phi i32 [ %21, %19 ], [ 0, %9 ]
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %0, i32 1876
  tail call void @mutex_lock(ptr noundef %29) #8
  %30 = getelementptr i8, ptr %0, i32 1896
  %31 = load i8, ptr %30, align 8, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @mutex_unlock(ptr noundef %29) #8
  br label %41

34:                                               ; preds = %28
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @drm_panel_unprepare(ptr noundef %37) #8
  tail call void @mutex_unlock(ptr noundef %29) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26, i32 noundef %38) #8
  br label %41

41:                                               ; preds = %40, %34, %33, %22, %7
  %42 = phi i32 [ %8, %7 ], [ %23, %40 ], [ %23, %34 ], [ %23, %33 ], [ %23, %22 ]
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr inbounds %struct.analogix_dp_plat_data, ptr %43, i32 0, i32 9
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = tail call i32 %45(ptr noundef %43, ptr noundef %0) #8
  %49 = add i32 %48, %42
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i32 [ %49, %47 ], [ %42, %41 ]
  ret i32 %51
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @analogix_dp_best_encoder(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @analogix_dp_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.__drm_connnectors_state, ptr %10, i32 %4, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !10

14:                                               ; preds = %8, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1160, i32 noundef 9, ptr noundef null) #8
  br label %37

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.drm_connector_state, ptr %12, i32 0, i32 7
  store i8 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drm_connector_state, ptr %12, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_crtc, ptr %18, i32 0, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr %struct.__drm_crtcs_state, ptr %22, i32 %24, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 16
  %30 = load i8, ptr %29, align 2, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %0, i32 1874
  %34 = load i8, ptr %33, align 2, !range !8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %32, %20, %15, %14
  %38 = phi i32 [ -19, %14 ], [ 0, %36 ], [ 0, %15 ], [ 0, %20 ], [ -22, %32 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_match_cea_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_set_analog_power_down(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @analogix_dp_train_link(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca i8, align 1
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca i8, align 1
  %14 = alloca [4 x i8], align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 15
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %64, label %20

20:                                               ; preds = %1
  tail call void @analogix_dp_reset_macro(ptr noundef %0) #8
  %21 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 10, i32 2
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  tail call void @analogix_dp_set_link_bandwidth(ptr noundef %0, i32 noundef %23) #8
  %24 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 10, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  tail call void @analogix_dp_set_lane_count(ptr noundef %0, i32 noundef %26) #8
  %27 = load i8, ptr %24, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %41, %20
  %30 = phi i32 [ %42, %41 ], [ 0, %20 ]
  %31 = getelementptr %struct.analogix_dp_device, ptr %0, i32 0, i32 10, i32 4, i32 %30
  %32 = load i8, ptr %31, align 1
  switch i32 %30, label %41 [
    i32 0, label %33
    i32 1, label %35
    i32 2, label %37
    i32 3, label %39
  ]

33:                                               ; preds = %29
  %34 = zext i8 %32 to i32
  tail call void @analogix_dp_set_lane0_link_training(ptr noundef %0, i32 noundef %34) #8
  br label %41

35:                                               ; preds = %29
  %36 = zext i8 %32 to i32
  tail call void @analogix_dp_set_lane1_link_training(ptr noundef %0, i32 noundef %36) #8
  br label %41

37:                                               ; preds = %29
  %38 = zext i8 %32 to i32
  tail call void @analogix_dp_set_lane2_link_training(ptr noundef %0, i32 noundef %38) #8
  br label %41

39:                                               ; preds = %29
  %40 = zext i8 %32 to i32
  tail call void @analogix_dp_set_lane3_link_training(ptr noundef %0, i32 noundef %40) #8
  br label %41

41:                                               ; preds = %39, %37, %35, %33, %29
  %42 = add nuw nsw i32 %30, 1
  %43 = load i8, ptr %24, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %29, label %46

46:                                               ; preds = %41, %20
  %47 = tail call i64 @ktime_get() #8
  %48 = add i64 %47, 12000000
  %49 = tail call i32 @analogix_dp_get_pll_lock_status(ptr noundef %0) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %54, %46
  %52 = tail call i64 @ktime_get() #8
  %53 = icmp sgt i64 %52, %48
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  tail call void @usleep_range_state(i32 noundef 31, i32 noundef 120, i32 noundef 2) #8
  %55 = tail call i32 @analogix_dp_get_pll_lock_status(ptr noundef %0) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %51, label %63

57:                                               ; preds = %51
  %58 = tail call i32 @analogix_dp_get_pll_lock_status(ptr noundef %0) #8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %62, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.45, i32 noundef -110) #8
  br label %425

63:                                               ; preds = %57, %54, %46
  tail call void @analogix_dp_set_training_pattern(ptr noundef %0, i32 noundef 2) #8
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #8
  tail call void @analogix_dp_set_training_pattern(ptr noundef %0, i32 noundef 3) #8
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #8
  tail call void @analogix_dp_set_training_pattern(ptr noundef %0, i32 noundef 4) #8
  br label %425

64:                                               ; preds = %1
  %65 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 9, i32 9
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 9, i32 8
  %68 = load i32, ptr %67, align 4
  tail call void @analogix_dp_reset_macro(ptr noundef %0) #8
  %69 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 10, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #8
  store i8 0, ptr %16, align 1, !annotation !9
  %70 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 5
  %71 = call i32 @drm_dp_dpcd_read(ptr noundef %70, i32 noundef 1, ptr noundef nonnull %16, i32 noundef 1) #8
  %72 = load i8, ptr %16, align 1
  store i8 %72, ptr %69, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #8
  %73 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 10, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #8
  store i8 0, ptr %15, align 1, !annotation !9
  %74 = call i32 @drm_dp_dpcd_read(ptr noundef %70, i32 noundef 2, ptr noundef nonnull %15, i32 noundef 1) #8
  %75 = load i8, ptr %15, align 1
  %76 = and i8 %75, 31
  store i8 %76, ptr %73, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #8
  %77 = load i8, ptr %69, align 4
  switch i8 %77, label %78 [
    i8 6, label %83
    i8 10, label %83
    i8 20, label %83
  ]

78:                                               ; preds = %64
  %79 = zext i8 %77 to i32
  %80 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.50, i32 noundef %79) #7
  store i8 6, ptr %69, align 4
  %82 = load i8, ptr %73, align 1
  br label %83

83:                                               ; preds = %78, %64, %64, %64
  %84 = phi i8 [ %76, %64 ], [ %76, %64 ], [ %76, %64 ], [ %82, %78 ]
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.51, i32 noundef 0) #7
  store i8 1, ptr %73, align 1
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i8 [ 1, %86 ], [ %84, %83 ]
  %91 = zext i8 %90 to i32
  %92 = icmp ult i32 %66, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = trunc i32 %66 to i8
  store i8 %94, ptr %73, align 1
  br label %95

95:                                               ; preds = %93, %89
  %96 = load i8, ptr %69, align 4
  %97 = zext i8 %96 to i32
  %98 = icmp ult i32 %68, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = trunc i32 %68 to i8
  store i8 %100, ptr %69, align 4
  br label %101

101:                                              ; preds = %99, %95
  call void @analogix_dp_set_analog_power_down(ptr noundef %0, i32 noundef 6, i1 noundef zeroext false) #8
  %102 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 10, i32 5
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 10
  %104 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 10, i32 4
  %105 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 1
  %106 = getelementptr i8, ptr %0, i32 1848
  %107 = getelementptr inbounds [4 x i8], ptr %14, i32 0, i32 1
  br label %108

108:                                              ; preds = %419, %101
  %109 = phi i32 [ 0, %101 ], [ %420, %419 ]
  switch i32 %109, label %419 [
    i32 0, label %110
    i32 1, label %163
    i32 2, label %293
    i32 3, label %424
    i32 4, label %425
  ]

110:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  store i32 0, ptr %14, align 4, !annotation !9
  %111 = load i8, ptr %73, align 1
  %112 = zext i8 %111 to i32
  store i32 1, ptr %102, align 4
  store i32 0, ptr %103, align 4
  %113 = icmp eq i8 %111, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = shl nuw nsw i32 %112, 2
  call void @llvm.memset.p0.i32(ptr align 4 %106, i8 0, i32 %115, i1 false) #8
  br label %116

116:                                              ; preds = %114, %110
  %117 = load i8, ptr %69, align 4
  %118 = zext i8 %117 to i32
  call void @analogix_dp_set_link_bandwidth(ptr noundef %0, i32 noundef %118) #8
  %119 = load i8, ptr %73, align 1
  %120 = zext i8 %119 to i32
  call void @analogix_dp_set_lane_count(ptr noundef %0, i32 noundef %120) #8
  %121 = load i8, ptr %69, align 4
  store i8 %121, ptr %14, align 4
  %122 = load i8, ptr %73, align 1
  store i8 %122, ptr %107, align 1
  %123 = call i32 @drm_dp_dpcd_write(ptr noundef %70, i32 noundef 256, ptr noundef nonnull %14, i32 noundef 2) #8
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %157, label %125

125:                                              ; preds = %116
  %126 = call fastcc i32 @analogix_dp_set_enhanced_mode(ptr noundef %0) #8
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %153, label %128

128:                                              ; preds = %125
  br i1 %113, label %129, label %132

129:                                              ; preds = %138, %128
  %130 = call i32 @analogix_dp_get_pll_lock_status(ptr noundef %0) #8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %141, label %148

132:                                              ; preds = %138, %128
  %133 = phi i32 [ %139, %138 ], [ 0, %128 ]
  switch i32 %133, label %138 [
    i32 0, label %134
    i32 1, label %135
    i32 2, label %136
    i32 3, label %137
  ]

134:                                              ; preds = %132
  call void @analogix_dp_set_lane0_pre_emphasis(ptr noundef %0, i32 noundef 0) #8
  br label %138

135:                                              ; preds = %132
  call void @analogix_dp_set_lane1_pre_emphasis(ptr noundef %0, i32 noundef 0) #8
  br label %138

136:                                              ; preds = %132
  call void @analogix_dp_set_lane2_pre_emphasis(ptr noundef %0, i32 noundef 0) #8
  br label %138

137:                                              ; preds = %132
  call void @analogix_dp_set_lane3_pre_emphasis(ptr noundef %0, i32 noundef 0) #8
  br label %138

138:                                              ; preds = %137, %136, %135, %134, %132
  %139 = add nuw nsw i32 %133, 1
  %140 = icmp eq i32 %139, %112
  br i1 %140, label %129, label %132

141:                                              ; preds = %144, %129
  %142 = phi i32 [ %145, %144 ], [ 0, %129 ]
  %143 = icmp eq i32 %142, 100
  br i1 %143, label %153, label %144

144:                                              ; preds = %141
  %145 = add nuw nsw i32 %142, 1
  call void @usleep_range_state(i32 noundef 90, i32 noundef 120, i32 noundef 2) #8
  %146 = call i32 @analogix_dp_get_pll_lock_status(ptr noundef %0) #8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %141, label %148

148:                                              ; preds = %144, %129
  call void @analogix_dp_set_training_pattern(ptr noundef %0, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #8
  store i8 33, ptr %13, align 1
  %149 = call i32 @drm_dp_dpcd_write(ptr noundef %70, i32 noundef 258, ptr noundef nonnull %13, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #8
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  br i1 %113, label %159, label %152

152:                                              ; preds = %151
  call void @llvm.memset.p0.i32(ptr nonnull align 4 %14, i8 0, i32 %112, i1 false) #8
  br label %159

153:                                              ; preds = %141, %125
  %154 = phi ptr [ @.str.56, %125 ], [ @.str.57, %141 ]
  %155 = phi i32 [ %126, %125 ], [ -110, %141 ]
  %156 = load ptr, ptr %105, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull %154) #7
  br label %157

157:                                              ; preds = %153, %148, %116
  %158 = phi i32 [ %149, %148 ], [ %123, %116 ], [ %155, %153 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  br label %414

159:                                              ; preds = %152, %151
  %160 = call i32 @drm_dp_dpcd_write(ptr noundef %70, i32 noundef 259, ptr noundef nonnull %14, i32 noundef %112) #8
  %161 = call i32 @llvm.smin.i32(i32 %160, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  %162 = icmp sgt i32 %160, -1
  br i1 %162, label %419, label %414

163:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #8
  store i16 0, ptr %11, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #8
  store i16 0, ptr %12, align 2, !annotation !9
  call void @usleep_range_state(i32 noundef 100, i32 noundef 101, i32 noundef 2) #8
  %164 = load i8, ptr %73, align 1
  %165 = zext i8 %164 to i32
  %166 = call i32 @drm_dp_dpcd_read(ptr noundef %70, i32 noundef 514, ptr noundef nonnull %11, i32 noundef 2) #8
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %287, label %168

168:                                              ; preds = %163
  %169 = call i32 @drm_dp_dpcd_read(ptr noundef %70, i32 noundef 518, ptr noundef nonnull %12, i32 noundef 2) #8
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %287, label %171

171:                                              ; preds = %168
  %172 = icmp eq i8 %164, 0
  br i1 %172, label %187, label %176

173:                                              ; preds = %176
  %174 = add nuw nsw i32 %177, 1
  %175 = icmp eq i32 %174, %165
  br i1 %175, label %187, label %176

176:                                              ; preds = %173, %171
  %177 = phi i32 [ %174, %173 ], [ 0, %171 ]
  %178 = shl i32 %177, 2
  %179 = and i32 %178, 4
  %180 = lshr i32 %177, 1
  %181 = getelementptr i8, ptr %11, i32 %180
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i32
  %184 = shl nuw nsw i32 1, %179
  %185 = and i32 %184, %183
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %194, label %173

187:                                              ; preds = %173, %171
  call void @analogix_dp_set_training_pattern(ptr noundef %0, i32 noundef 3) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  store i8 34, ptr %10, align 1
  %188 = call i32 @drm_dp_dpcd_write(ptr noundef %70, i32 noundef 258, ptr noundef nonnull %10, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %287, label %190

190:                                              ; preds = %187
  store i32 2, ptr %102, align 4
  br label %243

191:                                              ; preds = %230
  %192 = add nuw nsw i32 %195, 1
  %193 = icmp eq i32 %192, %165
  br i1 %193, label %243, label %194

194:                                              ; preds = %191, %176
  %195 = phi i32 [ %192, %191 ], [ 0, %176 ]
  switch i32 %195, label %204 [
    i32 0, label %196
    i32 1, label %198
    i32 2, label %200
    i32 3, label %202
  ]

196:                                              ; preds = %194
  %197 = call i32 @analogix_dp_get_lane0_link_training(ptr noundef %0) #8
  br label %205

198:                                              ; preds = %194
  %199 = call i32 @analogix_dp_get_lane1_link_training(ptr noundef %0) #8
  br label %205

200:                                              ; preds = %194
  %201 = call i32 @analogix_dp_get_lane2_link_training(ptr noundef %0) #8
  br label %205

202:                                              ; preds = %194
  %203 = call i32 @analogix_dp_get_lane3_link_training(ptr noundef %0) #8
  br label %205

204:                                              ; preds = %194
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 427, i32 noundef 9, ptr noundef null) #8
  br label %205

205:                                              ; preds = %204, %202, %200, %198, %196
  %206 = phi i32 [ 0, %204 ], [ %203, %202 ], [ %201, %200 ], [ %199, %198 ], [ %197, %196 ]
  %207 = shl i32 %195, 2
  %208 = and i32 %207, 4
  %209 = lshr i32 %195, 1
  %210 = getelementptr i8, ptr %12, i32 %209
  %211 = load i8, ptr %210, align 1
  %212 = zext i8 %211 to i32
  %213 = lshr i32 %212, %208
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 3
  %216 = lshr i8 %214, 2
  %217 = and i8 %216, 3
  %218 = and i32 %206, 3
  %219 = zext i8 %215 to i32
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %230

221:                                              ; preds = %205
  %222 = lshr i32 %206, 3
  %223 = and i32 %222, 3
  %224 = zext i8 %217 to i32
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = getelementptr %struct.analogix_dp_device, ptr %0, i32 0, i32 10, i32 1, i32 %195
  %228 = load i32, ptr %227, align 4
  %229 = add i32 %228, 1
  store i32 %229, ptr %227, align 4
  br label %230

230:                                              ; preds = %226, %221, %205
  %231 = getelementptr %struct.analogix_dp_device, ptr %0, i32 0, i32 10, i32 1, i32 %195
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %232, 5
  %234 = icmp eq i8 %215, 3
  %235 = select i1 %233, i1 true, i1 %234
  %236 = icmp eq i8 %217, 3
  %237 = select i1 %235, i1 true, i1 %236
  br i1 %237, label %238, label %191

238:                                              ; preds = %230
  %239 = zext i8 %217 to i32
  %240 = load ptr, ptr %105, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %240, ptr noundef nonnull @.str.58, i32 noundef %232, i32 noundef %219, i32 noundef %239) #7
  call void @analogix_dp_set_training_pattern(ptr noundef %0, i32 noundef 4) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1
  %241 = call i32 @drm_dp_dpcd_write(ptr noundef %70, i32 noundef 258, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %242 = call fastcc i32 @analogix_dp_set_enhanced_mode(ptr noundef %0) #8
  store i32 4, ptr %102, align 4
  br label %287

243:                                              ; preds = %191, %190
  %244 = load i8, ptr %73, align 1
  %245 = zext i8 %244 to i32
  %246 = icmp eq i8 %244, 0
  br i1 %246, label %271, label %247

247:                                              ; preds = %247, %243
  %248 = phi i32 [ %269, %247 ], [ 0, %243 ]
  %249 = shl i32 %248, 2
  %250 = and i32 %249, 4
  %251 = lshr i32 %248, 1
  %252 = getelementptr i8, ptr %12, i32 %251
  %253 = load i8, ptr %252, align 1
  %254 = zext i8 %253 to i32
  %255 = lshr i32 %254, %250
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 3
  %258 = lshr i8 %256, 2
  %259 = and i8 %258, 3
  %260 = shl nuw nsw i8 %259, 3
  %261 = or i8 %260, %257
  %262 = icmp eq i8 %257, 3
  %263 = or i8 %261, 4
  %264 = select i1 %262, i8 %263, i8 %261
  %265 = icmp eq i8 %259, 3
  %266 = or i8 %264, 32
  %267 = select i1 %265, i8 %266, i8 %264
  %268 = getelementptr %struct.analogix_dp_device, ptr %0, i32 0, i32 10, i32 4, i32 %248
  store i8 %267, ptr %268, align 1
  %269 = add nuw nsw i32 %248, 1
  %270 = icmp eq i32 %269, %245
  br i1 %270, label %271, label %247

271:                                              ; preds = %247, %243
  br i1 %172, label %289, label %272

272:                                              ; preds = %284, %271
  %273 = phi i32 [ %285, %284 ], [ 0, %271 ]
  %274 = getelementptr %struct.analogix_dp_device, ptr %0, i32 0, i32 10, i32 4, i32 %273
  %275 = load i8, ptr %274, align 1
  switch i32 %273, label %284 [
    i32 0, label %276
    i32 1, label %278
    i32 2, label %280
    i32 3, label %282
  ]

276:                                              ; preds = %272
  %277 = zext i8 %275 to i32
  call void @analogix_dp_set_lane0_link_training(ptr noundef %0, i32 noundef %277) #8
  br label %284

278:                                              ; preds = %272
  %279 = zext i8 %275 to i32
  call void @analogix_dp_set_lane1_link_training(ptr noundef %0, i32 noundef %279) #8
  br label %284

280:                                              ; preds = %272
  %281 = zext i8 %275 to i32
  call void @analogix_dp_set_lane2_link_training(ptr noundef %0, i32 noundef %281) #8
  br label %284

282:                                              ; preds = %272
  %283 = zext i8 %275 to i32
  call void @analogix_dp_set_lane3_link_training(ptr noundef %0, i32 noundef %283) #8
  br label %284

284:                                              ; preds = %282, %280, %278, %276, %272
  %285 = add nuw nsw i32 %273, 1
  %286 = icmp eq i32 %285, %165
  br i1 %286, label %289, label %272

287:                                              ; preds = %238, %187, %168, %163
  %288 = phi i32 [ %188, %187 ], [ %169, %168 ], [ %166, %163 ], [ -5, %238 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #8
  br label %414

289:                                              ; preds = %284, %271
  %290 = call i32 @drm_dp_dpcd_write(ptr noundef %70, i32 noundef 259, ptr noundef %104, i32 noundef %165) #8
  %291 = call i32 @llvm.smin.i32(i32 %290, i32 0) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #8
  %292 = icmp sgt i32 %290, -1
  br i1 %292, label %419, label %414

293:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #8
  store i16 0, ptr %8, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #8
  store i16 0, ptr %9, align 2, !annotation !9
  call void @usleep_range_state(i32 noundef 400, i32 noundef 401, i32 noundef 2) #8
  %294 = load i8, ptr %73, align 1
  %295 = zext i8 %294 to i32
  %296 = call i32 @drm_dp_dpcd_read(ptr noundef %70, i32 noundef 514, ptr noundef nonnull %8, i32 noundef 2) #8
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %406, label %298

298:                                              ; preds = %293
  %299 = icmp eq i8 %294, 0
  br i1 %299, label %316, label %303

300:                                              ; preds = %303
  %301 = add nuw nsw i32 %304, 1
  %302 = icmp eq i32 %301, %295
  br i1 %302, label %316, label %303

303:                                              ; preds = %300, %298
  %304 = phi i32 [ %301, %300 ], [ 0, %298 ]
  %305 = shl i32 %304, 2
  %306 = and i32 %305, 4
  %307 = lshr i32 %304, 1
  %308 = getelementptr i8, ptr %8, i32 %307
  %309 = load i8, ptr %308, align 1
  %310 = zext i8 %309 to i32
  %311 = shl nuw nsw i32 1, %306
  %312 = and i32 %311, %310
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %300

314:                                              ; preds = %303
  call void @analogix_dp_set_training_pattern(ptr noundef %0, i32 noundef 4) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1
  %315 = call i32 @drm_dp_dpcd_write(ptr noundef %70, i32 noundef 258, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  br label %404

316:                                              ; preds = %300, %298
  %317 = call i32 @drm_dp_dpcd_read(ptr noundef %70, i32 noundef 518, ptr noundef nonnull %9, i32 noundef 2) #8
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %406, label %319

319:                                              ; preds = %316
  %320 = call i32 @drm_dp_dpcd_read(ptr noundef %70, i32 noundef 516, ptr noundef nonnull %7, i32 noundef 1) #8
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %406, label %322

322:                                              ; preds = %319
  %323 = load i8, ptr %73, align 1
  %324 = zext i8 %323 to i32
  %325 = icmp eq i8 %323, 0
  br i1 %325, label %350, label %326

326:                                              ; preds = %326, %322
  %327 = phi i32 [ %348, %326 ], [ 0, %322 ]
  %328 = shl i32 %327, 2
  %329 = and i32 %328, 4
  %330 = lshr i32 %327, 1
  %331 = getelementptr i8, ptr %9, i32 %330
  %332 = load i8, ptr %331, align 1
  %333 = zext i8 %332 to i32
  %334 = lshr i32 %333, %329
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 3
  %337 = lshr i8 %335, 2
  %338 = and i8 %337, 3
  %339 = shl nuw nsw i8 %338, 3
  %340 = or i8 %339, %336
  %341 = icmp eq i8 %336, 3
  %342 = or i8 %340, 4
  %343 = select i1 %341, i8 %342, i8 %340
  %344 = icmp eq i8 %338, 3
  %345 = or i8 %343, 32
  %346 = select i1 %344, i8 %345, i8 %343
  %347 = getelementptr %struct.analogix_dp_device, ptr %0, i32 0, i32 10, i32 4, i32 %327
  store i8 %346, ptr %347, align 1
  %348 = add nuw nsw i32 %327, 1
  %349 = icmp eq i32 %348, %324
  br i1 %349, label %350, label %326

350:                                              ; preds = %326, %322
  %351 = load i8, ptr %7, align 1
  %352 = and i8 %351, 1
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %378, label %354

354:                                              ; preds = %350
  br i1 %299, label %369, label %358

355:                                              ; preds = %358
  %356 = add nuw nsw i32 %359, 1
  %357 = icmp eq i32 %356, %295
  br i1 %357, label %369, label %358

358:                                              ; preds = %355, %354
  %359 = phi i32 [ %356, %355 ], [ 0, %354 ]
  %360 = shl i32 %359, 2
  %361 = and i32 %360, 4
  %362 = lshr i32 %359, 1
  %363 = getelementptr i8, ptr %8, i32 %362
  %364 = load i8, ptr %363, align 1
  %365 = zext i8 %364 to i32
  %366 = lshr i32 %365, %361
  %367 = and i32 %366, 7
  %368 = icmp eq i32 %367, 7
  br i1 %368, label %355, label %378

369:                                              ; preds = %355, %354
  call void @analogix_dp_set_training_pattern(ptr noundef %0, i32 noundef 4) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1
  %370 = call i32 @drm_dp_dpcd_write(ptr noundef %70, i32 noundef 258, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %371 = call i32 @llvm.smin.i32(i32 %370, i32 0) #8
  %372 = icmp slt i32 %370, 0
  br i1 %372, label %408, label %373

373:                                              ; preds = %369
  call void @analogix_dp_get_link_bandwidth(ptr noundef %0, ptr noundef nonnull %6) #8
  %374 = load i32, ptr %6, align 4
  %375 = trunc i32 %374 to i8
  store i8 %375, ptr %69, align 4
  call void @analogix_dp_get_lane_count(ptr noundef %0, ptr noundef nonnull %6) #8
  %376 = load i32, ptr %6, align 4
  %377 = trunc i32 %376 to i8
  store i8 %377, ptr %73, align 1
  store i32 3, ptr %102, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %419

378:                                              ; preds = %358, %350
  %379 = load i32, ptr %103, align 4
  %380 = add i32 %379, 1
  store i32 %380, ptr %103, align 4
  %381 = icmp sgt i32 %380, 5
  br i1 %381, label %383, label %382

382:                                              ; preds = %378
  br i1 %299, label %401, label %386

383:                                              ; preds = %378
  %384 = load ptr, ptr %105, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %384, ptr noundef nonnull @.str.59) #7
  call void @analogix_dp_set_training_pattern(ptr noundef %0, i32 noundef 4) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1
  %385 = call i32 @drm_dp_dpcd_write(ptr noundef %70, i32 noundef 258, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  br label %404

386:                                              ; preds = %398, %382
  %387 = phi i32 [ %399, %398 ], [ 0, %382 ]
  %388 = getelementptr %struct.analogix_dp_device, ptr %0, i32 0, i32 10, i32 4, i32 %387
  %389 = load i8, ptr %388, align 1
  switch i32 %387, label %398 [
    i32 0, label %390
    i32 1, label %392
    i32 2, label %394
    i32 3, label %396
  ]

390:                                              ; preds = %386
  %391 = zext i8 %389 to i32
  call void @analogix_dp_set_lane0_link_training(ptr noundef %0, i32 noundef %391) #8
  br label %398

392:                                              ; preds = %386
  %393 = zext i8 %389 to i32
  call void @analogix_dp_set_lane1_link_training(ptr noundef %0, i32 noundef %393) #8
  br label %398

394:                                              ; preds = %386
  %395 = zext i8 %389 to i32
  call void @analogix_dp_set_lane2_link_training(ptr noundef %0, i32 noundef %395) #8
  br label %398

396:                                              ; preds = %386
  %397 = zext i8 %389 to i32
  call void @analogix_dp_set_lane3_link_training(ptr noundef %0, i32 noundef %397) #8
  br label %398

398:                                              ; preds = %396, %394, %392, %390, %386
  %399 = add nuw nsw i32 %387, 1
  %400 = icmp eq i32 %399, %295
  br i1 %400, label %401, label %386

401:                                              ; preds = %398, %382
  %402 = call i32 @drm_dp_dpcd_write(ptr noundef %70, i32 noundef 259, ptr noundef %104, i32 noundef %295) #8
  %403 = call i32 @llvm.smin.i32(i32 %402, i32 0) #8
  br label %408

404:                                              ; preds = %383, %314
  %405 = call fastcc i32 @analogix_dp_set_enhanced_mode(ptr noundef %0) #8
  store i32 4, ptr %102, align 4
  br label %406

406:                                              ; preds = %404, %319, %316, %293
  %407 = phi i32 [ -5, %404 ], [ %320, %319 ], [ %317, %316 ], [ %296, %293 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %411

408:                                              ; preds = %401, %369
  %409 = phi i32 [ %371, %369 ], [ %403, %401 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %419, label %411

411:                                              ; preds = %408, %406
  %412 = phi i32 [ %407, %406 ], [ %409, %408 ]
  %413 = load ptr, ptr %105, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %413, ptr noundef nonnull @.str.54) #7
  br label %421

414:                                              ; preds = %289, %287, %159, %157
  %415 = phi ptr [ @.str.52, %159 ], [ @.str.52, %157 ], [ @.str.53, %289 ], [ @.str.53, %287 ]
  %416 = phi i32 [ %161, %159 ], [ %158, %157 ], [ %291, %289 ], [ %288, %287 ]
  %417 = load ptr, ptr %105, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %417, ptr noundef nonnull %415) #7
  %418 = icmp eq i32 %416, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %414, %408, %373, %289, %159, %108
  %420 = load i32, ptr %102, align 4
  br label %108

421:                                              ; preds = %414, %411
  %422 = phi i32 [ %412, %411 ], [ %416, %414 ]
  %423 = load ptr, ptr %105, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %423, ptr noundef nonnull @.str.55, i32 noundef %422) #7
  br label %425

424:                                              ; preds = %108
  br label %425

425:                                              ; preds = %424, %421, %108, %63, %60
  %426 = phi i32 [ -110, %60 ], [ 0, %63 ], [ %422, %421 ], [ 0, %424 ], [ -121, %108 ]
  ret i32 %426
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_send_psr_spd(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_reset_macro(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_set_link_bandwidth(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_set_lane_count(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_get_pll_lock_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_set_training_pattern(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_set_lane0_link_training(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_set_lane1_link_training(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_set_lane2_link_training(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_set_lane3_link_training(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @analogix_dp_set_enhanced_mode(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !9
  %6 = getelementptr inbounds %struct.analogix_dp_device, ptr %0, i32 0, i32 5
  %7 = call i32 @drm_dp_dpcd_read(ptr noundef %6, i32 noundef 2, ptr noundef nonnull %5, i32 noundef 1) #8
  %8 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %9 = icmp slt i32 %7, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %1
  %11 = icmp eq i32 %7, 1
  %12 = icmp slt i8 %8, 0
  %13 = select i1 %11, i1 %12, i1 false
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !9
  %14 = call i32 @drm_dp_dpcd_read(ptr noundef %6, i32 noundef 257, ptr noundef nonnull %4, i32 noundef 1) #8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load i8, ptr %4, align 1
  %18 = and i8 %17, 31
  br i1 %13, label %19, label %22

19:                                               ; preds = %16
  %20 = or i8 %18, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 %20, ptr %3, align 1
  %21 = call i32 @drm_dp_dpcd_write(ptr noundef %6, i32 noundef 257, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %24

22:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 %18, ptr %2, align 1
  %23 = call i32 @drm_dp_dpcd_write(ptr noundef %6, i32 noundef 257, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %21, %19 ], [ %23, %22 ]
  %26 = call i32 @llvm.smin.i32(i32 %25, i32 0) #8
  br label %27

27:                                               ; preds = %24, %10
  %28 = phi i32 [ %26, %24 ], [ %14, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  call void @analogix_dp_enable_enhanced_mode(ptr noundef %0, i1 noundef zeroext %13) #8
  br label %31

31:                                               ; preds = %30, %27, %1
  %32 = phi i32 [ 0, %30 ], [ %7, %1 ], [ %28, %27 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_enable_enhanced_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_set_lane0_pre_emphasis(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_set_lane1_pre_emphasis(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_set_lane2_pre_emphasis(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_set_lane3_pre_emphasis(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_get_lane0_link_training(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_get_lane1_link_training(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_get_lane2_link_training(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_get_lane3_link_training(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_get_link_bandwidth(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_get_lane_count(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_swreset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_init_analog_param(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_init_interrupt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_enable_sw_function(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_config_interrupt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_init_analog_func(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_init_hpd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_init_aux(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_init_video(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_enable_scrambling(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_config_video_slave_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_set_video_color_format(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_is_slave_video_stream_clock_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_set_video_cr_mn(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_set_video_timing_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_enable_video_mute(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_enable_video_master(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_start_video(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_is_video_stream_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @analogix_dp_enable_psr_crc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }

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
