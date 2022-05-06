; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun8i_vi_layer.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun8i_vi_layer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.74 = type { i32, ptr }
%struct.sun8i_mixer = type { %struct.sunxi_engine, ptr, ptr, ptr, ptr }
%struct.sunxi_engine = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.sun8i_mixer_cfg = type { i32, i32, i32, i32, i32, i8, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.sun8i_vi_layer = type { %struct.drm_plane, ptr, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.70, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.70 = type { [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
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

@sun8i_vi_layer_de3_formats = internal constant [40 x i32] [i32 892420673, i32 808665665, i32 842089025, i32 875708993, i32 892424769, i32 808669761, i32 842093121, i32 875713089, i32 909199170, i32 875710274, i32 808665410, i32 892420418, i32 842088770, i32 875708738, i32 875714626, i32 909199186, i32 875710290, i32 808665426, i32 842088786, i32 892420434, i32 875708754, i32 875714642, i32 875709016, i32 875713112, i32 909203022, i32 842094158, i32 825382478, i32 825644622, i32 808530000, i32 808530512, i32 1498831189, i32 1498765654, i32 1448695129, i32 1431918169, i32 825316697, i32 842093913, i32 909202777, i32 825316953, i32 842094169, i32 909203033], align 4
@sun8i_vi_layer_formats = internal constant [30 x i32] [i32 909199170, i32 875710274, i32 842094658, i32 892426306, i32 875714626, i32 909199186, i32 875710290, i32 842094674, i32 892426322, i32 875714642, i32 892420696, i32 842089048, i32 875709016, i32 892424792, i32 842093144, i32 875713112, i32 909203022, i32 842094158, i32 825382478, i32 825644622, i32 1498831189, i32 1498765654, i32 1448695129, i32 1431918169, i32 825316697, i32 842093913, i32 909202777, i32 825316953, i32 842094169, i32 909203033], align 4
@sun8i_vi_layer_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sun8i_layer_modifiers = internal constant [2 x i64] [i64 0, i64 72057594037927935], align 8
@.str = private unnamed_addr constant [27 x i8] c"Couldn't initialize layer\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't add alpha property\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Couldn't add zpos property\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Couldn't add encoding and range properties!\0A\00", align 1
@sun8i_vi_layer_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @sun8i_vi_layer_atomic_check, ptr @sun8i_vi_layer_atomic_update, ptr @sun8i_vi_layer_atomic_disable, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"drivers/gpu/drm/sun4i/sun8i_vi_layer.c\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"%sabling VI channel %d overlay %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Updating VI channel %d overlay %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Layer source offset X: %d Y: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Layer source size W: %d H: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"HW scaling is enabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Using vertical coarse scaling\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Using horizontal coarse scaling\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"HW scaling is not needed\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Layer destination coordinates X: %d Y: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Layer destination size W: %d H: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Invalid format\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Using GEM @ %pad\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"Layer %d. line width: %d bytes\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"Setting %d. buffer address to %pad\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sun8i_vi_layer_init_one(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 472, i32 noundef 3520) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %64, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sun8i_mixer, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %10, i32 0, i32 5
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 30, i32 40
  %16 = select i1 %14, ptr @sun8i_vi_layer_formats, ptr @sun8i_vi_layer_de3_formats
  %17 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull @sun8i_vi_layer_funcs, ptr noundef nonnull %16, i32 noundef %15, ptr noundef nonnull @sun8i_layer_modifiers, i32 noundef 0, ptr noundef null) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %8
  %20 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str) #6
  %21 = inttoptr i32 %17 to ptr
  br label %64

22:                                               ; preds = %8
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %23, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %23, i32 0, i32 5
  %30 = load i8, ptr %29, align 4
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28, %22
  %34 = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %6) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.1) #6
  %38 = inttoptr i32 %34 to ptr
  br label %64

39:                                               ; preds = %33, %28
  %40 = add i32 %25, -1
  %41 = add i32 %40, %26
  %42 = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %6, i32 noundef %2, i32 noundef 0, i32 noundef %41) #5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.2) #6
  %46 = inttoptr i32 %42 to ptr
  br label %64

