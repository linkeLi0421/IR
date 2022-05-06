; ModuleID = '/llk/IR/drivers/gpu/drm/imx/ipuv3-crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/imx/ipuv3-crtc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ipu_client_platformdata = type { i32, i32, i32, i32, [2 x i32], ptr }
%struct.ipu_crtc = type { ptr, %struct.drm_crtc, [2 x ptr], ptr, ptr, i32, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.76 = type { i32, ptr }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipu_di_signal_cfg = type { i8, %struct.videomode, i32, i32, i32, i8, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.imx_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"imx-ipuv3-crtc\00", align 1
@ipu_drm_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @ipu_drm_probe, ptr @ipu_drm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@ipu_crtc_ops = internal constant %struct.component_ops { ptr @ipu_drm_bind, ptr null }, align 4
@ipu_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr @imx_drm_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @imx_drm_crtc_duplicate_state, ptr @imx_drm_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipu_enable_vblank, ptr @ipu_disable_vblank, ptr null }, align 4
@ipu_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr @ipu_crtc_mode_fixup, ptr null, ptr @ipu_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr @ipu_crtc_atomic_check, ptr @ipu_crtc_atomic_begin, ptr @ipu_crtc_atomic_flush, ptr @ipu_crtc_atomic_enable, ptr @ipu_crtc_atomic_disable, ptr null }, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"getting resources failed with %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"imx_drm\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"irq request failed with %d.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"drivers/gpu/drm/imx/ipuv3-crtc.c\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"8-pixel align hactive %d -> %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"ipu_put_resources\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipu_drm_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef 4294967295) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @ipu_crtc_ops) #7
  br label %11

11:                                               ; preds = %9, %6, %1
  %12 = phi i32 [ %10, %9 ], [ -22, %1 ], [ %7, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipu_drm_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @ipu_crtc_ops) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipu_drm_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ipu_client_platformdata, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 0
  %13 = select i1 %12, i32 -22, i32 0
  %14 = getelementptr inbounds %struct.ipu_client_platformdata, ptr %5, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @ipu_plane_init(ptr noundef %2, ptr noundef %9, i32 noundef %15, i32 noundef %13, i32 noundef 0, i32 noundef 1) #7
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = ptrtoint ptr %16 to i32
  br label %81

20:                                               ; preds = %3
  %21 = tail call ptr (ptr, i32, i32, ptr, ptr, ptr, ptr, ...) @__drmm_crtc_alloc_with_planes(ptr noundef %2, i32 noundef 784, i32 noundef 8, ptr noundef %16, ptr noundef null, ptr noundef nonnull @ipu_crtc_funcs, ptr noundef null) #7
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = ptrtoint ptr %21 to i32
  br label %81

25:                                               ; preds = %20
  store ptr %0, ptr %21, align 8
  %26 = getelementptr inbounds %struct.ipu_crtc, ptr %21, i32 0, i32 2
  store ptr %16, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ipu_client_platformdata, ptr %5, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ipu_crtc, ptr %21, i32 0, i32 1, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ipu_crtc, ptr %21, i32 0, i32 1, i32 19
  store ptr @ipu_helper_funcs, ptr %30, align 4
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 8
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.ipu_client_platformdata, ptr %5, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = tail call ptr @ipu_dc_get(ptr noundef %33, i32 noundef %35) #7
  %37 = getelementptr inbounds %struct.ipu_crtc, ptr %21, i32 0, i32 3
  store ptr %36, ptr %37, align 8
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %48, label %39

39:                                               ; preds = %25
  %40 = tail call i32 @__drmm_add_action_or_reset(ptr noundef %2, ptr noundef nonnull @ipu_put_resources, ptr noundef %21, ptr noundef nonnull @.str.6) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.ipu_client_platformdata, ptr %5, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = tail call ptr @ipu_di_get(ptr noundef %33, i32 noundef %44) #7
  %46 = getelementptr inbounds %struct.ipu_crtc, ptr %21, i32 0, i32 4
  store ptr %45, ptr %46, align 4
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %55

