; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_txp.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_txp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.vc4_crtc_data = type { i32, i32 }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vc4_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i64, [256 x i8], [256 x i8], [256 x i8], ptr, %struct.debugfs_regset32, i8, %struct.spinlock, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.vc4_txp = type { %struct.vc4_crtc, ptr, %struct.drm_writeback_connector, ptr, %struct.debugfs_regset32 }
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
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.77, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.78, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.76 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.77 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.anon.78 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_writeback_job = type { ptr, i8, %struct.work_struct, %struct.list_head, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.vc4_crtc_state = type { %struct.drm_crtc_state, %struct.drm_mm_node, i8, i32, %struct.anon.79, i32, i8 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.anon.79 = type { i32, i32, i32, i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.72, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.72 = type { [4 x i8] }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"vc4_txp\00", align 1
@vc4_txp_dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-txp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@vc4_txp_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @vc4_txp_probe, ptr @vc4_txp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_txp_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@vc4_txp_ops = internal constant %struct.component_ops { ptr @vc4_txp_bind, ptr @vc4_txp_unbind }, align 4
@vc4_txp_crtc_data = internal constant %struct.vc4_crtc_data { i32 4, i32 2 }, align 4
@txp_regs = internal constant [5 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.2, i32 0 }, %struct.debugfs_reg32 { ptr @.str.3, i32 4 }, %struct.debugfs_reg32 { ptr @.str.4, i32 8 }, %struct.debugfs_reg32 { ptr @.str.5, i32 12 }, %struct.debugfs_reg32 { ptr @.str.6, i32 16 }], align 4
@vc4_txp_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @vc4_txp_connector_get_modes, ptr null, ptr @vc4_txp_connector_mode_valid, ptr null, ptr null, ptr null, ptr @vc4_txp_connector_atomic_check, ptr @vc4_txp_connector_atomic_commit, ptr null, ptr null }, align 4
@vc4_txp_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @vc4_txp_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @vc4_txp_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@vc4_txp_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_txp_encoder_disable, ptr null, ptr null }, align 4
@drm_fmts = internal constant [10 x i32] [i32 875710290, i32 875710274, i32 875713112, i32 875709016, i32 875713089, i32 875708993, i32 875714642, i32 875714626, i32 875708754, i32 875708738], align 4
@vc4_txp_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr @vc4_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @vc4_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @vc4_page_flip, ptr null, ptr null, ptr @vc4_crtc_duplicate_state, ptr @vc4_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_txp_enable_vblank, ptr @vc4_txp_disable_vblank, ptr null }, align 4
@vc4_txp_crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_txp_atomic_check, ptr @vc4_hvs_atomic_begin, ptr @vc4_hvs_atomic_flush, ptr @vc4_txp_atomic_enable, ptr @vc4_txp_atomic_disable, ptr null }, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"txp_regs\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"TXP_DST_PTR\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"TXP_DST_PITCH\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"TXP_DIM\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"TXP_DST_CTRL\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"TXP_PROGRESS\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Invalid framebuffer size %ux%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/vc4/vc4_txp.c\00", align 1
@txp_fmts = internal unnamed_addr constant [10 x i32] [i32 9, i32 8, i32 13, i32 12, i32 13, i32 12, i32 15, i32 14, i32 15, i32 14], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_txp_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @vc4_txp_ops) #4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_txp_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @vc4_txp_ops) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_txp_bind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @platform_get_irq(ptr noundef %4, i32 noundef 0) #4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %50, label %9

