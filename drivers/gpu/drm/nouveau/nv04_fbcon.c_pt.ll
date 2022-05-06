; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nv04_fbcon.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nv04_fbcon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { ptr }
%struct.drm_fb_helper = type { %struct.drm_client_dev, ptr, ptr, ptr, ptr, ptr, [17 x i32], %struct.drm_clip_rect, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.list_head, i8, i8, i32 }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.75, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.anon.75 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.79 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.86, %struct.anon.87, %struct.anon.89, ptr, %struct.anon.90, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.91, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.103 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.86 = type { ptr, i32, i32, i8 }
%struct.anon.87 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.88] }
%struct.anon.88 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.89 = type { i64, i64 }
%struct.anon.90 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.81 }
%struct.anon.81 = type { ptr, i64 }
%struct.anon.91 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.92, i8 }
%union.anon.92 = type { %struct.anon.96 }
%struct.anon.96 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.98 = type { i32 }
%struct.anon.99 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.100 = type { i16, i16 }
%struct.anon.101 = type { i16, i16, i16, %struct.anon.102, i16 }
%struct.anon.102 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, %struct.mutex, i8 }
%struct.anon.83 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.nouveau_channel = type { %struct.anon.83, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.104, i8, ptr, %struct.anon.105, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.104 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.105 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.nouveau_fbdev = type { %struct.drm_fb_helper, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, ptr, %struct.mutex, i8 }

@.str = private unnamed_addr constant [15 x i8] c"fbconCtxSurf2d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"fbconCtxClip\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"fbconCtxRop\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"fbconCtxPatt\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"fbconGdiRectText\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"fbconImageBlit\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_fbcon_copyarea(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_fb_helper, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.anon.83, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i32, ptr %14, i32 4
  %16 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ult ptr %15, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load ptr, ptr %12, align 8
  %21 = tail call i32 %20(ptr noundef %12, i32 noundef 4) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = load ptr, ptr %13, align 4
  br label %25

25:                                               ; preds = %23, %2
  %26 = phi ptr [ %24, %23 ], [ %14, %2 ]
  %27 = getelementptr i32, ptr %26, i32 1
  store ptr %27, ptr %13, align 4
  store i32 803584, ptr %26, align 4
  %28 = getelementptr inbounds %struct.fb_copyarea, ptr %1, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %29, 16
  %31 = getelementptr inbounds %struct.fb_copyarea, ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %30, %32
  %34 = load ptr, ptr %13, align 4
  %35 = getelementptr i32, ptr %34, i32 1
  store ptr %35, ptr %13, align 4
  store i32 %33, ptr %34, align 4
  %36 = getelementptr inbounds %struct.fb_copyarea, ptr %1, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = shl i32 %37, 16
  %39 = load i32, ptr %1, align 4
  %40 = or i32 %38, %39
  %41 = load ptr, ptr %13, align 4
  %42 = getelementptr i32, ptr %41, i32 1
  store ptr %42, ptr %13, align 4
  store i32 %40, ptr %41, align 4
  %43 = getelementptr inbounds %struct.fb_copyarea, ptr %1, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = shl i32 %44, 16
  %46 = getelementptr inbounds %struct.fb_copyarea, ptr %1, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %45, %47
  %49 = load ptr, ptr %13, align 4
  %50 = getelementptr i32, ptr %49, i32 1
  store ptr %50, ptr %13, align 4
  store i32 %48, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %12) #4
  br label %53

53:                                               ; preds = %25, %19
  %54 = phi i32 [ 0, %25 ], [ %21, %19 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_fbcon_fillrect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_fb_helper, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.anon.83, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i32, ptr %14, i32 7
  %16 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ult ptr %15, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load ptr, ptr %12, align 8
  %21 = tail call i32 %20(ptr noundef %12, i32 noundef 7) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %74

23:                                               ; preds = %19
  %24 = load ptr, ptr %13, align 4
  br label %25

25:                                               ; preds = %23, %2
  %26 = phi ptr [ %24, %23 ], [ %14, %2 ]
  %27 = getelementptr i32, ptr %26, i32 1
  store ptr %27, ptr %13, align 4
  store i32 287484, ptr %26, align 4
  %28 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 3, i32 1
  %32 = load ptr, ptr %13, align 4
  %33 = getelementptr i32, ptr %32, i32 1
  store ptr %33, ptr %13, align 4
  store i32 %31, ptr %32, align 4
  %34 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 5
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %47 [
    i32 2, label %36
    i32 4, label %36
  ]

36:                                               ; preds = %25, %25
  %37 = load ptr, ptr %13, align 4
  %38 = getelementptr i32, ptr %37, i32 1
  store ptr %38, ptr %13, align 4
  store i32 287740, ptr %37, align 4
  %39 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 26
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i32, ptr %40, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %13, align 4
  %46 = getelementptr i32, ptr %45, i32 1
  store ptr %46, ptr %13, align 4
  store i32 %44, ptr %45, align 4
  br label %54

47:                                               ; preds = %25
  %48 = load ptr, ptr %13, align 4
  %49 = getelementptr i32, ptr %48, i32 1
  store ptr %49, ptr %13, align 4
  store i32 287740, ptr %48, align 4
  %50 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %13, align 4
  %53 = getelementptr i32, ptr %52, i32 1
  store ptr %53, ptr %13, align 4
  store i32 %51, ptr %52, align 4
  br label %54

54:                                               ; preds = %47, %36
  %55 = load ptr, ptr %13, align 4
  %56 = getelementptr i32, ptr %55, i32 1
  store ptr %56, ptr %13, align 4
  store i32 549888, ptr %55, align 4
  %57 = load i32, ptr %1, align 4
  %58 = shl i32 %57, 16
  %59 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %58, %60
  %62 = load ptr, ptr %13, align 4
  %63 = getelementptr i32, ptr %62, i32 1
  store ptr %63, ptr %13, align 4
  store i32 %61, ptr %62, align 4
  %64 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %65, 16
  %67 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = or i32 %66, %68
  %70 = load ptr, ptr %13, align 4
  %71 = getelementptr i32, ptr %70, i32 1
  store ptr %71, ptr %13, align 4
  store i32 %69, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  tail call void %73(ptr noundef %12) #4
  br label %74

74:                                               ; preds = %54, %19
  %75 = phi i32 [ 0, %54 ], [ %21, %19 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_fbcon_imageblit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_fb_helper, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.anon.83, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 6
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %18, label %137

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i32, ptr %20, i32 8
  %22 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp ult ptr %21, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %12, align 8
  %27 = tail call i32 %26(ptr noundef %12, i32 noundef 8) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %137

29:                                               ; preds = %25, %18
  %30 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 5
  %31 = load i32, ptr %30, align 4
  switch i32 %31, label %41 [
    i32 2, label %32
    i32 4, label %32
  ]

32:                                               ; preds = %29, %29
  %33 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 26
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i32, ptr %34, i32 %36
  %38 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i32, ptr %34, i32 %39
  br label %44

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 4
  %43 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 5
  br label %44

44:                                               ; preds = %41, %32
  %45 = phi ptr [ %40, %32 ], [ %43, %41 ]
  %46 = phi ptr [ %37, %32 ], [ %42, %41 ]
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %45, align 4
  %49 = load ptr, ptr %19, align 4
  %50 = getelementptr i32, ptr %49, i32 1
  store ptr %50, ptr %19, align 4
  store i32 1862628, ptr %49, align 4
  %51 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = shl i32 %52, 16
  %54 = load i32, ptr %1, align 4
  %55 = and i32 %54, 65535
  %56 = or i32 %55, %53
  %57 = load ptr, ptr %19, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  store ptr %58, ptr %19, align 4
  store i32 %56, ptr %57, align 4
  %59 = load i32, ptr %51, align 4
  %60 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, %59
  %63 = shl i32 %62, 16
  %64 = load i32, ptr %1, align 4
  %65 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, %64
  %68 = and i32 %67, 65535
  %69 = or i32 %68, %63
  %70 = load ptr, ptr %19, align 4
  %71 = getelementptr i32, ptr %70, i32 1
  store ptr %71, ptr %19, align 4
  store i32 %69, ptr %70, align 4
  %72 = load ptr, ptr %19, align 4
  %73 = getelementptr i32, ptr %72, i32 1
  store ptr %73, ptr %19, align 4
  store i32 %48, ptr %72, align 4
  %74 = load ptr, ptr %19, align 4
  %75 = getelementptr i32, ptr %74, i32 1
  store ptr %75, ptr %19, align 4
  store i32 %47, ptr %74, align 4
  %76 = load i32, ptr %60, align 4
  %77 = shl i32 %76, 16
  %78 = load i32, ptr %65, align 4
  %79 = add i32 %78, 7
  %80 = and i32 %79, -8
  %81 = or i32 %80, %77
  %82 = load ptr, ptr %19, align 4
  %83 = getelementptr i32, ptr %82, i32 1
  store ptr %83, ptr %19, align 4
  store i32 %81, ptr %82, align 4
  %84 = load i32, ptr %60, align 4
  %85 = shl i32 %84, 16
  %86 = load i32, ptr %65, align 4
  %87 = or i32 %85, %86
  %88 = load ptr, ptr %19, align 4
  %89 = getelementptr i32, ptr %88, i32 1
  store ptr %89, ptr %19, align 4
  store i32 %87, ptr %88, align 4
  %90 = load i32, ptr %51, align 4
  %91 = shl i32 %90, 16
  %92 = load i32, ptr %1, align 4
  %93 = and i32 %92, 65535
  %94 = or i32 %93, %91
  %95 = load ptr, ptr %19, align 4
  %96 = getelementptr i32, ptr %95, i32 1
  store ptr %96, ptr %19, align 4
  store i32 %94, ptr %95, align 4
  %97 = load i32, ptr %65, align 4
  %98 = add i32 %97, 7
  %99 = and i32 %98, -8
  %100 = load i32, ptr %60, align 4
  %101 = mul i32 %99, %100
  %102 = add i32 %101, 31
  %103 = icmp ult i32 %102, 32
  br i1 %103, label %134, label %104

104:                                              ; preds = %44
  %105 = lshr i32 %102, 5
  %106 = load ptr, ptr %19, align 4
  br label %107

107:                                              ; preds = %122, %104
  %108 = phi ptr [ %130, %122 ], [ %106, %104 ]
  %109 = phi i32 [ %132, %122 ], [ %105, %104 ]
  %110 = phi ptr [ %131, %122 ], [ %14, %104 ]
  %111 = tail call i32 @llvm.umin.i32(i32 %109, i32 128)
  %112 = add nuw nsw i32 %111, 1
  %113 = getelementptr i32, ptr %108, i32 %112
  %114 = load ptr, ptr %22, align 4
  %115 = icmp ult ptr %113, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %107
  %117 = load ptr, ptr %12, align 8
  %118 = tail call i32 %117(ptr noundef %12, i32 noundef %112) #4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %116
  %121 = load ptr, ptr %19, align 4
  br label %122

122:                                              ; preds = %120, %107
  %123 = phi ptr [ %121, %120 ], [ %108, %107 ]
  %124 = shl nuw nsw i32 %111, 18
  %125 = or i32 %124, 27648
  %126 = getelementptr i32, ptr %123, i32 1
  store ptr %126, ptr %19, align 4
  store i32 %125, ptr %123, align 4
  %127 = load ptr, ptr %19, align 4
  %128 = shl nuw nsw i32 %111, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %127, ptr align 4 %110, i32 %128, i1 false)
  %129 = load ptr, ptr %19, align 4
  %130 = getelementptr i32, ptr %129, i32 %111
  store ptr %130, ptr %19, align 4
  %131 = getelementptr i32, ptr %110, i32 %111
  %132 = sub i32 %109, %111
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %107

134:                                              ; preds = %122, %44
  %135 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  tail call void %136(ptr noundef %12) #4
  br label %137

137:                                              ; preds = %134, %116, %25, %2
  %138 = phi i32 [ 0, %134 ], [ -19, %2 ], [ %27, %25 ], [ %118, %116 ]
  ret i32 %138
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_fbcon_accel_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_fb_helper, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.anon.83, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 6
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %221 [
    i32 8, label %18
    i32 16, label %14
    i32 32, label %15
  ]

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 11, i32 1
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %221 [
    i32 0, label %18
    i32 8, label %18
  ]

18:                                               ; preds = %15, %15, %14, %1
  %19 = phi i32 [ 1, %14 ], [ 3, %1 ], [ 3, %15 ], [ 3, %15 ]
  %20 = phi i32 [ 4, %14 ], [ 1, %1 ], [ 6, %15 ], [ 6, %15 ]
  %21 = getelementptr inbounds %struct.nouveau_channel, ptr %9, i32 0, i32 17
  %22 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 1, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = icmp ugt i8 %23, 1
  %25 = select i1 %24, i32 98, i32 66
  %26 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 2
  %27 = tail call i32 @nvif_object_ctor(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef 98, i32 noundef %25, ptr noundef null, i32 noundef 0, ptr noundef %26) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %221

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 3
  %31 = tail call i32 @nvif_object_ctor(ptr noundef %21, ptr noundef nonnull @.str.1, i32 noundef 25, i32 noundef 25, ptr noundef null, i32 noundef 0, ptr noundef %30) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %221

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 4
  %35 = tail call i32 @nvif_object_ctor(ptr noundef %21, ptr noundef nonnull @.str.2, i32 noundef 67, i32 noundef 67, ptr noundef null, i32 noundef 0, ptr noundef %34) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %221

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 5
  %39 = tail call i32 @nvif_object_ctor(ptr noundef %21, ptr noundef nonnull @.str.3, i32 noundef 68, i32 noundef 68, ptr noundef null, i32 noundef 0, ptr noundef %38) #4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %221

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 6
  %43 = tail call i32 @nvif_object_ctor(ptr noundef %21, ptr noundef nonnull @.str.4, i32 noundef 74, i32 noundef 74, ptr noundef null, i32 noundef 0, ptr noundef %42) #4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %221

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 1, i32 2
  %47 = load i16, ptr %46, align 2
  %48 = icmp ugt i16 %47, 16
  %49 = select i1 %48, i32 159, i32 95
  %50 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 7
  %51 = tail call i32 @nvif_object_ctor(ptr noundef %21, ptr noundef nonnull @.str.5, i32 noundef 95, i32 noundef %49, ptr noundef null, i32 noundef 0, ptr noundef %50) #4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %221

53:                                               ; preds = %45
  %54 = load i16, ptr %46, align 2
  %55 = icmp ugt i16 %54, 16
  %56 = select i1 %55, i32 53, i32 49
  %57 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i32, ptr %58, i32 %56
  %60 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  %62 = icmp ult ptr %59, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %53
  %64 = load ptr, ptr %11, align 8
  %65 = tail call i32 %64(ptr noundef %11, i32 noundef %56) #4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load ptr, ptr %57, align 4
  br label %70

69:                                               ; preds = %63
  tail call void @nouveau_fbcon_gpu_lockup(ptr noundef %0) #4
  br label %221

70:                                               ; preds = %67, %53
  %71 = phi ptr [ %68, %67 ], [ %58, %53 ]
  %72 = getelementptr i32, ptr %71, i32 1
  store ptr %72, ptr %57, align 4
  store i32 262144, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 2, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %57, align 4
  %76 = getelementptr i32, ptr %75, i32 1
  store ptr %76, ptr %57, align 4
  store i32 %74, ptr %75, align 4
  %77 = load ptr, ptr %57, align 4
  %78 = getelementptr i32, ptr %77, i32 1
  store ptr %78, ptr %57, align 4
  store i32 524676, ptr %77, align 4
  %79 = getelementptr inbounds %struct.nouveau_channel, ptr %9, i32 0, i32 7, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %57, align 4
  %82 = getelementptr i32, ptr %81, i32 1
  store ptr %82, ptr %57, align 4
  store i32 %80, ptr %81, align 4
  %83 = load i32, ptr %79, align 4
  %84 = load ptr, ptr %57, align 4
  %85 = getelementptr i32, ptr %84, i32 1
  store ptr %85, ptr %57, align 4
  store i32 %83, ptr %84, align 4
  %86 = load ptr, ptr %57, align 4
  %87 = getelementptr i32, ptr %86, i32 1
  store ptr %87, ptr %57, align 4
  store i32 1049344, ptr %86, align 4
  %88 = load ptr, ptr %57, align 4
  %89 = getelementptr i32, ptr %88, i32 1
  store ptr %89, ptr %57, align 4
  store i32 %20, ptr %88, align 4
  %90 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 9
  %91 = load i32, ptr %90, align 4
  %92 = shl i32 %91, 16
  %93 = or i32 %92, %91
  %94 = load ptr, ptr %57, align 4
  %95 = getelementptr i32, ptr %94, i32 1
  store ptr %95, ptr %57, align 4
  store i32 %93, ptr %94, align 4
  %96 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 28
  %99 = load i32, ptr %98, align 4
  %100 = sub i32 %97, %99
  %101 = load ptr, ptr %57, align 4
  %102 = getelementptr i32, ptr %101, i32 1
  store ptr %102, ptr %57, align 4
  store i32 %100, ptr %101, align 4
  %103 = load i32, ptr %96, align 4
  %104 = load i32, ptr %98, align 4
  %105 = sub i32 %103, %104
  %106 = load ptr, ptr %57, align 4
  %107 = getelementptr i32, ptr %106, i32 1
  store ptr %107, ptr %57, align 4
  store i32 %105, ptr %106, align 4
  %108 = load ptr, ptr %57, align 4
  %109 = getelementptr i32, ptr %108, i32 1
  store ptr %109, ptr %57, align 4
  store i32 262144, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 4, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = load ptr, ptr %57, align 4
  %113 = getelementptr i32, ptr %112, i32 1
  store ptr %113, ptr %57, align 4
  store i32 %111, ptr %112, align 4
  %114 = load ptr, ptr %57, align 4
  %115 = getelementptr i32, ptr %114, i32 1
  store ptr %115, ptr %57, align 4
  store i32 262912, ptr %114, align 4
  %116 = load ptr, ptr %57, align 4
  %117 = getelementptr i32, ptr %116, i32 1
  store ptr %117, ptr %57, align 4
  store i32 85, ptr %116, align 4
  %118 = load ptr, ptr %57, align 4
  %119 = getelementptr i32, ptr %118, i32 1
  store ptr %119, ptr %57, align 4
  store i32 262144, ptr %118, align 4
  %120 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 5, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = load ptr, ptr %57, align 4
  %123 = getelementptr i32, ptr %122, i32 1
  store ptr %123, ptr %57, align 4
  store i32 %121, ptr %122, align 4
  %124 = load ptr, ptr %57, align 4
  %125 = getelementptr i32, ptr %124, i32 1
  store ptr %125, ptr %57, align 4
  store i32 2097920, ptr %124, align 4
  %126 = load ptr, ptr %57, align 4
  %127 = getelementptr i32, ptr %126, i32 1
  store ptr %127, ptr %57, align 4
  store i32 %19, ptr %126, align 4
  %128 = load ptr, ptr %57, align 4
  %129 = getelementptr i32, ptr %128, i32 1
  store ptr %129, ptr %57, align 4
  store i32 1, ptr %128, align 4
  %130 = load ptr, ptr %57, align 4
  %131 = getelementptr i32, ptr %130, i32 1
  store ptr %131, ptr %57, align 4
  store i32 0, ptr %130, align 4
  %132 = load ptr, ptr %57, align 4
  %133 = getelementptr i32, ptr %132, i32 1
  store ptr %133, ptr %57, align 4
  store i32 1, ptr %132, align 4
  %134 = load ptr, ptr %57, align 4
  %135 = getelementptr i32, ptr %134, i32 1
  store ptr %135, ptr %57, align 4
  store i32 -1, ptr %134, align 4
  %136 = load ptr, ptr %57, align 4
  %137 = getelementptr i32, ptr %136, i32 1
  store ptr %137, ptr %57, align 4
  store i32 -1, ptr %136, align 4
  %138 = load ptr, ptr %57, align 4
  %139 = getelementptr i32, ptr %138, i32 1
  store ptr %139, ptr %57, align 4
  store i32 -1, ptr %138, align 4
  %140 = load ptr, ptr %57, align 4
  %141 = getelementptr i32, ptr %140, i32 1
  store ptr %141, ptr %57, align 4
  store i32 -1, ptr %140, align 4
  %142 = load ptr, ptr %57, align 4
  %143 = getelementptr i32, ptr %142, i32 1
  store ptr %143, ptr %57, align 4
  store i32 262144, ptr %142, align 4
  %144 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 3, i32 3
  %145 = load i32, ptr %144, align 4
  %146 = load ptr, ptr %57, align 4
  %147 = getelementptr i32, ptr %146, i32 1
  store ptr %147, ptr %57, align 4
  store i32 %145, ptr %146, align 4
  %148 = load ptr, ptr %57, align 4
  %149 = getelementptr i32, ptr %148, i32 1
  store ptr %149, ptr %57, align 4
  store i32 525056, ptr %148, align 4
  %150 = load ptr, ptr %57, align 4
  %151 = getelementptr i32, ptr %150, i32 1
  store ptr %151, ptr %57, align 4
  store i32 0, ptr %150, align 4
  %152 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = shl i32 %153, 16
  %155 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = or i32 %154, %156
  %158 = load ptr, ptr %57, align 4
  %159 = getelementptr i32, ptr %158, i32 1
  store ptr %159, ptr %57, align 4
  store i32 %157, ptr %158, align 4
  %160 = load ptr, ptr %57, align 4
  %161 = getelementptr i32, ptr %160, i32 1
  store ptr %161, ptr %57, align 4
  store i32 278528, ptr %160, align 4
  %162 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 7, i32 3
  %163 = load i32, ptr %162, align 4
  %164 = load ptr, ptr %57, align 4
  %165 = getelementptr i32, ptr %164, i32 1
  store ptr %165, ptr %57, align 4
  store i32 %163, ptr %164, align 4
  %166 = load ptr, ptr %57, align 4
  %167 = getelementptr i32, ptr %166, i32 1
  store ptr %167, ptr %57, align 4
  store i32 278940, ptr %166, align 4
  %168 = load i32, ptr %73, align 4
  %169 = load ptr, ptr %57, align 4
  %170 = getelementptr i32, ptr %169, i32 1
  store ptr %170, ptr %57, align 4
  store i32 %168, ptr %169, align 4
  %171 = load ptr, ptr %57, align 4
  %172 = getelementptr i32, ptr %171, i32 1
  store ptr %172, ptr %57, align 4
  store i32 279292, ptr %171, align 4
  %173 = load ptr, ptr %57, align 4
  %174 = getelementptr i32, ptr %173, i32 1
  store ptr %174, ptr %57, align 4
  store i32 3, ptr %173, align 4
  %175 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 7, i32 4
  %176 = load i32, ptr %175, align 8
  %177 = icmp eq i32 %176, 159
  br i1 %177, label %178, label %187

178:                                              ; preds = %70
  %179 = load ptr, ptr %57, align 4
  %180 = getelementptr i32, ptr %179, i32 1
  store ptr %180, ptr %57, align 4
  store i32 803104, ptr %179, align 4
  %181 = load ptr, ptr %57, align 4
  %182 = getelementptr i32, ptr %181, i32 1
  store ptr %182, ptr %57, align 4
  store i32 0, ptr %181, align 4
  %183 = load ptr, ptr %57, align 4
  %184 = getelementptr i32, ptr %183, i32 1
  store ptr %184, ptr %57, align 4
  store i32 1, ptr %183, align 4
  %185 = load ptr, ptr %57, align 4
  %186 = getelementptr i32, ptr %185, i32 1
  store ptr %186, ptr %57, align 4
  store i32 2, ptr %185, align 4
  br label %187

187:                                              ; preds = %178, %70
  %188 = load ptr, ptr %57, align 4
  %189 = getelementptr i32, ptr %188, i32 1
  store ptr %189, ptr %57, align 4
  store i32 286720, ptr %188, align 4
  %190 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 6, i32 3
  %191 = load i32, ptr %190, align 4
  %192 = load ptr, ptr %57, align 4
  %193 = getelementptr i32, ptr %192, i32 1
  store ptr %193, ptr %57, align 4
  store i32 %191, ptr %192, align 4
  %194 = load ptr, ptr %57, align 4
  %195 = getelementptr i32, ptr %194, i32 1
  store ptr %195, ptr %57, align 4
  store i32 287128, ptr %194, align 4
  %196 = load i32, ptr %73, align 4
  %197 = load ptr, ptr %57, align 4
  %198 = getelementptr i32, ptr %197, i32 1
  store ptr %198, ptr %57, align 4
  store i32 %196, ptr %197, align 4
  %199 = load ptr, ptr %57, align 4
  %200 = getelementptr i32, ptr %199, i32 1
  store ptr %200, ptr %57, align 4
  store i32 549256, ptr %199, align 4
  %201 = load i32, ptr %120, align 4
  %202 = load ptr, ptr %57, align 4
  %203 = getelementptr i32, ptr %202, i32 1
  store ptr %203, ptr %57, align 4
  store i32 %201, ptr %202, align 4
  %204 = load i32, ptr %110, align 4
  %205 = load ptr, ptr %57, align 4
  %206 = getelementptr i32, ptr %205, i32 1
  store ptr %206, ptr %57, align 4
  store i32 %204, ptr %205, align 4
  %207 = load ptr, ptr %57, align 4
  %208 = getelementptr i32, ptr %207, i32 1
  store ptr %208, ptr %57, align 4
  store i32 287492, ptr %207, align 4
  %209 = load ptr, ptr %57, align 4
  %210 = getelementptr i32, ptr %209, i32 1
  store ptr %210, ptr %57, align 4
  store i32 1, ptr %209, align 4
  %211 = load ptr, ptr %57, align 4
  %212 = getelementptr i32, ptr %211, i32 1
  store ptr %212, ptr %57, align 4
  store i32 287488, ptr %211, align 4
  %213 = load ptr, ptr %57, align 4
  %214 = getelementptr i32, ptr %213, i32 1
  store ptr %214, ptr %57, align 4
  store i32 %19, ptr %213, align 4
  %215 = load ptr, ptr %57, align 4
  %216 = getelementptr i32, ptr %215, i32 1
  store ptr %216, ptr %57, align 4
  store i32 287484, ptr %215, align 4
  %217 = load ptr, ptr %57, align 4
  %218 = getelementptr i32, ptr %217, i32 1
  store ptr %218, ptr %57, align 4
  store i32 3, ptr %217, align 4
  %219 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  tail call void %220(ptr noundef %11) #4
  br label %221

221:                                              ; preds = %187, %69, %45, %41, %37, %33, %29, %18, %15, %1
  %222 = phi i32 [ 0, %69 ], [ 0, %187 ], [ -22, %15 ], [ -22, %1 ], [ %27, %18 ], [ %31, %29 ], [ %35, %33 ], [ %39, %37 ], [ %43, %41 ], [ %51, %45 ]
  ret i32 %222
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fbcon_gpu_lockup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