48:                                               ; preds = %42, %25
  %49 = phi ptr [ %45, %42 ], [ %36, %25 ]
  %50 = ptrtoint ptr %49 to i32
  %51 = icmp eq ptr %49, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48, %39
  %53 = phi i32 [ %50, %48 ], [ %40, %39 ]
  %54 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.1, i32 noundef %53) #8
  br label %81

55:                                               ; preds = %48, %42
  %56 = load i32, ptr %10, align 4
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = getelementptr %struct.ipu_client_platformdata, ptr %5, i32 0, i32 4, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ipu_crtc, ptr %21, i32 0, i32 1, i32 8
  %64 = load i32, ptr %63, align 8
  %65 = shl nuw i32 1, %64
  %66 = tail call ptr @ipu_plane_init(ptr noundef %2, ptr noundef %9, i32 noundef %60, i32 noundef 1, i32 noundef %65, i32 noundef 0) #7
  %67 = getelementptr %struct.ipu_crtc, ptr %21, i32 0, i32 2, i32 1
  %68 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  %69 = select i1 %68, ptr null, ptr %66
  store ptr %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %62, %58, %55
  %71 = load ptr, ptr %26, align 8
  %72 = tail call i32 @ipu_plane_irq(ptr noundef %71) #7
  %73 = getelementptr inbounds %struct.ipu_crtc, ptr %21, i32 0, i32 5
  store i32 %72, ptr %73, align 8
  %74 = load ptr, ptr %21, align 8
  %75 = tail call i32 @devm_request_threaded_irq(ptr noundef %74, i32 noundef %72, ptr noundef nonnull @ipu_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef %21) #7
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.3, i32 noundef %75) #8
  br label %81

79:                                               ; preds = %70
  %80 = load i32, ptr %73, align 8
  tail call void @disable_irq(i32 noundef %80) #7
  br label %81

81:                                               ; preds = %79, %77, %52, %23, %18
  %82 = phi i32 [ %19, %18 ], [ %24, %23 ], [ %53, %52 ], [ %75, %77 ], [ 0, %79 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_plane_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_crtc_alloc_with_planes(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_plane_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipu_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ipu_crtc, ptr %1, i32 0, i32 1
  %4 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.ipu_crtc, ptr %1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.ipu_crtc, ptr %1, i32 0, i32 2, i32 0
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call zeroext i1 @ipu_plane_atomic_update_pending(ptr noundef nonnull %10) #7
  br i1 %13, label %27, label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr %struct.ipu_crtc, ptr %1, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call zeroext i1 @ipu_plane_atomic_update_pending(ptr noundef nonnull %16) #7
  br i1 %19, label %27, label %20

20:                                               ; preds = %18, %14
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 28
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #7
  %24 = load ptr, ptr %5, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %3, ptr noundef %24) #7
  store ptr null, ptr %5, align 4
  tail call void @drm_crtc_vblank_put(ptr noundef %3) #7
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %23) #7
  br label %27

27:                                               ; preds = %20, %18, %12, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_drm_crtc_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %3) #7
  %6 = load ptr, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  tail call void @kfree(ptr noundef %8) #7
  store ptr null, ptr %2, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 300) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %0, ptr noundef nonnull %10) #7
  br label %13

13:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @imx_drm_crtc_duplicate_state(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 300) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %0, ptr noundef nonnull %3) #7
  %6 = load ptr, ptr %3, align 8
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 136, i32 noundef 9, ptr noundef null) #7
  br label %9

9:                                                ; preds = %8, %5
  store ptr %0, ptr %3, align 8
  br label %10

