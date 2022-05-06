; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_kms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.drm_private_state_funcs = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.75 = type { i32, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.78, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.79, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.78 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.anon.79 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.vc4_bo = type { %struct.drm_gem_cma_object, i64, i64, i8, %struct.list_head, i32, %struct.list_head, ptr, i32, %struct.refcount_struct, i32, %struct.mutex }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.vc4_hvs_state = type { %struct.drm_private_state, i32, [3 x %struct.anon.80] }
%struct.drm_private_state = type { ptr }
%struct.anon.80 = type { i8, i32, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.vc4_crtc_state = type { %struct.drm_crtc_state, %struct.drm_mm_node, i8, i32, %struct.anon.81, i32, i8 }
%struct.anon.81 = type { i32, i32, i32, i32 }
%struct.vc4_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i64, [256 x i8], [256 x i8], [256 x i8], ptr, %struct.debugfs_regset32, i8, %struct.spinlock, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.vc4_ctm_state = type { %struct.drm_private_state, ptr, i32 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.vc4_load_tracker_state = type { %struct.drm_private_state, i64, i64 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.vc4_plane_state = type { %struct.drm_plane_state, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], i8, i8, [3 x i32], %struct.drm_mm_node, i8, i8, i64, i64 }
%struct.drm_crtc_commit = type { ptr, %struct.kref, %struct.completion, %struct.completion, %struct.completion, %struct.list_head, ptr, i8 }
%struct.vc4_hvs = type { ptr, ptr, ptr, ptr, %struct.drm_mm, %struct.drm_mm, %struct.spinlock, %struct.drm_mm_node, %struct.debugfs_regset32, i8 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.vc4_crtc_data = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"brcm,bcm2711-vc5\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to initialize vblank\0A\00", align 1
@vc4_mode_funcs = internal constant %struct.drm_mode_config_funcs { ptr @vc4_fb_create, ptr null, ptr null, ptr null, ptr @vc4_atomic_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, align 4
@vc4_mode_config_helpers = internal global %struct.drm_mode_config_helper_funcs { ptr @vc4_atomic_commit_tail, ptr @vc4_atomic_commit_setup }, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to look up GEM BO %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Too many CTM configured\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/vc4/vc4_kms.c\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"[drm] *ERROR* Timed out waiting for commit\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Running the core clock at %lu Hz\0A\00", align 1
@vc4_ctm_state_funcs = internal constant %struct.drm_private_state_funcs { ptr @vc4_ctm_duplicate_state, ptr @vc4_ctm_destroy_state }, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"vc4_ctm_obj_fini\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@vc4_load_tracker_state_funcs = internal constant %struct.drm_private_state_funcs { ptr @vc4_load_tracker_duplicate_state, ptr @vc4_load_tracker_destroy_state }, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"vc4_load_tracker_obj_fini\00", align 1
@vc4_hvs_state_funcs = internal constant %struct.drm_private_state_funcs { ptr @vc4_hvs_channels_duplicate_state, ptr @vc4_hvs_channels_destroy_state }, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"vc4_hvs_channels_obj_fini\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_kms_load(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 31
  store i8 1, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 22
  store i8 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 19
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @drm_vblank_init(ptr noundef %0, i32 noundef %13) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.1) #9
  br label %51

18:                                               ; preds = %10
  %19 = select i1 %7, i32 2048, i32 7680
  %20 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 25
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 26
  store i32 %19, ptr %21, align 4
  %22 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  store ptr @vc4_mode_funcs, ptr %22, align 4
  %23 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 103
  store ptr @vc4_mode_config_helpers, ptr %23, align 4
  %24 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 91
  store i32 24, ptr %24, align 4
  %25 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 96
  store i8 1, ptr %25, align 1
  %26 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 34
  tail call void @drm_modeset_lock_init(ptr noundef %26) #8
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 12) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 35
  tail call void @drm_atomic_private_obj_init(ptr noundef %0, ptr noundef %31, ptr noundef nonnull %28, ptr noundef nonnull @vc4_ctm_state_funcs) #8
  %32 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %0, ptr noundef nonnull @vc4_ctm_obj_fini, ptr noundef null, ptr noundef nonnull @.str.7) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 24) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 37
  tail call void @drm_atomic_private_obj_init(ptr noundef %0, ptr noundef %39, ptr noundef nonnull %36, ptr noundef nonnull @vc4_load_tracker_state_funcs) #8
  %40 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %0, ptr noundef nonnull @vc4_load_tracker_obj_fini, ptr noundef null, ptr noundef nonnull @.str.8) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 44) #10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 36
  tail call void @drm_atomic_private_obj_init(ptr noundef %0, ptr noundef %47, ptr noundef nonnull %44, ptr noundef nonnull @vc4_hvs_state_funcs) #8
  %48 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %0, ptr noundef nonnull @vc4_hvs_channels_obj_fini, ptr noundef null, ptr noundef nonnull @.str.9) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @drm_mode_config_reset(ptr noundef %0) #8
  tail call void @drm_kms_helper_poll_init(ptr noundef %0) #8
  br label %51

51:                                               ; preds = %50, %46, %42, %38, %34, %30, %18, %16
  %52 = phi i32 [ %14, %16 ], [ 0, %50 ], [ %32, %30 ], [ %40, %38 ], [ %48, %46 ], [ -12, %18 ], [ -12, %34 ], [ -12, %42 ]
  ret i32 %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vc4_fb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.drm_mode_fb_cmd2, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i32 104, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = tail call ptr @drm_gem_object_lookup(ptr noundef %1, i32 noundef %11) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef align 8 dereferenceable(104) %2, i32 104, i1 false)
  %15 = getelementptr inbounds %struct.vc4_bo, ptr %12, i32 0, i32 3
  %16 = load i8, ptr %15, align 8, !range !9
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i64 0, i64 504403158265495553
  %19 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %4, i32 0, i32 8
  store i64 %18, ptr %19, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %12) #8, !srcloc !11
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #8, !srcloc !12
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = icmp sgt i32 %21, 0
  br i1 %24, label %29, label %25, !prof !13

25:                                               ; preds = %23
  tail call void @refcount_warn_saturate(ptr noundef nonnull %12, i32 noundef 3) #8
  br label %29

26:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void @drm_gem_object_free(ptr noundef nonnull %12) #8, !callees !15
  br label %29

27:                                               ; preds = %9
  %28 = load i32, ptr %10, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %28) #8
  br label %32

