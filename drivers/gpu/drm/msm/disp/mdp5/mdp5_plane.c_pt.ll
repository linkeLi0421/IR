; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.mdp5_plane_state = type { %struct.drm_plane_state, ptr, ptr, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.mdp5_hw_pipe = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.mdp5_plane = type { %struct.drm_plane, i32, [32 x i32] }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.79 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.82, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.82 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.mdp5_kms = type { %struct.mdp_kms, ptr, ptr, i32, [13 x ptr], i32, [8 x ptr], i32, [5 x ptr], ptr, i32, %struct.drm_modeset_lock, %struct.drm_private_obj, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, %struct.mdp_irq, i32 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
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
%struct.mdp_format = type { %struct.msm_format, i32, i32, i32, i32, [4 x i8], i8, i8, i8, i8, i32, i32, i8 }
%struct.msm_format = type { i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.phase_step = type { [3 x i32], [3 x i32] }
%struct.pixel_ext = type { [3 x i32], [3 x i32], [3 x i32], [3 x i32] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.74, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.74 = type { [4 x i8] }
%struct.csc_cfg = type { i32, [9 x i32], [3 x i32], [3 x i32], [6 x i32], [6 x i32] }

@.str = private unnamed_addr constant [43 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c\00", align 1
@mdp5_plane_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @mdp5_plane_destroy, ptr @mdp5_plane_reset, ptr null, ptr @mdp5_plane_duplicate_state, ptr @mdp5_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_plane_atomic_print_state, ptr null }, align 4
@mdp5_plane_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr @msm_atomic_prepare_fb, ptr @mdp5_plane_cleanup_fb, ptr @mdp5_plane_atomic_check, ptr @mdp5_plane_atomic_update, ptr null, ptr @mdp5_plane_atomic_async_check, ptr @mdp5_plane_atomic_async_update }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"\09hwpipe=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\09right-hwpipe=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\09blend_mode=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"\09zpos=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"\09normalized_zpos=%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"\09alpha=%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"\09stage=%s\0A\00", align 1
@stage2name.names = internal unnamed_addr constant [9 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr null, ptr @.str.16], align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"STAGE_UNUSED\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"STAGE_BASE\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"STAGE0\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"STAGE1\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"STAGE2\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"STAGE3\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"STAGE4\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"STAGE6\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"%s: cleanup: FB[%u]\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"%s: check (%d -> %d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"Invalid source size %d.%06ux%d.%06u%+d.%06u%+d.%06u\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"%s: failed to assign hwpipe(s)!\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"%s: update\0A\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"%s: FB[%u] %u,%u,%u,%u -> CRTC[%u] %d,%d,%u,%u\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"scale config = %x\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"*ERROR* X scaling (%d->%d) failed: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"*ERROR* Y scaling (%d->%d) failed: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", align 1
@mdp5_cfg = external dso_local local_unnamed_addr global ptr, align 4
@.str.28 = private unnamed_addr constant [45 x i8] c"comp-%d (L/R): rpt=%d/%d, ovf=%d/%d, req=%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"comp-%d (T/B): rpt=%d/%d, ovf=%d/%d, req=%d\0A\00", align 1
@switch.table.mdp5_plane_mode_set = private unnamed_addr constant [7 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_plane_pipe(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mdp5_plane_state, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 947, i32 noundef 9, ptr noundef null) #8
  br label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %7
  %12 = phi i32 [ 0, %7 ], [ %10, %8 ]
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp5_plane_right_pipe(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mdp5_plane_state, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_plane_get_flush(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mdp5_plane_state, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 968, i32 noundef 9, ptr noundef null) #8
  br label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %5, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mdp5_plane_state, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %12, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, %10
  br label %18

18:                                               ; preds = %14, %8, %7
  %19 = phi i32 [ 0, %7 ], [ %17, %14 ], [ %10, %8 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp5_plane_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 592) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mdp5_plane, ptr %4, i32 0, i32 2
  %8 = tail call i32 @mdp_get_formats(ptr noundef %7, i32 noundef 32, i1 noundef zeroext false) #8
  %9 = getelementptr inbounds %struct.mdp5_plane, ptr %4, i32 0, i32 1
  store i32 %8, ptr %9, align 8
  %10 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 255, ptr noundef nonnull @mdp5_plane_funcs, ptr noundef %7, i32 noundef %8, ptr noundef null, i32 noundef %1, ptr noundef null) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.drm_plane, ptr %4, i32 0, i32 18
  store ptr @mdp5_plane_helper_funcs, ptr %13, align 8
  %14 = tail call i32 @drm_plane_create_rotation_property(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 53) #8
  %15 = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %4) #8
  %16 = tail call i32 @drm_plane_create_blend_mode_property(ptr noundef nonnull %4, i32 noundef 7) #8
  %17 = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 1, i32 noundef 255) #8
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull %4) #8
  br label %20

18:                                               ; preds = %6
  tail call void @drm_plane_cleanup(ptr noundef nonnull %4) #8
  tail call void @kfree(ptr noundef nonnull %4) #8
  %19 = inttoptr i32 %10 to ptr
  br label %20

20:                                               ; preds = %18, %12, %2
  %21 = phi ptr [ %4, %12 ], [ %19, %18 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_get_formats(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_enable_fb_damage_clips(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_plane_destroy(ptr noundef %0) #0 {
  tail call void @drm_plane_cleanup(ptr noundef %0) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_plane_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %3) #8
  %6 = load ptr, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  tail call void @kfree(ptr noundef %8) #8
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 136) #9
  %11 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 16
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 2
  br label %18

18:                                               ; preds = %14, %7
  %19 = phi i32 [ %17, %14 ], [ 1, %7 ]
  %20 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 15
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 16
  store i32 %19, ptr %21, align 4
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %0, ptr noundef %10) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mdp5_plane_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #8
  br label %10

6:                                                ; preds = %1
  %7 = tail call ptr @kmemdup(ptr noundef nonnull %3, i32 noundef 136, i32 noundef 3264) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %0, ptr noundef nonnull %7) #8
  br label %10

10:                                               ; preds = %9, %6, %5
  %11 = phi ptr [ null, %5 ], [ %7, %9 ], [ null, %6 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_plane_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_framebuffer, ptr %4, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %7) #8
  br label %8

8:                                                ; preds = %6, %2
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_plane_atomic_print_state(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mdp5_plane_state, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi ptr [ %14, %12 ], [ @.str.2, %2 ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %16) #8
  %17 = getelementptr inbounds %struct.mdp5_kms, ptr %8, i32 0, i32 10
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.mdp5_plane_state, ptr %1, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi ptr [ %27, %25 ], [ @.str.2, %21 ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %29) #8
  br label %30

30:                                               ; preds = %28, %15
  %31 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 13
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %33) #8
  %34 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 15
  %35 = load i32, ptr %34, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %35) #8
  %36 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 16
  %37 = load i32, ptr %36, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %37) #8
  %38 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 12
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %40) #8
  %41 = getelementptr inbounds %struct.mdp5_plane_state, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr [9 x ptr], ptr @stage2name.names, i32 0, i32 %42
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %44) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_atomic_prepare_fb(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_plane_cleanup_fb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_framebuffer, ptr %4, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, ptr noundef %13, i32 noundef %15) #8
  %16 = getelementptr inbounds %struct.msm_kms, ptr %11, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void @msm_framebuffer_cleanup(ptr noundef nonnull %4, ptr noundef %17) #8
  br label %18

18:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_plane_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.__drm_planes_state, ptr %6, i32 %8, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = getelementptr %struct.__drm_planes_state, ptr %6, i32 %8, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_plane_state, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %208, label %20

20:                                               ; preds = %14, %2
  %21 = phi ptr [ %18, %14 ], [ %12, %2 ]
  %22 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_crtc, ptr %21, i32 0, i32 8
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr %struct.__drm_crtcs_state, ptr %23, i32 %25, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30, !prof !8

29:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 325, i32 noundef 9, ptr noundef null) #8
  br label %208

30:                                               ; preds = %20
  %31 = load ptr, ptr %10, align 4
  %32 = getelementptr inbounds %struct.drm_plane, ptr %31, i32 0, i32 19
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %31, align 8
  %35 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.msm_drm_private, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.mdp5_kms, ptr %38, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = tail call ptr @mdp5_cfg_get_config(ptr noundef %40) #8
  %42 = getelementptr inbounds %struct.drm_plane, ptr %31, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_plane_state, ptr %33, i32 0, i32 22
  %45 = load i8, ptr %44, align 4, !range !9
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 22
  %48 = load i8, ptr %47, align 4, !range !9
  %49 = zext i8 %48 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %43, i32 noundef %46, i32 noundef %49) #8
  %50 = load ptr, ptr %41, align 4
  %51 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %50, i32 0, i32 8, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = shl i32 %52, 16
  %54 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %50, i32 0, i32 8, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = shl i32 %55, 16
  %57 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 10
  %58 = load i32, ptr %57, align 4
  %59 = icmp ugt i32 %58, %56
  %60 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 11
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %61, %53
  br i1 %62, label %63, label %73

63:                                               ; preds = %30
  %64 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %50, i32 0, i32 1, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  %68 = shl i32 %52, 17
  %69 = icmp ugt i32 %61, %68
  %70 = select i1 %67, i1 true, i1 %69
  %71 = select i1 %70, i1 true, i1 %59
  %72 = xor i1 %70, true
  br i1 %71, label %74, label %95

73:                                               ; preds = %30
  br i1 %59, label %74, label %95

74:                                               ; preds = %73, %63
  %75 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 8
  %76 = load i32, ptr %75, align 4, !noalias !10
  %77 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 9
  %78 = load i32, ptr %77, align 4, !noalias !10
  %79 = ashr i32 %61, 16
  %80 = and i32 %61, 65535
  %81 = mul nuw nsw i32 %80, 15625
  %82 = lshr i32 %81, 10
  %83 = ashr i32 %58, 16
  %84 = and i32 %58, 65535
  %85 = mul nuw nsw i32 %84, 15625
  %86 = lshr i32 %85, 10
  %87 = ashr i32 %76, 16
  %88 = and i32 %76, 65535
  %89 = mul nuw nsw i32 %88, 15625
  %90 = lshr i32 %89, 10
  %91 = ashr i32 %78, 16
  %92 = and i32 %78, 65535
  %93 = mul nuw nsw i32 %92, 15625
  %94 = lshr i32 %93, 10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %79, i32 noundef %82, i32 noundef %83, i32 noundef %86, i32 noundef %87, i32 noundef %90, i32 noundef %91, i32 noundef %94) #8
  br label %208

95:                                               ; preds = %73, %63
  %96 = phi i1 [ %72, %63 ], [ false, %73 ]
  %97 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %10, ptr noundef nonnull %27, i32 noundef 8192, i32 noundef 524288, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %208

99:                                               ; preds = %95
  %100 = load i8, ptr %47, align 4, !range !9
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %200, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %31, align 8
  %104 = getelementptr inbounds %struct.drm_device, ptr %103, i32 0, i32 5
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.msm_drm_private, ptr %105, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = tail call ptr @msm_framebuffer_format(ptr noundef %109) #8
  %111 = getelementptr inbounds %struct.mdp_format, ptr %110, i32 0, i32 12
  %112 = load i8, ptr %111, align 4, !range !9
  %113 = icmp eq i8 %112, 0
  %114 = select i1 %113, i32 0, i32 12
  %115 = load i32, ptr %60, align 4
  %116 = lshr i32 %115, 16
  %117 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 6
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %102
  %121 = load i32, ptr %57, align 4
  %122 = lshr i32 %121, 16
  %123 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 7
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %128, label %126

126:                                              ; preds = %120, %102
  %127 = or i32 %114, 4
  br label %128

128:                                              ; preds = %126, %120
  %129 = phi i32 [ %127, %126 ], [ %114, %120 ]
  %130 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 14
  %131 = load i32, ptr %130, align 4
  %132 = tail call i32 @drm_rotation_simplify(i32 noundef %131, i32 noundef 49) #8
  %133 = lshr i32 %132, 4
  %134 = and i32 %133, 1
  %135 = or i32 %134, %129
  %136 = and i32 %133, 2
  %137 = or i32 %135, %136
  %138 = getelementptr inbounds %struct.drm_plane, ptr %31, i32 0, i32 16
  %139 = load i32, ptr %138, align 8
  %140 = icmp eq i32 %139, 2
  %141 = or i32 %137, 64
  %142 = select i1 %140, i32 %141, i32 %137
  %143 = getelementptr inbounds %struct.mdp5_plane_state, ptr %10, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %128
  %147 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %144, i32 0, i32 4
  %148 = load i32, ptr %147, align 4
  %149 = xor i32 %148, -1
  %150 = and i32 %142, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %146, %128
  br label %153

153:                                              ; preds = %152, %146
  %154 = phi i1 [ true, %152 ], [ false, %146 ]
  %155 = getelementptr inbounds %struct.mdp5_plane_state, ptr %10, i32 0, i32 2
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %96, label %158, label %159

158:                                              ; preds = %153
  br i1 %157, label %160, label %161

159:                                              ; preds = %153
  br i1 %157, label %161, label %160

160:                                              ; preds = %159, %158
  br label %161

161:                                              ; preds = %160, %159, %158
  %162 = phi i1 [ true, %160 ], [ %154, %159 ], [ %154, %158 ]
  %163 = getelementptr inbounds %struct.mdp5_kms, ptr %107, i32 0, i32 13
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %180, label %166

166:                                              ; preds = %161
  %167 = load ptr, ptr %108, align 4
  %168 = tail call ptr @msm_framebuffer_format(ptr noundef %167) #8
  %169 = load ptr, ptr %163, align 4
  %170 = load i32, ptr %60, align 4
  %171 = lshr i32 %170, 16
  %172 = tail call i32 @mdp5_smp_calculate(ptr noundef %169, ptr noundef %168, i32 noundef %171, i1 noundef zeroext false) #8
  %173 = load ptr, ptr %143, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %180, label %175

175:                                              ; preds = %166
  %176 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %173, i32 0, i32 6
  %177 = load i32, ptr %176, align 4
  %178 = icmp ne i32 %177, %172
  %179 = or i1 %162, %178
  br i1 %179, label %183, label %208

180:                                              ; preds = %166, %161
  %181 = phi ptr [ %144, %161 ], [ null, %166 ]
  %182 = phi i32 [ 0, %161 ], [ %172, %166 ]
  br i1 %162, label %183, label %208

183:                                              ; preds = %180, %175
  %184 = phi ptr [ %173, %175 ], [ %181, %180 ]
  %185 = phi i32 [ %172, %175 ], [ %182, %180 ]
  %186 = load ptr, ptr %155, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4
  %187 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 25
  %188 = load ptr, ptr %187, align 4
  %189 = select i1 %96, ptr %4, ptr null
  %190 = call i32 @mdp5_pipe_assign(ptr noundef %188, ptr noundef %31, i32 noundef %142, i32 noundef %185, ptr noundef nonnull %3, ptr noundef %189) #8
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %183
  %193 = load ptr, ptr %3, align 4
  store ptr %193, ptr %143, align 4
  %194 = load ptr, ptr %4, align 4
  %195 = select i1 %96, ptr %194, ptr null
  store ptr %195, ptr %155, align 4
  %196 = load ptr, ptr %187, align 4
  call void @mdp5_pipe_release(ptr noundef %196, ptr noundef %184) #8
  %197 = load ptr, ptr %187, align 4
  call void @mdp5_pipe_release(ptr noundef %197, ptr noundef %186) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %208

198:                                              ; preds = %183
  %199 = load ptr, ptr %42, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, ptr noundef %199) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %208

200:                                              ; preds = %99
  %201 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 25
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.mdp5_plane_state, ptr %10, i32 0, i32 1
  %204 = load ptr, ptr %203, align 4
  tail call void @mdp5_pipe_release(ptr noundef %202, ptr noundef %204) #8
  %205 = load ptr, ptr %201, align 4
  %206 = getelementptr inbounds %struct.mdp5_plane_state, ptr %10, i32 0, i32 2
  %207 = load ptr, ptr %206, align 4
  tail call void @mdp5_pipe_release(ptr noundef %205, ptr noundef %207) #8
  store ptr null, ptr %206, align 4
  store ptr null, ptr %203, align 4
  br label %208

208:                                              ; preds = %200, %198, %192, %180, %175, %95, %74, %29, %14
  %209 = phi i32 [ -22, %29 ], [ 0, %14 ], [ -34, %74 ], [ %190, %198 ], [ %97, %95 ], [ 0, %200 ], [ 0, %192 ], [ 0, %180 ], [ 0, %175 ]
  ret i32 %209
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_plane_atomic_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 22
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20
  %20 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21
  %21 = tail call fastcc i32 @mdp5_plane_mode_set(ptr noundef %0, ptr noundef %16, ptr noundef %18, ptr noundef %19, ptr noundef %20)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 346, i32 noundef 9, ptr noundef null) #8
  br label %24

24:                                               ; preds = %23, %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_plane_atomic_async_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr %struct.__drm_crtcs_state, ptr %12, i32 %14, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !8

18:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 362, i32 noundef 9, ptr noundef null) #8
  br label %76

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.drm_crtc_state, ptr %16, i32 0, i32 2
  %21 = load i8, ptr %20, align 1, !range !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %76, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.mdp5_plane_state, ptr %8, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %76, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %10
  br i1 %32, label %33, label %76

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %76

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 10
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %76, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %59, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %8, ptr noundef nonnull %16, i32 noundef 8192, i32 noundef 524288, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 22
  %70 = load i8, ptr %69, align 4, !range !9
  %71 = load ptr, ptr %28, align 4
  %72 = getelementptr inbounds %struct.drm_plane_state, ptr %71, i32 0, i32 22
  %73 = load i8, ptr %72, align 4, !range !9
  %74 = icmp eq i8 %70, %73
  %75 = select i1 %74, i32 0, i32 -22
  br label %76

76:                                               ; preds = %68, %65, %61, %57, %51, %45, %39, %33, %27, %23, %19, %18
  %77 = phi i32 [ -22, %18 ], [ -22, %19 ], [ -22, %23 ], [ -22, %61 ], [ -22, %57 ], [ -22, %51 ], [ -22, %45 ], [ -22, %39 ], [ -22, %33 ], [ -22, %27 ], [ %66, %65 ], [ %75, %68 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_plane_atomic_async_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 8
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.drm_plane_state, ptr %18, i32 0, i32 9
  store i32 %17, ptr %19, align 4
  %20 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr inbounds %struct.drm_plane_state, ptr %22, i32 0, i32 4
  store i32 %21, ptr %23, align 4
  %24 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 5
  store i32 %25, ptr %27, align 4
  %28 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 22
  %29 = load i8, ptr %28, align 4, !range !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %64, label %31

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = tail call ptr @mdp5_crtc_get_pipeline(ptr noundef %33) #8
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20
  %39 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21
  %40 = tail call fastcc i32 @mdp5_plane_mode_set(ptr noundef %0, ptr noundef %35, ptr noundef %37, ptr noundef %38, ptr noundef %39)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43, !prof !8

42:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 9, ptr noundef null) #8
  br label %43

43:                                               ; preds = %42, %31
  %44 = load ptr, ptr %32, align 4
  %45 = tail call ptr @mdp5_crtc_get_ctl(ptr noundef %44) #8
  %46 = load ptr, ptr %9, align 4
  %47 = getelementptr inbounds %struct.mdp5_plane_state, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51, !prof !8

50:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 968, i32 noundef 9, ptr noundef null) #8
  br label %61

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %48, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mdp5_plane_state, ptr %46, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %55, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, %53
  br label %61

61:                                               ; preds = %57, %51, %50
  %62 = phi i32 [ 0, %50 ], [ %60, %57 ], [ %53, %51 ]
  %63 = tail call i32 @mdp5_ctl_commit(ptr noundef %45, ptr noundef %34, i32 noundef %62, i1 noundef zeroext true) #8
  br label %64

64:                                               ; preds = %61, %2
  %65 = load ptr, ptr %9, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(136) %65, ptr noundef align 4 dereferenceable(136) %8, i32 136, i1 false)
  %66 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  store ptr %12, ptr %66, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_framebuffer_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_cfg_get_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_rotation_simplify(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_smp_calculate(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_pipe_assign(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_pipe_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mdp5_plane_mode_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca %struct.phase_step, align 4
  %7 = alloca %struct.pixel_ext, align 4
  %8 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mdp5_plane_state, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.msm_drm_private, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %11, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %7, i8 0, i32 48, i1 false)
  %19 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.drm_format_info, ptr %20, i32 0, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = add i32 %18, -4
  %25 = icmp ult i32 %24, 7
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp5_plane_mode_set, i32 0, i32 %24
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %5
  %30 = phi i32 [ %28, %26 ], [ 3, %5 ]
  %31 = icmp ult i32 %30, %23
  br i1 %31, label %32, label %33, !prof !8

32:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 854, i32 noundef 9, ptr noundef null) #8
  br label %239

33:                                               ; preds = %29
  %34 = tail call ptr @msm_framebuffer_format(ptr noundef %2) #8
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %3, align 4
  %37 = getelementptr inbounds %struct.drm_rect, ptr %3, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.drm_rect, ptr %3, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %40, %36
  %42 = getelementptr inbounds %struct.drm_rect, ptr %3, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 %43, %38
  %45 = load i32, ptr %4, align 4
  %46 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 %49, %45
  %51 = getelementptr inbounds %struct.drm_rect, ptr %4, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 %52, %47
  %54 = lshr i32 %36, 16
  %55 = lshr i32 %38, 16
  %56 = lshr i32 %41, 16
  %57 = lshr i32 %44, 16
  %58 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 9
  %59 = load i32, ptr %58, align 8
  %60 = tail call i32 @llvm.umin.i32(i32 %59, i32 %56)
  %61 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 10
  %62 = load i32, ptr %61, align 4
  %63 = tail call i32 @llvm.umin.i32(i32 %62, i32 %57)
  %64 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22, ptr noundef %65, i32 noundef %67, i32 noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %57, i32 noundef %69, i32 noundef %45, i32 noundef %47, i32 noundef %50, i32 noundef %53) #8
  %70 = getelementptr inbounds %struct.mdp5_plane_state, ptr %9, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  %73 = lshr i32 %41, 17
  %74 = xor i1 %72, true
  %75 = zext i1 %74 to i32
  %76 = lshr i32 %50, %75
  %77 = select i1 %72, i32 %56, i32 %73
  %78 = lshr i32 %60, %75
  %79 = tail call ptr @drm_format_info(i32 noundef %35) #8
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr inbounds %struct.drm_device, ptr %80, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.msm_drm_private, ptr %82, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.mdp5_kms, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.drm_device, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq i32 %77, 0
  %90 = icmp eq i32 %76, 0
  %91 = or i1 %89, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %33
  %93 = shl i32 %76, 5
  %94 = icmp ult i32 %93, %77
  br i1 %94, label %95, label %97

95:                                               ; preds = %92, %33
  %96 = phi i32 [ -75, %92 ], [ -22, %33 ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %88, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %77, i32 noundef %76, i32 noundef %96) #8
  br label %239

97:                                               ; preds = %92
  %98 = freeze i32 %76
  %99 = udiv i32 2097152, %98
  %100 = mul i32 %99, %98
  %101 = sub i32 2097152, %100
  %102 = mul i32 %99, %77
  %103 = mul i32 %101, %77
  %104 = udiv i32 %103, %76
  %105 = add i32 %104, %102
  store i32 %105, ptr %6, align 4
  %106 = getelementptr inbounds i32, ptr %6, i32 2
  store i32 %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.drm_format_info, ptr %79, i32 0, i32 6
  %108 = load i8, ptr %107, align 2
  %109 = zext i8 %108 to i32
  %110 = udiv i32 %105, %109
  %111 = getelementptr inbounds i32, ptr %6, i32 1
  store i32 %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.phase_step, ptr %6, i32 0, i32 1
  %113 = tail call ptr @drm_format_info(i32 noundef %35) #8
  %114 = load ptr, ptr %0, align 8
  %115 = getelementptr inbounds %struct.drm_device, ptr %114, i32 0, i32 5
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.msm_drm_private, ptr %116, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.mdp5_kms, ptr %118, i32 0, i32 1
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr inbounds %struct.drm_device, ptr %120, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = icmp ult i32 %44, 65536
  %124 = icmp eq i32 %52, %47
  %125 = or i1 %123, %124
  br i1 %125, label %129, label %126

126:                                              ; preds = %97
  %127 = shl i32 %53, 5
  %128 = icmp ult i32 %127, %57
  br i1 %128, label %129, label %131

129:                                              ; preds = %126, %97
  %130 = phi i32 [ -75, %126 ], [ -22, %97 ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %122, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef %57, i32 noundef %53, i32 noundef %130) #8
  br label %239

