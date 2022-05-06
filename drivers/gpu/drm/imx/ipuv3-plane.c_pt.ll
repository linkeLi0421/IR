; ModuleID = '/llk/IR/drivers/gpu/drm/imx/ipuv3-plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/imx/ipuv3-plane.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipu_plane = type { %struct.drm_plane, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
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
%struct.ipu_plane_state = type { %struct.drm_plane_state, i8 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.74 = type { i32, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.drm_format_info = type { i32, i8, i8, %union.anon.70, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.70 = type { [4 x i8] }

@.str = private unnamed_addr constant [9 x i8] c"[%d] %s\0A\00", align 1
@__func__.ipu_plane_disable = private unnamed_addr constant [18 x i8] c"ipu_plane_disable\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"[PLANE:%d] IDMAC timeout\0A\00", align 1
@ipu_format_modifiers = internal constant [2 x i64] [i64 0, i64 72057594037927935], align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"channel %d, dp flow %d, possible_crtcs=0x%x\0A\00", align 1
@ipu_plane_all_formats = internal constant [34 x i32] [i32 892424769, i32 892424792, i32 892420673, i32 892420696, i32 892420434, i32 892420418, i32 842093121, i32 875713089, i32 875713112, i32 875708993, i32 875709016, i32 875708754, i32 875714642, i32 875708738, i32 875714626, i32 1498831189, i32 1498765654, i32 1448695129, i32 1431918169, i32 842093913, i32 842094169, i32 909202777, i32 909203033, i32 875713881, i32 875714137, i32 842094158, i32 909203022, i32 909199186, i32 943797586, i32 943797570, i32 943798354, i32 943798338, i32 943806546, i32 943806530], align 4
@ipu_plane_rgb_formats = internal constant [22 x i32] [i32 892424769, i32 892424792, i32 892420673, i32 892420696, i32 892420434, i32 892420418, i32 842093121, i32 875713089, i32 875713112, i32 875708993, i32 875709016, i32 875708754, i32 875714642, i32 875708738, i32 875714626, i32 909199186, i32 943797586, i32 943797570, i32 943798354, i32 943798338, i32 943806546, i32 943806530], align 4
@pre_format_modifiers = internal constant [4 x i64] [i64 0, i64 432345564227567617, i64 432345564227567618, i64 72057594037927935], align 8
@ipu_plane_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr null, ptr @ipu_plane_state_reset, ptr null, ptr @ipu_plane_duplicate_state, ptr @ipu_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipu_plane_format_mod_supported }, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"failed to allocate and initialize %s plane\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@ipu_plane_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @ipu_plane_atomic_check, ptr @ipu_plane_atomic_update, ptr @ipu_plane_atomic_disable, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"failed to get %s plane resources: %pe\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"drivers/gpu/drm/imx/ipuv3-plane.c\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Unsupported plane type %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"pitch is not big enough for 8 pixels alignment\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"failed to get idmac channel: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"ipu_plane_put_resources\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"failed to get alpha idmac channel %d: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"failed to get dmfc: ret %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"failed to get dp flow: %d\0A\00", align 1
@switch.table.ipu_plane_init = private unnamed_addr constant [16 x i32] [i32 17, i32 18, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 51, i32 52, i32 19, i32 17, i32 31, i32 17, i32 33], align 4
@switch.table.ipu_plane_atomic_update = private unnamed_addr constant [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 2, i32 3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_plane_irq(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @ipu_idmac_channel_irq(ptr noundef %3, ptr noundef %5, i32 noundef 0) #6
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_channel_irq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_plane_disable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 268, ptr noundef nonnull @__func__.ipu_plane_disable) #6
  %3 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @ipu_idmac_wait_busy(ptr noundef %4, i32 noundef 50) #6
  %6 = icmp eq i32 %5, -110
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %9) #6
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  %14 = and i1 %13, %1
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void @ipu_dp_disable_channel(ptr noundef nonnull %12, i1 noundef zeroext false) #6
  br label %16

16:                                               ; preds = %15, %10
  %17 = load ptr, ptr %3, align 4
  %18 = tail call i32 @ipu_idmac_disable_channel(ptr noundef %17) #6
  %19 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = tail call i32 @ipu_idmac_disable_channel(ptr noundef nonnull %20) #6
  br label %24

24:                                               ; preds = %22, %16
  %25 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  tail call void @ipu_dmfc_disable_channel(ptr noundef %26) #6
  %27 = load ptr, ptr %11, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  tail call void @ipu_dp_disable(ptr noundef %31) #6
  br label %32

32:                                               ; preds = %29, %24
  %33 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = tail call zeroext i1 @ipu_prg_present(ptr noundef %34) #6
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load ptr, ptr %3, align 4
  tail call void @ipu_prg_channel_disable(ptr noundef %37) #6
  br label %38

38:                                               ; preds = %36, %32
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_wait_busy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dp_disable_channel(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_disable_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dmfc_disable_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dp_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipu_prg_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_prg_channel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_plane_disable_deferred(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 8
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i8 0, ptr %2, align 4
  tail call void @ipu_plane_disable(ptr noundef %0, i1 noundef zeroext false)
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ipu_plane_atomic_update_pending(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ipu_plane_state, ptr %3, i32 0, i32 1
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call zeroext i1 @ipu_prg_channel_configure_pending(ptr noundef %13) #6
  br label %15

15:                                               ; preds = %11, %7, %1
  %16 = phi i1 [ %14, %11 ], [ false, %1 ], [ false, %7 ]
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipu_prg_channel_configure_pending(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_planes_assign_pre(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @ipu_prg_max_active_channels() #6
  %4 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 19
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  br label %18

11:                                               ; preds = %30, %2
  %12 = phi ptr [ %5, %2 ], [ %31, %30 ]
  %13 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 30, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %141

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  br label %40

18:                                               ; preds = %30, %9
  %19 = phi ptr [ %5, %9 ], [ %31, %30 ]
  %20 = phi i32 [ 0, %9 ], [ %32, %30 ]
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr %struct.__drm_crtcs_state, ptr %21, i32 %20
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = tail call i32 @drm_atomic_add_affected_planes(ptr noundef %1, ptr noundef nonnull %23) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %141

28:                                               ; preds = %25
  %29 = load ptr, ptr %4, align 4
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi ptr [ %29, %28 ], [ %19, %18 ]
  %32 = add nuw nsw i32 %20, 1
  %33 = getelementptr inbounds %struct.drm_device, ptr %31, i32 0, i32 30, i32 19
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %18, label %11

36:                                               ; preds = %82
  %37 = icmp sgt i32 %87, 0
  br i1 %37, label %38, label %141

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  br label %89

40:                                               ; preds = %82, %16
  %41 = phi i32 [ 0, %16 ], [ %84, %82 ]
  %42 = phi i32 [ %3, %16 ], [ %83, %82 ]
  %43 = load ptr, ptr %17, align 4
  %44 = getelementptr %struct.__drm_planes_state, ptr %43, i32 %41
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %82, label %47

47:                                               ; preds = %40
  %48 = getelementptr %struct.__drm_planes_state, ptr %43, i32 %41, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.drm_plane_state, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.ipu_plane_state, ptr %49, i32 0, i32 1
  store i8 0, ptr %54, align 4
  br label %82

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.drm_framebuffer, ptr %51, i32 0, i32 11
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.drm_framebuffer, ptr %51, i32 0, i32 8
  %62 = load i64, ptr %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ipu_plane, ptr %45, i32 0, i32 1
  %66 = load ptr, ptr %65, align 8
  %67 = tail call zeroext i1 @ipu_prg_present(ptr noundef %66) #6
  %68 = icmp ne i32 %42, 0
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %141

70:                                               ; preds = %64
  %71 = load ptr, ptr %65, align 8
  %72 = load ptr, ptr %50, align 4
  %73 = getelementptr inbounds %struct.drm_framebuffer, ptr %72, i32 0, i32 4
  %74 = load ptr, ptr %73, align 8
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.drm_framebuffer, ptr %72, i32 0, i32 8
  %77 = load i64, ptr %76, align 8
  %78 = tail call zeroext i1 @ipu_prg_format_supported(ptr noundef %71, i32 noundef %75, i64 noundef %77) #6
  br i1 %78, label %79, label %141

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.ipu_plane_state, ptr %49, i32 0, i32 1
  store i8 1, ptr %80, align 4
  %81 = add i32 %42, -1
  br label %82

82:                                               ; preds = %79, %60, %55, %53, %40
  %83 = phi i32 [ %42, %60 ], [ %81, %79 ], [ %42, %55 ], [ %42, %53 ], [ %42, %40 ]
  %84 = add nuw nsw i32 %41, 1
  %85 = load ptr, ptr %4, align 4
  %86 = getelementptr inbounds %struct.drm_device, ptr %85, i32 0, i32 30, i32 17
  %87 = load i32, ptr %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %40, label %36

89:                                               ; preds = %134, %38
  %90 = phi i32 [ 0, %38 ], [ %136, %134 ]
  %91 = phi i32 [ %83, %38 ], [ %135, %134 ]
  %92 = load ptr, ptr %39, align 4
  %93 = getelementptr %struct.__drm_planes_state, ptr %92, i32 %90
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %134, label %96

96:                                               ; preds = %89
  %97 = getelementptr %struct.__drm_planes_state, ptr %92, i32 %90, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.drm_plane_state, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.ipu_plane_state, ptr %98, i32 0, i32 1
  store i8 0, ptr %103, align 4
  br label %134

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.drm_framebuffer, ptr %100, i32 0, i32 11
  %106 = load i32, ptr %105, align 8
  %107 = and i32 %106, 2
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.drm_framebuffer, ptr %100, i32 0, i32 8
  %111 = load i64, ptr %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %109, %104
  %114 = getelementptr inbounds %struct.drm_framebuffer, ptr %100, i32 0, i32 8
  store i64 0, ptr %114, align 8
  %115 = getelementptr inbounds %struct.ipu_plane, ptr %94, i32 0, i32 1
  %116 = load ptr, ptr %115, align 8
  %117 = tail call zeroext i1 @ipu_prg_present(ptr noundef %116) #6
  %118 = icmp ne i32 %91, 0
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %120, label %132

120:                                              ; preds = %113
  %121 = load ptr, ptr %115, align 8
  %122 = load ptr, ptr %99, align 4
  %123 = getelementptr inbounds %struct.drm_framebuffer, ptr %122, i32 0, i32 4
  %124 = load ptr, ptr %123, align 8
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr inbounds %struct.drm_framebuffer, ptr %122, i32 0, i32 8
  %127 = load i64, ptr %126, align 8
  %128 = tail call zeroext i1 @ipu_prg_format_supported(ptr noundef %121, i32 noundef %125, i64 noundef %127) #6
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.ipu_plane_state, ptr %98, i32 0, i32 1
  store i8 1, ptr %130, align 4
  %131 = add i32 %91, -1
  br label %134

132:                                              ; preds = %120, %113
  %133 = getelementptr inbounds %struct.ipu_plane_state, ptr %98, i32 0, i32 1
  store i8 0, ptr %133, align 4
  br label %134

134:                                              ; preds = %132, %129, %109, %102, %89
  %135 = phi i32 [ %91, %109 ], [ %131, %129 ], [ %91, %132 ], [ %91, %102 ], [ %91, %89 ]
  %136 = add nuw nsw i32 %90, 1
  %137 = load ptr, ptr %4, align 4
  %138 = getelementptr inbounds %struct.drm_device, ptr %137, i32 0, i32 30, i32 17
  %139 = load i32, ptr %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %89, label %141

141:                                              ; preds = %134, %70, %64, %36, %25, %11
  %142 = phi i32 [ 0, %36 ], [ 0, %11 ], [ 0, %134 ], [ -22, %64 ], [ -22, %70 ], [ %26, %25 ]
  ret i32 %142
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_prg_max_active_channels() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipu_prg_format_supported(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipu_plane_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = icmp ne i32 %5, 1
  %9 = zext i1 %8 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %2, i32 noundef %3, i32 noundef %4) #6
  %10 = icmp ult i32 %3, 2
  %11 = select i1 %10, i32 34, i32 22
  %12 = select i1 %10, ptr @ipu_plane_all_formats, ptr @ipu_plane_rgb_formats
  %13 = tail call zeroext i1 @ipu_prg_present(ptr noundef %1) #6
  %14 = select i1 %13, ptr @pre_format_modifiers, ptr @ipu_format_modifiers
  %15 = tail call ptr (ptr, i32, i32, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @__drmm_universal_plane_alloc(ptr noundef %0, i32 noundef 488, i32 noundef 0, i32 noundef %4, ptr noundef nonnull @ipu_plane_funcs, ptr noundef nonnull %12, i32 noundef %11, ptr noundef nonnull %14, i32 noundef %5, ptr noundef null) #6
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = select i1 %8, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull %18) #6
  br label %92

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.ipu_plane, ptr %15, i32 0, i32 1
  store ptr %1, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ipu_plane, ptr %15, i32 0, i32 6
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ipu_plane, ptr %15, i32 0, i32 7
  store i32 %3, ptr %22, align 8
  %23 = getelementptr inbounds %struct.drm_plane, ptr %15, i32 0, i32 18
  store ptr @ipu_plane_helper_funcs, ptr %23, align 8
  br i1 %10, label %24, label %26

24:                                               ; preds = %19
  %25 = tail call i32 @drm_plane_create_zpos_property(ptr noundef %15, i32 noundef %9, i32 noundef 0, i32 noundef 1) #6
  br label %28

26:                                               ; preds = %19
  %27 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef %15, i32 noundef 0) #6
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %27, %26 ], [ %25, %24 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = inttoptr i32 %29 to ptr
  br label %92

33:                                               ; preds = %28
  %34 = tail call i32 @drm_plane_create_color_properties(ptr noundef %15, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = inttoptr i32 %34 to ptr
  br label %92

38:                                               ; preds = %33
  %39 = load ptr, ptr %20, align 8
  %40 = load i32, ptr %21, align 4
  %41 = tail call ptr @ipu_idmac_get(ptr noundef %39, i32 noundef %40) #6
  %42 = getelementptr inbounds %struct.ipu_plane, ptr %15, i32 0, i32 2
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = ptrtoint ptr %41 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %45) #6
  br label %87

46:                                               ; preds = %38
  %47 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %0, ptr noundef nonnull @ipu_plane_put_resources, ptr noundef %15, ptr noundef nonnull @.str.11) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %87

49:                                               ; preds = %46
  %50 = load i32, ptr %21, align 4
  %51 = add i32 %50, -14
  %52 = icmp ult i32 %51, 16
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = trunc i32 %51 to i16
  %55 = lshr i16 -20989, %54
  %56 = and i16 %55, 1
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds [16 x i32], ptr @switch.table.ipu_plane_init, i32 0, i32 %51
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %20, align 8
  %62 = tail call ptr @ipu_idmac_get(ptr noundef %61, i32 noundef %60) #6
  %63 = getelementptr inbounds %struct.ipu_plane, ptr %15, i32 0, i32 3
  store ptr %62, ptr %63, align 8
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = load i32, ptr %21, align 4
  br label %69

67:                                               ; preds = %58
  %68 = ptrtoint ptr %62 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %60, i32 noundef %68) #6
  br label %87

69:                                               ; preds = %65, %53, %49
  %70 = phi i32 [ %66, %65 ], [ %50, %49 ], [ %50, %53 ]
  %71 = load ptr, ptr %20, align 8
  %72 = tail call ptr @ipu_dmfc_get(ptr noundef %71, i32 noundef %70) #6
  %73 = getelementptr inbounds %struct.ipu_plane, ptr %15, i32 0, i32 4
  store ptr %72, ptr %73, align 4
  %74 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = ptrtoint ptr %72 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %76) #6
  br label %87

77:                                               ; preds = %69
  %78 = load i32, ptr %22, align 8
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load ptr, ptr %20, align 8
  %82 = tail call ptr @ipu_dp_get(ptr noundef %81, i32 noundef %78) #6
  %83 = getelementptr inbounds %struct.ipu_plane, ptr %15, i32 0, i32 5
  store ptr %82, ptr %83, align 8
  %84 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = ptrtoint ptr %82 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %86) #6
  br label %87

87:                                               ; preds = %85, %75, %67, %46, %44
  %88 = phi i32 [ %47, %46 ], [ %45, %44 ], [ %68, %67 ], [ %76, %75 ], [ %86, %85 ]
  store i32 %88, ptr %7, align 4
  %89 = select i1 %8, ptr @.str.4, ptr @.str.5
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, ptr noundef nonnull %89, ptr noundef nonnull %7) #6
  %90 = load i32, ptr %7, align 4
  %91 = inttoptr i32 %90 to ptr
  br label %92

92:                                               ; preds = %87, %80, %77, %36, %31, %17
  %93 = phi ptr [ %15, %17 ], [ %32, %31 ], [ %37, %36 ], [ %91, %87 ], [ %15, %80 ], [ %15, %77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  ret ptr %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_universal_plane_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_color_properties(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_plane_state_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 8
  %4 = icmp ne i32 %3, 1
  %5 = zext i1 %4 to i32
  %6 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef nonnull %7) #6
  tail call void @kfree(ptr noundef nonnull %7) #6
  store ptr null, ptr %6, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 128) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %0, ptr noundef nonnull %12) #6
  %15 = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 15
  store i32 %5, ptr %15, align 8
  %16 = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 16
  store i32 %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 17
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 18
  store i32 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ipu_plane_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 326, i32 noundef 9, ptr noundef null) #6
  br label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 128) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %0, ptr noundef nonnull %8) #6
  br label %11

