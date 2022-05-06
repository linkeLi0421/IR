; ModuleID = '/llk/IR/drivers/gpu/drm/exynos/exynos_drm_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_plane.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
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
%struct.anon.73 = type { i32, ptr }
%struct.exynos_drm_plane_config = type { i32, i32, ptr, i32, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.exynos_drm_plane = type { %struct.drm_plane, ptr, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.exynos_drm_plane_state = type { %struct.drm_plane_state, %struct.exynos_drm_rect, %struct.exynos_drm_rect, i32, i32 }
%struct.exynos_drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.exynos_drm_crtc = type { %struct.drm_crtc, i32, ptr, ptr, ptr, i8 }
%struct.exynos_drm_crtc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@exynos_plane_funcs = internal global %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @exynos_drm_plane_reset, ptr null, ptr @exynos_drm_plane_duplicate_state, ptr @exynos_drm_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"*ERROR* failed to initialize plane\0A\00", align 1
@plane_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @exynos_plane_atomic_check, ptr @exynos_plane_atomic_update, ptr @exynos_plane_atomic_disable, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"plane : offset_x/y(%d,%d), width/height(%d,%d)\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"*ERROR* unsupported pixel format modifier\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"scaling mode is not supported\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos_plane_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 19
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.exynos_drm_plane_config, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.exynos_drm_plane_config, ptr %3, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.exynos_drm_plane_config, ptr %3, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef %1, i32 noundef %7, ptr noundef nonnull @exynos_plane_funcs, ptr noundef %9, i32 noundef %11, ptr noundef null, i32 noundef %13, ptr noundef null) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  br label %45

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 18
  store ptr @plane_helper_funcs, ptr %20, align 8
  %21 = getelementptr inbounds %struct.exynos_drm_plane, ptr %1, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.exynos_drm_plane, ptr %1, i32 0, i32 1
  store ptr %3, ptr %22, align 8
  %23 = load i32, ptr %3, align 4
  %24 = getelementptr inbounds %struct.exynos_drm_plane_config, ptr %3, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef %1, i32 noundef %23) #4
  br label %32

30:                                               ; preds = %19
  %31 = tail call i32 @drm_plane_create_zpos_property(ptr noundef %1, i32 noundef %23, i32 noundef 0, i32 noundef 4) #4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, ptr %24, align 4
  %34 = and i32 %33, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = tail call i32 @drm_plane_create_blend_mode_property(ptr noundef %1, i32 noundef 7) #4
  %38 = load i32, ptr %24, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i32 [ %38, %36 ], [ %33, %32 ]
  %41 = and i32 %40, 32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @drm_plane_create_alpha_property(ptr noundef %1) #4
  br label %45

45:                                               ; preds = %43, %39, %16
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_drm_plane_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %3) #4
  tail call void @kfree(ptr noundef nonnull %3) #4
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 164) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %0, ptr noundef nonnull %8) #4
  %11 = getelementptr inbounds %struct.exynos_drm_plane, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.drm_plane_state, ptr %14, i32 0, i32 15
  store i32 %13, ptr %15, align 4
  br label %16

16:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @exynos_drm_plane_duplicate_state(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 164) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %0, ptr noundef nonnull %3) #4
  br label %6

6:                                                ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_drm_plane_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %1) #4
  tail call void @kfree(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_plane_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %165, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %165, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 25
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_atomic_state, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr %struct.__drm_crtcs_state, ptr %20, i32 %22, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %34, 16
  %36 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 11
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, -65536
  %42 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, -65536
  %45 = udiv i32 %41, %30
  %46 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %8, i32 0, i32 3
  store i32 %45, ptr %46, align 4
  %47 = udiv i32 %44, %32
  %48 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %8, i32 0, i32 4
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.drm_crtc_state, ptr %24, i32 0, i32 7, i32 1
  %50 = load i16, ptr %49, align 4
  %51 = zext i16 %50 to i32
  %52 = icmp slt i32 %26, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %16
  %54 = add i32 %30, %26
  %55 = icmp sgt i32 %54, 0
  %56 = tail call i32 @llvm.umin.i32(i32 %54, i32 %51) #4
  %57 = select i1 %55, i32 %56, i32 0
  br label %63

58:                                               ; preds = %16
  %59 = icmp ugt i32 %26, %51
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = sub nsw i32 %51, %26
  %62 = tail call i32 @llvm.umin.i32(i32 %61, i32 %30) #4
  br label %63

63:                                               ; preds = %60, %58, %53
  %64 = phi i32 [ %62, %60 ], [ 0, %58 ], [ %57, %53 ]
  %65 = getelementptr inbounds %struct.drm_crtc_state, ptr %24, i32 0, i32 7, i32 6
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = icmp slt i32 %28, 1
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = add i32 %32, %28
  %71 = icmp sgt i32 %70, 0
  %72 = tail call i32 @llvm.umin.i32(i32 %70, i32 %67) #4
  %73 = select i1 %71, i32 %72, i32 0
  br label %79

74:                                               ; preds = %63
  %75 = icmp ugt i32 %28, %67
  br i1 %75, label %79, label %76

76:                                               ; preds = %74
  %77 = sub nsw i32 %67, %28
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 %32) #4
  br label %79

79:                                               ; preds = %76, %74, %69
  %80 = phi i32 [ %78, %76 ], [ 0, %74 ], [ %73, %69 ]
  %81 = icmp slt i32 %26, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = icmp eq i32 %64, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %82
  %85 = mul i32 %26, %45
  %86 = sub i32 0, %85
  %87 = lshr i32 %86, 16
  %88 = add nuw nsw i32 %87, %35
  br label %89