47:                                               ; preds = %39
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %48, i32 0, i32 5
  %50 = load i8, ptr %49, align 4
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i32 3, i32 7
  %54 = tail call i32 @drm_plane_create_color_properties(ptr noundef nonnull %6, i32 noundef %53, i32 noundef 3, i32 noundef 1, i32 noundef 0) #5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.3) #6
  %58 = inttoptr i32 %54 to ptr
  br label %64

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.drm_plane, ptr %6, i32 0, i32 18
  store ptr @sun8i_vi_layer_helper_funcs, ptr %60, align 8
  %61 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %6, i32 0, i32 1
  store ptr %1, ptr %61, align 8
  %62 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %6, i32 0, i32 2
  store i32 %2, ptr %62, align 4
  %63 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %6, i32 0, i32 3
  store i32 0, ptr %63, align 8
  br label %64

64:                                               ; preds = %59, %56, %44, %36, %19, %3
  %65 = phi ptr [ %21, %19 ], [ %38, %36 ], [ %46, %44 ], [ %58, %56 ], [ %6, %59 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %65
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_color_properties(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
define internal i32 @sun8i_vi_layer_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 378, i32 noundef 9, ptr noundef null) #5
  br label %36

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sun8i_mixer, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %0, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %27
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 65536, i32 1
  %34 = select i1 %32, i32 65536, i32 1048575
  %35 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %8, ptr noundef nonnull %18, i32 noundef %33, i32 noundef %34, i1 noundef zeroext true, i1 noundef zeroext true) #5
  br label %36

36:                                               ; preds = %21, %20, %2
  %37 = phi i32 [ -22, %20 ], [ %35, %21 ], [ 0, %2 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_vi_layer_atomic_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  %15 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 22
  %18 = load i8, ptr %17, align 4, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %0, i32 0, i32 3
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, i32 noundef %22, i32 noundef %24) #5
  %37 = getelementptr inbounds %struct.sunxi_engine, ptr %16, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = mul i32 %24, 48
  %40 = add i32 %36, %39
  %41 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %40, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %42 = load ptr, ptr %37, align 4
  %43 = add i32 %14, 8
  %44 = shl nuw i32 1, %43
  %45 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef %31, i32 noundef %44, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %46 = load ptr, ptr %37, align 4
  %47 = or i32 %31, 128
  %48 = shl i32 %14, 2
  %49 = shl i32 15, %48
  %50 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef %47, i32 noundef %49, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %505

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 16
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %0, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %0, i32 0, i32 3
  %57 = load i32, ptr %56, align 8
  %58 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.drm_framebuffer, ptr %61, i32 0, i32 4
  %63 = load ptr, ptr %62, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %55, i32 noundef %57) #5
  %64 = getelementptr inbounds %struct.sun8i_mixer, ptr %16, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %65, i32 0, i32 5
  %67 = load i8, ptr %66, align 4
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  %70 = shl i32 %55, 11
  %71 = add i32 %70, 4096
  %72 = shl i32 %55, 12
  %73 = add i32 %72, 8192
  %74 = select i1 %69, i32 %73, i32 %71
  %75 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 20
  %76 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 20, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = load i32, ptr %75, align 4
  %79 = sub i32 %77, %78
  %80 = ashr i32 %79, 16
  %81 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 20, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 20, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = sub i32 %82, %84
  %86 = ashr i32 %85, 16
  %87 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 21
  %88 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 21, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = load i32, ptr %87, align 4
  %91 = sub i32 %89, %90
  %92 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 21, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 21, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = sub i32 %93, %95
  %97 = and i32 %78, 65535
  %98 = and i32 %84, 65535
  %99 = getelementptr inbounds %struct.drm_format_info, ptr %63, i32 0, i32 6
  %100 = load i8, ptr %99, align 2
  %101 = icmp ugt i8 %100, 1
  br i1 %101, label %102, label %112

102:                                              ; preds = %51
  %103 = zext i8 %100 to i32
  %104 = add nsw i32 %103, -1
  %105 = ashr i32 %78, 16
  %106 = and i32 %104, %105
  %107 = add nsw i32 %106, %80
  %108 = sub nsw i32 0, %103
  %109 = and i32 %107, %108
  %110 = shl nuw nsw i32 %106, 16
  %111 = or i32 %110, %97
  br label %112

