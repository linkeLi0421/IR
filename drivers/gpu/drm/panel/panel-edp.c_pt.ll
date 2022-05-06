; ModuleID = '/llk/IR/drivers/gpu/drm/panel/panel-edp.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-edp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dp_aux_ep_driver = type { ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.edp_panel_entry = type { i32, ptr, ptr }
%struct.panel_desc = type { ptr, i32, ptr, i32, i32, %struct.anon.75, %struct.panel_delay }
%struct.anon.75 = type { i32, i32 }
%struct.panel_delay = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.display_timing = type { %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, i32 }
%struct.timing_entry = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.dp_aux_ep_device = type { %struct.device, ptr }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.panel_edp = type { %struct.drm_panel, i8, i8, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.drm_display_mode, i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_panel_edp__269_1885_panel_edp_init6 = internal global ptr @panel_edp_init, section ".initcall6.init", align 4
@panel_edp_dp_aux_ep_driver = internal global %struct.dp_aux_ep_driver { ptr @panel_edp_dp_aux_ep_probe, ptr @panel_edp_dp_aux_ep_remove, ptr @panel_edp_dp_aux_ep_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @platform_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panel_edp_pm_ops, ptr null, ptr null } }, align 4
@panel_edp_platform_driver = internal global %struct.platform_driver { ptr @panel_edp_platform_probe, ptr @panel_edp_platform_remove, ptr @panel_edp_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.40, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @platform_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panel_edp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_panel_edp_exit = internal global ptr @panel_edp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author270 = internal constant [53 x i8] c"panel_edp.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description271 = internal constant [55 x i8] c"panel_edp.description=DRM Driver for Simple eDP Panels\00", section ".modinfo", align 1
@__UNIQUE_ID_file272 = internal constant [47 x i8] c"panel_edp.file=drivers/gpu/drm/panel/panel-edp\00", section ".modinfo", align 1
@__UNIQUE_ID_license273 = internal constant [44 x i8] c"panel_edp.license=GPL and additional rights\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [20 x i8] c"panel-simple-dp-aux\00", align 1
@platform_of_match = internal constant [30 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edp-panel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b101ean01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b101ean01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b116xa01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b116xak01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b116xw03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b116xw03 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b133han05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b133han05 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b133htn01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b133htn01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b133xtn01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b133xtn01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"auo,b140han06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @auo_b140han06 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,nv101wxmn51\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_nv101wxmn51 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,nv110wtm-n61\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_nv110wtm_n61 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,nv133fhm-n61\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_nv133fhm_n61 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,nv133fhm-n62\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_nv133fhm_n61 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"boe,nv140fhmn49\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @boe_nv140fhmn49 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,n116bca-ea1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_n116bca_ea1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,n116bge\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_n116bge }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,n125hce-gn1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_n125hce_gn1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,p120zdg-bf1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_p120zdg_bf1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ivo,m133nwf4-r0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ivo_m133nwf4_r0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"kingdisplay,kd116n21-30nv-a010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kingdisplay_kd116n21_30nv_a010 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,lp079qx1-sp0v\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_lp079qx1_sp0v }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,lp097qx1-spa1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_lp097qx1_spa1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,lp120up1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_lp120up1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,lp129qe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lg_lp129qe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"neweast,wjfh116008a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @neweast_wjfh116008a }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,lsn122dl01-c01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @samsung_lsn122dl01_c01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,ltn140at29-301\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @samsung_ltn140at29_301 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,ld-d5116z01b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sharp_ld_d5116z01b }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,lq123p1jx31\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sharp_lq123p1jx31 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"starry,kr122ea0sra\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @starry_kr122ea0sra }, %struct.of_device_id zeroinitializer], align 4
@panel_edp_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panel_edp_suspend, ptr @panel_edp_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"no-hpd\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to request GPIO: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"%pOF: failed to get orientation %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ddc-i2c-bus\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"panel-timing\00", align 1
@panel_edp_funcs = internal constant %struct.drm_panel_funcs { ptr @panel_edp_prepare, ptr @panel_edp_enable, ptr @panel_edp_disable, ptr @panel_edp_unprepare, ptr @panel_edp_get_modes, ptr @panel_edp_get_timings }, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"edp-panel\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Couldn't detect panel nor find a fallback\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Expected bpc in {6,8,10} but got: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"hpd\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"failed to get 'hpd' GPIO: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"drivers/gpu/drm/panel/panel-edp.c\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"Reject override mode: panel has a fixed mode\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"Reject override mode: no timings specified\0A\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Reject override mode: No display_timing found\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"No display modes\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"failed to add override mode\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"failed to add mode %ux%u\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"failed to add mode %ux%u@%u\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"hpd-reliable-delay-ms\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"hpd-absent-delay-ms\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"Couldn't power on panel to read EDID: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"Couldn't identify panel via EDID\0A\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"Unknown panel %s %#06x, using conservative timings\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"Detected %s %s (%#06x)\0A\00", align 1
@edp_panels = internal constant [10 x %struct.edp_panel_entry] [%struct.edp_panel_entry { i32 112148572, ptr getelementptr (i8, ptr @auo_b116xak01, i64 28), ptr @.str.27 }, %struct.edp_panel_entry { i32 112157020, ptr @delay_200_500_e50, ptr @.str.28 }, %struct.edp_panel_entry { i32 166004614, ptr @delay_200_500_p2e80, ptr @.str.29 }, %struct.edp_panel_entry { i32 166004689, ptr getelementptr (i8, ptr @boe_nv133fhm_n61, i64 28), ptr @.str.30 }, %struct.edp_panel_entry { i32 166004781, ptr getelementptr (i8, ptr @boe_nv133fhm_n61, i64 28), ptr @.str.31 }, %struct.edp_panel_entry { i32 166005133, ptr getelementptr (i8, ptr @boe_nv110wtm_n61, i64 28), ptr @.str.32 }, %struct.edp_panel_entry { i32 229511500, ptr getelementptr (i8, ptr @innolux_n116bca_ea1, i64 28), ptr @.str.33 }, %struct.edp_panel_entry { i32 746718756, ptr getelementptr (i8, ptr @kingdisplay_kd116n21_30nv_a010, i64 28), ptr @.str.34 }, %struct.edp_panel_entry { i32 1292899660, ptr @delay_200_500_p2e100, ptr @.str.35 }, %struct.edp_panel_entry zeroinitializer], align 4
@auo_b116xak01 = internal constant %struct.panel_desc { ptr @auo_b116xak01_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.75 { i32 256, i32 144 }, %struct.panel_delay { i32 0, i32 200, i32 0, i32 0, i32 0, i32 0 } }, align 4
@.str.27 = private unnamed_addr constant [10 x i8] c"B116XAK01\00", align 1
@delay_200_500_e50 = internal constant %struct.panel_delay { i32 0, i32 200, i32 0, i32 50, i32 0, i32 500 }, align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"B116XAN06.1\00", align 1
@delay_200_500_p2e80 = internal constant %struct.panel_delay { i32 0, i32 200, i32 80, i32 0, i32 0, i32 500 }, align 4
@.str.29 = private unnamed_addr constant [13 x i8] c"NV116WHM-T01\00", align 1
@boe_nv133fhm_n61 = internal constant %struct.panel_desc { ptr @boe_nv133fhm_n61_modes, i32 1, ptr null, i32 0, i32 6, %struct.anon.75 { i32 294, i32 165 }, %struct.panel_delay { i32 15, i32 200, i32 0, i32 0, i32 0, i32 500 } }, align 4
@.str.30 = private unnamed_addr constant [13 x i8] c"NV133FHM-N61\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"NV133FHM-N62\00", align 1
@boe_nv110wtm_n61 = internal constant %struct.panel_desc { ptr @boe_nv110wtm_n61_modes, i32 2, ptr null, i32 0, i32 8, %struct.anon.75 { i32 233, i32 155 }, %struct.panel_delay { i32 0, i32 200, i32 80, i32 50, i32 0, i32 500 } }, align 4
@.str.32 = private unnamed_addr constant [13 x i8] c"NV110WTM-N61\00", align 1
@innolux_n116bca_ea1 = internal constant %struct.panel_desc { ptr @innolux_n116bca_ea1_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.75 { i32 256, i32 144 }, %struct.panel_delay { i32 0, i32 200, i32 80, i32 0, i32 0, i32 500 } }, align 4
@.str.33 = private unnamed_addr constant [12 x i8] c"N116BCA-EA1\00", align 1
@kingdisplay_kd116n21_30nv_a010 = internal constant %struct.panel_desc { ptr @kingdisplay_kd116n21_30nv_a010_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.75 { i32 256, i32 144 }, %struct.panel_delay { i32 0, i32 200, i32 0, i32 0, i32 0, i32 0 } }, align 4
@.str.34 = private unnamed_addr constant [17 x i8] c"116N21-30NV-A010\00", align 1
@delay_200_500_p2e100 = internal constant %struct.panel_delay { i32 0, i32 200, i32 100, i32 0, i32 0, i32 500 }, align 4
@.str.35 = private unnamed_addr constant [12 x i8] c"LQ116M1JW10\00", align 1
@auo_b116xak01_mode = internal constant %struct.drm_display_mode { i32 69300, i16 1366, i16 1414, i16 1446, i16 1456, i16 0, i16 768, i16 772, i16 778, i16 793, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@boe_nv133fhm_n61_modes = internal constant %struct.drm_display_mode { i32 147840, i16 1920, i16 1968, i16 2000, i16 2200, i16 0, i16 1080, i16 1083, i16 1089, i16 1120, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@boe_nv110wtm_n61_modes = internal constant [2 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 207800, i16 2160, i16 2208, i16 2240, i16 2340, i16 0, i16 1440, i16 1443, i16 1449, i16 1480, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, %struct.drm_display_mode { i32 138500, i16 2160, i16 2208, i16 2240, i16 2340, i16 0, i16 1440, i16 1443, i16 1449, i16 1480, i16 0, i32 9, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], align 4
@innolux_n116bca_ea1_mode = internal constant %struct.drm_display_mode { i32 76420, i16 1366, i16 1502, i16 1532, i16 1592, i16 0, i16 768, i16 776, i16 788, i16 800, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@kingdisplay_kd116n21_30nv_a010_mode = internal constant %struct.drm_display_mode { i32 81000, i16 1366, i16 1406, i16 1438, i16 1500, i16 0, i16 768, i16 773, i16 778, i16 900, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@auo_b101ean01 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @auo_b101ean01_timing, i32 1, i32 6, %struct.anon.75 { i32 217, i32 136 }, %struct.panel_delay zeroinitializer }, align 4
@auo_b116xw03 = internal constant %struct.panel_desc { ptr @auo_b116xw03_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.75 { i32 256, i32 144 }, %struct.panel_delay { i32 0, i32 0, i32 0, i32 400, i32 0, i32 0 } }, align 4
@auo_b133han05 = internal constant %struct.panel_desc { ptr @auo_b133han05_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.75 { i32 293, i32 165 }, %struct.panel_delay { i32 100, i32 0, i32 0, i32 20, i32 0, i32 50 } }, align 4
@auo_b133htn01 = internal constant %struct.panel_desc { ptr @auo_b133htn01_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.75 { i32 293, i32 165 }, %struct.panel_delay { i32 105, i32 0, i32 0, i32 20, i32 0, i32 50 } }, align 4
@auo_b133xtn01 = internal constant %struct.panel_desc { ptr @auo_b133xtn01_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.75 { i32 293, i32 165 }, %struct.panel_delay zeroinitializer }, align 4
@auo_b140han06 = internal constant %struct.panel_desc { ptr @auo_b140han06_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.75 { i32 309, i32 174 }, %struct.panel_delay { i32 100, i32 0, i32 0, i32 20, i32 0, i32 50 } }, align 4
@boe_nv101wxmn51 = internal constant %struct.panel_desc { ptr @boe_nv101wxmn51_modes, i32 2, ptr null, i32 0, i32 8, %struct.anon.75 { i32 217, i32 136 }, %struct.panel_delay { i32 210, i32 0, i32 0, i32 50, i32 0, i32 160 } }, align 4
@boe_nv140fhmn49 = internal constant %struct.panel_desc { ptr @boe_nv140fhmn49_modes, i32 1, ptr null, i32 0, i32 6, %struct.anon.75 { i32 309, i32 174 }, %struct.panel_delay { i32 210, i32 0, i32 0, i32 50, i32 0, i32 160 } }, align 4
@innolux_n116bge = internal constant %struct.panel_desc { ptr null, i32 0, ptr @innolux_n116bge_timing, i32 1, i32 6, %struct.anon.75 { i32 256, i32 144 }, %struct.panel_delay zeroinitializer }, align 4
@innolux_n125hce_gn1 = internal constant %struct.panel_desc { ptr @innolux_n125hce_gn1_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.75 { i32 276, i32 155 }, %struct.panel_delay zeroinitializer }, align 4
@innolux_p120zdg_bf1 = internal constant %struct.panel_desc { ptr @innolux_p120zdg_bf1_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.75 { i32 254, i32 169 }, %struct.panel_delay { i32 0, i32 200, i32 0, i32 0, i32 0, i32 500 } }, align 4
@ivo_m133nwf4_r0 = internal constant %struct.panel_desc { ptr @ivo_m133nwf4_r0_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.75 { i32 294, i32 165 }, %struct.panel_delay { i32 0, i32 200, i32 0, i32 0, i32 0, i32 500 } }, align 4
@lg_lp079qx1_sp0v = internal constant %struct.panel_desc { ptr @lg_lp079qx1_sp0v_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.75 { i32 129, i32 171 }, %struct.panel_delay zeroinitializer }, align 4
@lg_lp097qx1_spa1 = internal constant %struct.panel_desc { ptr @lg_lp097qx1_spa1_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.75 { i32 208, i32 147 }, %struct.panel_delay zeroinitializer }, align 4
@lg_lp120up1 = internal constant %struct.panel_desc { ptr @lg_lp120up1_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.75 { i32 267, i32 183 }, %struct.panel_delay zeroinitializer }, align 4
@lg_lp129qe = internal constant %struct.panel_desc { ptr @lg_lp129qe_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.75 { i32 272, i32 181 }, %struct.panel_delay zeroinitializer }, align 4
@neweast_wjfh116008a = internal constant %struct.panel_desc { ptr @neweast_wjfh116008a_modes, i32 2, ptr null, i32 0, i32 6, %struct.anon.75 { i32 260, i32 150 }, %struct.panel_delay { i32 110, i32 0, i32 0, i32 20, i32 0, i32 500 } }, align 4
@samsung_lsn122dl01_c01 = internal constant %struct.panel_desc { ptr @samsung_lsn122dl01_c01_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.75 { i32 263, i32 164 }, %struct.panel_delay zeroinitializer }, align 4
@samsung_ltn140at29_301 = internal constant %struct.panel_desc { ptr @samsung_ltn140at29_301_mode, i32 1, ptr null, i32 0, i32 6, %struct.anon.75 { i32 320, i32 187 }, %struct.panel_delay zeroinitializer }, align 4
@sharp_ld_d5116z01b = internal constant %struct.panel_desc { ptr @sharp_ld_d5116z01b_mode, i32 1, ptr null, i32 0, i32 8, %struct.anon.75 { i32 260, i32 120 }, %struct.panel_delay zeroinitializer }, align 4
@sharp_lq123p1jx31 = internal constant %struct.panel_desc { ptr null, i32 0, ptr @sharp_lq123p1jx31_timing, i32 1, i32 8, %struct.anon.75 { i32 259, i32 173 }, %struct.panel_delay { i32 110, i32 0, i32 0, i32 50, i32 0, i32 550 } }, align 4
@starry_kr122ea0sra = internal constant %struct.panel_desc { ptr @starry_kr122ea0sra_mode, i32 1, ptr null, i32 0, i32 0, %struct.anon.75 { i32 263, i32 164 }, %struct.panel_delay { i32 210, i32 0, i32 0, i32 50, i32 0, i32 510 } }, align 4
@auo_b101ean01_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 65300000, i32 72500000, i32 75000000 }, %struct.timing_entry { i32 1280, i32 1280, i32 1280 }, %struct.timing_entry { i32 18, i32 119, i32 119 }, %struct.timing_entry { i32 21, i32 21, i32 21 }, %struct.timing_entry { i32 32, i32 32, i32 32 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 4, i32 4, i32 4 }, %struct.timing_entry { i32 8, i32 8, i32 8 }, %struct.timing_entry { i32 18, i32 20, i32 20 }, i32 0 }, align 4
@auo_b116xw03_mode = internal constant %struct.drm_display_mode { i32 70589, i16 1366, i16 1406, i16 1446, i16 1478, i16 0, i16 768, i16 778, i16 790, i16 796, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@auo_b133han05_mode = internal constant %struct.drm_display_mode { i32 142600, i16 1920, i16 1978, i16 2020, i16 2080, i16 0, i16 1080, i16 1083, i16 1088, i16 1142, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@auo_b133htn01_mode = internal constant %struct.drm_display_mode { i32 150660, i16 1920, i16 2092, i16 2172, i16 2232, i16 0, i16 1080, i16 1105, i16 1115, i16 1125, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@auo_b133xtn01_mode = internal constant %struct.drm_display_mode { i32 69500, i16 1366, i16 1414, i16 1446, i16 1466, i16 0, i16 768, i16 771, i16 777, i16 790, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@auo_b140han06_mode = internal constant %struct.drm_display_mode { i32 141000, i16 1920, i16 1936, i16 1952, i16 2104, i16 0, i16 1080, i16 1083, i16 1097, i16 1116, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@boe_nv101wxmn51_modes = internal constant [2 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 71900, i16 1280, i16 1328, i16 1360, i16 1440, i16 0, i16 800, i16 803, i16 808, i16 832, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, %struct.drm_display_mode { i32 57500, i16 1280, i16 1328, i16 1360, i16 1440, i16 0, i16 800, i16 803, i16 808, i16 832, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], align 4
@boe_nv140fhmn49_modes = internal constant [1 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 148500, i16 1920, i16 1968, i16 2000, i16 2200, i16 0, i16 1080, i16 1083, i16 1088, i16 1125, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], align 4
@innolux_n116bge_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 72600000, i32 76420000, i32 80240000 }, %struct.timing_entry { i32 1366, i32 1366, i32 1366 }, %struct.timing_entry { i32 136, i32 136, i32 136 }, %struct.timing_entry { i32 60, i32 60, i32 60 }, %struct.timing_entry { i32 30, i32 30, i32 30 }, %struct.timing_entry { i32 768, i32 768, i32 768 }, %struct.timing_entry { i32 8, i32 8, i32 8 }, %struct.timing_entry { i32 12, i32 12, i32 12 }, %struct.timing_entry { i32 12, i32 12, i32 12 }, i32 5 }, align 4
@innolux_n125hce_gn1_mode = internal constant %struct.drm_display_mode { i32 162000, i16 1920, i16 1960, i16 2000, i16 2080, i16 0, i16 1080, i16 1084, i16 1088, i16 1112, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@innolux_p120zdg_bf1_mode = internal constant %struct.drm_display_mode { i32 206016, i16 2160, i16 2208, i16 2240, i16 2320, i16 0, i16 1440, i16 1443, i16 1453, i16 1480, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@ivo_m133nwf4_r0_mode = internal constant %struct.drm_display_mode { i32 138778, i16 1920, i16 1944, i16 1992, i16 2080, i16 0, i16 1080, i16 1083, i16 1095, i16 1112, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@lg_lp079qx1_sp0v_mode = internal constant %struct.drm_display_mode { i32 200000, i16 1536, i16 1548, i16 1564, i16 1612, i16 0, i16 2048, i16 2056, i16 2060, i16 2068, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@lg_lp097qx1_spa1_mode = internal constant %struct.drm_display_mode { i32 205210, i16 2048, i16 2198, i16 2203, i16 2208, i16 0, i16 1536, i16 1539, i16 1540, i16 1549, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@lg_lp120up1_mode = internal constant %struct.drm_display_mode { i32 162300, i16 1920, i16 1960, i16 2000, i16 2080, i16 0, i16 1280, i16 1284, i16 1288, i16 1300, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@lg_lp129qe_mode = internal constant %struct.drm_display_mode { i32 285250, i16 2560, i16 2608, i16 2640, i16 2720, i16 0, i16 1700, i16 1703, i16 1713, i16 1749, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@neweast_wjfh116008a_modes = internal constant [2 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 138500, i16 1920, i16 1968, i16 2000, i16 2080, i16 0, i16 1080, i16 1083, i16 1088, i16 1111, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, %struct.drm_display_mode { i32 110920, i16 1920, i16 1968, i16 2000, i16 2080, i16 0, i16 1080, i16 1083, i16 1088, i16 1111, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }], align 4
@samsung_lsn122dl01_c01_mode = internal constant %struct.drm_display_mode { i32 271560, i16 2560, i16 2608, i16 2640, i16 2720, i16 0, i16 1600, i16 1602, i16 1607, i16 1664, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@samsung_ltn140at29_301_mode = internal constant %struct.drm_display_mode { i32 76300, i16 1366, i16 1430, i16 1478, i16 1606, i16 0, i16 768, i16 770, i16 775, i16 792, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@sharp_ld_d5116z01b_mode = internal constant %struct.drm_display_mode { i32 168480, i16 1920, i16 1968, i16 2000, i16 2080, i16 0, i16 1280, i16 1283, i16 1293, i16 1350, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@sharp_lq123p1jx31_timing = internal constant %struct.display_timing { %struct.timing_entry { i32 252750000, i32 252750000, i32 266604720 }, %struct.timing_entry { i32 2400, i32 2400, i32 2400 }, %struct.timing_entry { i32 48, i32 48, i32 48 }, %struct.timing_entry { i32 80, i32 80, i32 84 }, %struct.timing_entry { i32 32, i32 32, i32 32 }, %struct.timing_entry { i32 1600, i32 1600, i32 1600 }, %struct.timing_entry { i32 3, i32 3, i32 3 }, %struct.timing_entry { i32 33, i32 33, i32 120 }, %struct.timing_entry { i32 10, i32 10, i32 10 }, i32 5 }, align 4
@starry_kr122ea0sra_mode = internal constant %struct.drm_display_mode { i32 147000, i16 1920, i16 1936, i16 1952, i16 1984, i16 0, i16 1200, i16 1215, i16 1217, i16 1235, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, align 4
@.str.36 = private unnamed_addr constant [32 x i8] c"Prepare timeout after %d tries\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"Prepare needed %d retries\0A\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"failed to enable supply: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"error waiting for hpd GPIO: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"panel-edp\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author270, ptr @__UNIQUE_ID_description271, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_license273, ptr @__exitcall_panel_edp_exit, ptr @__initcall__kmod_panel_edp__269_1885_panel_edp_init6, ptr @panel_edp_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @panel_edp_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @panel_edp_platform_driver, ptr noundef null) #10
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @__dp_aux_dp_driver_register(ptr noundef nonnull @panel_edp_dp_aux_ep_driver, ptr noundef null) #10
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @platform_driver_unregister(ptr noundef nonnull @panel_edp_platform_driver) #10
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %4, %6 ], [ %1, %0 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @panel_edp_exit() #0 section ".exit.text" {
  tail call void @dp_aux_dp_driver_unregister(ptr noundef nonnull @panel_edp_dp_aux_ep_driver) #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @panel_edp_platform_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_aux_dp_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dp_aux_dp_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_edp_dp_aux_ep_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @of_match_node(ptr noundef nonnull @platform_of_match, ptr noundef %3) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dp_aux_ep_device, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = tail call fastcc i32 @panel_edp_probe(ptr noundef %0, ptr noundef %8, ptr noundef %10)
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ %11, %6 ], [ -19, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @panel_edp_dp_aux_ep_remove(ptr noundef %0) #3 {
  tail call fastcc void @panel_edp_remove(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @panel_edp_dp_aux_ep_shutdown(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_panel_disable(ptr noundef %3) #10
  %5 = tail call i32 @drm_panel_unprepare(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @panel_edp_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = alloca %struct.videomode, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = alloca %struct.display_timing, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %6, i8 0, i32 112, i1 false), !annotation !8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 192, i32 noundef 3520) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %232, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.panel_edp, ptr %7, i32 0, i32 1
  store i8 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.panel_edp, ptr %7, i32 0, i32 4
  store i64 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.panel_edp, ptr %7, i32 0, i32 6
  store ptr %1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.panel_edp, ptr %7, i32 0, i32 9
  store ptr %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = tail call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef null) #10
  %17 = icmp ne ptr %16, null
  %18 = getelementptr inbounds %struct.panel_edp, ptr %7, i32 0, i32 2
  %19 = zext i1 %17 to i8
  store i8 %19, ptr %18, align 1
  br i1 %17, label %28, label %20

20:                                               ; preds = %9
  %21 = tail call ptr @devm_gpiod_get_optional(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 1) #10
  %22 = getelementptr inbounds %struct.panel_edp, ptr %7, i32 0, i32 11
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = icmp eq ptr %21, inttoptr (i32 -517 to ptr)
  br i1 %25, label %232, label %26

26:                                               ; preds = %24
  %27 = ptrtoint ptr %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %27) #11
  br label %232

28:                                               ; preds = %20, %9
  %29 = tail call ptr @devm_regulator_get(ptr noundef %0, ptr noundef nonnull @.str.2) #10
  %30 = getelementptr inbounds %struct.panel_edp, ptr %7, i32 0, i32 7
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = ptrtoint ptr %29 to i32
  br label %232

34:                                               ; preds = %28
  %35 = tail call ptr @devm_gpiod_get_optional(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 3) #10
  %36 = getelementptr inbounds %struct.panel_edp, ptr %7, i32 0, i32 10
  store ptr %35, ptr %36, align 8
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = icmp eq ptr %35, inttoptr (i32 -517 to ptr)
  br i1 %39, label %232, label %40

40:                                               ; preds = %38
  %41 = ptrtoint ptr %35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %41) #11
  br label %232

42:                                               ; preds = %34
  %43 = load ptr, ptr %14, align 8
  %44 = getelementptr inbounds %struct.panel_edp, ptr %7, i32 0, i32 14
  %45 = tail call i32 @of_drm_get_panel_orientation(ptr noundef %43, ptr noundef %44) #10
  %46 = icmp eq i32 %45, 0
  %47 = load ptr, ptr %14, align 8
  br i1 %46, label %49, label %48

48:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %47, i32 noundef %45) #11
  br label %232

49:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #10, !annotation !8
  %50 = call i32 @__of_parse_phandle_with_args(ptr noundef %47, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #10
  %51 = icmp ne i32 %50, 0
  %52 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #10
  %53 = icmp eq ptr %52, null
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %52) #10
  %57 = getelementptr inbounds %struct.panel_edp, ptr %7, i32 0, i32 8
  store ptr %56, ptr %57, align 8
  call void @of_node_put(ptr noundef nonnull %52) #10
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %232, label %65

60:                                               ; preds = %49
  %61 = icmp eq ptr %2, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.drm_dp_aux, ptr %2, i32 0, i32 1
  %64 = getelementptr inbounds %struct.panel_edp, ptr %7, i32 0, i32 8
  store ptr %63, ptr %64, align 8
  br label %65

65:                                               ; preds = %62, %60, %55
  %66 = load ptr, ptr %14, align 8
  %67 = call i32 @of_get_display_timing(ptr noundef %66, ptr noundef nonnull @.str.7, ptr noundef nonnull %6) #10
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %184

69:                                               ; preds = %65
  %70 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false) #10, !annotation !8
  %71 = getelementptr inbounds %struct.panel_desc, ptr %70, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74, !prof !9

74:                                               ; preds = %69
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 629, i32 noundef 9, ptr noundef null) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14) #11
  br label %183

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.panel_desc, ptr %70, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %100, label %79, !prof !10

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.panel_desc, ptr %70, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.display_timing, ptr %6, i32 0, i32 1, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.display_timing, ptr %6, i32 0, i32 2, i32 1
  %85 = getelementptr inbounds %struct.display_timing, ptr %6, i32 0, i32 3, i32 1
  %86 = getelementptr inbounds %struct.display_timing, ptr %6, i32 0, i32 4, i32 1
  %87 = getelementptr inbounds %struct.display_timing, ptr %6, i32 0, i32 5, i32 1
  %88 = getelementptr inbounds %struct.display_timing, ptr %6, i32 0, i32 6, i32 1
  %89 = getelementptr inbounds %struct.display_timing, ptr %6, i32 0, i32 7, i32 1
  %90 = getelementptr inbounds %struct.display_timing, ptr %6, i32 0, i32 8, i32 1
  %91 = getelementptr inbounds %struct.display_timing, ptr %6, i32 0, i32 9
  %92 = load i32, ptr %84, align 4
  %93 = load i32, ptr %85, align 4
  %94 = load i32, ptr %86, align 4
  %95 = load i32, ptr %87, align 4
  %96 = load i32, ptr %88, align 4
  %97 = load i32, ptr %89, align 4
  %98 = load i32, ptr %90, align 4
  %99 = load i32, ptr %91, align 4
  br label %101

100:                                              ; preds = %75
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 633, i32 noundef 9, ptr noundef null) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #11
  br label %183

101:                                              ; preds = %175, %79
  %102 = phi i32 [ 0, %79 ], [ %176, %175 ]
  %103 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = icmp ult i32 %83, %104
  br i1 %105, label %175, label %106

106:                                              ; preds = %101
  %107 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 1, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = icmp ugt i32 %83, %108
  br i1 %109, label %175, label %110

110:                                              ; preds = %106
  %111 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = icmp ult i32 %92, %112
  br i1 %113, label %175, label %114

114:                                              ; preds = %110
  %115 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 2, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = icmp ugt i32 %92, %116
  br i1 %117, label %175, label %118

118:                                              ; preds = %114
  %119 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = icmp ult i32 %93, %120
  br i1 %121, label %175, label %122

122:                                              ; preds = %118
  %123 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 3, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = icmp ugt i32 %93, %124
  br i1 %125, label %175, label %126

126:                                              ; preds = %122
  %127 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = icmp ult i32 %94, %128
  br i1 %129, label %175, label %130

130:                                              ; preds = %126
  %131 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 4, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = icmp ugt i32 %94, %132
  br i1 %133, label %175, label %134

134:                                              ; preds = %130
  %135 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 5
  %136 = load i32, ptr %135, align 4
  %137 = icmp ult i32 %95, %136
  br i1 %137, label %175, label %138

138:                                              ; preds = %134
  %139 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 5, i32 2
  %140 = load i32, ptr %139, align 4
  %141 = icmp ugt i32 %95, %140
  br i1 %141, label %175, label %142

142:                                              ; preds = %138
  %143 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 6
  %144 = load i32, ptr %143, align 4
  %145 = icmp ult i32 %96, %144
  br i1 %145, label %175, label %146

146:                                              ; preds = %142
  %147 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 6, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = icmp ugt i32 %96, %148
  br i1 %149, label %175, label %150

150:                                              ; preds = %146
  %151 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 7
  %152 = load i32, ptr %151, align 4
  %153 = icmp ult i32 %97, %152
  br i1 %153, label %175, label %154

154:                                              ; preds = %150
  %155 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 7, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = icmp ugt i32 %97, %156
  br i1 %157, label %175, label %158

158:                                              ; preds = %154
  %159 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 8
  %160 = load i32, ptr %159, align 4
  %161 = icmp ult i32 %98, %160
  br i1 %161, label %175, label %162

162:                                              ; preds = %158
  %163 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 8, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = icmp ugt i32 %98, %164
  br i1 %165, label %175, label %166

166:                                              ; preds = %162
  %167 = getelementptr %struct.display_timing, ptr %81, i32 %102, i32 9
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %99, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  call void @videomode_from_timing(ptr noundef nonnull %6, ptr noundef nonnull %4) #10
  %171 = getelementptr inbounds %struct.panel_edp, ptr %7, i32 0, i32 13
  call void @drm_display_mode_from_videomode(ptr noundef nonnull %4, ptr noundef %171) #10
  %172 = getelementptr inbounds %struct.panel_edp, ptr %7, i32 0, i32 13, i32 28
  %173 = load i8, ptr %172, align 2
  %174 = or i8 %173, 72
  store i8 %174, ptr %172, align 2
  br label %183

175:                                              ; preds = %166, %162, %158, %154, %150, %146, %142, %138, %134, %130, %126, %122, %118, %114, %110, %106, %101
  %176 = add nuw i32 %102, 1
  %177 = icmp eq i32 %176, %77
  br i1 %177, label %178, label %101

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.panel_edp, ptr %7, i32 0, i32 13, i32 28
  %180 = load i8, ptr %179, align 2
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %183, !prof !10

182:                                              ; preds = %178
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 661, i32 noundef 9, ptr noundef null) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16) #11
  br label %183

183:                                              ; preds = %182, %178, %170, %100, %74
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  br label %184

184:                                              ; preds = %183, %65
  %185 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %7, ptr %185, align 8
  call void @drm_panel_init(ptr noundef nonnull %7, ptr noundef %0, ptr noundef nonnull @panel_edp_funcs, i32 noundef 14) #10
  %186 = call i32 @drm_panel_of_backlight(ptr noundef nonnull %7) #10
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %219

188:                                              ; preds = %184
  call void @pm_runtime_enable(ptr noundef %0) #10
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %0, i32 noundef 1000) #10
  call void @__pm_runtime_use_autosuspend(ptr noundef %0, i1 noundef zeroext true) #10
  %189 = load ptr, ptr %14, align 8
  %190 = call i32 @of_device_is_compatible(ptr noundef %189, ptr noundef nonnull @.str.8) #10
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %188
  %193 = call fastcc i32 @generic_edp_panel_probe(ptr noundef %0, ptr noundef nonnull %7)
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %192
  %196 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef %193, ptr noundef nonnull @.str.9) #10
  br label %217

197:                                              ; preds = %188
  %198 = getelementptr inbounds %struct.panel_desc, ptr %1, i32 0, i32 4
  %199 = load i32, ptr %198, align 4
  switch i32 %199, label %200 [
    i32 6, label %201
    i32 8, label %201
    i32 10, label %201
  ]

200:                                              ; preds = %197
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %199) #11
  br label %201

201:                                              ; preds = %200, %197, %197, %197, %192
  %202 = getelementptr inbounds %struct.drm_panel, ptr %7, i32 0, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %216

205:                                              ; preds = %201
  %206 = load ptr, ptr %13, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %216, label %208

208:                                              ; preds = %205
  %209 = call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #10
  %210 = load ptr, ptr %13, align 4
  %211 = call i32 @drm_panel_dp_aux_backlight(ptr noundef nonnull %7, ptr noundef %210) #10
  %212 = call i64 @ktime_get_mono_fast_ns() #10
  %213 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %212, ptr %213, align 8
  %214 = call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 13) #10
  %215 = icmp eq i32 %211, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %208, %205, %201
  call void @drm_panel_add(ptr noundef nonnull %7) #10
  br label %232

217:                                              ; preds = %208, %195
  %218 = phi i32 [ %193, %195 ], [ %211, %208 ]
  call void @__pm_runtime_use_autosuspend(ptr noundef %0, i1 noundef zeroext false) #10
  call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #10
  br label %219

219:                                              ; preds = %217, %184
  %220 = phi i32 [ %186, %184 ], [ %218, %217 ]
  %221 = getelementptr inbounds %struct.panel_edp, ptr %7, i32 0, i32 8
  %222 = load ptr, ptr %221, align 8
  %223 = icmp eq ptr %222, null
  br i1 %223, label %232, label %224

224:                                              ; preds = %219
  %225 = load ptr, ptr %13, align 4
  %226 = icmp ne ptr %225, null
  %227 = getelementptr inbounds %struct.drm_dp_aux, ptr %225, i32 0, i32 1
  %228 = icmp eq ptr %222, %227
  %229 = select i1 %226, i1 %228, i1 false
  br i1 %229, label %232, label %230

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.i2c_adapter, ptr %222, i32 0, i32 9
  call void @put_device(ptr noundef %231) #10
  br label %232

232:                                              ; preds = %230, %224, %219, %216, %55, %48, %40, %38, %32, %26, %24, %3
  %233 = phi i32 [ %33, %32 ], [ %45, %48 ], [ 0, %216 ], [ -12, %3 ], [ %27, %26 ], [ %41, %40 ], [ -517, %38 ], [ -517, %55 ], [ %220, %224 ], [ %220, %230 ], [ %220, %219 ], [ -517, %24 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #10
  ret i32 %233
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_drm_get_panel_orientation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_display_timing(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @generic_edp_panel_probe(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #3 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 52, i32 noundef 3520) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %60, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.panel_edp, ptr %1, i32 0, i32 6
  store ptr %6, ptr %9, align 8
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.21, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #10
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.panel_desc, ptr %6, i32 0, i32 6
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %10, align 8
  %16 = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.22, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #10
  %17 = load i32, ptr %5, align 4
  store i32 %17, ptr %14, align 4
  %18 = call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #10
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %18) #11
  br label %55

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.panel_edp, ptr %1, i32 0, i32 8
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @drm_edid_get_panel_id(ptr noundef %23) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.24) #11
  br label %55

27:                                               ; preds = %21
  %28 = lshr i32 %24, 26
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 31
  %31 = or i8 %30, 64
  store i8 %31, ptr %3, align 4
  %32 = lshr i32 %24, 21
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 31
  %35 = or i8 %34, 64
  %36 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %35, ptr %36, align 1
  %37 = lshr i32 %24, 16
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 31
  %40 = or i8 %39, 64
  %41 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %40, ptr %41, align 2
  %42 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 0, ptr %42, align 1
  %43 = call fastcc ptr @find_edp_panel(i32 noundef %24)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49, !prof !10

45:                                               ; preds = %27
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 715, i32 noundef 9, ptr noundef null) #10
  %46 = and i32 %24, 65535
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %3, i32 noundef %46) #11
  %47 = getelementptr inbounds %struct.panel_desc, ptr %6, i32 0, i32 6, i32 5
  store i32 2000, ptr %47, align 4
  %48 = getelementptr inbounds %struct.panel_desc, ptr %6, i32 0, i32 6, i32 3
  store i32 200, ptr %48, align 4
  br label %55

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.edp_panel_entry, ptr %43, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = and i32 %24, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %3, ptr noundef %51, i32 noundef %52) #11
  %53 = getelementptr inbounds %struct.edp_panel_entry, ptr %43, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %14, ptr noundef align 4 dereferenceable(24) %54, i32 24, i1 false)
  br label %55

55:                                               ; preds = %49, %45, %26, %20
  %56 = phi i32 [ %18, %20 ], [ -5, %26 ], [ 0, %49 ], [ 0, %45 ]
  %57 = call i64 @ktime_get_mono_fast_ns() #10
  %58 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 22
  store volatile i64 %57, ptr %58, align 8
  %59 = call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 13) #10
  br label %60

