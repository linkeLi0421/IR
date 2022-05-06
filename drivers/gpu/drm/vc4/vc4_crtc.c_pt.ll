; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_crtc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.component_ops = type { ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vc4_pv_data = type { %struct.vc4_crtc_data, i32, i8, [4 x i32], ptr }
%struct.vc4_crtc_data = type { i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.78, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.78 = type { i32, ptr }
%struct.vc4_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i64, [256 x i8], [256 x i8], [256 x i8], ptr, %struct.debugfs_regset32, i8, %struct.spinlock, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vc4_encoder = type { %struct.drm_encoder, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.vc4_crtc_state = type { %struct.drm_crtc_state, %struct.drm_mm_node, i8, i32, %struct.anon.104, i32, i8 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.anon.104 = type { i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.105, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.106, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.105 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.anon.106 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.vc4_hvs = type { ptr, ptr, ptr, ptr, %struct.drm_mm, %struct.drm_mm, %struct.spinlock, %struct.drm_mm_node, %struct.debugfs_regset32, i8 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.vc4_async_flip_state = type { ptr, ptr, ptr, ptr, %struct.vc4_seqno_cb }
%struct.vc4_seqno_cb = type { %struct.work_struct, i64, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.vc4_bo = type { %struct.drm_gem_cma_object, i64, i64, i8, %struct.list_head, i32, %struct.list_head, ptr, i32, %struct.refcount_struct, i32, %struct.mutex }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@.str = private unnamed_addr constant [31 x i8] c"drivers/gpu/drm/vc4/vc4_crtc.c\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"brcm,bcm2711-pixelvalve2\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"brcm,bcm2711-pixelvalve4\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to construct primary plane\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"vc4_crtc\00", align 1
@vc4_crtc_dt_match = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-pixelvalve0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_pv0_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-pixelvalve1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_pv1_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-pixelvalve2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_pv2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-pixelvalve0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_pv0_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-pixelvalve1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_pv1_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-pixelvalve2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_pv2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-pixelvalve3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_pv3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-pixelvalve4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_pv4_data }, %struct.of_device_id zeroinitializer], align 4
@vc4_crtc_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @vc4_crtc_dev_probe, ptr @vc4_crtc_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.4, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_crtc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@vc4_crtc_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Timeout waiting for !PV_VCONTROL_VIDEN\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@vc4_crtc_ops = internal constant %struct.component_ops { ptr @vc4_crtc_bind, ptr @vc4_crtc_unbind }, align 4
@crtc_regs = internal constant [13 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.7, i32 0 }, %struct.debugfs_reg32 { ptr @.str.8, i32 4 }, %struct.debugfs_reg32 { ptr @.str.9, i32 8 }, %struct.debugfs_reg32 { ptr @.str.10, i32 12 }, %struct.debugfs_reg32 { ptr @.str.11, i32 16 }, %struct.debugfs_reg32 { ptr @.str.12, i32 20 }, %struct.debugfs_reg32 { ptr @.str.13, i32 24 }, %struct.debugfs_reg32 { ptr @.str.14, i32 28 }, %struct.debugfs_reg32 { ptr @.str.15, i32 32 }, %struct.debugfs_reg32 { ptr @.str.16, i32 36 }, %struct.debugfs_reg32 { ptr @.str.17, i32 40 }, %struct.debugfs_reg32 { ptr @.str.18, i32 44 }, %struct.debugfs_reg32 { ptr @.str.19, i32 48 }], align 4
@vc4_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr @vc4_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @vc4_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @vc4_page_flip, ptr null, ptr null, ptr @vc4_crtc_duplicate_state, ptr @vc4_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_enable_vblank, ptr @vc4_disable_vblank, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, align 4
@vc4_crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @vc4_crtc_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_crtc_atomic_check, ptr @vc4_hvs_atomic_begin, ptr @vc4_hvs_atomic_flush, ptr @vc4_crtc_atomic_enable, ptr @vc4_crtc_atomic_disable, ptr @vc4_crtc_get_scanout_position }, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"vc4 crtc\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"PV_CONTROL\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"PV_V_CONTROL\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"PV_VSYNCD_EVEN\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"PV_HORZA\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"PV_HORZB\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"PV_VERTA\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"PV_VERTB\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"PV_VERTA_EVEN\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"PV_VERTB_EVEN\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"PV_INTEN\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"PV_INTSTAT\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"PV_STAT\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"PV_HACT_ACT\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"[CRTC:%d] Doublescan mode rejected.\0A\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"Enabling CRTC %s (%u) connected to Encoder %s (%u)\00", align 1
@require_hvs_enabled.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"Disabling CRTC %s (%u) connected to Encoder %s (%u)\00", align 1
@bcm2835_pv0_data = internal constant %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 1, i32 0 }, i32 64, i8 1, [4 x i32] [i32 4, i32 7, i32 0, i32 0], ptr @.str.25 }, align 4
@bcm2835_pv1_data = internal constant %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 4, i32 2 }, i32 64, i8 1, [4 x i32] [i32 5, i32 6, i32 0, i32 0], ptr @.str.26 }, align 4
@bcm2835_pv2_data = internal constant %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 2, i32 1 }, i32 64, i8 1, [4 x i32] [i32 0, i32 1, i32 3, i32 0], ptr @.str.27 }, align 4
@bcm2711_pv0_data = internal constant %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 1, i32 0 }, i32 64, i8 1, [4 x i32] [i32 4, i32 7, i32 0, i32 0], ptr @.str.25 }, align 4
@bcm2711_pv1_data = internal constant %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 7, i32 3 }, i32 64, i8 1, [4 x i32] [i32 5, i32 6, i32 0, i32 0], ptr @.str.26 }, align 4
@bcm2711_pv2_data = internal constant %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 7, i32 4 }, i32 256, i8 2, [4 x i32] [i32 1, i32 0, i32 0, i32 0], ptr @.str.27 }, align 4
@bcm2711_pv3_data = internal constant %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 2, i32 1 }, i32 64, i8 1, [4 x i32] [i32 0, i32 0, i32 3, i32 0], ptr @.str.28 }, align 4
@bcm2711_pv4_data = internal constant %struct.vc4_pv_data { %struct.vc4_crtc_data { i32 7, i32 5 }, i32 64, i8 2, [4 x i32] [i32 2, i32 0, i32 0, i32 0], ptr @.str.29 }, align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"crtc0_regs\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"crtc1_regs\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"crtc2_regs\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"crtc3_regs\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"crtc4_regs\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_crtc_destroy(ptr noundef %0) #0 {
  tail call void @drm_crtc_cleanup(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vc4_get_crtc_encoder(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @__sw_hweight32(i32 noundef %4) #7
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef null) #7
  br label %8

8:                                                ; preds = %7, %2
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 16
  br label %11

11:                                               ; preds = %15, %8
  %12 = phi ptr [ %10, %8 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %3, align 4
  %17 = getelementptr i8, ptr %13, i32 36
  %18 = load i32, ptr %17, align 4
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %11, label %22

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %13, i32 -4
  br label %24

24:                                               ; preds = %22, %11
  %25 = phi ptr [ %23, %22 ], [ null, %11 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_crtc_disable_at_boot(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @of_device_is_compatible(ptr noundef %6, ptr noundef nonnull @.str.1) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @of_device_is_compatible(ptr noundef %12, ptr noundef nonnull @.str.2) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %71, label %15

15:                                               ; preds = %9, %1
  %16 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %71, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8
  %23 = getelementptr i8, ptr %22, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %71, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.vc4_crtc_data, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @vc4_hvs_get_fifo_from_output(ptr noundef %2, i32 noundef %31) #7
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %71, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr %16, align 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %37 = and i32 %36, 12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39, !prof !13

39:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 510, i32 noundef 9, ptr noundef null) #7
  br label %71

40:                                               ; preds = %34
  %41 = load ptr, ptr %28, align 4
  %42 = getelementptr inbounds %struct.vc4_pv_data, ptr %41, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 30, i32 16
  br label %46

46:                                               ; preds = %50, %40
  %47 = phi ptr [ %45, %40 ], [ %48, %50 ]
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %45
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %48, i32 68
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, %43
  br i1 %53, label %54, label %46

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %48, i32 -4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58, !prof !8

57:                                               ; preds = %54, %46
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 516, i32 noundef 9, ptr noundef null) #7
  br label %71

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %48, i32 -12
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3
  %62 = tail call i32 @__pm_runtime_resume(ptr noundef %61, i32 noundef 4) #7
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.platform_device, ptr %60, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #7, !srcloc !15
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 0, i32 -1, ptr elementtype(i32) %65) #7, !srcloc !16
  %67 = extractvalue { i32, i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  br label %71

70:                                               ; preds = %58
  tail call fastcc void @vc4_crtc_disable(ptr noundef %0, ptr noundef nonnull %55, ptr noundef null, i32 noundef %32)
  br label %71

71:                                               ; preds = %70, %69, %64, %57, %39, %27, %21, %15, %9
  %72 = phi i32 [ 0, %39 ], [ 0, %57 ], [ 0, %70 ], [ 0, %9 ], [ 0, %15 ], [ 0, %21 ], [ 0, %27 ], [ %62, %64 ], [ %62, %69 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_hvs_get_fifo_from_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vc4_crtc_disable(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %6 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %10 = and i32 %9, -2
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !20
  %13 = tail call i64 @ktime_get_raw() #7
  %14 = add i64 %13, 1000000
  %15 = tail call i64 @ktime_get_raw() #7
  %16 = icmp sgt i64 %15, %14
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr i8, ptr %17, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i1 true, i1 %16
  br i1 %22, label %36, label %23

23:                                               ; preds = %23, %4
  %24 = phi i32 [ %27, %23 ], [ 10, %4 ]
  %25 = shl i32 %24, 1
  tail call void @usleep_range_state(i32 noundef %24, i32 noundef %25, i32 noundef 2) #7
  %26 = icmp slt i32 %24, 1000
  %27 = select i1 %26, i32 %25, i32 %24
  %28 = tail call i64 @ktime_get_raw() #7
  %29 = icmp sgt i64 %28, %14
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr i8, ptr %30, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i1 true, i1 %29
  br i1 %35, label %36, label %23

36:                                               ; preds = %23, %4
  %37 = phi i1 [ %21, %4 ], [ %34, %23 ]
  %38 = load i1, ptr @vc4_crtc_disable.__already_done, align 1
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %41, label %40, !prof !13

40:                                               ; preds = %36
  store i1 true, ptr @vc4_crtc_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 434, i32 noundef 9, ptr noundef nonnull @.str.5) #7
  br label %41

41:                                               ; preds = %40, %36
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #7
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #7
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #7
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #7
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #7
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #7
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #7
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #7
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #7
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #7
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #7
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #7
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #7
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #7
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #7
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #7
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #7
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #7
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #7
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #7
  %62 = icmp eq ptr %1, null
  br i1 %62, label %90, label %63

63:                                               ; preds = %41
  %64 = getelementptr inbounds %struct.vc4_encoder, ptr %1, i32 0, i32 6
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  tail call void %65(ptr noundef nonnull %1, ptr noundef %2) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %68 = load ptr, ptr %6, align 8
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %70 = and i32 %69, -2
  %71 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %70) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %72 = load ptr, ptr %6, align 8
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %74 = or i32 %73, 2
  %75 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %74) #7, !srcloc !20
  br label %85

76:                                               ; preds = %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %77 = load ptr, ptr %6, align 8
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %79 = and i32 %78, -2
  %80 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %79) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %81 = load ptr, ptr %6, align 8
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %83 = or i32 %82, 2
  %84 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %83) #7, !srcloc !20
  br label %85