10:                                               ; preds = %9, %1
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_drm_crtc_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipu_enable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 768
  %3 = load i32, ptr %2, align 8
  tail call void @enable_irq(i32 noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_disable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 768
  %3 = load i32, ptr %2, align 8
  tail call void @disable_irq_nosync(i32 noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @ipu_crtc_mode_fixup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca %struct.videomode, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !9
  call void @drm_display_mode_to_videomode(ptr noundef %2, ptr noundef nonnull %4) #7
  %5 = getelementptr i8, ptr %0, i32 764
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @ipu_di_adjust_videomode(ptr noundef %6, ptr noundef nonnull %4) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.videomode, ptr %4, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.videomode, ptr %4, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %12, i1 true, i1 %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  call void @drm_display_mode_from_videomode(ptr noundef nonnull %4, ptr noundef %2) #7
  br label %18

18:                                               ; preds = %17, %9, %3
  %19 = phi i1 [ true, %17 ], [ false, %3 ], [ false, %9 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_crtc_mode_set_nofb(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.ipu_di_signal_cfg, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %2, i8 0, i32 60, i1 false)
  %8 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %35, label %11

11:                                               ; preds = %22, %1
  %12 = phi ptr [ %24, %22 ], [ %9, %1 ]
  %13 = phi i32 [ %23, %22 ], [ 0, %1 ]
  %14 = getelementptr i8, ptr %12, i32 48
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %12, i32 32
  %19 = load i32, ptr %18, align 4
  %20 = shl nuw i32 1, %19
  %21 = or i32 %20, %13
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32 [ %21, %17 ], [ %13, %11 ]
  %24 = load ptr, ptr %12, align 4
  %25 = icmp eq ptr %24, %8
  br i1 %25, label %26, label %11

26:                                               ; preds = %22
  %27 = and i32 %23, 10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = and i32 %23, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %26
  %33 = phi i32 [ 3, %26 ], [ 2, %29 ]
  %34 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %2, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  br label %35

35:                                               ; preds = %32, %29, %1
  %36 = getelementptr inbounds %struct.imx_crtc_state, ptr %6, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = trunc i32 %37 to i8
  %39 = shl i8 %38, 2
  %40 = and i8 %39, 4
  %41 = lshr i8 %38, 1
  %42 = and i8 %41, 2
  %43 = or i8 %40, %42
  %44 = xor i8 %43, 4
  store i8 %44, ptr %2, align 4
  %45 = getelementptr inbounds %struct.imx_crtc_state, ptr %6, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %2, i32 0, i32 2
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %2, i32 0, i32 3
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.imx_crtc_state, ptr %6, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %2, i32 0, i32 5
  store i8 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.imx_crtc_state, ptr %6, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %2, i32 0, i32 6
  store i8 %55, ptr %56, align 1
  %57 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %2, i32 0, i32 1
  call void @drm_display_mode_to_videomode(ptr noundef %7, ptr noundef %57) #7
  %58 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %2, i32 0, i32 1, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %35
  %63 = add i32 %59, 7
  %64 = and i32 %63, -8
  %65 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.5, i32 noundef %59, i32 noundef %64) #8
  %66 = load i32, ptr %58, align 4
  %67 = sub i32 %64, %66
  %68 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %2, i32 0, i32 1, i32 2
  store i32 %67, ptr %68, align 4
  store i32 %64, ptr %58, align 4
  br label %69

69:                                               ; preds = %62, %35
  %70 = phi i32 [ %64, %62 ], [ %59, %35 ]
  %71 = getelementptr i8, ptr %0, i32 760
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr i8, ptr %0, i32 764
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 11
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 16
  %78 = icmp ne i32 %77, 0
  %79 = load i32, ptr %45, align 4
  %80 = call i32 @ipu_dc_init_sync(ptr noundef %72, ptr noundef %74, i1 noundef zeroext %78, i32 noundef %79, i32 noundef %70) #7
  %81 = load ptr, ptr %73, align 4
  %82 = call i32 @ipu_di_init_sync_panel(ptr noundef %81, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ipu_crtc_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 1, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.drm_plane, ptr %14, i32 0, i32 17
  %16 = load i32, ptr %15, align 4
  %17 = shl nuw i32 1, %16
  %18 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %17, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12, %2
  br label %23

23:                                               ; preds = %22, %12
  %24 = phi i32 [ 0, %22 ], [ -22, %12 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_crtc_atomic_begin(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_crtc_atomic_flush(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !8

13:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 255, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %10
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.drm_crtc_state, ptr %15, i32 0, i32 18
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %0, i32 772
  store ptr %17, ptr %18, align 4
  store ptr null, ptr %16, align 4
  br label %19

19:                                               ; preds = %14, %2
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %22 = load i16, ptr %21, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_crtc_atomic_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @ipu_prg_enable(ptr noundef %8) #7
  tail call void @ipu_dc_enable(ptr noundef %8) #7
  %10 = getelementptr i8, ptr %0, i32 760
  %11 = load ptr, ptr %10, align 8
  tail call void @ipu_dc_enable_channel(ptr noundef %11) #7
  %12 = getelementptr i8, ptr %0, i32 764
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @ipu_di_enable(ptr noundef %13) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_crtc_atomic_disable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %0, i32 760
  %16 = load ptr, ptr %15, align 8
  tail call void @ipu_dc_disable_channel(ptr noundef %16) #7
  %17 = getelementptr i8, ptr %0, i32 764
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @ipu_di_disable(ptr noundef %18) #7
  %20 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 20
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_atomic_state, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 30, i32 18
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %62, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %0, i32 752
  %31 = getelementptr i8, ptr %0, i32 756
  %32 = icmp eq ptr %31, null
  br label %33

33:                                               ; preds = %51, %27
  %34 = phi ptr [ %25, %27 ], [ %54, %51 ]
  %35 = phi i1 [ false, %27 ], [ %53, %51 ]
  %36 = phi i1 [ false, %27 ], [ %52, %51 ]
  %37 = getelementptr i8, ptr %34, i32 -4
  %38 = getelementptr i8, ptr %34, i32 408
  %39 = load i32, ptr %38, align 4
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %29
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %33
  %44 = load ptr, ptr %30, align 8
  %45 = icmp eq ptr %37, %44
  %46 = select i1 %45, i1 true, i1 %36
  br i1 %32, label %51, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %31, align 4
  %49 = icmp eq ptr %37, %48
  %50 = select i1 %49, i1 true, i1 %35
  br label %51

51:                                               ; preds = %47, %43, %33
  %52 = phi i1 [ %46, %43 ], [ %36, %33 ], [ %46, %47 ]
  %53 = phi i1 [ %35, %43 ], [ %35, %33 ], [ %50, %47 ]
  %54 = load ptr, ptr %34, align 4
  %55 = icmp eq ptr %54, %24
  br i1 %55, label %56, label %33

56:                                               ; preds = %51
  br i1 %53, label %57, label %59

57:                                               ; preds = %56
  %58 = load ptr, ptr %31, align 4
  tail call void @ipu_plane_disable(ptr noundef %58, i1 noundef zeroext true) #7
  br i1 %52, label %60, label %62

59:                                               ; preds = %56
  br i1 %52, label %60, label %62

60:                                               ; preds = %59, %57
  %61 = load ptr, ptr %30, align 8
  tail call void @ipu_plane_disable(ptr noundef %61, i1 noundef zeroext true) #7
  br label %62

62:                                               ; preds = %60, %59, %57, %2
  tail call void @ipu_dc_disable(ptr noundef %14) #7
  tail call void @ipu_prg_disable(ptr noundef %14) #7
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #7
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr inbounds %struct.drm_device, ptr %63, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %64) #7
  %65 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.drm_crtc_state, ptr %66, i32 0, i32 18
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.drm_crtc_state, ptr %66, i32 0, i32 2
  %72 = load i8, ptr %71, align 1, !range !10
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef nonnull %68) #7
  %75 = load ptr, ptr %65, align 4
  %76 = getelementptr inbounds %struct.drm_crtc_state, ptr %75, i32 0, i32 18
  store ptr null, ptr %76, align 4
  br label %77

77:                                               ; preds = %74, %70, %62
  %78 = load ptr, ptr %0, align 8
  %79 = getelementptr inbounds %struct.drm_device, ptr %78, i32 0, i32 28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %80 = load i16, ptr %79, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %79, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_di_adjust_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dc_init_sync(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_di_init_sync_panel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_prg_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dc_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dc_enable_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_di_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dc_disable_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_di_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dc_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_prg_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_plane_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_dc_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_put_resources(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ipu_crtc, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @ipu_dc_put(ptr noundef nonnull %4) #7
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.ipu_crtc, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @ipu_di_put(ptr noundef nonnull %11) #7
  br label %16

16:                                               ; preds = %15, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_di_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dc_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_di_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipu_plane_atomic_update_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{i64 2148888996}
!12 = !{i64 2148884820}
!13 = !{i64 2148884895, i64 2148884922, i64 2148884969, i64 2148884991, i64 2148885019, i64 2148885039}
!14 = !{i64 346312}
!15 = !{i64 2148913140}