29:                                               ; preds = %26, %25, %23, %3
  %30 = phi ptr [ %2, %3 ], [ %4, %26 ], [ %4, %25 ], [ %4, %23 ]
  %31 = call ptr @drm_gem_fb_create(ptr noundef %0, ptr noundef %1, ptr noundef %30) #8
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi ptr [ %31, %29 ], [ inttoptr (i32 -2 to ptr), %27 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #8
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_atomic_check(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_dev, ptr %4, i32 0, i32 36
  %6 = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %1, ptr noundef %5) #8
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %79, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 19
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %239, label %13

13:                                               ; preds = %8
  %14 = getelementptr %struct.vc4_hvs_state, ptr %6, i32 0, i32 2, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = shl i8 %15, 2
  %17 = and i8 %16, 4
  %18 = getelementptr %struct.vc4_hvs_state, ptr %6, i32 0, i32 2, i32 0
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 1
  %21 = getelementptr %struct.vc4_hvs_state, ptr %6, i32 0, i32 2, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = shl i8 %22, 1
  %24 = and i8 %23, 2
  %25 = or i8 %17, %20
  %26 = or i8 %25, %24
  %27 = xor i8 %26, 7
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  br label %30

30:                                               ; preds = %72, %13
  %31 = phi i32 [ 0, %13 ], [ %74, %72 ]
  %32 = phi i32 [ %28, %13 ], [ %73, %72 ]
  %33 = load ptr, ptr %29, align 4
  %34 = getelementptr %struct.__drm_crtcs_state, ptr %33, i32 %31
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %72, label %37

37:                                               ; preds = %30
  %38 = getelementptr %struct.__drm_crtcs_state, ptr %33, i32 %31, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr %struct.__drm_crtcs_state, ptr %33, i32 %31, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.drm_crtc_state, ptr %39, i32 0, i32 1
  %43 = load i8, ptr %42, align 4, !range !9
  %44 = getelementptr inbounds %struct.drm_crtc_state, ptr %41, i32 0, i32 1
  %45 = load i8, ptr %44, align 4, !range !9
  %46 = icmp eq i8 %43, %45
  br i1 %46, label %72, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.vc4_crtc_state, ptr %41, i32 0, i32 6
  store i8 1, ptr %48, align 4
  %49 = icmp eq i8 %45, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.vc4_crtc_state, ptr %39, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr %struct.vc4_hvs_state, ptr %6, i32 0, i32 2, i32 %52
  %54 = load i8, ptr %53, align 4
  %55 = and i8 %54, -2
  store i8 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.vc4_crtc_state, ptr %41, i32 0, i32 3
  store i32 -1, ptr %56, align 4
  br label %72

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.vc4_crtc, ptr %35, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, %32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %419, label %63

63:                                               ; preds = %57
  %64 = tail call i32 @llvm.cttz.i32(i32 %61, i1 true) #8, !range !16
  %65 = getelementptr inbounds %struct.vc4_crtc_state, ptr %41, i32 0, i32 3
  store i32 %64, ptr %65, align 4
  %66 = shl nuw i32 1, %64
  %67 = xor i32 %66, -1
  %68 = and i32 %32, %67
  %69 = getelementptr %struct.vc4_hvs_state, ptr %6, i32 0, i32 2, i32 %64
  %70 = load i8, ptr %69, align 4
  %71 = or i8 %70, 1
  store i8 %71, ptr %69, align 4
  br label %72

72:                                               ; preds = %63, %50, %37, %30
  %73 = phi i32 [ %32, %30 ], [ %32, %37 ], [ %32, %50 ], [ %68, %63 ]
  %74 = add nuw i32 %31, 1
  %75 = load ptr, ptr %3, align 4
  %76 = getelementptr inbounds %struct.drm_device, ptr %75, i32 0, i32 30, i32 19
  %77 = load i32, ptr %76, align 4
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %30, label %81

79:                                               ; preds = %2
  %80 = ptrtoint ptr %6 to i32
  br label %419

81:                                               ; preds = %72
  %82 = icmp sgt i32 %77, 0
  br i1 %82, label %83, label %239

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %85 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 9
  %86 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 35
  br label %89

87:                                               ; preds = %124
  %88 = icmp sgt i32 %129, 0
  br i1 %88, label %131, label %239

89:                                               ; preds = %124, %83
  %90 = phi ptr [ %75, %83 ], [ %125, %124 ]
  %91 = phi i32 [ 0, %83 ], [ %127, %124 ]
  %92 = phi ptr [ null, %83 ], [ %126, %124 ]
  %93 = load ptr, ptr %84, align 4
  %94 = getelementptr %struct.__drm_crtcs_state, ptr %93, i32 %91
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %124, label %97

97:                                               ; preds = %89
  %98 = getelementptr %struct.__drm_crtcs_state, ptr %93, i32 %91, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.drm_crtc_state, ptr %99, i32 0, i32 11
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %124

103:                                              ; preds = %97
  %104 = getelementptr %struct.__drm_crtcs_state, ptr %93, i32 %91, i32 2
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.drm_crtc_state, ptr %105, i32 0, i32 11
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %124, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.vc4_dev, ptr %90, i32 0, i32 34
  %111 = load ptr, ptr %85, align 4
  %112 = tail call i32 @drm_modeset_lock(ptr noundef %110, ptr noundef %111) #8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = inttoptr i32 %112 to ptr
  br label %118

116:                                              ; preds = %109
  %117 = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %1, ptr noundef %86) #8
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi ptr [ %115, %114 ], [ %117, %116 ]
  %120 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  br i1 %120, label %235, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.vc4_ctm_state, ptr %119, i32 0, i32 2
  store i32 0, ptr %122, align 4
  %123 = load ptr, ptr %3, align 4
  br label %124

124:                                              ; preds = %121, %103, %97, %89
  %125 = phi ptr [ %90, %97 ], [ %123, %121 ], [ %90, %103 ], [ %90, %89 ]
  %126 = phi ptr [ %92, %97 ], [ %119, %121 ], [ %92, %103 ], [ %92, %89 ]
  %127 = add nuw nsw i32 %91, 1
  %128 = getelementptr inbounds %struct.drm_device, ptr %125, i32 0, i32 30, i32 19
  %129 = load i32, ptr %128, align 4
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %89, label %87

131:                                              ; preds = %227, %87
  %132 = phi ptr [ %231, %227 ], [ %125, %87 ]
  %133 = phi i32 [ %230, %227 ], [ 0, %87 ]
  %134 = phi ptr [ %228, %227 ], [ %126, %87 ]
  %135 = load ptr, ptr %84, align 4
  %136 = getelementptr %struct.__drm_crtcs_state, ptr %135, i32 %133
  %137 = load ptr, ptr %136, align 8
  %138 = icmp eq ptr %137, null
  br i1 %138, label %227, label %139

139:                                              ; preds = %131
  %140 = getelementptr %struct.__drm_crtcs_state, ptr %135, i32 %133, i32 2
  %141 = load ptr, ptr %140, align 8
  %142 = getelementptr %struct.__drm_crtcs_state, ptr %135, i32 %133, i32 3
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.drm_crtc_state, ptr %143, i32 0, i32 11
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.drm_crtc_state, ptr %141, i32 0, i32 11
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %145, %147
  br i1 %148, label %227, label %149

149:                                              ; preds = %139
  %150 = icmp eq ptr %134, null
  br i1 %150, label %151, label %165

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.vc4_dev, ptr %132, i32 0, i32 34
  %153 = load ptr, ptr %85, align 4
  %154 = tail call i32 @drm_modeset_lock(ptr noundef %152, ptr noundef %153) #8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %151
  %157 = inttoptr i32 %154 to ptr
  br label %160

158:                                              ; preds = %151
  %159 = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %1, ptr noundef %86) #8
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi ptr [ %157, %156 ], [ %159, %158 ]
  %162 = icmp ugt ptr %161, inttoptr (i32 -4096 to ptr)
  br i1 %162, label %235, label %163

163:                                              ; preds = %160
  %164 = load ptr, ptr %144, align 4
  br label %165

165:                                              ; preds = %163, %149
  %166 = phi ptr [ %145, %149 ], [ %164, %163 ]
  %167 = phi ptr [ %134, %149 ], [ %161, %163 ]
  %168 = icmp eq ptr %166, null
  br i1 %168, label %227, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.vc4_crtc_state, ptr %143, i32 0, i32 3
  %171 = load i32, ptr %170, align 4
  %172 = add i32 %171, 1
  %173 = getelementptr inbounds %struct.vc4_ctm_state, ptr %167, i32 0, i32 2
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 0
  %176 = icmp eq i32 %174, %172
  %177 = select i1 %175, i1 true, i1 %176
  br i1 %177, label %179, label %178

178:                                              ; preds = %169
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3) #8
  br label %419

179:                                              ; preds = %169
  %180 = getelementptr inbounds %struct.drm_property_blob, ptr %166, i32 0, i32 5
  %181 = load ptr, ptr %180, align 4
  %182 = load i64, ptr %181, align 8
  %183 = and i64 %182, 9223372036854775807
  %184 = icmp ugt i64 %183, 4294967296
  br i1 %184, label %419, label %185

185:                                              ; preds = %179
  %186 = getelementptr [9 x i64], ptr %181, i32 0, i32 1
  %187 = load i64, ptr %186, align 8
  %188 = and i64 %187, 9223372036854775807
  %189 = icmp ugt i64 %188, 4294967296
  br i1 %189, label %419, label %190

190:                                              ; preds = %185
  %191 = getelementptr [9 x i64], ptr %181, i32 0, i32 2
  %192 = load i64, ptr %191, align 8
  %193 = and i64 %192, 9223372036854775807
  %194 = icmp ugt i64 %193, 4294967296
  br i1 %194, label %419, label %195

195:                                              ; preds = %190
  %196 = getelementptr [9 x i64], ptr %181, i32 0, i32 3
  %197 = load i64, ptr %196, align 8
  %198 = and i64 %197, 9223372036854775807
  %199 = icmp ugt i64 %198, 4294967296
  br i1 %199, label %419, label %200

200:                                              ; preds = %195
  %201 = getelementptr [9 x i64], ptr %181, i32 0, i32 4
  %202 = load i64, ptr %201, align 8
  %203 = and i64 %202, 9223372036854775807
  %204 = icmp ugt i64 %203, 4294967296
  br i1 %204, label %419, label %205

205:                                              ; preds = %200
  %206 = getelementptr [9 x i64], ptr %181, i32 0, i32 5
  %207 = load i64, ptr %206, align 8
  %208 = and i64 %207, 9223372036854775807
  %209 = icmp ugt i64 %208, 4294967296
  br i1 %209, label %419, label %210

210:                                              ; preds = %205
  %211 = getelementptr [9 x i64], ptr %181, i32 0, i32 6
  %212 = load i64, ptr %211, align 8
  %213 = and i64 %212, 9223372036854775807
  %214 = icmp ugt i64 %213, 4294967296
  br i1 %214, label %419, label %215

215:                                              ; preds = %210
  %216 = getelementptr [9 x i64], ptr %181, i32 0, i32 7
  %217 = load i64, ptr %216, align 8
  %218 = and i64 %217, 9223372036854775807
  %219 = icmp ugt i64 %218, 4294967296
  br i1 %219, label %419, label %220