112:                                              ; preds = %102, %51
  %113 = phi i32 [ %111, %102 ], [ %97, %51 ]
  %114 = phi i32 [ %109, %102 ], [ %80, %51 ]
  %115 = getelementptr inbounds %struct.drm_format_info, ptr %63, i32 0, i32 7
  %116 = load i8, ptr %115, align 1
  %117 = icmp ugt i8 %116, 1
  br i1 %117, label %122, label %118

118:                                              ; preds = %112
  %119 = ashr i32 %84, 16
  %120 = zext i8 %116 to i32
  %121 = sub nsw i32 0, %120
  br label %132

122:                                              ; preds = %112
  %123 = zext i8 %116 to i32
  %124 = add nsw i32 %123, -1
  %125 = ashr i32 %84, 16
  %126 = and i32 %124, %125
  %127 = add nsw i32 %126, %86
  %128 = sub nsw i32 0, %123
  %129 = and i32 %127, %128
  %130 = shl nuw nsw i32 %126, 16
  %131 = or i32 %130, %98
  br label %132

132:                                              ; preds = %122, %118
  %133 = phi i32 [ %121, %118 ], [ %128, %122 ]
  %134 = phi i32 [ %119, %118 ], [ %125, %122 ]
  %135 = phi i32 [ %98, %118 ], [ %131, %122 ]
  %136 = phi i32 [ %86, %118 ], [ %129, %122 ]
  %137 = shl i32 %136, 16
  %138 = add i32 %137, -65536
  %139 = add nsw i32 %114, -1
  %140 = or i32 %138, %139
  %141 = shl i32 %96, 16
  %142 = add i32 %141, -65536
  %143 = add i32 %91, -1
  %144 = or i32 %142, %143
  %145 = ashr i32 %78, 16
  %146 = zext i8 %100 to i32
  %147 = sub nsw i32 0, %146
  %148 = and i32 %145, %147
  %149 = and i32 %134, %133
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %148, i32 noundef %149) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %114, i32 noundef %136) #5
  %150 = getelementptr inbounds %struct.sunxi_engine, ptr %16, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  %152 = mul i32 %57, 48
  %153 = add i32 %74, %152
  %154 = or i32 %153, 4
  %155 = tail call i32 @regmap_write(ptr noundef %151, i32 noundef %154, i32 noundef %140) #5
  %156 = load ptr, ptr %150, align 4
  %157 = or i32 %74, 232
  %158 = tail call i32 @regmap_write(ptr noundef %156, i32 noundef %157, i32 noundef %140) #5
  %159 = load i8, ptr %99, align 2
  %160 = icmp ugt i8 %159, 1
  br i1 %160, label %164, label %161

161:                                              ; preds = %132
  %162 = load i8, ptr %115, align 1
  %163 = icmp ugt i8 %162, 1
  br label %164

164:                                              ; preds = %161, %132
  %165 = phi i1 [ true, %132 ], [ %163, %161 ]
  %166 = icmp eq i32 %140, %144
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = icmp ne i32 %113, 0
  %169 = select i1 %165, i1 true, i1 %168
  %170 = icmp ne i32 %135, 0
  %171 = select i1 %169, i1 true, i1 %170
  br i1 %171, label %172, label %238