85:                                               ; preds = %76, %67
  tail call void @vc4_hvs_stop_channel(ptr noundef %5, i32 noundef %3) #7
  %86 = getelementptr inbounds %struct.vc4_encoder, ptr %1, i32 0, i32 7
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %85
  tail call void %87(ptr noundef nonnull %1, ptr noundef %2) #7
  br label %99

90:                                               ; preds = %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %91 = load ptr, ptr %6, align 8
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %93 = and i32 %92, -2
  %94 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %93) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %95 = load ptr, ptr %6, align 8
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %97 = or i32 %96, 2
  %98 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %97) #7, !srcloc !20
  tail call void @vc4_hvs_stop_channel(ptr noundef %5, i32 noundef %3) #7
  br label %99

99:                                               ; preds = %90, %89, %85
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_crtc_get_margins(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.vc4_crtc_state, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  store i32 %7, ptr %1, align 4
  %8 = getelementptr inbounds %struct.vc4_crtc_state, ptr %0, i32 0, i32 4, i32 1
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %2, align 4
  %10 = getelementptr inbounds %struct.vc4_crtc_state, ptr %0, i32 0, i32 4, i32 2
  %11 = load i32, ptr %10, align 8
  store i32 %11, ptr %3, align 4
  %12 = getelementptr inbounds %struct.vc4_crtc_state, ptr %0, i32 0, i32 4, i32 3
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %4, align 4
  %14 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 20
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_atomic_state, ptr %15, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.drm_atomic_state, ptr %15, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %43, %19
  %23 = phi i32 [ 0, %19 ], [ %44, %43 ]
  %24 = getelementptr %struct.__drm_connnectors_state, ptr %21, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %22
  %28 = getelementptr %struct.__drm_connnectors_state, ptr %21, i32 %23, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_connector_state, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %0, align 4
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.drm_connector_state, ptr %29, i32 0, i32 6, i32 1
  %36 = getelementptr inbounds %struct.drm_connector_state, ptr %29, i32 0, i32 6, i32 1, i32 1
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %1, align 4
  %38 = getelementptr inbounds %struct.drm_connector_state, ptr %29, i32 0, i32 6, i32 1, i32 2
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr %2, align 4
  %40 = getelementptr inbounds %struct.drm_connector_state, ptr %29, i32 0, i32 6, i32 1, i32 3
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %3, align 4
  %42 = load i32, ptr %35, align 4
  store i32 %42, ptr %4, align 4
  br label %46

43:                                               ; preds = %27, %22
  %44 = add nuw nsw i32 %23, 1
  %45 = icmp eq i32 %44, %17
  br i1 %45, label %46, label %22

46:                                               ; preds = %43, %34, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_crtc_handle_vblank(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @ktime_get() #7
  %3 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 4
  store i64 %2, ptr %3, align 8
  %4 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %0) #7
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 13
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %10) #7
  %11 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vc4_dev, ptr %5, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.vc4_hvs, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = shl i32 %7, 2
  %22 = add i32 %21, 48
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  %25 = icmp eq i32 %16, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 10
  %28 = load i8, ptr %27, align 4, !range !28
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26, %14
  %31 = load ptr, ptr %11, align 8
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef %31) #7
  store ptr null, ptr %11, align 8
  tail call void @drm_crtc_vblank_put(ptr noundef %0) #7
  tail call void @vc4_hvs_unmask_underrun(ptr noundef %5, i32 noundef %7) #7
  br label %32