220:                                              ; preds = %215
  %221 = getelementptr [9 x i64], ptr %181, i32 0, i32 8
  %222 = load i64, ptr %221, align 8
  %223 = and i64 %222, 9223372036854775807
  %224 = icmp ugt i64 %223, 4294967296
  br i1 %224, label %419, label %225

225:                                              ; preds = %220
  store i32 %172, ptr %173, align 4
  %226 = getelementptr inbounds %struct.vc4_ctm_state, ptr %167, i32 0, i32 1
  store ptr %181, ptr %226, align 4
  br label %227

227:                                              ; preds = %225, %165, %139, %131
  %228 = phi ptr [ %134, %139 ], [ %167, %225 ], [ %167, %165 ], [ %134, %131 ]
  %229 = phi i32 [ %133, %139 ], [ 9, %225 ], [ %133, %165 ], [ %133, %131 ]
  %230 = add nsw i32 %229, 1
  %231 = load ptr, ptr %3, align 4
  %232 = getelementptr inbounds %struct.drm_device, ptr %231, i32 0, i32 30, i32 19
  %233 = load i32, ptr %232, align 4
  %234 = icmp slt i32 %230, %233
  br i1 %234, label %131, label %239

235:                                              ; preds = %160, %118
  %236 = phi ptr [ %161, %160 ], [ %119, %118 ]
  %237 = ptrtoint ptr %236 to i32
  %238 = icmp slt ptr %236, null
  br i1 %238, label %419, label %239

239:                                              ; preds = %235, %227, %87, %81, %8
  %240 = tail call i32 @drm_atomic_helper_check(ptr noundef %0, ptr noundef %1) #8
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %419

242:                                              ; preds = %239
  %243 = load ptr, ptr %3, align 4
  %244 = getelementptr inbounds %struct.vc4_dev, ptr %243, i32 0, i32 37
  %245 = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %1, ptr noundef %244) #8
  %246 = icmp ugt ptr %245, inttoptr (i32 -4096 to ptr)
  br i1 %246, label %319, label %247

247:                                              ; preds = %242
  %248 = load ptr, ptr %3, align 4
  %249 = getelementptr inbounds %struct.drm_device, ptr %248, i32 0, i32 30, i32 17
  %250 = load i32, ptr %249, align 4
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %306

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %254 = getelementptr inbounds %struct.vc4_load_tracker_state, ptr %245, i32 0, i32 2
  %255 = getelementptr inbounds %struct.vc4_load_tracker_state, ptr %245, i32 0, i32 1
  br label %256

256:                                              ; preds = %300, %252
  %257 = phi i32 [ 0, %252 ], [ %301, %300 ]
  %258 = load ptr, ptr %253, align 4
  %259 = getelementptr %struct.__drm_planes_state, ptr %258, i32 %257
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %300, label %262

262:                                              ; preds = %256
  %263 = getelementptr %struct.__drm_planes_state, ptr %258, i32 %257, i32 2
  %264 = load ptr, ptr %263, align 4
  %265 = getelementptr %struct.__drm_planes_state, ptr %258, i32 %257, i32 3
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr inbounds %struct.drm_plane_state, ptr %264, i32 0, i32 2
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %283, label %270

270:                                              ; preds = %262
  %271 = getelementptr inbounds %struct.drm_plane_state, ptr %264, i32 0, i32 1
  %272 = load ptr, ptr %271, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %283, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.vc4_plane_state, ptr %264, i32 0, i32 26
  %276 = load i64, ptr %275, align 8
  %277 = load i64, ptr %254, align 8
  %278 = sub i64 %277, %276
  store i64 %278, ptr %254, align 8
  %279 = getelementptr inbounds %struct.vc4_plane_state, ptr %264, i32 0, i32 25
  %280 = load i64, ptr %279, align 8
  %281 = load i64, ptr %255, align 8
  %282 = sub i64 %281, %280
  store i64 %282, ptr %255, align 8
  br label %283

283:                                              ; preds = %274, %270, %262
  %284 = getelementptr inbounds %struct.drm_plane_state, ptr %266, i32 0, i32 2
  %285 = load ptr, ptr %284, align 4
  %286 = icmp eq ptr %285, null
  br i1 %286, label %300, label %287

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.drm_plane_state, ptr %266, i32 0, i32 1
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %300, label %291

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.vc4_plane_state, ptr %266, i32 0, i32 26
  %293 = load i64, ptr %292, align 8
  %294 = load i64, ptr %254, align 8
  %295 = add i64 %294, %293
  store i64 %295, ptr %254, align 8
  %296 = getelementptr inbounds %struct.vc4_plane_state, ptr %266, i32 0, i32 25
  %297 = load i64, ptr %296, align 8
  %298 = load i64, ptr %255, align 8
  %299 = add i64 %298, %297
  store i64 %299, ptr %255, align 8
  br label %300

300:                                              ; preds = %291, %287, %283, %256
  %301 = add nuw nsw i32 %257, 1
  %302 = load ptr, ptr %3, align 4
  %303 = getelementptr inbounds %struct.drm_device, ptr %302, i32 0, i32 30, i32 17
  %304 = load i32, ptr %303, align 4
  %305 = icmp slt i32 %301, %304
  br i1 %305, label %256, label %306

306:                                              ; preds = %300, %247
  %307 = phi ptr [ %248, %247 ], [ %302, %300 ]
  %308 = getelementptr inbounds %struct.vc4_dev, ptr %243, i32 0, i32 31
  %309 = load i8, ptr %308, align 4, !range !9
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %321, label %311

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.vc4_load_tracker_state, ptr %245, i32 0, i32 2
  %313 = load i64, ptr %312, align 8
  %314 = icmp ugt i64 %313, 1610612736
  br i1 %314, label %419, label %315

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.vc4_load_tracker_state, ptr %245, i32 0, i32 1
  %317 = load i64, ptr %316, align 8
  %318 = icmp ugt i64 %317, 240000000
  br i1 %318, label %419, label %321

319:                                              ; preds = %242
  %320 = ptrtoint ptr %245 to i32
  br label %419

321:                                              ; preds = %315, %306
  %322 = getelementptr inbounds %struct.vc4_dev, ptr %307, i32 0, i32 37
  %323 = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %1, ptr noundef %322) #8
  %324 = icmp ugt ptr %323, inttoptr (i32 -4096 to ptr)
  br i1 %324, label %325, label %327

325:                                              ; preds = %321
  %326 = ptrtoint ptr %323 to i32
  br label %419

327:                                              ; preds = %321
  %328 = load ptr, ptr %3, align 4
  %329 = getelementptr inbounds %struct.vc4_dev, ptr %328, i32 0, i32 36
  %330 = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %1, ptr noundef %329) #8
  %331 = icmp ugt ptr %330, inttoptr (i32 -4096 to ptr)
  br i1 %331, label %339, label %332

332:                                              ; preds = %327
  %333 = load ptr, ptr %3, align 4
  %334 = getelementptr inbounds %struct.drm_device, ptr %333, i32 0, i32 30, i32 19
  %335 = load i32, ptr %334, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %341, label %337

337:                                              ; preds = %332
  %338 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  br label %346

339:                                              ; preds = %327
  %340 = ptrtoint ptr %330 to i32
  br label %419

341:                                              ; preds = %374, %332
  %342 = getelementptr %struct.vc4_hvs_state, ptr %330, i32 0, i32 2, i32 0
  %343 = load i8, ptr %342, align 4
  %344 = and i8 %343, 1
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %383, label %380

346:                                              ; preds = %374, %337
  %347 = phi i32 [ 0, %337 ], [ %375, %374 ]
  %348 = load ptr, ptr %338, align 4
  %349 = getelementptr %struct.__drm_crtcs_state, ptr %348, i32 %347
  %350 = load ptr, ptr %349, align 8
  %351 = icmp eq ptr %350, null
  br i1 %351, label %374, label %352

352:                                              ; preds = %346
  %353 = getelementptr %struct.__drm_crtcs_state, ptr %348, i32 %347, i32 2
  %354 = load ptr, ptr %353, align 8
  %355 = getelementptr %struct.__drm_crtcs_state, ptr %348, i32 %347, i32 3
  %356 = load ptr, ptr %355, align 4
  %357 = getelementptr inbounds %struct.drm_crtc_state, ptr %354, i32 0, i32 2
  %358 = load i8, ptr %357, align 1, !range !9
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %364, label %360

360:                                              ; preds = %352
  %361 = getelementptr inbounds %struct.vc4_crtc_state, ptr %354, i32 0, i32 3
  %362 = load i32, ptr %361, align 4
  %363 = getelementptr %struct.vc4_hvs_state, ptr %330, i32 0, i32 2, i32 %362, i32 1
  store i32 0, ptr %363, align 4
  br label %364

