; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun8i_ui_layer.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun8i_ui_layer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sun8i_mixer = type { %struct.sunxi_engine, ptr, ptr, ptr, ptr }
%struct.sunxi_engine = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.74 = type { i32, ptr }
%struct.sun8i_mixer_cfg = type { i32, i32, i32, i32, i32, i8, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.sun8i_ui_layer = type { %struct.drm_plane, ptr, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.70, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.70 = type { [4 x i8] }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@sun8i_ui_layer_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sun8i_ui_layer_formats = internal constant [20 x i32] [i32 892420673, i32 842089025, i32 875708993, i32 892424769, i32 842093121, i32 875713089, i32 909199170, i32 875710274, i32 892420418, i32 842088770, i32 875708738, i32 875714626, i32 909199186, i32 875710290, i32 842088786, i32 892420434, i32 875708754, i32 875714642, i32 875709016, i32 875713112], align 4
@sun8i_layer_modifiers = internal constant [2 x i64] [i64 0, i64 72057594037927935], align 8
@.str = private unnamed_addr constant [27 x i8] c"Couldn't initialize layer\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't add alpha property\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Couldn't add zpos property\0A\00", align 1
@sun8i_ui_layer_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @sun8i_ui_layer_atomic_check, ptr @sun8i_ui_layer_atomic_update, ptr @sun8i_ui_layer_atomic_disable, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"drivers/gpu/drm/sun4i/sun8i_ui_layer.c\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%sabling channel %d overlay %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Updating UI channel %d overlay %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Primary layer, updating global size W: %u H: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Switching display mixer interlaced mode %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Layer source offset X: %d Y: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Layer source size W: %d H: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"HW scaling is enabled\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"HW scaling is not needed\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"Layer destination coordinates X: %d Y: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Layer destination size W: %d H: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Invalid format\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Using GEM @ %pad\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Layer line width: %d bytes\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Setting buffer address to %pad\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sun8i_ui_layer_init_one(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sun8i_mixer, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 472, i32 noundef 3520) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %3
  %13 = icmp eq i32 %2, 0
  %14 = zext i1 %13 to i32
  %15 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull @sun8i_ui_layer_funcs, ptr noundef nonnull @sun8i_ui_layer_formats, i32 noundef 20, ptr noundef nonnull @sun8i_layer_modifiers, i32 noundef %14, ptr noundef null) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str) #5
  %19 = inttoptr i32 %15 to ptr
  br label %43

20:                                               ; preds = %12
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %21, align 4
  %25 = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %10) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.1) #5
  %29 = inttoptr i32 %25 to ptr
  br label %43

30:                                               ; preds = %20
  %31 = add i32 %23, -1
  %32 = add i32 %31, %24
  %33 = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %10, i32 noundef %7, i32 noundef 0, i32 noundef %32) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.2) #5
  %37 = inttoptr i32 %33 to ptr
  br label %43

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.drm_plane, ptr %10, i32 0, i32 18
  store ptr @sun8i_ui_layer_helper_funcs, ptr %39, align 8
  %40 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %10, i32 0, i32 1
  store ptr %1, ptr %40, align 8
  %41 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %10, i32 0, i32 2
  store i32 %7, ptr %41, align 4
  %42 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %10, i32 0, i32 3
  store i32 0, ptr %42, align 8
  br label %43

43:                                               ; preds = %38, %35, %27, %17, %3
  %44 = phi ptr [ %19, %17 ], [ %29, %27 ], [ %37, %35 ], [ %10, %38 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %44
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun8i_ui_layer_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr %struct.__drm_crtcs_state, ptr %14, i32 %16, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 274, i32 noundef 9, ptr noundef null) #4
  br label %36

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sun8i_mixer, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %0, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %27
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 65536, i32 1
  %34 = select i1 %32, i32 65536, i32 1048575
  %35 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %8, ptr noundef nonnull %18, i32 noundef %33, i32 noundef %34, i1 noundef zeroext true, i1 noundef zeroext true) #4
  br label %36