11:                                               ; preds = %10, %6, %5
  %12 = phi ptr [ null, %5 ], [ %8, %10 ], [ null, %6 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_plane_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %1) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @ipu_plane_format_mod_supported(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = tail call zeroext i1 @ipu_prg_format_supported(ptr noundef %7, i32 noundef %1, i64 noundef %2) #6
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i1 [ %8, %5 ], [ true, %3 ]
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipu_plane_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 16
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq ptr %15, null
  br i1 %21, label %255, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !9

26:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 390, i32 noundef 9, ptr noundef null) #6
  br label %255

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_crtc, ptr %24, i32 0, i32 8
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr %struct.__drm_crtcs_state, ptr %29, i32 %31, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !9

35:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 396, i32 noundef 9, ptr noundef null) #6
  br label %255

36:                                               ; preds = %27
  %37 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %8, ptr noundef nonnull %33, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext %20, i1 noundef zeroext true) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %255

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.drm_crtc_state, ptr %33, i32 0, i32 1
  %41 = load i8, ptr %40, align 4, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %255, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %18, align 8
  switch i32 %44, label %52 [
    i32 1, label %45
    i32 0, label %53
  ]

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21
  %47 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr %46, align 4
  %50 = sub i32 %48, %49
  %51 = icmp slt i32 %50, 13
  br i1 %51, label %255, label %53

52:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.8, i32 noundef %44) #8
  br label %255

53:                                               ; preds = %45, %43
  %54 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21
  %55 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = sub i32 %56, %58
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %255, label %61

61:                                               ; preds = %53
  %62 = icmp eq ptr %17, null
  br i1 %62, label %91, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = load i32, ptr %54, align 4
  %67 = sub i32 %65, %66
  %68 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 21
  %69 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 21, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %68, align 4
  %72 = sub i32 %70, %71
  %73 = icmp eq i32 %67, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 21, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 21, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = sub i32 %76, %78
  %80 = icmp eq i32 %59, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 4
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %85 = load ptr, ptr %84, align 8
  %86 = icmp eq ptr %83, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %81, %74, %63
  %88 = getelementptr inbounds %struct.drm_crtc_state, ptr %33, i32 0, i32 3
  %89 = load i8, ptr %88, align 2
  %90 = or i8 %89, 2
  store i8 %90, ptr %88, align 2
  br label %91

91:                                               ; preds = %87, %81, %61
  %92 = load ptr, ptr %14, align 4
  %93 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %92, i32 noundef 0) #6
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %100, !prof !9

99:                                               ; preds = %91
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

100:                                              ; preds = %91
  %101 = lshr i32 %96, 16
  %102 = lshr i32 %94, 16
  %103 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %97, i32 0, i32 1
  %104 = load i32, ptr %103, align 8
  %105 = getelementptr %struct.drm_framebuffer, ptr %92, i32 0, i32 7, i32 0
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, %104
  %108 = getelementptr %struct.drm_framebuffer, ptr %92, i32 0, i32 6, i32 0
  %109 = load i32, ptr %108, align 4
  %110 = mul i32 %109, %101
  %111 = add i32 %107, %110
  %112 = getelementptr inbounds %struct.drm_framebuffer, ptr %92, i32 0, i32 4
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.drm_format_info, ptr %113, i32 0, i32 3
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  %117 = mul nuw nsw i32 %102, %116
  %118 = add i32 %111, %117
  %119 = and i32 %118, 7
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %255

121:                                              ; preds = %100
  %122 = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 6
  %123 = load i32, ptr %122, align 8
  %124 = add i32 %123, -16385
  %125 = icmp ult i32 %124, -16384
  br i1 %125, label %255, label %126

126:                                              ; preds = %121
  br i1 %62, label %136, label %127

127:                                              ; preds = %126
  %128 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 6
  %129 = load i32, ptr %128, align 8
  %130 = icmp eq i32 %123, %129
  br i1 %130, label %136, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.drm_crtc_state, ptr %33, i32 0, i32 3
  %133 = load i8, ptr %132, align 2
  %134 = or i8 %133, 2
  store i8 %134, ptr %132, align 2
  %135 = load i32, ptr %122, align 8
  br label %136

136:                                              ; preds = %131, %127, %126
  %137 = phi i32 [ %135, %131 ], [ %123, %127 ], [ %123, %126 ]
  %138 = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 9
  %139 = load i32, ptr %138, align 8
  %140 = add i32 %139, 7
  %141 = and i32 %140, -8
  %142 = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 4
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %struct.drm_format_info, ptr %143, i32 0, i32 3
  %145 = load i8, ptr %144, align 2
  %146 = zext i8 %145 to i32
  %147 = mul i32 %141, %146
  %148 = getelementptr inbounds %struct.drm_framebuffer, ptr %15, i32 0, i32 7
  %149 = load i32, ptr %148, align 8
  %150 = add i32 %149, %137
  %151 = icmp ugt i32 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %136
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.9) #8
  br label %255

153:                                              ; preds = %136
  %154 = load i32, ptr %143, align 4
  switch i32 %154, label %254 [
    i32 842093913, label %155
    i32 842094169, label %155
    i32 909202777, label %155
    i32 909203033, label %155
    i32 875713881, label %155
    i32 875714137, label %155
    i32 842094158, label %180
    i32 909203022, label %180
    i32 943797586, label %236
    i32 943797570, label %236
    i32 943798354, label %236
    i32 943798338, label %236
    i32 943806546, label %236
    i32 943806530, label %236
  ]

155:                                              ; preds = %153, %153, %153, %153, %153, %153
  %156 = tail call fastcc i32 @drm_plane_state_to_vbo(ptr noundef %8)
  %157 = and i32 %156, 7
  %158 = icmp ne i32 %157, 0
  %159 = icmp ugt i32 %156, 16777208
  %160 = or i1 %159, %158
  br i1 %160, label %255, label %161

161:                                              ; preds = %155
  br i1 %62, label %174, label %162

162:                                              ; preds = %161
  %163 = load ptr, ptr %142, align 8
  %164 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %165 = load ptr, ptr %164, align 8
  %166 = icmp eq ptr %163, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = tail call fastcc i32 @drm_plane_state_to_vbo(ptr noundef %10)
  %169 = icmp eq i32 %156, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.drm_crtc_state, ptr %33, i32 0, i32 3
  %172 = load i8, ptr %171, align 2
  %173 = or i8 %172, 2
  store i8 %173, ptr %171, align 2
  br label %174

174:                                              ; preds = %170, %167, %162, %161
  %175 = getelementptr %struct.drm_framebuffer, ptr %15, i32 0, i32 6, i32 1
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr %struct.drm_framebuffer, ptr %15, i32 0, i32 6, i32 2
  %178 = load i32, ptr %177, align 8
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %255

180:                                              ; preds = %174, %153, %153
  %181 = tail call fastcc i32 @drm_plane_state_to_ubo(ptr noundef %8)
  %182 = and i32 %181, 7
  %183 = icmp ne i32 %182, 0
  %184 = icmp ugt i32 %181, 16777208
  %185 = or i1 %184, %183
  br i1 %185, label %255, label %186

186:                                              ; preds = %180
  br i1 %62, label %204, label %187

187:                                              ; preds = %186
  %188 = load ptr, ptr %142, align 8
  %189 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %190 = load ptr, ptr %189, align 8
  %191 = icmp eq ptr %188, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %187
  %193 = tail call fastcc i32 @drm_plane_state_to_ubo(ptr noundef %10)
  %194 = icmp eq i32 %181, %193
  br i1 %194, label %199, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.drm_crtc_state, ptr %33, i32 0, i32 3
  %197 = load i8, ptr %196, align 2
  %198 = or i8 %197, 2
  store i8 %198, ptr %196, align 2
  br label %199