131:                                              ; preds = %126
  %132 = udiv i32 2097152, %53
  %133 = mul i32 %132, %53
  %134 = sub i32 2097152, %133
  %135 = mul i32 %132, %57
  %136 = mul i32 %134, %57
  %137 = udiv i32 %136, %53
  %138 = add i32 %137, %135
  store i32 %138, ptr %112, align 4
  %139 = getelementptr inbounds %struct.phase_step, ptr %6, i32 0, i32 1, i32 2
  store i32 %138, ptr %139, align 4
  %140 = getelementptr inbounds %struct.drm_format_info, ptr %113, i32 0, i32 7
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = udiv i32 %138, %142
  %144 = getelementptr inbounds %struct.phase_step, ptr %6, i32 0, i32 1, i32 1
  store i32 %143, ptr %144, align 4
  %145 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %11, i32 0, i32 4
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, 32
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %170, label %149

149:                                              ; preds = %131
  %150 = getelementptr inbounds %struct.pixel_ext, ptr %7, i32 0, i32 1
  %151 = getelementptr inbounds %struct.mdp_format, ptr %34, i32 0, i32 12
  %152 = load i8, ptr %151, align 4, !range !9
  %153 = icmp ne i8 %152, 0
  %154 = icmp ne i32 %77, %76
  %155 = or i1 %154, %153
  %156 = zext i1 %155 to i32
  store i32 0, ptr %7, align 4
  store i32 %156, ptr %150, align 4
  %157 = getelementptr inbounds i32, ptr %7, i32 1
  store i32 0, ptr %157, align 4
  %158 = getelementptr inbounds %struct.pixel_ext, ptr %7, i32 0, i32 1, i32 1
  store i32 %156, ptr %158, align 4
  %159 = getelementptr inbounds i32, ptr %7, i32 2
  store i32 0, ptr %159, align 4
  %160 = getelementptr inbounds %struct.pixel_ext, ptr %7, i32 0, i32 1, i32 2
  store i32 %156, ptr %160, align 4
  %161 = getelementptr inbounds %struct.pixel_ext, ptr %7, i32 0, i32 2
  %162 = getelementptr inbounds %struct.pixel_ext, ptr %7, i32 0, i32 3
  %163 = icmp ne i32 %57, %53
  %164 = or i1 %163, %153
  %165 = zext i1 %164 to i32
  store i32 0, ptr %161, align 4
  store i32 %165, ptr %162, align 4
  %166 = getelementptr inbounds %struct.pixel_ext, ptr %7, i32 0, i32 2, i32 1
  store i32 0, ptr %166, align 4
  %167 = getelementptr inbounds %struct.pixel_ext, ptr %7, i32 0, i32 3, i32 1
  store i32 %165, ptr %167, align 4
  %168 = getelementptr inbounds %struct.pixel_ext, ptr %7, i32 0, i32 2, i32 2
  store i32 0, ptr %168, align 4
  %169 = getelementptr inbounds %struct.pixel_ext, ptr %7, i32 0, i32 3, i32 2
  store i32 %165, ptr %169, align 4
  br label %170

170:                                              ; preds = %149, %131
  %171 = load i32, ptr %34, align 4
  %172 = tail call ptr @drm_format_info(i32 noundef %171) #8
  %173 = getelementptr inbounds %struct.mdp_format, ptr %34, i32 0, i32 12
  %174 = load i8, ptr %173, align 4, !range !9
  %175 = icmp eq i8 %174, 0
  %176 = icmp eq i32 %77, %76
  %177 = and i1 %176, %175
  br i1 %177, label %198, label %178

178:                                              ; preds = %170
  br i1 %175, label %179, label %182

179:                                              ; preds = %178
  %180 = icmp ugt i32 %77, %76
  %181 = select i1 %180, i32 2, i32 1
  br label %193

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.drm_format_info, ptr %172, i32 0, i32 6
  %184 = load i8, ptr %183, align 1
  %185 = trunc i32 %77 to i16
  %186 = zext i8 %184 to i16
  %187 = udiv i16 %185, %186
  %188 = zext i16 %187 to i32
  %189 = icmp ult i32 %76, %188
  %190 = icmp ugt i32 %77, %76
  %191 = select i1 %190, i32 2, i32 1
  %192 = select i1 %189, i32 8193, i32 4097
  br label %193

193:                                              ; preds = %182, %179
  %194 = phi i32 [ %191, %182 ], [ %181, %179 ]
  %195 = phi i32 [ %192, %182 ], [ 1, %179 ]
  %196 = mul nuw nsw i32 %194, 65792
  %197 = or i32 %195, %196
  br label %198

198:                                              ; preds = %193, %170
  %199 = phi i32 [ %197, %193 ], [ 0, %170 ]
  %200 = load i32, ptr %34, align 4
  %201 = tail call ptr @drm_format_info(i32 noundef %200) #8
  %202 = load i8, ptr %173, align 4, !range !9
  %203 = icmp eq i8 %202, 0
  %204 = icmp eq i32 %57, %53
  %205 = and i1 %204, %203
  br i1 %205, label %226, label %206

206:                                              ; preds = %198
  br i1 %203, label %207, label %210

207:                                              ; preds = %206
  %208 = icmp ugt i32 %57, %53
  %209 = select i1 %208, i32 2, i32 1
  br label %221

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.drm_format_info, ptr %201, i32 0, i32 7
  %212 = load i8, ptr %211, align 1
  %213 = trunc i32 %57 to i16
  %214 = zext i8 %212 to i16
  %215 = udiv i16 %213, %214
  %216 = zext i16 %215 to i32
  %217 = icmp ult i32 %53, %216
  %218 = icmp ugt i32 %57, %53
  %219 = select i1 %218, i32 2, i32 1
  %220 = select i1 %217, i32 32770, i32 16386
  br label %221

221:                                              ; preds = %210, %207
  %222 = phi i32 [ %219, %210 ], [ %209, %207 ]
  %223 = phi i32 [ %220, %210 ], [ 2, %207 ]
  %224 = mul nuw nsw i32 %222, 263168
  %225 = or i32 %223, %224
  br label %226

226:                                              ; preds = %221, %198
  %227 = phi i32 [ %225, %221 ], [ 0, %198 ]
  %228 = or i32 %227, %199
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %228) #8
  %229 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 14
  %230 = load i32, ptr %229, align 4
  %231 = tail call i32 @drm_rotation_simplify(i32 noundef %230, i32 noundef 49) #8
  %232 = and i32 %231, 16
  %233 = icmp ne i32 %232, 0
  %234 = and i32 %231, 32
  %235 = icmp ne i32 %234, 0
  call fastcc void @mdp5_hwpipe_mode_set(ptr noundef %16, ptr noundef %11, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %228, i1 noundef zeroext %233, i1 noundef zeroext %235, i32 noundef %45, i32 noundef %47, i32 noundef %76, i32 noundef %53, i32 noundef %78, i32 noundef %63, i32 noundef %54, i32 noundef %55, i32 noundef %77, i32 noundef %57)
  br i1 %72, label %239, label %236

236:                                              ; preds = %226
  %237 = add i32 %76, %45
  %238 = add nuw nsw i32 %77, %54
  call fastcc void @mdp5_hwpipe_mode_set(ptr noundef %16, ptr noundef nonnull %71, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %228, i1 noundef zeroext %233, i1 noundef zeroext %235, i32 noundef %237, i32 noundef %47, i32 noundef %76, i32 noundef %53, i32 noundef %78, i32 noundef %63, i32 noundef %238, i32 noundef %55, i32 noundef %77, i32 noundef %57)
  br label %239

