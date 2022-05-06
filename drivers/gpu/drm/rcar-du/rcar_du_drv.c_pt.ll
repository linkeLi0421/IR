; ModuleID = '/llk/IR/drivers/gpu/drm/rcar-du/rcar_du_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_du_drv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rcar_du_device_info = type { i32, i32, i32, i32, [9 x %struct.rcar_du_output_routing], i32, i32, i32, i32 }
%struct.rcar_du_output_routing = type { i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rcar_du_device = type { ptr, ptr, ptr, %struct.drm_device, [4 x %struct.rcar_du_crtc], i32, [2 x %struct.rcar_du_group], [4 x ptr], [4 x %struct.rcar_du_vsp], [2 x ptr], %struct.anon.78, i32, i32, i32 }
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
%struct.rcar_du_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i32, i32, i8, i32, i8, ptr, %struct.wait_queue_head, %struct.spinlock, %struct.wait_queue_head, i32, ptr, ptr, ptr, i32, ptr, i32, %struct.drm_writeback_connector }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.75 }
%union.anon.75 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.rcar_du_group = type { ptr, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, [9 x %struct.rcar_du_plane], i8 }
%struct.rcar_du_plane = type { %struct.drm_plane, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rcar_du_vsp = type { i32, ptr, ptr, ptr, i32 }
%struct.anon.78 = type { ptr }

@rcar_du_of_table = internal constant [25 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7742\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7790_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7743\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rzg1_du_r8a7743_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7744\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rzg1_du_r8a7743_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7745\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rzg1_du_r8a7745_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a77470\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rzg1_du_r8a77470_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a774a1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a774a1_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a774b1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a774b1_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a774c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a774c0_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a774e1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a774e1_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7779_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7790_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7791_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7792_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7791_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7794_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7795_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7796_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a77961\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7796_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a77965\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a77965_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a77970\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a77970_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a77980\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a77970_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7799x_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a77995\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a7799x_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,du-r8a779a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_du_r8a779a0_info }, %struct.of_device_id zeroinitializer], align 4
@rcar_du_output_name.names = internal unnamed_addr constant [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], align 4
@.str = private unnamed_addr constant [6 x i8] c"DPAD0\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"DPAD1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DSI0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DSI1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"HDMI0\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"HDMI1\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"LVDS0\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"LVDS1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"TCON\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@__UNIQUE_ID_author276 = internal constant [60 x i8] c"author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [50 x i8] c"description=Renesas R-Car Display Unit DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@rcar_du_r8a7790_info = internal constant %struct.rcar_du_device_info { i32 2, i32 27, i32 1, i32 7, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 7, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 1 }, %struct.rcar_du_output_routing { i32 6, i32 2 }, %struct.rcar_du_output_routing zeroinitializer], i32 2, i32 0, i32 0, i32 0 }, align 4
@rzg1_du_r8a7743_info = internal constant %struct.rcar_du_device_info { i32 2, i32 27, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 3, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 0, i32 0, i32 0 }, align 4
@rzg1_du_r8a7745_info = internal constant %struct.rcar_du_device_info { i32 2, i32 27, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 1, i32 0 }, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 0, i32 0, i32 0, i32 0 }, align 4
@rzg1_du_r8a77470_info = internal constant %struct.rcar_du_device_info { i32 2, i32 27, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 1, i32 0 }, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 3, i32 2 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 0, i32 0, i32 0, i32 0 }, align 4
@rcar_du_r8a774a1_info = internal constant %struct.rcar_du_device_info { i32 3, i32 31, i32 0, i32 7, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 4, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 2 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 2, i32 0, i32 0 }, align 4
@rcar_du_r8a774b1_info = internal constant %struct.rcar_du_device_info { i32 3, i32 31, i32 0, i32 11, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 4, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 2 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 2, i32 0, i32 0 }, align 4
@rcar_du_r8a774c0_info = internal constant %struct.rcar_du_device_info { i32 3, i32 7, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 3, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 1 }, %struct.rcar_du_output_routing { i32 2, i32 2 }, %struct.rcar_du_output_routing zeroinitializer], i32 2, i32 0, i32 0, i32 3 }, align 4
@rcar_du_r8a774e1_info = internal constant %struct.rcar_du_device_info { i32 3, i32 31, i32 0, i32 11, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 4, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 2 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 2, i32 0, i32 0 }, align 4
@rcar_du_r8a7779_info = internal constant %struct.rcar_du_device_info { i32 1, i32 24, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 1, i32 0 }, %struct.rcar_du_output_routing { i32 3, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 0, i32 0, i32 0, i32 0 }, align 4
@rcar_du_r8a7791_info = internal constant %struct.rcar_du_device_info { i32 2, i32 27, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 3, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 0, i32 0, i32 0 }, align 4
@rcar_du_r8a7792_info = internal constant %struct.rcar_du_device_info { i32 2, i32 27, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 1, i32 0 }, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 0, i32 0, i32 0, i32 0 }, align 4
@rcar_du_r8a7794_info = internal constant %struct.rcar_du_device_info { i32 2, i32 27, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 1, i32 0 }, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 0, i32 0, i32 0, i32 0 }, align 4
@rcar_du_r8a7795_info = internal constant %struct.rcar_du_device_info { i32 3, i32 31, i32 0, i32 15, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 8, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing { i32 4, i32 2 }, %struct.rcar_du_output_routing { i32 1, i32 3 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 6, i32 0, i32 0 }, align 4
@rcar_du_r8a7796_info = internal constant %struct.rcar_du_device_info { i32 3, i32 31, i32 0, i32 7, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 4, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 2 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 2, i32 0, i32 0 }, align 4
@rcar_du_r8a77965_info = internal constant %struct.rcar_du_device_info { i32 3, i32 31, i32 0, i32 11, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 4, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 2 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 2, i32 0, i32 0 }, align 4
@rcar_du_r8a77970_info = internal constant %struct.rcar_du_device_info { i32 3, i32 31, i32 0, i32 1, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 1, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 1, i32 0, i32 0, i32 0 }, align 4
@rcar_du_r8a7799x_info = internal constant %struct.rcar_du_device_info { i32 3, i32 7, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing { i32 3, i32 0 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 1 }, %struct.rcar_du_output_routing { i32 2, i32 2 }, %struct.rcar_du_output_routing zeroinitializer], i32 2, i32 0, i32 0, i32 3 }, align 4
@rcar_du_r8a779a0_info = internal constant %struct.rcar_du_device_info { i32 3, i32 5, i32 0, i32 3, [9 x %struct.rcar_du_output_routing] [%struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing { i32 1, i32 0 }, %struct.rcar_du_output_routing { i32 2, i32 1 }, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer, %struct.rcar_du_output_routing zeroinitializer], i32 0, i32 0, i32 3, i32 0 }, align 4
@rcar_du_platform_driver = internal global %struct.platform_driver { ptr @rcar_du_probe, ptr @rcar_du_remove, ptr @rcar_du_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_du_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_du_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.10 = private unnamed_addr constant [8 x i8] c"rcar-du\00", align 1
@rcar_du_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rcar_du_pm_suspend, ptr @rcar_du_pm_resume, ptr @rcar_du_pm_suspend, ptr @rcar_du_pm_resume, ptr @rcar_du_pm_suspend, ptr @rcar_du_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rcar_du_driver = internal constant %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @rcar_du_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @rcar_du_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.10, ptr @.str.13, ptr @.str.14, i32 19, ptr null, i32 0, ptr @rcar_du_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"failed to initialize DRM/KMS (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"\016[drm] Device %s probed\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Renesas R-Car Display Unit\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"20130110\00", align 1
@rcar_du_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_license278], section "llvm.metadata"

