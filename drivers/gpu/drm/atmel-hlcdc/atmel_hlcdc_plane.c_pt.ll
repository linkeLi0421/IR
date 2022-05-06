; ModuleID = '/llk/IR/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atmel_hlcdc_formats = type { i32, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
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
%struct.anon.73 = type { i32, ptr }
%struct.atmel_hlcdc_plane_state = type { %struct.drm_plane_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, [3 x ptr] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atmel_hlcdc_plane = type { %struct.drm_plane, %struct.atmel_hlcdc_layer }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atmel_hlcdc_layer = type { ptr, ptr }
%struct.atmel_hlcdc_layer_desc = type { ptr, i32, i32, i32, i32, i32, ptr, %struct.atmel_hlcdc_layer_cfg_layout, i32, i32 }
%struct.atmel_hlcdc_layer_cfg_layout = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.76, i32, i32, i32 }
%struct.anon.76 = type { i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.70, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.70 = type { [4 x i8] }
%struct.atmel_hlcdc_dc_desc = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, i32 }
%struct.atmel_hlcdc_dc = type { ptr, ptr, ptr, ptr, [6 x ptr], %struct.anon.77 }
%struct.anon.77 = type { i32, ptr }
%struct.atmel_hlcdc_dma_channel_dscr = type { i32, i32, i32, i32 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_color_lut = type { i16, i16, i16, i16 }
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

@rgb_formats = internal global [10 x i32] [i32 538982467, i32 842093144, i32 842093121, i32 842088786, i32 892424769, i32 909199186, i32 875710290, i32 875713112, i32 875713089, i32 875708754], align 4
@atmel_hlcdc_plane_rgb_formats = dso_local local_unnamed_addr global %struct.atmel_hlcdc_formats { i32 10, ptr @rgb_formats }, align 4
@rgb_and_yuv_formats = internal global [19 x i32] [i32 538982467, i32 842093144, i32 842093121, i32 842088786, i32 892424769, i32 909199186, i32 875710290, i32 875713112, i32 875713089, i32 875708754, i32 1448433985, i32 1448695129, i32 1498831189, i32 1431918169, i32 1498765654, i32 825382478, i32 825644622, i32 909202777, i32 842093913], align 4
@atmel_hlcdc_plane_rgb_and_yuv_formats = dso_local local_unnamed_addr global %struct.atmel_hlcdc_formats { i32 19, ptr @rgb_and_yuv_formats }, align 4
@.str = private unnamed_addr constant [17 x i8] c"atmel-hlcdc-dscr\00", align 1
@layer_plane_funcs = internal constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @atmel_hlcdc_plane_reset, ptr null, ptr @atmel_hlcdc_plane_atomic_duplicate_state, ptr @atmel_hlcdc_plane_atomic_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@atmel_hlcdc_layer_plane_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @atmel_hlcdc_plane_atomic_check, ptr @atmel_hlcdc_plane_atomic_update, ptr @atmel_hlcdc_plane_atomic_disable, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to allocate initial plane state\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c\00", align 1
@heo_downscaling_xcoef = internal unnamed_addr constant [16 x i32] [i32 288633617, i32 247, i32 372584460, i32 249, i32 456535048, i32 251, i32 523708420, i32 254, i32 607659008, i32 0, i32 674701310, i32 4, i32 741743611, i32 8, i32 808785657, i32 12], align 4
@heo_upscaling_xcoef = internal unnamed_addr constant [16 x i32] [i32 -146191881, i32 0, i32 -178310149, i32 254, i32 -177201410, i32 255, i32 -126087681, i32 0, i32 8388608, i32 0, i32 226293760, i32 255, i32 510719487, i32 254, i32 861926910, i32 251], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atmel_hlcdc_plane_prepare_ahb_routing(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %70, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  br label %13

13:                                               ; preds = %63, %10
  %14 = phi ptr [ %4, %10 ], [ %64, %63 ]
  %15 = phi ptr [ %8, %10 ], [ %65, %63 ]
  %16 = load i32, ptr %11, align 4
  %17 = getelementptr i8, ptr %15, i32 408
  %18 = load i32, ptr %17, align 4
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %63, label %22

22:                                               ; preds = %13
  %23 = getelementptr i8, ptr %15, i32 -4
  %24 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %14, ptr noundef %23) #6
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = ptrtoint ptr %24 to i32
  br label %70

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %24, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %24, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = mul i32 %32, %30
  %34 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %24, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %24, i32 0, i32 12
  %37 = load i32, ptr %36, align 4
  %38 = mul i32 %37, %35
  %39 = sub i32 %33, %38
  %40 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %24, i32 0, i32 18
  %41 = load i32, ptr %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %43, %28
  %44 = phi i32 [ %50, %43 ], [ 0, %28 ]
  %45 = phi i32 [ %49, %43 ], [ 0, %28 ]
  %46 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %24, i32 0, i32 14, i32 %44
  %47 = load i32, ptr %46, align 4
  %48 = mul i32 %47, %39
  %49 = add i32 %48, %45
  %50 = add nuw nsw i32 %44, 1
  %51 = icmp eq i32 %50, %41
  br i1 %51, label %52, label %43

52:                                               ; preds = %43, %28
  %53 = phi i32 [ 0, %28 ], [ %49, %43 ]
  %54 = load i32, ptr %2, align 8
  %55 = load i32, ptr %12, align 4
  %56 = icmp ugt i32 %54, %55
  %57 = call i32 @llvm.umin.i32(i32 %54, i32 %55)
  %58 = zext i1 %56 to i32
  %59 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %24, i32 0, i32 13
  store i32 %58, ptr %59, align 4
  %60 = getelementptr [2 x i32], ptr %2, i32 0, i32 %58
  %61 = add i32 %57, %53
  store i32 %61, ptr %60, align 4
  %62 = load ptr, ptr %3, align 4
  br label %63

63:                                               ; preds = %52, %13
  %64 = phi ptr [ %62, %52 ], [ %14, %13 ]
  %65 = load ptr, ptr %15, align 4
  %66 = getelementptr inbounds %struct.drm_atomic_state, ptr %64, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.drm_device, ptr %67, i32 0, i32 30, i32 18
  %69 = icmp eq ptr %65, %68
  br i1 %69, label %70, label %13

70:                                               ; preds = %63, %26, %1
  %71 = phi i32 [ %27, %26 ], [ 0, %1 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  ret i32 %71
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atmel_hlcdc_plane_prepare_disc_area(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %6, i32 0, i32 7, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %105, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %6, i32 0, i32 7, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %105, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 20
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %16, ptr noundef %4) #6
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = ptrtoint ptr %17 to i32
  br label %105

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr inbounds %struct.drm_atomic_state, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 30, i32 18
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %96, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 4
  br label %30

30:                                               ; preds = %85, %28
  %31 = phi ptr [ %22, %28 ], [ %91, %85 ]
  %32 = phi ptr [ %26, %28 ], [ %90, %85 ]
  %33 = phi i32 [ 0, %28 ], [ %89, %85 ]
  %34 = phi i32 [ 0, %28 ], [ %88, %85 ]
  %35 = phi i32 [ 0, %28 ], [ %87, %85 ]
  %36 = phi i32 [ 0, %28 ], [ %86, %85 ]
  %37 = getelementptr i8, ptr %32, i32 -4
  %38 = load i32, ptr %29, align 4
  %39 = getelementptr i8, ptr %32, i32 408
  %40 = load i32, ptr %39, align 4
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %38
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %85, label %44

44:                                               ; preds = %30
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr inbounds %struct.drm_crtc, ptr %45, i32 0, i32 6
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %37, %47
  br i1 %48, label %85, label %49

49:                                               ; preds = %44
  %50 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %31, ptr noundef %37) #6
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %83, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.drm_plane_state, ptr %50, i32 0, i32 22
  %54 = load i8, ptr %53, align 4, !range !8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %85, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.drm_plane_state, ptr %50, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %85, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.drm_framebuffer, ptr %58, i32 0, i32 4
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.drm_format_info, ptr %62, i32 0, i32 8
  %64 = load i8, ptr %63, align 4, !range !8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.drm_plane_state, ptr %50, i32 0, i32 12
  %68 = load i16, ptr %67, align 4
  %69 = icmp eq i16 %68, -1
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %50, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %50, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = mul i32 %74, %72
  %76 = mul i32 %35, %36
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %85, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %50, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %50, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  br label %85

83:                                               ; preds = %49
  %84 = ptrtoint ptr %50 to i32
  br label %105

85:                                               ; preds = %78, %70, %66, %60, %56, %52, %44, %30
  %86 = phi i32 [ %36, %30 ], [ %36, %70 ], [ %36, %52 ], [ %36, %56 ], [ %36, %60 ], [ %36, %66 ], [ %36, %44 ], [ %72, %78 ]
  %87 = phi i32 [ %35, %30 ], [ %35, %70 ], [ %35, %52 ], [ %35, %56 ], [ %35, %60 ], [ %35, %66 ], [ %35, %44 ], [ %74, %78 ]
  %88 = phi i32 [ %34, %30 ], [ %34, %70 ], [ %34, %52 ], [ %34, %56 ], [ %34, %60 ], [ %34, %66 ], [ %34, %44 ], [ %82, %78 ]
  %89 = phi i32 [ %33, %30 ], [ %33, %70 ], [ %33, %52 ], [ %33, %56 ], [ %33, %60 ], [ %33, %66 ], [ %33, %44 ], [ %80, %78 ]
  %90 = load ptr, ptr %32, align 4
  %91 = load ptr, ptr %15, align 4
  %92 = getelementptr inbounds %struct.drm_atomic_state, ptr %91, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.drm_device, ptr %93, i32 0, i32 30, i32 18
  %95 = icmp eq ptr %90, %94
  br i1 %95, label %96, label %30

96:                                               ; preds = %85, %21
  %97 = phi i32 [ 0, %21 ], [ %86, %85 ]
  %98 = phi i32 [ 0, %21 ], [ %87, %85 ]
  %99 = phi i32 [ 0, %21 ], [ %88, %85 ]
  %100 = phi i32 [ 0, %21 ], [ %89, %85 ]
  %101 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %17, i32 0, i32 9
  store i32 %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %17, i32 0, i32 10
  store i32 %99, ptr %102, align 4
  %103 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %17, i32 0, i32 11
  store i32 %98, ptr %103, align 4
  %104 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %17, i32 0, i32 12
  store i32 %97, ptr %104, align 4
  br label %105

105:                                              ; preds = %96, %83, %19, %10, %1
  %106 = phi i32 [ %20, %19 ], [ %84, %83 ], [ 0, %96 ], [ 0, %10 ], [ 0, %1 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @atmel_hlcdc_plane_irq(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !9
  %4 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 24
  %10 = call i32 @regmap_read(ptr noundef %5, i32 noundef %9, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atmel_hlcdc_create_planes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.atmel_hlcdc_dc_desc, ptr %4, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @dmam_pool_create(ptr noundef nonnull @.str, ptr noundef %10, i32 noundef 16, i32 noundef 8, i32 noundef 0) #6
  %12 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %3, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %113, label %14

14:                                               ; preds = %1
  %15 = icmp sgt i32 %8, 0
  br i1 %15, label %16, label %113

16:                                               ; preds = %110, %14
  %17 = phi i32 [ %111, %110 ], [ 0, %14 ]
  %18 = getelementptr %struct.atmel_hlcdc_layer_desc, ptr %6, i32 %17
  %19 = getelementptr %struct.atmel_hlcdc_layer_desc, ptr %6, i32 %17, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %23, label %110

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 4
  %25 = load ptr, ptr %9, align 4
  %26 = tail call noalias ptr @devm_kmalloc(ptr noundef %25, i32 noundef 464, i32 noundef 3520) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %113, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %26, i32 0, i32 1
  %30 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %24, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  store ptr %18, ptr %29, align 4
  %33 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %26, i32 0, i32 1, i32 1
  store ptr %32, ptr %33, align 4
  %34 = load i32, ptr %19, align 4
  %35 = icmp eq i32 %34, 3
  %36 = select i1 %35, i32 2, i32 0
  %37 = icmp eq i32 %34, 1
  %38 = select i1 %37, i32 1, i32 %36
  %39 = getelementptr %struct.atmel_hlcdc_layer_desc, ptr %6, i32 %17, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.atmel_hlcdc_formats, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %40, align 4
  %44 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %26, i32 noundef 0, ptr noundef nonnull @layer_plane_funcs, ptr noundef %42, i32 noundef %43, ptr noundef null, i32 noundef %38, ptr noundef null) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %113

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.drm_plane, ptr %26, i32 0, i32 18
  store ptr @atmel_hlcdc_layer_plane_helper_funcs, ptr %47, align 8
  %48 = load ptr, ptr %29, align 8
  %49 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %48, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, -2
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = tail call i32 @drm_plane_create_alpha_property(ptr noundef nonnull %26) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %113

56:                                               ; preds = %53, %46
  %57 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %48, i32 0, i32 7
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %48, i32 0, i32 7, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = tail call i32 @drm_plane_create_rotation_property(ptr noundef nonnull %26, i32 noundef 1, i32 noundef 15) #6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %113

67:                                               ; preds = %64, %60, %56
  %68 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %48, i32 0, i32 7, i32 13
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %106, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %29, align 4
  %73 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %72, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = shl i32 %69, 2
  %76 = add i32 %74, %75
  %77 = load ptr, ptr %33, align 4
  %78 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %72, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %76, %79
  %81 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %80, i32 noundef 1284505745) #6
  %82 = load i32, ptr %68, align 4
  %83 = load ptr, ptr %29, align 4
  %84 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %83, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = shl i32 %82, 2
  %87 = add i32 %86, 4
  %88 = add i32 %87, %85
  %89 = load ptr, ptr %33, align 4
  %90 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %83, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %88, %91
  %93 = tail call i32 @regmap_write(ptr noundef %89, i32 noundef %92, i32 noundef 2053066896) #6
  %94 = load i32, ptr %68, align 4
  %95 = load ptr, ptr %29, align 4
  %96 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %95, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = shl i32 %94, 2
  %99 = add i32 %98, 8
  %100 = add i32 %99, %97
  %101 = load ptr, ptr %33, align 4
  %102 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %95, i32 0, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %100, %103
  %105 = tail call i32 @regmap_write(ptr noundef %101, i32 noundef %104, i32 noundef 1074006160) #6
  br label %106

106:                                              ; preds = %71, %67
  %107 = getelementptr %struct.atmel_hlcdc_layer_desc, ptr %6, i32 %17, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr %struct.atmel_hlcdc_dc, ptr %24, i32 0, i32 4, i32 %108
  store ptr %29, ptr %109, align 4
  br label %110

110:                                              ; preds = %106, %16
  %111 = add nuw nsw i32 %17, 1
  %112 = icmp eq i32 %111, %8
  br i1 %112, label %113, label %16

113:                                              ; preds = %110, %64, %53, %28, %23, %14, %1
  %114 = phi i32 [ -12, %1 ], [ 0, %14 ], [ 0, %110 ], [ -12, %23 ], [ %44, %28 ], [ %65, %64 ], [ %54, %53 ]
  ret i32 %114
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_hlcdc_plane_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %10) #6
  br label %11

11:                                               ; preds = %9, %5
  tail call void @kfree(ptr noundef nonnull %3) #6
  store ptr null, ptr %2, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 240) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @atmel_hlcdc_plane_alloc_dscrs(ptr noundef %0, ptr noundef nonnull %14)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  tail call void @kfree(ptr noundef nonnull %14) #6
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.1) #8
  br label %24