36:                                               ; preds = %21, %20, %2
  %37 = phi i32 [ -22, %20 ], [ %35, %21 ], [ 0, %2 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_ui_layer_atomic_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.__drm_planes_state, ptr %6, i32 %8, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.__drm_planes_state, ptr %6, i32 %8, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 22
  %18 = load i8, ptr %17, align 4, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %0, i32 0, i32 3
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.sun8i_mixer, ptr %16, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %26, i32 0, i32 5
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, i32 4096, i32 2048
  %32 = shl i32 %22, 11
  %33 = add i32 %32, 4096
  %34 = shl i32 %22, 12
  %35 = add i32 %34, 8192
  %36 = select i1 %30, i32 %35, i32 %33
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %22, i32 noundef %24) #4
  %37 = getelementptr inbounds %struct.sunxi_engine, ptr %16, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = shl i32 %24, 5
  %40 = add i32 %36, %39
  %41 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %40, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %42 = load ptr, ptr %37, align 4
  %43 = add i32 %14, 8
  %44 = shl nuw i32 1, %43
  %45 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef %31, i32 noundef %44, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %46 = load ptr, ptr %37, align 4
  %47 = or i32 %31, 128
  %48 = shl i32 %14, 2
  %49 = shl i32 15, %48
  %50 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef %47, i32 noundef %49, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %327

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 16
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %0, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %0, i32 0, i32 3
  %57 = load i32, ptr %56, align 8
  %58 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %59 = load ptr, ptr %58, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %55, i32 noundef %57) #4
  %60 = getelementptr inbounds %struct.sun8i_mixer, ptr %16, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %61, i32 0, i32 5
  %63 = load i8, ptr %62, align 4
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %65, i32 4096, i32 2048
  %67 = shl i32 %55, 11
  %68 = add i32 %67, 4096
  %69 = shl i32 %55, 12
  %70 = add i32 %69, 8192
  %71 = select i1 %65, i32 %70, i32 %68
  %72 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 20
  %73 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 20, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = load i32, ptr %72, align 4
  %76 = sub i32 %74, %75
  %77 = ashr i32 %76, 16
  %78 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 20, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 20, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = sub i32 %79, %81
  %83 = ashr i32 %82, 16
  %84 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 21
  %85 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 21, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = load i32, ptr %84, align 4
  %88 = sub i32 %86, %87
  %89 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 21, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 21, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = sub i32 %90, %92
  %94 = and i32 %75, 65535
  %95 = and i32 %81, 65535
  %96 = add i32 %82, -65536
  %97 = and i32 %96, -65536
  %98 = add nsw i32 %77, -1
  %99 = or i32 %97, %98
  %100 = shl i32 %93, 16
  %101 = add i32 %100, -65536
  %102 = add i32 %88, -1
  %103 = or i32 %101, %102
  %104 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 16
  %105 = load i32, ptr %104, align 8
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %133

107:                                              ; preds = %51
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %88, i32 noundef %93) #4
  %108 = getelementptr inbounds %struct.sunxi_engine, ptr %16, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = tail call i32 @regmap_write(ptr noundef %109, i32 noundef 12, i32 noundef %103) #4
  %111 = load ptr, ptr %108, align 4
  %112 = or i32 %66, 140
  %113 = tail call i32 @regmap_write(ptr noundef %111, i32 noundef %112, i32 noundef %103) #4
  %114 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %124, label %117

117:                                              ; preds = %107
  %118 = getelementptr inbounds %struct.drm_crtc, ptr %115, i32 0, i32 22
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.drm_crtc_state, ptr %119, i32 0, i32 7, i32 11
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, 16
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117, %107
  br label %125

125:                                              ; preds = %124, %117
  %126 = phi ptr [ @.str.11, %124 ], [ @.str.10, %117 ]
  %127 = phi i32 [ 0, %124 ], [ 2, %117 ]
  %128 = load ptr, ptr %108, align 4
  %129 = or i32 %66, 252
  %130 = tail call i32 @regmap_update_bits_base(ptr noundef %128, i32 noundef %129, i32 noundef 2, i32 noundef %127, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull %126) #4
  %131 = load i32, ptr %72, align 4
  %132 = load i32, ptr %80, align 4
  br label %133