364:                                              ; preds = %360, %352
  %365 = getelementptr inbounds %struct.drm_crtc_state, ptr %356, i32 0, i32 2
  %366 = load i8, ptr %365, align 1, !range !9
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %374, label %368

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.vc4_crtc_state, ptr %356, i32 0, i32 3
  %370 = load i32, ptr %369, align 4
  %371 = getelementptr inbounds %struct.vc4_crtc_state, ptr %356, i32 0, i32 5
  %372 = load i32, ptr %371, align 8
  %373 = getelementptr %struct.vc4_hvs_state, ptr %330, i32 0, i32 2, i32 %370, i32 1
  store i32 %372, ptr %373, align 4
  br label %374

374:                                              ; preds = %368, %364, %346
  %375 = add nuw i32 %347, 1
  %376 = load ptr, ptr %3, align 4
  %377 = getelementptr inbounds %struct.drm_device, ptr %376, i32 0, i32 30, i32 19
  %378 = load i32, ptr %377, align 4
  %379 = icmp ult i32 %375, %378
  br i1 %379, label %346, label %341

380:                                              ; preds = %341
  %381 = getelementptr %struct.vc4_hvs_state, ptr %330, i32 0, i32 2, i32 0, i32 1
  %382 = load i32, ptr %381, align 4
  br label %383

383:                                              ; preds = %380, %341
  %384 = phi i32 [ 1, %380 ], [ 0, %341 ]
  %385 = phi i32 [ %382, %380 ], [ 0, %341 ]
  %386 = getelementptr %struct.vc4_hvs_state, ptr %330, i32 0, i32 2, i32 1
  %387 = load i8, ptr %386, align 4
  %388 = and i8 %387, 1
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %395, label %390

390:                                              ; preds = %383
  %391 = add nuw nsw i32 %384, 1
  %392 = getelementptr %struct.vc4_hvs_state, ptr %330, i32 0, i32 2, i32 1, i32 1
  %393 = load i32, ptr %392, align 4
  %394 = add i32 %393, %385
  br label %395

395:                                              ; preds = %390, %383
  %396 = phi i32 [ %391, %390 ], [ %384, %383 ]
  %397 = phi i32 [ %394, %390 ], [ %385, %383 ]
  %398 = getelementptr %struct.vc4_hvs_state, ptr %330, i32 0, i32 2, i32 2
  %399 = load i8, ptr %398, align 4
  %400 = and i8 %399, 1
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %407, label %402

402:                                              ; preds = %395
  %403 = add nuw nsw i32 %396, 1
  %404 = getelementptr %struct.vc4_hvs_state, ptr %330, i32 0, i32 2, i32 2, i32 1
  %405 = load i32, ptr %404, align 4
  %406 = add i32 %405, %397
  br label %407

407:                                              ; preds = %402, %395
  %408 = phi i32 [ %403, %402 ], [ %396, %395 ]
  %409 = phi i32 [ %406, %402 ], [ %397, %395 ]
  %410 = getelementptr inbounds %struct.vc4_load_tracker_state, ptr %323, i32 0, i32 1
  %411 = load i64, ptr %410, align 8
  %412 = trunc i64 %411 to i32
  %413 = icmp ugt i32 %408, 1
  %414 = select i1 %413, i32 40, i32 60
  %415 = mul i32 %414, %412
  %416 = udiv i32 %415, 100
  %417 = tail call i32 @llvm.umax.i32(i32 %409, i32 %416) #8
  %418 = getelementptr inbounds %struct.vc4_hvs_state, ptr %330, i32 0, i32 1
  store i32 %417, ptr %418, align 4
  br label %419

419:                                              ; preds = %407, %339, %325, %319, %315, %311, %239, %235, %220, %215, %210, %205, %200, %195, %190, %185, %179, %178, %79, %57
  %420 = phi i32 [ %80, %79 ], [ %237, %235 ], [ %240, %239 ], [ %320, %319 ], [ %326, %325 ], [ %340, %339 ], [ 0, %407 ], [ -22, %178 ], [ -28, %311 ], [ -28, %315 ], [ -22, %179 ], [ -22, %185 ], [ -22, %190 ], [ -22, %195 ], [ -22, %200 ], [ -22, %205 ], [ -22, %210 ], [ -22, %215 ], [ -22, %220 ], [ -22, %57 ]
  ret i32 %420
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_atomic_commit_tail(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 36
  %7 = tail call ptr @drm_atomic_get_old_private_obj_state(ptr noundef %0, ptr noundef %6) #8
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %10, !prof !17

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 351, i32 noundef 9, ptr noundef null) #8
  br label %618

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.vc4_dev, ptr %11, i32 0, i32 36
  %13 = tail call ptr @drm_atomic_get_new_private_obj_state(ptr noundef %0, ptr noundef %12) #8
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %22, label %15, !prof !17

15:                                               ; preds = %10
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 19
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  br label %29

22:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 355, i32 noundef 9, ptr noundef null) #8
  br label %618

23:                                               ; preds = %46, %15
  %24 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %25 = getelementptr %struct.vc4_hvs_state, ptr %7, i32 0, i32 2, i32 0
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %71, label %52

29:                                               ; preds = %46, %20
  %30 = phi ptr [ %16, %20 ], [ %47, %46 ]
  %31 = phi i32 [ 0, %20 ], [ %48, %46 ]
  %32 = load ptr, ptr %21, align 4
  %33 = getelementptr %struct.__drm_crtcs_state, ptr %32, i32 %31
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %29
  %37 = getelementptr %struct.__drm_crtcs_state, ptr %32, i32 %31, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.drm_crtc_state, ptr %38, i32 0, i32 19
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.vc4_crtc_state, ptr %38, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  tail call void @vc4_hvs_mask_underrun(ptr noundef %3, i32 noundef %44) #8
  %45 = load ptr, ptr %2, align 4
  br label %46

46:                                               ; preds = %42, %36, %29
  %47 = phi ptr [ %45, %42 ], [ %30, %36 ], [ %30, %29 ]
  %48 = add nuw nsw i32 %31, 1
  %49 = getelementptr inbounds %struct.drm_device, ptr %47, i32 0, i32 30, i32 19
  %50 = load i32, ptr %49, align 4
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %29, label %23

52:                                               ; preds = %23
  %53 = getelementptr %struct.vc4_hvs_state, ptr %7, i32 0, i32 2, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %71, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @drm_crtc_commit_wait(ptr noundef nonnull %54) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.5) #9
  br label %61

61:                                               ; preds = %59, %56
  %62 = getelementptr inbounds %struct.drm_crtc_commit, ptr %54, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #8, !srcloc !11
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #8, !srcloc !12
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = icmp sgt i32 %64, 0
  br i1 %67, label %70, label %68, !prof !13

68:                                               ; preds = %66
  tail call void @refcount_warn_saturate(ptr noundef %62, i32 noundef 3) #8
  br label %70

69:                                               ; preds = %61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void @__drm_crtc_commit_free(ptr noundef %62) #8, !callees !15
  br label %70

70:                                               ; preds = %69, %68, %66
  store ptr null, ptr %53, align 4
  br label %71

71:                                               ; preds = %70, %52, %23
  %72 = getelementptr %struct.vc4_hvs_state, ptr %7, i32 0, i32 2, i32 1
  %73 = load i8, ptr %72, align 4
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %71
  %77 = getelementptr %struct.vc4_hvs_state, ptr %7, i32 0, i32 2, i32 1, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %95, label %80

80:                                               ; preds = %76
  %81 = tail call i32 @drm_crtc_commit_wait(ptr noundef nonnull %78) #8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.5) #9
  br label %85

85:                                               ; preds = %83, %80
  %86 = getelementptr inbounds %struct.drm_crtc_commit, ptr %78, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #8, !srcloc !11
  %87 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 1, ptr elementtype(i32) %86) #8, !srcloc !12
  %88 = extractvalue { i32, i32, i32 } %87, 0
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = icmp sgt i32 %88, 0
  br i1 %91, label %94, label %92, !prof !13

92:                                               ; preds = %90
  tail call void @refcount_warn_saturate(ptr noundef %86, i32 noundef 3) #8
  br label %94

93:                                               ; preds = %85
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void @__drm_crtc_commit_free(ptr noundef %86) #8, !callees !15
  br label %94

94:                                               ; preds = %93, %92, %90
  store ptr null, ptr %77, align 4
  br label %95

95:                                               ; preds = %94, %76, %71
  %96 = getelementptr %struct.vc4_hvs_state, ptr %7, i32 0, i32 2, i32 2
  %97 = load i8, ptr %96, align 4
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %95
  %101 = getelementptr %struct.vc4_hvs_state, ptr %7, i32 0, i32 2, i32 2, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %119, label %104

104:                                              ; preds = %100
  %105 = tail call i32 @drm_crtc_commit_wait(ptr noundef nonnull %102) #8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.5) #9
  br label %109

109:                                              ; preds = %107, %104
  %110 = getelementptr inbounds %struct.drm_crtc_commit, ptr %102, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %110) #8, !srcloc !11
  %111 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %110, ptr %110, i32 1, ptr elementtype(i32) %110) #8, !srcloc !12
  %112 = extractvalue { i32, i32, i32 } %111, 0
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = icmp sgt i32 %112, 0
  br i1 %115, label %118, label %116, !prof !13

