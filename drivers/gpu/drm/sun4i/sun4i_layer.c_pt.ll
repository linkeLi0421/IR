; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun4i_layer.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_layer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
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
%struct.anon.72 = type { i32, ptr }
%struct.sun4i_backend = type { %struct.sunxi_engine, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, ptr }
%struct.sunxi_engine = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.sun4i_layer = type { %struct.drm_plane, ptr, ptr, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.sun4i_layer_state = type { %struct.drm_plane_state, i32, i8 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [30 x i8] c"Couldn't initialize %s plane\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@sun4i_layer_modifiers = internal constant [3 x i64] [i64 0, i64 648518346341351425, i64 72057594037927935], align 8
@sun4i_layer_formats = internal constant [25 x i32] [i32 875713089, i32 842093121, i32 892424769, i32 875714626, i32 892420434, i32 842088786, i32 875710290, i32 909199186, i32 842094158, i32 909203022, i32 825382478, i32 825644622, i32 1498831189, i32 1498765654, i32 875713112, i32 825316697, i32 842093913, i32 909202777, i32 875713881, i32 1448695129, i32 825316953, i32 842094169, i32 909203033, i32 875714137, i32 1431918169], align 4
@sun4i_backend_layer_formats = internal constant [12 x i32] [i32 875713089, i32 842093121, i32 892424769, i32 892420434, i32 842088786, i32 875710290, i32 909199186, i32 1498831189, i32 1498765654, i32 875713112, i32 1448695129, i32 1431918169], align 4
@sun4i_backend_layer_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @sun4i_backend_layer_reset, ptr null, ptr @sun4i_backend_layer_duplicate_state, ptr @sun4i_backend_layer_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_layer_format_mod_supported }, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Couldn't initialize layer\0A\00", align 1
@sun4i_backend_layer_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr null, ptr @sun4i_backend_layer_atomic_update, ptr @sun4i_backend_layer_atomic_disable, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sun4i_layers_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 20, i32 noundef 3520) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sun4i_backend, ptr %1, i32 0, i32 1
  br label %9

9:                                                ; preds = %41, %7
  %10 = phi i32 [ 0, %7 ], [ %44, %41 ]
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr %3, align 4
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 472, i32 noundef 3520) #4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %9
  %16 = zext i1 %11 to i32
  %17 = getelementptr inbounds %struct.sun4i_layer, ptr %13, i32 0, i32 2
  store ptr %1, ptr %17, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = icmp eq ptr %18, null
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %21 = or i1 %19, %20
  %22 = select i1 %21, ptr null, ptr @sun4i_layer_modifiers
  %23 = select i1 %21, ptr @sun4i_backend_layer_formats, ptr @sun4i_layer_formats
  %24 = select i1 %21, i32 12, i32 25
  %25 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull @sun4i_backend_layer_funcs, ptr noundef nonnull %23, i32 noundef %24, ptr noundef %22, i32 noundef %16, ptr noundef null) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %15
  %28 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.3) #5
  %29 = inttoptr i32 %25 to ptr
  br label %34

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.drm_plane, ptr %13, i32 0, i32 18
  store ptr @sun4i_backend_layer_helper_funcs, ptr %31, align 8
  %32 = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %13) #4
  %33 = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %13, i32 noundef 0, i32 noundef 0, i32 noundef 3) #4
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi ptr [ %29, %27 ], [ %13, %30 ]
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %9
  %38 = phi ptr [ %35, %34 ], [ inttoptr (i32 -12 to ptr), %9 ]
  %39 = load ptr, ptr %3, align 4
  %40 = select i1 %11, ptr @.str.2, ptr @.str.1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str, ptr noundef nonnull %40) #5
  br label %46

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.sun4i_layer, ptr %35, i32 0, i32 3
  store i32 %10, ptr %42, align 8
  %43 = getelementptr ptr, ptr %5, i32 %10
  store ptr %35, ptr %43, align 4
  %44 = add nuw nsw i32 %10, 1
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %9

46:                                               ; preds = %41, %37, %2
  %47 = phi ptr [ inttoptr (i32 -12 to ptr), %2 ], [ %38, %37 ], [ %5, %41 ]
  ret ptr %47
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_backend_layer_reset(ptr noundef %0) #0 {
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
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 132) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %0, ptr noundef nonnull %8) #4
  %11 = getelementptr inbounds %struct.sun4i_layer, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 15
  store i32 %12, ptr %14, align 4
  br label %15

15:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sun4i_backend_layer_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 132) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %0, ptr noundef nonnull %5) #4
  %8 = getelementptr inbounds %struct.sun4i_layer_state, ptr %3, i32 0, i32 2
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = getelementptr inbounds %struct.sun4i_layer_state, ptr %5, i32 0, i32 2
  store i8 %9, ptr %10, align 8
  br label %11

11:                                               ; preds = %7, %1
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_backend_layer_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %1) #4
  tail call void @kfree(ptr noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @sun4i_layer_format_mod_supported(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sun4i_layer, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sun4i_backend, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = tail call zeroext i1 @sun4i_backend_format_is_supported(i32 noundef %1, i64 noundef %2) #4
  br label %13

13:                                               ; preds = %11, %3
  %14 = tail call zeroext i1 @sun4i_backend_format_is_supported(i32 noundef %1, i64 noundef %2) #4
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = tail call zeroext i1 @sun4i_frontend_format_is_supported(i32 noundef %1, i64 noundef %2) #4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i1 [ true, %13 ], [ %16, %15 ]
  ret i1 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sun4i_backend_format_is_supported(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sun4i_frontend_format_is_supported(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_backend_layer_atomic_update(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sun4i_layer, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sun4i_backend, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sun4i_layer, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  tail call void @sun4i_backend_cleanup_layer(ptr noundef %10, i32 noundef %14) #4
  %15 = getelementptr inbounds %struct.sun4i_layer_state, ptr %8, i32 0, i32 2
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = tail call i32 @sun4i_frontend_init(ptr noundef %12) #4
  tail call void @sun4i_frontend_update_coord(ptr noundef %12, ptr noundef %0) #4
  tail call void @sun4i_frontend_update_buffer(ptr noundef %12, ptr noundef %0) #4
  %20 = tail call i32 @sun4i_frontend_update_formats(ptr noundef %12, ptr noundef %0, i32 noundef 875713112) #4
  %21 = load i32, ptr %13, align 8
  %22 = tail call i32 @sun4i_backend_update_layer_frontend(ptr noundef %10, i32 noundef %21, i32 noundef 875713112) #4
  %23 = tail call i32 @sun4i_frontend_enable(ptr noundef %12) #4
  br label %29

24:                                               ; preds = %2
  %25 = load i32, ptr %13, align 8
  %26 = tail call i32 @sun4i_backend_update_layer_formats(ptr noundef %10, i32 noundef %25, ptr noundef %0) #4
  %27 = load i32, ptr %13, align 8
  %28 = tail call i32 @sun4i_backend_update_layer_buffer(ptr noundef %10, i32 noundef %27, ptr noundef %0) #4
  br label %29

29:                                               ; preds = %24, %18
  %30 = load i32, ptr %13, align 8
  %31 = tail call i32 @sun4i_backend_update_layer_coord(ptr noundef %10, i32 noundef %30, ptr noundef %0) #4
  %32 = load i32, ptr %13, align 8
  %33 = tail call i32 @sun4i_backend_update_layer_zpos(ptr noundef %10, i32 noundef %32, ptr noundef %0) #4
  %34 = load i32, ptr %13, align 8
  tail call void @sun4i_backend_layer_enable(ptr noundef %10, i32 noundef %34, i1 noundef zeroext true) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_backend_layer_atomic_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sun4i_layer, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sun4i_layer, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  tail call void @sun4i_backend_layer_enable(ptr noundef %10, i32 noundef %12, i1 noundef zeroext false) #4
  %13 = getelementptr inbounds %struct.sun4i_layer_state, ptr %8, i32 0, i32 2
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.sun4i_backend, ptr %10, i32 0, i32 8
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #4
  %19 = getelementptr inbounds %struct.sun4i_backend, ptr %10, i32 0, i32 9
  store i8 1, ptr %19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #4
  br label %20

20:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_backend_cleanup_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_frontend_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_frontend_update_coord(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_frontend_update_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_frontend_update_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_backend_update_layer_frontend(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_frontend_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_backend_update_layer_formats(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_backend_update_layer_buffer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_backend_update_layer_coord(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_backend_update_layer_zpos(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_backend_layer_enable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind allocsize(2) }

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
