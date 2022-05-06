; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_vec.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_vec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vc4_vec_tv_mode = type { ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vc4_vec_variant = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vc4_encoder = type { %struct.drm_encoder, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.vc4_vec_encoder = type { %struct.vc4_encoder, ptr }
%struct.vc4_vec = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.debugfs_regset32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
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
%struct.anon.75 = type { i32, ptr }
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
%struct.vc4_vec_connector = type { %struct.drm_connector, ptr, ptr }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.76, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.77, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.76 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.anon.77 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"vc4_vec\00", align 1
@vc4_vec_dt_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-vec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_vec_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-vec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_vec_variant }, %struct.of_device_id zeroinitializer], align 4
@vc4_vec_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @vc4_vec_dev_probe, ptr @vc4_vec_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_vec_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@vc4_vec_ops = internal constant %struct.component_ops { ptr @vc4_vec_bind, ptr @vc4_vec_unbind }, align 4
@tv_mode_names = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@vec_regs = internal constant [24 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.7, i32 196 }, %struct.debugfs_reg32 { ptr @.str.8, i32 200 }, %struct.debugfs_reg32 { ptr @.str.9, i32 204 }, %struct.debugfs_reg32 { ptr @.str.10, i32 208 }, %struct.debugfs_reg32 { ptr @.str.11, i32 256 }, %struct.debugfs_reg32 { ptr @.str.12, i32 260 }, %struct.debugfs_reg32 { ptr @.str.13, i32 264 }, %struct.debugfs_reg32 { ptr @.str.14, i32 324 }, %struct.debugfs_reg32 { ptr @.str.15, i32 328 }, %struct.debugfs_reg32 { ptr @.str.16, i32 384 }, %struct.debugfs_reg32 { ptr @.str.17, i32 388 }, %struct.debugfs_reg32 { ptr @.str.18, i32 392 }, %struct.debugfs_reg32 { ptr @.str.19, i32 396 }, %struct.debugfs_reg32 { ptr @.str.20, i32 400 }, %struct.debugfs_reg32 { ptr @.str.21, i32 404 }, %struct.debugfs_reg32 { ptr @.str.22, i32 408 }, %struct.debugfs_reg32 { ptr @.str.23, i32 412 }, %struct.debugfs_reg32 { ptr @.str.24, i32 416 }, %struct.debugfs_reg32 { ptr @.str.25, i32 512 }, %struct.debugfs_reg32 { ptr @.str.26, i32 516 }, %struct.debugfs_reg32 { ptr @.str.27, i32 520 }, %struct.debugfs_reg32 { ptr @.str.28, i32 524 }, %struct.debugfs_reg32 { ptr @.str.29, i32 528 }, %struct.debugfs_reg32 { ptr @.str.30, i32 532 }], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get clock: %d\0A\00", align 1
@vc4_vec_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr @vc4_vec_encoder_mode_fixup, ptr null, ptr null, ptr null, ptr @vc4_vec_encoder_atomic_mode_set, ptr null, ptr null, ptr null, ptr @vc4_vec_encoder_disable, ptr @vc4_vec_encoder_enable, ptr @vc4_vec_encoder_atomic_check }, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"vec_regs\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NTSC\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"NTSC-J\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"PAL\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"PAL-M\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"VEC_WSE_CONTROL\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"VEC_WSE_WSS_DATA\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"VEC_WSE_VPS_DATA1\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"VEC_WSE_VPS_CONTROL\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"VEC_REVID\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"VEC_CONFIG0\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"VEC_SCHPH\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"VEC_CLMP0_START\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"VEC_CLMP0_END\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"VEC_FREQ3_2\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"VEC_FREQ1_0\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"VEC_CONFIG1\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"VEC_CONFIG2\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"VEC_INTERRUPT_CONTROL\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"VEC_INTERRUPT_STATUS\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"VEC_FCW_SECAM_B\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"VEC_SECAM_GAIN_VAL\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"VEC_CONFIG3\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"VEC_STATUS0\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"VEC_MASK0\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"VEC_CFG\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"VEC_DAC_TEST\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"VEC_DAC_CONFIG\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"VEC_DAC_MISC\00", align 1
@vc4_vec_tv_modes = internal constant [4 x %struct.vc4_vec_tv_mode] [%struct.vc4_vec_tv_mode { ptr @ntsc_mode, ptr @vc4_vec_ntsc_mode_set }, %struct.vc4_vec_tv_mode { ptr @ntsc_mode, ptr @vc4_vec_ntsc_j_mode_set }, %struct.vc4_vec_tv_mode { ptr @pal_mode, ptr @vc4_vec_pal_mode_set }, %struct.vc4_vec_tv_mode { ptr @pal_mode, ptr @vc4_vec_pal_m_mode_set }], align 4
@ntsc_mode = internal constant %struct.drm_display_mode { i32 13500, i16 720, i16 734, i16 798, i16 858, i16 0, i16 480, i16 483, i16 486, i16 502, i16 0, i32 16, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, align 4
@pal_mode = internal constant %struct.drm_display_mode { i32 13500, i16 720, i16 740, i16 804, i16 864, i16 0, i16 576, i16 578, i16 581, i16 601, i16 0, i32 16, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, align 4
@.str.31 = private unnamed_addr constant [36 x i8] c"Failed to release power domain: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"Failed to retain power domain: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"Failed to set clock rate: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"Failed to turn on core clock: %d\0A\00", align 1
@vc4_vec_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @vc4_vec_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @vc4_vec_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@vc4_vec_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @vc4_vec_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.35 = private unnamed_addr constant [37 x i8] c"Failed to create a new display mode\0A\00", align 1
@bcm2835_vec_variant = internal constant %struct.vc4_vec_variant { i32 1175191564 }, align 4
@bcm2711_vec_variant = internal constant %struct.vc4_vec_variant { i32 1635778560 }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_vec_dev_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @vc4_vec_ops) #4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_vec_dev_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @vc4_vec_ops) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_vec_bind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @drm_mode_create_tv_properties(ptr noundef %6, i32 noundef 4, ptr noundef nonnull @tv_mode_names) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %70

9:                                                ; preds = %3
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 44, i32 noundef 3520) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %70, label %12