116:                                              ; preds = %114
  tail call void @refcount_warn_saturate(ptr noundef %110, i32 noundef 3) #8
  br label %118

117:                                              ; preds = %109
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void @__drm_crtc_commit_free(ptr noundef %110) #8, !callees !15
  br label %118

118:                                              ; preds = %117, %116, %114
  store ptr null, ptr %101, align 4
  br label %119

119:                                              ; preds = %118, %100, %95
  %120 = load ptr, ptr %4, align 8
  %121 = getelementptr inbounds %struct.vc4_hvs, ptr %120, i32 0, i32 9
  %122 = load i8, ptr %121, align 8, !range !9
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %131, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.vc4_hvs_state, ptr %13, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = tail call i32 @llvm.umax.i32(i32 %126, i32 500000000)
  %128 = getelementptr inbounds %struct.vc4_hvs, ptr %5, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = tail call i32 @clk_set_min_rate(ptr noundef %129, i32 noundef %127) #8
  br label %131

131:                                              ; preds = %124, %119
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %3, ptr noundef %0) #8
  %132 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 35, i32 2
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.vc4_ctm_state, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.vc4_ctm_state, ptr %133, i32 0, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %445, label %139

139:                                              ; preds = %131
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %140 = load i64, ptr %135, align 8
  %141 = lshr i64 %140, 54
  %142 = and i64 %140, 9223372032559808512
  %143 = icmp eq i64 %142, 0
  %144 = trunc i64 %141 to i16
  br i1 %143, label %147, label %145

145:                                              ; preds = %139
  %146 = or i16 %144, 511
  br label %153

147:                                              ; preds = %139
  %148 = and i16 %144, 512
  %149 = lshr i64 %140, 23
  %150 = trunc i64 %149 to i16
  %151 = and i16 %150, 511
  %152 = or i16 %151, %148
  br label %153

153:                                              ; preds = %147, %145
  %154 = phi i16 [ %146, %145 ], [ %152, %147 ]
  %155 = zext i16 %154 to i32
  %156 = shl i32 %155, 20
  %157 = and i32 %156, 1072693248
  %158 = getelementptr [9 x i64], ptr %135, i32 0, i32 3
  %159 = load i64, ptr %158, align 8
  %160 = lshr i64 %159, 54
  %161 = and i64 %159, 9223372032559808512
  %162 = icmp eq i64 %161, 0
  %163 = trunc i64 %160 to i16
  br i1 %162, label %166, label %164

164:                                              ; preds = %153
  %165 = or i16 %163, 511
  br label %172

166:                                              ; preds = %153
  %167 = and i16 %163, 512
  %168 = lshr i64 %159, 23
  %169 = trunc i64 %168 to i16
  %170 = and i16 %169, 511
  %171 = or i16 %170, %167
  br label %172

172:                                              ; preds = %166, %164
  %173 = phi i16 [ %165, %164 ], [ %171, %166 ]
  %174 = icmp ult i16 %173, 1024
  br i1 %174, label %179, label %175, !prof !13

175:                                              ; preds = %172
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 168, i32 noundef 9, ptr noundef null) #8
  %176 = load i64, ptr %158, align 8
  %177 = lshr i64 %176, 54
  %178 = trunc i64 %177 to i16
  br label %179

179:                                              ; preds = %175, %172
  %180 = phi i16 [ %178, %175 ], [ %163, %172 ]
  %181 = phi i64 [ %176, %175 ], [ %159, %172 ]
  %182 = and i64 %181, 9223372032559808512
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %179
  %185 = or i16 %180, 511
  br label %192

186:                                              ; preds = %179
  %187 = and i16 %180, 512
  %188 = lshr i64 %181, 23
  %189 = trunc i64 %188 to i16
  %190 = and i16 %189, 511
  %191 = or i16 %190, %187
  br label %192

192:                                              ; preds = %186, %184
  %193 = phi i16 [ %185, %184 ], [ %191, %186 ]
  %194 = zext i16 %193 to i32
  %195 = shl nuw nsw i32 %194, 10
  %196 = and i32 %195, 1047552
  %197 = or i32 %196, %157
  %198 = getelementptr [9 x i64], ptr %135, i32 0, i32 6
  %199 = load i64, ptr %198, align 8
  %200 = lshr i64 %199, 54
  %201 = and i64 %199, 9223372032559808512
  %202 = icmp eq i64 %201, 0
  %203 = trunc i64 %200 to i16
  br i1 %202, label %206, label %204

204:                                              ; preds = %192
  %205 = or i16 %203, 511
  br label %212

206:                                              ; preds = %192
  %207 = and i16 %203, 512
  %208 = lshr i64 %199, 23
  %209 = trunc i64 %208 to i16
  %210 = and i16 %209, 511
  %211 = or i16 %210, %207
  br label %212

212:                                              ; preds = %206, %204
  %213 = phi i16 [ %205, %204 ], [ %211, %206 ]
  %214 = icmp ult i16 %213, 1024
  br i1 %214, label %219, label %215, !prof !13

215:                                              ; preds = %212
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 170, i32 noundef 9, ptr noundef null) #8
  %216 = load i64, ptr %198, align 8
  %217 = lshr i64 %216, 54
  %218 = trunc i64 %217 to i16
  br label %219

219:                                              ; preds = %215, %212
  %220 = phi i16 [ %218, %215 ], [ %203, %212 ]
  %221 = phi i64 [ %216, %215 ], [ %199, %212 ]
  %222 = and i64 %221, 9223372032559808512
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %219
  %225 = or i16 %220, 511
  br label %232

226:                                              ; preds = %219
  %227 = and i16 %220, 512
  %228 = lshr i64 %221, 23
  %229 = trunc i64 %228 to i16
  %230 = and i16 %229, 511
  %231 = or i16 %230, %227
  br label %232

232:                                              ; preds = %226, %224
  %233 = phi i16 [ %225, %224 ], [ %231, %226 ]
  %234 = and i16 %233, 1023
  %235 = zext i16 %234 to i32
  %236 = or i32 %197, %235
  %237 = load ptr, ptr %4, align 8
  %238 = getelementptr inbounds %struct.vc4_hvs, ptr %237, i32 0, i32 1
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr i8, ptr %239, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 %236) #8, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %241 = getelementptr [9 x i64], ptr %135, i32 0, i32 1
  %242 = load i64, ptr %241, align 8
  %243 = lshr i64 %242, 54
  %244 = and i64 %242, 9223372032559808512
  %245 = icmp eq i64 %244, 0
  %246 = trunc i64 %243 to i16
  br i1 %245, label %249, label %247

247:                                              ; preds = %232
  %248 = or i16 %246, 511
  br label %255

249:                                              ; preds = %232
  %250 = and i16 %246, 512
  %251 = lshr i64 %242, 23
  %252 = trunc i64 %251 to i16
  %253 = and i16 %252, 511
  %254 = or i16 %253, %250
  br label %255

255:                                              ; preds = %249, %247
  %256 = phi i16 [ %248, %247 ], [ %254, %249 ]
  %257 = zext i16 %256 to i32
  %258 = shl i32 %257, 20
  %259 = and i32 %258, 1072693248
  %260 = getelementptr [9 x i64], ptr %135, i32 0, i32 4
  %261 = load i64, ptr %260, align 8
  %262 = lshr i64 %261, 54
  %263 = and i64 %261, 9223372032559808512
  %264 = icmp eq i64 %263, 0
  %265 = trunc i64 %262 to i16
  br i1 %264, label %268, label %266

266:                                              ; preds = %255
  %267 = or i16 %265, 511
  br label %274

268:                                              ; preds = %255
  %269 = and i16 %265, 512
  %270 = lshr i64 %261, 23
  %271 = trunc i64 %270 to i16
  %272 = and i16 %271, 511
  %273 = or i16 %272, %269
  br label %274

274:                                              ; preds = %268, %266
  %275 = phi i16 [ %267, %266 ], [ %273, %268 ]
  %276 = icmp ult i16 %275, 1024
  br i1 %276, label %281, label %277, !prof !13

277:                                              ; preds = %274
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 175, i32 noundef 9, ptr noundef null) #8
  %278 = load i64, ptr %260, align 8
  %279 = lshr i64 %278, 54
  %280 = trunc i64 %279 to i16
  br label %281

281:                                              ; preds = %277, %274
  %282 = phi i16 [ %280, %277 ], [ %265, %274 ]
  %283 = phi i64 [ %278, %277 ], [ %261, %274 ]
  %284 = and i64 %283, 9223372032559808512
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %281
  %287 = or i16 %282, 511
  br label %294

288:                                              ; preds = %281
  %289 = and i16 %282, 512
  %290 = lshr i64 %283, 23
  %291 = trunc i64 %290 to i16
  %292 = and i16 %291, 511
  %293 = or i16 %292, %289
  br label %294