239:                                              ; preds = %236, %226, %129, %95, %32
  %240 = phi i32 [ -22, %32 ], [ %96, %95 ], [ %130, %129 ], [ 0, %236 ], [ 0, %226 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  ret i32 %240
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mdp5_hwpipe_mode_set(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17) unnamed_addr #0 {
  %19 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %1, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @msm_framebuffer_format(ptr noundef %2) #8
  switch i32 %20, label %61 [
    i32 0, label %24
    i32 1, label %25
    i32 2, label %28
    i32 3, label %31
    i32 4, label %34
    i32 5, label %37
    i32 6, label %40
    i32 7, label %43
    i32 8, label %46
    i32 9, label %49
    i32 10, label %52
    i32 11, label %55
    i32 12, label %58
  ]

24:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 550, 0\0A.popsection", ""() #8, !srcloc !13
  unreachable

25:                                               ; preds = %18
  %26 = load ptr, ptr @mdp5_cfg, align 4
  %27 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %26, i32 0, i32 4, i32 1
  br label %62

28:                                               ; preds = %18
  %29 = load ptr, ptr @mdp5_cfg, align 4
  %30 = getelementptr %struct.mdp5_cfg_hw, ptr %29, i32 0, i32 4, i32 1, i32 1
  br label %62

31:                                               ; preds = %18
  %32 = load ptr, ptr @mdp5_cfg, align 4
  %33 = getelementptr %struct.mdp5_cfg_hw, ptr %32, i32 0, i32 4, i32 1, i32 2
  br label %62

34:                                               ; preds = %18
  %35 = load ptr, ptr @mdp5_cfg, align 4
  %36 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %35, i32 0, i32 5, i32 1
  br label %62

37:                                               ; preds = %18
  %38 = load ptr, ptr @mdp5_cfg, align 4
  %39 = getelementptr %struct.mdp5_cfg_hw, ptr %38, i32 0, i32 5, i32 1, i32 1
  br label %62

40:                                               ; preds = %18
  %41 = load ptr, ptr @mdp5_cfg, align 4
  %42 = getelementptr %struct.mdp5_cfg_hw, ptr %41, i32 0, i32 5, i32 1, i32 2
  br label %62

43:                                               ; preds = %18
  %44 = load ptr, ptr @mdp5_cfg, align 4
  %45 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %44, i32 0, i32 6, i32 1
  br label %62

46:                                               ; preds = %18
  %47 = load ptr, ptr @mdp5_cfg, align 4
  %48 = getelementptr %struct.mdp5_cfg_hw, ptr %47, i32 0, i32 6, i32 1, i32 1
  br label %62

49:                                               ; preds = %18
  %50 = load ptr, ptr @mdp5_cfg, align 4
  %51 = getelementptr %struct.mdp5_cfg_hw, ptr %50, i32 0, i32 4, i32 1, i32 3
  br label %62

52:                                               ; preds = %18
  %53 = load ptr, ptr @mdp5_cfg, align 4
  %54 = getelementptr %struct.mdp5_cfg_hw, ptr %53, i32 0, i32 5, i32 1, i32 3
  br label %62

55:                                               ; preds = %18
  %56 = load ptr, ptr @mdp5_cfg, align 4
  %57 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %56, i32 0, i32 7, i32 1
  br label %62

58:                                               ; preds = %18
  %59 = load ptr, ptr @mdp5_cfg, align 4
  %60 = getelementptr %struct.mdp5_cfg_hw, ptr %59, i32 0, i32 7, i32 1, i32 1
  br label %62

61:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

62:                                               ; preds = %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25
  %63 = phi ptr [ %60, %58 ], [ %57, %55 ], [ %54, %52 ], [ %51, %49 ], [ %48, %46 ], [ %45, %43 ], [ %42, %40 ], [ %39, %37 ], [ %36, %34 ], [ %33, %31 ], [ %30, %28 ], [ %27, %25 ]
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 4
  %66 = and i32 %12, 65535
  %67 = shl i32 %13, 16
  %68 = or i32 %67, %66
  %69 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 26
  %70 = load i32, ptr %69, align 8
  %71 = icmp slt i32 %70, 1
  br i1 %71, label %72, label %73, !prof !8

72:                                               ; preds = %62
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %73

73:                                               ; preds = %72, %62
  %74 = getelementptr inbounds %struct.mdp5_kms, ptr %0, i32 0, i32 15
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 %65
  tail call void @msm_writel(i32 noundef %68, ptr noundef %76) #8
  switch i32 %20, label %113 [
    i32 12, label %110
    i32 1, label %77
    i32 2, label %80
    i32 3, label %83
    i32 4, label %86
    i32 5, label %89
    i32 6, label %92
    i32 7, label %95
    i32 8, label %98
    i32 9, label %101
    i32 10, label %104
    i32 11, label %107
  ]

77:                                               ; preds = %73
  %78 = load ptr, ptr @mdp5_cfg, align 4
  %79 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %78, i32 0, i32 4, i32 1
  br label %114

80:                                               ; preds = %73
  %81 = load ptr, ptr @mdp5_cfg, align 4
  %82 = getelementptr %struct.mdp5_cfg_hw, ptr %81, i32 0, i32 4, i32 1, i32 1
  br label %114

83:                                               ; preds = %73
  %84 = load ptr, ptr @mdp5_cfg, align 4
  %85 = getelementptr %struct.mdp5_cfg_hw, ptr %84, i32 0, i32 4, i32 1, i32 2
  br label %114

86:                                               ; preds = %73
  %87 = load ptr, ptr @mdp5_cfg, align 4
  %88 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %87, i32 0, i32 5, i32 1
  br label %114

89:                                               ; preds = %73
  %90 = load ptr, ptr @mdp5_cfg, align 4
  %91 = getelementptr %struct.mdp5_cfg_hw, ptr %90, i32 0, i32 5, i32 1, i32 1
  br label %114

92:                                               ; preds = %73
  %93 = load ptr, ptr @mdp5_cfg, align 4
  %94 = getelementptr %struct.mdp5_cfg_hw, ptr %93, i32 0, i32 5, i32 1, i32 2
  br label %114

95:                                               ; preds = %73
  %96 = load ptr, ptr @mdp5_cfg, align 4
  %97 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %96, i32 0, i32 6, i32 1
  br label %114

98:                                               ; preds = %73
  %99 = load ptr, ptr @mdp5_cfg, align 4
  %100 = getelementptr %struct.mdp5_cfg_hw, ptr %99, i32 0, i32 6, i32 1, i32 1
  br label %114

101:                                              ; preds = %73
  %102 = load ptr, ptr @mdp5_cfg, align 4
  %103 = getelementptr %struct.mdp5_cfg_hw, ptr %102, i32 0, i32 4, i32 1, i32 3
  br label %114

104:                                              ; preds = %73
  %105 = load ptr, ptr @mdp5_cfg, align 4
  %106 = getelementptr %struct.mdp5_cfg_hw, ptr %105, i32 0, i32 5, i32 1, i32 3
  br label %114

107:                                              ; preds = %73
  %108 = load ptr, ptr @mdp5_cfg, align 4
  %109 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %108, i32 0, i32 7, i32 1
  br label %114

110:                                              ; preds = %73
  %111 = load ptr, ptr @mdp5_cfg, align 4
  %112 = getelementptr %struct.mdp5_cfg_hw, ptr %111, i32 0, i32 7, i32 1, i32 1
  br label %114

113:                                              ; preds = %73
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

114:                                              ; preds = %110, %107, %104, %101, %98, %95, %92, %89, %86, %83, %80, %77
  %115 = phi ptr [ %112, %110 ], [ %109, %107 ], [ %106, %104 ], [ %103, %101 ], [ %100, %98 ], [ %97, %95 ], [ %94, %92 ], [ %91, %89 ], [ %88, %86 ], [ %85, %83 ], [ %82, %80 ], [ %79, %77 ]
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %16, 65535
  %118 = shl i32 %17, 16
  %119 = or i32 %118, %117
  %120 = load i32, ptr %69, align 8
  %121 = icmp slt i32 %120, 1
  br i1 %121, label %122, label %123, !prof !8

122:                                              ; preds = %114
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %123

123:                                              ; preds = %122, %114
  %124 = load ptr, ptr %74, align 4
  %125 = getelementptr i8, ptr %124, i32 %116
  tail call void @msm_writel(i32 noundef %119, ptr noundef %125) #8
  switch i32 %20, label %162 [
    i32 12, label %159
    i32 1, label %126
    i32 2, label %129
    i32 3, label %132
    i32 4, label %135
    i32 5, label %138
    i32 6, label %141
    i32 7, label %144
    i32 8, label %147
    i32 9, label %150
    i32 10, label %153
    i32 11, label %156
  ]

126:                                              ; preds = %123
  %127 = load ptr, ptr @mdp5_cfg, align 4
  %128 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %127, i32 0, i32 4, i32 1
  br label %163

129:                                              ; preds = %123
  %130 = load ptr, ptr @mdp5_cfg, align 4
  %131 = getelementptr %struct.mdp5_cfg_hw, ptr %130, i32 0, i32 4, i32 1, i32 1
  br label %163

132:                                              ; preds = %123
  %133 = load ptr, ptr @mdp5_cfg, align 4
  %134 = getelementptr %struct.mdp5_cfg_hw, ptr %133, i32 0, i32 4, i32 1, i32 2
  br label %163

135:                                              ; preds = %123
  %136 = load ptr, ptr @mdp5_cfg, align 4
  %137 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %136, i32 0, i32 5, i32 1
  br label %163

138:                                              ; preds = %123
  %139 = load ptr, ptr @mdp5_cfg, align 4
  %140 = getelementptr %struct.mdp5_cfg_hw, ptr %139, i32 0, i32 5, i32 1, i32 1
  br label %163

141:                                              ; preds = %123
  %142 = load ptr, ptr @mdp5_cfg, align 4
  %143 = getelementptr %struct.mdp5_cfg_hw, ptr %142, i32 0, i32 5, i32 1, i32 2
  br label %163

144:                                              ; preds = %123
  %145 = load ptr, ptr @mdp5_cfg, align 4
  %146 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %145, i32 0, i32 6, i32 1
  br label %163

147:                                              ; preds = %123
  %148 = load ptr, ptr @mdp5_cfg, align 4
  %149 = getelementptr %struct.mdp5_cfg_hw, ptr %148, i32 0, i32 6, i32 1, i32 1
  br label %163

150:                                              ; preds = %123
  %151 = load ptr, ptr @mdp5_cfg, align 4
  %152 = getelementptr %struct.mdp5_cfg_hw, ptr %151, i32 0, i32 4, i32 1, i32 3
  br label %163

153:                                              ; preds = %123
  %154 = load ptr, ptr @mdp5_cfg, align 4
  %155 = getelementptr %struct.mdp5_cfg_hw, ptr %154, i32 0, i32 5, i32 1, i32 3
  br label %163

156:                                              ; preds = %123
  %157 = load ptr, ptr @mdp5_cfg, align 4
  %158 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %157, i32 0, i32 7, i32 1
  br label %163

159:                                              ; preds = %123
  %160 = load ptr, ptr @mdp5_cfg, align 4
  %161 = getelementptr %struct.mdp5_cfg_hw, ptr %160, i32 0, i32 7, i32 1, i32 1
  br label %163

162:                                              ; preds = %123
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

163:                                              ; preds = %159, %156, %153, %150, %147, %144, %141, %138, %135, %132, %129, %126
  %164 = phi ptr [ %161, %159 ], [ %158, %156 ], [ %155, %153 ], [ %152, %150 ], [ %149, %147 ], [ %146, %144 ], [ %143, %141 ], [ %140, %138 ], [ %137, %135 ], [ %134, %132 ], [ %131, %129 ], [ %128, %126 ]
  %165 = load i32, ptr %164, align 4
  %166 = add i32 %165, 8
  %167 = and i32 %14, 65535
  %168 = shl i32 %15, 16
  %169 = or i32 %168, %167
  %170 = load i32, ptr %69, align 8
  %171 = icmp slt i32 %170, 1
  br i1 %171, label %172, label %173, !prof !8

172:                                              ; preds = %163
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %173

173:                                              ; preds = %172, %163
  %174 = load ptr, ptr %74, align 4
  %175 = getelementptr i8, ptr %174, i32 %166
  tail call void @msm_writel(i32 noundef %169, ptr noundef %175) #8
  switch i32 %20, label %212 [
    i32 12, label %209
    i32 1, label %176
    i32 2, label %179
    i32 3, label %182
    i32 4, label %185
    i32 5, label %188
    i32 6, label %191
    i32 7, label %194
    i32 8, label %197
    i32 9, label %200
    i32 10, label %203
    i32 11, label %206
  ]

176:                                              ; preds = %173
  %177 = load ptr, ptr @mdp5_cfg, align 4
  %178 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %177, i32 0, i32 4, i32 1
  br label %213

179:                                              ; preds = %173
  %180 = load ptr, ptr @mdp5_cfg, align 4
  %181 = getelementptr %struct.mdp5_cfg_hw, ptr %180, i32 0, i32 4, i32 1, i32 1
  br label %213

182:                                              ; preds = %173
  %183 = load ptr, ptr @mdp5_cfg, align 4
  %184 = getelementptr %struct.mdp5_cfg_hw, ptr %183, i32 0, i32 4, i32 1, i32 2
  br label %213

185:                                              ; preds = %173
  %186 = load ptr, ptr @mdp5_cfg, align 4
  %187 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %186, i32 0, i32 5, i32 1
  br label %213

188:                                              ; preds = %173
  %189 = load ptr, ptr @mdp5_cfg, align 4
  %190 = getelementptr %struct.mdp5_cfg_hw, ptr %189, i32 0, i32 5, i32 1, i32 1
  br label %213

191:                                              ; preds = %173
  %192 = load ptr, ptr @mdp5_cfg, align 4
  %193 = getelementptr %struct.mdp5_cfg_hw, ptr %192, i32 0, i32 5, i32 1, i32 2
  br label %213

194:                                              ; preds = %173
  %195 = load ptr, ptr @mdp5_cfg, align 4
  %196 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %195, i32 0, i32 6, i32 1
  br label %213

197:                                              ; preds = %173
  %198 = load ptr, ptr @mdp5_cfg, align 4
  %199 = getelementptr %struct.mdp5_cfg_hw, ptr %198, i32 0, i32 6, i32 1, i32 1
  br label %213

200:                                              ; preds = %173
  %201 = load ptr, ptr @mdp5_cfg, align 4
  %202 = getelementptr %struct.mdp5_cfg_hw, ptr %201, i32 0, i32 4, i32 1, i32 3
  br label %213

203:                                              ; preds = %173
  %204 = load ptr, ptr @mdp5_cfg, align 4
  %205 = getelementptr %struct.mdp5_cfg_hw, ptr %204, i32 0, i32 5, i32 1, i32 3
  br label %213

206:                                              ; preds = %173
  %207 = load ptr, ptr @mdp5_cfg, align 4
  %208 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %207, i32 0, i32 7, i32 1
  br label %213

209:                                              ; preds = %173
  %210 = load ptr, ptr @mdp5_cfg, align 4
  %211 = getelementptr %struct.mdp5_cfg_hw, ptr %210, i32 0, i32 7, i32 1, i32 1
  br label %213

212:                                              ; preds = %173
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

213:                                              ; preds = %209, %206, %203, %200, %197, %194, %191, %188, %185, %182, %179, %176
  %214 = phi ptr [ %211, %209 ], [ %208, %206 ], [ %205, %203 ], [ %202, %200 ], [ %199, %197 ], [ %196, %194 ], [ %193, %191 ], [ %190, %188 ], [ %187, %185 ], [ %184, %182 ], [ %181, %179 ], [ %178, %176 ]
  %215 = load i32, ptr %214, align 4
  %216 = add i32 %215, 12
  %217 = and i32 %10, 65535
  %218 = shl i32 %11, 16
  %219 = or i32 %218, %217
  %220 = load i32, ptr %69, align 8
  %221 = icmp slt i32 %220, 1
  br i1 %221, label %222, label %223, !prof !8

222:                                              ; preds = %213
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %223

223:                                              ; preds = %222, %213
  %224 = load ptr, ptr %74, align 4
  %225 = getelementptr i8, ptr %224, i32 %216
  tail call void @msm_writel(i32 noundef %219, ptr noundef %225) #8
  switch i32 %20, label %262 [
    i32 12, label %259
    i32 1, label %226
    i32 2, label %229
    i32 3, label %232
    i32 4, label %235
    i32 5, label %238
    i32 6, label %241
    i32 7, label %244
    i32 8, label %247
    i32 9, label %250
    i32 10, label %253
    i32 11, label %256
  ]

226:                                              ; preds = %223
  %227 = load ptr, ptr @mdp5_cfg, align 4
  %228 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %227, i32 0, i32 4, i32 1
  br label %263

229:                                              ; preds = %223
  %230 = load ptr, ptr @mdp5_cfg, align 4
  %231 = getelementptr %struct.mdp5_cfg_hw, ptr %230, i32 0, i32 4, i32 1, i32 1
  br label %263

232:                                              ; preds = %223
  %233 = load ptr, ptr @mdp5_cfg, align 4
  %234 = getelementptr %struct.mdp5_cfg_hw, ptr %233, i32 0, i32 4, i32 1, i32 2
  br label %263

235:                                              ; preds = %223
  %236 = load ptr, ptr @mdp5_cfg, align 4
  %237 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %236, i32 0, i32 5, i32 1
  br label %263

238:                                              ; preds = %223
  %239 = load ptr, ptr @mdp5_cfg, align 4
  %240 = getelementptr %struct.mdp5_cfg_hw, ptr %239, i32 0, i32 5, i32 1, i32 1
  br label %263

241:                                              ; preds = %223
  %242 = load ptr, ptr @mdp5_cfg, align 4
  %243 = getelementptr %struct.mdp5_cfg_hw, ptr %242, i32 0, i32 5, i32 1, i32 2
  br label %263

244:                                              ; preds = %223
  %245 = load ptr, ptr @mdp5_cfg, align 4
  %246 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %245, i32 0, i32 6, i32 1
  br label %263

247:                                              ; preds = %223
  %248 = load ptr, ptr @mdp5_cfg, align 4
  %249 = getelementptr %struct.mdp5_cfg_hw, ptr %248, i32 0, i32 6, i32 1, i32 1
  br label %263

250:                                              ; preds = %223
  %251 = load ptr, ptr @mdp5_cfg, align 4
  %252 = getelementptr %struct.mdp5_cfg_hw, ptr %251, i32 0, i32 4, i32 1, i32 3
  br label %263

253:                                              ; preds = %223
  %254 = load ptr, ptr @mdp5_cfg, align 4
  %255 = getelementptr %struct.mdp5_cfg_hw, ptr %254, i32 0, i32 5, i32 1, i32 3
  br label %263

256:                                              ; preds = %223
  %257 = load ptr, ptr @mdp5_cfg, align 4
  %258 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %257, i32 0, i32 7, i32 1
  br label %263

259:                                              ; preds = %223
  %260 = load ptr, ptr @mdp5_cfg, align 4
  %261 = getelementptr %struct.mdp5_cfg_hw, ptr %260, i32 0, i32 7, i32 1, i32 1
  br label %263

262:                                              ; preds = %223
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

263:                                              ; preds = %259, %256, %253, %250, %247, %244, %241, %238, %235, %232, %229, %226
  %264 = phi ptr [ %261, %259 ], [ %258, %256 ], [ %255, %253 ], [ %252, %250 ], [ %249, %247 ], [ %246, %244 ], [ %243, %241 ], [ %240, %238 ], [ %237, %235 ], [ %234, %232 ], [ %231, %229 ], [ %228, %226 ]
  %265 = load i32, ptr %264, align 4
  %266 = add i32 %265, 16
  %267 = and i32 %8, 65535
  %268 = shl i32 %9, 16
  %269 = or i32 %268, %267
  %270 = load i32, ptr %69, align 8
  %271 = icmp slt i32 %270, 1
  br i1 %271, label %272, label %273, !prof !8

272:                                              ; preds = %263
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %273

273:                                              ; preds = %272, %263
  %274 = load ptr, ptr %74, align 4
  %275 = getelementptr i8, ptr %274, i32 %266
  tail call void @msm_writel(i32 noundef %269, ptr noundef %275) #8
  switch i32 %20, label %312 [
    i32 12, label %309
    i32 1, label %276
    i32 2, label %279
    i32 3, label %282
    i32 4, label %285
    i32 5, label %288
    i32 6, label %291
    i32 7, label %294
    i32 8, label %297
    i32 9, label %300
    i32 10, label %303
    i32 11, label %306
  ]

276:                                              ; preds = %273
  %277 = load ptr, ptr @mdp5_cfg, align 4
  %278 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %277, i32 0, i32 4, i32 1
  br label %313

279:                                              ; preds = %273
  %280 = load ptr, ptr @mdp5_cfg, align 4
  %281 = getelementptr %struct.mdp5_cfg_hw, ptr %280, i32 0, i32 4, i32 1, i32 1
  br label %313

282:                                              ; preds = %273
  %283 = load ptr, ptr @mdp5_cfg, align 4
  %284 = getelementptr %struct.mdp5_cfg_hw, ptr %283, i32 0, i32 4, i32 1, i32 2
  br label %313

285:                                              ; preds = %273
  %286 = load ptr, ptr @mdp5_cfg, align 4
  %287 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %286, i32 0, i32 5, i32 1
  br label %313

288:                                              ; preds = %273
  %289 = load ptr, ptr @mdp5_cfg, align 4
  %290 = getelementptr %struct.mdp5_cfg_hw, ptr %289, i32 0, i32 5, i32 1, i32 1
  br label %313

291:                                              ; preds = %273
  %292 = load ptr, ptr @mdp5_cfg, align 4
  %293 = getelementptr %struct.mdp5_cfg_hw, ptr %292, i32 0, i32 5, i32 1, i32 2
  br label %313

294:                                              ; preds = %273
  %295 = load ptr, ptr @mdp5_cfg, align 4
  %296 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %295, i32 0, i32 6, i32 1
  br label %313

297:                                              ; preds = %273
  %298 = load ptr, ptr @mdp5_cfg, align 4
  %299 = getelementptr %struct.mdp5_cfg_hw, ptr %298, i32 0, i32 6, i32 1, i32 1
  br label %313

300:                                              ; preds = %273
  %301 = load ptr, ptr @mdp5_cfg, align 4
  %302 = getelementptr %struct.mdp5_cfg_hw, ptr %301, i32 0, i32 4, i32 1, i32 3
  br label %313

303:                                              ; preds = %273
  %304 = load ptr, ptr @mdp5_cfg, align 4
  %305 = getelementptr %struct.mdp5_cfg_hw, ptr %304, i32 0, i32 5, i32 1, i32 3
  br label %313

306:                                              ; preds = %273
  %307 = load ptr, ptr @mdp5_cfg, align 4
  %308 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %307, i32 0, i32 7, i32 1
  br label %313

309:                                              ; preds = %273
  %310 = load ptr, ptr @mdp5_cfg, align 4
  %311 = getelementptr %struct.mdp5_cfg_hw, ptr %310, i32 0, i32 7, i32 1, i32 1
  br label %313

312:                                              ; preds = %273
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

313:                                              ; preds = %309, %306, %303, %300, %297, %294, %291, %288, %285, %282, %279, %276
  %314 = phi ptr [ %311, %309 ], [ %308, %306 ], [ %305, %303 ], [ %302, %300 ], [ %299, %297 ], [ %296, %294 ], [ %293, %291 ], [ %290, %288 ], [ %287, %285 ], [ %284, %282 ], [ %281, %279 ], [ %278, %276 ]
  %315 = load i32, ptr %314, align 4
  %316 = add i32 %315, 48
  %317 = getelementptr inbounds %struct.mdp_format, ptr %23, i32 0, i32 4
  %318 = load i32, ptr %317, align 4
  %319 = shl i32 %318, 6
  %320 = and i32 %319, 192
  %321 = getelementptr inbounds %struct.mdp_format, ptr %23, i32 0, i32 1
  %322 = load i32, ptr %321, align 4
  %323 = shl i32 %322, 4
  %324 = and i32 %323, 48
  %325 = or i32 %324, %320
  %326 = getelementptr inbounds %struct.mdp_format, ptr %23, i32 0, i32 2
  %327 = load i32, ptr %326, align 4
  %328 = and i32 %327, 3
  %329 = or i32 %325, %328
  %330 = getelementptr inbounds %struct.mdp_format, ptr %23, i32 0, i32 3
  %331 = load i32, ptr %330, align 4
  %332 = shl i32 %331, 2
  %333 = and i32 %332, 12
  %334 = or i32 %329, %333
  %335 = getelementptr inbounds %struct.mdp_format, ptr %23, i32 0, i32 6
  %336 = load i8, ptr %335, align 4, !range !9
  %337 = icmp eq i8 %336, 0
  %338 = select i1 %337, i32 0, i32 256
  %339 = or i32 %334, %338
  %340 = getelementptr inbounds %struct.mdp_format, ptr %23, i32 0, i32 8
  %341 = load i8, ptr %340, align 2
  %342 = zext i8 %341 to i32
  %343 = shl nuw nsw i32 %342, 9
  %344 = add nuw nsw i32 %343, 1536
  %345 = and i32 %344, 1536
  %346 = or i32 %339, %345
  %347 = getelementptr inbounds %struct.mdp_format, ptr %23, i32 0, i32 9
  %348 = load i8, ptr %347, align 1
  %349 = zext i8 %348 to i32
  %350 = shl nuw nsw i32 %349, 12
  %351 = add nuw nsw i32 %350, 12288
  %352 = and i32 %351, 12288
  %353 = getelementptr inbounds %struct.mdp_format, ptr %23, i32 0, i32 7
  %354 = load i8, ptr %353, align 1, !range !9
  %355 = icmp eq i8 %354, 0
  %356 = select i1 %355, i32 0, i32 131072
  %357 = getelementptr inbounds %struct.mdp_format, ptr %23, i32 0, i32 10
  %358 = load i32, ptr %357, align 4
  %359 = shl i32 %358, 19
  %360 = and i32 %359, 1572864
  %361 = getelementptr inbounds %struct.mdp_format, ptr %23, i32 0, i32 11
  %362 = load i32, ptr %361, align 4
  %363 = shl i32 %362, 23
  %364 = and i32 %363, 25165824
  %365 = or i32 %346, %356
  %366 = or i32 %365, %352
  %367 = or i32 %366, %360
  %368 = or i32 %367, %364
  %369 = load i32, ptr %69, align 8
  %370 = icmp slt i32 %369, 1
  br i1 %370, label %371, label %372, !prof !8

371:                                              ; preds = %313
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %372

372:                                              ; preds = %371, %313
  %373 = load ptr, ptr %74, align 4
  %374 = getelementptr i8, ptr %373, i32 %316
  tail call void @msm_writel(i32 noundef %368, ptr noundef %374) #8
  switch i32 %20, label %411 [
    i32 12, label %408
    i32 1, label %375
    i32 2, label %378
    i32 3, label %381
    i32 4, label %384
    i32 5, label %387
    i32 6, label %390
    i32 7, label %393
    i32 8, label %396
    i32 9, label %399
    i32 10, label %402
    i32 11, label %405
  ]

375:                                              ; preds = %372
  %376 = load ptr, ptr @mdp5_cfg, align 4
  %377 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %376, i32 0, i32 4, i32 1
  br label %412

378:                                              ; preds = %372
  %379 = load ptr, ptr @mdp5_cfg, align 4
  %380 = getelementptr %struct.mdp5_cfg_hw, ptr %379, i32 0, i32 4, i32 1, i32 1
  br label %412

381:                                              ; preds = %372
  %382 = load ptr, ptr @mdp5_cfg, align 4
  %383 = getelementptr %struct.mdp5_cfg_hw, ptr %382, i32 0, i32 4, i32 1, i32 2
  br label %412

384:                                              ; preds = %372
  %385 = load ptr, ptr @mdp5_cfg, align 4
  %386 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %385, i32 0, i32 5, i32 1
  br label %412

387:                                              ; preds = %372
  %388 = load ptr, ptr @mdp5_cfg, align 4
  %389 = getelementptr %struct.mdp5_cfg_hw, ptr %388, i32 0, i32 5, i32 1, i32 1
  br label %412

390:                                              ; preds = %372
  %391 = load ptr, ptr @mdp5_cfg, align 4
  %392 = getelementptr %struct.mdp5_cfg_hw, ptr %391, i32 0, i32 5, i32 1, i32 2
  br label %412

393:                                              ; preds = %372
  %394 = load ptr, ptr @mdp5_cfg, align 4
  %395 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %394, i32 0, i32 6, i32 1
  br label %412

396:                                              ; preds = %372
  %397 = load ptr, ptr @mdp5_cfg, align 4
  %398 = getelementptr %struct.mdp5_cfg_hw, ptr %397, i32 0, i32 6, i32 1, i32 1
  br label %412

399:                                              ; preds = %372
  %400 = load ptr, ptr @mdp5_cfg, align 4
  %401 = getelementptr %struct.mdp5_cfg_hw, ptr %400, i32 0, i32 4, i32 1, i32 3
  br label %412

402:                                              ; preds = %372
  %403 = load ptr, ptr @mdp5_cfg, align 4
  %404 = getelementptr %struct.mdp5_cfg_hw, ptr %403, i32 0, i32 5, i32 1, i32 3
  br label %412

405:                                              ; preds = %372
  %406 = load ptr, ptr @mdp5_cfg, align 4
  %407 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %406, i32 0, i32 7, i32 1
  br label %412

408:                                              ; preds = %372
  %409 = load ptr, ptr @mdp5_cfg, align 4
  %410 = getelementptr %struct.mdp5_cfg_hw, ptr %409, i32 0, i32 7, i32 1, i32 1
  br label %412

411:                                              ; preds = %372
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

412:                                              ; preds = %408, %405, %402, %399, %396, %393, %390, %387, %384, %381, %378, %375
  %413 = phi ptr [ %410, %408 ], [ %407, %405 ], [ %404, %402 ], [ %401, %399 ], [ %398, %396 ], [ %395, %393 ], [ %392, %390 ], [ %389, %387 ], [ %386, %384 ], [ %383, %381 ], [ %380, %378 ], [ %377, %375 ]
  %414 = load i32, ptr %413, align 4
  %415 = add i32 %414, 52
  %416 = getelementptr inbounds %struct.mdp_format, ptr %23, i32 0, i32 5
  %417 = load i8, ptr %416, align 4
  %418 = zext i8 %417 to i32
  %419 = getelementptr %struct.mdp_format, ptr %23, i32 0, i32 5, i32 1
  %420 = load i8, ptr %419, align 1
  %421 = zext i8 %420 to i32
  %422 = shl nuw nsw i32 %421, 8
  %423 = or i32 %422, %418
  %424 = getelementptr %struct.mdp_format, ptr %23, i32 0, i32 5, i32 2
  %425 = load i8, ptr %424, align 2
  %426 = zext i8 %425 to i32
  %427 = shl nuw nsw i32 %426, 16
  %428 = or i32 %423, %427
  %429 = getelementptr %struct.mdp_format, ptr %23, i32 0, i32 5, i32 3
  %430 = load i8, ptr %429, align 1
  %431 = zext i8 %430 to i32
  %432 = shl nuw i32 %431, 24
  %433 = or i32 %428, %432
  %434 = load i32, ptr %69, align 8
  %435 = icmp slt i32 %434, 1
  br i1 %435, label %436, label %437, !prof !8

436:                                              ; preds = %412
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %437

437:                                              ; preds = %436, %412
  %438 = load ptr, ptr %74, align 4
  %439 = getelementptr i8, ptr %438, i32 %415
  tail call void @msm_writel(i32 noundef %433, ptr noundef %439) #8
  switch i32 %20, label %476 [
    i32 12, label %473
    i32 1, label %440
    i32 2, label %443
    i32 3, label %446
    i32 4, label %449
    i32 5, label %452
    i32 6, label %455
    i32 7, label %458
    i32 8, label %461
    i32 9, label %464
    i32 10, label %467
    i32 11, label %470
  ]

440:                                              ; preds = %437
  %441 = load ptr, ptr @mdp5_cfg, align 4
  %442 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %441, i32 0, i32 4, i32 1
  br label %477

443:                                              ; preds = %437
  %444 = load ptr, ptr @mdp5_cfg, align 4
  %445 = getelementptr %struct.mdp5_cfg_hw, ptr %444, i32 0, i32 4, i32 1, i32 1
  br label %477

446:                                              ; preds = %437
  %447 = load ptr, ptr @mdp5_cfg, align 4
  %448 = getelementptr %struct.mdp5_cfg_hw, ptr %447, i32 0, i32 4, i32 1, i32 2
  br label %477

449:                                              ; preds = %437
  %450 = load ptr, ptr @mdp5_cfg, align 4
  %451 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %450, i32 0, i32 5, i32 1
  br label %477

452:                                              ; preds = %437
  %453 = load ptr, ptr @mdp5_cfg, align 4
  %454 = getelementptr %struct.mdp5_cfg_hw, ptr %453, i32 0, i32 5, i32 1, i32 1
  br label %477

455:                                              ; preds = %437
  %456 = load ptr, ptr @mdp5_cfg, align 4
  %457 = getelementptr %struct.mdp5_cfg_hw, ptr %456, i32 0, i32 5, i32 1, i32 2
  br label %477

458:                                              ; preds = %437
  %459 = load ptr, ptr @mdp5_cfg, align 4
  %460 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %459, i32 0, i32 6, i32 1
  br label %477

461:                                              ; preds = %437
  %462 = load ptr, ptr @mdp5_cfg, align 4
  %463 = getelementptr %struct.mdp5_cfg_hw, ptr %462, i32 0, i32 6, i32 1, i32 1
  br label %477

464:                                              ; preds = %437
  %465 = load ptr, ptr @mdp5_cfg, align 4
  %466 = getelementptr %struct.mdp5_cfg_hw, ptr %465, i32 0, i32 4, i32 1, i32 3
  br label %477

467:                                              ; preds = %437
  %468 = load ptr, ptr @mdp5_cfg, align 4
  %469 = getelementptr %struct.mdp5_cfg_hw, ptr %468, i32 0, i32 5, i32 1, i32 3
  br label %477

470:                                              ; preds = %437
  %471 = load ptr, ptr @mdp5_cfg, align 4
  %472 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %471, i32 0, i32 7, i32 1
  br label %477

473:                                              ; preds = %437
  %474 = load ptr, ptr @mdp5_cfg, align 4
  %475 = getelementptr %struct.mdp5_cfg_hw, ptr %474, i32 0, i32 7, i32 1, i32 1
  br label %477

476:                                              ; preds = %437
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

477:                                              ; preds = %473, %470, %467, %464, %461, %458, %455, %452, %449, %446, %443, %440
  %478 = phi ptr [ %475, %473 ], [ %472, %470 ], [ %469, %467 ], [ %466, %464 ], [ %463, %461 ], [ %460, %458 ], [ %457, %455 ], [ %454, %452 ], [ %451, %449 ], [ %448, %446 ], [ %445, %443 ], [ %442, %440 ]
  %479 = load i32, ptr %478, align 4
  %480 = add i32 %479, 56
  %481 = select i1 %6, i32 8192, i32 0
  %482 = select i1 %7, i32 16384, i32 0
  %483 = or i32 %482, %481
  %484 = shl i32 %22, 26
  %485 = and i32 %484, -2147483648
  %486 = or i32 %483, %485
  %487 = load i32, ptr %69, align 8
  %488 = icmp slt i32 %487, 1
  br i1 %488, label %489, label %490, !prof !8

489:                                              ; preds = %477
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %490

490:                                              ; preds = %489, %477
  %491 = load ptr, ptr %74, align 4
  %492 = getelementptr i8, ptr %491, i32 %480
  tail call void @msm_writel(i32 noundef %486, ptr noundef %492) #8
  switch i32 %20, label %529 [
    i32 12, label %526
    i32 1, label %493
    i32 2, label %496
    i32 3, label %499
    i32 4, label %502
    i32 5, label %505
    i32 6, label %508
    i32 7, label %511
    i32 8, label %514
    i32 9, label %517
    i32 10, label %520
    i32 11, label %523
  ]

493:                                              ; preds = %490
  %494 = load ptr, ptr @mdp5_cfg, align 4
  %495 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %494, i32 0, i32 4, i32 1
  br label %530

496:                                              ; preds = %490
  %497 = load ptr, ptr @mdp5_cfg, align 4
  %498 = getelementptr %struct.mdp5_cfg_hw, ptr %497, i32 0, i32 4, i32 1, i32 1
  br label %530

499:                                              ; preds = %490
  %500 = load ptr, ptr @mdp5_cfg, align 4
  %501 = getelementptr %struct.mdp5_cfg_hw, ptr %500, i32 0, i32 4, i32 1, i32 2
  br label %530

502:                                              ; preds = %490
  %503 = load ptr, ptr @mdp5_cfg, align 4
  %504 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %503, i32 0, i32 5, i32 1
  br label %530

505:                                              ; preds = %490
  %506 = load ptr, ptr @mdp5_cfg, align 4
  %507 = getelementptr %struct.mdp5_cfg_hw, ptr %506, i32 0, i32 5, i32 1, i32 1
  br label %530

508:                                              ; preds = %490
  %509 = load ptr, ptr @mdp5_cfg, align 4
  %510 = getelementptr %struct.mdp5_cfg_hw, ptr %509, i32 0, i32 5, i32 1, i32 2
  br label %530

511:                                              ; preds = %490
  %512 = load ptr, ptr @mdp5_cfg, align 4
  %513 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %512, i32 0, i32 6, i32 1
  br label %530

514:                                              ; preds = %490
  %515 = load ptr, ptr @mdp5_cfg, align 4
  %516 = getelementptr %struct.mdp5_cfg_hw, ptr %515, i32 0, i32 6, i32 1, i32 1
  br label %530

517:                                              ; preds = %490
  %518 = load ptr, ptr @mdp5_cfg, align 4
  %519 = getelementptr %struct.mdp5_cfg_hw, ptr %518, i32 0, i32 4, i32 1, i32 3
  br label %530

520:                                              ; preds = %490
  %521 = load ptr, ptr @mdp5_cfg, align 4
  %522 = getelementptr %struct.mdp5_cfg_hw, ptr %521, i32 0, i32 5, i32 1, i32 3
  br label %530

523:                                              ; preds = %490
  %524 = load ptr, ptr @mdp5_cfg, align 4
  %525 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %524, i32 0, i32 7, i32 1
  br label %530

526:                                              ; preds = %490
  %527 = load ptr, ptr @mdp5_cfg, align 4
  %528 = getelementptr %struct.mdp5_cfg_hw, ptr %527, i32 0, i32 7, i32 1, i32 1
  br label %530

529:                                              ; preds = %490
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

530:                                              ; preds = %526, %523, %520, %517, %514, %511, %508, %505, %502, %499, %496, %493
  %531 = phi ptr [ %528, %526 ], [ %525, %523 ], [ %522, %520 ], [ %519, %517 ], [ %516, %514 ], [ %513, %511 ], [ %510, %508 ], [ %507, %505 ], [ %504, %502 ], [ %501, %499 ], [ %498, %496 ], [ %495, %493 ]
  %532 = load i32, ptr %531, align 4
  %533 = add i32 %532, 112
  %534 = load i32, ptr %69, align 8
  %535 = icmp slt i32 %534, 1
  br i1 %535, label %536, label %537, !prof !8

536:                                              ; preds = %530
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %537

537:                                              ; preds = %536, %530
  %538 = load ptr, ptr %74, align 4
  %539 = getelementptr i8, ptr %538, i32 %533
  tail call void @msm_writel(i32 noundef 0, ptr noundef %539) #8
  %540 = load i32, ptr %21, align 4
  %541 = and i32 %540, 32
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %776, label %543

543:                                              ; preds = %537
  %544 = getelementptr inbounds %struct.pixel_ext, ptr %4, i32 0, i32 1
  %545 = getelementptr inbounds %struct.pixel_ext, ptr %4, i32 0, i32 2
  %546 = getelementptr inbounds %struct.pixel_ext, ptr %4, i32 0, i32 3
  %547 = load i32, ptr %23, align 4
  %548 = tail call ptr @drm_format_info(i32 noundef %547) #8
  %549 = getelementptr inbounds %struct.mdp_format, ptr %23, i32 0, i32 12
  %550 = getelementptr inbounds %struct.drm_format_info, ptr %548, i32 0, i32 6
  %551 = getelementptr inbounds %struct.drm_format_info, ptr %548, i32 0, i32 7
  br label %552

552:                                              ; preds = %758, %543
  %553 = phi i32 [ 0, %543 ], [ %772, %758 ]
  %554 = load i8, ptr %549, align 4, !range !9
  %555 = icmp ne i8 %554, 0
  %556 = icmp eq i32 %553, 1
  %557 = select i1 %555, i1 %556, i1 false
  br i1 %557, label %558, label %565

558:                                              ; preds = %552
  %559 = load i8, ptr %550, align 2
  %560 = zext i8 %559 to i32
  %561 = udiv i32 %16, %560
  %562 = load i8, ptr %551, align 1
  %563 = zext i8 %562 to i32
  %564 = udiv i32 %17, %563
  br label %565

565:                                              ; preds = %558, %552
  %566 = phi i32 [ %561, %558 ], [ %16, %552 ]
  %567 = phi i32 [ %564, %558 ], [ %17, %552 ]
  %568 = getelementptr i32, ptr %4, i32 %553
  %569 = load i32, ptr %568, align 4
  %570 = and i32 %569, 255
  %571 = shl i32 %569, 8
  %572 = and i32 %571, 65280
  %573 = icmp slt i32 %569, 0
  %574 = select i1 %573, i32 %572, i32 %570
  %575 = getelementptr i32, ptr %544, i32 %553
  %576 = load i32, ptr %575, align 4
  %577 = shl i32 %576, 16
  %578 = and i32 %577, 16711680
  %579 = shl i32 %576, 24
  %580 = icmp slt i32 %576, 0
  %581 = select i1 %580, i32 %579, i32 %578
  %582 = or i32 %581, %574
  %583 = getelementptr i32, ptr %545, i32 %553
  %584 = load i32, ptr %583, align 4
  %585 = and i32 %584, 255
  %586 = shl i32 %584, 8
  %587 = and i32 %586, 65280
  %588 = icmp slt i32 %584, 0
  %589 = select i1 %588, i32 %587, i32 %585
  %590 = getelementptr i32, ptr %546, i32 %553
  %591 = load i32, ptr %590, align 4
  %592 = shl i32 %591, 16
  %593 = and i32 %592, 16711680
  %594 = shl i32 %591, 24
  %595 = icmp slt i32 %591, 0
  %596 = select i1 %595, i32 %594, i32 %593
  %597 = or i32 %596, %589
  %598 = add i32 %569, %566
  %599 = add i32 %598, %576
  %600 = and i32 %599, 65535
  %601 = add i32 %584, %567
  %602 = add i32 %601, %591
  %603 = shl i32 %602, 16
  %604 = or i32 %603, %600
  switch i32 %20, label %641 [
    i32 12, label %638
    i32 1, label %605
    i32 2, label %608
    i32 3, label %611
    i32 4, label %614
    i32 5, label %617
    i32 6, label %620
    i32 7, label %623
    i32 8, label %626
    i32 9, label %629
    i32 10, label %632
    i32 11, label %635
  ]

605:                                              ; preds = %565
  %606 = load ptr, ptr @mdp5_cfg, align 4
  %607 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %606, i32 0, i32 4, i32 1
  br label %642

608:                                              ; preds = %565
  %609 = load ptr, ptr @mdp5_cfg, align 4
  %610 = getelementptr %struct.mdp5_cfg_hw, ptr %609, i32 0, i32 4, i32 1, i32 1
  br label %642

611:                                              ; preds = %565
  %612 = load ptr, ptr @mdp5_cfg, align 4
  %613 = getelementptr %struct.mdp5_cfg_hw, ptr %612, i32 0, i32 4, i32 1, i32 2
  br label %642

614:                                              ; preds = %565
  %615 = load ptr, ptr @mdp5_cfg, align 4
  %616 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %615, i32 0, i32 5, i32 1
  br label %642

617:                                              ; preds = %565
  %618 = load ptr, ptr @mdp5_cfg, align 4
  %619 = getelementptr %struct.mdp5_cfg_hw, ptr %618, i32 0, i32 5, i32 1, i32 1
  br label %642

620:                                              ; preds = %565
  %621 = load ptr, ptr @mdp5_cfg, align 4
  %622 = getelementptr %struct.mdp5_cfg_hw, ptr %621, i32 0, i32 5, i32 1, i32 2
  br label %642

623:                                              ; preds = %565
  %624 = load ptr, ptr @mdp5_cfg, align 4
  %625 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %624, i32 0, i32 6, i32 1
  br label %642

626:                                              ; preds = %565
  %627 = load ptr, ptr @mdp5_cfg, align 4
  %628 = getelementptr %struct.mdp5_cfg_hw, ptr %627, i32 0, i32 6, i32 1, i32 1
  br label %642

629:                                              ; preds = %565
  %630 = load ptr, ptr @mdp5_cfg, align 4
  %631 = getelementptr %struct.mdp5_cfg_hw, ptr %630, i32 0, i32 4, i32 1, i32 3
  br label %642

632:                                              ; preds = %565
  %633 = load ptr, ptr @mdp5_cfg, align 4
  %634 = getelementptr %struct.mdp5_cfg_hw, ptr %633, i32 0, i32 5, i32 1, i32 3
  br label %642

635:                                              ; preds = %565
  %636 = load ptr, ptr @mdp5_cfg, align 4
  %637 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %636, i32 0, i32 7, i32 1
  br label %642

638:                                              ; preds = %565
  %639 = load ptr, ptr @mdp5_cfg, align 4
  %640 = getelementptr %struct.mdp5_cfg_hw, ptr %639, i32 0, i32 7, i32 1, i32 1
  br label %642

641:                                              ; preds = %565
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

642:                                              ; preds = %638, %635, %632, %629, %626, %623, %620, %617, %614, %611, %608, %605
  %643 = phi ptr [ %640, %638 ], [ %637, %635 ], [ %634, %632 ], [ %631, %629 ], [ %628, %626 ], [ %625, %623 ], [ %622, %620 ], [ %619, %617 ], [ %616, %614 ], [ %613, %611 ], [ %610, %608 ], [ %607, %605 ]
  %644 = icmp ult i32 %553, 3
  br i1 %644, label %646, label %645

645:                                              ; preds = %642
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 952, 0\0A.popsection", ""() #8, !srcloc !15
  unreachable

646:                                              ; preds = %642
  %647 = load i32, ptr %643, align 4
  %648 = shl i32 %553, 4
  %649 = add i32 %648, 256
  %650 = add i32 %649, %647
  %651 = load i32, ptr %69, align 8
  %652 = icmp slt i32 %651, 1
  br i1 %652, label %653, label %654, !prof !8

653:                                              ; preds = %646
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %654

654:                                              ; preds = %653, %646
  %655 = load ptr, ptr %74, align 4
  %656 = getelementptr i8, ptr %655, i32 %650
  tail call void @msm_writel(i32 noundef %582, ptr noundef %656) #8
  switch i32 %20, label %693 [
    i32 12, label %690
    i32 1, label %657
    i32 2, label %660
    i32 3, label %663
    i32 4, label %666
    i32 5, label %669
    i32 6, label %672
    i32 7, label %675
    i32 8, label %678
    i32 9, label %681
    i32 10, label %684
    i32 11, label %687
  ]

657:                                              ; preds = %654
  %658 = load ptr, ptr @mdp5_cfg, align 4
  %659 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %658, i32 0, i32 4, i32 1
  br label %694

660:                                              ; preds = %654
  %661 = load ptr, ptr @mdp5_cfg, align 4
  %662 = getelementptr %struct.mdp5_cfg_hw, ptr %661, i32 0, i32 4, i32 1, i32 1
  br label %694

663:                                              ; preds = %654
  %664 = load ptr, ptr @mdp5_cfg, align 4
  %665 = getelementptr %struct.mdp5_cfg_hw, ptr %664, i32 0, i32 4, i32 1, i32 2
  br label %694

666:                                              ; preds = %654
  %667 = load ptr, ptr @mdp5_cfg, align 4
  %668 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %667, i32 0, i32 5, i32 1
  br label %694

669:                                              ; preds = %654
  %670 = load ptr, ptr @mdp5_cfg, align 4
  %671 = getelementptr %struct.mdp5_cfg_hw, ptr %670, i32 0, i32 5, i32 1, i32 1
  br label %694

672:                                              ; preds = %654
  %673 = load ptr, ptr @mdp5_cfg, align 4
  %674 = getelementptr %struct.mdp5_cfg_hw, ptr %673, i32 0, i32 5, i32 1, i32 2
  br label %694

675:                                              ; preds = %654
  %676 = load ptr, ptr @mdp5_cfg, align 4
  %677 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %676, i32 0, i32 6, i32 1
  br label %694

678:                                              ; preds = %654
  %679 = load ptr, ptr @mdp5_cfg, align 4
  %680 = getelementptr %struct.mdp5_cfg_hw, ptr %679, i32 0, i32 6, i32 1, i32 1
  br label %694

681:                                              ; preds = %654
  %682 = load ptr, ptr @mdp5_cfg, align 4
  %683 = getelementptr %struct.mdp5_cfg_hw, ptr %682, i32 0, i32 4, i32 1, i32 3
  br label %694

684:                                              ; preds = %654
  %685 = load ptr, ptr @mdp5_cfg, align 4
  %686 = getelementptr %struct.mdp5_cfg_hw, ptr %685, i32 0, i32 5, i32 1, i32 3
  br label %694

687:                                              ; preds = %654
  %688 = load ptr, ptr @mdp5_cfg, align 4
  %689 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %688, i32 0, i32 7, i32 1
  br label %694

690:                                              ; preds = %654
  %691 = load ptr, ptr @mdp5_cfg, align 4
  %692 = getelementptr %struct.mdp5_cfg_hw, ptr %691, i32 0, i32 7, i32 1, i32 1
  br label %694

693:                                              ; preds = %654
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

694:                                              ; preds = %690, %687, %684, %681, %678, %675, %672, %669, %666, %663, %660, %657
  %695 = phi ptr [ %692, %690 ], [ %689, %687 ], [ %686, %684 ], [ %683, %681 ], [ %680, %678 ], [ %677, %675 ], [ %674, %672 ], [ %671, %669 ], [ %668, %666 ], [ %665, %663 ], [ %662, %660 ], [ %659, %657 ]
  %696 = icmp ult i32 %553, 3
  br i1 %696, label %698, label %697

697:                                              ; preds = %694
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 952, 0\0A.popsection", ""() #8, !srcloc !15
  unreachable

698:                                              ; preds = %694
  %699 = load i32, ptr %695, align 4
  %700 = shl i32 %553, 4
  %701 = add i32 %699, %700
  %702 = add i32 %701, 260
  %703 = load i32, ptr %69, align 8
  %704 = icmp slt i32 %703, 1
  br i1 %704, label %705, label %706, !prof !8

705:                                              ; preds = %698
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %706

706:                                              ; preds = %705, %698
  %707 = load ptr, ptr %74, align 4
  %708 = getelementptr i8, ptr %707, i32 %702
  tail call void @msm_writel(i32 noundef %597, ptr noundef %708) #8
  switch i32 %20, label %745 [
    i32 12, label %742
    i32 1, label %709
    i32 2, label %712
    i32 3, label %715
    i32 4, label %718
    i32 5, label %721
    i32 6, label %724
    i32 7, label %727
    i32 8, label %730
    i32 9, label %733
    i32 10, label %736
    i32 11, label %739
  ]

709:                                              ; preds = %706
  %710 = load ptr, ptr @mdp5_cfg, align 4
  %711 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %710, i32 0, i32 4, i32 1
  br label %746

712:                                              ; preds = %706
  %713 = load ptr, ptr @mdp5_cfg, align 4
  %714 = getelementptr %struct.mdp5_cfg_hw, ptr %713, i32 0, i32 4, i32 1, i32 1
  br label %746

715:                                              ; preds = %706
  %716 = load ptr, ptr @mdp5_cfg, align 4
  %717 = getelementptr %struct.mdp5_cfg_hw, ptr %716, i32 0, i32 4, i32 1, i32 2
  br label %746

718:                                              ; preds = %706
  %719 = load ptr, ptr @mdp5_cfg, align 4
  %720 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %719, i32 0, i32 5, i32 1
  br label %746

721:                                              ; preds = %706
  %722 = load ptr, ptr @mdp5_cfg, align 4
  %723 = getelementptr %struct.mdp5_cfg_hw, ptr %722, i32 0, i32 5, i32 1, i32 1
  br label %746

724:                                              ; preds = %706
  %725 = load ptr, ptr @mdp5_cfg, align 4
  %726 = getelementptr %struct.mdp5_cfg_hw, ptr %725, i32 0, i32 5, i32 1, i32 2
  br label %746

727:                                              ; preds = %706
  %728 = load ptr, ptr @mdp5_cfg, align 4
  %729 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %728, i32 0, i32 6, i32 1
  br label %746

730:                                              ; preds = %706
  %731 = load ptr, ptr @mdp5_cfg, align 4
  %732 = getelementptr %struct.mdp5_cfg_hw, ptr %731, i32 0, i32 6, i32 1, i32 1
  br label %746

733:                                              ; preds = %706
  %734 = load ptr, ptr @mdp5_cfg, align 4
  %735 = getelementptr %struct.mdp5_cfg_hw, ptr %734, i32 0, i32 4, i32 1, i32 3
  br label %746

736:                                              ; preds = %706
  %737 = load ptr, ptr @mdp5_cfg, align 4
  %738 = getelementptr %struct.mdp5_cfg_hw, ptr %737, i32 0, i32 5, i32 1, i32 3
  br label %746

739:                                              ; preds = %706
  %740 = load ptr, ptr @mdp5_cfg, align 4
  %741 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %740, i32 0, i32 7, i32 1
  br label %746

742:                                              ; preds = %706
  %743 = load ptr, ptr @mdp5_cfg, align 4
  %744 = getelementptr %struct.mdp5_cfg_hw, ptr %743, i32 0, i32 7, i32 1, i32 1
  br label %746

745:                                              ; preds = %706
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

746:                                              ; preds = %742, %739, %736, %733, %730, %727, %724, %721, %718, %715, %712, %709
  %747 = phi ptr [ %744, %742 ], [ %741, %739 ], [ %738, %736 ], [ %735, %733 ], [ %732, %730 ], [ %729, %727 ], [ %726, %724 ], [ %723, %721 ], [ %720, %718 ], [ %717, %715 ], [ %714, %712 ], [ %711, %709 ]
  %748 = icmp ult i32 %553, 3
  br i1 %748, label %750, label %749

749:                                              ; preds = %746
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 952, 0\0A.popsection", ""() #8, !srcloc !15
  unreachable

750:                                              ; preds = %746
  %751 = load i32, ptr %747, align 4
  %752 = shl i32 %553, 4
  %753 = add i32 %751, %752
  %754 = add i32 %753, 264
  %755 = load i32, ptr %69, align 8
  %756 = icmp slt i32 %755, 1
  br i1 %756, label %757, label %758, !prof !8

757:                                              ; preds = %750
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %758

758:                                              ; preds = %757, %750
  %759 = load ptr, ptr %74, align 4
  %760 = getelementptr i8, ptr %759, i32 %754
  tail call void @msm_writel(i32 noundef %604, ptr noundef %760) #8
  %761 = and i32 %574, 255
  %762 = lshr exact i32 %581, 16
  %763 = and i32 %762, 255
  %764 = lshr i32 %574, 8
  %765 = lshr i32 %581, 24
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.28, i32 noundef %553, i32 noundef %761, i32 noundef %763, i32 noundef %764, i32 noundef %765, i32 noundef %600) #8
  %766 = and i32 %589, 255
  %767 = lshr exact i32 %596, 16
  %768 = and i32 %767, 255
  %769 = lshr i32 %589, 8
  %770 = lshr i32 %596, 24
  %771 = and i32 %602, 65535
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %553, i32 noundef %766, i32 noundef %768, i32 noundef %769, i32 noundef %770, i32 noundef %771) #8
  %772 = add nuw nsw i32 %553, 1
  %773 = icmp eq i32 %772, 3
  br i1 %773, label %774, label %552