32:                                               ; preds = %30, %26, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !29
  %33 = load i16, ptr %10, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_page_flip(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = and i32 %3, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %1, i32 noundef 0) #7
  %13 = tail call i32 @vc4_bo_inc_usecnt(ptr noundef %12) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %8
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 48) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @vc4_bo_dec_usecnt(ptr noundef %12) #7
  br label %44

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 2
  tail call void @drm_mode_object_get(ptr noundef %21) #7
  %22 = getelementptr inbounds %struct.vc4_async_flip_state, ptr %17, i32 0, i32 1
  store ptr %1, ptr %22, align 4
  store ptr %0, ptr %17, align 8
  %23 = getelementptr inbounds %struct.vc4_async_flip_state, ptr %17, i32 0, i32 3
  store ptr %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.drm_plane, ptr %11, i32 0, i32 19
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.vc4_async_flip_state, ptr %17, i32 0, i32 2
  store ptr %27, ptr %28, align 8
  %29 = icmp eq ptr %27, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.drm_framebuffer, ptr %27, i32 0, i32 2
  tail call void @drm_mode_object_get(ptr noundef %31) #7
  br label %32

32:                                               ; preds = %30, %20
  %33 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !13

35:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 870, i32 noundef 9, ptr noundef null) #7
  br label %36

36:                                               ; preds = %35, %32
  %37 = load ptr, ptr %24, align 4
  tail call void @drm_atomic_set_fb_for_plane(ptr noundef %37, ptr noundef %1) #7
  %38 = getelementptr inbounds %struct.vc4_async_flip_state, ptr %17, i32 0, i32 4
  %39 = getelementptr inbounds %struct.vc4_bo, ptr %12, i32 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = tail call i32 @vc4_queue_seqno_cb(ptr noundef %9, ptr noundef %38, i64 noundef %40, ptr noundef nonnull @vc4_async_page_flip_complete) #7
  br label %44

42:                                               ; preds = %5
  %43 = tail call i32 @drm_atomic_helper_page_flip(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #7
  br label %44

44:                                               ; preds = %42, %36, %19, %8
  %45 = phi i32 [ %43, %42 ], [ 0, %36 ], [ -12, %19 ], [ %13, %8 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vc4_crtc_duplicate_state(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 432) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vc4_crtc_state, ptr %3, i32 0, i32 4
  %9 = getelementptr inbounds %struct.vc4_crtc_state, ptr %7, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %8, ptr noundef align 8 dereferenceable(16) %9, i32 16, i1 false)
  %10 = getelementptr inbounds %struct.vc4_crtc_state, ptr %7, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vc4_crtc_state, ptr %3, i32 0, i32 3
  store i32 %11, ptr %12, align 4
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %0, ptr noundef nonnull %3) #7
  br label %13

13:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_crtc_destroy_state(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.vc4_crtc_state, ptr %1, i32 0, i32 1, i32 12
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vc4_crtc_state, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.vc4_hvs, ptr %11, i32 0, i32 6
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #7
  tail call void @drm_mm_remove_node(ptr noundef %9) #7
  %14 = load ptr, ptr %10, align 8
  %15 = getelementptr inbounds %struct.vc4_hvs, ptr %14, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %13) #7
  br label %16

16:                                               ; preds = %8, %2
  tail call void @drm_atomic_helper_crtc_destroy_state(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_crtc_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.vc4_crtc_state, ptr %3, i32 0, i32 1, i32 12
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.vc4_crtc_state, ptr %3, i32 0, i32 1
  %13 = getelementptr inbounds %struct.vc4_dev, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.vc4_hvs, ptr %14, i32 0, i32 6
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #7
  tail call void @drm_mm_remove_node(ptr noundef %12) #7
  %17 = load ptr, ptr %13, align 8
  %18 = getelementptr inbounds %struct.vc4_hvs, ptr %17, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %16) #7
  br label %19

19:                                               ; preds = %11, %5
  tail call void @drm_atomic_helper_crtc_destroy_state(ptr noundef %0, ptr noundef nonnull %3) #7
  br label %20

20:                                               ; preds = %19, %1
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 432) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store ptr null, ptr %2, align 4
  br label %27

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.vc4_crtc_state, ptr %22, i32 0, i32 3
  store i32 -1, ptr %26, align 4
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %0, ptr noundef nonnull %22) #7
  br label %27

27:                                               ; preds = %25, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_crtc_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @vc4_plane_init(ptr noundef %0, i32 noundef 1) #7
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3) #9
  %10 = ptrtoint ptr %5 to i32
  br label %38

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.vc4_crtc, ptr %1, i32 0, i32 11
  store i32 0, ptr %12, align 8
  %13 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef null, ptr noundef %2, ptr noundef null) #7
  %14 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 19
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.vc4_hvs, ptr %16, i32 0, i32 9
  %18 = load i8, ptr %17, align 8, !range !28
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef %1, i32 noundef 256) #7
  %22 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 17
  %23 = load i32, ptr %22, align 4
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false, i32 noundef %23) #7
  %24 = load i32, ptr %22, align 4
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true, i32 noundef %24) #7
  br label %25