172:                                              ; preds = %167, %164
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11) #5
  %173 = load ptr, ptr %58, align 4
  %174 = getelementptr inbounds %struct.drm_plane_state, ptr %173, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.drm_crtc, ptr %175, i32 0, i32 22
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.drm_crtc_state, ptr %177, i32 0, i32 8
  %179 = load i32, ptr %178, align 4
  %180 = mul i32 %179, 1000
  %181 = getelementptr inbounds %struct.drm_crtc_state, ptr %177, i32 0, i32 8, i32 9
  %182 = load i16, ptr %181, align 4
  %183 = zext i16 %182 to i32
  %184 = getelementptr inbounds %struct.drm_crtc_state, ptr %177, i32 0, i32 8, i32 4
  %185 = load i16, ptr %184, align 2
  %186 = zext i16 %185 to i32
  %187 = mul nuw i32 %186, %183
  %188 = sdiv i32 %180, %187
  %189 = getelementptr inbounds %struct.sun8i_mixer, ptr %16, i32 0, i32 4
  %190 = load ptr, ptr %189, align 4
  %191 = tail call i32 @clk_get_rate(ptr noundef %190) #5
  %192 = zext i32 %191 to i64
  %193 = mul nuw nsw i64 %192, 80
  %194 = getelementptr inbounds %struct.drm_crtc_state, ptr %177, i32 0, i32 8, i32 6
  %195 = load i16, ptr %194, align 2
  %196 = zext i16 %195 to i32
  %197 = tail call i32 @llvm.umax.i32(i32 %114, i32 %91) #5
  %198 = mul i32 %188, %197
  %199 = mul i32 %198, %196
  %200 = icmp ult i64 %193, 4294967296
  br i1 %200, label %201, label %205, !prof !10

201:                                              ; preds = %172
  %202 = trunc i64 %193 to i32
  %203 = udiv i32 %202, %199
  %204 = zext i32 %203 to i64
  br label %208

205:                                              ; preds = %172
  %206 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %199, i64 %193) #7, !srcloc !11
  %207 = extractvalue { i64, i64 } %206, 1
  br label %208

208:                                              ; preds = %205, %201
  %209 = phi i64 [ %204, %201 ], [ %207, %205 ]
  %210 = mul nsw i32 %136, 100
  %211 = udiv i32 %210, %96
  %212 = zext i32 %211 to i64
  %213 = icmp ult i64 %209, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12) #5
  %215 = trunc i64 %209 to i32
  %216 = mul i32 %96, %215
  %217 = udiv i32 %216, 100
  br label %218

218:                                              ; preds = %214, %208
  %219 = phi i32 [ %217, %214 ], [ 0, %208 ]
  %220 = phi i32 [ %136, %214 ], [ 0, %208 ]
  %221 = phi i32 [ %217, %214 ], [ %136, %208 ]
  br i1 %165, label %222, label %226

222:                                              ; preds = %218
  %223 = load ptr, ptr %64, align 4
  %224 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %223, i32 0, i32 6
  %225 = load i32, ptr %224, align 4
  br label %226

226:                                              ; preds = %222, %218
  %227 = phi i32 [ %225, %222 ], [ 2048, %218 ]
  %228 = icmp ugt i32 %114, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %226
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13) #5
  br label %230

230:                                              ; preds = %229, %226
  %231 = phi i32 [ %227, %229 ], [ 0, %226 ]
  %232 = phi i32 [ %114, %229 ], [ 0, %226 ]
  %233 = phi i32 [ %227, %229 ], [ %114, %226 ]
  %234 = shl i32 %233, 16
  %235 = udiv i32 %234, %91
  %236 = shl i32 %221, 16
  %237 = udiv i32 %236, %96
  tail call void @sun8i_vi_scaler_setup(ptr noundef %16, i32 noundef %55, i32 noundef %233, i32 noundef %221, i32 noundef %91, i32 noundef %96, i32 noundef %235, i32 noundef %237, i32 noundef %113, i32 noundef %135, ptr noundef %63) #5
  br label %239

238:                                              ; preds = %167
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14) #5
  br label %239