774:                                              ; preds = %758
  %775 = load i32, ptr %21, align 4
  br label %776

776:                                              ; preds = %774, %537
  %777 = phi i32 [ %775, %774 ], [ %540, %537 ]
  %778 = and i32 %777, 4
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %1071, label %780

780:                                              ; preds = %776
  switch i32 %20, label %817 [
    i32 12, label %814
    i32 1, label %781
    i32 2, label %784
    i32 3, label %787
    i32 4, label %790
    i32 5, label %793
    i32 6, label %796
    i32 7, label %799
    i32 8, label %802
    i32 9, label %805
    i32 10, label %808
    i32 11, label %811
  ]

781:                                              ; preds = %780
  %782 = load ptr, ptr @mdp5_cfg, align 4
  %783 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %782, i32 0, i32 4, i32 1
  br label %818

784:                                              ; preds = %780
  %785 = load ptr, ptr @mdp5_cfg, align 4
  %786 = getelementptr %struct.mdp5_cfg_hw, ptr %785, i32 0, i32 4, i32 1, i32 1
  br label %818

787:                                              ; preds = %780
  %788 = load ptr, ptr @mdp5_cfg, align 4
  %789 = getelementptr %struct.mdp5_cfg_hw, ptr %788, i32 0, i32 4, i32 1, i32 2
  br label %818

790:                                              ; preds = %780
  %791 = load ptr, ptr @mdp5_cfg, align 4
  %792 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %791, i32 0, i32 5, i32 1
  br label %818

793:                                              ; preds = %780
  %794 = load ptr, ptr @mdp5_cfg, align 4
  %795 = getelementptr %struct.mdp5_cfg_hw, ptr %794, i32 0, i32 5, i32 1, i32 1
  br label %818

796:                                              ; preds = %780
  %797 = load ptr, ptr @mdp5_cfg, align 4
  %798 = getelementptr %struct.mdp5_cfg_hw, ptr %797, i32 0, i32 5, i32 1, i32 2
  br label %818

799:                                              ; preds = %780
  %800 = load ptr, ptr @mdp5_cfg, align 4
  %801 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %800, i32 0, i32 6, i32 1
  br label %818

802:                                              ; preds = %780
  %803 = load ptr, ptr @mdp5_cfg, align 4
  %804 = getelementptr %struct.mdp5_cfg_hw, ptr %803, i32 0, i32 6, i32 1, i32 1
  br label %818

805:                                              ; preds = %780
  %806 = load ptr, ptr @mdp5_cfg, align 4
  %807 = getelementptr %struct.mdp5_cfg_hw, ptr %806, i32 0, i32 4, i32 1, i32 3
  br label %818

808:                                              ; preds = %780
  %809 = load ptr, ptr @mdp5_cfg, align 4
  %810 = getelementptr %struct.mdp5_cfg_hw, ptr %809, i32 0, i32 5, i32 1, i32 3
  br label %818

811:                                              ; preds = %780
  %812 = load ptr, ptr @mdp5_cfg, align 4
  %813 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %812, i32 0, i32 7, i32 1
  br label %818

814:                                              ; preds = %780
  %815 = load ptr, ptr @mdp5_cfg, align 4
  %816 = getelementptr %struct.mdp5_cfg_hw, ptr %815, i32 0, i32 7, i32 1, i32 1
  br label %818

817:                                              ; preds = %780
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

818:                                              ; preds = %814, %811, %808, %805, %802, %799, %796, %793, %790, %787, %784, %781
  %819 = phi ptr [ %816, %814 ], [ %813, %811 ], [ %810, %808 ], [ %807, %805 ], [ %804, %802 ], [ %801, %799 ], [ %798, %796 ], [ %795, %793 ], [ %792, %790 ], [ %789, %787 ], [ %786, %784 ], [ %783, %781 ]
  %820 = load i32, ptr %819, align 4
  %821 = add i32 %820, 528
  %822 = load i32, ptr %3, align 4
  %823 = load i32, ptr %69, align 8
  %824 = icmp slt i32 %823, 1
  br i1 %824, label %825, label %826, !prof !8

825:                                              ; preds = %818
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %826

826:                                              ; preds = %825, %818
  %827 = load ptr, ptr %74, align 4
  %828 = getelementptr i8, ptr %827, i32 %821
  tail call void @msm_writel(i32 noundef %822, ptr noundef %828) #8
  switch i32 %20, label %865 [
    i32 12, label %862
    i32 1, label %829
    i32 2, label %832
    i32 3, label %835
    i32 4, label %838
    i32 5, label %841
    i32 6, label %844
    i32 7, label %847
    i32 8, label %850
    i32 9, label %853
    i32 10, label %856
    i32 11, label %859
  ]

829:                                              ; preds = %826
  %830 = load ptr, ptr @mdp5_cfg, align 4
  %831 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %830, i32 0, i32 4, i32 1
  br label %866

832:                                              ; preds = %826
  %833 = load ptr, ptr @mdp5_cfg, align 4
  %834 = getelementptr %struct.mdp5_cfg_hw, ptr %833, i32 0, i32 4, i32 1, i32 1
  br label %866

835:                                              ; preds = %826
  %836 = load ptr, ptr @mdp5_cfg, align 4
  %837 = getelementptr %struct.mdp5_cfg_hw, ptr %836, i32 0, i32 4, i32 1, i32 2
  br label %866

838:                                              ; preds = %826
  %839 = load ptr, ptr @mdp5_cfg, align 4
  %840 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %839, i32 0, i32 5, i32 1
  br label %866

841:                                              ; preds = %826
  %842 = load ptr, ptr @mdp5_cfg, align 4
  %843 = getelementptr %struct.mdp5_cfg_hw, ptr %842, i32 0, i32 5, i32 1, i32 1
  br label %866

844:                                              ; preds = %826
  %845 = load ptr, ptr @mdp5_cfg, align 4
  %846 = getelementptr %struct.mdp5_cfg_hw, ptr %845, i32 0, i32 5, i32 1, i32 2
  br label %866

847:                                              ; preds = %826
  %848 = load ptr, ptr @mdp5_cfg, align 4
  %849 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %848, i32 0, i32 6, i32 1
  br label %866

850:                                              ; preds = %826
  %851 = load ptr, ptr @mdp5_cfg, align 4
  %852 = getelementptr %struct.mdp5_cfg_hw, ptr %851, i32 0, i32 6, i32 1, i32 1
  br label %866

853:                                              ; preds = %826
  %854 = load ptr, ptr @mdp5_cfg, align 4
  %855 = getelementptr %struct.mdp5_cfg_hw, ptr %854, i32 0, i32 4, i32 1, i32 3
  br label %866

856:                                              ; preds = %826
  %857 = load ptr, ptr @mdp5_cfg, align 4
  %858 = getelementptr %struct.mdp5_cfg_hw, ptr %857, i32 0, i32 5, i32 1, i32 3
  br label %866

859:                                              ; preds = %826
  %860 = load ptr, ptr @mdp5_cfg, align 4
  %861 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %860, i32 0, i32 7, i32 1
  br label %866

862:                                              ; preds = %826
  %863 = load ptr, ptr @mdp5_cfg, align 4
  %864 = getelementptr %struct.mdp5_cfg_hw, ptr %863, i32 0, i32 7, i32 1, i32 1
  br label %866

865:                                              ; preds = %826
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

866:                                              ; preds = %862, %859, %856, %853, %850, %847, %844, %841, %838, %835, %832, %829
  %867 = phi ptr [ %864, %862 ], [ %861, %859 ], [ %858, %856 ], [ %855, %853 ], [ %852, %850 ], [ %849, %847 ], [ %846, %844 ], [ %843, %841 ], [ %840, %838 ], [ %837, %835 ], [ %834, %832 ], [ %831, %829 ]
  %868 = load i32, ptr %867, align 4
  %869 = add i32 %868, 532
  %870 = getelementptr inbounds %struct.phase_step, ptr %3, i32 0, i32 1
  %871 = load i32, ptr %870, align 4
  %872 = load i32, ptr %69, align 8
  %873 = icmp slt i32 %872, 1
  br i1 %873, label %874, label %875, !prof !8

874:                                              ; preds = %866
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %875

875:                                              ; preds = %874, %866
  %876 = load ptr, ptr %74, align 4
  %877 = getelementptr i8, ptr %876, i32 %869
  tail call void @msm_writel(i32 noundef %871, ptr noundef %877) #8
  switch i32 %20, label %914 [
    i32 12, label %911
    i32 1, label %878
    i32 2, label %881
    i32 3, label %884
    i32 4, label %887
    i32 5, label %890
    i32 6, label %893
    i32 7, label %896
    i32 8, label %899
    i32 9, label %902
    i32 10, label %905
    i32 11, label %908
  ]

878:                                              ; preds = %875
  %879 = load ptr, ptr @mdp5_cfg, align 4
  %880 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %879, i32 0, i32 4, i32 1
  br label %915

881:                                              ; preds = %875
  %882 = load ptr, ptr @mdp5_cfg, align 4
  %883 = getelementptr %struct.mdp5_cfg_hw, ptr %882, i32 0, i32 4, i32 1, i32 1
  br label %915

884:                                              ; preds = %875
  %885 = load ptr, ptr @mdp5_cfg, align 4
  %886 = getelementptr %struct.mdp5_cfg_hw, ptr %885, i32 0, i32 4, i32 1, i32 2
  br label %915

887:                                              ; preds = %875
  %888 = load ptr, ptr @mdp5_cfg, align 4
  %889 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %888, i32 0, i32 5, i32 1
  br label %915

890:                                              ; preds = %875
  %891 = load ptr, ptr @mdp5_cfg, align 4
  %892 = getelementptr %struct.mdp5_cfg_hw, ptr %891, i32 0, i32 5, i32 1, i32 1
  br label %915

893:                                              ; preds = %875
  %894 = load ptr, ptr @mdp5_cfg, align 4
  %895 = getelementptr %struct.mdp5_cfg_hw, ptr %894, i32 0, i32 5, i32 1, i32 2
  br label %915

896:                                              ; preds = %875
  %897 = load ptr, ptr @mdp5_cfg, align 4
  %898 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %897, i32 0, i32 6, i32 1
  br label %915

899:                                              ; preds = %875
  %900 = load ptr, ptr @mdp5_cfg, align 4
  %901 = getelementptr %struct.mdp5_cfg_hw, ptr %900, i32 0, i32 6, i32 1, i32 1
  br label %915