25:                                               ; preds = %20, %11
  %26 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 17
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %29, %25
  %30 = phi i32 [ %35, %29 ], [ 0, %25 ]
  %31 = trunc i32 %30 to i8
  %32 = getelementptr %struct.vc4_crtc, ptr %1, i32 0, i32 5, i32 %30
  store i8 %31, ptr %32, align 1
  %33 = getelementptr %struct.vc4_crtc, ptr %1, i32 0, i32 6, i32 %30
  store i8 %31, ptr %33, align 1
  %34 = getelementptr %struct.vc4_crtc, ptr %1, i32 0, i32 7, i32 %30
  store i8 %31, ptr %34, align 1
  %35 = add nuw i32 %30, 1
  %36 = load i32, ptr %26, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %29, label %38

38:                                               ; preds = %29, %25, %7
  %39 = phi i32 [ %10, %7 ], [ 0, %25 ], [ 0, %29 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_plane_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_crtc_dev_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @vc4_crtc_ops) #7
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_crtc_dev_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @vc4_crtc_ops) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_stop_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_unmask_underrun(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_bo_inc_usecnt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_bo_dec_usecnt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_set_fb_for_plane(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_queue_seqno_cb(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_async_page_flip_complete(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %0, i32 -12
  %8 = load ptr, ptr %7, align 4
  tail call void @vc4_plane_async_set_fb(ptr noundef %6, ptr noundef %8) #7
  %9 = getelementptr i8, ptr %0, i32 -4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 28
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #7
  %15 = load ptr, ptr %9, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %3, ptr noundef %15) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #7
  br label %16

16:                                               ; preds = %12, %1
  tail call void @drm_crtc_vblank_put(ptr noundef %3) #7
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %18) #7
  %19 = getelementptr i8, ptr %0, i32 -8
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %20, i32 noundef 0) #7
  tail call void @vc4_bo_dec_usecnt(ptr noundef %23) #7
  %24 = load ptr, ptr %19, align 8
  %25 = getelementptr inbounds %struct.drm_framebuffer, ptr %24, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %25) #7
  br label %26

26:                                               ; preds = %22, %16
  tail call void @kfree(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_plane_async_set_fb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_crtc_bind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 1584, i32 noundef 3520) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %101, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @of_device_get_match_data(ptr noundef %0) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %101, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.vc4_crtc, ptr %7, i32 0, i32 2
  store ptr %10, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vc4_crtc, ptr %7, i32 0, i32 1
  store ptr %4, ptr %14, align 8
  %15 = tail call ptr @vc4_ioremap_regs(ptr noundef %4, i32 noundef 0) #7
  %16 = getelementptr inbounds %struct.vc4_crtc, ptr %7, i32 0, i32 3
  store ptr %15, ptr %16, align 8
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = ptrtoint ptr %15 to i32
  br label %101

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.vc4_crtc, ptr %7, i32 0, i32 9
  %22 = getelementptr inbounds %struct.vc4_crtc, ptr %7, i32 0, i32 9, i32 2
  store ptr %15, ptr %22, align 4
  store ptr @crtc_regs, ptr %21, align 4
  %23 = getelementptr inbounds %struct.vc4_crtc, ptr %7, i32 0, i32 9, i32 1
  store i32 13, ptr %23, align 4
  %24 = tail call i32 @vc4_crtc_init(ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull @vc4_crtc_funcs, ptr noundef nonnull @vc4_crtc_helper_funcs)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %101

26:                                               ; preds = %20
  %27 = load ptr, ptr %13, align 4
  %28 = getelementptr inbounds %struct.vc4_pv_data, ptr %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %67, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 8
  %34 = getelementptr %struct.vc4_pv_data, ptr %27, i32 0, i32 3, i32 1
  %35 = getelementptr %struct.vc4_pv_data, ptr %27, i32 0, i32 3, i32 2
  %36 = getelementptr %struct.vc4_pv_data, ptr %27, i32 0, i32 3, i32 3
  br label %37

37:                                               ; preds = %64, %32
  %38 = phi ptr [ %30, %32 ], [ %65, %64 ]
  %39 = getelementptr i8, ptr %38, i32 32
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 5
  br i1 %41, label %64, label %42

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %38, i32 68
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %28, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %61, %58, %55, %42
  %48 = phi i32 [ 0, %42 ], [ 1, %55 ], [ 2, %58 ], [ 3, %61 ]
  %49 = getelementptr i8, ptr %38, i32 72
  store i32 %48, ptr %49, align 4
  %50 = load i32, ptr %33, align 8
  %51 = shl nuw i32 1, %50
  %52 = getelementptr i8, ptr %38, i32 40
  %53 = load i32, ptr %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, ptr %52, align 4
  br label %64

55:                                               ; preds = %42
  %56 = load i32, ptr %34, align 4
  %57 = icmp eq i32 %44, %56
  br i1 %57, label %47, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %35, align 4
  %60 = icmp eq i32 %44, %59
  br i1 %60, label %47, label %61

61:                                               ; preds = %58
  %62 = load i32, ptr %36, align 4
  %63 = icmp eq i32 %44, %62
  br i1 %63, label %47, label %64

64:                                               ; preds = %61, %47, %37
  %65 = load ptr, ptr %38, align 4
  %66 = icmp eq ptr %65, %29
  br i1 %66, label %67, label %37

67:                                               ; preds = %64, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %68 = load ptr, ptr %16, align 8
  %69 = getelementptr i8, ptr %68, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 0) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %70 = load ptr, ptr %16, align 8
  %71 = getelementptr i8, ptr %70, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 128) #7, !srcloc !20
  %72 = tail call i32 @platform_get_irq(ptr noundef %4, i32 noundef 0) #7
  %73 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %72, ptr noundef nonnull @vc4_crtc_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.6, ptr noundef nonnull %7) #7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = getelementptr i8, ptr %0, i32 64
  store ptr %7, ptr %76, align 8
  %77 = getelementptr inbounds %struct.vc4_pv_data, ptr %10, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  tail call void @vc4_debugfs_add_regset32(ptr noundef %6, ptr noundef %78, ptr noundef %21) #7
  br label %101

79:                                               ; preds = %67
  %80 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 18
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  br i1 %82, label %101, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 8
  br label %85

85:                                               ; preds = %99, %83
  %86 = phi ptr [ %81, %83 ], [ %87, %99 ]
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %86, i32 64
  %89 = load i32, ptr %88, align 4
  %90 = load i32, ptr %84, align 8
  %91 = shl nuw i32 1, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = getelementptr i8, ptr %86, i32 -4
  %95 = getelementptr i8, ptr %86, i32 100
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.drm_plane_funcs, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  tail call void %98(ptr noundef %94) #7
  br label %99

