; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lock_class_key = type {}
%struct.mdp5_crtc = type { %struct.drm_crtc, i32, i8, %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.drm_flip_work, %struct.mdp_irq, %struct.mdp_irq, %struct.mdp_irq, %struct.completion, i8, %struct.anon.83 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.drm_flip_work = type { ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.83 = type { %struct.spinlock, ptr, i64, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.80, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.80 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.84, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.84 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.mdp5_crtc_state = type { %struct.drm_crtc_state, ptr, %struct.mdp5_pipeline, i32, i32, i32, i8, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.mdp5_pipeline = type { ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.mdp5_hw_mixer = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.drm_vblank_crtc = type { ptr, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.mdp5_kms = type { %struct.mdp_kms, ptr, ptr, i32, [13 x ptr], i32, [8 x ptr], i32, [5 x ptr], ptr, i32, %struct.drm_modeset_lock, %struct.drm_private_obj, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, %struct.mdp_irq, i32 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.74, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.74 = type { [4 x i8] }
%struct.mdp5_cfg_hw = type { ptr, %struct.mdp5_mdp_block, %struct.mdp5_smp_block, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }
%struct.mdp5_mdp_block = type { i32, [8 x i32], i32 }
%struct.mdp5_smp_block = type { i32, i32, [32 x i32], [2 x i32], [32 x i8] }
%struct.mdp5_ctl_block = type { i32, [8 x i32], i32 }
%struct.mdp5_pipe_block = type { i32, [8 x i32], i32 }
%struct.mdp5_lm_block = type { i32, [8 x i32], [8 x %struct.mdp5_lm_instance], i32, i32, i32 }
%struct.mdp5_lm_instance = type { i32, i32, i32, i32 }
%struct.mdp5_sub_block = type { i32, [8 x i32] }
%struct.mdp5_intf_block = type { [8 x i32], [5 x i32] }
%struct.mdp5_perf_block = type { i32, i32, i32 }
%struct.plane_state = type { ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.mdp5_plane_state = type { %struct.drm_plane_state, ptr, ptr, i32 }
%struct.mdp5_interface = type { i32, i32, i32, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdp_format = type { %struct.msm_format, i32, i32, i32, i32, [4 x i8], i8, i8, i8, i8, i32, i32, i8 }
%struct.msm_format = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c\00", align 1
@mdp5_crtc_no_lm_cursor_funcs = internal constant %struct.drm_crtc_funcs { ptr @mdp5_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @mdp5_crtc_duplicate_state, ptr @mdp5_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_crtc_atomic_print_state, ptr @mdp5_crtc_get_vblank_counter, ptr @msm_crtc_enable_vblank, ptr @msm_crtc_disable_vblank, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, align 4
@mdp5_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr @mdp5_crtc_reset, ptr @mdp5_crtc_cursor_set, ptr null, ptr @mdp5_crtc_cursor_move, ptr null, ptr @mdp5_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @mdp5_crtc_duplicate_state, ptr @mdp5_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_crtc_atomic_print_state, ptr @mdp5_crtc_get_vblank_counter, ptr @msm_crtc_enable_vblank, ptr @msm_crtc_disable_vblank, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"unref cursor\00", align 1
@mdp5_crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr @mdp5_crtc_atomic_check, ptr @mdp5_crtc_atomic_begin, ptr @mdp5_crtc_atomic_flush, ptr @mdp5_crtc_atomic_enable, ptr @mdp5_crtc_atomic_disable, ptr @mdp5_crtc_get_scanout_position }, align 4
@mdp5_crtc_wait_for_pp_done._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.mdp5_crtc_wait_for_pp_done = private unnamed_addr constant [27 x i8] c"mdp5_crtc_wait_for_pp_done\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"pp done time out, lm=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vblank time out, crtc=%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%s: send event: %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"%s: error: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\09ctl=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"\09hwmixer=%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"\09right hwmixer=%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"\09cmd_mode=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"cursor_set is deprecated with cursor planes\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"*ERROR* bad cursor size: %dx%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Cursor off\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"*ERROR* failed to %sable cursor: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"%s: x=%d, y=%d roi_w=%d roi_h=%d src_x=%d src_y=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", align 1
@mdp5_cfg = external dso_local local_unnamed_addr global ptr, align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"%s: flush=%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"cursor_move is deprecated with cursor planes\0A\00", align 1
@.str.23 = private unnamed_addr constant [61 x i8] c"%s: set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"%s: check\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"*ERROR* couldn't assign mixers %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"*ERROR* too many planes! cnt=%d, start stage=%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"%s: assign pipe %s on stage=%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"%s: begin\0A\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"%s: event: %p\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"Border Color is enabled\0A\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"Stage %d fg_alpha %x bg_alpha %x\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"no encoder found for crtc %d\0A\00", align 1
@switch.table.mdp5_crtc_atomic_check = private unnamed_addr constant [4 x i32] [i32 16777216, i32 67108864, i32 268435456, i32 1073741824], align 4
@switch.table.mdp5_crtc_atomic_check.34 = private unnamed_addr constant [4 x i32] [i32 33554432, i32 134217728, i32 536870912, i32 -2147483648], align 4
@switch.table.mdp5_crtc_atomic_flush = private unnamed_addr constant [7 x i32] [i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128], align 4
@switch.table.mdp5_crtc_atomic_flush.40 = private unnamed_addr constant [7 x i32] [i32 32, i32 80, i32 128, i32 176, i32 560, i32 608, i32 656], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp5_crtc_vblank(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 8, i32 1
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_crtc_set_pipeline(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @mdp_irq_update(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %3, i32 0, i32 2
  %12 = tail call i32 @mdp5_ctl_set_pipeline(ptr noundef %10, ptr noundef %11) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_set_pipeline(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @mdp5_crtc_get_ctl(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp5_crtc_get_mixer(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %5, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11, !prof !8

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 1272, %1 ], [ 1277, %3 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %10, i32 noundef 9, ptr noundef null) #9
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi ptr [ %7, %3 ], [ inttoptr (i32 -22 to ptr), %9 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp5_crtc_get_pipeline(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1285, i32 noundef 9, ptr noundef null) #9
  br label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %6, i32 0, i32 2
  br label %8

8:                                                ; preds = %4, %3
  %9 = phi ptr [ inttoptr (i32 -22 to ptr), %3 ], [ %7, %4 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mdp5_crtc_wait_for_commit_done(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %4, i32 0, i32 6
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  %8 = load ptr, ptr %0, align 8
  br i1 %7, label %23, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 11
  %11 = tail call i32 @wait_for_completion_timeout(ptr noundef %10, i32 noundef 5) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %68

13:                                               ; preds = %9
  %14 = tail call i32 @___ratelimit(ptr noundef nonnull @mdp5_crtc_wait_for_pp_done._rs, ptr noundef nonnull @__func__.mdp5_crtc_wait_for_pp_done) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %68, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %4, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.2, i32 noundef %22) #10
  br label %68

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %68, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %68

30:                                               ; preds = %27
  %31 = tail call i32 @mdp5_ctl_get_commit_status(ptr noundef nonnull %25) #9
  %32 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #9, !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #9
  %37 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 23
  %38 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  br label %39

39:                                               ; preds = %55, %36
  %40 = phi i32 [ 5, %36 ], [ %56, %55 ]
  %41 = load ptr, ptr %37, align 4
  %42 = load i32, ptr %38, align 8
  %43 = getelementptr %struct.drm_vblank_crtc, ptr %41, i32 %42, i32 1
  %44 = call i32 @prepare_to_wait_event(ptr noundef %43, ptr noundef nonnull %2, i32 noundef 2) #9
  %45 = call i32 @mdp5_ctl_get_commit_status(ptr noundef nonnull %25) #9
  %46 = load i32, ptr %32, align 8
  %47 = and i32 %46, %45
  %48 = icmp eq i32 %47, 0
  %49 = xor i1 %48, true
  %50 = icmp ne i32 %40, 0
  %51 = select i1 %49, i1 true, i1 %50
  %52 = select i1 %51, i32 %40, i32 1
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %48, i1 true, i1 %53
  br i1 %54, label %57, label %55

55:                                               ; preds = %39
  %56 = call i32 @schedule_timeout(i32 noundef %52) #9
  br label %39

57:                                               ; preds = %39
  %58 = load ptr, ptr %37, align 4
  %59 = load i32, ptr %38, align 8
  %60 = getelementptr %struct.drm_vblank_crtc, ptr %58, i32 %59, i32 1
  call void @finish_wait(ptr noundef %60, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  %61 = icmp slt i32 %52, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 1
  %66 = load i32, ptr %65, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.3, i32 noundef %66) #10
  br label %67

67:                                               ; preds = %62, %57, %30
  store i32 0, ptr %32, align 8
  call void @drm_crtc_vblank_put(ptr noundef %0) #9
  br label %68

68:                                               ; preds = %67, %27, %23, %16, %13, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp5_crtc_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 936) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mdp5_crtc, ptr %6, i32 0, i32 1
  store i32 %3, ptr %9, align 8
  %10 = getelementptr inbounds %struct.mdp5_crtc, ptr %6, i32 0, i32 3
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.mdp5_crtc, ptr %6, i32 0, i32 13
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.mdp5_crtc, ptr %6, i32 0, i32 11
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.mdp5_crtc, ptr %6, i32 0, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #9
  %14 = getelementptr inbounds %struct.mdp5_crtc, ptr %6, i32 0, i32 8, i32 3
  store ptr @mdp5_crtc_vblank_irq, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mdp5_crtc, ptr %6, i32 0, i32 9, i32 3
  store ptr @mdp5_crtc_err_irq, ptr %15, align 8
  %16 = getelementptr inbounds %struct.mdp5_crtc, ptr %6, i32 0, i32 10, i32 3
  store ptr @mdp5_crtc_pp_done_irq, ptr %16, align 4
  %17 = icmp eq ptr %2, null
  %18 = getelementptr inbounds %struct.mdp5_crtc, ptr %6, i32 0, i32 12
  %19 = zext i1 %17 to i8
  store i8 %19, ptr %18, align 8
  %20 = select i1 %17, ptr @mdp5_crtc_funcs, ptr @mdp5_crtc_no_lm_cursor_funcs
  %21 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %20, ptr noundef null) #9
  %22 = getelementptr inbounds %struct.mdp5_crtc, ptr %6, i32 0, i32 7
  tail call void @drm_flip_work_init(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef nonnull @unref_cursor_worker) #9
  %23 = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 19
  store ptr @mdp5_crtc_helper_funcs, ptr %23, align 4
  br label %24

24:                                               ; preds = %8, %4
  %25 = phi ptr [ %6, %8 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_crtc_vblank_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -820
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @mdp_irq_unregister(ptr noundef %8, ptr noundef %0) #9
  %9 = getelementptr i8, ptr %0, i32 -48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #9, !srcloc !12
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %9) #9, !srcloc !13
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %0, i32 -176
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %16, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 28
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #9
  %23 = getelementptr i8, ptr %0, i32 -56
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %14
  store ptr null, ptr %23, align 4
  %27 = getelementptr i8, ptr %0, i32 -804
  %28 = load ptr, ptr %27, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef %28, ptr noundef nonnull %24) #9
  tail call void @drm_crtc_send_vblank_event(ptr noundef %3, ptr noundef nonnull %24) #9
  br label %29

29:                                               ; preds = %26, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #9
  %30 = icmp eq ptr %19, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %15, align 4
  %33 = getelementptr inbounds %struct.drm_crtc_state, ptr %32, i32 0, i32 1
  %34 = load i8, ptr %33, align 4, !range !9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = tail call i32 @mdp5_ctl_blend(ptr noundef nonnull %19, ptr noundef %17, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  br label %38

38:                                               ; preds = %36, %31, %29, %2
  %39 = and i32 %11, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %0, i32 -44
  %43 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 22
  %44 = load ptr, ptr %43, align 8
  tail call void @drm_flip_work_commit(ptr noundef %42, ptr noundef %44) #9
  br label %45

45:                                               ; preds = %41, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_crtc_err_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -824
  %4 = load ptr, ptr %3, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef %4, i32 noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_crtc_pp_done_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 20
  tail call void @complete_all(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unref_cursor_worker(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -776
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_kms, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void @msm_gem_unpin_iova(ptr noundef %1, ptr noundef %10) #9
  %11 = icmp eq ptr %1, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1) #9, !srcloc !12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #9, !srcloc !16
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %20, label %18, !prof !17

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #9
  br label %20

19:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %1) #9
  br label %20

20:                                               ; preds = %19, %18, %16, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_get_commit_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_commit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_blend(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_crtc_reset(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 316) #11
  %4 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %5) #9
  tail call void @kfree(ptr noundef nonnull %5) #9
  br label %8

8:                                                ; preds = %7, %1
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %0, ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_crtc_destroy(ptr noundef %0) #2 {
  tail call void @drm_crtc_cleanup(ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 7
  tail call void @drm_flip_work_cleanup(ptr noundef %2) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mdp5_crtc_duplicate_state(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #9
  br label %10

6:                                                ; preds = %1
  %7 = tail call ptr @kmemdup(ptr noundef nonnull %3, i32 noundef 316, i32 noundef 3264) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %0, ptr noundef nonnull %7) #9
  br label %10

10:                                               ; preds = %9, %6, %5
  %11 = phi ptr [ null, %5 ], [ %7, %9 ], [ null, %6 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_crtc_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_crtc_atomic_print_state(ptr noundef %0, ptr noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %1, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %3, null
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1074, i32 noundef 9, ptr noundef null) #9
  br label %44

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @mdp5_ctl_get_ctl_id(ptr noundef nonnull %14) #9
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %17) #9
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %20, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi ptr [ %24, %22 ], [ @.str.9, %18 ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %26) #9
  %27 = getelementptr inbounds %struct.mdp5_kms, ptr %9, i32 0, i32 10
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 2, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %33, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi ptr [ %37, %35 ], [ @.str.9, %31 ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %39) #9
  br label %40

40:                                               ; preds = %38, %25
  %41 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %1, i32 0, i32 6
  %42 = load i8, ptr %41, align 4, !range !9
  %43 = zext i8 %42 to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %43) #9
  br label %44

44:                                               ; preds = %40, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_crtc_get_vblank_counter(ptr noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 16
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi ptr [ %3, %1 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 48
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @mdp5_encoder_get_framecount(ptr noundef nonnull %13) #9
  br label %17

17:                                               ; preds = %15, %12, %4
  %18 = phi i32 [ %16, %15 ], [ 0, %12 ], [ 0, %4 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_crtc_enable_vblank(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_crtc_disable_vblank(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_vblank_helper_get_vblank_timestamp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_get_ctl_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_encoder_get_framecount(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_crtc_cursor_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_drm_private, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mdp5_kms, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @mdp_ctl_flush_mask_cursor(i32 noundef 0) #9
  %17 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 12
  %18 = load i8, ptr %17, align 8, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.12) #10
  br label %96

23:                                               ; preds = %5
  %24 = icmp ugt i32 %3, 64
  %25 = icmp ugt i32 %4, 64
  %26 = or i1 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef %4) #9
  br label %96

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %7, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %96, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %7, i32 0, i32 2, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %96

38:                                               ; preds = %34
  %39 = icmp eq i32 %2, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15) #9
  %41 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13, i32 2
  store i64 0, ptr %41, align 8
  %42 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %43 = tail call i32 @__pm_runtime_resume(ptr noundef %42, i32 noundef 4) #9
  br label %62

44:                                               ; preds = %38
  %45 = tail call ptr @drm_gem_object_lookup(ptr noundef %1, i32 noundef %2) #9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %96, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.msm_kms, ptr %13, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13, i32 2
  %51 = tail call i32 @msm_gem_get_and_pin_iova(ptr noundef nonnull %45, ptr noundef %49, ptr noundef %50) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %96

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13
  %55 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %56 = tail call i32 @__pm_runtime_resume(ptr noundef %55, i32 noundef 4) #9
  %57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #9
  %58 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13, i32 1
  %59 = load ptr, ptr %58, align 4
  store ptr %45, ptr %58, align 4
  %60 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13, i32 3
  store i32 %3, ptr %60, align 8
  %61 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13, i32 4
  store i32 %4, ptr %61, align 4
  tail call fastcc void @mdp5_crtc_restore_cursor(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %57) #9
  br label %62

62:                                               ; preds = %53, %40
  %63 = phi ptr [ %59, %53 ], [ null, %40 ]
  %64 = xor i1 %39, true
  %65 = tail call i32 @mdp5_ctl_set_cursor(ptr noundef nonnull %32, ptr noundef %8, i32 noundef 0, i1 noundef zeroext %64) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = select i1 %39, ptr @.str.18, ptr @.str.17
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %69, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16, ptr noundef nonnull %70, i32 noundef %65) #9
  br label %82

71:                                               ; preds = %62
  %72 = load ptr, ptr %6, align 4
  %73 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %72, i32 0, i32 2
  %76 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %72, i32 0, i32 7
  %77 = load i8, ptr %76, align 1, !range !9
  %78 = icmp eq i8 %77, 0
  store i8 0, ptr %76, align 1
  %79 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 3
  %80 = load ptr, ptr %79, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef %80, i32 noundef %16) #9
  %81 = tail call i32 @mdp5_ctl_commit(ptr noundef %74, ptr noundef %75, i32 noundef %16, i1 noundef zeroext %78) #9
  br label %82

82:                                               ; preds = %71, %67
  %83 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %84 = tail call i32 @__pm_runtime_idle(ptr noundef %83, i32 noundef 4) #9
  %85 = icmp eq ptr %63, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 7
  tail call void @drm_flip_work_queue(ptr noundef %87, ptr noundef nonnull %63) #9
  %88 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %88) #9, !srcloc !12
  %89 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %88, ptr %88, i32 1, ptr elementtype(i32) %88) #9, !srcloc !19
  %90 = load ptr, ptr %0, align 8
  %91 = getelementptr inbounds %struct.drm_device, ptr %90, i32 0, i32 5
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.msm_drm_private, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 8
  tail call void @mdp_irq_register(ptr noundef %94, ptr noundef %95) #9
  br label %96

96:                                               ; preds = %86, %82, %47, %44, %34, %30, %27, %20
  %97 = phi i32 [ -22, %27 ], [ -22, %20 ], [ -22, %30 ], [ -22, %34 ], [ -2, %44 ], [ -22, %47 ], [ %65, %86 ], [ %65, %82 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_crtc_cursor_move(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @mdp_ctl_flush_mask_cursor(i32 noundef 0) #9
  %12 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 12
  %13 = load i8, ptr %12, align 8, !range !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.22) #10
  br label %58

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %10, i32 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %58

23:                                               ; preds = %19
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr inbounds %struct.drm_crtc_state, ptr %24, i32 0, i32 1
  %26 = load i8, ptr %25, align 4, !range !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %58, label %28, !prof !8

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13
  %30 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13, i32 3
  %31 = load i32, ptr %30, align 8
  %32 = sub i32 0, %31
  %33 = tail call i32 @llvm.smax.i32(i32 %32, i32 %1)
  %34 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13, i32 5
  store i32 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 0, %36
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 %2)
  %39 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13, i32 6
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mdp5_kms, ptr %8, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  %43 = tail call i32 @__pm_runtime_resume(ptr noundef %42, i32 noundef 4) #9
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #9
  tail call fastcc void @mdp5_crtc_restore_cursor(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %44) #9
  %45 = load ptr, ptr %9, align 4
  %46 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %45, i32 0, i32 2
  %49 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %45, i32 0, i32 7
  %50 = load i8, ptr %49, align 1, !range !9
  %51 = icmp eq i8 %50, 0
  store i8 0, ptr %49, align 1
  %52 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef %53, i32 noundef %11) #9
  %54 = tail call i32 @mdp5_ctl_commit(ptr noundef %47, ptr noundef %48, i32 noundef %11, i1 noundef zeroext %51) #9
  %55 = load ptr, ptr %40, align 4
  %56 = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3
  %57 = tail call i32 @__pm_runtime_idle(ptr noundef %56, i32 noundef 4) #9
  br label %58

58:                                               ; preds = %28, %23, %19, %15
  %59 = phi i32 [ 0, %28 ], [ -22, %15 ], [ -22, %19 ], [ 0, %23 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_ctl_flush_mask_cursor(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_and_pin_iova(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mdp5_crtc_restore_cursor(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @drm_format_info(i32 noundef 875713089) #9
  %4 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_drm_private, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %12 = load volatile i32, ptr %11, align 4
  store volatile i32 %12, ptr %2, align 4
  %13 = lshr i32 %12, 16
  %14 = and i32 %12, 65535
  %15 = icmp eq i32 %14, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 879, 0\0A.popsection", ""() #9, !srcloc !20
  unreachable

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %5, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_format_info, ptr %3, i32 0, i32 3
  %31 = load i8, ptr %30, align 2
  %32 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 12, i32 6
  %33 = load i16, ptr %32, align 2
  %34 = icmp sgt i32 %23, -1
  br i1 %34, label %35, label %41

35:                                               ; preds = %17
  %36 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 12, i32 1
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = sub nsw i32 %38, %23
  %40 = tail call i32 @llvm.umin.i32(i32 %27, i32 %39) #9
  br label %43

41:                                               ; preds = %17
  %42 = add i32 %27, %23
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi i32 [ %42, %41 ], [ %40, %35 ]
  %45 = zext i16 %33 to i32
  %46 = add i32 %29, %25
  %47 = sub nsw i32 %45, %25
  %48 = tail call i32 @llvm.umin.i32(i32 %29, i32 %47) #9
  %49 = icmp slt i32 %25, 0
  %50 = select i1 %49, i32 %46, i32 %48
  %51 = icmp slt i32 %23, 0
  %52 = sub i32 0, %23
  %53 = tail call i32 @llvm.smax.i32(i32 %23, i32 0)
  %54 = select i1 %51, i32 %52, i32 0
  %55 = sub i32 0, %25
  %56 = tail call i32 @llvm.smax.i32(i32 %25, i32 0)
  %57 = select i1 %49, i32 %55, i32 0
  %58 = zext i8 %31 to i32
  %59 = mul i32 %27, %58
  %60 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef %61, i32 noundef %53, i32 noundef %56, i32 noundef %44, i32 noundef %50, i32 noundef %54, i32 noundef %57) #9
  switch i32 %21, label %80 [
    i32 0, label %62
    i32 1, label %65
    i32 2, label %68
    i32 3, label %71
    i32 4, label %74
    i32 5, label %77
  ]

62:                                               ; preds = %43
  %63 = load ptr, ptr @mdp5_cfg, align 4
  %64 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %63, i32 0, i32 8, i32 1
  br label %81

65:                                               ; preds = %43
  %66 = load ptr, ptr @mdp5_cfg, align 4
  %67 = getelementptr %struct.mdp5_cfg_hw, ptr %66, i32 0, i32 8, i32 1, i32 1
  br label %81

68:                                               ; preds = %43
  %69 = load ptr, ptr @mdp5_cfg, align 4
  %70 = getelementptr %struct.mdp5_cfg_hw, ptr %69, i32 0, i32 8, i32 1, i32 2
  br label %81

71:                                               ; preds = %43
  %72 = load ptr, ptr @mdp5_cfg, align 4
  %73 = getelementptr %struct.mdp5_cfg_hw, ptr %72, i32 0, i32 8, i32 1, i32 3
  br label %81

74:                                               ; preds = %43
  %75 = load ptr, ptr @mdp5_cfg, align 4
  %76 = getelementptr %struct.mdp5_cfg_hw, ptr %75, i32 0, i32 8, i32 1, i32 4
  br label %81

77:                                               ; preds = %43
  %78 = load ptr, ptr @mdp5_cfg, align 4
  %79 = getelementptr %struct.mdp5_cfg_hw, ptr %78, i32 0, i32 8, i32 1, i32 5
  br label %81

80:                                               ; preds = %43
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

81:                                               ; preds = %77, %74, %71, %68, %65, %62
  %82 = phi ptr [ %79, %77 ], [ %76, %74 ], [ %73, %71 ], [ %70, %68 ], [ %67, %65 ], [ %64, %62 ]
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, 220
  %85 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 26
  %86 = load i32, ptr %85, align 8
  %87 = icmp slt i32 %86, 1
  br i1 %87, label %88, label %89, !prof !8

88:                                               ; preds = %81
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %89

89:                                               ; preds = %88, %81
  %90 = getelementptr inbounds %struct.mdp5_kms, ptr %10, i32 0, i32 15
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %91, i32 %84
  tail call void @msm_writel(i32 noundef %59, ptr noundef %92) #9
  switch i32 %21, label %111 [
    i32 0, label %93
    i32 1, label %96
    i32 2, label %99
    i32 3, label %102
    i32 4, label %105
    i32 5, label %108
  ]

93:                                               ; preds = %89
  %94 = load ptr, ptr @mdp5_cfg, align 4
  %95 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %94, i32 0, i32 8, i32 1
  br label %112

96:                                               ; preds = %89
  %97 = load ptr, ptr @mdp5_cfg, align 4
  %98 = getelementptr %struct.mdp5_cfg_hw, ptr %97, i32 0, i32 8, i32 1, i32 1
  br label %112

99:                                               ; preds = %89
  %100 = load ptr, ptr @mdp5_cfg, align 4
  %101 = getelementptr %struct.mdp5_cfg_hw, ptr %100, i32 0, i32 8, i32 1, i32 2
  br label %112

102:                                              ; preds = %89
  %103 = load ptr, ptr @mdp5_cfg, align 4
  %104 = getelementptr %struct.mdp5_cfg_hw, ptr %103, i32 0, i32 8, i32 1, i32 3
  br label %112

105:                                              ; preds = %89
  %106 = load ptr, ptr @mdp5_cfg, align 4
  %107 = getelementptr %struct.mdp5_cfg_hw, ptr %106, i32 0, i32 8, i32 1, i32 4
  br label %112

108:                                              ; preds = %89
  %109 = load ptr, ptr @mdp5_cfg, align 4
  %110 = getelementptr %struct.mdp5_cfg_hw, ptr %109, i32 0, i32 8, i32 1, i32 5
  br label %112

111:                                              ; preds = %89
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

112:                                              ; preds = %108, %105, %102, %99, %96, %93
  %113 = phi ptr [ %110, %108 ], [ %107, %105 ], [ %104, %102 ], [ %101, %99 ], [ %98, %96 ], [ %95, %93 ]
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, 236
  %116 = load i32, ptr %85, align 8
  %117 = icmp slt i32 %116, 1
  br i1 %117, label %118, label %119, !prof !8

118:                                              ; preds = %112
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %119

119:                                              ; preds = %118, %112
  %120 = load ptr, ptr %90, align 4
  %121 = getelementptr i8, ptr %120, i32 %115
  tail call void @msm_writel(i32 noundef 0, ptr noundef %121) #9
  switch i32 %21, label %140 [
    i32 0, label %122
    i32 1, label %125
    i32 2, label %128
    i32 3, label %131
    i32 4, label %134
    i32 5, label %137
  ]

122:                                              ; preds = %119
  %123 = load ptr, ptr @mdp5_cfg, align 4
  %124 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %123, i32 0, i32 8, i32 1
  br label %141

125:                                              ; preds = %119
  %126 = load ptr, ptr @mdp5_cfg, align 4
  %127 = getelementptr %struct.mdp5_cfg_hw, ptr %126, i32 0, i32 8, i32 1, i32 1
  br label %141

128:                                              ; preds = %119
  %129 = load ptr, ptr @mdp5_cfg, align 4
  %130 = getelementptr %struct.mdp5_cfg_hw, ptr %129, i32 0, i32 8, i32 1, i32 2
  br label %141

131:                                              ; preds = %119
  %132 = load ptr, ptr @mdp5_cfg, align 4
  %133 = getelementptr %struct.mdp5_cfg_hw, ptr %132, i32 0, i32 8, i32 1, i32 3
  br label %141

134:                                              ; preds = %119
  %135 = load ptr, ptr @mdp5_cfg, align 4
  %136 = getelementptr %struct.mdp5_cfg_hw, ptr %135, i32 0, i32 8, i32 1, i32 4
  br label %141

137:                                              ; preds = %119
  %138 = load ptr, ptr @mdp5_cfg, align 4
  %139 = getelementptr %struct.mdp5_cfg_hw, ptr %138, i32 0, i32 8, i32 1, i32 5
  br label %141

140:                                              ; preds = %119
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

141:                                              ; preds = %137, %134, %131, %128, %125, %122
  %142 = phi ptr [ %139, %137 ], [ %136, %134 ], [ %133, %131 ], [ %130, %128 ], [ %127, %125 ], [ %124, %122 ]
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, 224
  %145 = shl i32 %29, 16
  %146 = and i32 %27, 65535
  %147 = or i32 %145, %146
  %148 = load i32, ptr %85, align 8
  %149 = icmp slt i32 %148, 1
  br i1 %149, label %150, label %151, !prof !8

150:                                              ; preds = %141
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %151

151:                                              ; preds = %150, %141
  %152 = load ptr, ptr %90, align 4
  %153 = getelementptr i8, ptr %152, i32 %144
  tail call void @msm_writel(i32 noundef %147, ptr noundef %153) #9
  switch i32 %21, label %172 [
    i32 0, label %154
    i32 1, label %157
    i32 2, label %160
    i32 3, label %163
    i32 4, label %166
    i32 5, label %169
  ]

154:                                              ; preds = %151
  %155 = load ptr, ptr @mdp5_cfg, align 4
  %156 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %155, i32 0, i32 8, i32 1
  br label %173

157:                                              ; preds = %151
  %158 = load ptr, ptr @mdp5_cfg, align 4
  %159 = getelementptr %struct.mdp5_cfg_hw, ptr %158, i32 0, i32 8, i32 1, i32 1
  br label %173

160:                                              ; preds = %151
  %161 = load ptr, ptr @mdp5_cfg, align 4
  %162 = getelementptr %struct.mdp5_cfg_hw, ptr %161, i32 0, i32 8, i32 1, i32 2
  br label %173

163:                                              ; preds = %151
  %164 = load ptr, ptr @mdp5_cfg, align 4
  %165 = getelementptr %struct.mdp5_cfg_hw, ptr %164, i32 0, i32 8, i32 1, i32 3
  br label %173

166:                                              ; preds = %151
  %167 = load ptr, ptr @mdp5_cfg, align 4
  %168 = getelementptr %struct.mdp5_cfg_hw, ptr %167, i32 0, i32 8, i32 1, i32 4
  br label %173

169:                                              ; preds = %151
  %170 = load ptr, ptr @mdp5_cfg, align 4
  %171 = getelementptr %struct.mdp5_cfg_hw, ptr %170, i32 0, i32 8, i32 1, i32 5
  br label %173

172:                                              ; preds = %151
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

173:                                              ; preds = %169, %166, %163, %160, %157, %154
  %174 = phi ptr [ %171, %169 ], [ %168, %166 ], [ %165, %163 ], [ %162, %160 ], [ %159, %157 ], [ %156, %154 ]
  %175 = load i32, ptr %174, align 4
  %176 = add i32 %175, 228
  %177 = shl i32 %50, 16
  %178 = and i32 %44, 65535
  %179 = or i32 %178, %177
  %180 = load i32, ptr %85, align 8
  %181 = icmp slt i32 %180, 1
  br i1 %181, label %182, label %183, !prof !8

182:                                              ; preds = %173
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %183

183:                                              ; preds = %182, %173
  %184 = load ptr, ptr %90, align 4
  %185 = getelementptr i8, ptr %184, i32 %176
  tail call void @msm_writel(i32 noundef %179, ptr noundef %185) #9
  switch i32 %21, label %204 [
    i32 0, label %186
    i32 1, label %189
    i32 2, label %192
    i32 3, label %195
    i32 4, label %198
    i32 5, label %201
  ]

186:                                              ; preds = %183
  %187 = load ptr, ptr @mdp5_cfg, align 4
  %188 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %187, i32 0, i32 8, i32 1
  br label %205

189:                                              ; preds = %183
  %190 = load ptr, ptr @mdp5_cfg, align 4
  %191 = getelementptr %struct.mdp5_cfg_hw, ptr %190, i32 0, i32 8, i32 1, i32 1
  br label %205

192:                                              ; preds = %183
  %193 = load ptr, ptr @mdp5_cfg, align 4
  %194 = getelementptr %struct.mdp5_cfg_hw, ptr %193, i32 0, i32 8, i32 1, i32 2
  br label %205

195:                                              ; preds = %183
  %196 = load ptr, ptr @mdp5_cfg, align 4
  %197 = getelementptr %struct.mdp5_cfg_hw, ptr %196, i32 0, i32 8, i32 1, i32 3
  br label %205

198:                                              ; preds = %183
  %199 = load ptr, ptr @mdp5_cfg, align 4
  %200 = getelementptr %struct.mdp5_cfg_hw, ptr %199, i32 0, i32 8, i32 1, i32 4
  br label %205

201:                                              ; preds = %183
  %202 = load ptr, ptr @mdp5_cfg, align 4
  %203 = getelementptr %struct.mdp5_cfg_hw, ptr %202, i32 0, i32 8, i32 1, i32 5
  br label %205

204:                                              ; preds = %183
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

205:                                              ; preds = %201, %198, %195, %192, %189, %186
  %206 = phi ptr [ %203, %201 ], [ %200, %198 ], [ %197, %195 ], [ %194, %192 ], [ %191, %189 ], [ %188, %186 ]
  %207 = load i32, ptr %206, align 4
  %208 = add i32 %207, 244
  %209 = shl i32 %56, 16
  %210 = and i32 %53, 65535
  %211 = or i32 %209, %210
  %212 = load i32, ptr %85, align 8
  %213 = icmp slt i32 %212, 1
  br i1 %213, label %214, label %215, !prof !8

214:                                              ; preds = %205
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %215

215:                                              ; preds = %214, %205
  %216 = load ptr, ptr %90, align 4
  %217 = getelementptr i8, ptr %216, i32 %208
  tail call void @msm_writel(i32 noundef %211, ptr noundef %217) #9
  switch i32 %21, label %236 [
    i32 0, label %218
    i32 1, label %221
    i32 2, label %224
    i32 3, label %227
    i32 4, label %230
    i32 5, label %233
  ]

218:                                              ; preds = %215
  %219 = load ptr, ptr @mdp5_cfg, align 4
  %220 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %219, i32 0, i32 8, i32 1
  br label %237

221:                                              ; preds = %215
  %222 = load ptr, ptr @mdp5_cfg, align 4
  %223 = getelementptr %struct.mdp5_cfg_hw, ptr %222, i32 0, i32 8, i32 1, i32 1
  br label %237

224:                                              ; preds = %215
  %225 = load ptr, ptr @mdp5_cfg, align 4
  %226 = getelementptr %struct.mdp5_cfg_hw, ptr %225, i32 0, i32 8, i32 1, i32 2
  br label %237

227:                                              ; preds = %215
  %228 = load ptr, ptr @mdp5_cfg, align 4
  %229 = getelementptr %struct.mdp5_cfg_hw, ptr %228, i32 0, i32 8, i32 1, i32 3
  br label %237

230:                                              ; preds = %215
  %231 = load ptr, ptr @mdp5_cfg, align 4
  %232 = getelementptr %struct.mdp5_cfg_hw, ptr %231, i32 0, i32 8, i32 1, i32 4
  br label %237

233:                                              ; preds = %215
  %234 = load ptr, ptr @mdp5_cfg, align 4
  %235 = getelementptr %struct.mdp5_cfg_hw, ptr %234, i32 0, i32 8, i32 1, i32 5
  br label %237

236:                                              ; preds = %215
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

237:                                              ; preds = %233, %230, %227, %224, %221, %218
  %238 = phi ptr [ %235, %233 ], [ %232, %230 ], [ %229, %227 ], [ %226, %224 ], [ %223, %221 ], [ %220, %218 ]
  %239 = load i32, ptr %238, align 4
  %240 = add i32 %239, 232
  %241 = shl i32 %57, 16
  %242 = and i32 %54, 65535
  %243 = or i32 %241, %242
  %244 = load i32, ptr %85, align 8
  %245 = icmp slt i32 %244, 1
  br i1 %245, label %246, label %247, !prof !8

246:                                              ; preds = %237
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %247

247:                                              ; preds = %246, %237
  %248 = load ptr, ptr %90, align 4
  %249 = getelementptr i8, ptr %248, i32 %240
  tail call void @msm_writel(i32 noundef %243, ptr noundef %249) #9
  switch i32 %21, label %268 [
    i32 0, label %250
    i32 1, label %253
    i32 2, label %256
    i32 3, label %259
    i32 4, label %262
    i32 5, label %265
  ]

250:                                              ; preds = %247
  %251 = load ptr, ptr @mdp5_cfg, align 4
  %252 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %251, i32 0, i32 8, i32 1
  br label %269

253:                                              ; preds = %247
  %254 = load ptr, ptr @mdp5_cfg, align 4
  %255 = getelementptr %struct.mdp5_cfg_hw, ptr %254, i32 0, i32 8, i32 1, i32 1
  br label %269

256:                                              ; preds = %247
  %257 = load ptr, ptr @mdp5_cfg, align 4
  %258 = getelementptr %struct.mdp5_cfg_hw, ptr %257, i32 0, i32 8, i32 1, i32 2
  br label %269

259:                                              ; preds = %247
  %260 = load ptr, ptr @mdp5_cfg, align 4
  %261 = getelementptr %struct.mdp5_cfg_hw, ptr %260, i32 0, i32 8, i32 1, i32 3
  br label %269

262:                                              ; preds = %247
  %263 = load ptr, ptr @mdp5_cfg, align 4
  %264 = getelementptr %struct.mdp5_cfg_hw, ptr %263, i32 0, i32 8, i32 1, i32 4
  br label %269

265:                                              ; preds = %247
  %266 = load ptr, ptr @mdp5_cfg, align 4
  %267 = getelementptr %struct.mdp5_cfg_hw, ptr %266, i32 0, i32 8, i32 1, i32 5
  br label %269

268:                                              ; preds = %247
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

269:                                              ; preds = %265, %262, %259, %256, %253, %250
  %270 = phi ptr [ %267, %265 ], [ %264, %262 ], [ %261, %259 ], [ %258, %256 ], [ %255, %253 ], [ %252, %250 ]
  %271 = load i32, ptr %270, align 4
  %272 = add i32 %271, 240
  %273 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13, i32 2
  %274 = load i64, ptr %273, align 8
  %275 = trunc i64 %274 to i32
  %276 = load i32, ptr %85, align 8
  %277 = icmp slt i32 %276, 1
  br i1 %277, label %278, label %279, !prof !8

278:                                              ; preds = %269
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %279

279:                                              ; preds = %278, %269
  %280 = load ptr, ptr %90, align 4
  %281 = getelementptr i8, ptr %280, i32 %272
  tail call void @msm_writel(i32 noundef %275, ptr noundef %281) #9
  switch i32 %21, label %300 [
    i32 0, label %282
    i32 1, label %285
    i32 2, label %288
    i32 3, label %291
    i32 4, label %294
    i32 5, label %297
  ]

282:                                              ; preds = %279
  %283 = load ptr, ptr @mdp5_cfg, align 4
  %284 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %283, i32 0, i32 8, i32 1
  br label %301

285:                                              ; preds = %279
  %286 = load ptr, ptr @mdp5_cfg, align 4
  %287 = getelementptr %struct.mdp5_cfg_hw, ptr %286, i32 0, i32 8, i32 1, i32 1
  br label %301

288:                                              ; preds = %279
  %289 = load ptr, ptr @mdp5_cfg, align 4
  %290 = getelementptr %struct.mdp5_cfg_hw, ptr %289, i32 0, i32 8, i32 1, i32 2
  br label %301

291:                                              ; preds = %279
  %292 = load ptr, ptr @mdp5_cfg, align 4
  %293 = getelementptr %struct.mdp5_cfg_hw, ptr %292, i32 0, i32 8, i32 1, i32 3
  br label %301

294:                                              ; preds = %279
  %295 = load ptr, ptr @mdp5_cfg, align 4
  %296 = getelementptr %struct.mdp5_cfg_hw, ptr %295, i32 0, i32 8, i32 1, i32 4
  br label %301

297:                                              ; preds = %279
  %298 = load ptr, ptr @mdp5_cfg, align 4
  %299 = getelementptr %struct.mdp5_cfg_hw, ptr %298, i32 0, i32 8, i32 1, i32 5
  br label %301

300:                                              ; preds = %279
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

301:                                              ; preds = %297, %294, %291, %288, %285, %282
  %302 = phi ptr [ %299, %297 ], [ %296, %294 ], [ %293, %291 ], [ %290, %288 ], [ %287, %285 ], [ %284, %282 ]
  %303 = load i32, ptr %302, align 4
  %304 = load i32, ptr %85, align 8
  %305 = icmp slt i32 %304, 1
  br i1 %305, label %306, label %307, !prof !8

306:                                              ; preds = %301
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %307

307:                                              ; preds = %306, %301
  %308 = add i32 %303, 248
  %309 = load ptr, ptr %90, align 4
  %310 = getelementptr i8, ptr %309, i32 %308
  tail call void @msm_writel(i32 noundef 5, ptr noundef %310) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_set_cursor(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_commit(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_crtc_mode_set_nofb(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %3, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %3, i32 0, i32 2, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %10, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq ptr %3, null
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 375, i32 noundef 9, ptr noundef null) #9
  br label %249

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7
  %19 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 31
  %22 = tail call i32 @drm_mode_vrefresh(ptr noundef %18) #9
  %23 = load i32, ptr %18, align 4
  %24 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 1
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 2
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 3
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 4
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 6
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 7
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 8
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 9
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 28
  %49 = load i8, ptr %48, align 2
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 11
  %52 = load i32, ptr %51, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, ptr noundef %20, ptr noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %26, i32 noundef %29, i32 noundef %32, i32 noundef %35, i32 noundef %38, i32 noundef %41, i32 noundef %44, i32 noundef %47, i32 noundef %50, i32 noundef %52) #9
  %53 = load i16, ptr %24, align 4
  %54 = zext i16 %53 to i32
  %55 = icmp eq ptr %12, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = lshr i32 %54, %57
  %59 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 3
  %60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %59) #9
  switch i32 %14, label %79 [
    i32 0, label %61
    i32 1, label %64
    i32 2, label %67
    i32 3, label %70
    i32 4, label %73
    i32 5, label %76
  ]

61:                                               ; preds = %17
  %62 = load ptr, ptr @mdp5_cfg, align 4
  %63 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %62, i32 0, i32 8, i32 1
  br label %80

64:                                               ; preds = %17
  %65 = load ptr, ptr @mdp5_cfg, align 4
  %66 = getelementptr %struct.mdp5_cfg_hw, ptr %65, i32 0, i32 8, i32 1, i32 1
  br label %80

67:                                               ; preds = %17
  %68 = load ptr, ptr @mdp5_cfg, align 4
  %69 = getelementptr %struct.mdp5_cfg_hw, ptr %68, i32 0, i32 8, i32 1, i32 2
  br label %80

70:                                               ; preds = %17
  %71 = load ptr, ptr @mdp5_cfg, align 4
  %72 = getelementptr %struct.mdp5_cfg_hw, ptr %71, i32 0, i32 8, i32 1, i32 3
  br label %80

73:                                               ; preds = %17
  %74 = load ptr, ptr @mdp5_cfg, align 4
  %75 = getelementptr %struct.mdp5_cfg_hw, ptr %74, i32 0, i32 8, i32 1, i32 4
  br label %80

76:                                               ; preds = %17
  %77 = load ptr, ptr @mdp5_cfg, align 4
  %78 = getelementptr %struct.mdp5_cfg_hw, ptr %77, i32 0, i32 8, i32 1, i32 5
  br label %80

79:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

80:                                               ; preds = %76, %73, %70, %67, %64, %61
  %81 = phi ptr [ %78, %76 ], [ %75, %73 ], [ %72, %70 ], [ %69, %67 ], [ %66, %64 ], [ %63, %61 ]
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, 4
  %84 = load i16, ptr %36, align 2
  %85 = zext i16 %84 to i32
  %86 = shl nuw i32 %85, 16
  %87 = or i32 %86, %58
  %88 = getelementptr inbounds %struct.mdp5_kms, ptr %8, i32 0, i32 26
  %89 = load i32, ptr %88, align 8
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %92, !prof !8

91:                                               ; preds = %80
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %92

92:                                               ; preds = %91, %80
  %93 = getelementptr inbounds %struct.mdp5_kms, ptr %8, i32 0, i32 15
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr i8, ptr %94, i32 %83
  tail call void @msm_writel(i32 noundef %87, ptr noundef %95) #9
  switch i32 %14, label %114 [
    i32 0, label %96
    i32 1, label %99
    i32 2, label %102
    i32 3, label %105
    i32 4, label %108
    i32 5, label %111
  ]

96:                                               ; preds = %92
  %97 = load ptr, ptr @mdp5_cfg, align 4
  %98 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %97, i32 0, i32 8, i32 1
  br label %115

99:                                               ; preds = %92
  %100 = load ptr, ptr @mdp5_cfg, align 4
  %101 = getelementptr %struct.mdp5_cfg_hw, ptr %100, i32 0, i32 8, i32 1, i32 1
  br label %115

102:                                              ; preds = %92
  %103 = load ptr, ptr @mdp5_cfg, align 4
  %104 = getelementptr %struct.mdp5_cfg_hw, ptr %103, i32 0, i32 8, i32 1, i32 2
  br label %115

105:                                              ; preds = %92
  %106 = load ptr, ptr @mdp5_cfg, align 4
  %107 = getelementptr %struct.mdp5_cfg_hw, ptr %106, i32 0, i32 8, i32 1, i32 3
  br label %115

108:                                              ; preds = %92
  %109 = load ptr, ptr @mdp5_cfg, align 4
  %110 = getelementptr %struct.mdp5_cfg_hw, ptr %109, i32 0, i32 8, i32 1, i32 4
  br label %115

111:                                              ; preds = %92
  %112 = load ptr, ptr @mdp5_cfg, align 4
  %113 = getelementptr %struct.mdp5_cfg_hw, ptr %112, i32 0, i32 8, i32 1, i32 5
  br label %115

114:                                              ; preds = %92
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

115:                                              ; preds = %111, %108, %105, %102, %99, %96
  %116 = phi ptr [ %113, %111 ], [ %110, %108 ], [ %107, %105 ], [ %104, %102 ], [ %101, %99 ], [ %98, %96 ]
  %117 = load i32, ptr %116, align 4
  %118 = load i32, ptr %88, align 8
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %120, label %121, !prof !8

120:                                              ; preds = %115
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 175, i32 noundef 9, ptr noundef null) #9
  br label %121

121:                                              ; preds = %120, %115
  %122 = load ptr, ptr %93, align 4
  %123 = getelementptr i8, ptr %122, i32 %117
  %124 = tail call i32 @msm_readl(ptr noundef %123) #9
  %125 = and i32 %124, 2147483647
  switch i32 %14, label %144 [
    i32 0, label %126
    i32 1, label %129
    i32 2, label %132
    i32 3, label %135
    i32 4, label %138
    i32 5, label %141
  ]

126:                                              ; preds = %121
  %127 = load ptr, ptr @mdp5_cfg, align 4
  %128 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 8, i32 1
  br label %145

129:                                              ; preds = %121
  %130 = load ptr, ptr @mdp5_cfg, align 4
  %131 = getelementptr %struct.mdp5_cfg_hw, ptr %130, i32 0, i32 8, i32 1, i32 1
  br label %145

132:                                              ; preds = %121
  %133 = load ptr, ptr @mdp5_cfg, align 4
  %134 = getelementptr %struct.mdp5_cfg_hw, ptr %133, i32 0, i32 8, i32 1, i32 2
  br label %145

135:                                              ; preds = %121
  %136 = load ptr, ptr @mdp5_cfg, align 4
  %137 = getelementptr %struct.mdp5_cfg_hw, ptr %136, i32 0, i32 8, i32 1, i32 3
  br label %145

138:                                              ; preds = %121
  %139 = load ptr, ptr @mdp5_cfg, align 4
  %140 = getelementptr %struct.mdp5_cfg_hw, ptr %139, i32 0, i32 8, i32 1, i32 4
  br label %145

141:                                              ; preds = %121
  %142 = load ptr, ptr @mdp5_cfg, align 4
  %143 = getelementptr %struct.mdp5_cfg_hw, ptr %142, i32 0, i32 8, i32 1, i32 5
  br label %145

144:                                              ; preds = %121
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

145:                                              ; preds = %141, %138, %135, %132, %129, %126
  %146 = phi ptr [ %143, %141 ], [ %140, %138 ], [ %137, %135 ], [ %134, %132 ], [ %131, %129 ], [ %128, %126 ]
  %147 = load i32, ptr %146, align 4
  %148 = load i32, ptr %88, align 8
  %149 = icmp slt i32 %148, 1
  br i1 %149, label %150, label %151, !prof !8

150:                                              ; preds = %145
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %151

151:                                              ; preds = %150, %145
  %152 = load ptr, ptr %93, align 4
  %153 = getelementptr i8, ptr %152, i32 %147
  tail call void @msm_writel(i32 noundef %125, ptr noundef %153) #9
  br i1 %55, label %248, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %12, i32 0, i32 2
  %156 = load i32, ptr %155, align 4
  switch i32 %156, label %175 [
    i32 0, label %157
    i32 1, label %160
    i32 2, label %163
    i32 3, label %166
    i32 4, label %169
    i32 5, label %172
  ]

157:                                              ; preds = %154
  %158 = load ptr, ptr @mdp5_cfg, align 4
  %159 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %158, i32 0, i32 8, i32 1
  br label %176

160:                                              ; preds = %154
  %161 = load ptr, ptr @mdp5_cfg, align 4
  %162 = getelementptr %struct.mdp5_cfg_hw, ptr %161, i32 0, i32 8, i32 1, i32 1
  br label %176

163:                                              ; preds = %154
  %164 = load ptr, ptr @mdp5_cfg, align 4
  %165 = getelementptr %struct.mdp5_cfg_hw, ptr %164, i32 0, i32 8, i32 1, i32 2
  br label %176

166:                                              ; preds = %154
  %167 = load ptr, ptr @mdp5_cfg, align 4
  %168 = getelementptr %struct.mdp5_cfg_hw, ptr %167, i32 0, i32 8, i32 1, i32 3
  br label %176

169:                                              ; preds = %154
  %170 = load ptr, ptr @mdp5_cfg, align 4
  %171 = getelementptr %struct.mdp5_cfg_hw, ptr %170, i32 0, i32 8, i32 1, i32 4
  br label %176

172:                                              ; preds = %154
  %173 = load ptr, ptr @mdp5_cfg, align 4
  %174 = getelementptr %struct.mdp5_cfg_hw, ptr %173, i32 0, i32 8, i32 1, i32 5
  br label %176

175:                                              ; preds = %154
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

176:                                              ; preds = %172, %169, %166, %163, %160, %157
  %177 = phi ptr [ %174, %172 ], [ %171, %169 ], [ %168, %166 ], [ %165, %163 ], [ %162, %160 ], [ %159, %157 ]
  %178 = load i32, ptr %177, align 4
  %179 = add i32 %178, 4
  %180 = load i16, ptr %36, align 2
  %181 = zext i16 %180 to i32
  %182 = shl nuw i32 %181, 16
  %183 = or i32 %182, %58
  %184 = load i32, ptr %88, align 8
  %185 = icmp slt i32 %184, 1
  br i1 %185, label %186, label %187, !prof !8

186:                                              ; preds = %176
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %187

187:                                              ; preds = %186, %176
  %188 = load ptr, ptr %93, align 4
  %189 = getelementptr i8, ptr %188, i32 %179
  tail call void @msm_writel(i32 noundef %183, ptr noundef %189) #9
  switch i32 %156, label %208 [
    i32 0, label %190
    i32 1, label %193
    i32 2, label %196
    i32 3, label %199
    i32 4, label %202
    i32 5, label %205
  ]

190:                                              ; preds = %187
  %191 = load ptr, ptr @mdp5_cfg, align 4
  %192 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %191, i32 0, i32 8, i32 1
  br label %209

193:                                              ; preds = %187
  %194 = load ptr, ptr @mdp5_cfg, align 4
  %195 = getelementptr %struct.mdp5_cfg_hw, ptr %194, i32 0, i32 8, i32 1, i32 1
  br label %209

196:                                              ; preds = %187
  %197 = load ptr, ptr @mdp5_cfg, align 4
  %198 = getelementptr %struct.mdp5_cfg_hw, ptr %197, i32 0, i32 8, i32 1, i32 2
  br label %209

199:                                              ; preds = %187
  %200 = load ptr, ptr @mdp5_cfg, align 4
  %201 = getelementptr %struct.mdp5_cfg_hw, ptr %200, i32 0, i32 8, i32 1, i32 3
  br label %209

202:                                              ; preds = %187
  %203 = load ptr, ptr @mdp5_cfg, align 4
  %204 = getelementptr %struct.mdp5_cfg_hw, ptr %203, i32 0, i32 8, i32 1, i32 4
  br label %209

205:                                              ; preds = %187
  %206 = load ptr, ptr @mdp5_cfg, align 4
  %207 = getelementptr %struct.mdp5_cfg_hw, ptr %206, i32 0, i32 8, i32 1, i32 5
  br label %209

208:                                              ; preds = %187
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

209:                                              ; preds = %205, %202, %199, %196, %193, %190
  %210 = phi ptr [ %207, %205 ], [ %204, %202 ], [ %201, %199 ], [ %198, %196 ], [ %195, %193 ], [ %192, %190 ]
  %211 = load i32, ptr %210, align 4
  %212 = load i32, ptr %88, align 8
  %213 = icmp slt i32 %212, 1
  br i1 %213, label %214, label %215, !prof !8

214:                                              ; preds = %209
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 175, i32 noundef 9, ptr noundef null) #9
  br label %215

215:                                              ; preds = %214, %209
  %216 = load ptr, ptr %93, align 4
  %217 = getelementptr i8, ptr %216, i32 %211
  %218 = tail call i32 @msm_readl(ptr noundef %217) #9
  %219 = or i32 %218, -2147483648
  switch i32 %156, label %238 [
    i32 0, label %220
    i32 1, label %223
    i32 2, label %226
    i32 3, label %229
    i32 4, label %232
    i32 5, label %235
  ]

220:                                              ; preds = %215
  %221 = load ptr, ptr @mdp5_cfg, align 4
  %222 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %221, i32 0, i32 8, i32 1
  br label %239

223:                                              ; preds = %215
  %224 = load ptr, ptr @mdp5_cfg, align 4
  %225 = getelementptr %struct.mdp5_cfg_hw, ptr %224, i32 0, i32 8, i32 1, i32 1
  br label %239

226:                                              ; preds = %215
  %227 = load ptr, ptr @mdp5_cfg, align 4
  %228 = getelementptr %struct.mdp5_cfg_hw, ptr %227, i32 0, i32 8, i32 1, i32 2
  br label %239

229:                                              ; preds = %215
  %230 = load ptr, ptr @mdp5_cfg, align 4
  %231 = getelementptr %struct.mdp5_cfg_hw, ptr %230, i32 0, i32 8, i32 1, i32 3
  br label %239

232:                                              ; preds = %215
  %233 = load ptr, ptr @mdp5_cfg, align 4
  %234 = getelementptr %struct.mdp5_cfg_hw, ptr %233, i32 0, i32 8, i32 1, i32 4
  br label %239

235:                                              ; preds = %215
  %236 = load ptr, ptr @mdp5_cfg, align 4
  %237 = getelementptr %struct.mdp5_cfg_hw, ptr %236, i32 0, i32 8, i32 1, i32 5
  br label %239

238:                                              ; preds = %215
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

239:                                              ; preds = %235, %232, %229, %226, %223, %220
  %240 = phi ptr [ %237, %235 ], [ %234, %232 ], [ %231, %229 ], [ %228, %226 ], [ %225, %223 ], [ %222, %220 ]
  %241 = load i32, ptr %240, align 4
  %242 = load i32, ptr %88, align 8
  %243 = icmp slt i32 %242, 1
  br i1 %243, label %244, label %245, !prof !8

244:                                              ; preds = %239
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %245

245:                                              ; preds = %244, %239
  %246 = load ptr, ptr %93, align 4
  %247 = getelementptr i8, ptr %246, i32 %241
  tail call void @msm_writel(i32 noundef %219, ptr noundef %247) #9
  br label %248

248:                                              ; preds = %245, %151
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %59, i32 noundef %60) #9
  br label %249

249:                                              ; preds = %248, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_crtc_atomic_check(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [9 x %struct.plane_state], align 4
  %4 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr %struct.__drm_crtcs_state, ptr %5, i32 %7, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msm_drm_private, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !10
  %15 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_atomic_state, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 18
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %237, label %24

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 4
  br label %26

26:                                               ; preds = %66, %24
  %27 = phi ptr [ %18, %24 ], [ %67, %66 ]
  %28 = phi ptr [ %22, %24 ], [ %71, %66 ]
  %29 = phi i32 [ 0, %24 ], [ %70, %66 ]
  %30 = phi i1 [ false, %24 ], [ %69, %66 ]
  %31 = phi i1 [ false, %24 ], [ %68, %66 ]
  %32 = getelementptr i8, ptr %28, i32 -4
  %33 = load i32, ptr %25, align 4
  %34 = getelementptr i8, ptr %28, i32 408
  %35 = load i32, ptr %34, align 4
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %33
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.drm_atomic_state, ptr %27, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr %struct.__drm_planes_state, ptr %41, i32 %35, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  %45 = getelementptr i8, ptr %28, i32 416
  %46 = select i1 %44, ptr %45, ptr %42
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.drm_plane_state, ptr %47, i32 0, i32 22
  %51 = load i8, ptr %50, align 4, !range !9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %49
  %54 = getelementptr [9 x %struct.plane_state], ptr %3, i32 0, i32 %29
  store ptr %32, ptr %54, align 4
  %55 = getelementptr [9 x %struct.plane_state], ptr %3, i32 0, i32 %29, i32 1
  store ptr %47, ptr %55, align 4
  %56 = getelementptr inbounds %struct.mdp5_plane_state, ptr %47, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp ne ptr %57, null
  %59 = select i1 %58, i1 true, i1 %30
  %60 = add i32 %29, 1
  %61 = getelementptr i8, ptr %28, i32 404
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %62, 2
  %64 = select i1 %63, i1 true, i1 %31
  %65 = load ptr, ptr %17, align 4
  br label %66

66:                                               ; preds = %53, %49, %39, %26
  %67 = phi ptr [ %27, %49 ], [ %27, %39 ], [ %27, %26 ], [ %65, %53 ]
  %68 = phi i1 [ %31, %49 ], [ %31, %39 ], [ %31, %26 ], [ %64, %53 ]
  %69 = phi i1 [ %30, %49 ], [ %30, %39 ], [ %30, %26 ], [ %59, %53 ]
  %70 = phi i32 [ %29, %49 ], [ %29, %39 ], [ %29, %26 ], [ %60, %53 ]
  %71 = load ptr, ptr %28, align 4
  %72 = getelementptr inbounds %struct.drm_atomic_state, ptr %67, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.drm_device, ptr %73, i32 0, i32 30, i32 18
  %75 = icmp eq ptr %71, %74
  br i1 %75, label %76, label %26

76:                                               ; preds = %66
  %77 = icmp eq i32 %70, 0
  br i1 %77, label %237, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.mdp5_kms, ptr %14, i32 0, i32 9
  %80 = load ptr, ptr %79, align 4
  %81 = tail call ptr @mdp5_cfg_get_hw_config(ptr noundef %80) #9
  %82 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 1
  %83 = load i16, ptr %82, align 4
  %84 = zext i16 %83 to i32
  %85 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %81, i32 0, i32 8, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = icmp ult i32 %86, %84
  %88 = select i1 %87, i1 true, i1 %69
  %89 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %9, i32 0, i32 2
  %90 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %9, i32 0, i32 2, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  %93 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %9, i32 0, i32 2, i32 2
  %94 = load ptr, ptr %93, align 4
  br i1 %88, label %95, label %98

95:                                               ; preds = %78
  %96 = icmp eq ptr %94, null
  %97 = select i1 %96, i1 true, i1 %92
  br i1 %97, label %101, label %113

98:                                               ; preds = %78
  %99 = icmp ne ptr %94, null
  %100 = select i1 %99, i1 true, i1 %92
  br i1 %100, label %101, label %113

101:                                              ; preds = %98, %95
  %102 = phi ptr [ null, %98 ], [ %93, %95 ]
  %103 = phi i32 [ 1, %98 ], [ 5, %95 ]
  %104 = load ptr, ptr %17, align 4
  %105 = tail call i32 @mdp5_mixer_assign(ptr noundef %104, ptr noundef %0, i32 noundef %103, ptr noundef %90, ptr noundef %102) #9
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %154

107:                                              ; preds = %101
  %108 = load ptr, ptr %17, align 4
  tail call void @mdp5_mixer_release(ptr noundef %108, ptr noundef %91) #9
  %109 = icmp eq ptr %94, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %17, align 4
  tail call void @mdp5_mixer_release(ptr noundef %111, ptr noundef nonnull %94) #9
  br i1 %88, label %113, label %112

112:                                              ; preds = %110
  store ptr null, ptr %93, align 4
  br label %113

113:                                              ; preds = %112, %110, %107, %98, %95
  %114 = load ptr, ptr %89, align 4
  %115 = getelementptr inbounds %struct.mdp5_interface, ptr %114, i32 0, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = icmp ult i32 %116, 4
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = getelementptr inbounds [4 x i32], ptr @switch.table.mdp5_crtc_atomic_check, i32 0, i32 %116
  %120 = load i32, ptr %119, align 4
  br label %121

121:                                              ; preds = %118, %113
  %122 = phi i32 [ %120, %118 ], [ 0, %113 ]
  %123 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %9, i32 0, i32 4
  store i32 %122, ptr %123, align 4
  %124 = load ptr, ptr %90, align 4
  %125 = getelementptr inbounds %struct.mdp5_interface, ptr %114, i32 0, i32 2
  %126 = load i32, ptr %125, align 4
  switch i32 %126, label %135 [
    i32 1, label %127
    i32 101, label %141
  ]

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.mdp5_interface, ptr %114, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %124, i32 0, i32 4
  %133 = load i32, ptr %132, align 4
  %134 = shl i32 4096, %133
  br label %141

135:                                              ; preds = %127, %121
  %136 = load i32, ptr %115, align 4
  %137 = icmp ult i32 %136, 4
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = getelementptr inbounds [4 x i32], ptr @switch.table.mdp5_crtc_atomic_check.34, i32 0, i32 %136
  %140 = load i32, ptr %139, align 4
  br label %141

141:                                              ; preds = %138, %135, %131, %121
  %142 = phi i32 [ %134, %131 ], [ 16, %121 ], [ %140, %138 ], [ 0, %135 ]
  %143 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %9, i32 0, i32 3
  store i32 %142, ptr %143, align 4
  %144 = load i32, ptr %125, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.mdp5_interface, ptr %114, i32 0, i32 3
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %124, i32 0, i32 4
  %152 = load i32, ptr %151, align 4
  %153 = shl i32 256, %152
  br label %157

154:                                              ; preds = %101
  %155 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %156 = load ptr, ptr %155, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %156, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.25, i32 noundef %105) #9
  br label %237

157:                                              ; preds = %150, %146, %141
  %158 = phi i32 [ %153, %150 ], [ 0, %146 ], [ 0, %141 ]
  %159 = phi i8 [ 1, %150 ], [ 0, %146 ], [ 0, %141 ]
  %160 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %9, i32 0, i32 5
  store i32 %158, ptr %160, align 4
  %161 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %9, i32 0, i32 6
  store i8 %159, ptr %161, align 4
  call void @sort(ptr noundef nonnull %3, i32 noundef %70, i32 noundef 8, ptr noundef nonnull @pstate_cmp, ptr noundef null) #9
  br i1 %68, label %162, label %170

162:                                              ; preds = %157
  %163 = add i32 %70, -1
  %164 = getelementptr [9 x %struct.plane_state], ptr %3, i32 0, i32 %163
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.drm_plane, ptr %165, i32 0, i32 16
  %167 = load i32, ptr %166, align 8
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %170, label %169, !prof !17

169:                                              ; preds = %162
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 751, i32 noundef 9, ptr noundef null) #9
  br label %170

170:                                              ; preds = %169, %162, %157
  %171 = getelementptr inbounds %struct.plane_state, ptr %3, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = load ptr, ptr %93, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %200

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.drm_plane_state, ptr %172, i32 0, i32 4
  %177 = load i32, ptr %176, align 4
  %178 = icmp slt i32 %177, 1
  br i1 %178, label %179, label %200

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.drm_plane_state, ptr %172, i32 0, i32 5
  %181 = load i32, ptr %180, align 4
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %183, label %200

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.drm_plane_state, ptr %172, i32 0, i32 6
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, %177
  %187 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 8, i32 1
  %188 = load i16, ptr %187, align 4
  %189 = zext i16 %188 to i32
  %190 = icmp ult i32 %186, %189
  br i1 %190, label %200, label %191

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.drm_plane_state, ptr %172, i32 0, i32 7
  %193 = load i32, ptr %192, align 4
  %194 = add i32 %193, %181
  %195 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 8, i32 6
  %196 = load i16, ptr %195, align 2
  %197 = zext i16 %196 to i32
  %198 = icmp ult i32 %194, %197
  %199 = select i1 %198, i32 2, i32 1
  br label %200

200:                                              ; preds = %191, %183, %179, %175, %170
  %201 = phi i32 [ 2, %170 ], [ 2, %183 ], [ 2, %179 ], [ 2, %175 ], [ %199, %191 ]
  %202 = add i32 %70, -1
  %203 = add i32 %202, %201
  %204 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %81, i32 0, i32 8, i32 3
  %205 = load i32, ptr %204, align 4
  %206 = icmp ult i32 %203, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %200
  %208 = icmp sgt i32 %70, 0
  br i1 %208, label %212, label %237

209:                                              ; preds = %200
  %210 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %211 = load ptr, ptr %210, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %211, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.26, i32 noundef %70, i32 noundef %201) #9
  br label %237

212:                                              ; preds = %220, %207
  %213 = phi i32 [ %235, %220 ], [ 0, %207 ]
  %214 = icmp eq i32 %213, %202
  %215 = select i1 %68, i1 %214, i1 false
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = load i32, ptr %204, align 4
  br label %220

218:                                              ; preds = %212
  %219 = add nuw i32 %213, %201
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i32 [ %213, %218 ], [ %202, %216 ]
  %222 = phi i32 [ %219, %218 ], [ %217, %216 ]
  %223 = getelementptr [9 x %struct.plane_state], ptr %3, i32 0, i32 %221, i32 1
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.mdp5_plane_state, ptr %224, i32 0, i32 3
  store i32 %222, ptr %225, align 4
  %226 = load ptr, ptr %15, align 8
  %227 = getelementptr [9 x %struct.plane_state], ptr %3, i32 0, i32 %213
  %228 = load ptr, ptr %227, align 4
  %229 = getelementptr inbounds %struct.drm_plane, ptr %228, i32 0, i32 2
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr [9 x %struct.plane_state], ptr %3, i32 0, i32 %213, i32 1
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.mdp5_plane_state, ptr %232, i32 0, i32 3
  %234 = load i32, ptr %233, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, ptr noundef %226, ptr noundef %230, i32 noundef %234) #9
  %235 = add nuw nsw i32 %213, 1
  %236 = icmp eq i32 %235, %70
  br i1 %236, label %237, label %212

237:                                              ; preds = %220, %209, %207, %154, %76, %2
  %238 = phi i32 [ %105, %154 ], [ -22, %209 ], [ 0, %76 ], [ 0, %207 ], [ 0, %2 ], [ 0, %220 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  ret i32 %238
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_crtc_atomic_begin(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.28, ptr noundef %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_crtc_atomic_flush(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca [9 x ptr], align 4
  %4 = alloca [9 x [2 x i32]], align 4
  %5 = alloca [9 x [2 x i32]], align 4
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 18
  %12 = load ptr, ptr %11, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, ptr noundef %10, ptr noundef %12) #9
  %13 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !17

16:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 793, i32 noundef 9, ptr noundef null) #9
  br label %17

17:                                               ; preds = %16, %2
  %18 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 28
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #9
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.drm_crtc_state, ptr %20, i32 0, i32 18
  %22 = load ptr, ptr %21, align 4
  store ptr %22, ptr %13, align 4
  store ptr null, ptr %21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #9
  %23 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %7, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %605, label %26, !prof !8

26:                                               ; preds = %17
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.msm_drm_private, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false) #9
  %34 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %27, i32 0, i32 2, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %27, i32 0, i32 2, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %39, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %26
  %45 = phi i32 [ %43, %41 ], [ 0, %26 ]
  %46 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %27, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #9
  %48 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 3
  %49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %48) #9
  %50 = icmp eq ptr %47, null
  br i1 %50, label %510, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr inbounds %struct.drm_device, ptr %52, i32 0, i32 30, i32 18
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %107, label %56

56:                                               ; preds = %97, %51
  %57 = phi ptr [ %98, %97 ], [ %52, %51 ]
  %58 = phi ptr [ %100, %97 ], [ %54, %51 ]
  %59 = phi i32 [ %99, %97 ], [ 0, %51 ]
  %60 = getelementptr i8, ptr %58, i32 -4
  %61 = load ptr, ptr %6, align 4
  %62 = getelementptr inbounds %struct.drm_crtc_state, ptr %61, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %58, i32 408
  %65 = load i32, ptr %64, align 4
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %63
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %97, label %69

69:                                               ; preds = %56
  %70 = getelementptr i8, ptr %58, i32 416
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.drm_plane_state, ptr %71, i32 0, i32 22
  %73 = load i8, ptr %72, align 4, !range !9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.mdp5_plane_state, ptr %71, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr [9 x ptr], ptr %3, i32 0, i32 %77
  store ptr %71, ptr %78, align 4
  %79 = tail call i32 @mdp5_plane_pipe(ptr noundef %60) #9
  %80 = load i32, ptr %76, align 4
  %81 = getelementptr [9 x [2 x i32]], ptr %4, i32 0, i32 %80
  store i32 %79, ptr %81, align 4
  br i1 %40, label %86, label %82

82:                                               ; preds = %75
  %83 = tail call i32 @mdp5_plane_pipe(ptr noundef %60) #9
  %84 = load i32, ptr %76, align 4
  %85 = getelementptr [9 x [2 x i32]], ptr %5, i32 0, i32 %84
  store i32 %83, ptr %85, align 4
  br label %86

86:                                               ; preds = %82, %75
  %87 = tail call i32 @mdp5_plane_right_pipe(ptr noundef %60) #9
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load i32, ptr %76, align 4
  %91 = getelementptr [9 x [2 x i32]], ptr %4, i32 0, i32 %90, i32 1
  store i32 %87, ptr %91, align 4
  %92 = load i32, ptr %76, align 4
  %93 = getelementptr [9 x [2 x i32]], ptr %5, i32 0, i32 %92, i32 1
  store i32 %87, ptr %93, align 4
  br label %94

94:                                               ; preds = %89, %86
  %95 = add i32 %59, 1
  %96 = load ptr, ptr %0, align 8
  br label %97

97:                                               ; preds = %94, %69, %56
  %98 = phi ptr [ %57, %56 ], [ %96, %94 ], [ %57, %69 ]
  %99 = phi i32 [ %59, %56 ], [ %95, %94 ], [ %59, %69 ]
  %100 = load ptr, ptr %58, align 4
  %101 = getelementptr inbounds %struct.drm_device, ptr %98, i32 0, i32 30, i32 18
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %103, label %56

103:                                              ; preds = %97
  %104 = getelementptr inbounds [9 x ptr], ptr %3, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %103, %51
  %108 = phi i32 [ %99, %103 ], [ 0, %51 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.30) #9
  br label %118

109:                                              ; preds = %103
  %110 = icmp eq i32 %99, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.drm_plane_state, ptr %105, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  %114 = tail call ptr @msm_framebuffer_format(ptr noundef %113) #9
  %115 = getelementptr inbounds %struct.mdp_format, ptr %114, i32 0, i32 6
  %116 = load i8, ptr %115, align 4, !range !9
  %117 = icmp ne i8 %116, 0
  br label %118

118:                                              ; preds = %111, %109, %107
  %119 = phi i32 [ 0, %109 ], [ %108, %107 ], [ %99, %111 ]
  %120 = phi i32 [ 0, %109 ], [ 1, %107 ], [ 0, %111 ]
  %121 = phi i1 [ false, %109 ], [ false, %107 ], [ %117, %111 ]
  %122 = xor i1 %121, true
  %123 = getelementptr inbounds %struct.mdp5_kms, ptr %33, i32 0, i32 26
  %124 = getelementptr inbounds %struct.mdp5_kms, ptr %33, i32 0, i32 15
  br label %125

125:                                              ; preds = %386, %118
  %126 = phi i32 [ 0, %118 ], [ %387, %386 ]
  %127 = phi i32 [ 2, %118 ], [ %388, %386 ]
  %128 = getelementptr [9 x ptr], ptr %3, i32 0, i32 %127
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %386, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.drm_plane_state, ptr %129, i32 0, i32 2
  %133 = load ptr, ptr %132, align 4
  %134 = tail call ptr @msm_framebuffer_format(ptr noundef %133) #9
  %135 = getelementptr inbounds %struct.drm_plane_state, ptr %129, i32 0, i32 12
  %136 = load i16, ptr %135, align 4
  %137 = lshr i16 %136, 8
  %138 = zext i16 %137 to i32
  %139 = xor i32 %138, 255
  %140 = getelementptr inbounds %struct.mdp_format, ptr %134, i32 0, i32 6
  %141 = load i8, ptr %140, align 4, !range !9
  %142 = icmp ne i8 %141, 0
  %143 = select i1 %142, i1 true, i1 %122
  br i1 %143, label %144, label %153

144:                                              ; preds = %131
  %145 = add nsw i32 %127, -2
  %146 = icmp ult i32 %145, 7
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_crtc_atomic_flush, i32 0, i32 %145
  %149 = load i32, ptr %148, align 4
  br label %150

150:                                              ; preds = %147, %144
  %151 = phi i32 [ %149, %147 ], [ 0, %144 ]
  %152 = or i32 %151, %126
  br label %153

153:                                              ; preds = %150, %131
  %154 = phi i32 [ %152, %150 ], [ 0, %131 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef %127, i32 noundef %138, i32 noundef %139) #9
  %155 = load i8, ptr %140, align 4, !range !9
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %168, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.drm_plane_state, ptr %129, i32 0, i32 13
  %159 = load i16, ptr %158, align 2
  switch i16 %159, label %168 [
    i16 0, label %160
    i16 1, label %164
  ]

160:                                              ; preds = %157
  %161 = icmp eq i16 %137, 255
  %162 = select i1 %161, i32 1536, i32 6656
  %163 = select i1 %161, i32 %139, i32 %138
  br label %168

164:                                              ; preds = %157
  %165 = icmp eq i16 %137, 255
  %166 = select i1 %165, i32 1538, i32 6682
  %167 = select i1 %165, i32 %139, i32 %138
  br label %168

168:                                              ; preds = %164, %160, %157, %153
  %169 = phi i32 [ 256, %153 ], [ %162, %160 ], [ %166, %164 ], [ 256, %157 ]
  %170 = phi i32 [ %139, %153 ], [ %163, %160 ], [ %167, %164 ], [ %139, %157 ]
  switch i32 %37, label %189 [
    i32 0, label %171
    i32 1, label %174
    i32 2, label %177
    i32 3, label %180
    i32 4, label %183
    i32 5, label %186
  ]

171:                                              ; preds = %168
  %172 = load ptr, ptr @mdp5_cfg, align 4
  %173 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %172, i32 0, i32 8, i32 1
  br label %190

174:                                              ; preds = %168
  %175 = load ptr, ptr @mdp5_cfg, align 4
  %176 = getelementptr %struct.mdp5_cfg_hw, ptr %175, i32 0, i32 8, i32 1, i32 1
  br label %190

177:                                              ; preds = %168
  %178 = load ptr, ptr @mdp5_cfg, align 4
  %179 = getelementptr %struct.mdp5_cfg_hw, ptr %178, i32 0, i32 8, i32 1, i32 2
  br label %190

180:                                              ; preds = %168
  %181 = load ptr, ptr @mdp5_cfg, align 4
  %182 = getelementptr %struct.mdp5_cfg_hw, ptr %181, i32 0, i32 8, i32 1, i32 3
  br label %190

183:                                              ; preds = %168
  %184 = load ptr, ptr @mdp5_cfg, align 4
  %185 = getelementptr %struct.mdp5_cfg_hw, ptr %184, i32 0, i32 8, i32 1, i32 4
  br label %190

186:                                              ; preds = %168
  %187 = load ptr, ptr @mdp5_cfg, align 4
  %188 = getelementptr %struct.mdp5_cfg_hw, ptr %187, i32 0, i32 8, i32 1, i32 5
  br label %190

189:                                              ; preds = %168
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

190:                                              ; preds = %186, %183, %180, %177, %174, %171
  %191 = phi ptr [ %188, %186 ], [ %185, %183 ], [ %182, %180 ], [ %179, %177 ], [ %176, %174 ], [ %173, %171 ]
  %192 = add nsw i32 %127, -2
  %193 = icmp ult i32 %192, 7
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1127, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

195:                                              ; preds = %190
  %196 = load i32, ptr %191, align 4
  %197 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_crtc_atomic_flush.40, i32 0, i32 %192
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, %196
  %200 = load i32, ptr %123, align 8
  %201 = icmp slt i32 %200, 1
  br i1 %201, label %202, label %203, !prof !8

202:                                              ; preds = %195
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %203

203:                                              ; preds = %202, %195
  %204 = load ptr, ptr %124, align 4
  %205 = getelementptr i8, ptr %204, i32 %199
  tail call void @msm_writel(i32 noundef %169, ptr noundef %205) #9
  switch i32 %37, label %224 [
    i32 0, label %206
    i32 1, label %209
    i32 2, label %212
    i32 3, label %215
    i32 4, label %218
    i32 5, label %221
  ]

206:                                              ; preds = %203
  %207 = load ptr, ptr @mdp5_cfg, align 4
  %208 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %207, i32 0, i32 8, i32 1
  br label %225

209:                                              ; preds = %203
  %210 = load ptr, ptr @mdp5_cfg, align 4
  %211 = getelementptr %struct.mdp5_cfg_hw, ptr %210, i32 0, i32 8, i32 1, i32 1
  br label %225

212:                                              ; preds = %203
  %213 = load ptr, ptr @mdp5_cfg, align 4
  %214 = getelementptr %struct.mdp5_cfg_hw, ptr %213, i32 0, i32 8, i32 1, i32 2
  br label %225

215:                                              ; preds = %203
  %216 = load ptr, ptr @mdp5_cfg, align 4
  %217 = getelementptr %struct.mdp5_cfg_hw, ptr %216, i32 0, i32 8, i32 1, i32 3
  br label %225

218:                                              ; preds = %203
  %219 = load ptr, ptr @mdp5_cfg, align 4
  %220 = getelementptr %struct.mdp5_cfg_hw, ptr %219, i32 0, i32 8, i32 1, i32 4
  br label %225

221:                                              ; preds = %203
  %222 = load ptr, ptr @mdp5_cfg, align 4
  %223 = getelementptr %struct.mdp5_cfg_hw, ptr %222, i32 0, i32 8, i32 1, i32 5
  br label %225

224:                                              ; preds = %203
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

225:                                              ; preds = %221, %218, %215, %212, %209, %206
  %226 = phi ptr [ %223, %221 ], [ %220, %218 ], [ %217, %215 ], [ %214, %212 ], [ %211, %209 ], [ %208, %206 ]
  %227 = add nsw i32 %127, -2
  %228 = icmp ult i32 %227, 7
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1127, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

230:                                              ; preds = %225
  %231 = load i32, ptr %226, align 4
  %232 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_crtc_atomic_flush.40, i32 0, i32 %227
  %233 = load i32, ptr %232, align 4
  %234 = add i32 %231, 4
  %235 = add i32 %234, %233
  %236 = load i32, ptr %123, align 8
  %237 = icmp slt i32 %236, 1
  br i1 %237, label %238, label %239, !prof !8

238:                                              ; preds = %230
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %239

239:                                              ; preds = %238, %230
  %240 = load ptr, ptr %124, align 4
  %241 = getelementptr i8, ptr %240, i32 %235
  tail call void @msm_writel(i32 noundef %138, ptr noundef %241) #9
  switch i32 %37, label %260 [
    i32 0, label %242
    i32 1, label %245
    i32 2, label %248
    i32 3, label %251
    i32 4, label %254
    i32 5, label %257
  ]

242:                                              ; preds = %239
  %243 = load ptr, ptr @mdp5_cfg, align 4
  %244 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %243, i32 0, i32 8, i32 1
  br label %261

245:                                              ; preds = %239
  %246 = load ptr, ptr @mdp5_cfg, align 4
  %247 = getelementptr %struct.mdp5_cfg_hw, ptr %246, i32 0, i32 8, i32 1, i32 1
  br label %261

248:                                              ; preds = %239
  %249 = load ptr, ptr @mdp5_cfg, align 4
  %250 = getelementptr %struct.mdp5_cfg_hw, ptr %249, i32 0, i32 8, i32 1, i32 2
  br label %261

251:                                              ; preds = %239
  %252 = load ptr, ptr @mdp5_cfg, align 4
  %253 = getelementptr %struct.mdp5_cfg_hw, ptr %252, i32 0, i32 8, i32 1, i32 3
  br label %261

254:                                              ; preds = %239
  %255 = load ptr, ptr @mdp5_cfg, align 4
  %256 = getelementptr %struct.mdp5_cfg_hw, ptr %255, i32 0, i32 8, i32 1, i32 4
  br label %261

257:                                              ; preds = %239
  %258 = load ptr, ptr @mdp5_cfg, align 4
  %259 = getelementptr %struct.mdp5_cfg_hw, ptr %258, i32 0, i32 8, i32 1, i32 5
  br label %261

260:                                              ; preds = %239
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

261:                                              ; preds = %257, %254, %251, %248, %245, %242
  %262 = phi ptr [ %259, %257 ], [ %256, %254 ], [ %253, %251 ], [ %250, %248 ], [ %247, %245 ], [ %244, %242 ]
  %263 = add nsw i32 %127, -2
  %264 = icmp ult i32 %263, 7
  br i1 %264, label %266, label %265

265:                                              ; preds = %261
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1127, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

266:                                              ; preds = %261
  %267 = load i32, ptr %262, align 4
  %268 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_crtc_atomic_flush.40, i32 0, i32 %263
  %269 = load i32, ptr %268, align 4
  %270 = add i32 %267, 8
  %271 = add i32 %270, %269
  %272 = load i32, ptr %123, align 8
  %273 = icmp slt i32 %272, 1
  br i1 %273, label %274, label %275, !prof !8

274:                                              ; preds = %266
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %275

275:                                              ; preds = %274, %266
  %276 = load ptr, ptr %124, align 4
  %277 = getelementptr i8, ptr %276, i32 %271
  tail call void @msm_writel(i32 noundef %170, ptr noundef %277) #9
  br i1 %40, label %386, label %278

278:                                              ; preds = %275
  switch i32 %45, label %297 [
    i32 0, label %279
    i32 1, label %282
    i32 2, label %285
    i32 3, label %288
    i32 4, label %291
    i32 5, label %294
  ]

279:                                              ; preds = %278
  %280 = load ptr, ptr @mdp5_cfg, align 4
  %281 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %280, i32 0, i32 8, i32 1
  br label %298

282:                                              ; preds = %278
  %283 = load ptr, ptr @mdp5_cfg, align 4
  %284 = getelementptr %struct.mdp5_cfg_hw, ptr %283, i32 0, i32 8, i32 1, i32 1
  br label %298

285:                                              ; preds = %278
  %286 = load ptr, ptr @mdp5_cfg, align 4
  %287 = getelementptr %struct.mdp5_cfg_hw, ptr %286, i32 0, i32 8, i32 1, i32 2
  br label %298

288:                                              ; preds = %278
  %289 = load ptr, ptr @mdp5_cfg, align 4
  %290 = getelementptr %struct.mdp5_cfg_hw, ptr %289, i32 0, i32 8, i32 1, i32 3
  br label %298

291:                                              ; preds = %278
  %292 = load ptr, ptr @mdp5_cfg, align 4
  %293 = getelementptr %struct.mdp5_cfg_hw, ptr %292, i32 0, i32 8, i32 1, i32 4
  br label %298

294:                                              ; preds = %278
  %295 = load ptr, ptr @mdp5_cfg, align 4
  %296 = getelementptr %struct.mdp5_cfg_hw, ptr %295, i32 0, i32 8, i32 1, i32 5
  br label %298

297:                                              ; preds = %278
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

298:                                              ; preds = %294, %291, %288, %285, %282, %279
  %299 = phi ptr [ %296, %294 ], [ %293, %291 ], [ %290, %288 ], [ %287, %285 ], [ %284, %282 ], [ %281, %279 ]
  %300 = add nsw i32 %127, -2
  %301 = icmp ult i32 %300, 7
  br i1 %301, label %303, label %302

302:                                              ; preds = %298
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1127, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

303:                                              ; preds = %298
  %304 = load i32, ptr %299, align 4
  %305 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_crtc_atomic_flush.40, i32 0, i32 %300
  %306 = load i32, ptr %305, align 4
  %307 = add i32 %306, %304
  %308 = load i32, ptr %123, align 8
  %309 = icmp slt i32 %308, 1
  br i1 %309, label %310, label %311, !prof !8

310:                                              ; preds = %303
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %311

311:                                              ; preds = %310, %303
  %312 = load ptr, ptr %124, align 4
  %313 = getelementptr i8, ptr %312, i32 %307
  tail call void @msm_writel(i32 noundef %169, ptr noundef %313) #9
  switch i32 %45, label %332 [
    i32 0, label %314
    i32 1, label %317
    i32 2, label %320
    i32 3, label %323
    i32 4, label %326
    i32 5, label %329
  ]

314:                                              ; preds = %311
  %315 = load ptr, ptr @mdp5_cfg, align 4
  %316 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %315, i32 0, i32 8, i32 1
  br label %333

317:                                              ; preds = %311
  %318 = load ptr, ptr @mdp5_cfg, align 4
  %319 = getelementptr %struct.mdp5_cfg_hw, ptr %318, i32 0, i32 8, i32 1, i32 1
  br label %333

320:                                              ; preds = %311
  %321 = load ptr, ptr @mdp5_cfg, align 4
  %322 = getelementptr %struct.mdp5_cfg_hw, ptr %321, i32 0, i32 8, i32 1, i32 2
  br label %333

323:                                              ; preds = %311
  %324 = load ptr, ptr @mdp5_cfg, align 4
  %325 = getelementptr %struct.mdp5_cfg_hw, ptr %324, i32 0, i32 8, i32 1, i32 3
  br label %333

326:                                              ; preds = %311
  %327 = load ptr, ptr @mdp5_cfg, align 4
  %328 = getelementptr %struct.mdp5_cfg_hw, ptr %327, i32 0, i32 8, i32 1, i32 4
  br label %333

329:                                              ; preds = %311
  %330 = load ptr, ptr @mdp5_cfg, align 4
  %331 = getelementptr %struct.mdp5_cfg_hw, ptr %330, i32 0, i32 8, i32 1, i32 5
  br label %333

332:                                              ; preds = %311
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

333:                                              ; preds = %329, %326, %323, %320, %317, %314
  %334 = phi ptr [ %331, %329 ], [ %328, %326 ], [ %325, %323 ], [ %322, %320 ], [ %319, %317 ], [ %316, %314 ]
  %335 = add nsw i32 %127, -2
  %336 = icmp ult i32 %335, 7
  br i1 %336, label %338, label %337

337:                                              ; preds = %333
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1127, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

338:                                              ; preds = %333
  %339 = load i32, ptr %334, align 4
  %340 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_crtc_atomic_flush.40, i32 0, i32 %335
  %341 = load i32, ptr %340, align 4
  %342 = add i32 %339, 4
  %343 = add i32 %342, %341
  %344 = load i32, ptr %123, align 8
  %345 = icmp slt i32 %344, 1
  br i1 %345, label %346, label %347, !prof !8

346:                                              ; preds = %338
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %347

347:                                              ; preds = %346, %338
  %348 = load ptr, ptr %124, align 4
  %349 = getelementptr i8, ptr %348, i32 %343
  tail call void @msm_writel(i32 noundef %138, ptr noundef %349) #9
  switch i32 %45, label %368 [
    i32 0, label %350
    i32 1, label %353
    i32 2, label %356
    i32 3, label %359
    i32 4, label %362
    i32 5, label %365
  ]

350:                                              ; preds = %347
  %351 = load ptr, ptr @mdp5_cfg, align 4
  %352 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %351, i32 0, i32 8, i32 1
  br label %369

353:                                              ; preds = %347
  %354 = load ptr, ptr @mdp5_cfg, align 4
  %355 = getelementptr %struct.mdp5_cfg_hw, ptr %354, i32 0, i32 8, i32 1, i32 1
  br label %369

356:                                              ; preds = %347
  %357 = load ptr, ptr @mdp5_cfg, align 4
  %358 = getelementptr %struct.mdp5_cfg_hw, ptr %357, i32 0, i32 8, i32 1, i32 2
  br label %369

359:                                              ; preds = %347
  %360 = load ptr, ptr @mdp5_cfg, align 4
  %361 = getelementptr %struct.mdp5_cfg_hw, ptr %360, i32 0, i32 8, i32 1, i32 3
  br label %369

362:                                              ; preds = %347
  %363 = load ptr, ptr @mdp5_cfg, align 4
  %364 = getelementptr %struct.mdp5_cfg_hw, ptr %363, i32 0, i32 8, i32 1, i32 4
  br label %369

365:                                              ; preds = %347
  %366 = load ptr, ptr @mdp5_cfg, align 4
  %367 = getelementptr %struct.mdp5_cfg_hw, ptr %366, i32 0, i32 8, i32 1, i32 5
  br label %369

368:                                              ; preds = %347
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

369:                                              ; preds = %365, %362, %359, %356, %353, %350
  %370 = phi ptr [ %367, %365 ], [ %364, %362 ], [ %361, %359 ], [ %358, %356 ], [ %355, %353 ], [ %352, %350 ]
  %371 = add nsw i32 %127, -2
  %372 = icmp ult i32 %371, 7
  br i1 %372, label %374, label %373

373:                                              ; preds = %369
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1127, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

374:                                              ; preds = %369
  %375 = load i32, ptr %370, align 4
  %376 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_crtc_atomic_flush.40, i32 0, i32 %371
  %377 = load i32, ptr %376, align 4
  %378 = add i32 %375, 8
  %379 = add i32 %378, %377
  %380 = load i32, ptr %123, align 8
  %381 = icmp slt i32 %380, 1
  br i1 %381, label %382, label %383, !prof !8

382:                                              ; preds = %374
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %383

383:                                              ; preds = %382, %374
  %384 = load ptr, ptr %124, align 4
  %385 = getelementptr i8, ptr %384, i32 %379
  tail call void @msm_writel(i32 noundef %170, ptr noundef %385) #9
  br label %386

386:                                              ; preds = %383, %275, %125
  %387 = phi i32 [ %154, %383 ], [ %154, %275 ], [ %126, %125 ]
  %388 = add nuw nsw i32 %127, 1
  %389 = icmp eq i32 %388, 9
  br i1 %389, label %390, label %125

390:                                              ; preds = %386
  switch i32 %37, label %409 [
    i32 0, label %391
    i32 1, label %394
    i32 2, label %397
    i32 3, label %400
    i32 4, label %403
    i32 5, label %406
  ]

391:                                              ; preds = %390
  %392 = load ptr, ptr @mdp5_cfg, align 4
  %393 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %392, i32 0, i32 8, i32 1
  br label %410

394:                                              ; preds = %390
  %395 = load ptr, ptr @mdp5_cfg, align 4
  %396 = getelementptr %struct.mdp5_cfg_hw, ptr %395, i32 0, i32 8, i32 1, i32 1
  br label %410

397:                                              ; preds = %390
  %398 = load ptr, ptr @mdp5_cfg, align 4
  %399 = getelementptr %struct.mdp5_cfg_hw, ptr %398, i32 0, i32 8, i32 1, i32 2
  br label %410

400:                                              ; preds = %390
  %401 = load ptr, ptr @mdp5_cfg, align 4
  %402 = getelementptr %struct.mdp5_cfg_hw, ptr %401, i32 0, i32 8, i32 1, i32 3
  br label %410

403:                                              ; preds = %390
  %404 = load ptr, ptr @mdp5_cfg, align 4
  %405 = getelementptr %struct.mdp5_cfg_hw, ptr %404, i32 0, i32 8, i32 1, i32 4
  br label %410

406:                                              ; preds = %390
  %407 = load ptr, ptr @mdp5_cfg, align 4
  %408 = getelementptr %struct.mdp5_cfg_hw, ptr %407, i32 0, i32 8, i32 1, i32 5
  br label %410

409:                                              ; preds = %390
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

410:                                              ; preds = %406, %403, %400, %397, %394, %391
  %411 = phi ptr [ %408, %406 ], [ %405, %403 ], [ %402, %400 ], [ %399, %397 ], [ %396, %394 ], [ %393, %391 ]
  %412 = load i32, ptr %411, align 4
  %413 = load i32, ptr %123, align 8
  %414 = icmp slt i32 %413, 1
  br i1 %414, label %415, label %416, !prof !8

415:                                              ; preds = %410
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 175, i32 noundef 9, ptr noundef null) #9
  br label %416

416:                                              ; preds = %415, %410
  %417 = load ptr, ptr %124, align 4
  %418 = getelementptr i8, ptr %417, i32 %412
  %419 = tail call i32 @msm_readl(ptr noundef %418) #9
  switch i32 %37, label %438 [
    i32 0, label %420
    i32 1, label %423
    i32 2, label %426
    i32 3, label %429
    i32 4, label %432
    i32 5, label %435
  ]

420:                                              ; preds = %416
  %421 = load ptr, ptr @mdp5_cfg, align 4
  %422 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %421, i32 0, i32 8, i32 1
  br label %439

423:                                              ; preds = %416
  %424 = load ptr, ptr @mdp5_cfg, align 4
  %425 = getelementptr %struct.mdp5_cfg_hw, ptr %424, i32 0, i32 8, i32 1, i32 1
  br label %439

426:                                              ; preds = %416
  %427 = load ptr, ptr @mdp5_cfg, align 4
  %428 = getelementptr %struct.mdp5_cfg_hw, ptr %427, i32 0, i32 8, i32 1, i32 2
  br label %439

429:                                              ; preds = %416
  %430 = load ptr, ptr @mdp5_cfg, align 4
  %431 = getelementptr %struct.mdp5_cfg_hw, ptr %430, i32 0, i32 8, i32 1, i32 3
  br label %439

432:                                              ; preds = %416
  %433 = load ptr, ptr @mdp5_cfg, align 4
  %434 = getelementptr %struct.mdp5_cfg_hw, ptr %433, i32 0, i32 8, i32 1, i32 4
  br label %439

435:                                              ; preds = %416
  %436 = load ptr, ptr @mdp5_cfg, align 4
  %437 = getelementptr %struct.mdp5_cfg_hw, ptr %436, i32 0, i32 8, i32 1, i32 5
  br label %439

438:                                              ; preds = %416
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

439:                                              ; preds = %435, %432, %429, %426, %423, %420
  %440 = phi ptr [ %437, %435 ], [ %434, %432 ], [ %431, %429 ], [ %428, %426 ], [ %425, %423 ], [ %422, %420 ]
  %441 = load i32, ptr %440, align 4
  %442 = or i32 %419, %387
  %443 = load i32, ptr %123, align 8
  %444 = icmp slt i32 %443, 1
  br i1 %444, label %445, label %446, !prof !8

445:                                              ; preds = %439
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %446

446:                                              ; preds = %445, %439
  %447 = load ptr, ptr %124, align 4
  %448 = getelementptr i8, ptr %447, i32 %441
  tail call void @msm_writel(i32 noundef %442, ptr noundef %448) #9
  br i1 %40, label %508, label %449

449:                                              ; preds = %446
  switch i32 %45, label %468 [
    i32 0, label %450
    i32 1, label %453
    i32 2, label %456
    i32 3, label %459
    i32 4, label %462
    i32 5, label %465
  ]

450:                                              ; preds = %449
  %451 = load ptr, ptr @mdp5_cfg, align 4
  %452 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %451, i32 0, i32 8, i32 1
  br label %469

453:                                              ; preds = %449
  %454 = load ptr, ptr @mdp5_cfg, align 4
  %455 = getelementptr %struct.mdp5_cfg_hw, ptr %454, i32 0, i32 8, i32 1, i32 1
  br label %469

456:                                              ; preds = %449
  %457 = load ptr, ptr @mdp5_cfg, align 4
  %458 = getelementptr %struct.mdp5_cfg_hw, ptr %457, i32 0, i32 8, i32 1, i32 2
  br label %469

459:                                              ; preds = %449
  %460 = load ptr, ptr @mdp5_cfg, align 4
  %461 = getelementptr %struct.mdp5_cfg_hw, ptr %460, i32 0, i32 8, i32 1, i32 3
  br label %469

462:                                              ; preds = %449
  %463 = load ptr, ptr @mdp5_cfg, align 4
  %464 = getelementptr %struct.mdp5_cfg_hw, ptr %463, i32 0, i32 8, i32 1, i32 4
  br label %469

465:                                              ; preds = %449
  %466 = load ptr, ptr @mdp5_cfg, align 4
  %467 = getelementptr %struct.mdp5_cfg_hw, ptr %466, i32 0, i32 8, i32 1, i32 5
  br label %469

468:                                              ; preds = %449
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

469:                                              ; preds = %465, %462, %459, %456, %453, %450
  %470 = phi ptr [ %467, %465 ], [ %464, %462 ], [ %461, %459 ], [ %458, %456 ], [ %455, %453 ], [ %452, %450 ]
  %471 = load i32, ptr %470, align 4
  %472 = load i32, ptr %123, align 8
  %473 = icmp slt i32 %472, 1
  br i1 %473, label %474, label %475, !prof !8

474:                                              ; preds = %469
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 175, i32 noundef 9, ptr noundef null) #9
  br label %475

475:                                              ; preds = %474, %469
  %476 = load ptr, ptr %124, align 4
  %477 = getelementptr i8, ptr %476, i32 %471
  %478 = tail call i32 @msm_readl(ptr noundef %477) #9
  switch i32 %45, label %497 [
    i32 0, label %479
    i32 1, label %482
    i32 2, label %485
    i32 3, label %488
    i32 4, label %491
    i32 5, label %494
  ]

479:                                              ; preds = %475
  %480 = load ptr, ptr @mdp5_cfg, align 4
  %481 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %480, i32 0, i32 8, i32 1
  br label %498

482:                                              ; preds = %475
  %483 = load ptr, ptr @mdp5_cfg, align 4
  %484 = getelementptr %struct.mdp5_cfg_hw, ptr %483, i32 0, i32 8, i32 1, i32 1
  br label %498

485:                                              ; preds = %475
  %486 = load ptr, ptr @mdp5_cfg, align 4
  %487 = getelementptr %struct.mdp5_cfg_hw, ptr %486, i32 0, i32 8, i32 1, i32 2
  br label %498

488:                                              ; preds = %475
  %489 = load ptr, ptr @mdp5_cfg, align 4
  %490 = getelementptr %struct.mdp5_cfg_hw, ptr %489, i32 0, i32 8, i32 1, i32 3
  br label %498

491:                                              ; preds = %475
  %492 = load ptr, ptr @mdp5_cfg, align 4
  %493 = getelementptr %struct.mdp5_cfg_hw, ptr %492, i32 0, i32 8, i32 1, i32 4
  br label %498

494:                                              ; preds = %475
  %495 = load ptr, ptr @mdp5_cfg, align 4
  %496 = getelementptr %struct.mdp5_cfg_hw, ptr %495, i32 0, i32 8, i32 1, i32 5
  br label %498

497:                                              ; preds = %475
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1084, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

498:                                              ; preds = %494, %491, %488, %485, %482, %479
  %499 = phi ptr [ %496, %494 ], [ %493, %491 ], [ %490, %488 ], [ %487, %485 ], [ %484, %482 ], [ %481, %479 ]
  %500 = load i32, ptr %499, align 4
  %501 = or i32 %478, %387
  %502 = load i32, ptr %123, align 8
  %503 = icmp slt i32 %502, 1
  br i1 %503, label %504, label %505, !prof !8

504:                                              ; preds = %498
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %505

505:                                              ; preds = %504, %498
  %506 = load ptr, ptr %124, align 4
  %507 = getelementptr i8, ptr %506, i32 %500
  tail call void @msm_writel(i32 noundef %501, ptr noundef %507) #9
  br label %508

508:                                              ; preds = %505, %446
  %509 = call i32 @mdp5_ctl_blend(ptr noundef nonnull %47, ptr noundef %28, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %119, i32 noundef %120) #9
  br label %510

510:                                              ; preds = %508, %44
  call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %49) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #9
  %511 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %7, i32 0, i32 6
  %512 = load i8, ptr %511, align 4, !range !9
  %513 = icmp eq i8 %512, 0
  br i1 %513, label %516, label %514

514:                                              ; preds = %510
  %515 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 11
  store i32 0, ptr %515, align 4
  br label %516

516:                                              ; preds = %514, %510
  %517 = load ptr, ptr %6, align 4
  %518 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %517, i32 0, i32 1
  %519 = load ptr, ptr %518, align 4
  %520 = icmp eq ptr %519, null
  br i1 %520, label %521, label %522, !prof !8

521:                                              ; preds = %516
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef null) #9
  br label %585

522:                                              ; preds = %516
  %523 = load ptr, ptr %0, align 8
  %524 = getelementptr inbounds %struct.drm_device, ptr %523, i32 0, i32 30, i32 18
  %525 = load ptr, ptr %524, align 4
  %526 = icmp eq ptr %525, %524
  br i1 %526, label %558, label %527

527:                                              ; preds = %556, %522
  %528 = phi ptr [ %551, %556 ], [ %523, %522 ]
  %529 = phi ptr [ %557, %556 ], [ %517, %522 ]
  %530 = phi ptr [ %553, %556 ], [ %525, %522 ]
  %531 = phi i32 [ %552, %556 ], [ 0, %522 ]
  %532 = getelementptr i8, ptr %530, i32 -4
  %533 = getelementptr inbounds %struct.drm_crtc_state, ptr %529, i32 0, i32 4
  %534 = load i32, ptr %533, align 4
  %535 = getelementptr i8, ptr %530, i32 408
  %536 = load i32, ptr %535, align 4
  %537 = shl nuw i32 1, %536
  %538 = and i32 %537, %534
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %550, label %540

540:                                              ; preds = %527
  %541 = getelementptr i8, ptr %530, i32 416
  %542 = load ptr, ptr %541, align 4
  %543 = getelementptr inbounds %struct.drm_plane_state, ptr %542, i32 0, i32 22
  %544 = load i8, ptr %543, align 4, !range !9
  %545 = icmp eq i8 %544, 0
  br i1 %545, label %550, label %546

546:                                              ; preds = %540
  %547 = call i32 @mdp5_plane_get_flush(ptr noundef %532) #9
  %548 = or i32 %547, %531
  %549 = load ptr, ptr %0, align 8
  br label %550

550:                                              ; preds = %546, %540, %527
  %551 = phi ptr [ %549, %546 ], [ %528, %540 ], [ %528, %527 ]
  %552 = phi i32 [ %548, %546 ], [ %531, %540 ], [ %531, %527 ]
  %553 = load ptr, ptr %530, align 4
  %554 = getelementptr inbounds %struct.drm_device, ptr %551, i32 0, i32 30, i32 18
  %555 = icmp eq ptr %553, %554
  br i1 %555, label %558, label %556

556:                                              ; preds = %550
  %557 = load ptr, ptr %6, align 4
  br label %527

558:                                              ; preds = %550, %522
  %559 = phi i32 [ 0, %522 ], [ %552, %550 ]
  %560 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %517, i32 0, i32 2, i32 1
  %561 = load ptr, ptr %560, align 4
  %562 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %561, i32 0, i32 2
  %563 = load i32, ptr %562, align 4
  %564 = call i32 @mdp_ctl_flush_mask_lm(i32 noundef %563) #9
  %565 = or i32 %564, %559
  %566 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %517, i32 0, i32 2, i32 2
  %567 = load ptr, ptr %566, align 4
  %568 = icmp eq ptr %567, null
  br i1 %568, label %574, label %569

569:                                              ; preds = %558
  %570 = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %567, i32 0, i32 2
  %571 = load i32, ptr %570, align 4
  %572 = call i32 @mdp_ctl_flush_mask_lm(i32 noundef %571) #9
  %573 = or i32 %572, %565
  br label %574

574:                                              ; preds = %569, %558
  %575 = phi i32 [ %573, %569 ], [ %565, %558 ]
  %576 = load ptr, ptr %6, align 4
  %577 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %576, i32 0, i32 1
  %578 = load ptr, ptr %577, align 4
  %579 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %576, i32 0, i32 2
  %580 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %576, i32 0, i32 7
  %581 = load i8, ptr %580, align 1, !range !9
  %582 = icmp eq i8 %581, 0
  store i8 0, ptr %580, align 1
  %583 = load ptr, ptr %9, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef %583, i32 noundef %575) #9
  %584 = call i32 @mdp5_ctl_commit(ptr noundef %578, ptr noundef %579, i32 noundef %575, i1 noundef zeroext %582) #9
  br label %585

585:                                              ; preds = %574, %521
  %586 = phi i32 [ 0, %521 ], [ %584, %574 ]
  %587 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 5
  store i32 %586, ptr %587, align 8
  %588 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %7, i32 0, i32 3
  %589 = load i32, ptr %588, align 4
  %590 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 8, i32 1
  store i32 %589, ptr %590, align 4
  %591 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %7, i32 0, i32 4
  %592 = load i32, ptr %591, align 4
  %593 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 9, i32 1
  store i32 %592, ptr %593, align 8
  %594 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %7, i32 0, i32 5
  %595 = load i32, ptr %594, align 4
  %596 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 10, i32 1
  store i32 %595, ptr %596, align 4
  %597 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %597) #9, !srcloc !12
  %598 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %597, ptr %597, i32 2, ptr elementtype(i32) %597) #9, !srcloc !19
  %599 = load ptr, ptr %0, align 8
  %600 = getelementptr inbounds %struct.drm_device, ptr %599, i32 0, i32 5
  %601 = load ptr, ptr %600, align 4
  %602 = getelementptr inbounds %struct.msm_drm_private, ptr %601, i32 0, i32 1
  %603 = load ptr, ptr %602, align 4
  %604 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 8
  call void @mdp_irq_register(ptr noundef %603, ptr noundef %604) #9
  br label %605

605:                                              ; preds = %585, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_crtc_atomic_enable(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mdp5_kms, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.32, ptr noundef %13) #9
  %14 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 2
  %15 = load i8, ptr %14, align 4, !range !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17, !prof !17

17:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 545, i32 noundef 9, ptr noundef null) #9
  br label %52

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %20 = tail call i32 @__pm_runtime_resume(ptr noundef %19, i32 noundef 4) #9
  %21 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 12
  %22 = load i8, ptr %21, align 8, !range !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 13
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #9
  tail call fastcc void @mdp5_crtc_restore_cursor(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #9
  br label %31

31:                                               ; preds = %28, %24
  %32 = xor i1 %27, true
  %33 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %4, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %4, i32 0, i32 2
  %36 = tail call i32 @mdp5_ctl_set_cursor(ptr noundef %34, ptr noundef %35, i32 noundef 0, i1 noundef zeroext %32) #9
  br label %37

37:                                               ; preds = %31, %18
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mdp5_interface, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp ne i32 %42, 2
  %44 = sext i1 %43 to i32
  tail call void @drm_crtc_set_max_vblank_count(ptr noundef %0, i32 noundef %44) #9
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #9
  tail call void @mdp5_crtc_mode_set_nofb(ptr noundef %0)
  %45 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 9
  tail call void @mdp_irq_register(ptr noundef %9, ptr noundef %45) #9
  %46 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %4, i32 0, i32 6
  %47 = load i8, ptr %46, align 4, !range !9
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 10
  tail call void @mdp_irq_register(ptr noundef %9, ptr noundef %50) #9
  br label %51

51:                                               ; preds = %49, %37
  store i8 1, ptr %14, align 4
  br label %52

52:                                               ; preds = %51, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_crtc_atomic_disable(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mdp5_kms, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.32, ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 2
  %16 = load i8, ptr %15, align 4, !range !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19, !prof !8

18:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 500, i32 noundef 9, ptr noundef null) #9
  br label %54

19:                                               ; preds = %2
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #9
  %20 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %4, i32 0, i32 6
  %21 = load i8, ptr %20, align 4, !range !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 10
  tail call void @mdp_irq_unregister(ptr noundef %9, ptr noundef %24) #9
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 9
  tail call void @mdp_irq_unregister(ptr noundef %9, ptr noundef %26) #9
  %27 = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 4) #9
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr inbounds %struct.drm_crtc_state, ptr %28, i32 0, i32 18
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.drm_crtc_state, ptr %28, i32 0, i32 2
  %34 = load i8, ptr %33, align 1, !range !9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.mdp5_crtc, ptr %0, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40, !prof !17

40:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 513, i32 noundef 9, ptr noundef null) #9
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.mdp5_kms, ptr %9, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.drm_device, ptr %43, i32 0, i32 28
  %45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %44) #9
  %46 = load ptr, ptr %3, align 4
  %47 = getelementptr inbounds %struct.drm_crtc_state, ptr %46, i32 0, i32 18
  %48 = load ptr, ptr %47, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef %48) #9
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr inbounds %struct.drm_crtc_state, ptr %49, i32 0, i32 18
  store ptr null, ptr %50, align 4
  %51 = load ptr, ptr %42, align 8
  %52 = getelementptr inbounds %struct.drm_device, ptr %51, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %45) #9
  br label %53

53:                                               ; preds = %41, %32, %25
  store i8 0, ptr %15, align 4
  br label %54

54:                                               ; preds = %53, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @mdp5_crtc_get_scanout_position(ptr noundef readonly %0, i1 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr nocapture noundef readonly %6) #2 {
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 30, i32 16
  br label %12

12:                                               ; preds = %16, %7
  %13 = phi ptr [ %11, %7 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 48
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %14, i32 -4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33, i32 noundef %9) #9
  br label %57

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 24
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 23
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = sub nsw i32 %27, %30
  %32 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 25
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = sub nsw i32 %34, %27
  %36 = add nsw i32 %35, %31
  %37 = add nsw i32 %36, 1
  %38 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 20
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = add nsw i32 %37, %40
  %42 = icmp eq ptr %4, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %24
  %44 = tail call i64 @ktime_get() #9
  store i64 %44, ptr %4, align 8
  br label %45