23:                                               ; preds = %16
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %0, ptr noundef nonnull %14) #6
  br label %24

24:                                               ; preds = %23, %19, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @atmel_hlcdc_plane_atomic_duplicate_state(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef 240, i32 noundef 3264) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @atmel_hlcdc_plane_alloc_dscrs(ptr noundef %0, ptr noundef nonnull %4)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #6
  br label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 2
  tail call void @drm_mode_object_get(ptr noundef %15) #6
  br label %16

16:                                               ; preds = %14, %10, %9, %1
  %17 = phi ptr [ null, %9 ], [ null, %1 ], [ %4, %14 ], [ %4, %10 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_hlcdc_plane_atomic_destroy_state(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %1, i32 0, i32 19, i32 0
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  tail call void @dma_pool_free(ptr noundef %7, ptr noundef %9, i32 noundef %11) #6
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %1, i32 0, i32 19, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  tail call void @dma_pool_free(ptr noundef %12, ptr noundef %14, i32 noundef %16) #6
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %1, i32 0, i32 19, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  tail call void @dma_pool_free(ptr noundef %17, ptr noundef %19, i32 noundef %21) #6
  %22 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.drm_framebuffer, ptr %23, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %26) #6
  br label %27

27:                                               ; preds = %25, %2
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_hlcdc_plane_alloc_dscrs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.atmel_hlcdc_dc, ptr %6, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %8 = load ptr, ptr %7, align 4
  %9 = call ptr @dma_pool_alloc(ptr noundef %8, i32 noundef 3264, ptr noundef nonnull %3) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %50

12:                                               ; preds = %28, %19
  %13 = phi i32 [ 1, %28 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %1, i32 0, i32 19, i32 %13
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  call void @dma_pool_free(ptr noundef %14, ptr noundef %16, i32 noundef %18) #6
  br i1 %27, label %50, label %43

19:                                               ; preds = %2
  store i32 0, ptr %9, align 8
  %20 = load i32, ptr %3, align 4
  %21 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %9, i32 0, i32 2
  store i32 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %9, i32 0, i32 3
  store i32 %20, ptr %22, align 4
  %23 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %9, i32 0, i32 1
  store i32 1, ptr %23, align 4
  %24 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %1, i32 0, i32 19, i32 0
  store ptr %9, ptr %24, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %25 = load ptr, ptr %7, align 4
  %26 = call ptr @dma_pool_alloc(ptr noundef %25, i32 noundef 3264, ptr noundef nonnull %3) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %12, label %28

28:                                               ; preds = %19
  store i32 0, ptr %26, align 8
  %29 = load i32, ptr %3, align 4
  %30 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %26, i32 0, i32 2
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %26, i32 0, i32 3
  store i32 %29, ptr %31, align 4
  %32 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %26, i32 0, i32 1
  store i32 1, ptr %32, align 4
  %33 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %1, i32 0, i32 19, i32 1
  store ptr %26, ptr %33, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %34 = load ptr, ptr %7, align 4
  %35 = call ptr @dma_pool_alloc(ptr noundef %34, i32 noundef 3264, ptr noundef nonnull %3) #6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %12, label %37

37:                                               ; preds = %28
  store i32 0, ptr %35, align 8
  %38 = load i32, ptr %3, align 4
  %39 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %35, i32 0, i32 2
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %35, i32 0, i32 3
  store i32 %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %35, i32 0, i32 1
  store i32 1, ptr %41, align 4
  %42 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %1, i32 0, i32 19, i32 2
  store ptr %35, ptr %42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %50

43:                                               ; preds = %12
  %44 = add nsw i32 %13, -1
  %45 = load ptr, ptr %7, align 4
  %46 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %1, i32 0, i32 19, i32 %44
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %47, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  call void @dma_pool_free(ptr noundef %45, ptr noundef %47, i32 noundef %49) #6
  br label %50

50:                                               ; preds = %43, %37, %12, %11
  %51 = phi i32 [ -12, %11 ], [ 0, %37 ], [ -12, %43 ], [ -12, %12 ]
  ret i32 %51
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_plane_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %240, label %16

16:                                               ; preds = %2
  %17 = icmp eq ptr %12, null
  br i1 %17, label %18, label %19, !prof !10

18:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 609, i32 noundef 9, ptr noundef null) #6
  br label %240

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_crtc, ptr %14, i32 0, i32 8
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr %struct.__drm_crtcs_state, ptr %21, i32 %23, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %8, ptr noundef %25, i32 noundef 32, i32 noundef 2147483647, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %240

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 22
  %30 = load i8, ptr %29, align 4, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %240, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 5
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 6
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %40, %34
  %42 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 7
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 20, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = sub i32 %44, %37
  %46 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 8
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 2
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 %54, %48
  %56 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 3
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 21, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = sub i32 %58, %51
  %60 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 4
  store i32 %59, ptr %60, align 4
  %61 = or i32 %37, %34
  %62 = or i32 %61, %41
  %63 = or i32 %62, %45
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %240

66:                                               ; preds = %32
  %67 = lshr i32 %34, 16
  store i32 %67, ptr %35, align 4
  %68 = lshr i32 %37, 16
  store i32 %68, ptr %38, align 4
  %69 = lshr i32 %41, 16
  store i32 %69, ptr %42, align 4
  %70 = lshr i32 %45, 16
  store i32 %70, ptr %46, align 4
  %71 = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 4
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.drm_format_info, ptr %72, i32 0, i32 2
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 18
  store i32 %75, ptr %76, align 4
  %77 = icmp ugt i8 %74, 3
  br i1 %77, label %240, label %78

78:                                               ; preds = %66
  %79 = icmp eq i8 %74, 0
  br i1 %79, label %194, label %80

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 14
  br label %82

82:                                               ; preds = %183, %80
  %83 = phi i32 [ 0, %80 ], [ %191, %183 ]
  %84 = icmp eq i32 %83, 0
  %85 = load ptr, ptr %71, align 8
  br i1 %84, label %93, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.drm_format_info, ptr %85, i32 0, i32 6
  %88 = load i8, ptr %87, align 2
  %89 = zext i8 %88 to i32
  %90 = getelementptr inbounds %struct.drm_format_info, ptr %85, i32 0, i32 7
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  br label %93

93:                                               ; preds = %86, %82
  %94 = phi i32 [ %89, %86 ], [ 1, %82 ]
  %95 = phi i32 [ %92, %86 ], [ 1, %82 ]
  %96 = getelementptr inbounds %struct.drm_format_info, ptr %85, i32 0, i32 3
  %97 = getelementptr [4 x i8], ptr %96, i32 0, i32 %83
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 14, i32 %83
  store i32 %99, ptr %100, align 4
  %101 = icmp eq i8 %98, 0
  br i1 %101, label %240, label %102

102:                                              ; preds = %93
  %103 = load i32, ptr %81, align 4
  %104 = and i32 %103, 15
  switch i32 %104, label %168 [
    i32 2, label %105
    i32 4, label %127
    i32 8, label %149
  ]

105:                                              ; preds = %102
  %106 = load i32, ptr %38, align 4
  %107 = udiv i32 %106, %95
  %108 = getelementptr %struct.drm_framebuffer, ptr %12, i32 0, i32 6, i32 %83
  %109 = load i32, ptr %108, align 4
  %110 = mul i32 %109, %107
  %111 = load i32, ptr %35, align 4
  %112 = load i32, ptr %42, align 4
  %113 = add i32 %111, -1
  %114 = add i32 %113, %112
  %115 = udiv i32 %114, %94
  %116 = mul i32 %115, %99
  %117 = add i32 %116, %110
  %118 = load i32, ptr %46, align 4
  %119 = add i32 %118, -1
  %120 = udiv i32 %119, %95
  %121 = mul i32 %120, %109
  %122 = mul nsw i32 %99, -2
  %123 = sub i32 %122, %121
  %124 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 16, i32 %83
  store i32 %123, ptr %124, align 4
  %125 = load i32, ptr %108, align 4
  %126 = sub i32 %125, %99
  br label %183

127:                                              ; preds = %102
  %128 = load i32, ptr %38, align 4
  %129 = load i32, ptr %46, align 4
  %130 = add i32 %128, -1
  %131 = add i32 %130, %129
  %132 = udiv i32 %131, %95
  %133 = getelementptr %struct.drm_framebuffer, ptr %12, i32 0, i32 6, i32 %83
  %134 = load i32, ptr %133, align 4
  %135 = mul i32 %134, %132
  %136 = load i32, ptr %35, align 4
  %137 = load i32, ptr %42, align 4
  %138 = add i32 %137, -1
  %139 = add i32 %138, %136
  %140 = udiv i32 %139, %94
  %141 = mul i32 %140, %99
  %142 = add i32 %141, %135
  %143 = udiv i32 %138, %94
  %144 = add i32 %143, -1
  %145 = mul i32 %144, %99
  %146 = sub i32 %145, %134
  %147 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 16, i32 %83
  store i32 %146, ptr %147, align 4
  %148 = mul nsw i32 %99, -2
  br label %183

149:                                              ; preds = %102
  %150 = load i32, ptr %38, align 4
  %151 = load i32, ptr %46, align 4
  %152 = add i32 %151, -1
  %153 = add i32 %152, %150
  %154 = udiv i32 %153, %95
  %155 = getelementptr %struct.drm_framebuffer, ptr %12, i32 0, i32 6, i32 %83
  %156 = load i32, ptr %155, align 4
  %157 = mul i32 %156, %154
  %158 = load i32, ptr %35, align 4
  %159 = udiv i32 %158, %94
  %160 = mul i32 %159, %99
  %161 = add i32 %160, %157
  %162 = udiv i32 %152, %95
  %163 = mul i32 %162, %156
  %164 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 16, i32 %83
  store i32 %163, ptr %164, align 4
  %165 = load i32, ptr %155, align 4
  %166 = add i32 %165, %99
  %167 = sub i32 0, %166
  br label %183

168:                                              ; preds = %102
  %169 = load i32, ptr %38, align 4
  %170 = udiv i32 %169, %95
  %171 = getelementptr %struct.drm_framebuffer, ptr %12, i32 0, i32 6, i32 %83
  %172 = load i32, ptr %171, align 4
  %173 = mul i32 %172, %170
  %174 = load i32, ptr %35, align 4
  %175 = udiv i32 %174, %94
  %176 = mul i32 %175, %99
  %177 = add i32 %176, %173
  %178 = load i32, ptr %42, align 4
  %179 = udiv i32 %178, %94
  %180 = mul i32 %179, %99
  %181 = sub i32 %172, %180
  %182 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 16, i32 %83
  store i32 %181, ptr %182, align 4
  br label %183

183:                                              ; preds = %168, %149, %127, %105
  %184 = phi i32 [ %126, %105 ], [ %148, %127 ], [ %167, %149 ], [ 0, %168 ]
  %185 = phi i32 [ %117, %105 ], [ %142, %127 ], [ %161, %149 ], [ %177, %168 ]
  %186 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 17, i32 %83
  store i32 %184, ptr %186, align 4
  %187 = getelementptr %struct.drm_framebuffer, ptr %12, i32 0, i32 7, i32 %83
  %188 = load i32, ptr %187, align 4
  %189 = add i32 %185, %188
  %190 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %8, i32 0, i32 15, i32 %83
  store i32 %189, ptr %190, align 4
  %191 = add nuw nsw i32 %83, 1
  %192 = load i32, ptr %76, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %82, label %194

194:                                              ; preds = %183, %78
  %195 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 14
  %196 = load i32, ptr %195, align 4
  %197 = and i32 %196, 10
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %194
  %200 = load i32, ptr %42, align 4
  %201 = load i32, ptr %46, align 4
  store i32 %201, ptr %42, align 4
  store i32 %200, ptr %46, align 4
  br label %202

202:                                              ; preds = %199, %194
  %203 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %10, i32 0, i32 7, i32 3
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = load i32, ptr %60, align 4
  br label %220

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.drm_crtc_state, ptr %25, i32 0, i32 7, i32 1
  %210 = load i16, ptr %209, align 4
  %211 = zext i16 %210 to i32
  %212 = load i32, ptr %56, align 4
  %213 = icmp eq i32 %212, %211
  br i1 %213, label %214, label %240

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.drm_crtc_state, ptr %25, i32 0, i32 7, i32 6
  %216 = load i16, ptr %215, align 2
  %217 = zext i16 %216 to i32
  %218 = load i32, ptr %60, align 4
  %219 = icmp eq i32 %218, %217
  br i1 %219, label %220, label %240

220:                                              ; preds = %214, %206
  %221 = phi i32 [ %207, %206 ], [ %217, %214 ]
  %222 = load i32, ptr %46, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load i32, ptr %56, align 4
  %226 = load i32, ptr %42, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %239, label %228

228:                                              ; preds = %224, %220
  %229 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %10, i32 0, i32 7, i32 4
  %230 = load i32, ptr %229, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %240, label %232

232:                                              ; preds = %228
  %233 = load ptr, ptr %11, align 4
  %234 = getelementptr inbounds %struct.drm_framebuffer, ptr %233, i32 0, i32 4
  %235 = load ptr, ptr %234, align 8
  %236 = getelementptr inbounds %struct.drm_format_info, ptr %235, i32 0, i32 8
  %237 = load i8, ptr %236, align 4, !range !8
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %232, %224
  br label %240

240:                                              ; preds = %239, %232, %228, %214, %208, %93, %66, %32, %28, %19, %18, %2
  %241 = phi i32 [ 0, %239 ], [ 0, %18 ], [ 0, %2 ], [ 0, %28 ], [ %26, %19 ], [ -22, %32 ], [ -22, %66 ], [ -22, %214 ], [ -22, %208 ], [ -22, %232 ], [ -22, %228 ], [ -22, %93 ]
  ret i32 %241
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_hlcdc_plane_atomic_update(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.__drm_planes_state, ptr %7, i32 %9, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %634, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %634, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 22
  %21 = load i8, ptr %20, align 4, !range !8
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %0, i32 0, i32 1
  br i1 %22, label %24, label %44

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %0, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 16
  %31 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef %30, i32 noundef -1) #6
  %32 = load ptr, ptr %25, align 4
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 4
  %37 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef %36, i32 noundef 262) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !9
  %38 = load ptr, ptr %25, align 4
  %39 = load ptr, ptr %23, align 4
  %40 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 24
  %43 = call i32 @regmap_read(ptr noundef %38, i32 noundef %42, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %634

44:                                               ; preds = %19
  %45 = load ptr, ptr %23, align 8
  %46 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %45, i32 0, i32 7, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, -1
  %53 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = shl i32 %54, 16
  %56 = add i32 %55, -65536
  %57 = or i32 %56, %52
  %58 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %45, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %47, 2
  %61 = add i32 %59, %60
  %62 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %0, i32 0, i32 1, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %45, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %61, %65
  %67 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef %66, i32 noundef %57) #6
  br label %68