902:                                              ; preds = %875
  %903 = load ptr, ptr @mdp5_cfg, align 4
  %904 = getelementptr %struct.mdp5_cfg_hw, ptr %903, i32 0, i32 4, i32 1, i32 3
  br label %915

905:                                              ; preds = %875
  %906 = load ptr, ptr @mdp5_cfg, align 4
  %907 = getelementptr %struct.mdp5_cfg_hw, ptr %906, i32 0, i32 5, i32 1, i32 3
  br label %915

908:                                              ; preds = %875
  %909 = load ptr, ptr @mdp5_cfg, align 4
  %910 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %909, i32 0, i32 7, i32 1
  br label %915

911:                                              ; preds = %875
  %912 = load ptr, ptr @mdp5_cfg, align 4
  %913 = getelementptr %struct.mdp5_cfg_hw, ptr %912, i32 0, i32 7, i32 1, i32 1
  br label %915

914:                                              ; preds = %875
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

915:                                              ; preds = %911, %908, %905, %902, %899, %896, %893, %890, %887, %884, %881, %878
  %916 = phi ptr [ %913, %911 ], [ %910, %908 ], [ %907, %905 ], [ %904, %902 ], [ %901, %899 ], [ %898, %896 ], [ %895, %893 ], [ %892, %890 ], [ %889, %887 ], [ %886, %884 ], [ %883, %881 ], [ %880, %878 ]
  %917 = load i32, ptr %916, align 4
  %918 = add i32 %917, 536
  %919 = getelementptr [3 x i32], ptr %3, i32 0, i32 1
  %920 = load i32, ptr %919, align 4
  %921 = load i32, ptr %69, align 8
  %922 = icmp slt i32 %921, 1
  br i1 %922, label %923, label %924, !prof !8

923:                                              ; preds = %915
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %924

924:                                              ; preds = %923, %915
  %925 = load ptr, ptr %74, align 4
  %926 = getelementptr i8, ptr %925, i32 %918
  tail call void @msm_writel(i32 noundef %920, ptr noundef %926) #8
  switch i32 %20, label %963 [
    i32 12, label %960
    i32 1, label %927
    i32 2, label %930
    i32 3, label %933
    i32 4, label %936
    i32 5, label %939
    i32 6, label %942
    i32 7, label %945
    i32 8, label %948
    i32 9, label %951
    i32 10, label %954
    i32 11, label %957
  ]

927:                                              ; preds = %924
  %928 = load ptr, ptr @mdp5_cfg, align 4
  %929 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %928, i32 0, i32 4, i32 1
  br label %964

930:                                              ; preds = %924
  %931 = load ptr, ptr @mdp5_cfg, align 4
  %932 = getelementptr %struct.mdp5_cfg_hw, ptr %931, i32 0, i32 4, i32 1, i32 1
  br label %964

933:                                              ; preds = %924
  %934 = load ptr, ptr @mdp5_cfg, align 4
  %935 = getelementptr %struct.mdp5_cfg_hw, ptr %934, i32 0, i32 4, i32 1, i32 2
  br label %964

936:                                              ; preds = %924
  %937 = load ptr, ptr @mdp5_cfg, align 4
  %938 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %937, i32 0, i32 5, i32 1
  br label %964

939:                                              ; preds = %924
  %940 = load ptr, ptr @mdp5_cfg, align 4
  %941 = getelementptr %struct.mdp5_cfg_hw, ptr %940, i32 0, i32 5, i32 1, i32 1
  br label %964

942:                                              ; preds = %924
  %943 = load ptr, ptr @mdp5_cfg, align 4
  %944 = getelementptr %struct.mdp5_cfg_hw, ptr %943, i32 0, i32 5, i32 1, i32 2
  br label %964

945:                                              ; preds = %924
  %946 = load ptr, ptr @mdp5_cfg, align 4
  %947 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %946, i32 0, i32 6, i32 1
  br label %964

948:                                              ; preds = %924
  %949 = load ptr, ptr @mdp5_cfg, align 4
  %950 = getelementptr %struct.mdp5_cfg_hw, ptr %949, i32 0, i32 6, i32 1, i32 1
  br label %964

951:                                              ; preds = %924
  %952 = load ptr, ptr @mdp5_cfg, align 4
  %953 = getelementptr %struct.mdp5_cfg_hw, ptr %952, i32 0, i32 4, i32 1, i32 3
  br label %964

954:                                              ; preds = %924
  %955 = load ptr, ptr @mdp5_cfg, align 4
  %956 = getelementptr %struct.mdp5_cfg_hw, ptr %955, i32 0, i32 5, i32 1, i32 3
  br label %964

957:                                              ; preds = %924
  %958 = load ptr, ptr @mdp5_cfg, align 4
  %959 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %958, i32 0, i32 7, i32 1
  br label %964

960:                                              ; preds = %924
  %961 = load ptr, ptr @mdp5_cfg, align 4
  %962 = getelementptr %struct.mdp5_cfg_hw, ptr %961, i32 0, i32 7, i32 1, i32 1
  br label %964

963:                                              ; preds = %924
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

964:                                              ; preds = %960, %957, %954, %951, %948, %945, %942, %939, %936, %933, %930, %927
  %965 = phi ptr [ %962, %960 ], [ %959, %957 ], [ %956, %954 ], [ %953, %951 ], [ %950, %948 ], [ %947, %945 ], [ %944, %942 ], [ %941, %939 ], [ %938, %936 ], [ %935, %933 ], [ %932, %930 ], [ %929, %927 ]
  %966 = load i32, ptr %965, align 4
  %967 = add i32 %966, 540
  %968 = getelementptr %struct.phase_step, ptr %3, i32 0, i32 1, i32 1
  %969 = load i32, ptr %968, align 4
  %970 = load i32, ptr %69, align 8
  %971 = icmp slt i32 %970, 1
  br i1 %971, label %972, label %973, !prof !8

972:                                              ; preds = %964
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %973

973:                                              ; preds = %972, %964
  %974 = load ptr, ptr %74, align 4
  %975 = getelementptr i8, ptr %974, i32 %967
  tail call void @msm_writel(i32 noundef %969, ptr noundef %975) #8
  switch i32 %20, label %1012 [
    i32 12, label %1009
    i32 1, label %976
    i32 2, label %979
    i32 3, label %982
    i32 4, label %985
    i32 5, label %988
    i32 6, label %991
    i32 7, label %994
    i32 8, label %997
    i32 9, label %1000
    i32 10, label %1003
    i32 11, label %1006
  ]

976:                                              ; preds = %973
  %977 = load ptr, ptr @mdp5_cfg, align 4
  %978 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %977, i32 0, i32 4, i32 1
  br label %1013

979:                                              ; preds = %973
  %980 = load ptr, ptr @mdp5_cfg, align 4
  %981 = getelementptr %struct.mdp5_cfg_hw, ptr %980, i32 0, i32 4, i32 1, i32 1
  br label %1013

982:                                              ; preds = %973
  %983 = load ptr, ptr @mdp5_cfg, align 4
  %984 = getelementptr %struct.mdp5_cfg_hw, ptr %983, i32 0, i32 4, i32 1, i32 2
  br label %1013

985:                                              ; preds = %973
  %986 = load ptr, ptr @mdp5_cfg, align 4
  %987 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %986, i32 0, i32 5, i32 1
  br label %1013

988:                                              ; preds = %973
  %989 = load ptr, ptr @mdp5_cfg, align 4
  %990 = getelementptr %struct.mdp5_cfg_hw, ptr %989, i32 0, i32 5, i32 1, i32 1
  br label %1013

991:                                              ; preds = %973
  %992 = load ptr, ptr @mdp5_cfg, align 4
  %993 = getelementptr %struct.mdp5_cfg_hw, ptr %992, i32 0, i32 5, i32 1, i32 2
  br label %1013

994:                                              ; preds = %973
  %995 = load ptr, ptr @mdp5_cfg, align 4
  %996 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %995, i32 0, i32 6, i32 1
  br label %1013

997:                                              ; preds = %973
  %998 = load ptr, ptr @mdp5_cfg, align 4
  %999 = getelementptr %struct.mdp5_cfg_hw, ptr %998, i32 0, i32 6, i32 1, i32 1
  br label %1013

1000:                                             ; preds = %973
  %1001 = load ptr, ptr @mdp5_cfg, align 4
  %1002 = getelementptr %struct.mdp5_cfg_hw, ptr %1001, i32 0, i32 4, i32 1, i32 3
  br label %1013

1003:                                             ; preds = %973
  %1004 = load ptr, ptr @mdp5_cfg, align 4
  %1005 = getelementptr %struct.mdp5_cfg_hw, ptr %1004, i32 0, i32 5, i32 1, i32 3
  br label %1013

1006:                                             ; preds = %973
  %1007 = load ptr, ptr @mdp5_cfg, align 4
  %1008 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1007, i32 0, i32 7, i32 1
  br label %1013

1009:                                             ; preds = %973
  %1010 = load ptr, ptr @mdp5_cfg, align 4
  %1011 = getelementptr %struct.mdp5_cfg_hw, ptr %1010, i32 0, i32 7, i32 1, i32 1
  br label %1013

1012:                                             ; preds = %973
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1013:                                             ; preds = %1009, %1006, %1003, %1000, %997, %994, %991, %988, %985, %982, %979, %976
  %1014 = phi ptr [ %1011, %1009 ], [ %1008, %1006 ], [ %1005, %1003 ], [ %1002, %1000 ], [ %999, %997 ], [ %996, %994 ], [ %993, %991 ], [ %990, %988 ], [ %987, %985 ], [ %984, %982 ], [ %981, %979 ], [ %978, %976 ]
  %1015 = load i32, ptr %1014, align 4
  %1016 = add i32 %1015, 180
  %1017 = load i32, ptr %69, align 8
  %1018 = icmp slt i32 %1017, 1
  br i1 %1018, label %1019, label %1020, !prof !8

1019:                                             ; preds = %1013
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1020

1020:                                             ; preds = %1019, %1013
  %1021 = load ptr, ptr %74, align 4
  %1022 = getelementptr i8, ptr %1021, i32 %1016
  tail call void @msm_writel(i32 noundef 0, ptr noundef %1022) #8
  switch i32 %20, label %1059 [
    i32 12, label %1056
    i32 1, label %1023
    i32 2, label %1026
    i32 3, label %1029
    i32 4, label %1032
    i32 5, label %1035
    i32 6, label %1038
    i32 7, label %1041
    i32 8, label %1044
    i32 9, label %1047
    i32 10, label %1050
    i32 11, label %1053
  ]

1023:                                             ; preds = %1020
  %1024 = load ptr, ptr @mdp5_cfg, align 4
  %1025 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1024, i32 0, i32 4, i32 1
  br label %1060

1026:                                             ; preds = %1020
  %1027 = load ptr, ptr @mdp5_cfg, align 4
  %1028 = getelementptr %struct.mdp5_cfg_hw, ptr %1027, i32 0, i32 4, i32 1, i32 1
  br label %1060

1029:                                             ; preds = %1020
  %1030 = load ptr, ptr @mdp5_cfg, align 4
  %1031 = getelementptr %struct.mdp5_cfg_hw, ptr %1030, i32 0, i32 4, i32 1, i32 2
  br label %1060

1032:                                             ; preds = %1020
  %1033 = load ptr, ptr @mdp5_cfg, align 4
  %1034 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1033, i32 0, i32 5, i32 1
  br label %1060

1035:                                             ; preds = %1020
  %1036 = load ptr, ptr @mdp5_cfg, align 4
  %1037 = getelementptr %struct.mdp5_cfg_hw, ptr %1036, i32 0, i32 5, i32 1, i32 1
  br label %1060

1038:                                             ; preds = %1020
  %1039 = load ptr, ptr @mdp5_cfg, align 4
  %1040 = getelementptr %struct.mdp5_cfg_hw, ptr %1039, i32 0, i32 5, i32 1, i32 2
  br label %1060

1041:                                             ; preds = %1020
  %1042 = load ptr, ptr @mdp5_cfg, align 4
  %1043 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1042, i32 0, i32 6, i32 1
  br label %1060

1044:                                             ; preds = %1020
  %1045 = load ptr, ptr @mdp5_cfg, align 4
  %1046 = getelementptr %struct.mdp5_cfg_hw, ptr %1045, i32 0, i32 6, i32 1, i32 1
  br label %1060

1047:                                             ; preds = %1020
  %1048 = load ptr, ptr @mdp5_cfg, align 4
  %1049 = getelementptr %struct.mdp5_cfg_hw, ptr %1048, i32 0, i32 4, i32 1, i32 3
  br label %1060

1050:                                             ; preds = %1020
  %1051 = load ptr, ptr @mdp5_cfg, align 4
  %1052 = getelementptr %struct.mdp5_cfg_hw, ptr %1051, i32 0, i32 5, i32 1, i32 3
  br label %1060

1053:                                             ; preds = %1020
  %1054 = load ptr, ptr @mdp5_cfg, align 4
  %1055 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1054, i32 0, i32 7, i32 1
  br label %1060

1056:                                             ; preds = %1020
  %1057 = load ptr, ptr @mdp5_cfg, align 4
  %1058 = getelementptr %struct.mdp5_cfg_hw, ptr %1057, i32 0, i32 7, i32 1, i32 1
  br label %1060

1059:                                             ; preds = %1020
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1060:                                             ; preds = %1056, %1053, %1050, %1047, %1044, %1041, %1038, %1035, %1032, %1029, %1026, %1023
  %1061 = phi ptr [ %1058, %1056 ], [ %1055, %1053 ], [ %1052, %1050 ], [ %1049, %1047 ], [ %1046, %1044 ], [ %1043, %1041 ], [ %1040, %1038 ], [ %1037, %1035 ], [ %1034, %1032 ], [ %1031, %1029 ], [ %1028, %1026 ], [ %1025, %1023 ]
  %1062 = load i32, ptr %1061, align 4
  %1063 = add i32 %1062, 516
  %1064 = load i32, ptr %69, align 8
  %1065 = icmp slt i32 %1064, 1
  br i1 %1065, label %1066, label %1067, !prof !8

1066:                                             ; preds = %1060
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1067

1067:                                             ; preds = %1066, %1060
  %1068 = load ptr, ptr %74, align 4
  %1069 = getelementptr i8, ptr %1068, i32 %1063
  tail call void @msm_writel(i32 noundef %5, ptr noundef %1069) #8
  %1070 = load i32, ptr %21, align 4
  br label %1071

1071:                                             ; preds = %1067, %776
  %1072 = phi i32 [ %1070, %1067 ], [ %777, %776 ]
  %1073 = and i32 %1072, 8
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1729, label %1075

1075:                                             ; preds = %1071
  %1076 = getelementptr inbounds %struct.mdp_format, ptr %23, i32 0, i32 12
  %1077 = load i8, ptr %1076, align 4, !range !9
  %1078 = icmp eq i8 %1077, 0
  br i1 %1078, label %1632, label %1079

1079:                                             ; preds = %1075
  %1080 = tail call ptr @mdp_get_default_csc_cfg(i32 noundef 1) #8
  %1081 = icmp eq ptr %1080, null
  br i1 %1081, label %1729, label %1082, !prof !8

1082:                                             ; preds = %1079
  %1083 = load i32, ptr %1080, align 4
  %1084 = add i32 %1083, -1
  %1085 = and i32 %1084, -3
  %1086 = icmp eq i32 %1085, 0
  %1087 = select i1 %1086, i32 262144, i32 0
  %1088 = and i32 %1083, -2
  %1089 = icmp eq i32 %1088, 2
  %1090 = or i32 %1087, 524288
  %1091 = select i1 %1089, i32 %1090, i32 %1087
  %1092 = or i32 %1091, 131072
  switch i32 %20, label %1129 [
    i32 12, label %1126
    i32 1, label %1093
    i32 2, label %1096
    i32 3, label %1099
    i32 4, label %1102
    i32 5, label %1105
    i32 6, label %1108
    i32 7, label %1111
    i32 8, label %1114
    i32 9, label %1117
    i32 10, label %1120
    i32 11, label %1123
  ]

1093:                                             ; preds = %1082
  %1094 = load ptr, ptr @mdp5_cfg, align 4
  %1095 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1094, i32 0, i32 4, i32 1
  br label %1130

1096:                                             ; preds = %1082
  %1097 = load ptr, ptr @mdp5_cfg, align 4
  %1098 = getelementptr %struct.mdp5_cfg_hw, ptr %1097, i32 0, i32 4, i32 1, i32 1
  br label %1130

1099:                                             ; preds = %1082
  %1100 = load ptr, ptr @mdp5_cfg, align 4
  %1101 = getelementptr %struct.mdp5_cfg_hw, ptr %1100, i32 0, i32 4, i32 1, i32 2
  br label %1130

1102:                                             ; preds = %1082
  %1103 = load ptr, ptr @mdp5_cfg, align 4
  %1104 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1103, i32 0, i32 5, i32 1
  br label %1130

1105:                                             ; preds = %1082
  %1106 = load ptr, ptr @mdp5_cfg, align 4
  %1107 = getelementptr %struct.mdp5_cfg_hw, ptr %1106, i32 0, i32 5, i32 1, i32 1
  br label %1130

1108:                                             ; preds = %1082
  %1109 = load ptr, ptr @mdp5_cfg, align 4
  %1110 = getelementptr %struct.mdp5_cfg_hw, ptr %1109, i32 0, i32 5, i32 1, i32 2
  br label %1130

1111:                                             ; preds = %1082
  %1112 = load ptr, ptr @mdp5_cfg, align 4
  %1113 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1112, i32 0, i32 6, i32 1
  br label %1130

1114:                                             ; preds = %1082
  %1115 = load ptr, ptr @mdp5_cfg, align 4
  %1116 = getelementptr %struct.mdp5_cfg_hw, ptr %1115, i32 0, i32 6, i32 1, i32 1
  br label %1130

1117:                                             ; preds = %1082
  %1118 = load ptr, ptr @mdp5_cfg, align 4
  %1119 = getelementptr %struct.mdp5_cfg_hw, ptr %1118, i32 0, i32 4, i32 1, i32 3
  br label %1130

1120:                                             ; preds = %1082
  %1121 = load ptr, ptr @mdp5_cfg, align 4
  %1122 = getelementptr %struct.mdp5_cfg_hw, ptr %1121, i32 0, i32 5, i32 1, i32 3
  br label %1130

1123:                                             ; preds = %1082
  %1124 = load ptr, ptr @mdp5_cfg, align 4
  %1125 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1124, i32 0, i32 7, i32 1
  br label %1130

1126:                                             ; preds = %1082
  %1127 = load ptr, ptr @mdp5_cfg, align 4
  %1128 = getelementptr %struct.mdp5_cfg_hw, ptr %1127, i32 0, i32 7, i32 1, i32 1
  br label %1130

1129:                                             ; preds = %1082
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1130:                                             ; preds = %1126, %1123, %1120, %1117, %1114, %1111, %1108, %1105, %1102, %1099, %1096, %1093
  %1131 = phi ptr [ %1128, %1126 ], [ %1125, %1123 ], [ %1122, %1120 ], [ %1119, %1117 ], [ %1116, %1114 ], [ %1113, %1111 ], [ %1110, %1108 ], [ %1107, %1105 ], [ %1104, %1102 ], [ %1101, %1099 ], [ %1098, %1096 ], [ %1095, %1093 ]
  %1132 = load i32, ptr %1131, align 4
  %1133 = add i32 %1132, 512
  %1134 = load i32, ptr %69, align 8
  %1135 = icmp slt i32 %1134, 1
  br i1 %1135, label %1136, label %1137, !prof !8

1136:                                             ; preds = %1130
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1137

1137:                                             ; preds = %1136, %1130
  %1138 = load ptr, ptr %74, align 4
  %1139 = getelementptr i8, ptr %1138, i32 %1133
  tail call void @msm_writel(i32 noundef %1092, ptr noundef %1139) #8
  %1140 = getelementptr inbounds %struct.csc_cfg, ptr %1080, i32 0, i32 1
  switch i32 %20, label %1177 [
    i32 12, label %1174
    i32 1, label %1141
    i32 2, label %1144
    i32 3, label %1147
    i32 4, label %1150
    i32 5, label %1153
    i32 6, label %1156
    i32 7, label %1159
    i32 8, label %1162
    i32 9, label %1165
    i32 10, label %1168
    i32 11, label %1171
  ]

1141:                                             ; preds = %1137
  %1142 = load ptr, ptr @mdp5_cfg, align 4
  %1143 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1142, i32 0, i32 4, i32 1
  br label %1178

1144:                                             ; preds = %1137
  %1145 = load ptr, ptr @mdp5_cfg, align 4
  %1146 = getelementptr %struct.mdp5_cfg_hw, ptr %1145, i32 0, i32 4, i32 1, i32 1
  br label %1178

1147:                                             ; preds = %1137
  %1148 = load ptr, ptr @mdp5_cfg, align 4
  %1149 = getelementptr %struct.mdp5_cfg_hw, ptr %1148, i32 0, i32 4, i32 1, i32 2
  br label %1178

1150:                                             ; preds = %1137
  %1151 = load ptr, ptr @mdp5_cfg, align 4
  %1152 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1151, i32 0, i32 5, i32 1
  br label %1178

1153:                                             ; preds = %1137
  %1154 = load ptr, ptr @mdp5_cfg, align 4
  %1155 = getelementptr %struct.mdp5_cfg_hw, ptr %1154, i32 0, i32 5, i32 1, i32 1
  br label %1178

1156:                                             ; preds = %1137
  %1157 = load ptr, ptr @mdp5_cfg, align 4
  %1158 = getelementptr %struct.mdp5_cfg_hw, ptr %1157, i32 0, i32 5, i32 1, i32 2
  br label %1178

1159:                                             ; preds = %1137
  %1160 = load ptr, ptr @mdp5_cfg, align 4
  %1161 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1160, i32 0, i32 6, i32 1
  br label %1178

1162:                                             ; preds = %1137
  %1163 = load ptr, ptr @mdp5_cfg, align 4
  %1164 = getelementptr %struct.mdp5_cfg_hw, ptr %1163, i32 0, i32 6, i32 1, i32 1
  br label %1178

1165:                                             ; preds = %1137
  %1166 = load ptr, ptr @mdp5_cfg, align 4
  %1167 = getelementptr %struct.mdp5_cfg_hw, ptr %1166, i32 0, i32 4, i32 1, i32 3
  br label %1178

1168:                                             ; preds = %1137
  %1169 = load ptr, ptr @mdp5_cfg, align 4
  %1170 = getelementptr %struct.mdp5_cfg_hw, ptr %1169, i32 0, i32 5, i32 1, i32 3
  br label %1178

1171:                                             ; preds = %1137
  %1172 = load ptr, ptr @mdp5_cfg, align 4
  %1173 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1172, i32 0, i32 7, i32 1
  br label %1178

1174:                                             ; preds = %1137
  %1175 = load ptr, ptr @mdp5_cfg, align 4
  %1176 = getelementptr %struct.mdp5_cfg_hw, ptr %1175, i32 0, i32 7, i32 1, i32 1
  br label %1178

1177:                                             ; preds = %1137
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1178:                                             ; preds = %1174, %1171, %1168, %1165, %1162, %1159, %1156, %1153, %1150, %1147, %1144, %1141
  %1179 = phi ptr [ %1176, %1174 ], [ %1173, %1171 ], [ %1170, %1168 ], [ %1167, %1165 ], [ %1164, %1162 ], [ %1161, %1159 ], [ %1158, %1156 ], [ %1155, %1153 ], [ %1152, %1150 ], [ %1149, %1147 ], [ %1146, %1144 ], [ %1143, %1141 ]
  %1180 = load i32, ptr %1179, align 4
  %1181 = add i32 %1180, 800
  %1182 = load i32, ptr %1140, align 4
  %1183 = and i32 %1182, 8191
  %1184 = getelementptr %struct.csc_cfg, ptr %1080, i32 0, i32 1, i32 1
  %1185 = load i32, ptr %1184, align 4
  %1186 = shl i32 %1185, 16
  %1187 = and i32 %1186, 536805376
  %1188 = or i32 %1187, %1183
  %1189 = load i32, ptr %69, align 8
  %1190 = icmp slt i32 %1189, 1
  br i1 %1190, label %1191, label %1192, !prof !8

1191:                                             ; preds = %1178
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1192

1192:                                             ; preds = %1191, %1178
  %1193 = load ptr, ptr %74, align 4
  %1194 = getelementptr i8, ptr %1193, i32 %1181
  tail call void @msm_writel(i32 noundef %1188, ptr noundef %1194) #8
  switch i32 %20, label %1231 [
    i32 12, label %1228
    i32 1, label %1195
    i32 2, label %1198
    i32 3, label %1201
    i32 4, label %1204
    i32 5, label %1207
    i32 6, label %1210
    i32 7, label %1213
    i32 8, label %1216
    i32 9, label %1219
    i32 10, label %1222
    i32 11, label %1225
  ]