60:                                               ; preds = %55, %2
  %61 = phi i32 [ %56, %55 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_dp_aux_backlight(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @videomode_from_timing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_edp_prepare(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 2, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #10
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  %11 = tail call i32 @__pm_runtime_suspend(ptr noundef %10, i32 noundef 13) #10
  br label %13

12:                                               ; preds = %5
  store i8 1, ptr %2, align 2
  br label %13

13:                                               ; preds = %12, %9, %1
  %14 = phi i32 [ %7, %9 ], [ 0, %12 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_edp_enable(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 8, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %53

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.panel_desc, ptr %7, i32 0, i32 6, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.panel_desc, ptr %7, i32 0, i32 6, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 2
  %19 = load i8, ptr %18, align 1, !range !11
  %20 = icmp eq i8 %19, 0
  %21 = tail call i32 @llvm.umax.i32(i32 %9, i32 %11)
  br i1 %20, label %24, label %22

22:                                               ; preds = %17, %13, %5
  %23 = icmp eq i32 %9, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %22, %17
  %25 = phi i32 [ %9, %22 ], [ %21, %17 ]
  tail call void @msleep(i32 noundef %25) #10
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds %struct.panel_desc, ptr %26, i32 0, i32 6, i32 2
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi i32 [ %28, %24 ], [ %11, %22 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 4
  %34 = load i64, ptr %33, align 8
  %35 = zext i32 %30 to i64
  %36 = mul nuw nsw i64 %35, 1000000
  %37 = add i64 %34, %36
  %38 = tail call i64 @ktime_get() #10
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %32
  %41 = sub i64 %37, %38
  %42 = tail call i64 @llvm.abs.i64(i64 %41, i1 false) #10
  %43 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %42) #12, !srcloc !12
  %44 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %42, i64 %43, i32 0) #12, !srcloc !13
  %45 = extractvalue { i64, i32 } %44, 0
  %46 = icmp slt i64 %41, 0
  %47 = lshr i64 %45, 18
  %48 = sub nsw i64 0, %47
  %49 = select i1 %46, i64 %48, i64 %47
  %50 = trunc i64 %49 to i32
  %51 = add i32 %50, 1
  tail call void @msleep(i32 noundef %51) #10
  br label %52

52:                                               ; preds = %40, %32, %29
  store i8 1, ptr %2, align 8
  br label %53

53:                                               ; preds = %52, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_edp_disable(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 8, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.panel_desc, ptr %7, i32 0, i32 6, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @msleep(i32 noundef %9) #10
  br label %12

12:                                               ; preds = %11, %5
  store i8 0, ptr %2, align 8
  br label %13

13:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_edp_unprepare(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 2, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = tail call i64 @ktime_get_mono_fast_ns() #10
  %8 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 22
  store volatile i64 %7, ptr %8, align 8
  %9 = load ptr, ptr %0, align 4
  %10 = tail call i32 @__pm_runtime_suspend(ptr noundef %9, i32 noundef 13) #10
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  store i8 0, ptr %2, align 2
  br label %13

13:                                               ; preds = %12, %5, %1
  %14 = phi i32 [ 0, %12 ], [ 0, %1 ], [ %10, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_edp_get_modes(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.videomode, align 4
  %4 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #10
  %10 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 12
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load ptr, ptr %4, align 8
  %15 = tail call ptr @drm_get_edid(ptr noundef %1, ptr noundef %14) #10
  store ptr %15, ptr %10, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %15, %13 ], [ %11, %7 ]
  %19 = tail call i32 @drm_add_edid_modes(ptr noundef %1, ptr noundef nonnull %18) #10
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %19, %17 ], [ 0, %13 ]
  %22 = load ptr, ptr %0, align 4
  %23 = tail call i64 @ktime_get_mono_fast_ns() #10
  %24 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 11, i32 22
  store volatile i64 %23, ptr %24, align 8
  %25 = load ptr, ptr %0, align 4
  %26 = tail call i32 @__pm_runtime_suspend(ptr noundef %25, i32 noundef 13) #10
  br label %27

27:                                               ; preds = %20, %2
  %28 = phi i32 [ %21, %20 ], [ 0, %2 ]
  %29 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 6
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.panel_desc, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.panel_desc, ptr %30, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %169, label %38

38:                                               ; preds = %34, %27
  %39 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 13
  %40 = icmp eq ptr %30, null
  br i1 %40, label %166, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 13, i32 28
  %43 = load i8, ptr %42, align 2
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %1, align 8
  %47 = tail call ptr @drm_mode_duplicate(ptr noundef %46, ptr noundef %39) #10
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  tail call void @drm_mode_probed_add(ptr noundef %1, ptr noundef nonnull %47) #10
  %50 = load ptr, ptr %29, align 8
  %51 = getelementptr inbounds %struct.panel_desc, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  br label %97

53:                                               ; preds = %45
  %54 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.18) #11
  %55 = load ptr, ptr %29, align 8
  %56 = getelementptr inbounds %struct.panel_desc, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  br label %58

58:                                               ; preds = %53, %41
  %59 = phi i32 [ %32, %41 ], [ %57, %53 ]
  %60 = phi ptr [ %30, %41 ], [ %55, %53 ]
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %110, label %62

62:                                               ; preds = %90, %58
  %63 = phi ptr [ %93, %90 ], [ %60, %58 ]
  %64 = phi i32 [ %91, %90 ], [ 0, %58 ]
  %65 = phi i32 [ %92, %90 ], [ 0, %58 ]
  %66 = getelementptr inbounds %struct.panel_desc, ptr %63, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr %struct.display_timing, ptr %67, i32 %65
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false) #10, !annotation !8
  call void @videomode_from_timing(ptr noundef %68, ptr noundef nonnull %3) #10
  %69 = load ptr, ptr %1, align 8
  %70 = call ptr @drm_mode_create(ptr noundef %69) #10
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %62
  %73 = load ptr, ptr %0, align 8
  %74 = getelementptr %struct.display_timing, ptr %67, i32 %65, i32 1, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr %struct.display_timing, ptr %67, i32 %65, i32 5, i32 1
  %77 = load i32, ptr %76, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.19, i32 noundef %75, i32 noundef %77) #11
  br label %90

78:                                               ; preds = %62
  call void @drm_display_mode_from_videomode(ptr noundef nonnull %3, ptr noundef nonnull %70) #10
  %79 = getelementptr inbounds %struct.drm_display_mode, ptr %70, i32 0, i32 28
  %80 = load i8, ptr %79, align 2
  %81 = or i8 %80, 64
  store i8 %81, ptr %79, align 2
  %82 = load ptr, ptr %29, align 8
  %83 = getelementptr inbounds %struct.panel_desc, ptr %82, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = or i8 %80, 72
  store i8 %87, ptr %79, align 2
  br label %88

88:                                               ; preds = %86, %78
  call void @drm_mode_probed_add(ptr noundef %1, ptr noundef nonnull %70) #10
  %89 = add i32 %64, 1
  br label %90

90:                                               ; preds = %88, %72
  %91 = phi i32 [ %89, %88 ], [ %64, %72 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  %92 = add nuw i32 %65, 1
  %93 = load ptr, ptr %29, align 8
  %94 = getelementptr inbounds %struct.panel_desc, ptr %93, i32 0, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %62, label %97

97:                                               ; preds = %90, %49
  %98 = phi i32 [ %52, %49 ], [ %95, %90 ]
  %99 = phi ptr [ %50, %49 ], [ %93, %90 ]
  %100 = phi i32 [ 1, %49 ], [ %91, %90 ]
  %101 = icmp eq i32 %98, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.panel_desc, ptr %99, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106, !prof !9

106:                                              ; preds = %102
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 331, i32 noundef 9, ptr noundef null) #10
  br label %107

107:                                              ; preds = %106, %102, %97
  %108 = icmp eq i32 %100, 0
  %109 = load ptr, ptr %29, align 8
  br i1 %108, label %110, label %152

110:                                              ; preds = %107, %58
  %111 = phi ptr [ %60, %58 ], [ %109, %107 ]
  %112 = getelementptr inbounds %struct.panel_desc, ptr %111, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %152, label %115

115:                                              ; preds = %145, %110
  %116 = phi ptr [ %148, %145 ], [ %111, %110 ]
  %117 = phi i32 [ %146, %145 ], [ 0, %110 ]
  %118 = phi i32 [ %147, %145 ], [ 0, %110 ]
  %119 = load ptr, ptr %116, align 4
  %120 = getelementptr %struct.drm_display_mode, ptr %119, i32 %118
  %121 = load ptr, ptr %1, align 8
  %122 = call ptr @drm_mode_duplicate(ptr noundef %121, ptr noundef %120) #10
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %115
  %125 = load ptr, ptr %0, align 8
  %126 = getelementptr %struct.drm_display_mode, ptr %119, i32 %118, i32 1
  %127 = load i16, ptr %126, align 4
  %128 = zext i16 %127 to i32
  %129 = getelementptr %struct.drm_display_mode, ptr %119, i32 %118, i32 6
  %130 = load i16, ptr %129, align 2
  %131 = zext i16 %130 to i32
  %132 = call i32 @drm_mode_vrefresh(ptr noundef %120) #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.20, i32 noundef %128, i32 noundef %131, i32 noundef %132) #11
  br label %145

133:                                              ; preds = %115
  %134 = getelementptr inbounds %struct.drm_display_mode, ptr %122, i32 0, i32 28
  %135 = load i8, ptr %134, align 2
  %136 = or i8 %135, 64
  store i8 %136, ptr %134, align 2
  %137 = load ptr, ptr %29, align 8
  %138 = getelementptr inbounds %struct.panel_desc, ptr %137, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = or i8 %135, 72
  store i8 %142, ptr %134, align 2
  br label %143

143:                                              ; preds = %141, %133
  call void @drm_mode_set_name(ptr noundef nonnull %122) #10
  call void @drm_mode_probed_add(ptr noundef %1, ptr noundef nonnull %122) #10
  %144 = add i32 %117, 1
  br label %145

145:                                              ; preds = %143, %124
  %146 = phi i32 [ %144, %143 ], [ %117, %124 ]
  %147 = add nuw i32 %118, 1
  %148 = load ptr, ptr %29, align 8
  %149 = getelementptr inbounds %struct.panel_desc, ptr %148, i32 0, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = icmp ult i32 %147, %150
  br i1 %151, label %115, label %152

152:                                              ; preds = %145, %110, %107
  %153 = phi ptr [ %111, %110 ], [ %109, %107 ], [ %148, %145 ]
  %154 = phi i32 [ 0, %110 ], [ %100, %107 ], [ %146, %145 ]
  %155 = getelementptr inbounds %struct.panel_desc, ptr %153, i32 0, i32 4
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20
  %158 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 2
  store i32 %156, ptr %158, align 8
  %159 = load ptr, ptr %29, align 8
  %160 = getelementptr inbounds %struct.panel_desc, ptr %159, i32 0, i32 5
  %161 = load i32, ptr %160, align 4
  store i32 %161, ptr %157, align 8
  %162 = load ptr, ptr %29, align 8
  %163 = getelementptr inbounds %struct.panel_desc, ptr %162, i32 0, i32 5, i32 1
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 1
  store i32 %164, ptr %165, align 4
  br label %166

166:                                              ; preds = %152, %38
  %167 = phi i32 [ %154, %152 ], [ 0, %38 ]
  %168 = add i32 %167, %28
  br label %173

169:                                              ; preds = %34
  %170 = icmp eq i32 %28, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %169
  %172 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %172, ptr noundef nonnull @.str.17) #11
  br label %173

173:                                              ; preds = %171, %169, %166
  %174 = phi i32 [ %168, %166 ], [ %28, %169 ], [ 0, %171 ]
  %175 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 14
  %176 = load i32, ptr %175, align 4
  %177 = call i32 @drm_connector_set_panel_orientation(ptr noundef %1, i32 noundef %176) #10
  ret i32 %174
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_edp_get_timings(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.panel_edp, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.panel_desc, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %1)
  %9 = icmp ne ptr %2, null
  %10 = icmp ne i32 %8, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %25

12:                                               ; preds = %12, %3
  %13 = phi ptr [ %21, %12 ], [ %5, %3 ]
  %14 = phi i32 [ %19, %12 ], [ 0, %3 ]
  %15 = getelementptr %struct.display_timing, ptr %2, i32 %14
  %16 = getelementptr inbounds %struct.panel_desc, ptr %13, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.display_timing, ptr %17, i32 %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(112) %15, ptr noundef align 4 dereferenceable(112) %18, i32 112, i1 false)
  %19 = add nuw i32 %14, 1
  %20 = icmp eq i32 %19, %8
  %21 = load ptr, ptr %4, align 8
  br i1 %20, label %22, label %12

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.panel_desc, ptr %21, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i32 [ %24, %22 ], [ %7, %3 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_set_panel_orientation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edid_get_panel_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @find_edp_panel(i32 noundef %0) unnamed_addr #8 {
  switch i32 %0, label %2 [
    i32 112148572, label %11
    i32 112157020, label %3
    i32 166004614, label %4
    i32 166004689, label %5
    i32 166004781, label %6
    i32 166005133, label %7
    i32 229511500, label %8
    i32 746718756, label %9
    i32 1292899660, label %10
  ]

2:                                                ; preds = %1
  br label %11

3:                                                ; preds = %1
  br label %11

4:                                                ; preds = %1
  br label %11

5:                                                ; preds = %1
  br label %11

6:                                                ; preds = %1
  br label %11

7:                                                ; preds = %1
  br label %11

8:                                                ; preds = %1
  br label %11

9:                                                ; preds = %1
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %9, %8, %7, %6, %5, %4, %3, %2, %1
  %12 = phi ptr [ @edp_panels, %1 ], [ null, %2 ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 1), %3 ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 2), %4 ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 3), %5 ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 4), %6 ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 5), %7 ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 6), %8 ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 7), %9 ], [ getelementptr inbounds ([10 x %struct.edp_panel_entry], ptr @edp_panels, i32 0, i32 8), %10 ]
  ret ptr %12
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @panel_edp_remove(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @drm_panel_remove(ptr noundef %3) #10
  %4 = tail call i32 @drm_panel_disable(ptr noundef %3) #10
  %5 = tail call i32 @drm_panel_unprepare(ptr noundef %3) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %0, i1 noundef zeroext false) #10
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #10
  %6 = getelementptr inbounds %struct.panel_edp, ptr %3, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.panel_edp, ptr %3, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ne ptr %11, null
  %13 = getelementptr inbounds %struct.drm_dp_aux, ptr %11, i32 0, i32 1
  %14 = icmp eq ptr %7, %13
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 9
  tail call void @put_device(ptr noundef %17) #10
  br label %18

