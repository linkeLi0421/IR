; ModuleID = '/llk/IR/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_crtc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_dcu_drm_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.drm_crtc, %struct.drm_encoder, %struct.fsl_dcu_drm_connector, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.fsl_dcu_drm_connector = type { %struct.drm_connector, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.72 }
%union.anon.72 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.73 = type { i32, ptr }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@fsl_dcu_drm_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_dcu_drm_crtc_enable_vblank, ptr @fsl_dcu_drm_crtc_disable_vblank, ptr null }, align 4
@fsl_dcu_drm_crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_dcu_drm_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_dcu_drm_crtc_atomic_flush, ptr @fsl_dcu_drm_crtc_atomic_enable, ptr @fsl_dcu_drm_crtc_atomic_disable, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fsl_dcu_drm_crtc_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @fsl_dcu_drm_init_planes(ptr noundef %3) #4
  %4 = load ptr, ptr %2, align 8
  %5 = tail call ptr @fsl_dcu_drm_primary_create_plane(ptr noundef %4) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %2, align 8
  %10 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %9, ptr noundef %8, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull @fsl_dcu_drm_crtc_funcs, ptr noundef null) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.drm_plane, ptr %5, i32 0, i32 14
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.drm_plane_funcs, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef nonnull %5) #4
  br label %19

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %0, i32 0, i32 9, i32 19
  store ptr @fsl_dcu_drm_crtc_helper_funcs, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %12, %1
  %20 = phi i32 [ %10, %12 ], [ 0, %17 ], [ -12, %1 ]
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_dcu_drm_init_planes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_dcu_drm_primary_create_plane(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_dcu_drm_crtc_enable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 48, ptr noundef nonnull %2) #4
  %9 = load i32, ptr %2, align 4
  %10 = and i32 %9, -9
  store i32 %10, ptr %2, align 4
  %11 = load ptr, ptr %6, align 8
  %12 = call i32 @regmap_write(ptr noundef %11, i32 noundef 48, i32 noundef %10) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_crtc_disable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 48, ptr noundef nonnull %2) #4
  %9 = load i32, ptr %2, align 4
  %10 = or i32 %9, 8
  store i32 %10, ptr %2, align 4
  %11 = load ptr, ptr %6, align 8
  %12 = call i32 @regmap_write(ptr noundef %11, i32 noundef 48, i32 noundef %10) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_crtc_mode_set_nofb(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.videomode, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %5, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %8, align 4
  %12 = mul i32 %11, 1000
  %13 = tail call i32 @clk_set_rate(ptr noundef %10, i32 noundef %12) #4
  call void @drm_display_mode_to_videomode(ptr noundef %8, ptr noundef nonnull %2) #4
  %14 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %5, i32 0, i32 11, i32 0, i32 20, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = shl i32 %15, 4
  %17 = and i32 %16, 64
  %18 = getelementptr inbounds %struct.videomode, ptr %2, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = or i32 %17, %20
  %22 = lshr i32 %19, 1
  %23 = and i32 %22, 2
  %24 = or i32 %21, %23
  %25 = xor i32 %24, 64
  %26 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %5, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.videomode, ptr %2, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 22
  %31 = getelementptr inbounds %struct.videomode, ptr %2, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = shl i32 %32, 11
  %34 = or i32 %33, %30
  %35 = getelementptr inbounds %struct.videomode, ptr %2, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %34, %36
  %38 = call i32 @regmap_write(ptr noundef %27, i32 noundef 28, i32 noundef %37) #4
  %39 = load ptr, ptr %26, align 8
  %40 = getelementptr inbounds %struct.videomode, ptr %2, i32 0, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, 22
  %43 = getelementptr inbounds %struct.videomode, ptr %2, i32 0, i32 8
  %44 = load i32, ptr %43, align 4
  %45 = shl i32 %44, 11
  %46 = or i32 %45, %42
  %47 = getelementptr inbounds %struct.videomode, ptr %2, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %46, %48
  %50 = call i32 @regmap_write(ptr noundef %39, i32 noundef 32, i32 noundef %49) #4
  %51 = load ptr, ptr %26, align 8
  %52 = getelementptr inbounds %struct.videomode, ptr %2, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %53, 16
  %55 = getelementptr inbounds %struct.videomode, ptr %2, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 4
  %58 = or i32 %57, %54
  %59 = call i32 @regmap_write(ptr noundef %51, i32 noundef 24, i32 noundef %58) #4
  %60 = load ptr, ptr %26, align 8
  %61 = call i32 @regmap_write(ptr noundef %60, i32 noundef 36, i32 noundef %25) #4
  %62 = load ptr, ptr %26, align 8
  %63 = call i32 @regmap_write(ptr noundef %62, i32 noundef 20, i32 noundef 0) #4
  %64 = load ptr, ptr %26, align 8
  %65 = call i32 @regmap_write(ptr noundef %64, i32 noundef 16, i32 noundef 1064960) #4
  %66 = load ptr, ptr %26, align 8
  %67 = call i32 @regmap_write(ptr noundef %66, i32 noundef 40, i32 noundef 227338) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_crtc_atomic_flush(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 204, i32 noundef 1073741824) #4
  %13 = icmp eq ptr %9, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.drm_crtc_state, ptr %15, i32 0, i32 18
  store ptr null, ptr %16, align 4
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %18) #4
  %19 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %0, ptr noundef nonnull %9) #4
  br label %23

22:                                               ; preds = %14
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef nonnull %9) #4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %26 = load i16, ptr %25, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  br label %28

28:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_crtc_atomic_enable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = tail call i32 @clk_enable(ptr noundef %7) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #4
  br label %14

14:                                               ; preds = %13, %10, %2
  %15 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %5, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 16, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %18 = load ptr, ptr %15, align 8
  %19 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 204, i32 noundef 1073741824) #4
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsl_dcu_drm_crtc_atomic_disable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @drm_atomic_helper_disable_planes_on_crtc(ptr noundef %8, i1 noundef zeroext true) #4
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #4
  %12 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 16, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %15 = load ptr, ptr %12, align 8
  %16 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 204, i32 noundef 1073741824) #4
  %17 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %11, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #4
  tail call void @clk_unprepare(ptr noundef %18) #4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_disable_planes_on_crtc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"auto-init"}
!9 = !{i64 2148882642}
!10 = !{i64 2148878466}
!11 = !{i64 2148878541, i64 2148878568, i64 2148878615, i64 2148878637, i64 2148878665, i64 2148878685}
!12 = !{i64 339958}
!13 = !{i64 2148906786}