239:                                              ; preds = %238, %230
  %240 = phi i1 [ false, %238 ], [ true, %230 ]
  %241 = phi i32 [ 0, %238 ], [ %231, %230 ]
  %242 = phi i32 [ 0, %238 ], [ %232, %230 ]
  %243 = phi i32 [ 0, %238 ], [ %219, %230 ]
  %244 = phi i32 [ 0, %238 ], [ %220, %230 ]
  tail call void @sun8i_vi_scaler_enable(ptr noundef %16, i32 noundef %55, i1 noundef zeroext %240) #5
  %245 = select i1 %69, i32 4096, i32 2048
  %246 = load ptr, ptr %150, align 4
  %247 = or i32 %74, 240
  %248 = shl i32 %241, 16
  %249 = or i32 %248, %242
  %250 = tail call i32 @regmap_write(ptr noundef %246, i32 noundef %247, i32 noundef %249) #5
  %251 = load ptr, ptr %150, align 4
  %252 = or i32 %74, 244
  %253 = tail call i32 @regmap_write(ptr noundef %251, i32 noundef %252, i32 noundef %249) #5
  %254 = load ptr, ptr %150, align 4
  %255 = or i32 %74, 248
  %256 = shl i32 %243, 16
  %257 = or i32 %256, %244
  %258 = tail call i32 @regmap_write(ptr noundef %254, i32 noundef %255, i32 noundef %257) #5
  %259 = load ptr, ptr %150, align 4
  %260 = or i32 %74, 252
  %261 = tail call i32 @regmap_write(ptr noundef %259, i32 noundef %260, i32 noundef %257) #5
  %262 = load i32, ptr %87, align 4
  %263 = load i32, ptr %94, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %262, i32 noundef %263) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %91, i32 noundef %96) #5
  %264 = load ptr, ptr %150, align 4
  %265 = shl i32 %53, 4
  %266 = or i32 %265, 12
  %267 = add i32 %266, %245
  %268 = load i32, ptr %94, align 4
  %269 = shl i32 %268, 16
  %270 = load i32, ptr %87, align 4
  %271 = or i32 %269, %270
  %272 = tail call i32 @regmap_write(ptr noundef %264, i32 noundef %267, i32 noundef %271) #5
  %273 = load ptr, ptr %150, align 4
  %274 = or i32 %265, 8
  %275 = add i32 %274, %245
  %276 = tail call i32 @regmap_write(ptr noundef %273, i32 noundef %275, i32 noundef %144) #5
  %277 = load ptr, ptr %64, align 4
  %278 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %277, i32 0, i32 5
  %279 = load i8, ptr %278, align 4
  %280 = and i8 %279, 1
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %300, label %282