294:                                              ; preds = %288, %286
  %295 = phi i16 [ %287, %286 ], [ %293, %288 ]
  %296 = zext i16 %295 to i32
  %297 = shl nuw nsw i32 %296, 10
  %298 = and i32 %297, 1047552
  %299 = or i32 %298, %259
  %300 = getelementptr [9 x i64], ptr %135, i32 0, i32 7
  %301 = load i64, ptr %300, align 8
  %302 = lshr i64 %301, 54
  %303 = and i64 %301, 9223372032559808512
  %304 = icmp eq i64 %303, 0
  %305 = trunc i64 %302 to i16
  br i1 %304, label %308, label %306

306:                                              ; preds = %294
  %307 = or i16 %305, 511
  br label %314

308:                                              ; preds = %294
  %309 = and i16 %305, 512
  %310 = lshr i64 %301, 23
  %311 = trunc i64 %310 to i16
  %312 = and i16 %311, 511
  %313 = or i16 %312, %309
  br label %314

314:                                              ; preds = %308, %306
  %315 = phi i16 [ %307, %306 ], [ %313, %308 ]
  %316 = icmp ult i16 %315, 1024
  br i1 %316, label %321, label %317, !prof !13

317:                                              ; preds = %314
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 177, i32 noundef 9, ptr noundef null) #8
  %318 = load i64, ptr %300, align 8
  %319 = lshr i64 %318, 54
  %320 = trunc i64 %319 to i16
  br label %321

321:                                              ; preds = %317, %314
  %322 = phi i16 [ %320, %317 ], [ %305, %314 ]
  %323 = phi i64 [ %318, %317 ], [ %301, %314 ]
  %324 = and i64 %323, 9223372032559808512
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %328, label %326

326:                                              ; preds = %321
  %327 = or i16 %322, 511
  br label %334

328:                                              ; preds = %321
  %329 = and i16 %322, 512
  %330 = lshr i64 %323, 23
  %331 = trunc i64 %330 to i16
  %332 = and i16 %331, 511
  %333 = or i16 %332, %329
  br label %334

334:                                              ; preds = %328, %326
  %335 = phi i16 [ %327, %326 ], [ %333, %328 ]
  %336 = and i16 %335, 1023
  %337 = zext i16 %336 to i32
  %338 = or i32 %299, %337
  %339 = load ptr, ptr %4, align 8
  %340 = getelementptr inbounds %struct.vc4_hvs, ptr %339, i32 0, i32 1
  %341 = load ptr, ptr %340, align 4
  %342 = getelementptr i8, ptr %341, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %342, i32 %338) #8, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %343 = getelementptr [9 x i64], ptr %135, i32 0, i32 2
  %344 = load i64, ptr %343, align 8
  %345 = lshr i64 %344, 54
  %346 = trunc i64 %345 to i16
  %347 = and i64 %344, 9223372032559808512
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %351, label %349

349:                                              ; preds = %334
  %350 = or i16 %346, 511
  br label %357

351:                                              ; preds = %334
  %352 = and i16 %346, 512
  %353 = lshr i64 %344, 23
  %354 = trunc i64 %353 to i16
  %355 = and i16 %354, 511
  %356 = or i16 %355, %352
  br label %357

357:                                              ; preds = %351, %349
  %358 = phi i16 [ %350, %349 ], [ %356, %351 ]
  %359 = zext i16 %358 to i32
  %360 = shl i32 %359, 20
  %361 = and i32 %360, 1072693248
  %362 = getelementptr [9 x i64], ptr %135, i32 0, i32 5
  %363 = load i64, ptr %362, align 8
  %364 = lshr i64 %363, 54
  %365 = and i64 %363, 9223372032559808512
  %366 = icmp eq i64 %365, 0
  %367 = trunc i64 %364 to i16
  br i1 %366, label %370, label %368

368:                                              ; preds = %357
  %369 = or i16 %367, 511
  br label %376

370:                                              ; preds = %357
  %371 = and i16 %367, 512
  %372 = lshr i64 %363, 23
  %373 = trunc i64 %372 to i16
  %374 = and i16 %373, 511
  %375 = or i16 %374, %371
  br label %376

376:                                              ; preds = %370, %368
  %377 = phi i16 [ %369, %368 ], [ %375, %370 ]
  %378 = icmp ult i16 %377, 1024
  br i1 %378, label %383, label %379, !prof !13

379:                                              ; preds = %376
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 182, i32 noundef 9, ptr noundef null) #8
  %380 = load i64, ptr %362, align 8
  %381 = lshr i64 %380, 54
  %382 = trunc i64 %381 to i16
  br label %383

383:                                              ; preds = %379, %376
  %384 = phi i16 [ %382, %379 ], [ %367, %376 ]
  %385 = phi i64 [ %380, %379 ], [ %363, %376 ]
  %386 = and i64 %385, 9223372032559808512
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %390, label %388

388:                                              ; preds = %383
  %389 = or i16 %384, 511
  br label %396

390:                                              ; preds = %383
  %391 = and i16 %384, 512
  %392 = lshr i64 %385, 23
  %393 = trunc i64 %392 to i16
  %394 = and i16 %393, 511
  %395 = or i16 %394, %391
  br label %396

396:                                              ; preds = %390, %388
  %397 = phi i16 [ %389, %388 ], [ %395, %390 ]
  %398 = zext i16 %397 to i32
  %399 = shl nuw nsw i32 %398, 10
  %400 = and i32 %399, 1047552
  %401 = or i32 %400, %361
  %402 = getelementptr [9 x i64], ptr %135, i32 0, i32 8
  %403 = load i64, ptr %402, align 8
  %404 = lshr i64 %403, 54
  %405 = and i64 %403, 9223372032559808512
  %406 = icmp eq i64 %405, 0
  %407 = trunc i64 %404 to i16
  br i1 %406, label %410, label %408

408:                                              ; preds = %396
  %409 = or i16 %407, 511
  br label %416

410:                                              ; preds = %396
  %411 = and i16 %407, 512
  %412 = lshr i64 %403, 23
  %413 = trunc i64 %412 to i16
  %414 = and i16 %413, 511
  %415 = or i16 %414, %411
  br label %416

416:                                              ; preds = %410, %408
  %417 = phi i16 [ %409, %408 ], [ %415, %410 ]
  %418 = icmp ult i16 %417, 1024
  br i1 %418, label %423, label %419, !prof !13

419:                                              ; preds = %416
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 184, i32 noundef 9, ptr noundef null) #8
  %420 = load i64, ptr %402, align 8
  %421 = lshr i64 %420, 54
  %422 = trunc i64 %421 to i16
  br label %423

423:                                              ; preds = %419, %416
  %424 = phi i16 [ %422, %419 ], [ %407, %416 ]
  %425 = phi i64 [ %420, %419 ], [ %403, %416 ]
  %426 = and i64 %425, 9223372032559808512
  %427 = icmp eq i64 %426, 0
  br i1 %427, label %430, label %428

428:                                              ; preds = %423
  %429 = or i16 %424, 511
  br label %436

430:                                              ; preds = %423
  %431 = and i16 %424, 512
  %432 = lshr i64 %425, 23
  %433 = trunc i64 %432 to i16
  %434 = and i16 %433, 511
  %435 = or i16 %434, %431
  br label %436

436:                                              ; preds = %430, %428
  %437 = phi i16 [ %429, %428 ], [ %435, %430 ]
  %438 = and i16 %437, 1023
  %439 = zext i16 %438 to i32
  %440 = or i32 %401, %439
  %441 = load ptr, ptr %4, align 8
  %442 = getelementptr inbounds %struct.vc4_hvs, ptr %441, i32 0, i32 1
  %443 = load ptr, ptr %442, align 4
  %444 = getelementptr i8, ptr %443, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %444, i32 %440) #8, !srcloc !19
  br label %445

445:                                              ; preds = %436, %131
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %446 = load i32, ptr %136, align 4
  %447 = and i32 %446, 252
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %451, label %449, !prof !13

449:                                              ; preds = %445
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 188, i32 noundef 9, ptr noundef null) #8
  %450 = load i32, ptr %136, align 4
  br label %451

451:                                              ; preds = %449, %445
  %452 = phi i32 [ %450, %449 ], [ %446, %445 ]
  %453 = shl i32 %452, 24
  %454 = and i32 %453, 50331648
  %455 = load ptr, ptr %4, align 8
  %456 = getelementptr inbounds %struct.vc4_hvs, ptr %455, i32 0, i32 1
  %457 = load ptr, ptr %456, align 4
  %458 = getelementptr i8, ptr %457, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %458, i32 %454) #8, !srcloc !19
  %459 = load ptr, ptr %4, align 8
  %460 = getelementptr inbounds %struct.vc4_hvs, ptr %459, i32 0, i32 9
  %461 = load i8, ptr %460, align 8, !range !9
  %462 = icmp eq i8 %461, 0
  %463 = load ptr, ptr %2, align 4
  %464 = getelementptr inbounds %struct.drm_device, ptr %463, i32 0, i32 30, i32 19
  %465 = load i32, ptr %464, align 4
  %466 = icmp eq i32 %465, 0
  br i1 %462, label %560, label %467