12:                                               ; preds = %9
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 104, i32 noundef 3520) #4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %70, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.vc4_encoder, ptr %13, i32 0, i32 1
  store i32 3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.vc4_vec_encoder, ptr %13, i32 0, i32 1
  store ptr %10, ptr %17, align 4
  %18 = getelementptr inbounds %struct.vc4_vec, ptr %10, i32 0, i32 2
  store ptr %13, ptr %18, align 4
  store ptr %4, ptr %10, align 4
  %19 = tail call ptr @of_device_get_match_data(ptr noundef %0) #4
  %20 = getelementptr inbounds %struct.vc4_vec, ptr %10, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = tail call ptr @vc4_ioremap_regs(ptr noundef %4, i32 noundef 0) #4
  %22 = getelementptr inbounds %struct.vc4_vec, ptr %10, i32 0, i32 4
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = ptrtoint ptr %21 to i32
  br label %70

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.vc4_vec, ptr %10, i32 0, i32 7
  %28 = getelementptr inbounds %struct.vc4_vec, ptr %10, i32 0, i32 7, i32 2
  store ptr %21, ptr %28, align 4
  store ptr @vec_regs, ptr %27, align 4
  %29 = getelementptr inbounds %struct.vc4_vec, ptr %10, i32 0, i32 7, i32 1
  store i32 24, ptr %29, align 4
  %30 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef null) #4
  %31 = getelementptr inbounds %struct.vc4_vec, ptr %10, i32 0, i32 5
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = icmp eq ptr %30, inttoptr (i32 -517 to ptr)
  br i1 %34, label %70, label %35

35:                                               ; preds = %33
  %36 = ptrtoint ptr %30 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %36) #4
  br label %70