133:                                              ; preds = %125, %51
  %134 = phi i32 [ %132, %125 ], [ %81, %51 ]
  %135 = phi i32 [ %131, %125 ], [ %75, %51 ]
  %136 = ashr i32 %135, 16
  %137 = ashr i32 %134, 16
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %136, i32 noundef %137) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef %77, i32 noundef %83) #4
  %138 = getelementptr inbounds %struct.sunxi_engine, ptr %16, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  %140 = shl i32 %57, 5
  %141 = add i32 %71, %140
  %142 = or i32 %141, 4
  %143 = tail call i32 @regmap_write(ptr noundef %139, i32 noundef %142, i32 noundef %99) #4
  %144 = load ptr, ptr %138, align 4
  %145 = or i32 %71, 136
  %146 = tail call i32 @regmap_write(ptr noundef %144, i32 noundef %145, i32 noundef %99) #4
  %147 = icmp ne i32 %99, %103
  %148 = icmp ne i32 %94, 0
  %149 = select i1 %147, i1 true, i1 %148
  %150 = icmp ne i32 %95, 0
  %151 = select i1 %149, i1 true, i1 %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %133
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14) #4
  %153 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 11
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 6
  %156 = load i32, ptr %155, align 4
  %157 = udiv i32 %154, %156
  %158 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 10
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 7
  %161 = load i32, ptr %160, align 4
  %162 = udiv i32 %159, %161
  tail call void @sun8i_ui_scaler_setup(ptr noundef %16, i32 noundef %55, i32 noundef %77, i32 noundef %83, i32 noundef %88, i32 noundef %93, i32 noundef %157, i32 noundef %162, i32 noundef %94, i32 noundef %95) #4
  br label %164

163:                                              ; preds = %133
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15) #4
  br label %164

164:                                              ; preds = %163, %152
  tail call void @sun8i_ui_scaler_enable(ptr noundef %16, i32 noundef %55, i1 noundef zeroext %151) #4
  %165 = load i32, ptr %84, align 4
  %166 = load i32, ptr %91, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %165, i32 noundef %166) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef %88, i32 noundef %93) #4
  %167 = load ptr, ptr %138, align 4
  %168 = shl i32 %53, 4
  %169 = or i32 %168, 12
  %170 = add i32 %169, %66
  %171 = load i32, ptr %91, align 4
  %172 = shl i32 %171, 16
  %173 = load i32, ptr %84, align 4
  %174 = or i32 %172, %173
  %175 = tail call i32 @regmap_write(ptr noundef %167, i32 noundef %170, i32 noundef %174) #4
  %176 = load ptr, ptr %138, align 4
  %177 = or i32 %168, 8
  %178 = add i32 %177, %66
  %179 = tail call i32 @regmap_write(ptr noundef %176, i32 noundef %178, i32 noundef %103) #4
  %180 = load i32, ptr %54, align 4
  %181 = load i32, ptr %56, align 8
  %182 = load ptr, ptr %60, align 4
  %183 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %182, i32 0, i32 5
  %184 = load i8, ptr %183, align 4
  %185 = and i8 %184, 1
  %186 = icmp eq i8 %185, 0
  %187 = shl i32 %180, 11
  %188 = add i32 %187, 4096
  %189 = shl i32 %180, 12
  %190 = add i32 %189, 8192
  %191 = select i1 %186, i32 %190, i32 %188
  %192 = load ptr, ptr %58, align 4
  %193 = getelementptr inbounds %struct.drm_plane_state, ptr %192, i32 0, i32 12
  %194 = load i16, ptr %193, align 4
  %195 = zext i16 %194 to i32
  %196 = shl nuw i32 %195, 16
  %197 = and i32 %196, -16777216
  %198 = icmp eq i16 %194, -1
  %199 = select i1 %198, i32 0, i32 4
  %200 = or i32 %197, %199
  %201 = load ptr, ptr %138, align 4
  %202 = shl i32 %181, 5
  %203 = add i32 %191, %202
  %204 = tail call i32 @regmap_update_bits_base(ptr noundef %201, i32 noundef %203, i32 noundef -16777210, i32 noundef %200, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %205 = load i32, ptr %54, align 4
  %206 = load i32, ptr %56, align 8
  %207 = load ptr, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !10
  %208 = load ptr, ptr %60, align 4
  %209 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %208, i32 0, i32 5
  %210 = load i8, ptr %209, align 4
  %211 = and i8 %210, 1
  %212 = icmp eq i8 %211, 0
  %213 = shl i32 %205, 11
  %214 = add i32 %213, 4096
  %215 = shl i32 %205, 12
  %216 = add i32 %215, 8192
  %217 = select i1 %212, i32 %216, i32 %214
  %218 = getelementptr inbounds %struct.drm_plane_state, ptr %207, i32 0, i32 2
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.drm_framebuffer, ptr %219, i32 0, i32 4
  %221 = load ptr, ptr %220, align 8
  %222 = load i32, ptr %221, align 4
  %223 = call i32 @sun8i_mixer_drm_format_to_hw(i32 noundef %222, ptr noundef nonnull %4) #4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %164
  %226 = getelementptr inbounds %struct.drm_format_info, ptr %221, i32 0, i32 9
  %227 = load i8, ptr %226, align 1, !range !9
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %225, %164
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18) #4
  br label %237