199:                                              ; preds = %195, %192, %187
  %200 = getelementptr %struct.drm_framebuffer, ptr %15, i32 0, i32 6, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = add i32 %201, -16385
  %203 = icmp ult i32 %202, -16384
  br i1 %203, label %255, label %209

204:                                              ; preds = %186
  %205 = getelementptr %struct.drm_framebuffer, ptr %15, i32 0, i32 6, i32 1
  %206 = load i32, ptr %205, align 4
  %207 = add i32 %206, -16385
  %208 = icmp ult i32 %207, -16384
  br i1 %208, label %255, label %217

209:                                              ; preds = %199
  %210 = getelementptr %struct.drm_framebuffer, ptr %17, i32 0, i32 6, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, %201
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.drm_crtc_state, ptr %33, i32 0, i32 3
  %215 = load i8, ptr %214, align 2
  %216 = or i8 %215, 2
  store i8 %216, ptr %214, align 2
  br label %217

217:                                              ; preds = %213, %209, %204
  %218 = load i32, ptr %93, align 4
  %219 = ashr i32 %218, 16
  %220 = load ptr, ptr %142, align 8
  %221 = getelementptr inbounds %struct.drm_format_info, ptr %220, i32 0, i32 6
  %222 = load i8, ptr %221, align 2
  %223 = zext i8 %222 to i32
  %224 = add nsw i32 %223, -1
  %225 = and i32 %224, %219
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %255

227:                                              ; preds = %217
  %228 = load i32, ptr %95, align 4
  %229 = ashr i32 %228, 16
  %230 = getelementptr inbounds %struct.drm_format_info, ptr %220, i32 0, i32 7
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i32
  %233 = add nsw i32 %232, -1
  %234 = and i32 %233, %229
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %254, label %255

236:                                              ; preds = %153, %153, %153, %153, %153, %153
  %237 = tail call fastcc i32 @drm_plane_state_to_eba(ptr noundef %8, i32 noundef 1)
  %238 = and i32 %237, 7
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %255

240:                                              ; preds = %236
  %241 = getelementptr %struct.drm_framebuffer, ptr %15, i32 0, i32 6, i32 1
  %242 = load i32, ptr %241, align 4
  %243 = add i32 %242, -16385
  %244 = icmp ult i32 %243, -16384
  br i1 %244, label %255, label %245

245:                                              ; preds = %240
  br i1 %62, label %254, label %246

246:                                              ; preds = %245
  %247 = getelementptr %struct.drm_framebuffer, ptr %17, i32 0, i32 6, i32 1
  %248 = load i32, ptr %247, align 4
  %249 = icmp eq i32 %248, %242
  br i1 %249, label %254, label %250

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.drm_crtc_state, ptr %33, i32 0, i32 3
  %252 = load i8, ptr %251, align 2
  %253 = or i8 %252, 2
  store i8 %253, ptr %251, align 2
  br label %254

254:                                              ; preds = %250, %246, %245, %227, %153
  br label %255

255:                                              ; preds = %254, %240, %236, %227, %217, %204, %199, %180, %174, %155, %152, %121, %100, %53, %52, %45, %39, %36, %35, %26, %2
  %256 = phi i32 [ -22, %26 ], [ -22, %35 ], [ -22, %52 ], [ -22, %152 ], [ 0, %254 ], [ 0, %2 ], [ %37, %36 ], [ 0, %39 ], [ -22, %45 ], [ -22, %53 ], [ -22, %100 ], [ -22, %121 ], [ -22, %155 ], [ -22, %174 ], [ -22, %180 ], [ -22, %199 ], [ -22, %227 ], [ -22, %217 ], [ -22, %236 ], [ -22, %240 ], [ -22, %204 ]
  ret i32 %256
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_plane_atomic_update(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.__drm_planes_state, ptr %5, i32 %7, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.__drm_planes_state, ptr %5, i32 %7, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 22
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !11
  %19 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 8
  %25 = load i32, ptr %18, align 4
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 21, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = trunc i32 %28 to i16
  %30 = tail call i32 @ipu_dp_set_window_pos(ptr noundef %24, i16 noundef zeroext %26, i16 noundef zeroext %29) #6
  %31 = load i32, ptr %19, align 8
  br label %32

32:                                               ; preds = %22, %2
  %33 = phi i32 [ %31, %22 ], [ %20, %2 ]
  switch i32 %33, label %62 [
    i32 0, label %34
    i32 1, label %49
  ]

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 16
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 1
  %38 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 5
  %39 = load ptr, ptr %38, align 8
  br i1 %37, label %40, label %47

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.drm_format_info, ptr %42, i32 0, i32 8
  %44 = load i8, ptr %43, align 4, !range !8
  %45 = icmp eq i8 %44, 0
  %46 = tail call i32 @ipu_dp_set_global_alpha(ptr noundef %39, i1 noundef zeroext %45, i8 noundef zeroext -1, i1 noundef zeroext true) #6
  br label %62

47:                                               ; preds = %34
  %48 = tail call i32 @ipu_dp_set_global_alpha(ptr noundef %39, i1 noundef zeroext true, i8 noundef zeroext 0, i1 noundef zeroext true) #6
  br label %62

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 16
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 5
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.drm_format_info, ptr %57, i32 0, i32 8
  %59 = load i8, ptr %58, align 4, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = tail call i32 @ipu_dp_set_global_alpha(ptr noundef %55, i1 noundef zeroext %60, i8 noundef zeroext -1, i1 noundef zeroext false) #6
  br label %62

62:                                               ; preds = %53, %49, %47, %40, %32
  %63 = load ptr, ptr %16, align 4
  %64 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 20
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 20, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %63, i32 noundef 0) #6
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71, !prof !9

70:                                               ; preds = %62
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

71:                                               ; preds = %62
  %72 = ashr i32 %67, 16
  %73 = ashr i32 %65, 16
  %74 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %68, i32 0, i32 1
  %75 = load i32, ptr %74, align 8
  %76 = getelementptr %struct.drm_framebuffer, ptr %63, i32 0, i32 7, i32 0
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, %75
  %79 = getelementptr %struct.drm_framebuffer, ptr %63, i32 0, i32 6, i32 0
  %80 = load i32, ptr %79, align 4
  %81 = mul i32 %80, %72
  %82 = add i32 %78, %81
  %83 = getelementptr inbounds %struct.drm_framebuffer, ptr %63, i32 0, i32 4
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.drm_format_info, ptr %84, i32 0, i32 3
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = mul nsw i32 %73, %87
  %89 = add i32 %82, %88
  store i32 %89, ptr %3, align 4
  %90 = getelementptr inbounds %struct.ipu_plane_state, ptr %11, i32 0, i32 1
  %91 = load i8, ptr %90, align 4, !range !8
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %125, label %93

93:                                               ; preds = %71
  %94 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 6
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, -23
  %97 = icmp ult i32 %96, 6
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = getelementptr inbounds [6 x i32], ptr @switch.table.ipu_plane_atomic_update, i32 0, i32 %96
  %100 = load i32, ptr %99, align 4
  br label %101

101:                                              ; preds = %98, %93
  %102 = phi i32 [ %100, %98 ], [ 0, %93 ]
  %103 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 20, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = load i32, ptr %64, align 4
  %108 = sub i32 %106, %107
  %109 = ashr i32 %108, 16
  %110 = add nsw i32 %109, 7
  %111 = and i32 %110, -8
  %112 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 20, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = load i32, ptr %66, align 4
  %115 = sub i32 %113, %114
  %116 = ashr i32 %115, 16
  %117 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 6
  %118 = load i32, ptr %117, align 8
  %119 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %120 = load ptr, ptr %119, align 8
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 8
  %123 = load i64, ptr %122, align 8
  %124 = call i32 @ipu_prg_channel_configure(ptr noundef %104, i32 noundef %102, i32 noundef %111, i32 noundef %116, i32 noundef %118, i32 noundef %121, i64 noundef %123, ptr noundef nonnull %3) #6
  br label %125

125:                                              ; preds = %101, %71
  %126 = phi i32 [ %102, %101 ], [ 0, %71 ]
  %127 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %132 = load ptr, ptr %131, align 8
  %133 = load i32, ptr %132, align 4
  br label %154

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.drm_framebuffer, ptr %128, i32 0, i32 4
  %136 = load ptr, ptr %135, align 8
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %139 = load ptr, ptr %138, align 8
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %137, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 17
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 17
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 18
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 18
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %168, label %154