99:                                               ; preds = %93, %85
  %100 = icmp eq ptr %87, %80
  br i1 %100, label %101, label %85

101:                                              ; preds = %99, %79, %75, %20, %18, %9, %3
  %102 = phi i32 [ %19, %18 ], [ 0, %75 ], [ -12, %3 ], [ -19, %9 ], [ %24, %20 ], [ %73, %79 ], [ %73, %99 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_crtc_unbind(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @drm_crtc_cleanup(ptr noundef %5) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %6 = getelementptr inbounds %struct.vc4_crtc, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #7, !srcloc !20
  store ptr null, ptr %4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_ioremap_regs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_crtc_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vc4_crtc, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !36
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr i8, ptr %10, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 128) #7, !srcloc !20
  tail call void @vc4_crtc_handle_vblank(ptr noundef %1)
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i32 [ 1, %9 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_regset32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_enable_vblank(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %2 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 128) #7, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_disable_vblank(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %2 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #7, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_vblank_helper_get_vblank_timestamp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_crtc_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %9) #7
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 8, %7 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_crtc_atomic_check(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @vc4_hvs_atomic_check(ptr noundef %0, ptr noundef %1) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %91

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @__sw_hweight32(i32 noundef %13) #7
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef null) #7
  br label %17

17:                                               ; preds = %16, %11
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 30, i32 16
  br label %20

20:                                               ; preds = %24, %17
  %21 = phi ptr [ %19, %17 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %19
  br i1 %23, label %57, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %12, align 4
  %26 = getelementptr i8, ptr %22, i32 36
  %27 = load i32, ptr %26, align 4
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %25
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %20, label %31

31:                                               ; preds = %24
  %32 = getelementptr i8, ptr %22, i32 -4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %57, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7
  %36 = getelementptr i8, ptr %22, i32 68
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 1
  %39 = load i32, ptr %35, align 4
  br i1 %38, label %40, label %53

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 1
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = mul i32 %39, %43
  %45 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 4
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = sdiv i32 %44, %47
  %49 = add i32 %48, 1000
  %50 = mul i32 %39, 9
  %51 = sdiv i32 %50, 10
  %52 = tail call i32 @llvm.smax.i32(i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %40, %34
  %54 = phi i32 [ %52, %40 ], [ %39, %34 ]
  %55 = mul i32 %54, 1000
  %56 = getelementptr inbounds %struct.vc4_crtc_state, ptr %8, i32 0, i32 5
  store i32 %55, ptr %56, align 8
  br label %57

57:                                               ; preds = %53, %31, %20
  %58 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %63 = load ptr, ptr %62, align 4
  br label %64

64:                                               ; preds = %88, %61
  %65 = phi i32 [ 0, %61 ], [ %89, %88 ]
  %66 = getelementptr %struct.__drm_connnectors_state, ptr %63, i32 %65
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %88, label %69

69:                                               ; preds = %64
  %70 = getelementptr %struct.__drm_connnectors_state, ptr %63, i32 %65, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.drm_connector_state, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %0
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.drm_connector_state, ptr %71, i32 0, i32 6, i32 1
  %77 = getelementptr inbounds %struct.drm_connector_state, ptr %71, i32 0, i32 6, i32 1, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.vc4_crtc_state, ptr %8, i32 0, i32 4
  store i32 %78, ptr %79, align 8
  %80 = getelementptr inbounds %struct.drm_connector_state, ptr %71, i32 0, i32 6, i32 1, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.vc4_crtc_state, ptr %8, i32 0, i32 4, i32 1
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.drm_connector_state, ptr %71, i32 0, i32 6, i32 1, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.vc4_crtc_state, ptr %8, i32 0, i32 4, i32 2
  store i32 %84, ptr %85, align 8
  %86 = load i32, ptr %76, align 4
  %87 = getelementptr inbounds %struct.vc4_crtc_state, ptr %8, i32 0, i32 4, i32 3
  store i32 %86, ptr %87, align 4
  br label %91

88:                                               ; preds = %69, %64
  %89 = add nuw nsw i32 %65, 1
  %90 = icmp eq i32 %89, %59
  br i1 %90, label %91, label %64

91:                                               ; preds = %88, %75, %57, %2
  %92 = phi i32 [ %9, %2 ], [ 0, %75 ], [ 0, %57 ], [ 0, %88 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_atomic_begin(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_atomic_flush(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_crtc_atomic_enable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @__sw_hweight32(i32 noundef %11) #7
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef null) #7
  br label %15

15:                                               ; preds = %14, %2
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 16
  br label %18

18:                                               ; preds = %22, %15
  %19 = phi ptr [ %17, %15 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %17
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %10, align 4
  %24 = getelementptr i8, ptr %20, i32 36
  %25 = load i32, ptr %24, align 4
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %18, label %29

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %20, i32 -4
  br label %31

31:                                               ; preds = %29, %18
  %32 = phi ptr [ %30, %29 ], [ null, %18 ]
  %33 = icmp eq ptr %9, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi ptr [ %36, %34 ], [ null, %31 ]
  %39 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.drm_encoder, ptr %32, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.drm_encoder, ptr %32, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %38, i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef %40, i32 noundef %42, ptr noundef %44, i32 noundef %46) #7
  %47 = getelementptr inbounds %struct.vc4_dev, ptr %9, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.vc4_hvs, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !40
  %52 = icmp sgt i32 %51, -1
  %53 = load i1, ptr @require_hvs_enabled.__already_done, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %57, !prof !8

56:                                               ; preds = %37
  store i1 true, ptr @require_hvs_enabled.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 418, i32 noundef 9, ptr noundef null) #7
  br label %57

57:                                               ; preds = %56, %37
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #7
  tail call void @vc4_hvs_atomic_enable(ptr noundef %0, ptr noundef %1) #7
  %58 = getelementptr inbounds %struct.vc4_encoder, ptr %32, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void %59(ptr noundef %32, ptr noundef %1) #7
  br label %62

62:                                               ; preds = %61, %57
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.drm_crtc_state, ptr %67, i32 0, i32 7, i32 11
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 16
  %71 = icmp eq i32 %70, 0
  %72 = and i32 %69, 4096
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 1, i32 2
  %75 = getelementptr inbounds %struct.vc4_encoder, ptr %32, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, -2
  %78 = icmp eq i32 %77, 4
  %79 = getelementptr inbounds %struct.vc4_pv_data, ptr %65, i32 0, i32 2
  %80 = load i8, ptr %79, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %81 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 3
  %82 = load ptr, ptr %81, align 8
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %84 = and i32 %83, -2
  %85 = load ptr, ptr %81, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %84) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %86 = load ptr, ptr %81, align 8
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %88 = or i32 %87, 2
  %89 = load ptr, ptr %81, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %88) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %90 = getelementptr inbounds %struct.drm_crtc_state, ptr %67, i32 0, i32 7, i32 4
  %91 = getelementptr inbounds %struct.drm_crtc_state, ptr %67, i32 0, i32 7, i32 3
  %92 = zext i8 %80 to i32
  %93 = load i16, ptr %90, align 2
  %94 = zext i16 %93 to i32
  %95 = load i16, ptr %91, align 4
  %96 = zext i16 %95 to i32
  %97 = sub nsw i32 %94, %96
  %98 = mul nsw i32 %97, %74
  %99 = udiv i32 %98, %92
  %100 = shl i32 %99, 16
  %101 = getelementptr inbounds %struct.drm_crtc_state, ptr %67, i32 0, i32 7, i32 2
  %102 = load i16, ptr %101, align 2
  %103 = zext i16 %102 to i32
  %104 = sub nsw i32 %96, %103
  %105 = mul nsw i32 %104, %74
  %106 = udiv i32 %105, %92
  %107 = icmp ult i32 %106, 65536
  br i1 %107, label %116, label %108, !prof !13

108:                                              ; preds = %62
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 337, i32 noundef 9, ptr noundef null) #7
  %109 = load i16, ptr %91, align 4
  %110 = load i16, ptr %101, align 2
  %111 = zext i16 %109 to i32
  %112 = zext i16 %110 to i32
  %113 = sub nsw i32 %111, %112
  %114 = mul nsw i32 %113, %74
  %115 = udiv i32 %114, %92
  br label %116

116:                                              ; preds = %108, %62
  %117 = phi i32 [ %115, %108 ], [ %106, %62 ]
  %118 = and i32 %117, 65535
  %119 = or i32 %118, %100
  %120 = load ptr, ptr %81, align 8
  %121 = getelementptr i8, ptr %120, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %122 = getelementptr inbounds %struct.drm_crtc_state, ptr %67, i32 0, i32 7, i32 1
  %123 = load i16, ptr %101, align 2
  %124 = zext i16 %123 to i32
  %125 = load i16, ptr %122, align 4
  %126 = zext i16 %125 to i32
  %127 = sub nsw i32 %124, %126
  %128 = mul nsw i32 %127, %74
  %129 = udiv i32 %128, %92
  %130 = shl i32 %129, 16
  %131 = mul nuw nsw i32 %74, %126
  %132 = udiv i32 %131, %92
  %133 = and i32 %132, 196608
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %140, label %135, !prof !13

135:                                              ; preds = %116
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 343, i32 noundef 9, ptr noundef null) #7
  %136 = load i16, ptr %122, align 4
  %137 = zext i16 %136 to i32
  %138 = mul nuw nsw i32 %74, %137
  %139 = udiv i32 %138, %92
  br label %140

140:                                              ; preds = %135, %116
  %141 = phi i32 [ %139, %135 ], [ %132, %116 ]
  %142 = and i32 %141, 65535
  %143 = or i32 %142, %130
  %144 = load ptr, ptr %81, align 8
  %145 = getelementptr i8, ptr %144, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %143) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %146 = getelementptr inbounds %struct.drm_crtc_state, ptr %67, i32 0, i32 7, i32 25
  %147 = getelementptr inbounds %struct.drm_crtc_state, ptr %67, i32 0, i32 7, i32 24
  %148 = load i16, ptr %146, align 4
  %149 = zext i16 %148 to i32
  %150 = load i16, ptr %147, align 2
  %151 = zext i16 %150 to i32
  %152 = sub nsw i32 %149, %151
  %153 = shl i32 %152, 16
  %154 = getelementptr inbounds %struct.drm_crtc_state, ptr %67, i32 0, i32 7, i32 23
  %155 = load i16, ptr %154, align 4
  %156 = zext i16 %155 to i32
  %157 = sub nsw i32 %151, %156
  %158 = icmp ult i32 %157, 65536
  br i1 %158, label %165, label %159, !prof !13