282:                                              ; preds = %239
  %283 = load i32, ptr %56, align 8
  %284 = load i32, ptr %54, align 4
  %285 = shl i32 %284, 11
  %286 = load ptr, ptr %58, align 4
  %287 = getelementptr inbounds %struct.drm_plane_state, ptr %286, i32 0, i32 12
  %288 = load i16, ptr %287, align 4
  %289 = zext i16 %288 to i32
  %290 = shl nuw i32 %289, 16
  %291 = and i32 %290, -16777216
  %292 = icmp eq i16 %288, -1
  %293 = select i1 %292, i32 0, i32 4
  %294 = or i32 %291, %293
  %295 = load ptr, ptr %150, align 4
  %296 = mul i32 %283, 48
  %297 = add i32 %296, 4096
  %298 = add i32 %297, %285
  %299 = tail call i32 @regmap_update_bits_base(ptr noundef %295, i32 noundef %298, i32 noundef -16777210, i32 noundef %294, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %312

300:                                              ; preds = %239
  %301 = load i32, ptr %277, align 4
  %302 = icmp eq i32 %301, 1
  br i1 %302, label %303, label %312

303:                                              ; preds = %300
  %304 = load ptr, ptr %150, align 4
  %305 = load ptr, ptr %58, align 4
  %306 = getelementptr inbounds %struct.drm_plane_state, ptr %305, i32 0, i32 12
  %307 = load i16, ptr %306, align 4
  %308 = lshr i16 %307, 8
  %309 = zext i16 %308 to i32
  %310 = shl nuw i32 %309, 24
  %311 = tail call i32 @regmap_update_bits_base(ptr noundef %304, i32 noundef 696464, i32 noundef -16777216, i32 noundef %310, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %312

312:                                              ; preds = %303, %300, %282
  %313 = load i32, ptr %54, align 4
  %314 = load i32, ptr %56, align 8
  %315 = load ptr, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !12
  %316 = load ptr, ptr %64, align 4
  %317 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %316, i32 0, i32 5
  %318 = load i8, ptr %317, align 4
  %319 = getelementptr inbounds %struct.drm_plane_state, ptr %315, i32 0, i32 2
  %320 = load ptr, ptr %319, align 4
  %321 = getelementptr inbounds %struct.drm_framebuffer, ptr %320, i32 0, i32 4
  %322 = load ptr, ptr %321, align 8
  %323 = load i32, ptr %322, align 4
  %324 = call i32 @sun8i_mixer_drm_format_to_hw(i32 noundef %323, ptr noundef nonnull %4) #5
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %327, label %326

326:                                              ; preds = %312
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17) #5
  br label %360

327:                                              ; preds = %312
  %328 = and i8 %318, 1
  %329 = icmp eq i8 %328, 0
  %330 = shl i32 %313, 12
  %331 = add i32 %330, 8192
  %332 = shl i32 %313, 11
  %333 = add i32 %332, 4096
  %334 = select i1 %329, i32 %331, i32 %333
  %335 = load i32, ptr %4, align 4
  %336 = shl i32 %335, 8
  %337 = load ptr, ptr %150, align 4
  %338 = mul i32 %314, 48
  %339 = add i32 %334, %338
  %340 = call i32 @regmap_update_bits_base(ptr noundef %337, i32 noundef %339, i32 noundef 7936, i32 noundef %336, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %341 = getelementptr inbounds %struct.drm_format_info, ptr %322, i32 0, i32 9
  %342 = load i8, ptr %341, align 1, !range !9
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %353, label %344

344:                                              ; preds = %327
  %345 = load i32, ptr %322, align 4
  switch i32 %345, label %346 [
    i32 825316953, label %347
    i32 842094169, label %347
    i32 909203033, label %347
    i32 875714137, label %347
  ]

346:                                              ; preds = %344
  br label %347

347:                                              ; preds = %346, %344, %344, %344, %344
  %348 = phi i32 [ 2, %344 ], [ 2, %344 ], [ 2, %344 ], [ 2, %344 ], [ 1, %346 ]
  %349 = getelementptr inbounds %struct.drm_plane_state, ptr %315, i32 0, i32 17
  %350 = load i32, ptr %349, align 4
  %351 = getelementptr inbounds %struct.drm_plane_state, ptr %315, i32 0, i32 18
  %352 = load i32, ptr %351, align 4
  call void @sun8i_csc_set_ccsc_coefficients(ptr noundef %16, i32 noundef %313, i32 noundef %348, i32 noundef %350, i32 noundef %352) #5
  br label %353

353:                                              ; preds = %347, %327
  %354 = xor i1 %343, true
  call void @sun8i_csc_enable_ccsc(ptr noundef %16, i32 noundef %313, i1 noundef zeroext %354) #5
  %355 = load i8, ptr %341, align 1, !range !9
  %356 = icmp eq i8 %355, 0
  %357 = select i1 %356, i32 32768, i32 0
  %358 = load ptr, ptr %150, align 4
  %359 = call i32 @regmap_update_bits_base(ptr noundef %358, i32 noundef %339, i32 noundef 32768, i32 noundef %357, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %360

360:                                              ; preds = %353, %326
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %361 = load i32, ptr %54, align 4
  %362 = load i32, ptr %56, align 8
  %363 = load ptr, ptr %58, align 4
  %364 = getelementptr inbounds %struct.drm_plane_state, ptr %363, i32 0, i32 2
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr inbounds %struct.drm_framebuffer, ptr %365, i32 0, i32 4
  %367 = load ptr, ptr %366, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  %368 = getelementptr inbounds %struct.drm_plane_state, ptr %363, i32 0, i32 20
  %369 = load i32, ptr %368, align 4
  %370 = ashr i32 %369, 16
  %371 = getelementptr inbounds %struct.drm_format_info, ptr %367, i32 0, i32 6
  %372 = load i8, ptr %371, align 2
  %373 = zext i8 %372 to i32
  %374 = sub nsw i32 0, %373
  %375 = and i32 %370, %374
  %376 = getelementptr inbounds %struct.drm_plane_state, ptr %363, i32 0, i32 20, i32 1
  %377 = load i32, ptr %376, align 4
  %378 = ashr i32 %377, 16
  %379 = getelementptr inbounds %struct.drm_format_info, ptr %367, i32 0, i32 7
  %380 = load i8, ptr %379, align 1
  %381 = zext i8 %380 to i32
  %382 = sub nsw i32 0, %381
  %383 = and i32 %378, %382
  %384 = getelementptr inbounds %struct.drm_format_info, ptr %367, i32 0, i32 2
  %385 = load i8, ptr %384, align 1
  %386 = icmp eq i8 %385, 0
  br i1 %386, label %463, label %387

387:                                              ; preds = %360
  %388 = load ptr, ptr %64, align 4
  %389 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %388, i32 0, i32 5
  %390 = load i8, ptr %389, align 4
  %391 = and i8 %390, 1
  %392 = icmp eq i8 %391, 0
  %393 = shl i32 %361, 12
  %394 = add i32 %393, 8192
  %395 = shl i32 %361, 11
  %396 = add i32 %395, 4096
  %397 = select i1 %392, i32 %394, i32 %396
  %398 = getelementptr inbounds %struct.drm_format_info, ptr %367, i32 0, i32 3
  %399 = mul i32 %362, 48
  %400 = add i32 %397, %399
  %401 = or i32 %400, 12
  %402 = add i32 %400, 24
  %403 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %365, i32 noundef 0) #5
  %404 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %403, i32 0, i32 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %404) #5
  %405 = load i32, ptr %404, align 8
  %406 = getelementptr %struct.drm_framebuffer, ptr %365, i32 0, i32 7, i32 0
  %407 = load i32, ptr %406, align 4
  %408 = add i32 %407, %405
  %409 = load i8, ptr %398, align 1
  %410 = zext i8 %409 to i32
  %411 = mul nsw i32 %375, %410
  %412 = add i32 %408, %411
  %413 = getelementptr %struct.drm_framebuffer, ptr %365, i32 0, i32 6, i32 0
  %414 = load i32, ptr %413, align 4
  %415 = mul i32 %414, %383
  %416 = add i32 %412, %415
  store i32 %416, ptr %3, align 4
  %417 = load i32, ptr %413, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef 1, i32 noundef %417) #5
  %418 = load ptr, ptr %150, align 4
  %419 = load i32, ptr %413, align 4
  %420 = call i32 @regmap_write(ptr noundef %418, i32 noundef %401, i32 noundef %419) #5
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef 1, ptr noundef nonnull %3) #5
  %421 = load ptr, ptr %150, align 4
  %422 = load i32, ptr %3, align 4
  %423 = call i32 @regmap_write(ptr noundef %421, i32 noundef %402, i32 noundef %422) #5
  %424 = load i8, ptr %384, align 1
  %425 = icmp ugt i8 %424, 1
  br i1 %425, label %426, label %463