18:                                               ; preds = %16, %9, %1
  %19 = getelementptr inbounds %struct.panel_edp, ptr %3, i32 0, i32 12
  %20 = load ptr, ptr %19, align 8
  tail call void @kfree(ptr noundef %20) #10
  store ptr null, ptr %19, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_edp_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.panel_edp, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 0) #10
  %6 = getelementptr inbounds %struct.panel_edp, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regulator_disable(ptr noundef %7) #10
  %9 = tail call i64 @ktime_get() #10
  %10 = getelementptr inbounds %struct.panel_edp, ptr %3, i32 0, i32 5
  store i64 %9, ptr %10, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_edp_resume(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.panel_edp, ptr %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.panel_edp, ptr %3, i32 0, i32 6
  %6 = getelementptr inbounds %struct.panel_edp, ptr %3, i32 0, i32 7
  %7 = getelementptr inbounds %struct.panel_edp, ptr %3, i32 0, i32 10
  %8 = getelementptr inbounds %struct.panel_edp, ptr %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.panel_edp, ptr %3, i32 0, i32 11
  br label %10

10:                                               ; preds = %104, %1
  %11 = phi i32 [ 0, %1 ], [ %105, %104 ]
  %12 = load ptr, ptr %3, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.panel_desc, ptr %13, i32 0, i32 6, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %10
  %18 = load i64, ptr %4, align 8
  %19 = zext i32 %15 to i64
  %20 = mul nuw nsw i64 %19, 1000000
  %21 = add i64 %18, %20
  %22 = tail call i64 @ktime_get() #10
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = sub i64 %21, %22
  %26 = tail call i64 @llvm.abs.i64(i64 %25, i1 false) #10
  %27 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %26) #12, !srcloc !12
  %28 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %26, i64 %27, i32 0) #12, !srcloc !13
  %29 = extractvalue { i64, i32 } %28, 0
  %30 = icmp slt i64 %25, 0
  %31 = lshr i64 %29, 18
  %32 = sub nsw i64 0, %31
  %33 = select i1 %30, i64 %32, i64 %31
  %34 = trunc i64 %33 to i32
  %35 = add i32 %34, 1
  tail call void @msleep(i32 noundef %35) #10
  br label %36