467:                                              ; preds = %451
  br i1 %466, label %601, label %468

468:                                              ; preds = %467
  %469 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  br label %470

470:                                              ; preds = %554, %468
  %471 = phi i32 [ 0, %468 ], [ %555, %554 ]
  %472 = load ptr, ptr %469, align 4
  %473 = getelementptr %struct.__drm_crtcs_state, ptr %472, i32 %471
  %474 = load ptr, ptr %473, align 8
  %475 = icmp eq ptr %474, null
  br i1 %475, label %554, label %476

476:                                              ; preds = %470
  %477 = getelementptr %struct.__drm_crtcs_state, ptr %472, i32 %471, i32 3
  %478 = load ptr, ptr %477, align 4
  %479 = getelementptr inbounds %struct.vc4_crtc_state, ptr %478, i32 0, i32 6
  %480 = load i8, ptr %479, align 4, !range !9
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %554, label %482

482:                                              ; preds = %476
  %483 = getelementptr inbounds %struct.vc4_crtc, ptr %474, i32 0, i32 2
  %484 = load ptr, ptr %483, align 4
  %485 = getelementptr inbounds %struct.vc4_crtc_data, ptr %484, i32 0, i32 1
  %486 = load i32, ptr %485, align 4
  switch i32 %486, label %554 [
    i32 2, label %487
    i32 3, label %503
    i32 4, label %524
    i32 5, label %539
  ]

487:                                              ; preds = %482
  %488 = getelementptr inbounds %struct.vc4_crtc_state, ptr %478, i32 0, i32 3
  %489 = load i32, ptr %488, align 4
  %490 = icmp eq i32 %489, 2
  %491 = load ptr, ptr %4, align 8
  %492 = getelementptr inbounds %struct.vc4_hvs, ptr %491, i32 0, i32 1
  %493 = load ptr, ptr %492, align 4
  %494 = getelementptr i8, ptr %493, i32 12
  %495 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %494) #8, !srcloc !23
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  %496 = and i32 %495, 2147483647
  %497 = select i1 %490, i32 0, i32 -2147483648
  %498 = or i32 %496, %497
  %499 = load ptr, ptr %4, align 8
  %500 = getelementptr inbounds %struct.vc4_hvs, ptr %499, i32 0, i32 1
  %501 = load ptr, ptr %500, align 4
  %502 = getelementptr i8, ptr %501, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %502, i32 %498) #8, !srcloc !19
  br label %554

503:                                              ; preds = %482
  %504 = getelementptr inbounds %struct.vc4_crtc_state, ptr %478, i32 0, i32 3
  %505 = load i32, ptr %504, align 4
  %506 = icmp eq i32 %505, -1
  %507 = load ptr, ptr %4, align 8
  %508 = getelementptr inbounds %struct.vc4_hvs, ptr %507, i32 0, i32 1
  %509 = load ptr, ptr %508, align 4
  %510 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %509) #8, !srcloc !23
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %511 = and i32 %510, -786433
  %512 = and i32 %505, 255
  %513 = select i1 %506, i32 3, i32 %512
  %514 = shl nuw nsw i32 %513, 18
  %515 = and i32 %513, 252
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %518, label %517, !prof !13

517:                                              ; preds = %503
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 304, i32 noundef 9, ptr noundef null) #8
  br label %518

518:                                              ; preds = %517, %503
  %519 = and i32 %514, 786432
  %520 = or i32 %519, %511
  %521 = load ptr, ptr %4, align 8
  %522 = getelementptr inbounds %struct.vc4_hvs, ptr %521, i32 0, i32 1
  %523 = load ptr, ptr %522, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %523, i32 %520) #8, !srcloc !19
  br label %554

524:                                              ; preds = %482
  %525 = getelementptr inbounds %struct.vc4_crtc_state, ptr %478, i32 0, i32 3
  %526 = load i32, ptr %525, align 4
  %527 = load ptr, ptr %4, align 8
  %528 = getelementptr inbounds %struct.vc4_hvs, ptr %527, i32 0, i32 1
  %529 = load ptr, ptr %528, align 4
  %530 = getelementptr i8, ptr %529, i32 24
  %531 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %530) #8, !srcloc !23
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %532 = shl i32 %526, 30
  %533 = and i32 %531, 1073741823
  %534 = or i32 %533, %532
  %535 = load ptr, ptr %4, align 8
  %536 = getelementptr inbounds %struct.vc4_hvs, ptr %535, i32 0, i32 1
  %537 = load ptr, ptr %536, align 4
  %538 = getelementptr i8, ptr %537, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %538, i32 %534) #8, !srcloc !19
  br label %554

539:                                              ; preds = %482
  %540 = getelementptr inbounds %struct.vc4_crtc_state, ptr %478, i32 0, i32 3
  %541 = load i32, ptr %540, align 4
  %542 = load ptr, ptr %4, align 8
  %543 = getelementptr inbounds %struct.vc4_hvs, ptr %542, i32 0, i32 1
  %544 = load ptr, ptr %543, align 4
  %545 = getelementptr i8, ptr %544, i32 20
  %546 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %545) #8, !srcloc !23
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !30
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %547 = shl i32 %541, 30
  %548 = and i32 %546, 1073741823
  %549 = or i32 %548, %547
  %550 = load ptr, ptr %4, align 8
  %551 = getelementptr inbounds %struct.vc4_hvs, ptr %550, i32 0, i32 1
  %552 = load ptr, ptr %551, align 4
  %553 = getelementptr i8, ptr %552, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %553, i32 %549) #8, !srcloc !19
  br label %554

554:                                              ; preds = %539, %524, %518, %487, %482, %476, %470
  %555 = add nuw i32 %471, 1
  %556 = load ptr, ptr %2, align 4
  %557 = getelementptr inbounds %struct.drm_device, ptr %556, i32 0, i32 30, i32 19
  %558 = load i32, ptr %557, align 4
  %559 = icmp ult i32 %555, %558
  br i1 %559, label %470, label %601

560:                                              ; preds = %451
  br i1 %466, label %601, label %561

561:                                              ; preds = %560
  %562 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  br label %563

563:                                              ; preds = %595, %561
  %564 = phi ptr [ %463, %561 ], [ %596, %595 ]
  %565 = phi i32 [ 0, %561 ], [ %597, %595 ]
  %566 = load ptr, ptr %562, align 4
  %567 = getelementptr %struct.__drm_crtcs_state, ptr %566, i32 %565
  %568 = load ptr, ptr %567, align 8
  %569 = icmp eq ptr %568, null
  br i1 %569, label %595, label %570

570:                                              ; preds = %563
  %571 = getelementptr %struct.__drm_crtcs_state, ptr %566, i32 %565, i32 3
  %572 = load ptr, ptr %571, align 4
  %573 = getelementptr inbounds %struct.drm_crtc_state, ptr %572, i32 0, i32 2
  %574 = load i8, ptr %573, align 1, !range !9
  %575 = icmp eq i8 %574, 0
  br i1 %575, label %595, label %576

576:                                              ; preds = %570
  %577 = getelementptr inbounds %struct.vc4_crtc_state, ptr %572, i32 0, i32 3
  %578 = load i32, ptr %577, align 4
  %579 = icmp eq i32 %578, 2
  br i1 %579, label %580, label %595

580:                                              ; preds = %576
  %581 = getelementptr inbounds %struct.vc4_crtc, ptr %568, i32 0, i32 10
  %582 = load i8, ptr %581, align 4, !range !9
  %583 = icmp eq i8 %582, 0
  %584 = select i1 %583, i32 524288, i32 786432
  %585 = load ptr, ptr %4, align 8
  %586 = getelementptr inbounds %struct.vc4_hvs, ptr %585, i32 0, i32 1
  %587 = load ptr, ptr %586, align 4
  %588 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %587) #8, !srcloc !23
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !32
  %589 = and i32 %588, -786433
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  %590 = or i32 %589, %584
  %591 = load ptr, ptr %4, align 8
  %592 = getelementptr inbounds %struct.vc4_hvs, ptr %591, i32 0, i32 1
  %593 = load ptr, ptr %592, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %593, i32 %590) #8, !srcloc !19
  %594 = load ptr, ptr %2, align 4
  br label %595

595:                                              ; preds = %580, %576, %570, %563
  %596 = phi ptr [ %594, %580 ], [ %564, %570 ], [ %564, %576 ], [ %564, %563 ]
  %597 = add nuw i32 %565, 1
  %598 = getelementptr inbounds %struct.drm_device, ptr %596, i32 0, i32 30, i32 19
  %599 = load i32, ptr %598, align 4
  %600 = icmp ult i32 %597, %599
  br i1 %600, label %563, label %601