37:                                               ; preds = %26
  tail call void @pm_runtime_enable(ptr noundef %0) #4
  %38 = load ptr, ptr %18, align 4
  %39 = tail call i32 @drm_simple_encoder_init(ptr noundef %6, ptr noundef %38, i32 noundef 4) #4
  %40 = load ptr, ptr %18, align 4
  %41 = getelementptr inbounds %struct.drm_encoder, ptr %40, i32 0, i32 11
  store ptr @vc4_vec_encoder_helper_funcs, ptr %41, align 4
  %42 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = tail call noalias ptr @devm_kmalloc(ptr noundef %43, i32 noundef 976, i32 noundef 3520) #4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.vc4_vec, ptr %10, i32 0, i32 3
  store ptr inttoptr (i32 -12 to ptr), ptr %47, align 4
  br label %63

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.drm_connector, ptr %44, i32 0, i32 12
  store i8 1, ptr %49, align 8
  %50 = load ptr, ptr %18, align 4
  %51 = getelementptr inbounds %struct.vc4_vec_connector, ptr %44, i32 0, i32 2
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.vc4_vec_connector, ptr %44, i32 0, i32 1
  store ptr %10, ptr %52, align 8
  %53 = tail call i32 @drm_connector_init(ptr noundef %6, ptr noundef nonnull %44, ptr noundef nonnull @vc4_vec_connector_funcs, i32 noundef 5) #4
  %54 = getelementptr inbounds %struct.drm_connector, ptr %44, i32 0, i32 35
  store ptr @vc4_vec_connector_helper_funcs, ptr %54, align 4
  %55 = getelementptr inbounds %struct.drm_connector, ptr %44, i32 0, i32 6
  %56 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 62
  %57 = load ptr, ptr %56, align 4
  tail call void @drm_object_attach_property(ptr noundef %55, ptr noundef %57, i64 noundef 0) #4
  %58 = getelementptr inbounds %struct.vc4_vec, ptr %10, i32 0, i32 6
  store ptr @vc4_vec_tv_modes, ptr %58, align 4
  %59 = load ptr, ptr %18, align 4
  %60 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %44, ptr noundef %59) #4
  %61 = getelementptr inbounds %struct.vc4_vec, ptr %10, i32 0, i32 3
  store ptr %44, ptr %61, align 4
  %62 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %67

63:                                               ; preds = %48, %46
  %64 = phi ptr [ inttoptr (i32 -12 to ptr), %46 ], [ %44, %48 ]
  %65 = ptrtoint ptr %64 to i32
  %66 = load ptr, ptr %18, align 4
  tail call void @drm_encoder_cleanup(ptr noundef %66) #4
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #4
  br label %70

67:                                               ; preds = %48
  %68 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %10, ptr %68, align 8
  %69 = getelementptr inbounds %struct.vc4_dev, ptr %6, i32 0, i32 5
  store ptr %10, ptr %69, align 4
  tail call void @vc4_debugfs_add_regset32(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef %27) #4
  br label %70

70:                                               ; preds = %67, %63, %35, %33, %24, %12, %9, %3
  %71 = phi i32 [ %25, %24 ], [ %65, %63 ], [ 0, %67 ], [ %7, %3 ], [ -12, %9 ], [ -12, %12 ], [ %36, %35 ], [ -517, %33 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_vec_unbind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.vc4_vec, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @drm_connector_unregister(ptr noundef %9) #4
  tail call void @drm_connector_cleanup(ptr noundef %9) #4
  %10 = getelementptr inbounds %struct.vc4_vec, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @drm_encoder_cleanup(ptr noundef %11) #4
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #4
  %12 = getelementptr inbounds %struct.vc4_dev, ptr %5, i32 0, i32 5
  store ptr null, ptr %12, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_tv_properties(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_ioremap_regs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_regset32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @vc4_vec_encoder_mode_fixup(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #2 {
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @vc4_vec_encoder_atomic_mode_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.vc4_vec_encoder, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_connector_state, ptr %2, i32 0, i32 6, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [4 x %struct.vc4_vec_tv_mode], ptr @vc4_vec_tv_modes, i32 0, i32 %7
  %9 = getelementptr inbounds %struct.vc4_vec, ptr %5, i32 0, i32 6
  store ptr %8, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_vec_encoder_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vc4_vec_encoder, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %4 = getelementptr inbounds %struct.vc4_vec, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 102) #4, !srcloc !9
  %9 = getelementptr inbounds %struct.vc4_vec, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #4
  tail call void @clk_unprepare(ptr noundef %10) #4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %13 = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %13) #4
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_vec_encoder_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vc4_vec_encoder, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32, i32 noundef %6) #4
  br label %58

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.vc4_vec, ptr %3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef 108000000) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33, i32 noundef %12) #4
  br label %58