36:                                               ; preds = %24, %17, %10
  %37 = load ptr, ptr %6, align 4
  %38 = tail call i32 @regulator_enable(ptr noundef %37) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.38, i32 noundef %38) #11
  br label %101

41:                                               ; preds = %36
  %42 = load ptr, ptr %7, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %42, i32 noundef 1) #10
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds %struct.panel_desc, ptr %43, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = load i8, ptr %8, align 1, !range !11
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.panel_desc, ptr %43, i32 0, i32 6, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 @llvm.umax.i32(i32 %45, i32 %50) #10
  br label %52

52:                                               ; preds = %48, %41
  %53 = phi i32 [ %51, %48 ], [ %45, %41 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void @msleep(i32 noundef %53) #10
  br label %56

56:                                               ; preds = %55, %52
  %57 = load ptr, ptr %9, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %93, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %5, align 8
  %61 = getelementptr inbounds %struct.panel_desc, ptr %60, i32 0, i32 6, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  %64 = mul i32 %62, 1000
  %65 = select i1 %63, i32 2000000, i32 %64
  %66 = zext i32 %65 to i64
  %67 = tail call i64 @ktime_get() #10
  %68 = mul nuw nsw i64 %66, 1000
  %69 = add i64 %68, %67
  %70 = load ptr, ptr %9, align 4
  %71 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %70) #10
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %59
  %74 = icmp eq i32 %65, 0
  br label %75