159:                                              ; preds = %140
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 349, i32 noundef 9, ptr noundef null) #7
  %160 = load i16, ptr %147, align 2
  %161 = load i16, ptr %154, align 4
  %162 = zext i16 %160 to i32
  %163 = zext i16 %161 to i32
  %164 = sub nsw i32 %162, %163
  br label %165

165:                                              ; preds = %159, %140
  %166 = phi i32 [ %164, %159 ], [ %157, %140 ]
  %167 = and i32 %166, 65535
  %168 = or i32 %167, %153
  %169 = load ptr, ptr %81, align 8
  %170 = getelementptr i8, ptr %169, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %168) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %171 = getelementptr inbounds %struct.drm_crtc_state, ptr %67, i32 0, i32 7, i32 20
  %172 = load i16, ptr %154, align 4
  %173 = zext i16 %172 to i32
  %174 = load i16, ptr %171, align 2
  %175 = zext i16 %174 to i32
  %176 = sub nsw i32 %173, %175
  %177 = shl i32 %176, 16
  %178 = or i32 %177, %175
  %179 = load ptr, ptr %81, align 8
  %180 = getelementptr i8, ptr %179, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %178) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %71, label %225, label %181

181:                                              ; preds = %165
  %182 = load i16, ptr %147, align 2
  %183 = zext i16 %182 to i32
  %184 = xor i32 %183, -1
  %185 = load i16, ptr %146, align 4
  %186 = zext i16 %185 to i32
  %187 = add nsw i32 %184, %186
  %188 = shl i32 %187, 16
  %189 = load i16, ptr %154, align 4
  %190 = zext i16 %189 to i32
  %191 = sub nsw i32 %183, %190
  %192 = icmp ult i32 %191, 65536
  br i1 %192, label %199, label %193, !prof !13

193:                                              ; preds = %181
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 362, i32 noundef 9, ptr noundef null) #7
  %194 = load i16, ptr %147, align 2
  %195 = load i16, ptr %154, align 4
  %196 = zext i16 %194 to i32
  %197 = zext i16 %195 to i32
  %198 = sub nsw i32 %196, %197
  br label %199