1195:                                             ; preds = %1192
  %1196 = load ptr, ptr @mdp5_cfg, align 4
  %1197 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1196, i32 0, i32 4, i32 1
  br label %1232

1198:                                             ; preds = %1192
  %1199 = load ptr, ptr @mdp5_cfg, align 4
  %1200 = getelementptr %struct.mdp5_cfg_hw, ptr %1199, i32 0, i32 4, i32 1, i32 1
  br label %1232

1201:                                             ; preds = %1192
  %1202 = load ptr, ptr @mdp5_cfg, align 4
  %1203 = getelementptr %struct.mdp5_cfg_hw, ptr %1202, i32 0, i32 4, i32 1, i32 2
  br label %1232

1204:                                             ; preds = %1192
  %1205 = load ptr, ptr @mdp5_cfg, align 4
  %1206 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1205, i32 0, i32 5, i32 1
  br label %1232

1207:                                             ; preds = %1192
  %1208 = load ptr, ptr @mdp5_cfg, align 4
  %1209 = getelementptr %struct.mdp5_cfg_hw, ptr %1208, i32 0, i32 5, i32 1, i32 1
  br label %1232

1210:                                             ; preds = %1192
  %1211 = load ptr, ptr @mdp5_cfg, align 4
  %1212 = getelementptr %struct.mdp5_cfg_hw, ptr %1211, i32 0, i32 5, i32 1, i32 2
  br label %1232

1213:                                             ; preds = %1192
  %1214 = load ptr, ptr @mdp5_cfg, align 4
  %1215 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1214, i32 0, i32 6, i32 1
  br label %1232

1216:                                             ; preds = %1192
  %1217 = load ptr, ptr @mdp5_cfg, align 4
  %1218 = getelementptr %struct.mdp5_cfg_hw, ptr %1217, i32 0, i32 6, i32 1, i32 1
  br label %1232

1219:                                             ; preds = %1192
  %1220 = load ptr, ptr @mdp5_cfg, align 4
  %1221 = getelementptr %struct.mdp5_cfg_hw, ptr %1220, i32 0, i32 4, i32 1, i32 3
  br label %1232

1222:                                             ; preds = %1192
  %1223 = load ptr, ptr @mdp5_cfg, align 4
  %1224 = getelementptr %struct.mdp5_cfg_hw, ptr %1223, i32 0, i32 5, i32 1, i32 3
  br label %1232

1225:                                             ; preds = %1192
  %1226 = load ptr, ptr @mdp5_cfg, align 4
  %1227 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1226, i32 0, i32 7, i32 1
  br label %1232

1228:                                             ; preds = %1192
  %1229 = load ptr, ptr @mdp5_cfg, align 4
  %1230 = getelementptr %struct.mdp5_cfg_hw, ptr %1229, i32 0, i32 7, i32 1, i32 1
  br label %1232

1231:                                             ; preds = %1192
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1232:                                             ; preds = %1228, %1225, %1222, %1219, %1216, %1213, %1210, %1207, %1204, %1201, %1198, %1195
  %1233 = phi ptr [ %1230, %1228 ], [ %1227, %1225 ], [ %1224, %1222 ], [ %1221, %1219 ], [ %1218, %1216 ], [ %1215, %1213 ], [ %1212, %1210 ], [ %1209, %1207 ], [ %1206, %1204 ], [ %1203, %1201 ], [ %1200, %1198 ], [ %1197, %1195 ]
  %1234 = load i32, ptr %1233, align 4
  %1235 = add i32 %1234, 804
  %1236 = getelementptr %struct.csc_cfg, ptr %1080, i32 0, i32 1, i32 2
  %1237 = load i32, ptr %1236, align 4
  %1238 = and i32 %1237, 8191
  %1239 = getelementptr %struct.csc_cfg, ptr %1080, i32 0, i32 1, i32 3
  %1240 = load i32, ptr %1239, align 4
  %1241 = shl i32 %1240, 16
  %1242 = and i32 %1241, 536805376
  %1243 = or i32 %1242, %1238
  %1244 = load i32, ptr %69, align 8
  %1245 = icmp slt i32 %1244, 1
  br i1 %1245, label %1246, label %1247, !prof !8

1246:                                             ; preds = %1232
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1247

1247:                                             ; preds = %1246, %1232
  %1248 = load ptr, ptr %74, align 4
  %1249 = getelementptr i8, ptr %1248, i32 %1235
  tail call void @msm_writel(i32 noundef %1243, ptr noundef %1249) #8
  switch i32 %20, label %1286 [
    i32 12, label %1283
    i32 1, label %1250
    i32 2, label %1253
    i32 3, label %1256
    i32 4, label %1259
    i32 5, label %1262
    i32 6, label %1265
    i32 7, label %1268
    i32 8, label %1271
    i32 9, label %1274
    i32 10, label %1277
    i32 11, label %1280
  ]

1250:                                             ; preds = %1247
  %1251 = load ptr, ptr @mdp5_cfg, align 4
  %1252 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1251, i32 0, i32 4, i32 1
  br label %1287

1253:                                             ; preds = %1247
  %1254 = load ptr, ptr @mdp5_cfg, align 4
  %1255 = getelementptr %struct.mdp5_cfg_hw, ptr %1254, i32 0, i32 4, i32 1, i32 1
  br label %1287

1256:                                             ; preds = %1247
  %1257 = load ptr, ptr @mdp5_cfg, align 4
  %1258 = getelementptr %struct.mdp5_cfg_hw, ptr %1257, i32 0, i32 4, i32 1, i32 2
  br label %1287

1259:                                             ; preds = %1247
  %1260 = load ptr, ptr @mdp5_cfg, align 4
  %1261 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1260, i32 0, i32 5, i32 1
  br label %1287

1262:                                             ; preds = %1247
  %1263 = load ptr, ptr @mdp5_cfg, align 4
  %1264 = getelementptr %struct.mdp5_cfg_hw, ptr %1263, i32 0, i32 5, i32 1, i32 1
  br label %1287

1265:                                             ; preds = %1247
  %1266 = load ptr, ptr @mdp5_cfg, align 4
  %1267 = getelementptr %struct.mdp5_cfg_hw, ptr %1266, i32 0, i32 5, i32 1, i32 2
  br label %1287

1268:                                             ; preds = %1247
  %1269 = load ptr, ptr @mdp5_cfg, align 4
  %1270 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1269, i32 0, i32 6, i32 1
  br label %1287

1271:                                             ; preds = %1247
  %1272 = load ptr, ptr @mdp5_cfg, align 4
  %1273 = getelementptr %struct.mdp5_cfg_hw, ptr %1272, i32 0, i32 6, i32 1, i32 1
  br label %1287

1274:                                             ; preds = %1247
  %1275 = load ptr, ptr @mdp5_cfg, align 4
  %1276 = getelementptr %struct.mdp5_cfg_hw, ptr %1275, i32 0, i32 4, i32 1, i32 3
  br label %1287

1277:                                             ; preds = %1247
  %1278 = load ptr, ptr @mdp5_cfg, align 4
  %1279 = getelementptr %struct.mdp5_cfg_hw, ptr %1278, i32 0, i32 5, i32 1, i32 3
  br label %1287

1280:                                             ; preds = %1247
  %1281 = load ptr, ptr @mdp5_cfg, align 4
  %1282 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1281, i32 0, i32 7, i32 1
  br label %1287

1283:                                             ; preds = %1247
  %1284 = load ptr, ptr @mdp5_cfg, align 4
  %1285 = getelementptr %struct.mdp5_cfg_hw, ptr %1284, i32 0, i32 7, i32 1, i32 1
  br label %1287

1286:                                             ; preds = %1247
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1287:                                             ; preds = %1283, %1280, %1277, %1274, %1271, %1268, %1265, %1262, %1259, %1256, %1253, %1250
  %1288 = phi ptr [ %1285, %1283 ], [ %1282, %1280 ], [ %1279, %1277 ], [ %1276, %1274 ], [ %1273, %1271 ], [ %1270, %1268 ], [ %1267, %1265 ], [ %1264, %1262 ], [ %1261, %1259 ], [ %1258, %1256 ], [ %1255, %1253 ], [ %1252, %1250 ]
  %1289 = load i32, ptr %1288, align 4
  %1290 = add i32 %1289, 808
  %1291 = getelementptr %struct.csc_cfg, ptr %1080, i32 0, i32 1, i32 4
  %1292 = load i32, ptr %1291, align 4
  %1293 = and i32 %1292, 8191
  %1294 = getelementptr %struct.csc_cfg, ptr %1080, i32 0, i32 1, i32 5
  %1295 = load i32, ptr %1294, align 4
  %1296 = shl i32 %1295, 16
  %1297 = and i32 %1296, 536805376
  %1298 = or i32 %1297, %1293
  %1299 = load i32, ptr %69, align 8
  %1300 = icmp slt i32 %1299, 1
  br i1 %1300, label %1301, label %1302, !prof !8

1301:                                             ; preds = %1287
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1302

1302:                                             ; preds = %1301, %1287
  %1303 = load ptr, ptr %74, align 4
  %1304 = getelementptr i8, ptr %1303, i32 %1290
  tail call void @msm_writel(i32 noundef %1298, ptr noundef %1304) #8
  switch i32 %20, label %1341 [
    i32 12, label %1338
    i32 1, label %1305
    i32 2, label %1308
    i32 3, label %1311
    i32 4, label %1314
    i32 5, label %1317
    i32 6, label %1320
    i32 7, label %1323
    i32 8, label %1326
    i32 9, label %1329
    i32 10, label %1332
    i32 11, label %1335
  ]

1305:                                             ; preds = %1302
  %1306 = load ptr, ptr @mdp5_cfg, align 4
  %1307 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1306, i32 0, i32 4, i32 1
  br label %1342

1308:                                             ; preds = %1302
  %1309 = load ptr, ptr @mdp5_cfg, align 4
  %1310 = getelementptr %struct.mdp5_cfg_hw, ptr %1309, i32 0, i32 4, i32 1, i32 1
  br label %1342

1311:                                             ; preds = %1302
  %1312 = load ptr, ptr @mdp5_cfg, align 4
  %1313 = getelementptr %struct.mdp5_cfg_hw, ptr %1312, i32 0, i32 4, i32 1, i32 2
  br label %1342

1314:                                             ; preds = %1302
  %1315 = load ptr, ptr @mdp5_cfg, align 4
  %1316 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1315, i32 0, i32 5, i32 1
  br label %1342

1317:                                             ; preds = %1302
  %1318 = load ptr, ptr @mdp5_cfg, align 4
  %1319 = getelementptr %struct.mdp5_cfg_hw, ptr %1318, i32 0, i32 5, i32 1, i32 1
  br label %1342

1320:                                             ; preds = %1302
  %1321 = load ptr, ptr @mdp5_cfg, align 4
  %1322 = getelementptr %struct.mdp5_cfg_hw, ptr %1321, i32 0, i32 5, i32 1, i32 2
  br label %1342

1323:                                             ; preds = %1302
  %1324 = load ptr, ptr @mdp5_cfg, align 4
  %1325 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1324, i32 0, i32 6, i32 1
  br label %1342

1326:                                             ; preds = %1302
  %1327 = load ptr, ptr @mdp5_cfg, align 4
  %1328 = getelementptr %struct.mdp5_cfg_hw, ptr %1327, i32 0, i32 6, i32 1, i32 1
  br label %1342

1329:                                             ; preds = %1302
  %1330 = load ptr, ptr @mdp5_cfg, align 4
  %1331 = getelementptr %struct.mdp5_cfg_hw, ptr %1330, i32 0, i32 4, i32 1, i32 3
  br label %1342

1332:                                             ; preds = %1302
  %1333 = load ptr, ptr @mdp5_cfg, align 4
  %1334 = getelementptr %struct.mdp5_cfg_hw, ptr %1333, i32 0, i32 5, i32 1, i32 3
  br label %1342

1335:                                             ; preds = %1302
  %1336 = load ptr, ptr @mdp5_cfg, align 4
  %1337 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1336, i32 0, i32 7, i32 1
  br label %1342

1338:                                             ; preds = %1302
  %1339 = load ptr, ptr @mdp5_cfg, align 4
  %1340 = getelementptr %struct.mdp5_cfg_hw, ptr %1339, i32 0, i32 7, i32 1, i32 1
  br label %1342

1341:                                             ; preds = %1302
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1342:                                             ; preds = %1338, %1335, %1332, %1329, %1326, %1323, %1320, %1317, %1314, %1311, %1308, %1305
  %1343 = phi ptr [ %1340, %1338 ], [ %1337, %1335 ], [ %1334, %1332 ], [ %1331, %1329 ], [ %1328, %1326 ], [ %1325, %1323 ], [ %1322, %1320 ], [ %1319, %1317 ], [ %1316, %1314 ], [ %1313, %1311 ], [ %1310, %1308 ], [ %1307, %1305 ]
  %1344 = load i32, ptr %1343, align 4
  %1345 = add i32 %1344, 812
  %1346 = getelementptr %struct.csc_cfg, ptr %1080, i32 0, i32 1, i32 6
  %1347 = load i32, ptr %1346, align 4
  %1348 = and i32 %1347, 8191
  %1349 = getelementptr %struct.csc_cfg, ptr %1080, i32 0, i32 1, i32 7
  %1350 = load i32, ptr %1349, align 4
  %1351 = shl i32 %1350, 16
  %1352 = and i32 %1351, 536805376
  %1353 = or i32 %1352, %1348
  %1354 = load i32, ptr %69, align 8
  %1355 = icmp slt i32 %1354, 1
  br i1 %1355, label %1356, label %1357, !prof !8

1356:                                             ; preds = %1342
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1357

1357:                                             ; preds = %1356, %1342
  %1358 = load ptr, ptr %74, align 4
  %1359 = getelementptr i8, ptr %1358, i32 %1345
  tail call void @msm_writel(i32 noundef %1353, ptr noundef %1359) #8
  switch i32 %20, label %1396 [
    i32 12, label %1393
    i32 1, label %1360
    i32 2, label %1363
    i32 3, label %1366
    i32 4, label %1369
    i32 5, label %1372
    i32 6, label %1375
    i32 7, label %1378
    i32 8, label %1381
    i32 9, label %1384
    i32 10, label %1387
    i32 11, label %1390
  ]

1360:                                             ; preds = %1357
  %1361 = load ptr, ptr @mdp5_cfg, align 4
  %1362 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1361, i32 0, i32 4, i32 1
  br label %1397

1363:                                             ; preds = %1357
  %1364 = load ptr, ptr @mdp5_cfg, align 4
  %1365 = getelementptr %struct.mdp5_cfg_hw, ptr %1364, i32 0, i32 4, i32 1, i32 1
  br label %1397

1366:                                             ; preds = %1357
  %1367 = load ptr, ptr @mdp5_cfg, align 4
  %1368 = getelementptr %struct.mdp5_cfg_hw, ptr %1367, i32 0, i32 4, i32 1, i32 2
  br label %1397

1369:                                             ; preds = %1357
  %1370 = load ptr, ptr @mdp5_cfg, align 4
  %1371 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1370, i32 0, i32 5, i32 1
  br label %1397

1372:                                             ; preds = %1357
  %1373 = load ptr, ptr @mdp5_cfg, align 4
  %1374 = getelementptr %struct.mdp5_cfg_hw, ptr %1373, i32 0, i32 5, i32 1, i32 1
  br label %1397

1375:                                             ; preds = %1357
  %1376 = load ptr, ptr @mdp5_cfg, align 4
  %1377 = getelementptr %struct.mdp5_cfg_hw, ptr %1376, i32 0, i32 5, i32 1, i32 2
  br label %1397

1378:                                             ; preds = %1357
  %1379 = load ptr, ptr @mdp5_cfg, align 4
  %1380 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1379, i32 0, i32 6, i32 1
  br label %1397

1381:                                             ; preds = %1357
  %1382 = load ptr, ptr @mdp5_cfg, align 4
  %1383 = getelementptr %struct.mdp5_cfg_hw, ptr %1382, i32 0, i32 6, i32 1, i32 1
  br label %1397

1384:                                             ; preds = %1357
  %1385 = load ptr, ptr @mdp5_cfg, align 4
  %1386 = getelementptr %struct.mdp5_cfg_hw, ptr %1385, i32 0, i32 4, i32 1, i32 3
  br label %1397

1387:                                             ; preds = %1357
  %1388 = load ptr, ptr @mdp5_cfg, align 4
  %1389 = getelementptr %struct.mdp5_cfg_hw, ptr %1388, i32 0, i32 5, i32 1, i32 3
  br label %1397

1390:                                             ; preds = %1357
  %1391 = load ptr, ptr @mdp5_cfg, align 4
  %1392 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1391, i32 0, i32 7, i32 1
  br label %1397

1393:                                             ; preds = %1357
  %1394 = load ptr, ptr @mdp5_cfg, align 4
  %1395 = getelementptr %struct.mdp5_cfg_hw, ptr %1394, i32 0, i32 7, i32 1, i32 1
  br label %1397

1396:                                             ; preds = %1357
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1397:                                             ; preds = %1393, %1390, %1387, %1384, %1381, %1378, %1375, %1372, %1369, %1366, %1363, %1360
  %1398 = phi ptr [ %1395, %1393 ], [ %1392, %1390 ], [ %1389, %1387 ], [ %1386, %1384 ], [ %1383, %1381 ], [ %1380, %1378 ], [ %1377, %1375 ], [ %1374, %1372 ], [ %1371, %1369 ], [ %1368, %1366 ], [ %1365, %1363 ], [ %1362, %1360 ]
  %1399 = load i32, ptr %1398, align 4
  %1400 = add i32 %1399, 816
  %1401 = getelementptr %struct.csc_cfg, ptr %1080, i32 0, i32 1, i32 8
  %1402 = load i32, ptr %1401, align 4
  %1403 = and i32 %1402, 8191
  %1404 = load i32, ptr %69, align 8
  %1405 = icmp slt i32 %1404, 1
  br i1 %1405, label %1406, label %1407, !prof !8

1406:                                             ; preds = %1397
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1407

1407:                                             ; preds = %1406, %1397
  %1408 = load ptr, ptr %74, align 4
  %1409 = getelementptr i8, ptr %1408, i32 %1400
  tail call void @msm_writel(i32 noundef %1403, ptr noundef %1409) #8
  %1410 = getelementptr inbounds %struct.csc_cfg, ptr %1080, i32 0, i32 4
  %1411 = getelementptr inbounds %struct.csc_cfg, ptr %1080, i32 0, i32 5
  br label %1412

1412:                                             ; preds = %1627, %1407
  %1413 = phi i32 [ %1630, %1627 ], [ 0, %1407 ]
  switch i32 %20, label %1444 [
    i32 12, label %1447
    i32 1, label %1414
    i32 2, label %1417
    i32 3, label %1420
    i32 4, label %1423
    i32 5, label %1426
    i32 6, label %1429
    i32 7, label %1432
    i32 8, label %1435
    i32 9, label %1438
    i32 10, label %1441
  ]

1414:                                             ; preds = %1412
  %1415 = load ptr, ptr @mdp5_cfg, align 4
  %1416 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1415, i32 0, i32 4, i32 1
  br label %1450

1417:                                             ; preds = %1412
  %1418 = load ptr, ptr @mdp5_cfg, align 4
  %1419 = getelementptr %struct.mdp5_cfg_hw, ptr %1418, i32 0, i32 4, i32 1, i32 1
  br label %1450

1420:                                             ; preds = %1412
  %1421 = load ptr, ptr @mdp5_cfg, align 4
  %1422 = getelementptr %struct.mdp5_cfg_hw, ptr %1421, i32 0, i32 4, i32 1, i32 2
  br label %1450

1423:                                             ; preds = %1412
  %1424 = load ptr, ptr @mdp5_cfg, align 4
  %1425 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1424, i32 0, i32 5, i32 1
  br label %1450

1426:                                             ; preds = %1412
  %1427 = load ptr, ptr @mdp5_cfg, align 4
  %1428 = getelementptr %struct.mdp5_cfg_hw, ptr %1427, i32 0, i32 5, i32 1, i32 1
  br label %1450

1429:                                             ; preds = %1412
  %1430 = load ptr, ptr @mdp5_cfg, align 4
  %1431 = getelementptr %struct.mdp5_cfg_hw, ptr %1430, i32 0, i32 5, i32 1, i32 2
  br label %1450

1432:                                             ; preds = %1412
  %1433 = load ptr, ptr @mdp5_cfg, align 4
  %1434 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1433, i32 0, i32 6, i32 1
  br label %1450

1435:                                             ; preds = %1412
  %1436 = load ptr, ptr @mdp5_cfg, align 4
  %1437 = getelementptr %struct.mdp5_cfg_hw, ptr %1436, i32 0, i32 6, i32 1, i32 1
  br label %1450

1438:                                             ; preds = %1412
  %1439 = load ptr, ptr @mdp5_cfg, align 4
  %1440 = getelementptr %struct.mdp5_cfg_hw, ptr %1439, i32 0, i32 4, i32 1, i32 3
  br label %1450

1441:                                             ; preds = %1412
  %1442 = load ptr, ptr @mdp5_cfg, align 4
  %1443 = getelementptr %struct.mdp5_cfg_hw, ptr %1442, i32 0, i32 5, i32 1, i32 3
  br label %1450

1444:                                             ; preds = %1412
  %1445 = load ptr, ptr @mdp5_cfg, align 4
  %1446 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1445, i32 0, i32 7, i32 1
  br label %1450

1447:                                             ; preds = %1412
  %1448 = load ptr, ptr @mdp5_cfg, align 4
  %1449 = getelementptr %struct.mdp5_cfg_hw, ptr %1448, i32 0, i32 7, i32 1, i32 1
  br label %1450

1450:                                             ; preds = %1447, %1444, %1441, %1438, %1435, %1432, %1429, %1426, %1423, %1420, %1417, %1414
  %1451 = phi ptr [ %1449, %1447 ], [ %1446, %1444 ], [ %1443, %1441 ], [ %1440, %1438 ], [ %1437, %1435 ], [ %1434, %1432 ], [ %1431, %1429 ], [ %1428, %1426 ], [ %1425, %1423 ], [ %1422, %1420 ], [ %1419, %1417 ], [ %1416, %1414 ]
  %1452 = load i32, ptr %1451, align 4
  %1453 = shl nuw nsw i32 %1413, 2
  %1454 = add nuw nsw i32 %1453, 820
  %1455 = add i32 %1454, %1452
  %1456 = shl nuw nsw i32 %1413, 1
  %1457 = or i32 %1456, 1
  %1458 = getelementptr i32, ptr %1410, i32 %1457
  %1459 = load i32, ptr %1458, align 4
  %1460 = and i32 %1459, 255
  %1461 = getelementptr i32, ptr %1410, i32 %1456
  %1462 = load i32, ptr %1461, align 4
  %1463 = shl i32 %1462, 8
  %1464 = and i32 %1463, 65280
  %1465 = or i32 %1464, %1460
  %1466 = load i32, ptr %69, align 8
  %1467 = icmp slt i32 %1466, 1
  br i1 %1467, label %1468, label %1469, !prof !8

1468:                                             ; preds = %1450
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1469

1469:                                             ; preds = %1468, %1450
  %1470 = load ptr, ptr %74, align 4
  %1471 = getelementptr i8, ptr %1470, i32 %1455
  tail call void @msm_writel(i32 noundef %1465, ptr noundef %1471) #8
  switch i32 %20, label %1508 [
    i32 12, label %1505
    i32 1, label %1472
    i32 2, label %1475
    i32 3, label %1478
    i32 4, label %1481
    i32 5, label %1484
    i32 6, label %1487
    i32 7, label %1490
    i32 8, label %1493
    i32 9, label %1496
    i32 10, label %1499
    i32 11, label %1502
  ]

1472:                                             ; preds = %1469
  %1473 = load ptr, ptr @mdp5_cfg, align 4
  %1474 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1473, i32 0, i32 4, i32 1
  br label %1509

1475:                                             ; preds = %1469
  %1476 = load ptr, ptr @mdp5_cfg, align 4
  %1477 = getelementptr %struct.mdp5_cfg_hw, ptr %1476, i32 0, i32 4, i32 1, i32 1
  br label %1509

1478:                                             ; preds = %1469
  %1479 = load ptr, ptr @mdp5_cfg, align 4
  %1480 = getelementptr %struct.mdp5_cfg_hw, ptr %1479, i32 0, i32 4, i32 1, i32 2
  br label %1509