75:                                               ; preds = %82, %73
  br i1 %74, label %82, label %76

76:                                               ; preds = %75
  %77 = tail call i64 @ktime_get() #10
  %78 = icmp sgt i64 %77, %69
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load ptr, ptr %9, align 4
  %81 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %80) #10
  br label %86

82:                                               ; preds = %76, %75
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #10
  %83 = load ptr, ptr %9, align 4
  %84 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %83) #10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %75, label %86

86:                                               ; preds = %82, %79, %59
  %87 = phi i32 [ %81, %79 ], [ %71, %59 ], [ %84, %82 ]
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 -110, i32 0
  %90 = icmp slt i32 %87, 0
  %91 = select i1 %90, i32 %87, i32 %89
  switch i32 %91, label %92 [
    i32 0, label %93
    i32 -110, label %96
  ]

92:                                               ; preds = %86
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.39, i32 noundef %91) #11
  br label %96

93:                                               ; preds = %86, %56
  %94 = tail call i64 @ktime_get() #10
  %95 = getelementptr inbounds %struct.panel_edp, ptr %3, i32 0, i32 4
  store i64 %94, ptr %95, align 8
  br label %108

96:                                               ; preds = %92, %86
  %97 = load ptr, ptr %7, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %97, i32 noundef 0) #10
  %98 = load ptr, ptr %6, align 4
  %99 = tail call i32 @regulator_disable(ptr noundef %98) #10
  %100 = tail call i64 @ktime_get() #10
  store i64 %100, ptr %4, align 8
  br label %101