199:                                              ; preds = %193, %181
  %200 = phi i32 [ %198, %193 ], [ %191, %181 ]
  %201 = and i32 %200, 65535
  %202 = or i32 %201, %188
  %203 = load ptr, ptr %81, align 8
  %204 = getelementptr i8, ptr %203, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %202) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %205 = load i16, ptr %154, align 4
  %206 = zext i16 %205 to i32
  %207 = load i16, ptr %171, align 2
  %208 = zext i16 %207 to i32
  %209 = sub nsw i32 %206, %208
  %210 = shl i32 %209, 16
  %211 = or i32 %210, %208
  %212 = load ptr, ptr %81, align 8
  %213 = getelementptr i8, ptr %212, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %211) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %214 = select i1 %78, i32 26, i32 18
  %215 = load i16, ptr %90, align 2
  %216 = zext i16 %215 to i32
  %217 = shl nuw nsw i32 %74, 5
  %218 = mul nuw nsw i32 %217, %216
  %219 = and i32 %218, 8388544
  %220 = or i32 %219, %214
  %221 = load ptr, ptr %81, align 8
  %222 = getelementptr i8, ptr %221, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 %220) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %223 = load ptr, ptr %81, align 8
  %224 = getelementptr i8, ptr %223, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 0) #7, !srcloc !20
  br label %229

225:                                              ; preds = %165
  %226 = select i1 %78, i32 10, i32 2
  %227 = load ptr, ptr %81, align 8
  %228 = getelementptr i8, ptr %227, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %226) #7, !srcloc !20
  br label %229

229:                                              ; preds = %225, %199
  br i1 %78, label %230, label %236

230:                                              ; preds = %229
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %231 = load i16, ptr %122, align 4
  %232 = zext i16 %231 to i32
  %233 = mul nuw nsw i32 %74, %232
  %234 = load ptr, ptr %81, align 8
  %235 = getelementptr i8, ptr %234, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %233) #7, !srcloc !20
  br label %236

236:                                              ; preds = %230, %229
  %237 = getelementptr inbounds %struct.vc4_dev, ptr %63, i32 0, i32 2
  %238 = load ptr, ptr %237, align 8
  %239 = getelementptr inbounds %struct.vc4_hvs, ptr %238, i32 0, i32 9
  %240 = load i8, ptr %239, align 8, !range !28
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %236
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %243 = load ptr, ptr %81, align 8
  %244 = getelementptr i8, ptr %243, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 32) #7, !srcloc !20
  br label %245

245:                                              ; preds = %242, %236
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %246 = load ptr, ptr %64, align 4
  %247 = getelementptr inbounds %struct.vc4_crtc_data, ptr %246, i32 0, i32 1
  %248 = load i32, ptr %247, align 4
  %249 = icmp eq i32 %248, 5
  br i1 %249, label %265, label %250

250:                                              ; preds = %245
  %251 = getelementptr inbounds %struct.vc4_pv_data, ptr %246, i32 0, i32 1
  %252 = load i32, ptr %251, align 4
  %253 = load ptr, ptr %0, align 8
  %254 = getelementptr inbounds %struct.vc4_dev, ptr %253, i32 0, i32 2
  %255 = load ptr, ptr %254, align 8
  %256 = getelementptr inbounds %struct.vc4_hvs, ptr %255, i32 0, i32 9
  %257 = load i8, ptr %256, align 8, !range !28
  %258 = icmp eq i8 %257, 0
  %259 = select i1 %258, i32 -19, i32 -18
  %260 = add i32 %259, %252
  %261 = shl i32 %260, 19
  %262 = and i32 %261, -33554432
  %263 = icmp ult i32 %262, 134217728
  br i1 %263, label %265, label %264, !prof !13

264:                                              ; preds = %250
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #7
  br label %265

265:                                              ; preds = %264, %250, %245
  %266 = phi i32 [ %262, %264 ], [ %262, %250 ], [ 0, %245 ]
  %267 = phi i32 [ %260, %264 ], [ %260, %250 ], [ 32, %245 ]
  %268 = getelementptr inbounds %struct.vc4_encoder, ptr %32, i32 0, i32 2
  %269 = load i32, ptr %268, align 4
  %270 = and i32 %269, 1073741820
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272, !prof !13

272:                                              ; preds = %265
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 403, i32 noundef 9, ptr noundef null) #7
  %273 = load i32, ptr %268, align 4
  br label %274

274:                                              ; preds = %272, %265
  %275 = phi i32 [ %273, %272 ], [ %269, %265 ]
  %276 = shl i32 %267, 15
  %277 = and i32 %276, 2064384
  %278 = and i32 %266, 100663296
  %279 = shl nuw nsw i32 %74, 4
  %280 = add nuw nsw i32 %279, 48
  %281 = and i32 %280, 48
  %282 = shl i32 %275, 2
  %283 = and i32 %282, 12
  %284 = select i1 %78, i32 8417282, i32 28674
  %285 = or i32 %281, %284
  %286 = or i32 %285, %278
  %287 = or i32 %286, %277
  %288 = or i32 %287, %283
  %289 = load ptr, ptr %81, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %289, i32 %288) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %290 = load ptr, ptr %81, align 8
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %290) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !52
  %292 = or i32 %291, 1
  %293 = load ptr, ptr %81, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %293, i32 %292) #7, !srcloc !20
  %294 = getelementptr inbounds %struct.vc4_encoder, ptr %32, i32 0, i32 4
  %295 = load ptr, ptr %294, align 4
  %296 = icmp eq ptr %295, null
  br i1 %296, label %298, label %297

297:                                              ; preds = %274
  tail call void %295(ptr noundef %32, ptr noundef %1) #7
  br label %298

298:                                              ; preds = %297, %274
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %299 = load ptr, ptr %81, align 8
  %300 = getelementptr i8, ptr %299, i32 4
  %301 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %300) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !54
  %302 = or i32 %301, 1
  %303 = load ptr, ptr %81, align 8
  %304 = getelementptr i8, ptr %303, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %304, i32 %302) #7, !srcloc !20
  %305 = getelementptr inbounds %struct.vc4_encoder, ptr %32, i32 0, i32 5
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %309, label %308

308:                                              ; preds = %298
  tail call void %306(ptr noundef %32, ptr noundef %1) #7
  br label %309

309:                                              ; preds = %308, %298
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_crtc_atomic_disable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @__sw_hweight32(i32 noundef %10) #7
  %12 = icmp ugt i32 %11, 1
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 289, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %2
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 30, i32 16
  br label %17

17:                                               ; preds = %21, %14
  %18 = phi ptr [ %16, %14 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %16
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %9, align 4
  %23 = getelementptr i8, ptr %19, i32 36
  %24 = load i32, ptr %23, align 4
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %17, label %28

28:                                               ; preds = %21
  %29 = getelementptr i8, ptr %19, i32 -4
  br label %30

30:                                               ; preds = %28, %17
  %31 = phi ptr [ %29, %28 ], [ null, %17 ]
  %32 = icmp eq ptr %15, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi ptr [ %35, %33 ], [ null, %30 ]
  %38 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.drm_encoder, ptr %31, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_encoder, ptr %31, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %37, i32 noundef 2, ptr noundef nonnull @.str.24, ptr noundef %39, i32 noundef %41, ptr noundef %43, i32 noundef %45) #7
  %46 = getelementptr inbounds %struct.vc4_dev, ptr %15, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.vc4_hvs, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !40
  %51 = icmp sgt i32 %50, -1
  %52 = load i1, ptr @require_hvs_enabled.__already_done, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56, !prof !8