68:                                               ; preds = %49, %44
  %69 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %45, i32 0, i32 7, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 7
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, -1
  %76 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 8
  %77 = load i32, ptr %76, align 4
  %78 = shl i32 %77, 16
  %79 = add i32 %78, -65536
  %80 = or i32 %79, %75
  %81 = load ptr, ptr %23, align 4
  %82 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %81, i32 0, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = shl i32 %70, 2
  %85 = add i32 %83, %84
  %86 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %0, i32 0, i32 1, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %81, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %85, %89
  %91 = tail call i32 @regmap_write(ptr noundef %87, i32 noundef %90, i32 noundef %80) #6
  br label %92

92:                                               ; preds = %72, %68
  %93 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %45, i32 0, i32 7, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %114, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = shl i32 %100, 16
  %102 = or i32 %101, %98
  %103 = load ptr, ptr %23, align 4
  %104 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %103, i32 0, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 %94, 2
  %107 = add i32 %105, %106
  %108 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %0, i32 0, i32 1, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %103, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %107, %111
  %113 = tail call i32 @regmap_write(ptr noundef %109, i32 noundef %112, i32 noundef %102) #6
  br label %114

114:                                              ; preds = %96, %92
  %115 = load ptr, ptr %23, align 8
  %116 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %115, i32 0, i32 7, i32 9
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %320, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 7
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 4
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 8
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %305, label %131