230:                                              ; preds = %225
  %231 = load i32, ptr %4, align 4
  %232 = shl i32 %231, 8
  %233 = load ptr, ptr %138, align 4
  %234 = shl i32 %206, 5
  %235 = add i32 %217, %234
  %236 = call i32 @regmap_update_bits_base(ptr noundef %233, i32 noundef %235, i32 noundef 7936, i32 noundef %232, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %237

237:                                              ; preds = %230, %229
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  %238 = load i32, ptr %54, align 4
  %239 = load i32, ptr %56, align 8
  %240 = load ptr, ptr %58, align 4
  %241 = getelementptr inbounds %struct.drm_plane_state, ptr %240, i32 0, i32 2
  %242 = load ptr, ptr %241, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  %243 = load ptr, ptr %60, align 4
  %244 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %243, i32 0, i32 5
  %245 = load i8, ptr %244, align 4
  %246 = and i8 %245, 1
  %247 = icmp eq i8 %246, 0
  %248 = shl i32 %238, 11
  %249 = add i32 %248, 4096
  %250 = shl i32 %238, 12
  %251 = add i32 %250, 8192
  %252 = select i1 %247, i32 %251, i32 %249
  %253 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %242, i32 noundef 0) #4
  %254 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %253, i32 0, i32 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef %254) #4
  %255 = getelementptr inbounds %struct.drm_framebuffer, ptr %242, i32 0, i32 4
  %256 = load ptr, ptr %255, align 8
  %257 = getelementptr inbounds %struct.drm_format_info, ptr %256, i32 0, i32 3
  %258 = load i8, ptr %257, align 2
  %259 = zext i8 %258 to i32
  %260 = load i32, ptr %254, align 8
  %261 = getelementptr inbounds %struct.drm_framebuffer, ptr %242, i32 0, i32 7
  %262 = load i32, ptr %261, align 8
  %263 = add i32 %262, %260
  %264 = getelementptr inbounds %struct.drm_plane_state, ptr %240, i32 0, i32 20
  %265 = load i32, ptr %264, align 4
  %266 = ashr i32 %265, 16
  %267 = mul nsw i32 %266, %259
  %268 = add i32 %263, %267
  %269 = getelementptr inbounds %struct.drm_plane_state, ptr %240, i32 0, i32 20, i32 1
  %270 = load i32, ptr %269, align 4
  %271 = ashr i32 %270, 16
  %272 = getelementptr inbounds %struct.drm_framebuffer, ptr %242, i32 0, i32 6
  %273 = load i32, ptr %272, align 8
  %274 = mul i32 %271, %273
  %275 = add i32 %268, %274
  store i32 %275, ptr %3, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef %273) #4
  %276 = load ptr, ptr %138, align 4
  %277 = shl i32 %239, 5
  %278 = add i32 %252, %277
  %279 = or i32 %278, 12
  %280 = load i32, ptr %272, align 8
  %281 = call i32 @regmap_write(ptr noundef %276, i32 noundef %279, i32 noundef %280) #4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #4
  %282 = load ptr, ptr %138, align 4
  %283 = or i32 %278, 16
  %284 = load i32, ptr %3, align 4
  %285 = call i32 @regmap_write(ptr noundef %282, i32 noundef %283, i32 noundef %284) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  %286 = load i32, ptr %54, align 4
  %287 = load i32, ptr %56, align 8
  %288 = load ptr, ptr %60, align 4
  %289 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %288, i32 0, i32 5
  %290 = load i8, ptr %289, align 4
  %291 = and i8 %290, 1
  %292 = icmp eq i8 %291, 0
  %293 = select i1 %292, i32 4096, i32 2048
  %294 = shl i32 %286, 11
  %295 = add i32 %294, 4096
  %296 = shl i32 %286, 12
  %297 = add i32 %296, 8192
  %298 = select i1 %292, i32 %297, i32 %295
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %286, i32 noundef %287) #4
  %299 = load ptr, ptr %138, align 4
  %300 = shl i32 %287, 5
  %301 = add i32 %298, %300
  %302 = call i32 @regmap_update_bits_base(ptr noundef %299, i32 noundef %301, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %303 = icmp eq i32 %53, %14
  br i1 %303, label %304, label %306

304:                                              ; preds = %237
  %305 = or i32 %293, 128
  br label %316

306:                                              ; preds = %237
  %307 = load ptr, ptr %138, align 4
  %308 = add i32 %14, 8
  %309 = shl nuw i32 1, %308
  %310 = call i32 @regmap_update_bits_base(ptr noundef %307, i32 noundef %293, i32 noundef %309, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %311 = load ptr, ptr %138, align 4
  %312 = or i32 %293, 128
  %313 = shl i32 %14, 2
  %314 = shl i32 15, %313
  %315 = call i32 @regmap_update_bits_base(ptr noundef %311, i32 noundef %312, i32 noundef %314, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %316

316:                                              ; preds = %306, %304
  %317 = phi i32 [ %305, %304 ], [ %312, %306 ]
  %318 = add i32 %53, 8
  %319 = shl nuw i32 1, %318
  %320 = load ptr, ptr %138, align 4
  %321 = call i32 @regmap_update_bits_base(ptr noundef %320, i32 noundef %293, i32 noundef %319, i32 noundef %319, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %322 = shl i32 %53, 2
  %323 = shl i32 %286, %322
  %324 = load ptr, ptr %138, align 4
  %325 = shl i32 15, %322
  %326 = call i32 @regmap_update_bits_base(ptr noundef %324, i32 noundef %317, i32 noundef %325, i32 noundef %323, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %327

327:                                              ; preds = %316, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_ui_layer_atomic_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sun8i_ui_layer, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sun8i_mixer, ptr %12, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %18, i32 0, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 4096, i32 2048
  %24 = shl i32 %14, 11
  %25 = add i32 %24, 4096
  %26 = shl i32 %14, 12
  %27 = add i32 %26, 8192
  %28 = select i1 %22, i32 %27, i32 %25
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %14, i32 noundef %16) #4
  %29 = getelementptr inbounds %struct.sunxi_engine, ptr %12, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = shl i32 %16, 5
  %32 = add i32 %28, %31
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %32, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %34 = load ptr, ptr %29, align 4
  %35 = add i32 %10, 8
  %36 = shl nuw i32 1, %35
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %23, i32 noundef %36, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %38 = load ptr, ptr %29, align 4
  %39 = or i32 %23, 128
  %40 = shl i32 %10, 2
  %41 = shl i32 15, %40
  %42 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %39, i32 noundef %41, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_ui_scaler_setup(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_ui_scaler_enable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_mixer_drm_format_to_hw(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