55:                                               ; preds = %36
  store i1 true, ptr @require_hvs_enabled.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 418, i32 noundef 9, ptr noundef null) #7
  br label %56

56:                                               ; preds = %55, %36
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #7
  %57 = getelementptr inbounds %struct.vc4_crtc_state, ptr %8, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  tail call fastcc void @vc4_crtc_disable(ptr noundef %0, ptr noundef %31, ptr noundef %1, i32 noundef %58)
  %59 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.drm_crtc_state, ptr %60, i32 0, i32 18
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 28
  %66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %65) #7
  %67 = load ptr, ptr %59, align 4
  %68 = getelementptr inbounds %struct.drm_crtc_state, ptr %67, i32 0, i32 18
  %69 = load ptr, ptr %68, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef %69) #7
  %70 = load ptr, ptr %59, align 4
  %71 = getelementptr inbounds %struct.drm_crtc_state, ptr %70, i32 0, i32 18
  store ptr null, ptr %71, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %65, i32 noundef %66) #7
  br label %72

72:                                               ; preds = %64, %56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @vc4_crtc_get_scanout_position(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr nocapture noundef readonly %6) #0 {
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %4, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i64 @ktime_get() #7
  store i64 %13, ptr %4, align 8
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds %struct.vc4_dev, ptr %8, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.vc4_hvs, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.vc4_crtc_state, ptr %10, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 4
  %22 = add i32 %21, 72
  %23 = getelementptr i8, ptr %18, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !55
  %25 = icmp eq ptr %5, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %14
  %27 = tail call i64 @ktime_get() #7
  store i64 %27, ptr %5, align 8
  br label %28

28:                                               ; preds = %26, %14
  %29 = and i32 %24, 4095
  store i32 %29, ptr %2, align 4
  store i32 0, ptr %3, align 4
  %30 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %2, align 4
  %36 = sdiv i32 %35, 2
  store i32 %36, ptr %2, align 4
  %37 = and i32 %24, 4096
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 18
  %41 = load i16, ptr %40, align 2
  %42 = lshr i16 %41, 1
  %43 = zext i16 %42 to i32
  %44 = load i32, ptr %3, align 4
  %45 = add i32 %44, %43
  store i32 %45, ptr %3, align 4
  br label %46

46:                                               ; preds = %39, %34, %28
  %47 = load i32, ptr %19, align 4
  %48 = load ptr, ptr %15, align 8
  %49 = getelementptr inbounds %struct.vc4_hvs, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = shl i32 %47, 4
  %52 = add i32 %51, 76
  %53 = getelementptr i8, ptr %50, i32 %52
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !56
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 65532
  %57 = and i32 %54, 65532
  %58 = sub nsw i32 4, %57
  %59 = add nsw i32 %58, %56
  %60 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 13
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = udiv i32 %59, %62
  %64 = load i32, ptr %2, align 4
  %65 = icmp sgt i32 %64, %63
  br i1 %65, label %66, label %69

66:                                               ; preds = %46
  %67 = xor i32 %63, -1
  %68 = add i32 %64, %67
  store i32 %68, ptr %2, align 4
  br label %86

69:                                               ; preds = %46
  br i1 %1, label %70, label %85

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 9
  %72 = load i16, ptr %71, align 4
  %73 = zext i16 %72 to i32
  %74 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 6
  %75 = load i16, ptr %74, align 2
  %76 = zext i16 %75 to i32
  %77 = sub nsw i32 %76, %73
  store i32 %77, ptr %2, align 4
  br i1 %11, label %81, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 4
  %80 = load i64, ptr %79, align 8
  store i64 %80, ptr %4, align 8
  br label %81

81:                                               ; preds = %78, %70
  br i1 %25, label %86, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.vc4_crtc, ptr %0, i32 0, i32 4
  %84 = load i64, ptr %83, align 8
  store i64 %84, ptr %5, align 8
  br label %86

85:                                               ; preds = %69
  store i32 0, ptr %2, align 4
  br label %86

86:                                               ; preds = %85, %82, %81, %66
  %87 = icmp sgt i32 %63, 0
  ret i1 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_hvs_atomic_check(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_atomic_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 5592672}
!10 = !{i64 2159530010}
!11 = !{i64 2159530493}
!12 = !{i64 2159533028}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2147977686}
!15 = !{i64 475996, i64 2147965967, i64 2147965993, i64 2147966040, i64 2147966062, i64 2147966090, i64 2147966110}
!16 = !{i64 462565, i64 462590, i64 462612, i64 462628, i64 462640, i64 462660, i64 462684, i64 462700, i64 462712}
!17 = !{i64 2147977812}
!18 = !{i64 2159516579}
!19 = !{i64 2159517106}
!20 = !{i64 5592254}
!21 = !{i64 2159523303}
!22 = !{i64 2159523087}
!23 = !{i64 2156839673}
!24 = !{i64 2156840200}
!25 = !{i64 2156841383}
!26 = !{i64 2156841908}
!27 = !{i64 2159585149}
!28 = !{i8 0, i8 2}
!29 = !{i64 2148914164}
!30 = !{i64 2148909988}
!31 = !{i64 2148910063, i64 2148910090, i64 2148910137, i64 2148910159, i64 2148910187, i64 2148910207}
!32 = !{i64 2148937167}
!33 = !{i64 2159598190}
!34 = !{i64 2159598699}
!35 = !{i64 2159605823}
!36 = !{i64 2159585562}
!37 = !{i64 2159586020}
!38 = !{i64 2159583486}
!39 = !{i64 2159583913}
!40 = !{i64 2159514702}
!41 = !{i64 2157092131}
!42 = !{i64 2157409024}
!43 = !{i64 2157725733}
!44 = !{i64 2158037853}
!45 = !{i64 2158667154}
!46 = !{i64 2158856990}
!47 = !{i64 2158889067}
!48 = !{i64 2158890339}
!49 = !{i64 2159014995}
!50 = !{i64 2159418346}
!51 = !{i64 2159577083}
!52 = !{i64 2159577608}
!53 = !{i64 2159578789}
!54 = !{i64 2159579314}
!55 = !{i64 2156554088}
!56 = !{i64 2156471251}