131:                                              ; preds = %125, %119
  %132 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %115, i32 0, i32 7, i32 10
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %288, label %135

135:                                              ; preds = %131
  %136 = add i32 %123, -1
  %137 = shl i32 %136, 11
  %138 = add i32 %137, -1024
  %139 = add i32 %121, -1
  %140 = udiv i32 %138, %139
  %141 = mul i32 %140, %139
  %142 = add i32 %141, 1024
  %143 = lshr i32 %142, 11
  %144 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 8
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 4
  %147 = load i32, ptr %146, align 4
  %148 = add i32 %145, -1
  %149 = shl i32 %148, 11
  %150 = add i32 %149, -1024
  %151 = add i32 %147, -1
  %152 = udiv i32 %150, %151
  %153 = mul i32 %152, %151
  %154 = add i32 %153, 1024
  %155 = lshr i32 %154, 11
  %156 = icmp ult i32 %121, %123
  %157 = select i1 %156, ptr @heo_downscaling_xcoef, ptr @heo_upscaling_xcoef
  %158 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %0, i32 0, i32 1, i32 1
  %159 = load i32, ptr %157, align 4
  %160 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %115, i32 0, i32 4
  %161 = load i32, ptr %160, align 4
  %162 = shl i32 %133, 2
  %163 = add i32 %161, %162
  %164 = load ptr, ptr %158, align 4
  %165 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %115, i32 0, i32 3
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %163, %166
  %168 = tail call i32 @regmap_write(ptr noundef %164, i32 noundef %167, i32 noundef %159) #6
  br label %169