89:                                               ; preds = %84, %82, %79
  %90 = phi i32 [ %35, %79 ], [ %88, %84 ], [ %35, %82 ]
  %91 = phi i32 [ %26, %79 ], [ 0, %84 ], [ 0, %82 ]
  %92 = icmp slt i32 %28, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = icmp eq i32 %80, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %93
  %96 = mul i32 %28, %47
  %97 = sub i32 0, %96
  %98 = lshr i32 %97, 16
  %99 = add nuw nsw i32 %98, %38
  br label %100

100:                                              ; preds = %95, %93, %89
  %101 = phi i32 [ %28, %89 ], [ 0, %95 ], [ 0, %93 ]
  %102 = phi i32 [ %38, %89 ], [ %99, %95 ], [ %38, %93 ]
  %103 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %8, i32 0, i32 2
  store i32 %90, ptr %103, align 4
  %104 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %8, i32 0, i32 2, i32 1
  store i32 %102, ptr %104, align 4
  %105 = mul i32 %64, %45
  %106 = lshr i32 %105, 16
  %107 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %8, i32 0, i32 2, i32 2
  store i32 %106, ptr %107, align 4
  %108 = mul i32 %80, %47
  %109 = lshr i32 %108, 16
  %110 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %8, i32 0, i32 2, i32 3
  store i32 %109, ptr %110, align 4
  %111 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %8, i32 0, i32 1
  store i32 %91, ptr %111, align 4
  %112 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %8, i32 0, i32 1, i32 1
  store i32 %101, ptr %112, align 4
  %113 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %8, i32 0, i32 1, i32 2
  store i32 %64, ptr %113, align 4
  %114 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %8, i32 0, i32 1, i32 3
  store i32 %80, ptr %114, align 4
  %115 = load ptr, ptr %10, align 8
  %116 = getelementptr inbounds %struct.drm_device, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %117, i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %91, i32 noundef %101, i32 noundef %64, i32 noundef %80) #4
  %118 = getelementptr inbounds %struct.exynos_drm_plane, ptr %0, i32 0, i32 1
  %119 = load ptr, ptr %13, align 4
  %120 = getelementptr inbounds %struct.drm_framebuffer, ptr %119, i32 0, i32 8
  %121 = load i64, ptr %120, align 8
  switch i64 %121, label %132 [
    i64 288230376151711745, label %126
    i64 0, label %122
  ]

122:                                              ; preds = %100
  %123 = load ptr, ptr %118, align 8
  %124 = getelementptr inbounds %struct.exynos_drm_plane_config, ptr %123, i32 0, i32 4
  %125 = load i32, ptr %124, align 4
  br label %136

126:                                              ; preds = %100
  %127 = load ptr, ptr %118, align 8
  %128 = getelementptr inbounds %struct.exynos_drm_plane_config, ptr %127, i32 0, i32 4
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, 8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %165, label %136

132:                                              ; preds = %100
  %133 = load ptr, ptr %119, align 8
  %134 = getelementptr inbounds %struct.drm_device, ptr %133, i32 0, i32 2
  %135 = load ptr, ptr %134, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %135, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #4
  br label %165

136:                                              ; preds = %126, %122
  %137 = phi i32 [ %125, %122 ], [ %129, %126 ]
  %138 = load ptr, ptr %9, align 4
  %139 = and i32 %137, 2
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %165

141:                                              ; preds = %136
  %142 = load i32, ptr %107, align 4
  %143 = load i32, ptr %113, align 4
  %144 = icmp eq i32 %142, %143
  %145 = load i32, ptr %110, align 4
  %146 = load i32, ptr %114, align 4
  %147 = icmp eq i32 %145, %146
  %148 = and i32 %137, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %141
  %151 = load i32, ptr %46, align 4
  %152 = icmp eq i32 %151, 32768
  %153 = select i1 %152, i1 true, i1 %144
  %154 = load i32, ptr %48, align 4
  %155 = icmp eq i32 %154, 32768
  %156 = select i1 %155, i1 true, i1 %147
  br label %157

157:                                              ; preds = %150, %141
  %158 = phi i1 [ %153, %150 ], [ %144, %141 ]
  %159 = phi i1 [ %156, %150 ], [ %147, %141 ]
  %160 = select i1 %158, i1 %159, i1 false
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr %138, align 8
  %163 = getelementptr inbounds %struct.drm_device, ptr %162, i32 0, i32 2
  %164 = load ptr, ptr %163, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %164, i32 noundef 4, ptr noundef nonnull @.str.4) #4
  br label %165

165:                                              ; preds = %161, %157, %136, %132, %126, %12, %2
  %166 = phi i32 [ 0, %12 ], [ 0, %2 ], [ -524, %161 ], [ 0, %136 ], [ 0, %157 ], [ -524, %132 ], [ -524, %126 ]
  ret i32 %166
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_plane_atomic_update(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.exynos_drm_crtc_ops, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void %16(ptr noundef nonnull %10, ptr noundef %0) #4
  br label %19

19:                                               ; preds = %18, %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_plane_atomic_disable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.exynos_drm_crtc_ops, ptr %14, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void %16(ptr noundef nonnull %10, ptr noundef %0) #4
  br label %19

19:                                               ; preds = %18, %12, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