426:                                              ; preds = %426, %387
  %427 = phi i32 [ %449, %426 ], [ 1, %387 ]
  %428 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %365, i32 noundef %427) #5
  %429 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %428, i32 0, i32 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %429) #5
  %430 = load i32, ptr %429, align 8
  %431 = getelementptr %struct.drm_framebuffer, ptr %365, i32 0, i32 7, i32 %427
  %432 = load i32, ptr %431, align 4
  %433 = add i32 %432, %430
  %434 = load i8, ptr %371, align 2
  %435 = zext i8 %434 to i32
  %436 = udiv i32 %375, %435
  %437 = load i8, ptr %379, align 1
  %438 = zext i8 %437 to i32
  %439 = udiv i32 %383, %438
  %440 = getelementptr [4 x i8], ptr %398, i32 0, i32 %427
  %441 = load i8, ptr %440, align 1
  %442 = zext i8 %441 to i32
  %443 = mul i32 %436, %442
  %444 = add i32 %433, %443
  %445 = getelementptr %struct.drm_framebuffer, ptr %365, i32 0, i32 6, i32 %427
  %446 = load i32, ptr %445, align 4
  %447 = mul i32 %446, %439
  %448 = add i32 %444, %447
  store i32 %448, ptr %3, align 4
  %449 = add nuw nsw i32 %427, 1
  %450 = load i32, ptr %445, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %449, i32 noundef %450) #5
  %451 = load ptr, ptr %150, align 4
  %452 = shl i32 %427, 2
  %453 = add i32 %452, %401
  %454 = load i32, ptr %445, align 4
  %455 = call i32 @regmap_write(ptr noundef %451, i32 noundef %453, i32 noundef %454) #5
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef %449, ptr noundef nonnull %3) #5
  %456 = load ptr, ptr %150, align 4
  %457 = add i32 %452, %402
  %458 = load i32, ptr %3, align 4
  %459 = call i32 @regmap_write(ptr noundef %456, i32 noundef %457, i32 noundef %458) #5
  %460 = load i8, ptr %384, align 1
  %461 = zext i8 %460 to i32
  %462 = icmp ult i32 %449, %461
  br i1 %462, label %426, label %463, !llvm.loop !13