169:                                              ; preds = %169, %135
  %170 = phi i32 [ 1, %135 ], [ %184, %169 ]
  %171 = load ptr, ptr %23, align 4
  %172 = add i32 %170, %133
  %173 = getelementptr i32, ptr %157, i32 %170
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %171, i32 0, i32 4
  %176 = load i32, ptr %175, align 4
  %177 = shl i32 %172, 2
  %178 = add i32 %176, %177
  %179 = load ptr, ptr %158, align 4
  %180 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %171, i32 0, i32 3
  %181 = load i32, ptr %180, align 4
  %182 = add i32 %178, %181
  %183 = tail call i32 @regmap_write(ptr noundef %179, i32 noundef %182, i32 noundef %174) #6
  %184 = add nuw nsw i32 %170, 1
  %185 = icmp eq i32 %184, 16
  br i1 %185, label %186, label %169

186:                                              ; preds = %169
  %187 = icmp ugt i32 %143, %136
  %188 = icmp ugt i32 %155, %148
  %189 = sext i1 %187 to i32
  %190 = sext i1 %188 to i32
  %191 = add i32 %140, %189
  %192 = load i32, ptr %146, align 4
  %193 = load i32, ptr %144, align 4
  %194 = icmp ult i32 %192, %193
  %195 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %115, i32 0, i32 7, i32 10, i32 1
  %196 = load i32, ptr %195, align 4
  %197 = select i1 %194, i32 1193783, i32 16448
  %198 = load ptr, ptr %23, align 4
  %199 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %198, i32 0, i32 4
  %200 = load i32, ptr %199, align 4
  %201 = shl i32 %196, 2
  %202 = add i32 %200, %201
  %203 = load ptr, ptr %158, align 4
  %204 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %198, i32 0, i32 3
  %205 = load i32, ptr %204, align 4
  %206 = add i32 %202, %205
  %207 = tail call i32 @regmap_write(ptr noundef %203, i32 noundef %206, i32 noundef %197) #6
  %208 = select i1 %194, i32 1521458, i32 481568
  %209 = load ptr, ptr %23, align 4
  %210 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %209, i32 0, i32 4
  %211 = load i32, ptr %210, align 4
  %212 = add i32 %201, 4
  %213 = add i32 %212, %211
  %214 = load ptr, ptr %158, align 4
  %215 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %209, i32 0, i32 3
  %216 = load i32, ptr %215, align 4
  %217 = add i32 %213, %216
  %218 = tail call i32 @regmap_write(ptr noundef %214, i32 noundef %217, i32 noundef %208) #6
  %219 = select i1 %194, i32 1783853, i32 356108
  %220 = load ptr, ptr %23, align 4
  %221 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %220, i32 0, i32 4
  %222 = load i32, ptr %221, align 4
  %223 = add i32 %201, 8
  %224 = add i32 %223, %222
  %225 = load ptr, ptr %158, align 4
  %226 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %220, i32 0, i32 3
  %227 = load i32, ptr %226, align 4
  %228 = add i32 %224, %227
  %229 = tail call i32 @regmap_write(ptr noundef %225, i32 noundef %228, i32 noundef %219) #6
  %230 = select i1 %194, i32 2046248, i32 162563
  %231 = load ptr, ptr %23, align 4
  %232 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %231, i32 0, i32 4
  %233 = load i32, ptr %232, align 4
  %234 = add i32 %201, 12
  %235 = add i32 %234, %233
  %236 = load ptr, ptr %158, align 4
  %237 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %231, i32 0, i32 3
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %235, %238
  %240 = tail call i32 @regmap_write(ptr noundef %236, i32 noundef %239, i32 noundef %230) #6
  %241 = select i1 %194, i32 2373668, i32 32768
  %242 = load ptr, ptr %23, align 4
  %243 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %242, i32 0, i32 4
  %244 = load i32, ptr %243, align 4
  %245 = add i32 %201, 16
  %246 = add i32 %245, %244
  %247 = load ptr, ptr %158, align 4
  %248 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %242, i32 0, i32 3
  %249 = load i32, ptr %248, align 4
  %250 = add i32 %246, %249
  %251 = tail call i32 @regmap_write(ptr noundef %247, i32 noundef %250, i32 noundef %241) #6
  %252 = select i1 %194, i32 2636063, i32 228098
  %253 = load ptr, ptr %23, align 4
  %254 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %253, i32 0, i32 4
  %255 = load i32, ptr %254, align 4
  %256 = add i32 %201, 20
  %257 = add i32 %256, %255
  %258 = load ptr, ptr %158, align 4
  %259 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %253, i32 0, i32 3
  %260 = load i32, ptr %259, align 4
  %261 = add i32 %257, %260
  %262 = tail call i32 @regmap_write(ptr noundef %258, i32 noundef %261, i32 noundef %252) #6
  %263 = select i1 %194, i32 2963483, i32 814853
  %264 = load ptr, ptr %23, align 4
  %265 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %264, i32 0, i32 4
  %266 = load i32, ptr %265, align 4
  %267 = add i32 %201, 24
  %268 = add i32 %267, %266
  %269 = load ptr, ptr %158, align 4
  %270 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %264, i32 0, i32 3
  %271 = load i32, ptr %270, align 4
  %272 = add i32 %268, %271
  %273 = tail call i32 @regmap_write(ptr noundef %269, i32 noundef %272, i32 noundef %263) #6
  %274 = select i1 %194, i32 3290903, i32 2119943
  %275 = load ptr, ptr %23, align 4
  %276 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %275, i32 0, i32 4
  %277 = load i32, ptr %276, align 4
  %278 = add i32 %201, 28
  %279 = add i32 %278, %277
  %280 = load ptr, ptr %158, align 4
  %281 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %275, i32 0, i32 3
  %282 = load i32, ptr %281, align 4
  %283 = add i32 %279, %282
  %284 = tail call i32 @regmap_write(ptr noundef %280, i32 noundef %283, i32 noundef %274) #6
  %285 = add i32 %152, %190
  %286 = load i32, ptr %116, align 4
  %287 = load ptr, ptr %23, align 4
  br label %297