1481:                                             ; preds = %1469
  %1482 = load ptr, ptr @mdp5_cfg, align 4
  %1483 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1482, i32 0, i32 5, i32 1
  br label %1509

1484:                                             ; preds = %1469
  %1485 = load ptr, ptr @mdp5_cfg, align 4
  %1486 = getelementptr %struct.mdp5_cfg_hw, ptr %1485, i32 0, i32 5, i32 1, i32 1
  br label %1509

1487:                                             ; preds = %1469
  %1488 = load ptr, ptr @mdp5_cfg, align 4
  %1489 = getelementptr %struct.mdp5_cfg_hw, ptr %1488, i32 0, i32 5, i32 1, i32 2
  br label %1509

1490:                                             ; preds = %1469
  %1491 = load ptr, ptr @mdp5_cfg, align 4
  %1492 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1491, i32 0, i32 6, i32 1
  br label %1509

1493:                                             ; preds = %1469
  %1494 = load ptr, ptr @mdp5_cfg, align 4
  %1495 = getelementptr %struct.mdp5_cfg_hw, ptr %1494, i32 0, i32 6, i32 1, i32 1
  br label %1509

1496:                                             ; preds = %1469
  %1497 = load ptr, ptr @mdp5_cfg, align 4
  %1498 = getelementptr %struct.mdp5_cfg_hw, ptr %1497, i32 0, i32 4, i32 1, i32 3
  br label %1509

1499:                                             ; preds = %1469
  %1500 = load ptr, ptr @mdp5_cfg, align 4
  %1501 = getelementptr %struct.mdp5_cfg_hw, ptr %1500, i32 0, i32 5, i32 1, i32 3
  br label %1509

1502:                                             ; preds = %1469
  %1503 = load ptr, ptr @mdp5_cfg, align 4
  %1504 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1503, i32 0, i32 7, i32 1
  br label %1509

1505:                                             ; preds = %1469
  %1506 = load ptr, ptr @mdp5_cfg, align 4
  %1507 = getelementptr %struct.mdp5_cfg_hw, ptr %1506, i32 0, i32 7, i32 1, i32 1
  br label %1509

1508:                                             ; preds = %1469
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1509:                                             ; preds = %1505, %1502, %1499, %1496, %1493, %1490, %1487, %1484, %1481, %1478, %1475, %1472
  %1510 = phi ptr [ %1507, %1505 ], [ %1504, %1502 ], [ %1501, %1499 ], [ %1498, %1496 ], [ %1495, %1493 ], [ %1492, %1490 ], [ %1489, %1487 ], [ %1486, %1484 ], [ %1483, %1481 ], [ %1480, %1478 ], [ %1477, %1475 ], [ %1474, %1472 ]
  %1511 = load i32, ptr %1510, align 4
  %1512 = add nuw nsw i32 %1453, 832
  %1513 = add i32 %1512, %1511
  %1514 = getelementptr i32, ptr %1411, i32 %1457
  %1515 = load i32, ptr %1514, align 4
  %1516 = and i32 %1515, 255
  %1517 = getelementptr i32, ptr %1411, i32 %1456
  %1518 = load i32, ptr %1517, align 4
  %1519 = shl i32 %1518, 8
  %1520 = and i32 %1519, 65280
  %1521 = or i32 %1520, %1516
  %1522 = load i32, ptr %69, align 8
  %1523 = icmp slt i32 %1522, 1
  br i1 %1523, label %1524, label %1525, !prof !8

1524:                                             ; preds = %1509
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1525

1525:                                             ; preds = %1524, %1509
  %1526 = load ptr, ptr %74, align 4
  %1527 = getelementptr i8, ptr %1526, i32 %1513
  tail call void @msm_writel(i32 noundef %1521, ptr noundef %1527) #8
  switch i32 %20, label %1564 [
    i32 12, label %1561
    i32 1, label %1528
    i32 2, label %1531
    i32 3, label %1534
    i32 4, label %1537
    i32 5, label %1540
    i32 6, label %1543
    i32 7, label %1546
    i32 8, label %1549
    i32 9, label %1552
    i32 10, label %1555
    i32 11, label %1558
  ]

1528:                                             ; preds = %1525
  %1529 = load ptr, ptr @mdp5_cfg, align 4
  %1530 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1529, i32 0, i32 4, i32 1
  br label %1565

1531:                                             ; preds = %1525
  %1532 = load ptr, ptr @mdp5_cfg, align 4
  %1533 = getelementptr %struct.mdp5_cfg_hw, ptr %1532, i32 0, i32 4, i32 1, i32 1
  br label %1565

1534:                                             ; preds = %1525
  %1535 = load ptr, ptr @mdp5_cfg, align 4
  %1536 = getelementptr %struct.mdp5_cfg_hw, ptr %1535, i32 0, i32 4, i32 1, i32 2
  br label %1565

1537:                                             ; preds = %1525
  %1538 = load ptr, ptr @mdp5_cfg, align 4
  %1539 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1538, i32 0, i32 5, i32 1
  br label %1565

1540:                                             ; preds = %1525
  %1541 = load ptr, ptr @mdp5_cfg, align 4
  %1542 = getelementptr %struct.mdp5_cfg_hw, ptr %1541, i32 0, i32 5, i32 1, i32 1
  br label %1565

1543:                                             ; preds = %1525
  %1544 = load ptr, ptr @mdp5_cfg, align 4
  %1545 = getelementptr %struct.mdp5_cfg_hw, ptr %1544, i32 0, i32 5, i32 1, i32 2
  br label %1565

1546:                                             ; preds = %1525
  %1547 = load ptr, ptr @mdp5_cfg, align 4
  %1548 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1547, i32 0, i32 6, i32 1
  br label %1565

1549:                                             ; preds = %1525
  %1550 = load ptr, ptr @mdp5_cfg, align 4
  %1551 = getelementptr %struct.mdp5_cfg_hw, ptr %1550, i32 0, i32 6, i32 1, i32 1
  br label %1565

1552:                                             ; preds = %1525
  %1553 = load ptr, ptr @mdp5_cfg, align 4
  %1554 = getelementptr %struct.mdp5_cfg_hw, ptr %1553, i32 0, i32 4, i32 1, i32 3
  br label %1565

1555:                                             ; preds = %1525
  %1556 = load ptr, ptr @mdp5_cfg, align 4
  %1557 = getelementptr %struct.mdp5_cfg_hw, ptr %1556, i32 0, i32 5, i32 1, i32 3
  br label %1565

1558:                                             ; preds = %1525
  %1559 = load ptr, ptr @mdp5_cfg, align 4
  %1560 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1559, i32 0, i32 7, i32 1
  br label %1565

1561:                                             ; preds = %1525
  %1562 = load ptr, ptr @mdp5_cfg, align 4
  %1563 = getelementptr %struct.mdp5_cfg_hw, ptr %1562, i32 0, i32 7, i32 1, i32 1
  br label %1565

1564:                                             ; preds = %1525
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1565:                                             ; preds = %1561, %1558, %1555, %1552, %1549, %1546, %1543, %1540, %1537, %1534, %1531, %1528
  %1566 = phi ptr [ %1563, %1561 ], [ %1560, %1558 ], [ %1557, %1555 ], [ %1554, %1552 ], [ %1551, %1549 ], [ %1548, %1546 ], [ %1545, %1543 ], [ %1542, %1540 ], [ %1539, %1537 ], [ %1536, %1534 ], [ %1533, %1531 ], [ %1530, %1528 ]
  %1567 = load i32, ptr %1566, align 4
  %1568 = add nuw nsw i32 %1453, 844
  %1569 = add i32 %1568, %1567
  %1570 = getelementptr %struct.csc_cfg, ptr %1080, i32 0, i32 2, i32 %1413
  %1571 = load i32, ptr %1570, align 4
  %1572 = and i32 %1571, 511
  %1573 = load i32, ptr %69, align 8
  %1574 = icmp slt i32 %1573, 1
  br i1 %1574, label %1575, label %1576, !prof !8

1575:                                             ; preds = %1565
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1576

1576:                                             ; preds = %1575, %1565
  %1577 = load ptr, ptr %74, align 4
  %1578 = getelementptr i8, ptr %1577, i32 %1569
  tail call void @msm_writel(i32 noundef %1572, ptr noundef %1578) #8
  switch i32 %20, label %1615 [
    i32 12, label %1612
    i32 1, label %1579
    i32 2, label %1582
    i32 3, label %1585
    i32 4, label %1588
    i32 5, label %1591
    i32 6, label %1594
    i32 7, label %1597
    i32 8, label %1600
    i32 9, label %1603
    i32 10, label %1606
    i32 11, label %1609
  ]

1579:                                             ; preds = %1576
  %1580 = load ptr, ptr @mdp5_cfg, align 4
  %1581 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1580, i32 0, i32 4, i32 1
  br label %1616

1582:                                             ; preds = %1576
  %1583 = load ptr, ptr @mdp5_cfg, align 4
  %1584 = getelementptr %struct.mdp5_cfg_hw, ptr %1583, i32 0, i32 4, i32 1, i32 1
  br label %1616

1585:                                             ; preds = %1576
  %1586 = load ptr, ptr @mdp5_cfg, align 4
  %1587 = getelementptr %struct.mdp5_cfg_hw, ptr %1586, i32 0, i32 4, i32 1, i32 2
  br label %1616

1588:                                             ; preds = %1576
  %1589 = load ptr, ptr @mdp5_cfg, align 4
  %1590 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1589, i32 0, i32 5, i32 1
  br label %1616

1591:                                             ; preds = %1576
  %1592 = load ptr, ptr @mdp5_cfg, align 4
  %1593 = getelementptr %struct.mdp5_cfg_hw, ptr %1592, i32 0, i32 5, i32 1, i32 1
  br label %1616

1594:                                             ; preds = %1576
  %1595 = load ptr, ptr @mdp5_cfg, align 4
  %1596 = getelementptr %struct.mdp5_cfg_hw, ptr %1595, i32 0, i32 5, i32 1, i32 2
  br label %1616

1597:                                             ; preds = %1576
  %1598 = load ptr, ptr @mdp5_cfg, align 4
  %1599 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1598, i32 0, i32 6, i32 1
  br label %1616

1600:                                             ; preds = %1576
  %1601 = load ptr, ptr @mdp5_cfg, align 4
  %1602 = getelementptr %struct.mdp5_cfg_hw, ptr %1601, i32 0, i32 6, i32 1, i32 1
  br label %1616

1603:                                             ; preds = %1576
  %1604 = load ptr, ptr @mdp5_cfg, align 4
  %1605 = getelementptr %struct.mdp5_cfg_hw, ptr %1604, i32 0, i32 4, i32 1, i32 3
  br label %1616

1606:                                             ; preds = %1576
  %1607 = load ptr, ptr @mdp5_cfg, align 4
  %1608 = getelementptr %struct.mdp5_cfg_hw, ptr %1607, i32 0, i32 5, i32 1, i32 3
  br label %1616

1609:                                             ; preds = %1576
  %1610 = load ptr, ptr @mdp5_cfg, align 4
  %1611 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1610, i32 0, i32 7, i32 1
  br label %1616

1612:                                             ; preds = %1576
  %1613 = load ptr, ptr @mdp5_cfg, align 4
  %1614 = getelementptr %struct.mdp5_cfg_hw, ptr %1613, i32 0, i32 7, i32 1, i32 1
  br label %1616

1615:                                             ; preds = %1576
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1616:                                             ; preds = %1612, %1609, %1606, %1603, %1600, %1597, %1594, %1591, %1588, %1585, %1582, %1579
  %1617 = phi ptr [ %1614, %1612 ], [ %1611, %1609 ], [ %1608, %1606 ], [ %1605, %1603 ], [ %1602, %1600 ], [ %1599, %1597 ], [ %1596, %1594 ], [ %1593, %1591 ], [ %1590, %1588 ], [ %1587, %1585 ], [ %1584, %1582 ], [ %1581, %1579 ]
  %1618 = load i32, ptr %1617, align 4
  %1619 = add nuw nsw i32 %1453, 856
  %1620 = add i32 %1619, %1618
  %1621 = getelementptr %struct.csc_cfg, ptr %1080, i32 0, i32 3, i32 %1413
  %1622 = load i32, ptr %1621, align 4
  %1623 = and i32 %1622, 511
  %1624 = load i32, ptr %69, align 8
  %1625 = icmp slt i32 %1624, 1
  br i1 %1625, label %1626, label %1627, !prof !8

1626:                                             ; preds = %1616
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1627

1627:                                             ; preds = %1626, %1616
  %1628 = load ptr, ptr %74, align 4
  %1629 = getelementptr i8, ptr %1628, i32 %1620
  tail call void @msm_writel(i32 noundef %1623, ptr noundef %1629) #8
  %1630 = add nuw nsw i32 %1413, 1
  %1631 = icmp eq i32 %1630, 3
  br i1 %1631, label %1729, label %1412

1632:                                             ; preds = %1075
  switch i32 %20, label %1669 [
    i32 12, label %1666
    i32 1, label %1633
    i32 2, label %1636
    i32 3, label %1639
    i32 4, label %1642
    i32 5, label %1645
    i32 6, label %1648
    i32 7, label %1651
    i32 8, label %1654
    i32 9, label %1657
    i32 10, label %1660
    i32 11, label %1663
  ]

1633:                                             ; preds = %1632
  %1634 = load ptr, ptr @mdp5_cfg, align 4
  %1635 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1634, i32 0, i32 4, i32 1
  br label %1670

1636:                                             ; preds = %1632
  %1637 = load ptr, ptr @mdp5_cfg, align 4
  %1638 = getelementptr %struct.mdp5_cfg_hw, ptr %1637, i32 0, i32 4, i32 1, i32 1
  br label %1670

1639:                                             ; preds = %1632
  %1640 = load ptr, ptr @mdp5_cfg, align 4
  %1641 = getelementptr %struct.mdp5_cfg_hw, ptr %1640, i32 0, i32 4, i32 1, i32 2
  br label %1670

1642:                                             ; preds = %1632
  %1643 = load ptr, ptr @mdp5_cfg, align 4
  %1644 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1643, i32 0, i32 5, i32 1
  br label %1670

1645:                                             ; preds = %1632
  %1646 = load ptr, ptr @mdp5_cfg, align 4
  %1647 = getelementptr %struct.mdp5_cfg_hw, ptr %1646, i32 0, i32 5, i32 1, i32 1
  br label %1670

1648:                                             ; preds = %1632
  %1649 = load ptr, ptr @mdp5_cfg, align 4
  %1650 = getelementptr %struct.mdp5_cfg_hw, ptr %1649, i32 0, i32 5, i32 1, i32 2
  br label %1670

1651:                                             ; preds = %1632
  %1652 = load ptr, ptr @mdp5_cfg, align 4
  %1653 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1652, i32 0, i32 6, i32 1
  br label %1670

1654:                                             ; preds = %1632
  %1655 = load ptr, ptr @mdp5_cfg, align 4
  %1656 = getelementptr %struct.mdp5_cfg_hw, ptr %1655, i32 0, i32 6, i32 1, i32 1
  br label %1670

1657:                                             ; preds = %1632
  %1658 = load ptr, ptr @mdp5_cfg, align 4
  %1659 = getelementptr %struct.mdp5_cfg_hw, ptr %1658, i32 0, i32 4, i32 1, i32 3
  br label %1670

1660:                                             ; preds = %1632
  %1661 = load ptr, ptr @mdp5_cfg, align 4
  %1662 = getelementptr %struct.mdp5_cfg_hw, ptr %1661, i32 0, i32 5, i32 1, i32 3
  br label %1670

1663:                                             ; preds = %1632
  %1664 = load ptr, ptr @mdp5_cfg, align 4
  %1665 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1664, i32 0, i32 7, i32 1
  br label %1670

1666:                                             ; preds = %1632
  %1667 = load ptr, ptr @mdp5_cfg, align 4
  %1668 = getelementptr %struct.mdp5_cfg_hw, ptr %1667, i32 0, i32 7, i32 1, i32 1
  br label %1670

1669:                                             ; preds = %1632
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1670:                                             ; preds = %1666, %1663, %1660, %1657, %1654, %1651, %1648, %1645, %1642, %1639, %1636, %1633
  %1671 = phi ptr [ %1668, %1666 ], [ %1665, %1663 ], [ %1662, %1660 ], [ %1659, %1657 ], [ %1656, %1654 ], [ %1653, %1651 ], [ %1650, %1648 ], [ %1647, %1645 ], [ %1644, %1642 ], [ %1641, %1639 ], [ %1638, %1636 ], [ %1635, %1633 ]
  %1672 = load i32, ptr %1671, align 4
  %1673 = add i32 %1672, 512
  %1674 = load i32, ptr %69, align 8
  %1675 = icmp slt i32 %1674, 1
  br i1 %1675, label %1676, label %1677, !prof !8

1676:                                             ; preds = %1670
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 175, i32 noundef 9, ptr noundef null) #8
  br label %1677

1677:                                             ; preds = %1676, %1670
  %1678 = load ptr, ptr %74, align 4
  %1679 = getelementptr i8, ptr %1678, i32 %1673
  %1680 = tail call i32 @msm_readl(ptr noundef %1679) #8
  switch i32 %20, label %1717 [
    i32 12, label %1714
    i32 1, label %1681
    i32 2, label %1684
    i32 3, label %1687
    i32 4, label %1690
    i32 5, label %1693
    i32 6, label %1696
    i32 7, label %1699
    i32 8, label %1702
    i32 9, label %1705
    i32 10, label %1708
    i32 11, label %1711
  ]

1681:                                             ; preds = %1677
  %1682 = load ptr, ptr @mdp5_cfg, align 4
  %1683 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1682, i32 0, i32 4, i32 1
  br label %1718

1684:                                             ; preds = %1677
  %1685 = load ptr, ptr @mdp5_cfg, align 4
  %1686 = getelementptr %struct.mdp5_cfg_hw, ptr %1685, i32 0, i32 4, i32 1, i32 1
  br label %1718

1687:                                             ; preds = %1677
  %1688 = load ptr, ptr @mdp5_cfg, align 4
  %1689 = getelementptr %struct.mdp5_cfg_hw, ptr %1688, i32 0, i32 4, i32 1, i32 2
  br label %1718

1690:                                             ; preds = %1677
  %1691 = load ptr, ptr @mdp5_cfg, align 4
  %1692 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1691, i32 0, i32 5, i32 1
  br label %1718

1693:                                             ; preds = %1677
  %1694 = load ptr, ptr @mdp5_cfg, align 4
  %1695 = getelementptr %struct.mdp5_cfg_hw, ptr %1694, i32 0, i32 5, i32 1, i32 1
  br label %1718

1696:                                             ; preds = %1677
  %1697 = load ptr, ptr @mdp5_cfg, align 4
  %1698 = getelementptr %struct.mdp5_cfg_hw, ptr %1697, i32 0, i32 5, i32 1, i32 2
  br label %1718

1699:                                             ; preds = %1677
  %1700 = load ptr, ptr @mdp5_cfg, align 4
  %1701 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1700, i32 0, i32 6, i32 1
  br label %1718

1702:                                             ; preds = %1677
  %1703 = load ptr, ptr @mdp5_cfg, align 4
  %1704 = getelementptr %struct.mdp5_cfg_hw, ptr %1703, i32 0, i32 6, i32 1, i32 1
  br label %1718

1705:                                             ; preds = %1677
  %1706 = load ptr, ptr @mdp5_cfg, align 4
  %1707 = getelementptr %struct.mdp5_cfg_hw, ptr %1706, i32 0, i32 4, i32 1, i32 3
  br label %1718

1708:                                             ; preds = %1677
  %1709 = load ptr, ptr @mdp5_cfg, align 4
  %1710 = getelementptr %struct.mdp5_cfg_hw, ptr %1709, i32 0, i32 5, i32 1, i32 3
  br label %1718

1711:                                             ; preds = %1677
  %1712 = load ptr, ptr @mdp5_cfg, align 4
  %1713 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1712, i32 0, i32 7, i32 1
  br label %1718

1714:                                             ; preds = %1677
  %1715 = load ptr, ptr @mdp5_cfg, align 4
  %1716 = getelementptr %struct.mdp5_cfg_hw, ptr %1715, i32 0, i32 7, i32 1, i32 1
  br label %1718

1717:                                             ; preds = %1677
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1718:                                             ; preds = %1714, %1711, %1708, %1705, %1702, %1699, %1696, %1693, %1690, %1687, %1684, %1681
  %1719 = phi ptr [ %1716, %1714 ], [ %1713, %1711 ], [ %1710, %1708 ], [ %1707, %1705 ], [ %1704, %1702 ], [ %1701, %1699 ], [ %1698, %1696 ], [ %1695, %1693 ], [ %1692, %1690 ], [ %1689, %1687 ], [ %1686, %1684 ], [ %1683, %1681 ]
  %1720 = load i32, ptr %1719, align 4
  %1721 = load i32, ptr %69, align 8
  %1722 = icmp slt i32 %1721, 1
  br i1 %1722, label %1723, label %1724, !prof !8

1723:                                             ; preds = %1718
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1724

1724:                                             ; preds = %1723, %1718
  %1725 = add i32 %1720, 512
  %1726 = and i32 %1680, -131073
  %1727 = load ptr, ptr %74, align 4
  %1728 = getelementptr i8, ptr %1727, i32 %1725
  tail call void @msm_writel(i32 noundef %1726, ptr noundef %1728) #8
  br label %1729

1729:                                             ; preds = %1724, %1627, %1079, %1071
  switch i32 %20, label %1766 [
    i32 12, label %1763
    i32 1, label %1730
    i32 2, label %1733
    i32 3, label %1736
    i32 4, label %1739
    i32 5, label %1742
    i32 6, label %1745
    i32 7, label %1748
    i32 8, label %1751
    i32 9, label %1754
    i32 10, label %1757
    i32 11, label %1760
  ]

1730:                                             ; preds = %1729
  %1731 = load ptr, ptr @mdp5_cfg, align 4
  %1732 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1731, i32 0, i32 4, i32 1
  br label %1767

1733:                                             ; preds = %1729
  %1734 = load ptr, ptr @mdp5_cfg, align 4
  %1735 = getelementptr %struct.mdp5_cfg_hw, ptr %1734, i32 0, i32 4, i32 1, i32 1
  br label %1767

1736:                                             ; preds = %1729
  %1737 = load ptr, ptr @mdp5_cfg, align 4
  %1738 = getelementptr %struct.mdp5_cfg_hw, ptr %1737, i32 0, i32 4, i32 1, i32 2
  br label %1767

1739:                                             ; preds = %1729
  %1740 = load ptr, ptr @mdp5_cfg, align 4
  %1741 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1740, i32 0, i32 5, i32 1
  br label %1767

1742:                                             ; preds = %1729
  %1743 = load ptr, ptr @mdp5_cfg, align 4
  %1744 = getelementptr %struct.mdp5_cfg_hw, ptr %1743, i32 0, i32 5, i32 1, i32 1
  br label %1767

1745:                                             ; preds = %1729
  %1746 = load ptr, ptr @mdp5_cfg, align 4
  %1747 = getelementptr %struct.mdp5_cfg_hw, ptr %1746, i32 0, i32 5, i32 1, i32 2
  br label %1767

1748:                                             ; preds = %1729
  %1749 = load ptr, ptr @mdp5_cfg, align 4
  %1750 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1749, i32 0, i32 6, i32 1
  br label %1767

1751:                                             ; preds = %1729
  %1752 = load ptr, ptr @mdp5_cfg, align 4
  %1753 = getelementptr %struct.mdp5_cfg_hw, ptr %1752, i32 0, i32 6, i32 1, i32 1
  br label %1767

1754:                                             ; preds = %1729
  %1755 = load ptr, ptr @mdp5_cfg, align 4
  %1756 = getelementptr %struct.mdp5_cfg_hw, ptr %1755, i32 0, i32 4, i32 1, i32 3
  br label %1767

1757:                                             ; preds = %1729
  %1758 = load ptr, ptr @mdp5_cfg, align 4
  %1759 = getelementptr %struct.mdp5_cfg_hw, ptr %1758, i32 0, i32 5, i32 1, i32 3
  br label %1767

1760:                                             ; preds = %1729
  %1761 = load ptr, ptr @mdp5_cfg, align 4
  %1762 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1761, i32 0, i32 7, i32 1
  br label %1767

1763:                                             ; preds = %1729
  %1764 = load ptr, ptr @mdp5_cfg, align 4
  %1765 = getelementptr %struct.mdp5_cfg_hw, ptr %1764, i32 0, i32 7, i32 1, i32 1
  br label %1767