154:                                              ; preds = %148, %142, %134, %130
  %155 = phi i32 [ %133, %130 ], [ %137, %148 ], [ %137, %142 ], [ %140, %134 ]
  %156 = call i32 @ipu_drm_fourcc_to_colorspace(i32 noundef %155) #6
  %157 = load i32, ptr %19, align 8
  switch i32 %157, label %168 [
    i32 0, label %159
    i32 1, label %158
  ]

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %158, %154
  %160 = phi i32 [ 2, %158 ], [ %157, %154 ]
  %161 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 5
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 17
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 18
  %166 = load i32, ptr %165, align 4
  %167 = call i32 @ipu_dp_setup_channel(ptr noundef %162, i32 noundef %164, i32 noundef %166, i32 noundef %156, i32 noundef %160) #6
  br label %168

168:                                              ; preds = %159, %154, %148
  %169 = load ptr, ptr %127, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %203, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.drm_crtc_state, ptr %15, i32 0, i32 3
  %173 = load i8, ptr %172, align 2
  %174 = and i8 %173, 14
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %203

176:                                              ; preds = %171
  %177 = load i8, ptr %90, align 4, !range !8
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %583

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 2
  %181 = load ptr, ptr %180, align 4
  %182 = call i32 @ipu_idmac_get_current_buffer(ptr noundef %181) #6
  %183 = load ptr, ptr %180, align 4
  %184 = icmp eq i32 %182, 0
  %185 = zext i1 %184 to i32
  %186 = load i32, ptr %3, align 4
  call void @ipu_cpmem_set_buffer(ptr noundef %183, i32 noundef %185, i32 noundef %186) #6
  %187 = load ptr, ptr %180, align 4
  call void @ipu_idmac_select_buffer(ptr noundef %187, i32 noundef %185) #6
  %188 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.drm_plane_state, ptr %189, i32 0, i32 2
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.drm_framebuffer, ptr %191, i32 0, i32 4
  %193 = load ptr, ptr %192, align 8
  %194 = load i32, ptr %193, align 4
  switch i32 %194, label %583 [
    i32 943797586, label %195
    i32 943797570, label %195
    i32 943798354, label %195
    i32 943798338, label %195
    i32 943806546, label %195
    i32 943806530, label %195
  ]

195:                                              ; preds = %179, %179, %179, %179, %179, %179
  %196 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 3
  %197 = load ptr, ptr %196, align 8
  %198 = call i32 @ipu_idmac_get_current_buffer(ptr noundef %197) #6
  %199 = load ptr, ptr %196, align 8
  %200 = icmp eq i32 %198, 0
  %201 = zext i1 %200 to i32
  call void @ipu_cpmem_set_buffer(ptr noundef %199, i32 noundef %201, i32 noundef 0) #6
  %202 = load ptr, ptr %196, align 8
  call void @ipu_idmac_select_buffer(ptr noundef %202, i32 noundef %201) #6
  br label %583

203:                                              ; preds = %171, %168
  %204 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %205 = load ptr, ptr %204, align 8
  %206 = load i32, ptr %205, align 4
  %207 = call i32 @ipu_drm_fourcc_to_colorspace(i32 noundef %206) #6
  %208 = load i32, ptr %19, align 8
  switch i32 %208, label %215 [
    i32 0, label %210
    i32 1, label %209
  ]

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209, %203
  %211 = phi i32 [ 2, %209 ], [ %208, %203 ]
  %212 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 5
  %213 = load ptr, ptr %212, align 8
  %214 = call i32 @ipu_dp_setup_channel(ptr noundef %213, i32 noundef 0, i32 noundef 0, i32 noundef %207, i32 noundef %211) #6
  br label %215

215:                                              ; preds = %210, %203
  %216 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 4
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 21, i32 2
  %219 = load i32, ptr %218, align 4
  %220 = load i32, ptr %18, align 4
  %221 = add i32 %219, 7
  %222 = sub i32 %221, %220
  %223 = and i32 %222, -8
  call void @ipu_dmfc_config_wait4eot(ptr noundef %217, i32 noundef %223) #6
  %224 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 20, i32 2
  %225 = load i32, ptr %224, align 4
  %226 = load i32, ptr %64, align 4
  %227 = sub i32 %225, %226
  %228 = ashr i32 %227, 16
  %229 = add nsw i32 %228, 7
  %230 = and i32 %229, -8
  %231 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 20, i32 3
  %232 = load i32, ptr %231, align 4
  %233 = load i32, ptr %66, align 4
  %234 = sub i32 %232, %233
  %235 = ashr i32 %234, 16
  %236 = load ptr, ptr %204, align 8
  %237 = load i32, ptr %236, align 4
  %238 = call ptr @drm_format_info(i32 noundef %237) #6
  %239 = getelementptr inbounds %struct.drm_format_info, ptr %238, i32 0, i32 3
  %240 = load i8, ptr %239, align 2
  %241 = zext i8 %240 to i32
  %242 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 6
  %243 = load i32, ptr %242, align 8
  %244 = mul nsw i32 %230, %241
  %245 = udiv i8 64, %240
  %246 = zext i8 %245 to i32
  %247 = add nsw i32 %244, -1
  %248 = icmp ugt i8 %240, 64
  br i1 %248, label %259, label %249

249:                                              ; preds = %256, %215
  %250 = phi i32 [ %257, %256 ], [ %246, %215 ]
  %251 = mul i32 %250, %241
  %252 = add nsw i32 %251, -1
  %253 = or i32 %252, %247
  %254 = add i32 %253, 1
  %255 = icmp ugt i32 %254, %243
  br i1 %255, label %256, label %259

256:                                              ; preds = %249
  %257 = add nsw i32 %250, -1
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %249

259:                                              ; preds = %256, %249, %215
  %260 = phi i32 [ %246, %215 ], [ 0, %256 ], [ %250, %249 ]
  %261 = mul i32 %260, %241
  %262 = shl i32 %261, 3
  %263 = add i32 %262, -1
  %264 = or i32 %263, %247
  %265 = add i32 %264, 1
  %266 = icmp ugt i32 %265, %243
  br i1 %266, label %267, label %280

267:                                              ; preds = %259
  %268 = shl i32 %261, 2
  %269 = add i32 %268, -1
  %270 = or i32 %269, %247
  %271 = add i32 %270, 1
  %272 = icmp ugt i32 %271, %243
  br i1 %272, label %273, label %280

273:                                              ; preds = %267
  %274 = shl i32 %261, 1
  %275 = add i32 %274, -1
  %276 = or i32 %275, %247
  %277 = add i32 %276, 1
  %278 = icmp ugt i32 %277, %243
  %279 = select i1 %278, i8 1, i8 2
  br label %280

280:                                              ; preds = %273, %267, %259
  %281 = phi i8 [ 8, %259 ], [ 4, %267 ], [ %279, %273 ]
  %282 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 2
  %283 = load ptr, ptr %282, align 4
  call void @ipu_cpmem_zero(ptr noundef %283) #6
  %284 = load ptr, ptr %282, align 4
  call void @ipu_cpmem_set_resolution(ptr noundef %284, i32 noundef %230, i32 noundef %235) #6
  %285 = load ptr, ptr %282, align 4
  %286 = load ptr, ptr %204, align 8
  %287 = load i32, ptr %286, align 4
  %288 = call i32 @ipu_cpmem_set_fmt(ptr noundef %285, i32 noundef %287) #6
  %289 = load ptr, ptr %282, align 4
  %290 = and i32 %260, 255
  call void @ipu_cpmem_set_burstsize(ptr noundef %289, i32 noundef %290) #6
  %291 = load ptr, ptr %282, align 4
  call void @ipu_cpmem_set_high_priority(ptr noundef %291) #6
  %292 = load ptr, ptr %282, align 4
  call void @ipu_idmac_enable_watermark(ptr noundef %292, i1 noundef zeroext true) #6
  %293 = load ptr, ptr %282, align 4
  call void @ipu_idmac_set_double_buffer(ptr noundef %293, i1 noundef zeroext true) #6
  %294 = load ptr, ptr %282, align 4
  %295 = load i32, ptr %242, align 8
  call void @ipu_cpmem_set_stride(ptr noundef %294, i32 noundef %295) #6
  %296 = load ptr, ptr %282, align 4
  call void @ipu_cpmem_set_axi_id(ptr noundef %296, i32 noundef %126) #6
  %297 = load ptr, ptr %204, align 8
  %298 = load i32, ptr %297, align 4
  switch i32 %298, label %546 [
    i32 842093913, label %299
    i32 842094169, label %299
    i32 909202777, label %299
    i32 909203033, label %299
    i32 875713881, label %299
    i32 875714137, label %299
    i32 842094158, label %431
    i32 909203022, label %431
    i32 943797586, label %496
    i32 943797570, label %496
    i32 943798354, label %496
    i32 943798338, label %496
    i32 943806546, label %496
    i32 943806530, label %496
  ]