288:                                              ; preds = %131
  %289 = shl i32 %123, 10
  %290 = udiv i32 %289, %121
  %291 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 8
  %292 = load i32, ptr %291, align 4
  %293 = shl i32 %292, 10
  %294 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 4
  %295 = load i32, ptr %294, align 4
  %296 = udiv i32 %293, %295
  br label %297

297:                                              ; preds = %288, %186
  %298 = phi ptr [ %115, %288 ], [ %287, %186 ]
  %299 = phi i32 [ %117, %288 ], [ %286, %186 ]
  %300 = phi i32 [ %290, %288 ], [ %191, %186 ]
  %301 = phi i32 [ %296, %288 ], [ %285, %186 ]
  %302 = shl i32 %301, 16
  %303 = or i32 %300, %302
  %304 = or i32 %303, -2147483648
  br label %305

305:                                              ; preds = %297, %125
  %306 = phi ptr [ %298, %297 ], [ %115, %125 ]
  %307 = phi i32 [ %299, %297 ], [ %117, %125 ]
  %308 = phi i32 [ %304, %297 ], [ 0, %125 ]
  %309 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %306, i32 0, i32 4
  %310 = load i32, ptr %309, align 4
  %311 = shl i32 %307, 2
  %312 = add i32 %310, %311
  %313 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %0, i32 0, i32 1, i32 1
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %306, i32 0, i32 3
  %316 = load i32, ptr %315, align 4
  %317 = add i32 %312, %316
  %318 = tail call i32 @regmap_write(ptr noundef %314, i32 noundef %317, i32 noundef %308) #6
  %319 = load ptr, ptr %23, align 8
  br label %320

320:                                              ; preds = %305, %114
  %321 = phi ptr [ %115, %114 ], [ %319, %305 ]
  %322 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 13
  %323 = load i32, ptr %322, align 4
  %324 = load ptr, ptr %16, align 4
  %325 = getelementptr inbounds %struct.drm_framebuffer, ptr %324, i32 0, i32 4
  %326 = load ptr, ptr %325, align 8
  %327 = load i32, ptr %326, align 4
  %328 = icmp eq i32 %327, 875710290
  %329 = select i1 %328, i32 4144, i32 48
  %330 = or i32 %329, %323
  %331 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %321, i32 0, i32 4
  %332 = load i32, ptr %331, align 4
  %333 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %0, i32 0, i32 1, i32 1
  %334 = load ptr, ptr %333, align 4
  %335 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %321, i32 0, i32 3
  %336 = load i32, ptr %335, align 4
  %337 = add i32 %336, %332
  %338 = tail call i32 @regmap_write(ptr noundef %334, i32 noundef %337, i32 noundef %330) #6
  %339 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 16
  %340 = load i32, ptr %339, align 8
  %341 = icmp eq i32 %340, 1
  br i1 %341, label %352, label %342

342:                                              ; preds = %320
  %343 = getelementptr inbounds %struct.drm_format_info, ptr %326, i32 0, i32 8
  %344 = load i8, ptr %343, align 4, !range !8
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %342
  %347 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 12
  %348 = load i16, ptr %347, align 4
  %349 = zext i16 %348 to i32
  %350 = shl nuw i32 %349, 16
  %351 = or i32 %350, 940
  br label %352

352:                                              ; preds = %346, %342, %320
  %353 = phi i32 [ %351, %346 ], [ 768, %320 ], [ 972, %342 ]
  %354 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 12
  %355 = load i32, ptr %354, align 4
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %363, label %357

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 11
  %359 = load i32, ptr %358, align 4
  %360 = icmp eq i32 %359, 0
  %361 = or i32 %353, 2048
  %362 = select i1 %360, i32 %353, i32 %361
  br label %363

363:                                              ; preds = %357, %352
  %364 = phi i32 [ %353, %352 ], [ %362, %357 ]
  %365 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %321, i32 0, i32 7, i32 8
  %366 = load i32, ptr %365, align 4
  %367 = load ptr, ptr %23, align 4
  %368 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %367, i32 0, i32 4
  %369 = load i32, ptr %368, align 4
  %370 = shl i32 %366, 2
  %371 = add i32 %369, %370
  %372 = load ptr, ptr %333, align 4
  %373 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %367, i32 0, i32 3
  %374 = load i32, ptr %373, align 4
  %375 = add i32 %371, %374
  %376 = tail call i32 @regmap_write(ptr noundef %372, i32 noundef %375, i32 noundef %364) #6
  %377 = load ptr, ptr %16, align 4
  %378 = getelementptr inbounds %struct.drm_framebuffer, ptr %377, i32 0, i32 4
  %379 = load ptr, ptr %378, align 8
  %380 = load i32, ptr %379, align 4
  switch i32 %380, label %417 [
    i32 538982467, label %406
    i32 842093144, label %381
    i32 842093121, label %382
    i32 842088786, label %383
    i32 909199186, label %384
    i32 875710290, label %385
    i32 892424769, label %386
    i32 875713112, label %387
    i32 875713089, label %388
    i32 875708754, label %389
    i32 1448433985, label %390
    i32 1448695129, label %391
    i32 1498831189, label %392
    i32 1431918169, label %393
    i32 1498765654, label %394
    i32 825382478, label %395
    i32 825644622, label %398
    i32 842093913, label %396
    i32 909202777, label %397
  ]