101:                                              ; preds = %96, %40
  %102 = phi i32 [ %38, %40 ], [ %91, %96 ]
  %103 = icmp eq i32 %102, -110
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = add nuw nsw i32 %11, 1
  %106 = icmp eq i32 %105, 5
  br i1 %106, label %107, label %10

107:                                              ; preds = %104
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef 5) #11
  br label %112

108:                                              ; preds = %101, %93
  %109 = phi i32 [ 0, %93 ], [ %102, %101 ]
  %110 = icmp eq i32 %11, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %11) #11
  br label %112

112:                                              ; preds = %111, %108, %107
  %113 = phi i32 [ %109, %108 ], [ %109, %111 ], [ -110, %107 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_edp_platform_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @of_match_node(ptr noundef getelementptr inbounds ([30 x %struct.of_device_id], ptr @platform_of_match, i32 0, i32 1), ptr noundef %3) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call fastcc i32 @panel_edp_probe(ptr noundef %7, ptr noundef %9, ptr noundef null)
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ %10, %6 ], [ -19, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panel_edp_platform_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call fastcc void @panel_edp_remove(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @panel_edp_platform_shutdown(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_panel_disable(ptr noundef %3) #10
  %5 = tail call i32 @drm_panel_unprepare(ptr noundef %3) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i8 0, i8 2}
!12 = !{i64 222056, i64 222083}
!13 = !{i64 222751, i64 222778, i64 222811, i64 222832, i64 222859, i64 222885}