@__mod_of__rcar_du_of_table_device_table = dso_local alias [25 x %struct.of_device_id], ptr @rcar_du_of_table

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @rcar_du_output_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 8
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr [9 x ptr], ptr @rcar_du_output_name.names, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.9, %1 ]
  ret ptr %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #1 section ".init.text" {
  tail call void @rcar_du_of_init(ptr noundef nonnull @rcar_du_of_table) #5
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_du_platform_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_du_platform_driver) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @rcar_du_of_init(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_du_probe(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @__devm_drm_dev_alloc(ptr noundef %2, ptr noundef nonnull @rcar_du_driver, i32 noundef 17456, i32 noundef 12) #6
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = ptrtoint ptr %3 to i32
  br label %50

7:                                                ; preds = %1
  store ptr %2, ptr %3, align 8
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %2) #6
  %9 = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %10, align 8
  %11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %12 = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 2
  store ptr %11, ptr %12, align 8
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = ptrtoint ptr %11 to i32
  br label %50

16:                                               ; preds = %7
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr inbounds %struct.rcar_du_device_info, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i64 4294967295, i64 1099511627775
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %23, ptr %24, align 4
  %25 = tail call i32 @dma_set_mask(ptr noundef %2, i64 noundef %22) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %16
  %28 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef %22) #6
  %29 = tail call i32 @rcar_du_modeset_init(ptr noundef %3) #6
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = icmp eq i32 %29, -517
  br i1 %32, label %47, label %33

33:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %29) #5
  br label %47

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 3
  %36 = tail call i32 @drm_dev_register(ptr noundef %35, i32 noundef 0) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load ptr, ptr %2, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi ptr [ %43, %42 ], [ %40, %38 ]
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %45) #5
  tail call void @drm_fbdev_generic_setup(ptr noundef %35, i32 noundef 32) #6
  br label %50

47:                                               ; preds = %34, %33, %31
  %48 = phi i32 [ %29, %33 ], [ -517, %31 ], [ %36, %34 ]
  %49 = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 3
  tail call void @drm_kms_helper_poll_fini(ptr noundef %49) #6
  br label %50

50:                                               ; preds = %47, %44, %16, %14, %5
  %51 = phi i32 [ %6, %5 ], [ %15, %14 ], [ %48, %47 ], [ 0, %44 ], [ %25, %16 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_du_remove(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 3
  tail call void @drm_dev_unregister(ptr noundef %4) #6
  tail call void @drm_atomic_helper_shutdown(ptr noundef %4) #6
  tail call void @drm_kms_helper_poll_fini(ptr noundef %4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_du_shutdown(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 3
  tail call void @drm_atomic_helper_shutdown(ptr noundef %4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_modeset_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcar_du_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_dumb_create(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_du_pm_suspend(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %4) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_du_pm_resume(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %4) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind }

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