381:                                              ; preds = %363
  br label %406

382:                                              ; preds = %363
  br label %406

383:                                              ; preds = %363
  br label %406

384:                                              ; preds = %363
  br label %406

385:                                              ; preds = %363
  br label %406

386:                                              ; preds = %363
  br label %406

387:                                              ; preds = %363
  br label %406

388:                                              ; preds = %363
  br label %406

389:                                              ; preds = %363
  br label %406

390:                                              ; preds = %363
  br label %406

391:                                              ; preds = %363
  br label %406

392:                                              ; preds = %363
  br label %406

393:                                              ; preds = %363
  br label %406

394:                                              ; preds = %363
  br label %406

395:                                              ; preds = %363
  br label %406

396:                                              ; preds = %363
  br label %406

397:                                              ; preds = %363
  br label %398

398:                                              ; preds = %397, %363
  %399 = phi i32 [ 24578, %397 ], [ 20482, %363 ]
  %400 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 14
  %401 = load i32, ptr %400, align 4
  %402 = and i32 %401, 10
  %403 = icmp eq i32 %402, 0
  %404 = or i32 %399, 65536
  %405 = select i1 %403, i32 %399, i32 %404
  br label %406

406:                                              ; preds = %398, %396, %395, %394, %393, %392, %391, %390, %389, %388, %387, %386, %385, %384, %383, %382, %381, %363
  %407 = phi i32 [ 769, %363 ], [ 32770, %396 ], [ 28674, %395 ], [ 16386, %394 ], [ 12290, %393 ], [ 8194, %392 ], [ 4098, %391 ], [ 2, %390 ], [ 208, %389 ], [ 192, %388 ], [ 144, %387 ], [ 64, %386 ], [ 160, %385 ], [ 48, %384 ], [ 32, %383 ], [ 16, %382 ], [ 0, %381 ], [ %405, %398 ]
  %408 = load ptr, ptr %23, align 4
  %409 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %408, i32 0, i32 4
  %410 = load i32, ptr %409, align 4
  %411 = add i32 %410, 4
  %412 = load ptr, ptr %333, align 4
  %413 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %408, i32 0, i32 3
  %414 = load i32, ptr %413, align 4
  %415 = add i32 %411, %414
  %416 = tail call i32 @regmap_write(ptr noundef %412, i32 noundef %415, i32 noundef %407) #6
  br label %417

417:                                              ; preds = %406, %363
  %418 = load ptr, ptr %12, align 4
  %419 = icmp eq ptr %418, null
  br i1 %419, label %463, label %420

420:                                              ; preds = %417
  %421 = getelementptr inbounds %struct.drm_crtc, ptr %418, i32 0, i32 22
  %422 = load ptr, ptr %421, align 4
  %423 = icmp eq ptr %422, null
  br i1 %423, label %463, label %424

424:                                              ; preds = %420
  %425 = getelementptr inbounds %struct.drm_crtc_state, ptr %422, i32 0, i32 3
  %426 = load i8, ptr %425, align 2
  %427 = and i8 %426, 32
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %463, label %429

429:                                              ; preds = %424
  %430 = getelementptr inbounds %struct.drm_crtc_state, ptr %422, i32 0, i32 12
  %431 = load ptr, ptr %430, align 4
  %432 = icmp eq ptr %431, null
  br i1 %432, label %463, label %433

433:                                              ; preds = %429
  %434 = getelementptr inbounds %struct.drm_property_blob, ptr %431, i32 0, i32 5
  %435 = load ptr, ptr %434, align 4
  br label %436

436:                                              ; preds = %436, %433
  %437 = phi i32 [ 0, %433 ], [ %460, %436 ]
  %438 = phi ptr [ %435, %433 ], [ %461, %436 ]
  %439 = load i16, ptr %438, align 2
  %440 = zext i16 %439 to i32
  %441 = shl nuw nsw i32 %440, 8
  %442 = and i32 %441, 16711680
  %443 = getelementptr inbounds %struct.drm_color_lut, ptr %438, i32 0, i32 1
  %444 = load i16, ptr %443, align 2
  %445 = and i16 %444, -256
  %446 = zext i16 %445 to i32
  %447 = or i32 %442, %446
  %448 = getelementptr inbounds %struct.drm_color_lut, ptr %438, i32 0, i32 2
  %449 = load i16, ptr %448, align 2
  %450 = lshr i16 %449, 8
  %451 = zext i16 %450 to i32
  %452 = or i32 %447, %451
  %453 = load ptr, ptr %333, align 4
  %454 = load ptr, ptr %23, align 4
  %455 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %454, i32 0, i32 5
  %456 = load i32, ptr %455, align 4
  %457 = shl i32 %437, 2
  %458 = add i32 %456, %457
  %459 = tail call i32 @regmap_write(ptr noundef %453, i32 noundef %458, i32 noundef %452) #6
  %460 = add nuw nsw i32 %437, 1
  %461 = getelementptr %struct.drm_color_lut, ptr %438, i32 1
  %462 = icmp eq i32 %460, 256
  br i1 %462, label %463, label %436

463:                                              ; preds = %436, %429, %424, %420, %417
  %464 = load ptr, ptr %23, align 8
  %465 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  %466 = load ptr, ptr %333, align 4
  %467 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %464, i32 0, i32 3
  %468 = load i32, ptr %467, align 4
  %469 = add i32 %468, 8
  %470 = call i32 @regmap_read(ptr noundef %466, i32 noundef %469, ptr noundef nonnull %4) #6
  %471 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %472 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 18
  %473 = load i32, ptr %472, align 4
  %474 = icmp sgt i32 %473, 0
  br i1 %474, label %475, label %568

475:                                              ; preds = %463
  %476 = and i32 %471, 1
  %477 = icmp eq i32 %476, 0
  %478 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %464, i32 0, i32 7
  br label %479

479:                                              ; preds = %564, %475
  %480 = phi i32 [ 0, %475 ], [ %565, %564 ]
  %481 = call ptr @drm_fb_cma_get_gem_obj(ptr noundef %465, i32 noundef %480) #6
  %482 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %481, i32 0, i32 1
  %483 = load i32, ptr %482, align 8
  %484 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 15, i32 %480
  %485 = load i32, ptr %484, align 4
  %486 = add i32 %485, %483
  %487 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 19, i32 %480
  %488 = load ptr, ptr %487, align 4
  store i32 %486, ptr %488, align 8
  %489 = shl i32 %480, 4
  %490 = add i32 %489, 28
  %491 = load ptr, ptr %487, align 4
  %492 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %491, i32 0, i32 3
  %493 = load i32, ptr %492, align 4
  %494 = load ptr, ptr %333, align 4
  %495 = load ptr, ptr %23, align 4
  %496 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %495, i32 0, i32 3
  %497 = load i32, ptr %496, align 4
  %498 = add i32 %490, %497
  %499 = call i32 @regmap_write(ptr noundef %494, i32 noundef %498, i32 noundef %493) #6
  br i1 %477, label %500, label %530