299:                                              ; preds = %280, %280, %280, %280, %280, %280
  %300 = load ptr, ptr %16, align 4
  %301 = load i32, ptr %64, align 4
  %302 = load i32, ptr %66, align 4
  %303 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %300, i32 noundef 0) #6
  %304 = icmp eq ptr %303, null
  br i1 %304, label %305, label %306, !prof !9

305:                                              ; preds = %299
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

306:                                              ; preds = %299
  %307 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %303, i32 0, i32 1
  %308 = load i32, ptr %307, align 8
  %309 = getelementptr %struct.drm_framebuffer, ptr %300, i32 0, i32 7, i32 0
  %310 = load i32, ptr %309, align 4
  %311 = getelementptr %struct.drm_framebuffer, ptr %300, i32 0, i32 6, i32 0
  %312 = load i32, ptr %311, align 4
  %313 = getelementptr inbounds %struct.drm_framebuffer, ptr %300, i32 0, i32 4
  %314 = load ptr, ptr %313, align 8
  %315 = getelementptr inbounds %struct.drm_format_info, ptr %314, i32 0, i32 3
  %316 = load i8, ptr %315, align 1
  %317 = load i32, ptr %64, align 4
  %318 = load i32, ptr %66, align 4
  %319 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %300, i32 noundef 1) #6
  %320 = icmp eq ptr %319, null
  br i1 %320, label %321, label %322, !prof !9

321:                                              ; preds = %306
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

322:                                              ; preds = %306
  %323 = ashr i32 %302, 16
  %324 = ashr i32 %301, 16
  %325 = zext i8 %316 to i32
  %326 = lshr i32 %318, 16
  %327 = lshr i32 %317, 16
  %328 = load ptr, ptr %313, align 8
  %329 = getelementptr inbounds %struct.drm_format_info, ptr %328, i32 0, i32 6
  %330 = load i8, ptr %329, align 2
  %331 = trunc i32 %327 to i16
  %332 = zext i8 %330 to i16
  %333 = sdiv i16 %331, %332
  %334 = sext i16 %333 to i32
  %335 = getelementptr inbounds %struct.drm_format_info, ptr %328, i32 0, i32 7
  %336 = load i8, ptr %335, align 1
  %337 = trunc i32 %326 to i16
  %338 = zext i8 %336 to i16
  %339 = sdiv i16 %337, %338
  %340 = sext i16 %339 to i32
  %341 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %319, i32 0, i32 1
  %342 = load i32, ptr %341, align 8
  %343 = getelementptr %struct.drm_framebuffer, ptr %300, i32 0, i32 7, i32 1
  %344 = load i32, ptr %343, align 4
  %345 = getelementptr %struct.drm_framebuffer, ptr %300, i32 0, i32 6, i32 1
  %346 = load i32, ptr %345, align 4
  %347 = mul i32 %346, %340
  %348 = getelementptr %struct.drm_format_info, ptr %328, i32 0, i32 3, i32 0, i32 1
  %349 = load i8, ptr %348, align 1
  %350 = zext i8 %349 to i32
  %351 = mul nsw i32 %350, %334
  %352 = mul i32 %312, %323
  %353 = mul nsw i32 %324, %325
  %354 = add i32 %353, %352
  %355 = add i32 %310, %308
  %356 = add i32 %355, %354
  %357 = sub i32 %342, %356
  %358 = add i32 %357, %344
  %359 = add i32 %358, %347
  %360 = add i32 %359, %351
  %361 = load ptr, ptr %16, align 4
  %362 = load i32, ptr %64, align 4
  %363 = load i32, ptr %66, align 4
  %364 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %361, i32 noundef 0) #6
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %367, !prof !9

366:                                              ; preds = %322
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

367:                                              ; preds = %322
  %368 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %364, i32 0, i32 1
  %369 = load i32, ptr %368, align 8
  %370 = getelementptr %struct.drm_framebuffer, ptr %361, i32 0, i32 7, i32 0
  %371 = load i32, ptr %370, align 4
  %372 = getelementptr %struct.drm_framebuffer, ptr %361, i32 0, i32 6, i32 0
  %373 = load i32, ptr %372, align 4
  %374 = getelementptr inbounds %struct.drm_framebuffer, ptr %361, i32 0, i32 4
  %375 = load ptr, ptr %374, align 8
  %376 = getelementptr inbounds %struct.drm_format_info, ptr %375, i32 0, i32 3
  %377 = load i8, ptr %376, align 1
  %378 = load i32, ptr %64, align 4
  %379 = load i32, ptr %66, align 4
  %380 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %361, i32 noundef 2) #6
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %383, !prof !9

382:                                              ; preds = %367
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 167, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

383:                                              ; preds = %367
  %384 = ashr i32 %363, 16
  %385 = ashr i32 %362, 16
  %386 = zext i8 %377 to i32
  %387 = lshr i32 %379, 16
  %388 = lshr i32 %378, 16
  %389 = load ptr, ptr %374, align 8
  %390 = getelementptr inbounds %struct.drm_format_info, ptr %389, i32 0, i32 6
  %391 = load i8, ptr %390, align 2
  %392 = trunc i32 %388 to i16
  %393 = zext i8 %391 to i16
  %394 = sdiv i16 %392, %393
  %395 = sext i16 %394 to i32
  %396 = getelementptr inbounds %struct.drm_format_info, ptr %389, i32 0, i32 7
  %397 = load i8, ptr %396, align 1
  %398 = trunc i32 %387 to i16
  %399 = zext i8 %397 to i16
  %400 = sdiv i16 %398, %399
  %401 = sext i16 %400 to i32
  %402 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %380, i32 0, i32 1
  %403 = load i32, ptr %402, align 8
  %404 = getelementptr %struct.drm_framebuffer, ptr %361, i32 0, i32 7, i32 2
  %405 = load i32, ptr %404, align 8
  %406 = getelementptr %struct.drm_framebuffer, ptr %361, i32 0, i32 6, i32 2
  %407 = load i32, ptr %406, align 8
  %408 = mul i32 %407, %401
  %409 = getelementptr %struct.drm_format_info, ptr %389, i32 0, i32 3, i32 0, i32 2
  %410 = load i8, ptr %409, align 2
  %411 = zext i8 %410 to i32
  %412 = mul nsw i32 %411, %395
  %413 = mul i32 %373, %384
  %414 = mul nsw i32 %385, %386
  %415 = add i32 %414, %413
  %416 = add i32 %371, %369
  %417 = add i32 %416, %415
  %418 = sub i32 %403, %417
  %419 = add i32 %418, %405
  %420 = add i32 %419, %408
  %421 = add i32 %420, %412
  %422 = load ptr, ptr %204, align 8
  %423 = load i32, ptr %422, align 4
  switch i32 %423, label %425 [
    i32 842094169, label %424
    i32 909203033, label %424
    i32 875714137, label %424
  ]

424:                                              ; preds = %383, %383, %383
  br label %425

425:                                              ; preds = %424, %383
  %426 = phi i32 [ %421, %424 ], [ %360, %383 ]
  %427 = phi i32 [ %360, %424 ], [ %421, %383 ]
  %428 = load ptr, ptr %282, align 4
  %429 = getelementptr %struct.drm_framebuffer, ptr %17, i32 0, i32 6, i32 1
  %430 = load i32, ptr %429, align 4
  call void @ipu_cpmem_set_yuv_planar_full(ptr noundef %428, i32 noundef %430, i32 noundef %426, i32 noundef %427) #6
  br label %546

431:                                              ; preds = %280, %280
  %432 = load ptr, ptr %16, align 4
  %433 = load i32, ptr %64, align 4
  %434 = load i32, ptr %66, align 4
  %435 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %432, i32 noundef 0) #6
  %436 = icmp eq ptr %435, null
  br i1 %436, label %437, label %438, !prof !9

437:                                              ; preds = %431
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