9:                                                ; preds = %3
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 2720, i32 noundef 3520) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %50, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.vc4_crtc, ptr %10, i32 0, i32 1
  store ptr %4, ptr %13, align 8
  %14 = getelementptr inbounds %struct.vc4_crtc, ptr %10, i32 0, i32 2
  store ptr @vc4_txp_crtc_data, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vc4_crtc, ptr %10, i32 0, i32 10
  store i8 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.vc4_txp, ptr %10, i32 0, i32 1
  store ptr %4, ptr %16, align 8
  %17 = tail call ptr @vc4_ioremap_regs(ptr noundef %4, i32 noundef 0) #4
  %18 = getelementptr inbounds %struct.vc4_txp, ptr %10, i32 0, i32 3
  store ptr %17, ptr %18, align 8
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = ptrtoint ptr %17 to i32
  br label %50

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.vc4_txp, ptr %10, i32 0, i32 4
  %24 = getelementptr inbounds %struct.vc4_txp, ptr %10, i32 0, i32 4, i32 2
  store ptr %17, ptr %24, align 4
  store ptr @txp_regs, ptr %23, align 4
  %25 = getelementptr inbounds %struct.vc4_txp, ptr %10, i32 0, i32 4, i32 1
  store i32 5, ptr %25, align 4
  %26 = getelementptr inbounds %struct.vc4_txp, ptr %10, i32 0, i32 2
  %27 = getelementptr inbounds %struct.vc4_txp, ptr %10, i32 0, i32 2, i32 0, i32 35
  store ptr @vc4_txp_connector_helper_funcs, ptr %27, align 4
  %28 = tail call i32 @drm_writeback_connector_init(ptr noundef %6, ptr noundef %26, ptr noundef nonnull @vc4_txp_connector_funcs, ptr noundef nonnull @vc4_txp_encoder_helper_funcs, ptr noundef nonnull @drm_fmts, i32 noundef 10) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %22
  %31 = tail call i32 @vc4_crtc_init(ptr noundef %6, ptr noundef nonnull %10, ptr noundef nonnull @vc4_txp_crtc_funcs, ptr noundef nonnull @vc4_txp_crtc_helper_funcs) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 8
  %35 = load i32, ptr %34, align 8
  %36 = shl nuw i32 1, %35
  %37 = getelementptr inbounds %struct.vc4_txp, ptr %10, i32 0, i32 2, i32 1, i32 6
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load ptr, ptr %0, align 4
  br label %43

43:                                               ; preds = %41, %33
  %44 = phi ptr [ %42, %41 ], [ %39, %33 ]
  %45 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %7, ptr noundef nonnull @vc4_txp_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %44, ptr noundef nonnull %10) #4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %10, ptr %48, align 8
  %49 = getelementptr inbounds %struct.vc4_dev, ptr %6, i32 0, i32 6
  store ptr %10, ptr %49, align 8
  tail call void @vc4_debugfs_add_regset32(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef %23) #4
  br label %50