500:                                              ; preds = %479
  %501 = add i32 %489, 32
  %502 = load ptr, ptr %487, align 4
  %503 = load i32, ptr %502, align 8
  %504 = load ptr, ptr %333, align 4
  %505 = load ptr, ptr %23, align 4
  %506 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %505, i32 0, i32 3
  %507 = load i32, ptr %506, align 4
  %508 = add i32 %501, %507
  %509 = call i32 @regmap_write(ptr noundef %504, i32 noundef %508, i32 noundef %503) #6
  %510 = add i32 %489, 36
  %511 = load ptr, ptr %487, align 4
  %512 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %511, i32 0, i32 1
  %513 = load i32, ptr %512, align 4
  %514 = load ptr, ptr %333, align 4
  %515 = load ptr, ptr %23, align 4
  %516 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %515, i32 0, i32 3
  %517 = load i32, ptr %516, align 4
  %518 = add i32 %510, %517
  %519 = call i32 @regmap_write(ptr noundef %514, i32 noundef %518, i32 noundef %513) #6
  %520 = add i32 %489, 40
  %521 = load ptr, ptr %487, align 4
  %522 = getelementptr inbounds %struct.atmel_hlcdc_dma_channel_dscr, ptr %521, i32 0, i32 3
  %523 = load i32, ptr %522, align 4
  %524 = load ptr, ptr %333, align 4
  %525 = load ptr, ptr %23, align 4
  %526 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %525, i32 0, i32 3
  %527 = load i32, ptr %526, align 4
  %528 = add i32 %520, %527
  %529 = call i32 @regmap_write(ptr noundef %524, i32 noundef %528, i32 noundef %523) #6
  br label %530

530:                                              ; preds = %500, %479
  %531 = getelementptr [3 x i32], ptr %478, i32 0, i32 %480
  %532 = load i32, ptr %531, align 4
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %547, label %534

534:                                              ; preds = %530
  %535 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 16, i32 %480
  %536 = load i32, ptr %535, align 4
  %537 = load ptr, ptr %23, align 4
  %538 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %537, i32 0, i32 4
  %539 = load i32, ptr %538, align 4
  %540 = shl i32 %532, 2
  %541 = add i32 %539, %540
  %542 = load ptr, ptr %333, align 4
  %543 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %537, i32 0, i32 3
  %544 = load i32, ptr %543, align 4
  %545 = add i32 %541, %544
  %546 = call i32 @regmap_write(ptr noundef %542, i32 noundef %545, i32 noundef %536) #6
  br label %547

547:                                              ; preds = %534, %530
  %548 = getelementptr %struct.atmel_hlcdc_layer_desc, ptr %464, i32 0, i32 7, i32 1, i32 %480
  %549 = load i32, ptr %548, align 4
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %564, label %551

551:                                              ; preds = %547
  %552 = getelementptr %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 17, i32 %480
  %553 = load i32, ptr %552, align 4
  %554 = load ptr, ptr %23, align 4
  %555 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %554, i32 0, i32 4
  %556 = load i32, ptr %555, align 4
  %557 = shl i32 %549, 2
  %558 = add i32 %556, %557
  %559 = load ptr, ptr %333, align 4
  %560 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %554, i32 0, i32 3
  %561 = load i32, ptr %560, align 4
  %562 = add i32 %558, %561
  %563 = call i32 @regmap_write(ptr noundef %559, i32 noundef %562, i32 noundef %553) #6
  br label %564

564:                                              ; preds = %551, %547
  %565 = add nuw nsw i32 %480, 1
  %566 = load i32, ptr %472, align 4
  %567 = icmp slt i32 %565, %566
  br i1 %567, label %479, label %568

568:                                              ; preds = %564, %463
  %569 = load ptr, ptr %23, align 8
  %570 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %569, i32 0, i32 7, i32 11
  %571 = load i32, ptr %570, align 4
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %612, label %573

573:                                              ; preds = %568
  %574 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %569, i32 0, i32 7, i32 12
  %575 = load i32, ptr %574, align 4
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %612, label %577

577:                                              ; preds = %573
  %578 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 9
  %579 = load i32, ptr %578, align 4
  %580 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 10
  %581 = load i32, ptr %580, align 4
  %582 = shl i32 %581, 16
  %583 = or i32 %582, %579
  %584 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %569, i32 0, i32 4
  %585 = load i32, ptr %584, align 4
  %586 = shl i32 %571, 2
  %587 = add i32 %585, %586
  %588 = load ptr, ptr %333, align 4
  %589 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %569, i32 0, i32 3
  %590 = load i32, ptr %589, align 4
  %591 = add i32 %587, %590
  %592 = call i32 @regmap_write(ptr noundef %588, i32 noundef %591, i32 noundef %583) #6
  %593 = load i32, ptr %574, align 4
  %594 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, ptr %11, i32 0, i32 11
  %595 = load i32, ptr %594, align 4
  %596 = add i32 %595, -1
  %597 = load i32, ptr %354, align 4
  %598 = shl i32 %597, 16
  %599 = add i32 %598, -65536
  %600 = or i32 %599, %596
  %601 = load ptr, ptr %23, align 4
  %602 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %601, i32 0, i32 4
  %603 = load i32, ptr %602, align 4
  %604 = shl i32 %593, 2
  %605 = add i32 %603, %604
  %606 = load ptr, ptr %333, align 4
  %607 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %601, i32 0, i32 3
  %608 = load i32, ptr %607, align 4
  %609 = add i32 %605, %608
  %610 = call i32 @regmap_write(ptr noundef %606, i32 noundef %609, i32 noundef %600) #6
  %611 = load ptr, ptr %23, align 4
  br label %612

612:                                              ; preds = %577, %573, %568
  %613 = phi ptr [ %569, %568 ], [ %569, %573 ], [ %611, %577 ]
  %614 = load ptr, ptr %333, align 4
  %615 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %613, i32 0, i32 3
  %616 = load i32, ptr %615, align 4
  %617 = add i32 %616, 12
  %618 = call i32 @regmap_write(ptr noundef %614, i32 noundef %617, i32 noundef 4210752) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %619 = load ptr, ptr %333, align 4
  %620 = load ptr, ptr %23, align 4
  %621 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %620, i32 0, i32 3
  %622 = load i32, ptr %621, align 4
  %623 = add i32 %622, 8
  %624 = call i32 @regmap_read(ptr noundef %619, i32 noundef %623, ptr noundef nonnull %3) #6
  %625 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %626 = and i32 %625, 1
  %627 = icmp eq i32 %626, 0
  %628 = select i1 %627, i32 3, i32 6
  %629 = load ptr, ptr %333, align 4
  %630 = load ptr, ptr %23, align 4
  %631 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %630, i32 0, i32 3
  %632 = load i32, ptr %631, align 4
  %633 = call i32 @regmap_write(ptr noundef %629, i32 noundef %632, i32 noundef %628) #6
  br label %634

634:                                              ; preds = %612, %24, %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_hlcdc_plane_atomic_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.atmel_hlcdc_plane, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 16
  %11 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %10, i32 noundef -1) #6
  %12 = load ptr, ptr %5, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 4
  %17 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %16, i32 noundef 262) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %18 = load ptr, ptr %5, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 24
  %23 = call i32 @regmap_read(ptr noundef %18, i32 noundef %22, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