438:                                              ; preds = %431
  %439 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %435, i32 0, i32 1
  %440 = load i32, ptr %439, align 8
  %441 = getelementptr %struct.drm_framebuffer, ptr %432, i32 0, i32 7, i32 0
  %442 = load i32, ptr %441, align 4
  %443 = getelementptr %struct.drm_framebuffer, ptr %432, i32 0, i32 6, i32 0
  %444 = load i32, ptr %443, align 4
  %445 = getelementptr inbounds %struct.drm_framebuffer, ptr %432, i32 0, i32 4
  %446 = load ptr, ptr %445, align 8
  %447 = getelementptr inbounds %struct.drm_format_info, ptr %446, i32 0, i32 3
  %448 = load i8, ptr %447, align 1
  %449 = load i32, ptr %64, align 4
  %450 = load i32, ptr %66, align 4
  %451 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %432, i32 noundef 1) #6
  %452 = icmp eq ptr %451, null
  br i1 %452, label %453, label %454, !prof !9

453:                                              ; preds = %438
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

454:                                              ; preds = %438
  %455 = ashr i32 %434, 16
  %456 = ashr i32 %433, 16
  %457 = zext i8 %448 to i32
  %458 = lshr i32 %450, 16
  %459 = lshr i32 %449, 16
  %460 = load ptr, ptr %445, align 8
  %461 = getelementptr inbounds %struct.drm_format_info, ptr %460, i32 0, i32 6
  %462 = load i8, ptr %461, align 2
  %463 = trunc i32 %459 to i16
  %464 = zext i8 %462 to i16
  %465 = sdiv i16 %463, %464
  %466 = sext i16 %465 to i32
  %467 = getelementptr inbounds %struct.drm_format_info, ptr %460, i32 0, i32 7
  %468 = load i8, ptr %467, align 1
  %469 = trunc i32 %458 to i16
  %470 = zext i8 %468 to i16
  %471 = sdiv i16 %469, %470
  %472 = sext i16 %471 to i32
  %473 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %451, i32 0, i32 1
  %474 = load i32, ptr %473, align 8
  %475 = getelementptr %struct.drm_framebuffer, ptr %432, i32 0, i32 7, i32 1
  %476 = load i32, ptr %475, align 4
  %477 = getelementptr %struct.drm_framebuffer, ptr %432, i32 0, i32 6, i32 1
  %478 = load i32, ptr %477, align 4
  %479 = mul i32 %478, %472
  %480 = getelementptr %struct.drm_format_info, ptr %460, i32 0, i32 3, i32 0, i32 1
  %481 = load i8, ptr %480, align 1
  %482 = zext i8 %481 to i32
  %483 = mul nsw i32 %482, %466
  %484 = mul i32 %444, %455
  %485 = mul nsw i32 %456, %457
  %486 = add i32 %485, %484
  %487 = add i32 %442, %440
  %488 = add i32 %487, %486
  %489 = sub i32 %474, %488
  %490 = add i32 %489, %476
  %491 = add i32 %490, %479
  %492 = add i32 %491, %483
  %493 = load ptr, ptr %282, align 4
  %494 = getelementptr %struct.drm_framebuffer, ptr %17, i32 0, i32 6, i32 1
  %495 = load i32, ptr %494, align 4
  call void @ipu_cpmem_set_yuv_planar_full(ptr noundef %493, i32 noundef %495, i32 noundef %492, i32 noundef %492) #6
  br label %546

496:                                              ; preds = %280, %280, %280, %280, %280, %280
  %497 = load ptr, ptr %16, align 4
  %498 = load i32, ptr %64, align 4
  %499 = load i32, ptr %66, align 4
  %500 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %497, i32 noundef 1) #6
  %501 = icmp eq ptr %500, null
  br i1 %501, label %502, label %503, !prof !9

502:                                              ; preds = %496
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

503:                                              ; preds = %496
  %504 = ashr i32 %499, 16
  %505 = ashr i32 %498, 16
  %506 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %500, i32 0, i32 1
  %507 = load i32, ptr %506, align 8
  %508 = getelementptr %struct.drm_framebuffer, ptr %497, i32 0, i32 7, i32 1
  %509 = load i32, ptr %508, align 4
  %510 = add i32 %509, %507
  %511 = getelementptr %struct.drm_framebuffer, ptr %497, i32 0, i32 6, i32 1
  %512 = load i32, ptr %511, align 4
  %513 = mul i32 %512, %504
  %514 = add i32 %510, %513
  %515 = getelementptr inbounds %struct.drm_framebuffer, ptr %497, i32 0, i32 4
  %516 = load ptr, ptr %515, align 8
  %517 = getelementptr %struct.drm_format_info, ptr %516, i32 0, i32 3, i32 0, i32 1
  %518 = load i8, ptr %517, align 1
  %519 = zext i8 %518 to i32
  %520 = mul nsw i32 %505, %519
  %521 = add i32 %514, %520
  %522 = load ptr, ptr %282, align 4
  call void @ipu_cpmem_set_burstsize(ptr noundef %522, i32 noundef 16) #6
  %523 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 3
  %524 = load ptr, ptr %523, align 8
  call void @ipu_cpmem_zero(ptr noundef %524) #6
  %525 = load ptr, ptr %523, align 8
  %526 = load i32, ptr %224, align 4
  %527 = load i32, ptr %64, align 4
  %528 = sub i32 %526, %527
  %529 = ashr i32 %528, 16
  %530 = add nsw i32 %529, 7
  %531 = and i32 %530, -8
  %532 = load i32, ptr %231, align 4
  %533 = load i32, ptr %66, align 4
  %534 = sub i32 %532, %533
  %535 = ashr i32 %534, 16
  call void @ipu_cpmem_set_resolution(ptr noundef %525, i32 noundef %531, i32 noundef %535) #6
  %536 = load ptr, ptr %523, align 8
  %537 = call i32 @ipu_cpmem_set_format_passthrough(ptr noundef %536, i32 noundef 8) #6
  %538 = load ptr, ptr %523, align 8
  call void @ipu_cpmem_set_high_priority(ptr noundef %538) #6
  %539 = load ptr, ptr %523, align 8
  call void @ipu_idmac_set_double_buffer(ptr noundef %539, i1 noundef zeroext true) #6
  %540 = load ptr, ptr %523, align 8
  %541 = getelementptr %struct.drm_framebuffer, ptr %17, i32 0, i32 6, i32 1
  %542 = load i32, ptr %541, align 4
  call void @ipu_cpmem_set_stride(ptr noundef %540, i32 noundef %542) #6
  %543 = load ptr, ptr %523, align 8
  call void @ipu_cpmem_set_burstsize(ptr noundef %543, i32 noundef 16) #6
  %544 = load ptr, ptr %523, align 8
  call void @ipu_cpmem_set_buffer(ptr noundef %544, i32 noundef 0, i32 noundef %521) #6
  %545 = load ptr, ptr %523, align 8
  call void @ipu_cpmem_set_buffer(ptr noundef %545, i32 noundef 1, i32 noundef %521) #6
  br label %546

546:                                              ; preds = %503, %454, %425, %280
  %547 = phi i8 [ %281, %280 ], [ 0, %503 ], [ %281, %454 ], [ %281, %425 ]
  %548 = load ptr, ptr %282, align 4
  %549 = load i32, ptr %3, align 4
  call void @ipu_cpmem_set_buffer(ptr noundef %548, i32 noundef 0, i32 noundef %549) #6
  %550 = load ptr, ptr %282, align 4
  %551 = load i32, ptr %3, align 4
  call void @ipu_cpmem_set_buffer(ptr noundef %550, i32 noundef 1, i32 noundef %551) #6
  %552 = load ptr, ptr %282, align 4
  %553 = zext i8 %547 to i32
  %554 = call i32 @ipu_idmac_lock_enable(ptr noundef %552, i32 noundef %553) #6
  %555 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 5
  %556 = load ptr, ptr %555, align 8
  %557 = icmp eq ptr %556, null
  br i1 %557, label %562, label %558

558:                                              ; preds = %546
  %559 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 1
  %560 = load ptr, ptr %559, align 8
  %561 = call i32 @ipu_dp_enable(ptr noundef %560) #6
  br label %562

562:                                              ; preds = %558, %546
  %563 = load ptr, ptr %216, align 4
  %564 = call i32 @ipu_dmfc_enable_channel(ptr noundef %563) #6
  %565 = load ptr, ptr %282, align 4
  %566 = call i32 @ipu_idmac_enable_channel(ptr noundef %565) #6
  %567 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %568 = load ptr, ptr %567, align 4
  %569 = getelementptr inbounds %struct.drm_plane_state, ptr %568, i32 0, i32 2
  %570 = load ptr, ptr %569, align 4
  %571 = getelementptr inbounds %struct.drm_framebuffer, ptr %570, i32 0, i32 4
  %572 = load ptr, ptr %571, align 8
  %573 = load i32, ptr %572, align 4
  switch i32 %573, label %578 [
    i32 943797586, label %574
    i32 943797570, label %574
    i32 943798354, label %574
    i32 943798338, label %574
    i32 943806546, label %574
    i32 943806530, label %574
  ]