45:                                               ; preds = %43, %24
  %46 = tail call i32 @mdp5_encoder_get_linecount(ptr noundef nonnull %21) #9
  %47 = icmp sgt i32 %46, %36
  %48 = icmp sgt i32 %46, %41
  %49 = select i1 %47, i1 %48, i1 false
  %50 = select i1 %49, i32 %34, i32 0
  %51 = xor i32 %36, -1
  %52 = add i32 %46, %51
  %53 = sub i32 %52, %50
  store i32 %53, ptr %2, align 4
  store i32 0, ptr %3, align 4
  %54 = icmp eq ptr %5, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %45
  %56 = tail call i64 @ktime_get() #9
  store i64 %56, ptr %5, align 8
  br label %57

57:                                               ; preds = %55, %45, %23
  %58 = phi i1 [ true, %45 ], [ true, %55 ], [ false, %23 ]
  ret i1 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_cfg_get_hw_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pstate_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.plane_state, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.plane_state, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %6, %10
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_mixer_assign(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_mixer_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_plane_pipe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_plane_right_pipe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_format(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_plane_get_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_ctl_flush_mask_lm(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_set_max_vblank_count(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_encoder_get_linecount(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
!11 = !{i64 2148453400}
!12 = !{i64 667155, i64 2148157126, i64 2148157152, i64 2148157199, i64 2148157221, i64 2148157249, i64 2148157269}
!13 = !{i64 676602, i64 676619, i64 676643, i64 676669, i64 676687}
!14 = !{i64 2148453744}
!15 = !{i64 2148271006}
!16 = !{i64 2148173153, i64 2148173185, i64 2148173214, i64 2148173248, i64 2148173279, i64 2148173302}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2149609648}
!19 = !{i64 2148177116, i64 2148177142, i64 2148177171, i64 2148177205, i64 2148177236, i64 2148177259}
!20 = !{i64 2156016171, i64 2156016677, i64 2156016208, i64 2156016264, i64 2156016298, i64 2156016322, i64 2156016363, i64 2156016384, i64 2156016412, i64 2156016446}
!21 = !{i64 2155775592, i64 2155776098, i64 2155775629, i64 2155775685, i64 2155775719, i64 2155775743, i64 2155775784, i64 2155775805, i64 2155775833, i64 2155775867}
!22 = !{i64 2155777965, i64 2155778471, i64 2155778002, i64 2155778058, i64 2155778092, i64 2155778116, i64 2155778157, i64 2155778178, i64 2155778206, i64 2155778240}