50:                                               ; preds = %47, %43, %30, %22, %20, %9, %3
  %51 = phi i32 [ %21, %20 ], [ 0, %47 ], [ %7, %3 ], [ -12, %9 ], [ %28, %22 ], [ %31, %30 ], [ %45, %43 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_txp_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.vc4_txp, ptr %7, i32 0, i32 2
  tail call void @drm_connector_unregister(ptr noundef %8) #4
  tail call void @drm_connector_cleanup(ptr noundef %8) #4
  %9 = getelementptr inbounds %struct.vc4_dev, ptr %5, i32 0, i32 6
  store ptr null, ptr %9, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_ioremap_regs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_writeback_connector_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_crtc_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_txp_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %3 = getelementptr inbounds %struct.vc4_txp, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %7 = and i32 %6, -5
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #4, !srcloc !11
  tail call void @vc4_crtc_handle_vblank(ptr noundef %1) #4
  %10 = getelementptr inbounds %struct.vc4_txp, ptr %1, i32 0, i32 2
  tail call void @drm_writeback_signal_completion(ptr noundef %10, i32 noundef 0) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_regset32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_txp_connector_get_modes(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 25
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 26
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @drm_add_modes_noedid(ptr noundef %0, i32 noundef %4, i32 noundef %6) #4
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @vc4_txp_connector_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 23
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, %6
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 25
  %15 = load i32, ptr %14, align 4
  %16 = icmp slt i32 %15, %6
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 24
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, %9
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 26
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %23, %9
  %25 = select i1 %24, i32 19, i32 0
  br label %26

26:                                               ; preds = %21, %17, %13, %2
  %27 = phi i32 [ 18, %13 ], [ 18, %2 ], [ 19, %17 ], [ %25, %21 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_txp_connector_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.__drm_connnectors_state, ptr %10, i32 %4, i32 3
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi ptr [ %12, %8 ], [ null, %2 ]
  %15 = getelementptr inbounds %struct.drm_connector_state, ptr %14, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.drm_connector_state, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_crtc, ptr %20, i32 0, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr %struct.__drm_crtcs_state, ptr %22, i32 %24, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_writeback_job, ptr %16, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_framebuffer, ptr %28, i32 0, i32 9
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 8, i32 1
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = icmp eq i32 %30, %33
  %35 = getelementptr inbounds %struct.drm_framebuffer, ptr %28, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  br i1 %34, label %37, label %46

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 8, i32 6
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp eq i32 %36, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.drm_framebuffer, ptr %28, i32 0, i32 4
  %44 = load ptr, ptr %43, align 8
  %45 = load i32, ptr %44, align 4
  switch i32 %45, label %54 [
    i32 875710290, label %47
    i32 875710274, label %47
    i32 875713112, label %47
    i32 875709016, label %47
    i32 875713089, label %47
    i32 875708993, label %47
    i32 875714642, label %47
    i32 875714626, label %47
    i32 875708754, label %47
    i32 875708738, label %47
  ]

46:                                               ; preds = %37, %18
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %30, i32 noundef %36) #4
  br label %54

47:                                               ; preds = %42, %42, %42, %42, %42, %42, %42, %42, %42, %42
  %48 = getelementptr inbounds %struct.drm_framebuffer, ptr %28, i32 0, i32 6
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 15
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.vc4_crtc_state, ptr %26, i32 0, i32 2
  store i8 1, ptr %53, align 8
  br label %54

54:                                               ; preds = %52, %47, %46, %42, %13
  %55 = phi i32 [ -22, %46 ], [ 0, %52 ], [ 0, %13 ], [ -22, %47 ], [ -22, %42 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_txp_connector_atomic_commit(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.__drm_connnectors_state, ptr %10, i32 %4, i32 3
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi ptr [ %12, %8 ], [ null, %2 ]
  %15 = getelementptr inbounds %struct.drm_connector_state, ptr %14, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !12

18:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 287, i32 noundef 9, ptr noundef null) #4
  br label %74

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.drm_connector_state, ptr %14, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_crtc, ptr %21, i32 0, i32 22
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_writeback_job, ptr %16, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.drm_framebuffer, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 8
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %29 [
    i32 875710290, label %39
    i32 875710274, label %30
    i32 875713112, label %31
    i32 875709016, label %32
    i32 875713089, label %33
    i32 875708993, label %34
    i32 875714642, label %35
    i32 875714626, label %36
    i32 875708754, label %37
    i32 875708738, label %38
  ]

29:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 298, i32 noundef 9, ptr noundef null) #4
  br label %74

30:                                               ; preds = %19
  br label %39

31:                                               ; preds = %19
  br label %39

32:                                               ; preds = %19
  br label %39

33:                                               ; preds = %19
  br label %39

34:                                               ; preds = %19
  br label %39

35:                                               ; preds = %19
  br label %39

36:                                               ; preds = %19
  br label %39

37:                                               ; preds = %19
  br label %39

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38, %37, %36, %35, %34, %33, %32, %31, %30, %19
  %40 = phi i32 [ 0, %19 ], [ 1, %30 ], [ 2, %31 ], [ 3, %32 ], [ 4, %33 ], [ 5, %34 ], [ 6, %35 ], [ 7, %36 ], [ 8, %37 ], [ 9, %38 ]
  %41 = getelementptr [10 x i32], ptr @txp_fmts, i32 0, i32 %40
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 8
  %44 = and i32 %43, 3840
  %45 = getelementptr inbounds %struct.drm_format_info, ptr %27, i32 0, i32 8
  %46 = load i8, ptr %45, align 4, !range !13
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i32 1015813, i32 2064389
  %49 = or i32 %48, %44
  %50 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %25, i32 noundef 0) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %51 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.drm_framebuffer, ptr %25, i32 0, i32 7
  %54 = load i32, ptr %53, align 8
  %55 = add i32 %54, %52
  %56 = getelementptr i8, ptr %0, i32 1104
  %57 = load ptr, ptr %56, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %58 = getelementptr inbounds %struct.drm_framebuffer, ptr %25, i32 0, i32 6
  %59 = load i32, ptr %58, align 8
  %60 = load ptr, ptr %56, align 8
  %61 = getelementptr i8, ptr %60, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %62 = getelementptr inbounds %struct.drm_crtc_state, ptr %23, i32 0, i32 7, i32 1
  %63 = load i16, ptr %62, align 4
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds %struct.drm_crtc_state, ptr %23, i32 0, i32 7, i32 6
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = shl nuw i32 %67, 16
  %69 = or i32 %68, %64
  %70 = load ptr, ptr %56, align 8
  %71 = getelementptr i8, ptr %70, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %72 = load ptr, ptr %56, align 8
  %73 = getelementptr i8, ptr %72, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %49) #4, !srcloc !11
  tail call void @drm_writeback_queue_job(ptr noundef %0, ptr noundef %14) #4
  br label %74