1766:                                             ; preds = %1729
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1767:                                             ; preds = %1763, %1760, %1757, %1754, %1751, %1748, %1745, %1742, %1739, %1736, %1733, %1730
  %1768 = phi ptr [ %1765, %1763 ], [ %1762, %1760 ], [ %1759, %1757 ], [ %1756, %1754 ], [ %1753, %1751 ], [ %1750, %1748 ], [ %1747, %1745 ], [ %1744, %1742 ], [ %1741, %1739 ], [ %1738, %1736 ], [ %1735, %1733 ], [ %1732, %1730 ]
  %1769 = load i32, ptr %1768, align 4
  %1770 = add i32 %1769, 36
  %1771 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 6
  %1772 = load i32, ptr %1771, align 8
  %1773 = and i32 %1772, 65535
  %1774 = getelementptr %struct.drm_framebuffer, ptr %2, i32 0, i32 6, i32 1
  %1775 = load i32, ptr %1774, align 4
  %1776 = shl i32 %1775, 16
  %1777 = or i32 %1776, %1773
  %1778 = load i32, ptr %69, align 8
  %1779 = icmp slt i32 %1778, 1
  br i1 %1779, label %1780, label %1781, !prof !8

1780:                                             ; preds = %1767
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1781

1781:                                             ; preds = %1780, %1767
  %1782 = load ptr, ptr %74, align 4
  %1783 = getelementptr i8, ptr %1782, i32 %1770
  tail call void @msm_writel(i32 noundef %1777, ptr noundef %1783) #8
  switch i32 %20, label %1820 [
    i32 12, label %1817
    i32 1, label %1784
    i32 2, label %1787
    i32 3, label %1790
    i32 4, label %1793
    i32 5, label %1796
    i32 6, label %1799
    i32 7, label %1802
    i32 8, label %1805
    i32 9, label %1808
    i32 10, label %1811
    i32 11, label %1814
  ]

1784:                                             ; preds = %1781
  %1785 = load ptr, ptr @mdp5_cfg, align 4
  %1786 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1785, i32 0, i32 4, i32 1
  br label %1821

1787:                                             ; preds = %1781
  %1788 = load ptr, ptr @mdp5_cfg, align 4
  %1789 = getelementptr %struct.mdp5_cfg_hw, ptr %1788, i32 0, i32 4, i32 1, i32 1
  br label %1821

1790:                                             ; preds = %1781
  %1791 = load ptr, ptr @mdp5_cfg, align 4
  %1792 = getelementptr %struct.mdp5_cfg_hw, ptr %1791, i32 0, i32 4, i32 1, i32 2
  br label %1821

1793:                                             ; preds = %1781
  %1794 = load ptr, ptr @mdp5_cfg, align 4
  %1795 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1794, i32 0, i32 5, i32 1
  br label %1821

1796:                                             ; preds = %1781
  %1797 = load ptr, ptr @mdp5_cfg, align 4
  %1798 = getelementptr %struct.mdp5_cfg_hw, ptr %1797, i32 0, i32 5, i32 1, i32 1
  br label %1821

1799:                                             ; preds = %1781
  %1800 = load ptr, ptr @mdp5_cfg, align 4
  %1801 = getelementptr %struct.mdp5_cfg_hw, ptr %1800, i32 0, i32 5, i32 1, i32 2
  br label %1821

1802:                                             ; preds = %1781
  %1803 = load ptr, ptr @mdp5_cfg, align 4
  %1804 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1803, i32 0, i32 6, i32 1
  br label %1821

1805:                                             ; preds = %1781
  %1806 = load ptr, ptr @mdp5_cfg, align 4
  %1807 = getelementptr %struct.mdp5_cfg_hw, ptr %1806, i32 0, i32 6, i32 1, i32 1
  br label %1821

1808:                                             ; preds = %1781
  %1809 = load ptr, ptr @mdp5_cfg, align 4
  %1810 = getelementptr %struct.mdp5_cfg_hw, ptr %1809, i32 0, i32 4, i32 1, i32 3
  br label %1821

1811:                                             ; preds = %1781
  %1812 = load ptr, ptr @mdp5_cfg, align 4
  %1813 = getelementptr %struct.mdp5_cfg_hw, ptr %1812, i32 0, i32 5, i32 1, i32 3
  br label %1821

1814:                                             ; preds = %1781
  %1815 = load ptr, ptr @mdp5_cfg, align 4
  %1816 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1815, i32 0, i32 7, i32 1
  br label %1821

1817:                                             ; preds = %1781
  %1818 = load ptr, ptr @mdp5_cfg, align 4
  %1819 = getelementptr %struct.mdp5_cfg_hw, ptr %1818, i32 0, i32 7, i32 1, i32 1
  br label %1821

1820:                                             ; preds = %1781
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1821:                                             ; preds = %1817, %1814, %1811, %1808, %1805, %1802, %1799, %1796, %1793, %1790, %1787, %1784
  %1822 = phi ptr [ %1819, %1817 ], [ %1816, %1814 ], [ %1813, %1811 ], [ %1810, %1808 ], [ %1807, %1805 ], [ %1804, %1802 ], [ %1801, %1799 ], [ %1798, %1796 ], [ %1795, %1793 ], [ %1792, %1790 ], [ %1789, %1787 ], [ %1786, %1784 ]
  %1823 = load i32, ptr %1822, align 4
  %1824 = add i32 %1823, 40
  %1825 = getelementptr %struct.drm_framebuffer, ptr %2, i32 0, i32 6, i32 2
  %1826 = load i32, ptr %1825, align 8
  %1827 = and i32 %1826, 65535
  %1828 = getelementptr %struct.drm_framebuffer, ptr %2, i32 0, i32 6, i32 3
  %1829 = load i32, ptr %1828, align 4
  %1830 = shl i32 %1829, 16
  %1831 = or i32 %1830, %1827
  %1832 = load i32, ptr %69, align 8
  %1833 = icmp slt i32 %1832, 1
  br i1 %1833, label %1834, label %1835, !prof !8

1834:                                             ; preds = %1821
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1835

1835:                                             ; preds = %1834, %1821
  %1836 = load ptr, ptr %74, align 4
  %1837 = getelementptr i8, ptr %1836, i32 %1824
  tail call void @msm_writel(i32 noundef %1831, ptr noundef %1837) #8
  switch i32 %20, label %1874 [
    i32 12, label %1871
    i32 1, label %1838
    i32 2, label %1841
    i32 3, label %1844
    i32 4, label %1847
    i32 5, label %1850
    i32 6, label %1853
    i32 7, label %1856
    i32 8, label %1859
    i32 9, label %1862
    i32 10, label %1865
    i32 11, label %1868
  ]

1838:                                             ; preds = %1835
  %1839 = load ptr, ptr @mdp5_cfg, align 4
  %1840 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1839, i32 0, i32 4, i32 1
  br label %1875

1841:                                             ; preds = %1835
  %1842 = load ptr, ptr @mdp5_cfg, align 4
  %1843 = getelementptr %struct.mdp5_cfg_hw, ptr %1842, i32 0, i32 4, i32 1, i32 1
  br label %1875

1844:                                             ; preds = %1835
  %1845 = load ptr, ptr @mdp5_cfg, align 4
  %1846 = getelementptr %struct.mdp5_cfg_hw, ptr %1845, i32 0, i32 4, i32 1, i32 2
  br label %1875

1847:                                             ; preds = %1835
  %1848 = load ptr, ptr @mdp5_cfg, align 4
  %1849 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1848, i32 0, i32 5, i32 1
  br label %1875

1850:                                             ; preds = %1835
  %1851 = load ptr, ptr @mdp5_cfg, align 4
  %1852 = getelementptr %struct.mdp5_cfg_hw, ptr %1851, i32 0, i32 5, i32 1, i32 1
  br label %1875

1853:                                             ; preds = %1835
  %1854 = load ptr, ptr @mdp5_cfg, align 4
  %1855 = getelementptr %struct.mdp5_cfg_hw, ptr %1854, i32 0, i32 5, i32 1, i32 2
  br label %1875

1856:                                             ; preds = %1835
  %1857 = load ptr, ptr @mdp5_cfg, align 4
  %1858 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1857, i32 0, i32 6, i32 1
  br label %1875

1859:                                             ; preds = %1835
  %1860 = load ptr, ptr @mdp5_cfg, align 4
  %1861 = getelementptr %struct.mdp5_cfg_hw, ptr %1860, i32 0, i32 6, i32 1, i32 1
  br label %1875

1862:                                             ; preds = %1835
  %1863 = load ptr, ptr @mdp5_cfg, align 4
  %1864 = getelementptr %struct.mdp5_cfg_hw, ptr %1863, i32 0, i32 4, i32 1, i32 3
  br label %1875

1865:                                             ; preds = %1835
  %1866 = load ptr, ptr @mdp5_cfg, align 4
  %1867 = getelementptr %struct.mdp5_cfg_hw, ptr %1866, i32 0, i32 5, i32 1, i32 3
  br label %1875

1868:                                             ; preds = %1835
  %1869 = load ptr, ptr @mdp5_cfg, align 4
  %1870 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1869, i32 0, i32 7, i32 1
  br label %1875

1871:                                             ; preds = %1835
  %1872 = load ptr, ptr @mdp5_cfg, align 4
  %1873 = getelementptr %struct.mdp5_cfg_hw, ptr %1872, i32 0, i32 7, i32 1, i32 1
  br label %1875

1874:                                             ; preds = %1835
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1875:                                             ; preds = %1871, %1868, %1865, %1862, %1859, %1856, %1853, %1850, %1847, %1844, %1841, %1838
  %1876 = phi ptr [ %1873, %1871 ], [ %1870, %1868 ], [ %1867, %1865 ], [ %1864, %1862 ], [ %1861, %1859 ], [ %1858, %1856 ], [ %1855, %1853 ], [ %1852, %1850 ], [ %1849, %1847 ], [ %1846, %1844 ], [ %1843, %1841 ], [ %1840, %1838 ]
  %1877 = load i32, ptr %1876, align 4
  %1878 = add i32 %1877, 20
  %1879 = getelementptr inbounds %struct.msm_kms, ptr %0, i32 0, i32 3
  %1880 = load ptr, ptr %1879, align 4
  %1881 = tail call i32 @msm_framebuffer_iova(ptr noundef %2, ptr noundef %1880, i32 noundef 0) #8
  %1882 = load i32, ptr %69, align 8
  %1883 = icmp slt i32 %1882, 1
  br i1 %1883, label %1884, label %1885, !prof !8

1884:                                             ; preds = %1875
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1885

1885:                                             ; preds = %1884, %1875
  %1886 = load ptr, ptr %74, align 4
  %1887 = getelementptr i8, ptr %1886, i32 %1878
  tail call void @msm_writel(i32 noundef %1881, ptr noundef %1887) #8
  switch i32 %20, label %1924 [
    i32 12, label %1921
    i32 1, label %1888
    i32 2, label %1891
    i32 3, label %1894
    i32 4, label %1897
    i32 5, label %1900
    i32 6, label %1903
    i32 7, label %1906
    i32 8, label %1909
    i32 9, label %1912
    i32 10, label %1915
    i32 11, label %1918
  ]

1888:                                             ; preds = %1885
  %1889 = load ptr, ptr @mdp5_cfg, align 4
  %1890 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1889, i32 0, i32 4, i32 1
  br label %1925

1891:                                             ; preds = %1885
  %1892 = load ptr, ptr @mdp5_cfg, align 4
  %1893 = getelementptr %struct.mdp5_cfg_hw, ptr %1892, i32 0, i32 4, i32 1, i32 1
  br label %1925

1894:                                             ; preds = %1885
  %1895 = load ptr, ptr @mdp5_cfg, align 4
  %1896 = getelementptr %struct.mdp5_cfg_hw, ptr %1895, i32 0, i32 4, i32 1, i32 2
  br label %1925

1897:                                             ; preds = %1885
  %1898 = load ptr, ptr @mdp5_cfg, align 4
  %1899 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1898, i32 0, i32 5, i32 1
  br label %1925

1900:                                             ; preds = %1885
  %1901 = load ptr, ptr @mdp5_cfg, align 4
  %1902 = getelementptr %struct.mdp5_cfg_hw, ptr %1901, i32 0, i32 5, i32 1, i32 1
  br label %1925

1903:                                             ; preds = %1885
  %1904 = load ptr, ptr @mdp5_cfg, align 4
  %1905 = getelementptr %struct.mdp5_cfg_hw, ptr %1904, i32 0, i32 5, i32 1, i32 2
  br label %1925

1906:                                             ; preds = %1885
  %1907 = load ptr, ptr @mdp5_cfg, align 4
  %1908 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1907, i32 0, i32 6, i32 1
  br label %1925

1909:                                             ; preds = %1885
  %1910 = load ptr, ptr @mdp5_cfg, align 4
  %1911 = getelementptr %struct.mdp5_cfg_hw, ptr %1910, i32 0, i32 6, i32 1, i32 1
  br label %1925

1912:                                             ; preds = %1885
  %1913 = load ptr, ptr @mdp5_cfg, align 4
  %1914 = getelementptr %struct.mdp5_cfg_hw, ptr %1913, i32 0, i32 4, i32 1, i32 3
  br label %1925

1915:                                             ; preds = %1885
  %1916 = load ptr, ptr @mdp5_cfg, align 4
  %1917 = getelementptr %struct.mdp5_cfg_hw, ptr %1916, i32 0, i32 5, i32 1, i32 3
  br label %1925

1918:                                             ; preds = %1885
  %1919 = load ptr, ptr @mdp5_cfg, align 4
  %1920 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1919, i32 0, i32 7, i32 1
  br label %1925

1921:                                             ; preds = %1885
  %1922 = load ptr, ptr @mdp5_cfg, align 4
  %1923 = getelementptr %struct.mdp5_cfg_hw, ptr %1922, i32 0, i32 7, i32 1, i32 1
  br label %1925

1924:                                             ; preds = %1885
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1925:                                             ; preds = %1921, %1918, %1915, %1912, %1909, %1906, %1903, %1900, %1897, %1894, %1891, %1888
  %1926 = phi ptr [ %1923, %1921 ], [ %1920, %1918 ], [ %1917, %1915 ], [ %1914, %1912 ], [ %1911, %1909 ], [ %1908, %1906 ], [ %1905, %1903 ], [ %1902, %1900 ], [ %1899, %1897 ], [ %1896, %1894 ], [ %1893, %1891 ], [ %1890, %1888 ]
  %1927 = load i32, ptr %1926, align 4
  %1928 = add i32 %1927, 24
  %1929 = load ptr, ptr %1879, align 4
  %1930 = tail call i32 @msm_framebuffer_iova(ptr noundef %2, ptr noundef %1929, i32 noundef 1) #8
  %1931 = load i32, ptr %69, align 8
  %1932 = icmp slt i32 %1931, 1
  br i1 %1932, label %1933, label %1934, !prof !8

1933:                                             ; preds = %1925
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1934

1934:                                             ; preds = %1933, %1925
  %1935 = load ptr, ptr %74, align 4
  %1936 = getelementptr i8, ptr %1935, i32 %1928
  tail call void @msm_writel(i32 noundef %1930, ptr noundef %1936) #8
  switch i32 %20, label %1973 [
    i32 12, label %1970
    i32 1, label %1937
    i32 2, label %1940
    i32 3, label %1943
    i32 4, label %1946
    i32 5, label %1949
    i32 6, label %1952
    i32 7, label %1955
    i32 8, label %1958
    i32 9, label %1961
    i32 10, label %1964
    i32 11, label %1967
  ]

1937:                                             ; preds = %1934
  %1938 = load ptr, ptr @mdp5_cfg, align 4
  %1939 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1938, i32 0, i32 4, i32 1
  br label %1974

1940:                                             ; preds = %1934
  %1941 = load ptr, ptr @mdp5_cfg, align 4
  %1942 = getelementptr %struct.mdp5_cfg_hw, ptr %1941, i32 0, i32 4, i32 1, i32 1
  br label %1974

1943:                                             ; preds = %1934
  %1944 = load ptr, ptr @mdp5_cfg, align 4
  %1945 = getelementptr %struct.mdp5_cfg_hw, ptr %1944, i32 0, i32 4, i32 1, i32 2
  br label %1974

1946:                                             ; preds = %1934
  %1947 = load ptr, ptr @mdp5_cfg, align 4
  %1948 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1947, i32 0, i32 5, i32 1
  br label %1974

1949:                                             ; preds = %1934
  %1950 = load ptr, ptr @mdp5_cfg, align 4
  %1951 = getelementptr %struct.mdp5_cfg_hw, ptr %1950, i32 0, i32 5, i32 1, i32 1
  br label %1974

1952:                                             ; preds = %1934
  %1953 = load ptr, ptr @mdp5_cfg, align 4
  %1954 = getelementptr %struct.mdp5_cfg_hw, ptr %1953, i32 0, i32 5, i32 1, i32 2
  br label %1974

1955:                                             ; preds = %1934
  %1956 = load ptr, ptr @mdp5_cfg, align 4
  %1957 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1956, i32 0, i32 6, i32 1
  br label %1974

1958:                                             ; preds = %1934
  %1959 = load ptr, ptr @mdp5_cfg, align 4
  %1960 = getelementptr %struct.mdp5_cfg_hw, ptr %1959, i32 0, i32 6, i32 1, i32 1
  br label %1974

1961:                                             ; preds = %1934
  %1962 = load ptr, ptr @mdp5_cfg, align 4
  %1963 = getelementptr %struct.mdp5_cfg_hw, ptr %1962, i32 0, i32 4, i32 1, i32 3
  br label %1974

1964:                                             ; preds = %1934
  %1965 = load ptr, ptr @mdp5_cfg, align 4
  %1966 = getelementptr %struct.mdp5_cfg_hw, ptr %1965, i32 0, i32 5, i32 1, i32 3
  br label %1974

1967:                                             ; preds = %1934
  %1968 = load ptr, ptr @mdp5_cfg, align 4
  %1969 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1968, i32 0, i32 7, i32 1
  br label %1974

1970:                                             ; preds = %1934
  %1971 = load ptr, ptr @mdp5_cfg, align 4
  %1972 = getelementptr %struct.mdp5_cfg_hw, ptr %1971, i32 0, i32 7, i32 1, i32 1
  br label %1974

1973:                                             ; preds = %1934
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

1974:                                             ; preds = %1970, %1967, %1964, %1961, %1958, %1955, %1952, %1949, %1946, %1943, %1940, %1937
  %1975 = phi ptr [ %1972, %1970 ], [ %1969, %1967 ], [ %1966, %1964 ], [ %1963, %1961 ], [ %1960, %1958 ], [ %1957, %1955 ], [ %1954, %1952 ], [ %1951, %1949 ], [ %1948, %1946 ], [ %1945, %1943 ], [ %1942, %1940 ], [ %1939, %1937 ]
  %1976 = load i32, ptr %1975, align 4
  %1977 = add i32 %1976, 28
  %1978 = load ptr, ptr %1879, align 4
  %1979 = tail call i32 @msm_framebuffer_iova(ptr noundef %2, ptr noundef %1978, i32 noundef 2) #8
  %1980 = load i32, ptr %69, align 8
  %1981 = icmp slt i32 %1980, 1
  br i1 %1981, label %1982, label %1983, !prof !8

1982:                                             ; preds = %1974
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %1983

1983:                                             ; preds = %1982, %1974
  %1984 = load ptr, ptr %74, align 4
  %1985 = getelementptr i8, ptr %1984, i32 %1977
  tail call void @msm_writel(i32 noundef %1979, ptr noundef %1985) #8
  switch i32 %20, label %2022 [
    i32 12, label %2019
    i32 1, label %1986
    i32 2, label %1989
    i32 3, label %1992
    i32 4, label %1995
    i32 5, label %1998
    i32 6, label %2001
    i32 7, label %2004
    i32 8, label %2007
    i32 9, label %2010
    i32 10, label %2013
    i32 11, label %2016
  ]

1986:                                             ; preds = %1983
  %1987 = load ptr, ptr @mdp5_cfg, align 4
  %1988 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1987, i32 0, i32 4, i32 1
  br label %2023

1989:                                             ; preds = %1983
  %1990 = load ptr, ptr @mdp5_cfg, align 4
  %1991 = getelementptr %struct.mdp5_cfg_hw, ptr %1990, i32 0, i32 4, i32 1, i32 1
  br label %2023

1992:                                             ; preds = %1983
  %1993 = load ptr, ptr @mdp5_cfg, align 4
  %1994 = getelementptr %struct.mdp5_cfg_hw, ptr %1993, i32 0, i32 4, i32 1, i32 2
  br label %2023

1995:                                             ; preds = %1983
  %1996 = load ptr, ptr @mdp5_cfg, align 4
  %1997 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %1996, i32 0, i32 5, i32 1
  br label %2023

1998:                                             ; preds = %1983
  %1999 = load ptr, ptr @mdp5_cfg, align 4
  %2000 = getelementptr %struct.mdp5_cfg_hw, ptr %1999, i32 0, i32 5, i32 1, i32 1
  br label %2023

2001:                                             ; preds = %1983
  %2002 = load ptr, ptr @mdp5_cfg, align 4
  %2003 = getelementptr %struct.mdp5_cfg_hw, ptr %2002, i32 0, i32 5, i32 1, i32 2
  br label %2023

2004:                                             ; preds = %1983
  %2005 = load ptr, ptr @mdp5_cfg, align 4
  %2006 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %2005, i32 0, i32 6, i32 1
  br label %2023

2007:                                             ; preds = %1983
  %2008 = load ptr, ptr @mdp5_cfg, align 4
  %2009 = getelementptr %struct.mdp5_cfg_hw, ptr %2008, i32 0, i32 6, i32 1, i32 1
  br label %2023

2010:                                             ; preds = %1983
  %2011 = load ptr, ptr @mdp5_cfg, align 4
  %2012 = getelementptr %struct.mdp5_cfg_hw, ptr %2011, i32 0, i32 4, i32 1, i32 3
  br label %2023

2013:                                             ; preds = %1983
  %2014 = load ptr, ptr @mdp5_cfg, align 4
  %2015 = getelementptr %struct.mdp5_cfg_hw, ptr %2014, i32 0, i32 5, i32 1, i32 3
  br label %2023

2016:                                             ; preds = %1983
  %2017 = load ptr, ptr @mdp5_cfg, align 4
  %2018 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %2017, i32 0, i32 7, i32 1
  br label %2023

2019:                                             ; preds = %1983
  %2020 = load ptr, ptr @mdp5_cfg, align 4
  %2021 = getelementptr %struct.mdp5_cfg_hw, ptr %2020, i32 0, i32 7, i32 1, i32 1
  br label %2023

2022:                                             ; preds = %1983
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 563, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

2023:                                             ; preds = %2019, %2016, %2013, %2010, %2007, %2004, %2001, %1998, %1995, %1992, %1989, %1986
  %2024 = phi ptr [ %2021, %2019 ], [ %2018, %2016 ], [ %2015, %2013 ], [ %2012, %2010 ], [ %2009, %2007 ], [ %2006, %2004 ], [ %2003, %2001 ], [ %2000, %1998 ], [ %1997, %1995 ], [ %1994, %1992 ], [ %1991, %1989 ], [ %1988, %1986 ]
  %2025 = load i32, ptr %2024, align 4
  %2026 = load ptr, ptr %1879, align 4
  %2027 = tail call i32 @msm_framebuffer_iova(ptr noundef %2, ptr noundef %2026, i32 noundef 3) #8
  %2028 = load i32, ptr %69, align 8
  %2029 = icmp slt i32 %2028, 1
  br i1 %2029, label %2030, label %2031, !prof !8

2030:                                             ; preds = %2023
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 169, i32 noundef 9, ptr noundef null) #8
  br label %2031

2031:                                             ; preds = %2030, %2023
  %2032 = add i32 %2025, 32
  %2033 = load ptr, ptr %74, align 4
  %2034 = getelementptr i8, ptr %2033, i32 %2032
  tail call void @msm_writel(i32 noundef %2027, ptr noundef %2034) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp_get_default_csc_cfg(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_framebuffer_iova(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_crtc_get_pipeline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_crtc_get_ctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_commit(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!10 = !{!11}
!11 = distinct !{!11, !12, !"drm_plane_state_src: argument 0"}
!12 = distinct !{!12, !"drm_plane_state_src"}
!13 = !{i64 2155669601, i64 2155670106, i64 2155669638, i64 2155669694, i64 2155669728, i64 2155669752, i64 2155669793, i64 2155669814, i64 2155669842, i64 2155669876}
!14 = !{i64 2155670592, i64 2155671097, i64 2155670629, i64 2155670685, i64 2155670719, i64 2155670743, i64 2155670784, i64 2155670805, i64 2155670833, i64 2155670867}
!15 = !{i64 2155687747, i64 2155688252, i64 2155687784, i64 2155687840, i64 2155687874, i64 2155687898, i64 2155687939, i64 2155687960, i64 2155687988, i64 2155688022}