463:                                              ; preds = %426, %387, %360
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %464 = load i32, ptr %54, align 4
  %465 = load i32, ptr %56, align 8
  %466 = load ptr, ptr %64, align 4
  %467 = getelementptr inbounds %struct.sun8i_mixer_cfg, ptr %466, i32 0, i32 5
  %468 = load i8, ptr %467, align 4
  %469 = and i8 %468, 1
  %470 = icmp eq i8 %469, 0
  %471 = select i1 %470, i32 4096, i32 2048
  %472 = shl i32 %464, 11
  %473 = add i32 %472, 4096
  %474 = shl i32 %464, 12
  %475 = add i32 %474, 8192
  %476 = select i1 %470, i32 %475, i32 %473
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %464, i32 noundef %465) #5
  %477 = load ptr, ptr %150, align 4
  %478 = mul i32 %465, 48
  %479 = add i32 %476, %478
  %480 = call i32 @regmap_update_bits_base(ptr noundef %477, i32 noundef %479, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %481 = icmp eq i32 %53, %14
  br i1 %481, label %482, label %484

482:                                              ; preds = %463
  %483 = or i32 %471, 128
  br label %494

484:                                              ; preds = %463
  %485 = load ptr, ptr %150, align 4
  %486 = add i32 %14, 8
  %487 = shl nuw i32 1, %486
  %488 = call i32 @regmap_update_bits_base(ptr noundef %485, i32 noundef %471, i32 noundef %487, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %489 = load ptr, ptr %150, align 4
  %490 = or i32 %471, 128
  %491 = shl i32 %14, 2
  %492 = shl i32 15, %491
  %493 = call i32 @regmap_update_bits_base(ptr noundef %489, i32 noundef %490, i32 noundef %492, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %494

494:                                              ; preds = %484, %482
  %495 = phi i32 [ %483, %482 ], [ %490, %484 ]
  %496 = add i32 %53, 8
  %497 = shl nuw i32 1, %496
  %498 = load ptr, ptr %150, align 4
  %499 = call i32 @regmap_update_bits_base(ptr noundef %498, i32 noundef %471, i32 noundef %497, i32 noundef %497, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %500 = shl i32 %53, 2
  %501 = shl i32 %464, %500
  %502 = load ptr, ptr %150, align 4
  %503 = shl i32 15, %500
  %504 = call i32 @regmap_update_bits_base(ptr noundef %502, i32 noundef %495, i32 noundef %503, i32 noundef %501, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %505

505:                                              ; preds = %494, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun8i_vi_layer_atomic_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sun8i_vi_layer, ptr %0, i32 0, i32 3
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, i32 noundef %14, i32 noundef %16) #5
  %29 = getelementptr inbounds %struct.sunxi_engine, ptr %12, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = mul i32 %16, 48
  %32 = add i32 %28, %31
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %32, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %34 = load ptr, ptr %29, align 4
  %35 = add i32 %10, 8
  %36 = shl nuw i32 1, %35
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %23, i32 noundef %36, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %38 = load ptr, ptr %29, align 4
  %39 = or i32 %23, 128
  %40 = shl i32 %10, 2
  %41 = shl i32 15, %40
  %42 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %39, i32 noundef %41, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
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
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_vi_scaler_setup(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_vi_scaler_enable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_mixer_drm_format_to_hw(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_csc_set_ccsc_coefficients(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun8i_csc_enable_ccsc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148821942, i64 2148822222, i64 2148822556, i64 2148822890}
!12 = !{!"auto-init"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.peeled.count", i32 1}