74:                                               ; preds = %39, %29, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_modes_noedid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_writeback_queue_job(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @vc4_txp_connector_detect(ptr nocapture noundef readnone %0, i1 noundef zeroext %1) #3 {
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_txp_connector_destroy(ptr noundef %0) #0 {
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
define internal void @vc4_txp_encoder_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 136
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = load volatile i32, ptr @jiffies, align 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 16384) #4, !srcloc !11
  %12 = sub i32 -100, %9
  br label %13

13:                                               ; preds = %19, %8
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr i8, ptr %14, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = add i32 %12, %20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %13, label %23

23:                                               ; preds = %19, %13
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr i8, ptr %24, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !21
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29, !prof !22

29:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 361, i32 noundef 9, ptr noundef null) #4
  br label %30

30:                                               ; preds = %29, %23, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 2097152) #4, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_crtc_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_crtc_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_crtc_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_crtc_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @vc4_txp_enable_vblank(ptr nocapture noundef readnone %0) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @vc4_txp_disable_vblank(ptr nocapture noundef %0) #3 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_txp_atomic_check(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @vc4_hvs_atomic_check(ptr noundef %0, ptr noundef %1) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 3
  %13 = load i8, ptr %12, align 2
  %14 = or i8 %13, 64
  store i8 %14, ptr %12, align 2
  br label %15

15:                                               ; preds = %11, %2
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_atomic_begin(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_atomic_flush(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_txp_atomic_enable(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #4
  tail call void @vc4_hvs_atomic_enable(ptr noundef %0, ptr noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_txp_atomic_disable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #4
  tail call void @vc4_hvs_atomic_disable(ptr noundef %0, ptr noundef %1) #4
  %4 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 28
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #4
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 18
  %14 = load ptr, ptr %13, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef %14) #4
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.drm_crtc_state, ptr %15, i32 0, i32 18
  store ptr null, ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #4
  br label %17

17:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_hvs_atomic_check(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_atomic_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_atomic_disable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_writeback_signal_completion(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2156004075}
!9 = !{i64 5574500}
!10 = !{i64 2156004587}
!11 = !{i64 5574082}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i8 0, i8 2}
!14 = !{i64 2155689356}
!15 = !{i64 2155689794}
!16 = !{i64 2155936790}
!17 = !{i64 2155998880}
!18 = !{i64 2155999395}
!19 = !{i64 2155999847}
!20 = !{i64 2156000410}
!21 = !{i64 2156001651}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2156002404}