15:                                               ; preds = %9
  %16 = load ptr, ptr %10, align 4
  %17 = tail call i32 @clk_prepare(ptr noundef %16) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = tail call i32 @clk_enable(ptr noundef %16) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %16) #4
  br label %23

23:                                               ; preds = %22, %15
  %24 = phi i32 [ %20, %22 ], [ %17, %15 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %24) #4
  br label %58

25:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %26 = getelementptr inbounds %struct.vc4_vec, ptr %3, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr i8, ptr %29, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 1) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %31 = load ptr, ptr %26, align 4
  %32 = getelementptr i8, ptr %31, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %33 = load ptr, ptr %26, align 4
  %34 = getelementptr i8, ptr %33, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 40) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %35 = load ptr, ptr %26, align 4
  %36 = getelementptr i8, ptr %35, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 172) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %37 = load ptr, ptr %26, align 4
  %38 = getelementptr i8, ptr %37, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 236) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %39 = load ptr, ptr %26, align 4
  %40 = getelementptr i8, ptr %39, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 96) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %41 = load ptr, ptr %26, align 4
  %42 = getelementptr i8, ptr %41, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %43 = getelementptr inbounds %struct.vc4_vec, ptr %3, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %26, align 4
  %47 = getelementptr i8, ptr %46, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %48 = load ptr, ptr %26, align 4
  %49 = getelementptr i8, ptr %48, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #4, !srcloc !9
  %50 = getelementptr inbounds %struct.vc4_vec, ptr %3, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.vc4_vec_tv_mode, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %3) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %54 = load ptr, ptr %26, align 4
  %55 = getelementptr i8, ptr %54, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 257) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %56 = load ptr, ptr %26, align 4
  %57 = getelementptr i8, ptr %56, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 8) #4, !srcloc !9
  br label %58

58:                                               ; preds = %25, %23, %14, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_vec_encoder_atomic_check(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.drm_connector_state, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_connector_state, ptr %2, i32 0, i32 6, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [4 x %struct.vc4_vec_tv_mode], ptr @vc4_vec_tv_modes, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %13 = tail call zeroext i1 @drm_mode_equal(ptr noundef %11, ptr noundef %12) #4
  br i1 %13, label %14, label %15

14:                                               ; preds = %7, %3
  br label %15

15:                                               ; preds = %14, %7
  %16 = phi i32 [ 0, %14 ], [ -22, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_vec_ntsc_mode_set(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.vc4_vec, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 64) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 7168) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_vec_ntsc_j_mode_set(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.vc4_vec, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 7168) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_vec_pal_mode_set(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.vc4_vec, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 7168) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_vec_pal_m_mode_set(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.vc4_vec, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 7169) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 8763) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 25041) #4, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @vc4_vec_connector_detect(ptr nocapture noundef readnone %0, i1 noundef zeroext %1) #2 {
  ret i32 3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_vec_connector_destroy(ptr noundef %0) #0 {
  tail call void @drm_connector_unregister(ptr noundef %0) #4
  tail call void @drm_connector_cleanup(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_vec_connector_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 52
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_connector_state, ptr %3, i32 0, i32 6, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr [4 x %struct.vc4_vec_tv_mode], ptr @vc4_vec_tv_modes, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @drm_mode_duplicate(ptr noundef %4, ptr noundef %8) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #4
  br label %13

12:                                               ; preds = %1
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %9) #4
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi i32 [ 1, %12 ], [ -12, %11 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
!8 = !{i64 2155486048}
!9 = !{i64 5416703}
!10 = !{i64 2155486972}
!11 = !{i64 2155487848}
!12 = !{i64 2155488211}
!13 = !{i64 2155488572}
!14 = !{i64 2155488941}
!15 = !{i64 2155489317}
!16 = !{i64 2155489693}
!17 = !{i64 2155490339}
!18 = !{i64 2155490838}
!19 = !{i64 2155491262}
!20 = !{i64 2155491672}
!21 = !{i64 2155492312}
!22 = !{i64 2155492922}
!23 = !{i64 2155480871}
!24 = !{i64 2155481321}
!25 = !{i64 2155481703}
!26 = !{i64 2155482093}
!27 = !{i64 2155482870}
!28 = !{i64 2155483260}
!29 = !{i64 2155483642}
!30 = !{i64 2155484174}
!31 = !{i64 2155484624}
!32 = !{i64 2155485008}