601:                                              ; preds = %595, %560, %554, %467
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %3, ptr noundef %0, i32 noundef 0) #8
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %3, ptr noundef %0) #8
  tail call void @drm_atomic_helper_fake_vblank(ptr noundef %0) #8
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %0) #8
  tail call void @drm_atomic_helper_wait_for_flip_done(ptr noundef %3, ptr noundef %0) #8
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %3, ptr noundef %0) #8
  %602 = load ptr, ptr %4, align 8
  %603 = getelementptr inbounds %struct.vc4_hvs, ptr %602, i32 0, i32 9
  %604 = load i8, ptr %603, align 8, !range !9
  %605 = icmp eq i8 %604, 0
  br i1 %605, label %618, label %606

606:                                              ; preds = %601
  %607 = icmp eq ptr %3, null
  br i1 %607, label %610, label %608

608:                                              ; preds = %606
  %609 = load ptr, ptr %24, align 4
  br label %610

610:                                              ; preds = %608, %606
  %611 = phi ptr [ %609, %608 ], [ null, %606 ]
  %612 = getelementptr inbounds %struct.vc4_hvs_state, ptr %13, i32 0, i32 1
  %613 = load i32, ptr %612, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %611, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %613) #8
  %614 = getelementptr inbounds %struct.vc4_hvs, ptr %5, i32 0, i32 3
  %615 = load ptr, ptr %614, align 4
  %616 = load i32, ptr %612, align 4
  %617 = tail call i32 @clk_set_min_rate(ptr noundef %615, i32 noundef %616) #8
  br label %618

618:                                              ; preds = %610, %601, %22, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_atomic_commit_setup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vc4_dev, ptr %3, i32 0, i32 36
  %5 = tail call ptr @drm_atomic_get_new_private_obj_state(ptr noundef %0, ptr noundef %4) #8
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %14, label %7, !prof !17

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 30, i32 19
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %56, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  br label %16

14:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 431, i32 noundef 9, ptr noundef null) #8
  %15 = ptrtoint ptr %5 to i32
  br label %56

16:                                               ; preds = %50, %12
  %17 = phi ptr [ %8, %12 ], [ %51, %50 ]
  %18 = phi i32 [ 0, %12 ], [ %52, %50 ]
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr %struct.__drm_crtcs_state, ptr %19, i32 %18
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %16
  %24 = getelementptr %struct.__drm_crtcs_state, ptr %19, i32 %18, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.vc4_crtc_state, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %50, label %29

29:                                               ; preds = %23
  %30 = getelementptr %struct.vc4_hvs_state, ptr %5, i32 0, i32 2, i32 %27
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.drm_crtc_state, ptr %25, i32 0, i32 19
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.drm_crtc_commit, ptr %36, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #8, !srcloc !11
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #8, !srcloc !34
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !17

41:                                               ; preds = %34
  %42 = add i32 %39, 1
  %43 = or i32 %42, %39
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %47, label %45, !prof !13

45:                                               ; preds = %41, %34
  %46 = phi i32 [ 2, %34 ], [ 1, %41 ]
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef %46) #8
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr %struct.vc4_hvs_state, ptr %5, i32 0, i32 2, i32 %27, i32 2
  store ptr %36, ptr %48, align 4
  %49 = load ptr, ptr %2, align 4
  br label %50

50:                                               ; preds = %47, %29, %23, %16
  %51 = phi ptr [ %49, %47 ], [ %17, %23 ], [ %17, %29 ], [ %17, %16 ]
  %52 = add nuw i32 %18, 1
  %53 = getelementptr inbounds %struct.drm_device, ptr %51, i32 0, i32 30, i32 19
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %16, label %56

56:                                               ; preds = %50, %14, %7
  %57 = phi i32 [ %15, %14 ], [ 0, %7 ], [ 0, %50 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_hvs_mask_underrun(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_commit_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_min_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_disables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_planes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_enables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_fake_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_wait_for_flip_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_cleanup_planes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_old_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_crtc_commit_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_ctm_obj_fini(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 35
  tail call void @drm_atomic_private_obj_fini(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vc4_ctm_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_private_obj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef 12, i32 noundef 3264) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %0, ptr noundef nonnull %4) #8
  br label %7

7:                                                ; preds = %6, %1
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_ctm_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_load_tracker_obj_fini(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 37
  tail call void @drm_atomic_private_obj_fini(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vc4_load_tracker_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_private_obj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef 24, i32 noundef 3264) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %0, ptr noundef nonnull %4) #8
  br label %7

7:                                                ; preds = %6, %1
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_load_tracker_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hvs_channels_obj_fini(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 36
  tail call void @drm_atomic_private_obj_fini(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vc4_hvs_channels_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_private_obj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 44) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %1
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %0, ptr noundef nonnull %5) #8
  %8 = getelementptr %struct.vc4_hvs_state, ptr %3, i32 0, i32 2, i32 0
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = getelementptr %struct.vc4_hvs_state, ptr %5, i32 0, i32 2, i32 0
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, -2
  %14 = or i8 %13, %10
  store i8 %14, ptr %11, align 8
  %15 = getelementptr %struct.vc4_hvs_state, ptr %3, i32 0, i32 2, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.vc4_hvs_state, ptr %5, i32 0, i32 2, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = getelementptr %struct.vc4_hvs_state, ptr %3, i32 0, i32 2, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 1
  %21 = getelementptr %struct.vc4_hvs_state, ptr %5, i32 0, i32 2, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, -2
  %24 = or i8 %23, %20
  store i8 %24, ptr %21, align 4
  %25 = getelementptr %struct.vc4_hvs_state, ptr %3, i32 0, i32 2, i32 1, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.vc4_hvs_state, ptr %5, i32 0, i32 2, i32 1, i32 1
  store i32 %26, ptr %27, align 8
  %28 = getelementptr %struct.vc4_hvs_state, ptr %3, i32 0, i32 2, i32 2
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, 1
  %31 = getelementptr %struct.vc4_hvs_state, ptr %5, i32 0, i32 2, i32 2
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, -2
  %34 = or i8 %33, %30
  store i8 %34, ptr %31, align 8
  %35 = getelementptr %struct.vc4_hvs_state, ptr %3, i32 0, i32 2, i32 2, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr %struct.vc4_hvs_state, ptr %5, i32 0, i32 2, i32 2, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.vc4_hvs_state, ptr %3, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.vc4_hvs_state, ptr %5, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %7, %1
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_hvs_channels_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr %struct.vc4_hvs_state, ptr %1, i32 0, i32 2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_crtc_commit, ptr %4, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #8, !srcloc !12
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %15, label %13, !prof !13

13:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 3) #8
  br label %15

14:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void @__drm_crtc_commit_free(ptr noundef %7) #8, !callees !15
  br label %15

15:                                               ; preds = %14, %13, %11, %2
  %16 = getelementptr %struct.vc4_hvs_state, ptr %1, i32 0, i32 2, i32 1, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.drm_crtc_commit, ptr %17, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #8, !srcloc !11
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #8, !srcloc !12
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = icmp sgt i32 %22, 0
  br i1 %25, label %28, label %26, !prof !13

26:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 3) #8
  br label %28

27:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void @__drm_crtc_commit_free(ptr noundef %20) #8, !callees !15
  br label %28

28:                                               ; preds = %27, %26, %24, %15
  %29 = getelementptr %struct.vc4_hvs_state, ptr %1, i32 0, i32 2, i32 2, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.drm_crtc_commit, ptr %30, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #8, !srcloc !11
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #8, !srcloc !12
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %41, label %39, !prof !13

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef 3) #8
  br label %41

40:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  tail call void @__drm_crtc_commit_free(ptr noundef %33) #8, !callees !15
  br label %41

41:                                               ; preds = %40, %39, %37, %28
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2148069936}
!11 = !{i64 466097, i64 2147956068, i64 2147956094, i64 2147956141, i64 2147956163, i64 2147956191, i64 2147956211}
!12 = !{i64 2147972095, i64 2147972127, i64 2147972156, i64 2147972190, i64 2147972221, i64 2147972244}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149857161}
!15 = !{ptr @__drm_crtc_commit_free, ptr @drm_gem_object_free}
!16 = !{i32 0, i32 33}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2155862165}
!19 = !{i64 5490343}
!20 = !{i64 2156332125}
!21 = !{i64 2156806146}
!22 = !{i64 2157023642}
!23 = !{i64 5490761}
!24 = !{i64 2157247719}
!25 = !{i64 2157375302}
!26 = !{i64 2157407993}
!27 = !{i64 2157535572}
!28 = !{i64 2157568263}
!29 = !{i64 2157695842}
!30 = !{i64 2157728533}
!31 = !{i64 2157852059}
!32 = !{i64 2157245398}
!33 = !{i64 2157246413}
!34 = !{i64 2147969738, i64 2147969770, i64 2147969799, i64 2147969833, i64 2147969864, i64 2147969887}
