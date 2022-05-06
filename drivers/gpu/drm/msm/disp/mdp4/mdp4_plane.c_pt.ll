; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdp4_plane = type { %struct.drm_plane, ptr, i32, i32, i32, [32 x i32], i8 }
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
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
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
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mdp_format = type { %struct.msm_format, i32, i32, i32, i32, [4 x i8], i8, i8, i8, i8, i32, i32, i8 }
%struct.msm_format = type { i32 }
%struct.mdp4_kms = type { %struct.mdp_kms, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mdp_irq, i8, ptr, i64 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.csc_cfg = type { i32, [9 x i32], [3 x i32], [3 x i32], [6 x i32], [6 x i32] }

@pipe_names = internal unnamed_addr constant [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@mdp4_plane_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @mdp4_plane_destroy, ptr @drm_atomic_helper_plane_reset, ptr @mdp4_plane_set_property, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@supported_format_modifiers = internal constant [3 x i64] [i64 288230376151711745, i64 0, i64 72057594037927935], align 8
@mdp4_plane_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr @msm_atomic_prepare_fb, ptr @mdp4_plane_cleanup_fb, ptr @mdp4_plane_atomic_check, ptr @mdp4_plane_atomic_update, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [4 x i8] c"VG1\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"VG2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"RGB1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"RGB2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"RGB3\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"VG3\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"VG4\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s: cleanup: FB[%u]\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"%s: disabled!\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"%s: FB[%u] %u,%u,%u,%u -> CRTC[%u] %d,%d,%u,%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"*ERROR* Width down scaling exceeds limits!\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"*ERROR* Height down scaling exceeds limits!\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"*ERROR* Width up scaling exceeds limits!\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"*ERROR* Height up scaling exceeds limits!\0A\00", align 1
@switch.table.mdp4_plane_init = private unnamed_addr constant [7 x i32] [i32 15, i32 15, i32 4, i32 4, i32 4, i32 15, i32 15], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mdp4_plane_pipe(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mdp4_plane, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mdp4_plane_init(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 608) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mdp4_plane, ptr %5, i32 0, i32 2
  store i32 %1, ptr %8, align 4
  %9 = getelementptr [7 x ptr], ptr @pipe_names, i32 0, i32 %1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mdp4_plane, ptr %5, i32 0, i32 1
  store ptr %10, ptr %11, align 8
  %12 = icmp ult i32 %1, 7
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = getelementptr inbounds [7 x i32], ptr @switch.table.mdp4_plane_init, i32 0, i32 %1
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi i32 [ %15, %13 ], [ 0, %7 ]
  %18 = getelementptr inbounds %struct.mdp4_plane, ptr %5, i32 0, i32 3
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.mdp4_plane, ptr %5, i32 0, i32 5
  %20 = and i32 %17, 12
  %21 = icmp ne i32 %20, 12
  %22 = tail call i32 @mdp_get_formats(ptr noundef %19, i32 noundef 32, i1 noundef zeroext %21) #6
  %23 = getelementptr inbounds %struct.mdp4_plane, ptr %5, i32 0, i32 4
  store i32 %22, ptr %23, align 4
  %24 = zext i1 %2 to i32
  %25 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 255, ptr noundef nonnull @mdp4_plane_funcs, ptr noundef %19, i32 noundef %22, ptr noundef nonnull @supported_format_modifiers, i32 noundef %24, ptr noundef null) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.drm_plane, ptr %5, i32 0, i32 18
  store ptr @mdp4_plane_helper_funcs, ptr %28, align 8
  tail call void @drm_plane_enable_fb_damage_clips(ptr noundef nonnull %5) #6
  br label %31

29:                                               ; preds = %16
  tail call void @drm_plane_cleanup(ptr noundef nonnull %5) #6
  tail call void @kfree(ptr noundef nonnull %5) #6
  %30 = inttoptr i32 %25 to ptr
  br label %31

31:                                               ; preds = %29, %27, %3
  %32 = phi ptr [ %5, %27 ], [ %30, %29 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_get_formats(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_enable_fb_damage_clips(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_plane_destroy(ptr noundef %0) #1 {
  tail call void @drm_plane_cleanup(ptr noundef %0) #6
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mdp4_plane_set_property(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i64 noundef %2) #4 {
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_atomic_prepare_fb(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_plane_cleanup_fb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
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
  %12 = getelementptr inbounds %struct.mdp4_plane, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_framebuffer, ptr %4, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %13, i32 noundef %15) #6
  %16 = getelementptr inbounds %struct.msm_kms, ptr %11, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void @msm_framebuffer_cleanup(ptr noundef nonnull %4, ptr noundef %17) #6
  br label %18

18:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mdp4_plane_atomic_check(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp4_plane_atomic_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.msm_drm_private, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mdp4_plane, ptr %0, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp ne ptr %10, null
  %37 = icmp ne ptr %12, null
  %38 = and i1 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.mdp4_plane, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef %41) #6
  br label %299

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 4
  %44 = load ptr, ptr %43, align 8
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 842094158
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 8
  %49 = load i64, ptr %48, align 8
  %50 = icmp eq i64 %49, 288230376151711745
  br i1 %50, label %52, label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i1 [ false, %47 ], [ true, %51 ]
  %54 = phi i32 [ 1073741824, %47 ], [ 0, %51 ]
  %55 = lshr i32 %22, 16
  %56 = lshr i32 %24, 16
  %57 = lshr i32 %26, 16
  %58 = lshr i32 %28, 16
  %59 = getelementptr inbounds %struct.mdp4_plane, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef %60, i32 noundef %62, i32 noundef %55, i32 noundef %56, i32 noundef %57, i32 noundef %58, i32 noundef %64, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20) #6
  %65 = tail call ptr @msm_framebuffer_format(ptr noundef nonnull %12) #6
  %66 = shl i32 %18, 3
  %67 = icmp ugt i32 %57, %66
  br i1 %67, label %295, label %68

68:                                               ; preds = %52
  %69 = shl i32 %20, 3
  %70 = icmp ugt i32 %58, %69
  br i1 %70, label %295, label %71

71:                                               ; preds = %68
  %72 = shl nuw nsw i32 %57, 3
  %73 = icmp ult i32 %72, %18
  br i1 %73, label %295, label %74

74:                                               ; preds = %71
  %75 = shl nuw nsw i32 %58, 3
  %76 = icmp ult i32 %75, %20
  br i1 %76, label %295, label %77

77:                                               ; preds = %74
  %78 = icmp eq i32 %57, %18
  br i1 %78, label %97, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.mdp_format, ptr %65, i32 0, i32 12
  %81 = load i8, ptr %80, align 4, !range !8
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %79
  %84 = icmp ult i32 %57, %18
  %85 = lshr i32 %26, 18
  %86 = icmp ult i32 %85, %18
  %87 = select i1 %86, i32 1, i32 5
  %88 = select i1 %84, i32 9, i32 %87
  %89 = freeze i32 %18
  %90 = udiv i32 536870912, %89
  %91 = mul i32 %90, %89
  %92 = sub i32 536870912, %91
  %93 = mul i32 %90, %57
  %94 = mul i32 %92, %57
  %95 = udiv i32 %94, %18
  %96 = add i32 %95, %93
  br label %97

97:                                               ; preds = %83, %79, %77
  %98 = phi i32 [ 0, %77 ], [ %88, %83 ], [ 1, %79 ]
  %99 = phi i32 [ 536870912, %77 ], [ %96, %83 ], [ 536870912, %79 ]
  %100 = icmp eq i32 %58, %20
  br i1 %100, label %121, label %101

101:                                              ; preds = %97
  %102 = or i32 %98, 2
  %103 = getelementptr inbounds %struct.mdp_format, ptr %65, i32 0, i32 12
  %104 = load i8, ptr %103, align 4, !range !8
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %121, label %106

106:                                              ; preds = %101
  %107 = icmp ult i32 %58, %20
  %108 = lshr i32 %28, 18
  %109 = icmp ult i32 %108, %20
  %110 = select i1 %109, i32 0, i32 16
  %111 = select i1 %107, i32 32, i32 %110
  %112 = or i32 %102, %111
  %113 = freeze i32 %20
  %114 = udiv i32 536870912, %113
  %115 = mul i32 %114, %113
  %116 = sub i32 536870912, %115
  %117 = mul i32 %114, %58
  %118 = mul i32 %116, %58
  %119 = udiv i32 %118, %20
  %120 = add i32 %119, %117
  br label %121

121:                                              ; preds = %106, %101, %97
  %122 = phi i32 [ %98, %97 ], [ %112, %106 ], [ %102, %101 ]
  %123 = phi i32 [ 536870912, %97 ], [ %120, %106 ], [ 536870912, %101 ]
  %124 = shl i32 %35, 16
  %125 = add i32 %124, 131072
  %126 = and i32 %28, -65536
  %127 = or i32 %126, %57
  %128 = getelementptr inbounds %struct.mdp4_kms, ptr %33, i32 0, i32 3
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr i8, ptr %129, i32 %125
  tail call void @msm_writel(i32 noundef %127, ptr noundef %130) #6
  %131 = add i32 %124, 131076
  %132 = and i32 %24, -65536
  %133 = or i32 %132, %55
  %134 = load ptr, ptr %128, align 8
  %135 = getelementptr i8, ptr %134, i32 %131
  tail call void @msm_writel(i32 noundef %133, ptr noundef %135) #6
  %136 = add i32 %124, 131080
  %137 = and i32 %18, 65535
  %138 = shl i32 %20, 16
  %139 = or i32 %138, %137
  %140 = load ptr, ptr %128, align 8
  %141 = getelementptr i8, ptr %140, i32 %136
  tail call void @msm_writel(i32 noundef %139, ptr noundef %141) #6
  %142 = add i32 %124, 131084
  %143 = and i32 %14, 65535
  %144 = shl i32 %16, 16
  %145 = or i32 %144, %143
  %146 = load ptr, ptr %128, align 8
  %147 = getelementptr i8, ptr %146, i32 %142
  tail call void @msm_writel(i32 noundef %145, ptr noundef %147) #6
  %148 = load ptr, ptr %0, align 8
  %149 = getelementptr inbounds %struct.drm_device, ptr %148, i32 0, i32 5
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.msm_drm_private, ptr %150, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  %153 = load i32, ptr %34, align 4
  %154 = shl i32 %153, 16
  %155 = add i32 %154, 131136
  %156 = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 6
  %157 = load i32, ptr %156, align 8
  %158 = and i32 %157, 65535
  %159 = getelementptr %struct.drm_framebuffer, ptr %12, i32 0, i32 6, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = shl i32 %160, 16
  %162 = or i32 %161, %158
  %163 = getelementptr inbounds %struct.mdp4_kms, ptr %152, i32 0, i32 3
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr i8, ptr %164, i32 %155
  tail call void @msm_writel(i32 noundef %162, ptr noundef %165) #6
  %166 = add i32 %154, 131140
  %167 = getelementptr %struct.drm_framebuffer, ptr %12, i32 0, i32 6, i32 2
  %168 = load i32, ptr %167, align 8
  %169 = and i32 %168, 65535
  %170 = getelementptr %struct.drm_framebuffer, ptr %12, i32 0, i32 6, i32 3
  %171 = load i32, ptr %170, align 4
  %172 = shl i32 %171, 16
  %173 = or i32 %172, %169
  %174 = load ptr, ptr %163, align 8
  %175 = getelementptr i8, ptr %174, i32 %166
  tail call void @msm_writel(i32 noundef %173, ptr noundef %175) #6
  %176 = add i32 %154, 131088
  %177 = getelementptr inbounds %struct.msm_kms, ptr %152, i32 0, i32 3
  %178 = load ptr, ptr %177, align 4
  %179 = tail call i32 @msm_framebuffer_iova(ptr noundef nonnull %12, ptr noundef %178, i32 noundef 0) #6
  %180 = load ptr, ptr %163, align 8
  %181 = getelementptr i8, ptr %180, i32 %176
  tail call void @msm_writel(i32 noundef %179, ptr noundef %181) #6
  %182 = add i32 %154, 131092
  %183 = load ptr, ptr %177, align 4
  %184 = tail call i32 @msm_framebuffer_iova(ptr noundef nonnull %12, ptr noundef %183, i32 noundef 1) #6
  %185 = load ptr, ptr %163, align 8
  %186 = getelementptr i8, ptr %185, i32 %182
  tail call void @msm_writel(i32 noundef %184, ptr noundef %186) #6
  %187 = add i32 %154, 131096
  %188 = load ptr, ptr %177, align 4
  %189 = tail call i32 @msm_framebuffer_iova(ptr noundef nonnull %12, ptr noundef %188, i32 noundef 2) #6
  %190 = load ptr, ptr %163, align 8
  %191 = getelementptr i8, ptr %190, i32 %187
  tail call void @msm_writel(i32 noundef %189, ptr noundef %191) #6
  %192 = add i32 %154, 131100
  %193 = load ptr, ptr %177, align 4
  %194 = tail call i32 @msm_framebuffer_iova(ptr noundef nonnull %12, ptr noundef %193, i32 noundef 3) #6
  %195 = load ptr, ptr %163, align 8
  %196 = getelementptr i8, ptr %195, i32 %192
  tail call void @msm_writel(i32 noundef %194, ptr noundef %196) #6
  %197 = add i32 %124, 131152
  %198 = getelementptr inbounds %struct.mdp_format, ptr %65, i32 0, i32 4
  %199 = load i32, ptr %198, align 4
  %200 = shl i32 %199, 6
  %201 = and i32 %200, 192
  %202 = getelementptr inbounds %struct.mdp_format, ptr %65, i32 0, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = shl i32 %203, 4
  %205 = and i32 %204, 48
  %206 = getelementptr inbounds %struct.mdp_format, ptr %65, i32 0, i32 2
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 3
  %209 = getelementptr inbounds %struct.mdp_format, ptr %65, i32 0, i32 3
  %210 = load i32, ptr %209, align 4
  %211 = shl i32 %210, 2
  %212 = and i32 %211, 12
  %213 = getelementptr inbounds %struct.mdp_format, ptr %65, i32 0, i32 6
  %214 = load i8, ptr %213, align 4, !range !8
  %215 = icmp eq i8 %214, 0
  %216 = select i1 %215, i32 0, i32 256
  %217 = getelementptr inbounds %struct.mdp_format, ptr %65, i32 0, i32 8
  %218 = load i8, ptr %217, align 2
  %219 = zext i8 %218 to i32
  %220 = shl nuw nsw i32 %219, 9
  %221 = add nuw nsw i32 %220, 1536
  %222 = and i32 %221, 1536
  %223 = getelementptr inbounds %struct.mdp_format, ptr %65, i32 0, i32 9
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i32
  %226 = shl nuw nsw i32 %225, 13
  %227 = add nuw nsw i32 %226, 24576
  %228 = and i32 %227, 24576
  %229 = getelementptr inbounds %struct.mdp_format, ptr %65, i32 0, i32 10
  %230 = load i32, ptr %229, align 4
  %231 = shl i32 %230, 19
  %232 = and i32 %231, 1572864
  %233 = getelementptr inbounds %struct.mdp_format, ptr %65, i32 0, i32 11
  %234 = load i32, ptr %233, align 4
  %235 = shl i32 %234, 26
  %236 = and i32 %235, 201326592
  %237 = getelementptr inbounds %struct.mdp_format, ptr %65, i32 0, i32 7
  %238 = load i8, ptr %237, align 1, !range !8
  %239 = icmp eq i8 %238, 0
  %240 = select i1 %239, i32 0, i32 131072
  %241 = or i32 %201, %54
  %242 = or i32 %241, %205
  %243 = or i32 %242, %208
  %244 = or i32 %243, %212
  %245 = or i32 %244, %216
  %246 = or i32 %245, %222
  %247 = or i32 %246, %232
  %248 = or i32 %247, %228
  %249 = or i32 %248, %236
  %250 = or i32 %249, %240
  %251 = load ptr, ptr %128, align 8
  %252 = getelementptr i8, ptr %251, i32 %197
  tail call void @msm_writel(i32 noundef %250, ptr noundef %252) #6
  %253 = add i32 %124, 131156
  %254 = getelementptr inbounds %struct.mdp_format, ptr %65, i32 0, i32 5
  %255 = load i8, ptr %254, align 4
  %256 = zext i8 %255 to i32
  %257 = getelementptr %struct.mdp_format, ptr %65, i32 0, i32 5, i32 1
  %258 = load i8, ptr %257, align 1
  %259 = zext i8 %258 to i32
  %260 = shl nuw nsw i32 %259, 8
  %261 = or i32 %260, %256
  %262 = getelementptr %struct.mdp_format, ptr %65, i32 0, i32 5, i32 2
  %263 = load i8, ptr %262, align 2
  %264 = zext i8 %263 to i32
  %265 = shl nuw nsw i32 %264, 16
  %266 = or i32 %261, %265
  %267 = getelementptr %struct.mdp_format, ptr %65, i32 0, i32 5, i32 3
  %268 = load i8, ptr %267, align 1
  %269 = zext i8 %268 to i32
  %270 = shl nuw i32 %269, 24
  %271 = or i32 %266, %270
  %272 = load ptr, ptr %128, align 8
  %273 = getelementptr i8, ptr %272, i32 %253
  tail call void @msm_writel(i32 noundef %271, ptr noundef %273) #6
  %274 = getelementptr inbounds %struct.mdp_format, ptr %65, i32 0, i32 12
  %275 = load i8, ptr %274, align 4, !range !8
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %121
  %278 = tail call ptr @mdp_get_default_csc_cfg(i32 noundef 1) #6
  %279 = or i32 %122, 2560
  tail call fastcc void @mdp4_write_csc_config(ptr noundef %33, i32 noundef %35, ptr noundef %278) #6
  br label %280

280:                                              ; preds = %277, %121
  %281 = phi i32 [ %279, %277 ], [ %122, %121 ]
  %282 = add i32 %124, 131160
  %283 = load ptr, ptr %128, align 8
  %284 = getelementptr i8, ptr %283, i32 %282
  tail call void @msm_writel(i32 noundef %281, ptr noundef %284) #6
  %285 = add i32 %124, 131164
  %286 = load ptr, ptr %128, align 8
  %287 = getelementptr i8, ptr %286, i32 %285
  tail call void @msm_writel(i32 noundef %99, ptr noundef %287) #6
  %288 = add i32 %124, 131168
  %289 = load ptr, ptr %128, align 8
  %290 = getelementptr i8, ptr %289, i32 %288
  tail call void @msm_writel(i32 noundef %123, ptr noundef %290) #6
  br i1 %53, label %299, label %291

291:                                              ; preds = %280
  %292 = add i32 %124, 131144
  %293 = load ptr, ptr %128, align 8
  %294 = getelementptr i8, ptr %293, i32 %292
  tail call void @msm_writel(i32 noundef %127, ptr noundef %294) #6
  br label %299

295:                                              ; preds = %74, %71, %68, %52
  %296 = phi ptr [ @.str.12, %52 ], [ @.str.13, %68 ], [ @.str.14, %71 ], [ @.str.15, %74 ]
  %297 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 2
  %298 = load ptr, ptr %297, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %298, ptr noundef nonnull @.str.11, ptr noundef nonnull %296) #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 129, i32 noundef 9, ptr noundef null) #6
  br label %299

299:                                              ; preds = %295, %291, %280, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_framebuffer_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp_get_default_csc_cfg(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mdp4_write_csc_config(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = shl i32 %1, 16
  %5 = add i32 %4, 148480
  %6 = getelementptr inbounds %struct.mdp4_kms, ptr %0, i32 0, i32 3
  %7 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 1, i32 0
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %6, align 8
  %10 = getelementptr i8, ptr %9, i32 %5
  tail call void @msm_writel(i32 noundef %8, ptr noundef %10) #6
  %11 = add i32 %4, 148484
  %12 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr i8, ptr %14, i32 %11
  tail call void @msm_writel(i32 noundef %13, ptr noundef %15) #6
  %16 = add i32 %4, 148488
  %17 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 1, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr i8, ptr %19, i32 %16
  tail call void @msm_writel(i32 noundef %18, ptr noundef %20) #6
  %21 = add i32 %4, 148492
  %22 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 1, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr i8, ptr %24, i32 %21
  tail call void @msm_writel(i32 noundef %23, ptr noundef %25) #6
  %26 = add i32 %4, 148496
  %27 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 1, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr i8, ptr %29, i32 %26
  tail call void @msm_writel(i32 noundef %28, ptr noundef %30) #6
  %31 = add i32 %4, 148500
  %32 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 1, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr i8, ptr %34, i32 %31
  tail call void @msm_writel(i32 noundef %33, ptr noundef %35) #6
  %36 = add i32 %4, 148504
  %37 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 1, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr i8, ptr %39, i32 %36
  tail call void @msm_writel(i32 noundef %38, ptr noundef %40) #6
  %41 = add i32 %4, 148508
  %42 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 1, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %6, align 8
  %45 = getelementptr i8, ptr %44, i32 %41
  tail call void @msm_writel(i32 noundef %43, ptr noundef %45) #6
  %46 = add i32 %4, 148512
  %47 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 1, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr i8, ptr %49, i32 %46
  tail call void @msm_writel(i32 noundef %48, ptr noundef %50) #6
  %51 = add i32 %4, 148736
  %52 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 2, i32 0
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %6, align 8
  %55 = getelementptr i8, ptr %54, i32 %51
  tail call void @msm_writel(i32 noundef %53, ptr noundef %55) #6
  %56 = add i32 %4, 148864
  %57 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 3, i32 0
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %6, align 8
  %60 = getelementptr i8, ptr %59, i32 %56
  tail call void @msm_writel(i32 noundef %58, ptr noundef %60) #6
  %61 = add i32 %4, 148740
  %62 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 2, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr i8, ptr %64, i32 %61
  tail call void @msm_writel(i32 noundef %63, ptr noundef %65) #6
  %66 = add i32 %4, 148868
  %67 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 3, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %6, align 8
  %70 = getelementptr i8, ptr %69, i32 %66
  tail call void @msm_writel(i32 noundef %68, ptr noundef %70) #6
  %71 = add i32 %4, 148744
  %72 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 2, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr %6, align 8
  %75 = getelementptr i8, ptr %74, i32 %71
  tail call void @msm_writel(i32 noundef %73, ptr noundef %75) #6
  %76 = add i32 %4, 148872
  %77 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 3, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %6, align 8
  %80 = getelementptr i8, ptr %79, i32 %76
  tail call void @msm_writel(i32 noundef %78, ptr noundef %80) #6
  %81 = add i32 %4, 148992
  %82 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 4, i32 0
  %83 = load i32, ptr %82, align 4
  %84 = load ptr, ptr %6, align 8
  %85 = getelementptr i8, ptr %84, i32 %81
  tail call void @msm_writel(i32 noundef %83, ptr noundef %85) #6
  %86 = add i32 %4, 149120
  %87 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 5, i32 0
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr %6, align 8
  %90 = getelementptr i8, ptr %89, i32 %86
  tail call void @msm_writel(i32 noundef %88, ptr noundef %90) #6
  %91 = add i32 %4, 148996
  %92 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 4, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = load ptr, ptr %6, align 8
  %95 = getelementptr i8, ptr %94, i32 %91
  tail call void @msm_writel(i32 noundef %93, ptr noundef %95) #6
  %96 = add i32 %4, 149124
  %97 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 5, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %6, align 8
  %100 = getelementptr i8, ptr %99, i32 %96
  tail call void @msm_writel(i32 noundef %98, ptr noundef %100) #6
  %101 = add i32 %4, 149000
  %102 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 4, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = load ptr, ptr %6, align 8
  %105 = getelementptr i8, ptr %104, i32 %101
  tail call void @msm_writel(i32 noundef %103, ptr noundef %105) #6
  %106 = add i32 %4, 149128
  %107 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 5, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = load ptr, ptr %6, align 8
  %110 = getelementptr i8, ptr %109, i32 %106
  tail call void @msm_writel(i32 noundef %108, ptr noundef %110) #6
  %111 = add i32 %4, 149004
  %112 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 4, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = load ptr, ptr %6, align 8
  %115 = getelementptr i8, ptr %114, i32 %111
  tail call void @msm_writel(i32 noundef %113, ptr noundef %115) #6
  %116 = add i32 %4, 149132
  %117 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 5, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = load ptr, ptr %6, align 8
  %120 = getelementptr i8, ptr %119, i32 %116
  tail call void @msm_writel(i32 noundef %118, ptr noundef %120) #6
  %121 = add i32 %4, 149008
  %122 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 4, i32 4
  %123 = load i32, ptr %122, align 4
  %124 = load ptr, ptr %6, align 8
  %125 = getelementptr i8, ptr %124, i32 %121
  tail call void @msm_writel(i32 noundef %123, ptr noundef %125) #6
  %126 = add i32 %4, 149136
  %127 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 5, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = load ptr, ptr %6, align 8
  %130 = getelementptr i8, ptr %129, i32 %126
  tail call void @msm_writel(i32 noundef %128, ptr noundef %130) #6
  %131 = add i32 %4, 149012
  %132 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 4, i32 5
  %133 = load i32, ptr %132, align 4
  %134 = load ptr, ptr %6, align 8
  %135 = getelementptr i8, ptr %134, i32 %131
  tail call void @msm_writel(i32 noundef %133, ptr noundef %135) #6
  %136 = add i32 %4, 149140
  %137 = getelementptr %struct.csc_cfg, ptr %2, i32 0, i32 5, i32 5
  %138 = load i32, ptr %137, align 4
  %139 = load ptr, ptr %6, align 8
  %140 = getelementptr i8, ptr %139, i32 %136
  tail call void @msm_writel(i32 noundef %138, ptr noundef %140) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_framebuffer_iova(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind allocsize(2) }
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
!8 = !{i8 0, i8 2}