574:                                              ; preds = %562, %562, %562, %562, %562, %562
  %575 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 3
  %576 = load ptr, ptr %575, align 8
  %577 = call i32 @ipu_idmac_enable_channel(ptr noundef %576) #6
  br label %578

578:                                              ; preds = %574, %562
  %579 = load ptr, ptr %555, align 8
  %580 = icmp eq ptr %579, null
  br i1 %580, label %583, label %581

581:                                              ; preds = %578
  %582 = call i32 @ipu_dp_enable_channel(ptr noundef nonnull %579) #6
  br label %583

583:                                              ; preds = %581, %578, %195, %179, %176
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_plane_atomic_disable(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @ipu_dp_disable_channel(ptr noundef nonnull %4, i1 noundef zeroext true) #6
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.ipu_plane, ptr %0, i32 0, i32 8
  store i8 1, ptr %8, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_plane_state_to_eba(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 20, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %4, i32 noundef %1) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

12:                                               ; preds = %2
  %13 = ashr i32 %8, 16
  %14 = ashr i32 %6, 16
  %15 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %9, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr %struct.drm_framebuffer, ptr %4, i32 0, i32 7, i32 %1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = getelementptr %struct.drm_framebuffer, ptr %4, i32 0, i32 6, i32 %1
  %21 = load i32, ptr %20, align 4
  %22 = mul i32 %21, %13
  %23 = add i32 %19, %22
  %24 = getelementptr inbounds %struct.drm_framebuffer, ptr %4, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.drm_format_info, ptr %25, i32 0, i32 3
  %27 = getelementptr [4 x i8], ptr %26, i32 0, i32 %1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = mul nsw i32 %14, %29
  %31 = add i32 %23, %30
  ret i32 %31
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_plane_state_to_vbo(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 20, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %3, i32 noundef 0) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %8, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr %struct.drm_framebuffer, ptr %3, i32 0, i32 7, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.drm_framebuffer, ptr %3, i32 0, i32 6, i32 0
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.drm_format_info, ptr %19, i32 0, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = load i32, ptr %4, align 4
  %23 = load i32, ptr %6, align 4
  %24 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %3, i32 noundef 2) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !9

26:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 167, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

27:                                               ; preds = %11
  %28 = ashr i32 %7, 16
  %29 = ashr i32 %5, 16
  %30 = zext i8 %21 to i32
  %31 = lshr i32 %23, 16
  %32 = lshr i32 %22, 16
  %33 = load ptr, ptr %18, align 8
  %34 = getelementptr inbounds %struct.drm_format_info, ptr %33, i32 0, i32 6
  %35 = load i8, ptr %34, align 2
  %36 = trunc i32 %32 to i16
  %37 = zext i8 %35 to i16
  %38 = sdiv i16 %36, %37
  %39 = sext i16 %38 to i32
  %40 = getelementptr inbounds %struct.drm_format_info, ptr %33, i32 0, i32 7
  %41 = load i8, ptr %40, align 1
  %42 = trunc i32 %31 to i16
  %43 = zext i8 %41 to i16
  %44 = sdiv i16 %42, %43
  %45 = sext i16 %44 to i32
  %46 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %24, i32 0, i32 1
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr %struct.drm_framebuffer, ptr %3, i32 0, i32 7, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr %struct.drm_framebuffer, ptr %3, i32 0, i32 6, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = mul i32 %51, %45
  %53 = getelementptr %struct.drm_format_info, ptr %33, i32 0, i32 3, i32 0, i32 2
  %54 = load i8, ptr %53, align 2
  %55 = zext i8 %54 to i32
  %56 = mul nsw i32 %55, %39
  %57 = mul i32 %17, %28
  %58 = mul nsw i32 %29, %30
  %59 = add i32 %58, %57
  %60 = add i32 %15, %13
  %61 = add i32 %60, %59
  %62 = sub i32 %47, %61
  %63 = add i32 %62, %49
  %64 = add i32 %63, %52
  %65 = add i32 %64, %56
  ret i32 %65
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_plane_state_to_ubo(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_plane_state, ptr %0, i32 0, i32 20, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %3, i32 noundef 0) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %8, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr %struct.drm_framebuffer, ptr %3, i32 0, i32 7, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.drm_framebuffer, ptr %3, i32 0, i32 6, i32 0
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.drm_format_info, ptr %19, i32 0, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = load i32, ptr %4, align 4
  %23 = load i32, ptr %6, align 4
  %24 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %3, i32 noundef 1) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !9

26:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/imx/ipuv3-plane.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

27:                                               ; preds = %11
  %28 = ashr i32 %7, 16
  %29 = ashr i32 %5, 16
  %30 = zext i8 %21 to i32
  %31 = lshr i32 %23, 16
  %32 = lshr i32 %22, 16
  %33 = load ptr, ptr %18, align 8
  %34 = getelementptr inbounds %struct.drm_format_info, ptr %33, i32 0, i32 6
  %35 = load i8, ptr %34, align 2
  %36 = trunc i32 %32 to i16
  %37 = zext i8 %35 to i16
  %38 = sdiv i16 %36, %37
  %39 = sext i16 %38 to i32
  %40 = getelementptr inbounds %struct.drm_format_info, ptr %33, i32 0, i32 7
  %41 = load i8, ptr %40, align 1
  %42 = trunc i32 %31 to i16
  %43 = zext i8 %41 to i16
  %44 = sdiv i16 %42, %43
  %45 = sext i16 %44 to i32
  %46 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %24, i32 0, i32 1
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr %struct.drm_framebuffer, ptr %3, i32 0, i32 7, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.drm_framebuffer, ptr %3, i32 0, i32 6, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = mul i32 %51, %45
  %53 = getelementptr %struct.drm_format_info, ptr %33, i32 0, i32 3, i32 0, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = mul nsw i32 %55, %39
  %57 = mul i32 %17, %28
  %58 = mul nsw i32 %29, %30
  %59 = add i32 %58, %57
  %60 = add i32 %15, %13
  %61 = add i32 %60, %59
  %62 = sub i32 %47, %61
  %63 = add i32 %62, %49
  %64 = add i32 %63, %52
  %65 = add i32 %64, %56
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dp_set_window_pos(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dp_set_global_alpha(ptr noundef, i1 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_prg_channel_configure(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_drm_fourcc_to_colorspace(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dp_setup_channel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_get_current_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_buffer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_select_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dmfc_config_wait4eot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_resolution(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_cpmem_set_fmt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_burstsize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_high_priority(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_enable_watermark(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_set_double_buffer(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_stride(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_axi_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_set_yuv_planar_full(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_cpmem_set_format_passthrough(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_lock_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dp_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dmfc_enable_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_idmac_enable_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dp_enable_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_idmac_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_plane_put_resources(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ipu_plane, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @ipu_dp_put(ptr noundef nonnull %4) #6
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.ipu_plane, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @ipu_dmfc_put(ptr noundef nonnull %11) #6
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds %struct.ipu_plane, ptr %1, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %21 = or i1 %19, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  tail call void @ipu_idmac_put(ptr noundef nonnull %18) #6
  br label %23

23:                                               ; preds = %22, %16
  %24 = getelementptr inbounds %struct.ipu_plane, ptr %1, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %28 = or i1 %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call void @ipu_idmac_put(ptr noundef nonnull %25) #6
  br label %30

30:                                               ; preds = %29, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_dmfc_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_dp_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dmfc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_idmac_put(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2155465992, i64 2155466490, i64 2155466029, i64 2155466085, i64 2155466119, i64 2155466143, i64 2155466184, i64 2155466205, i64 2155466233, i64 2155466267}
!11 = !{!"auto-init"}
!12 = !{i64 2155467211, i64 2155467709, i64 2155467248, i64 2155467304, i64 2155467338, i64 2155467362, i64 2155467403, i64 2155467424, i64 2155467452, i64 2155467486}
!13 = !{i64 2155468430, i64 2155468928, i64 2155468467, i64 2155468523, i64 2155468557, i64 2155468581, i64 2155468622, i64 2155468643, i64 2155468671, i64 2155468705}
