; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nv50_fbcon.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nv50_fbcon.c"
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
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.nouveau_channel = type { %struct.anon.83, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.104, i8, ptr, %struct.anon.105, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.104 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.105 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.nouveau_fbdev = type { %struct.drm_fb_helper, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, ptr, %struct.mutex, i8 }
%struct.nouveau_vma = type { ptr, i32, %struct.list_head, i64, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"fbconTwoD\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_fbcon_fillrect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
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
  %13 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 5
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %21 [
    i32 2, label %15
    i32 4, label %15
  ]

15:                                               ; preds = %2, %2
  %16 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 26
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i32, ptr %17, i32 %19
  br label %23

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 4
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi ptr [ %20, %15 ], [ %22, %21 ]
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 7, i32 11
  %30 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i32, ptr %31, i32 %29
  %33 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = icmp ult ptr %32, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %23
  %37 = load ptr, ptr %12, align 8
  %38 = tail call i32 %37(ptr noundef %12, i32 noundef %29) #4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %36
  %41 = load i32, ptr %26, align 4
  br label %42

42:                                               ; preds = %40, %23
  %43 = phi i32 [ %41, %40 ], [ %27, %23 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %30, align 4
  %47 = getelementptr i32, ptr %46, i32 1
  store ptr %47, ptr %30, align 4
  store i32 287404, ptr %46, align 4
  %48 = load ptr, ptr %30, align 4
  %49 = getelementptr i32, ptr %48, i32 1
  store ptr %49, ptr %30, align 4
  store i32 1, ptr %48, align 4
  br label %50

50:                                               ; preds = %45, %42
  %51 = load ptr, ptr %30, align 4
  %52 = getelementptr i32, ptr %51, i32 1
  store ptr %52, ptr %30, align 4
  store i32 288136, ptr %51, align 4
  %53 = load ptr, ptr %30, align 4
  %54 = getelementptr i32, ptr %53, i32 1
  store ptr %54, ptr %30, align 4
  store i32 %25, ptr %53, align 4
  %55 = load ptr, ptr %30, align 4
  %56 = getelementptr i32, ptr %55, i32 1
  store ptr %56, ptr %30, align 4
  store i32 1074688, ptr %55, align 4
  %57 = load i32, ptr %1, align 4
  %58 = load ptr, ptr %30, align 4
  %59 = getelementptr i32, ptr %58, i32 1
  store ptr %59, ptr %30, align 4
  store i32 %57, ptr %58, align 4
  %60 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = load ptr, ptr %30, align 4
  %63 = getelementptr i32, ptr %62, i32 1
  store ptr %63, ptr %30, align 4
  store i32 %61, ptr %62, align 4
  %64 = load i32, ptr %1, align 4
  %65 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, %64
  %68 = load ptr, ptr %30, align 4
  %69 = getelementptr i32, ptr %68, i32 1
  store ptr %69, ptr %30, align 4
  store i32 %67, ptr %68, align 4
  %70 = load i32, ptr %60, align 4
  %71 = getelementptr inbounds %struct.fb_fillrect, ptr %1, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, %70
  %74 = load ptr, ptr %30, align 4
  %75 = getelementptr i32, ptr %74, i32 1
  store ptr %75, ptr %30, align 4
  store i32 %73, ptr %74, align 4
  %76 = load i32, ptr %26, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %50
  %79 = load ptr, ptr %30, align 4
  %80 = getelementptr i32, ptr %79, i32 1
  store ptr %80, ptr %30, align 4
  store i32 287404, ptr %79, align 4
  %81 = load ptr, ptr %30, align 4
  %82 = getelementptr i32, ptr %81, i32 1
  store ptr %82, ptr %30, align 4
  store i32 3, ptr %81, align 4
  br label %83

83:                                               ; preds = %78, %50
  %84 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  tail call void %85(ptr noundef %12) #4
  br label %86

86:                                               ; preds = %83, %36
  %87 = phi i32 [ 0, %83 ], [ %38, %36 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_fbcon_copyarea(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
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
  %15 = getelementptr i32, ptr %14, i32 12
  %16 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ult ptr %15, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load ptr, ptr %12, align 8
  %21 = tail call i32 %20(ptr noundef %12, i32 noundef 12) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  %24 = load ptr, ptr %13, align 4
  br label %25

25:                                               ; preds = %23, %2
  %26 = phi ptr [ %24, %23 ], [ %14, %2 ]
  %27 = getelementptr i32, ptr %26, i32 1
  store ptr %27, ptr %13, align 4
  store i32 286992, ptr %26, align 4
  %28 = load ptr, ptr %13, align 4
  %29 = getelementptr i32, ptr %28, i32 1
  store ptr %29, ptr %13, align 4
  store i32 0, ptr %28, align 4
  %30 = load ptr, ptr %13, align 4
  %31 = getelementptr i32, ptr %30, i32 1
  store ptr %31, ptr %13, align 4
  store i32 1075376, ptr %30, align 4
  %32 = load i32, ptr %1, align 4
  %33 = load ptr, ptr %13, align 4
  %34 = getelementptr i32, ptr %33, i32 1
  store ptr %34, ptr %13, align 4
  store i32 %32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fb_copyarea, ptr %1, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %13, align 4
  %38 = getelementptr i32, ptr %37, i32 1
  store ptr %38, ptr %13, align 4
  store i32 %36, ptr %37, align 4
  %39 = getelementptr inbounds %struct.fb_copyarea, ptr %1, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %13, align 4
  %42 = getelementptr i32, ptr %41, i32 1
  store ptr %42, ptr %13, align 4
  store i32 %40, ptr %41, align 4
  %43 = getelementptr inbounds %struct.fb_copyarea, ptr %1, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %13, align 4
  %46 = getelementptr i32, ptr %45, i32 1
  store ptr %46, ptr %13, align 4
  store i32 %44, ptr %45, align 4
  %47 = load ptr, ptr %13, align 4
  %48 = getelementptr i32, ptr %47, i32 1
  store ptr %48, ptr %13, align 4
  store i32 1075408, ptr %47, align 4
  %49 = load ptr, ptr %13, align 4
  %50 = getelementptr i32, ptr %49, i32 1
  store ptr %50, ptr %13, align 4
  store i32 0, ptr %49, align 4
  %51 = getelementptr inbounds %struct.fb_copyarea, ptr %1, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %13, align 4
  %54 = getelementptr i32, ptr %53, i32 1
  store ptr %54, ptr %13, align 4
  store i32 %52, ptr %53, align 4
  %55 = load ptr, ptr %13, align 4
  %56 = getelementptr i32, ptr %55, i32 1
  store ptr %56, ptr %13, align 4
  store i32 0, ptr %55, align 4
  %57 = getelementptr inbounds %struct.fb_copyarea, ptr %1, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %13, align 4
  %60 = getelementptr i32, ptr %59, i32 1
  store ptr %60, ptr %13, align 4
  store i32 %58, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  tail call void %62(ptr noundef %12) #4
  br label %63

63:                                               ; preds = %25, %19
  %64 = phi i32 [ 0, %25 ], [ %21, %19 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_fbcon_imageblit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
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
  %15 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 26
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 6
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %20, label %120

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 5
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %30 [
    i32 2, label %23
    i32 4, label %23
  ]

23:                                               ; preds = %20, %20
  %24 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i32, ptr %16, i32 %25
  %27 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i32, ptr %16, i32 %28
  br label %33

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 5
  %32 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = phi ptr [ %29, %23 ], [ %32, %30 ]
  %35 = phi ptr [ %26, %23 ], [ %31, %30 ]
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %34, align 4
  %38 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i32, ptr %39, i32 11
  %41 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = icmp ult ptr %40, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %33
  %45 = load ptr, ptr %12, align 8
  %46 = tail call i32 %45(ptr noundef %12, i32 noundef 11) #4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %120

48:                                               ; preds = %44
  %49 = load ptr, ptr %38, align 4
  br label %50

50:                                               ; preds = %48, %33
  %51 = phi ptr [ %49, %48 ], [ %39, %33 ]
  %52 = getelementptr i32, ptr %51, i32 1
  store ptr %52, ptr %38, align 4
  store i32 550932, ptr %51, align 4
  %53 = load ptr, ptr %38, align 4
  %54 = getelementptr i32, ptr %53, i32 1
  store ptr %54, ptr %38, align 4
  store i32 %36, ptr %53, align 4
  %55 = load ptr, ptr %38, align 4
  %56 = getelementptr i32, ptr %55, i32 1
  store ptr %56, ptr %38, align 4
  store i32 %37, ptr %55, align 4
  %57 = load ptr, ptr %38, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  store ptr %58, ptr %38, align 4
  store i32 550968, ptr %57, align 4
  %59 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %38, align 4
  %62 = getelementptr i32, ptr %61, i32 1
  store ptr %62, ptr %38, align 4
  store i32 %60, ptr %61, align 4
  %63 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %38, align 4
  %66 = getelementptr i32, ptr %65, i32 1
  store ptr %66, ptr %38, align 4
  store i32 %64, ptr %65, align 4
  %67 = load ptr, ptr %38, align 4
  %68 = getelementptr i32, ptr %67, i32 1
  store ptr %68, ptr %38, align 4
  store i32 1075280, ptr %67, align 4
  %69 = load ptr, ptr %38, align 4
  %70 = getelementptr i32, ptr %69, i32 1
  store ptr %70, ptr %38, align 4
  store i32 0, ptr %69, align 4
  %71 = load i32, ptr %1, align 4
  %72 = load ptr, ptr %38, align 4
  %73 = getelementptr i32, ptr %72, i32 1
  store ptr %73, ptr %38, align 4
  store i32 %71, ptr %72, align 4
  %74 = load ptr, ptr %38, align 4
  %75 = getelementptr i32, ptr %74, i32 1
  store ptr %75, ptr %38, align 4
  store i32 0, ptr %74, align 4
  %76 = getelementptr inbounds %struct.fb_image, ptr %1, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = load ptr, ptr %38, align 4
  %79 = getelementptr i32, ptr %78, i32 1
  store ptr %79, ptr %38, align 4
  store i32 %77, ptr %78, align 4
  %80 = load i32, ptr %59, align 4
  %81 = add i32 %80, 7
  %82 = and i32 %81, -8
  %83 = load i32, ptr %63, align 4
  %84 = mul i32 %82, %83
  %85 = add i32 %84, 31
  %86 = icmp ult i32 %85, 32
  br i1 %86, label %117, label %87

87:                                               ; preds = %50
  %88 = lshr i32 %85, 5
  %89 = load ptr, ptr %38, align 4
  br label %90

90:                                               ; preds = %105, %87
  %91 = phi ptr [ %114, %105 ], [ %89, %87 ]
  %92 = phi i32 [ %107, %105 ], [ %88, %87 ]
  %93 = phi ptr [ %115, %105 ], [ %14, %87 ]
  %94 = tail call i32 @llvm.umin.i32(i32 %92, i32 2047)
  %95 = add nuw nsw i32 %94, 1
  %96 = getelementptr i32, ptr %91, i32 %95
  %97 = load ptr, ptr %41, align 4
  %98 = icmp ult ptr %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %90
  %100 = load ptr, ptr %12, align 8
  %101 = tail call i32 %100(ptr noundef %12, i32 noundef %95) #4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %99
  %104 = load ptr, ptr %38, align 4
  br label %105

105:                                              ; preds = %103, %90
  %106 = phi ptr [ %104, %103 ], [ %91, %90 ]
  %107 = sub i32 %92, %94
  %108 = shl nuw nsw i32 %94, 18
  %109 = or i32 %108, 1073768544
  %110 = getelementptr i32, ptr %106, i32 1
  store ptr %110, ptr %38, align 4
  store i32 %109, ptr %106, align 4
  %111 = load ptr, ptr %38, align 4
  %112 = shl nuw nsw i32 %94, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %111, ptr align 4 %93, i32 %112, i1 false)
  %113 = load ptr, ptr %38, align 4
  %114 = getelementptr i32, ptr %113, i32 %94
  store ptr %114, ptr %38, align 4
  %115 = getelementptr i32, ptr %93, i32 %94
  %116 = icmp eq i32 %107, 0
  br i1 %116, label %117, label %90

117:                                              ; preds = %105, %50
  %118 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  tail call void %119(ptr noundef %12) #4
  br label %120

120:                                              ; preds = %117, %99, %44, %2
  %121 = phi i32 [ 0, %117 ], [ -19, %2 ], [ %46, %44 ], [ %101, %99 ]
  ret i32 %121
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_fbcon_accel_init(ptr noundef %0) local_unnamed_addr #0 {
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
  switch i32 %13, label %191 [
    i32 8, label %20
    i32 15, label %14
    i32 16, label %15
    i32 32, label %16
  ]

14:                                               ; preds = %1
  br label %20

15:                                               ; preds = %1
  br label %20

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 11, i32 1
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %191 [
    i32 0, label %20
    i32 8, label %20
    i32 2, label %19
  ]

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %19, %16, %16, %15, %14, %1
  %21 = phi i32 [ 209, %19 ], [ 232, %15 ], [ 248, %14 ], [ 243, %1 ], [ 230, %16 ], [ 230, %16 ]
  %22 = getelementptr inbounds %struct.nouveau_channel, ptr %9, i32 0, i32 17
  %23 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 8
  %24 = tail call i32 @nvif_object_ctor(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef 20525, i32 noundef 20525, ptr noundef null, i32 noundef 0, ptr noundef %23) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %191

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i32, ptr %28, i32 56
  %30 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ult ptr %29, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %11, align 8
  %35 = tail call i32 %34(ptr noundef %11, i32 noundef 56) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load ptr, ptr %27, align 4
  br label %40

39:                                               ; preds = %33
  tail call void @nouveau_fbcon_gpu_lockup(ptr noundef %0) #4
  br label %191

40:                                               ; preds = %37, %26
  %41 = phi ptr [ %38, %37 ], [ %28, %26 ]
  %42 = getelementptr i32, ptr %41, i32 1
  store ptr %42, ptr %27, align 4
  store i32 286720, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 8, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %27, align 4
  %46 = getelementptr i32, ptr %45, i32 1
  store ptr %46, ptr %27, align 4
  store i32 %44, ptr %45, align 4
  %47 = load ptr, ptr %27, align 4
  %48 = getelementptr i32, ptr %47, i32 1
  store ptr %48, ptr %27, align 4
  store i32 811396, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nouveau_channel, ptr %9, i32 0, i32 7, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %27, align 4
  %52 = getelementptr i32, ptr %51, i32 1
  store ptr %52, ptr %27, align 4
  store i32 %50, ptr %51, align 4
  %53 = load i32, ptr %49, align 4
  %54 = load ptr, ptr %27, align 4
  %55 = getelementptr i32, ptr %54, i32 1
  store ptr %55, ptr %27, align 4
  store i32 %53, ptr %54, align 4
  %56 = load i32, ptr %49, align 4
  %57 = load ptr, ptr %27, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  store ptr %58, ptr %27, align 4
  store i32 %56, ptr %57, align 4
  %59 = load ptr, ptr %27, align 4
  %60 = getelementptr i32, ptr %59, i32 1
  store ptr %60, ptr %27, align 4
  store i32 549376, ptr %59, align 4
  %61 = load ptr, ptr %27, align 4
  %62 = getelementptr i32, ptr %61, i32 1
  store ptr %62, ptr %27, align 4
  store i32 %21, ptr %61, align 4
  %63 = load ptr, ptr %27, align 4
  %64 = getelementptr i32, ptr %63, i32 1
  store ptr %64, ptr %27, align 4
  store i32 1, ptr %63, align 4
  %65 = load ptr, ptr %27, align 4
  %66 = getelementptr i32, ptr %65, i32 1
  store ptr %66, ptr %27, align 4
  store i32 1335828, ptr %65, align 4
  %67 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %27, align 4
  %70 = getelementptr i32, ptr %69, i32 1
  store ptr %70, ptr %27, align 4
  store i32 %68, ptr %69, align 4
  %71 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = load ptr, ptr %27, align 4
  %74 = getelementptr i32, ptr %73, i32 1
  store ptr %74, ptr %27, align 4
  store i32 %72, ptr %73, align 4
  %75 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = load ptr, ptr %27, align 4
  %78 = getelementptr i32, ptr %77, i32 1
  store ptr %78, ptr %27, align 4
  store i32 %76, ptr %77, align 4
  %79 = getelementptr inbounds %struct.nouveau_fbdev, ptr %3, i32 0, i32 9
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.nouveau_vma, ptr %80, i32 0, i32 3
  %82 = load i64, ptr %81, align 8
  %83 = lshr i64 %82, 32
  %84 = trunc i64 %83 to i32
  %85 = and i32 %84, 255
  %86 = load ptr, ptr %27, align 4
  %87 = getelementptr i32, ptr %86, i32 1
  store ptr %87, ptr %27, align 4
  store i32 %85, ptr %86, align 4
  %88 = load ptr, ptr %79, align 8
  %89 = getelementptr inbounds %struct.nouveau_vma, ptr %88, i32 0, i32 3
  %90 = load i64, ptr %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load ptr, ptr %27, align 4
  %93 = getelementptr i32, ptr %92, i32 1
  store ptr %93, ptr %27, align 4
  store i32 %91, ptr %92, align 4
  %94 = load ptr, ptr %27, align 4
  %95 = getelementptr i32, ptr %94, i32 1
  store ptr %95, ptr %27, align 4
  store i32 549424, ptr %94, align 4
  %96 = load ptr, ptr %27, align 4
  %97 = getelementptr i32, ptr %96, i32 1
  store ptr %97, ptr %27, align 4
  store i32 %21, ptr %96, align 4
  %98 = load ptr, ptr %27, align 4
  %99 = getelementptr i32, ptr %98, i32 1
  store ptr %99, ptr %27, align 4
  store i32 1, ptr %98, align 4
  %100 = load ptr, ptr %27, align 4
  %101 = getelementptr i32, ptr %100, i32 1
  store ptr %101, ptr %27, align 4
  store i32 1335876, ptr %100, align 4
  %102 = load i32, ptr %67, align 4
  %103 = load ptr, ptr %27, align 4
  %104 = getelementptr i32, ptr %103, i32 1
  store ptr %104, ptr %27, align 4
  store i32 %102, ptr %103, align 4
  %105 = load i32, ptr %71, align 4
  %106 = load ptr, ptr %27, align 4
  %107 = getelementptr i32, ptr %106, i32 1
  store ptr %107, ptr %27, align 4
  store i32 %105, ptr %106, align 4
  %108 = load i32, ptr %75, align 4
  %109 = load ptr, ptr %27, align 4
  %110 = getelementptr i32, ptr %109, i32 1
  store ptr %110, ptr %27, align 4
  store i32 %108, ptr %109, align 4
  %111 = load ptr, ptr %79, align 8
  %112 = getelementptr inbounds %struct.nouveau_vma, ptr %111, i32 0, i32 3
  %113 = load i64, ptr %112, align 8
  %114 = lshr i64 %113, 32
  %115 = trunc i64 %114 to i32
  %116 = and i32 %115, 255
  %117 = load ptr, ptr %27, align 4
  %118 = getelementptr i32, ptr %117, i32 1
  store ptr %118, ptr %27, align 4
  store i32 %116, ptr %117, align 4
  %119 = load ptr, ptr %79, align 8
  %120 = getelementptr inbounds %struct.nouveau_vma, ptr %119, i32 0, i32 3
  %121 = load i64, ptr %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load ptr, ptr %27, align 4
  %124 = getelementptr i32, ptr %123, i32 1
  store ptr %124, ptr %27, align 4
  store i32 %122, ptr %123, align 4
  %125 = load ptr, ptr %27, align 4
  %126 = getelementptr i32, ptr %125, i32 1
  store ptr %126, ptr %27, align 4
  store i32 287376, ptr %125, align 4
  %127 = load ptr, ptr %27, align 4
  %128 = getelementptr i32, ptr %127, i32 1
  store ptr %128, ptr %27, align 4
  store i32 0, ptr %127, align 4
  %129 = load ptr, ptr %27, align 4
  %130 = getelementptr i32, ptr %129, i32 1
  store ptr %130, ptr %27, align 4
  store i32 287392, ptr %129, align 4
  %131 = load ptr, ptr %27, align 4
  %132 = getelementptr i32, ptr %131, i32 1
  store ptr %132, ptr %27, align 4
  store i32 85, ptr %131, align 4
  %133 = load ptr, ptr %27, align 4
  %134 = getelementptr i32, ptr %133, i32 1
  store ptr %134, ptr %27, align 4
  store i32 287404, ptr %133, align 4
  %135 = load ptr, ptr %27, align 4
  %136 = getelementptr i32, ptr %135, i32 1
  store ptr %136, ptr %27, align 4
  store i32 3, ptr %135, align 4
  %137 = load ptr, ptr %27, align 4
  %138 = getelementptr i32, ptr %137, i32 1
  store ptr %138, ptr %27, align 4
  store i32 549608, ptr %137, align 4
  %139 = load ptr, ptr %27, align 4
  %140 = getelementptr i32, ptr %139, i32 1
  store ptr %140, ptr %27, align 4
  store i32 2, ptr %139, align 4
  %141 = load ptr, ptr %27, align 4
  %142 = getelementptr i32, ptr %141, i32 1
  store ptr %142, ptr %27, align 4
  store i32 1, ptr %141, align 4
  %143 = load ptr, ptr %27, align 4
  %144 = getelementptr i32, ptr %143, i32 1
  store ptr %144, ptr %27, align 4
  store i32 550272, ptr %143, align 4
  %145 = load ptr, ptr %27, align 4
  %146 = getelementptr i32, ptr %145, i32 1
  store ptr %146, ptr %27, align 4
  store i32 4, ptr %145, align 4
  %147 = load ptr, ptr %27, align 4
  %148 = getelementptr i32, ptr %147, i32 1
  store ptr %148, ptr %27, align 4
  store i32 %21, ptr %147, align 4
  %149 = load ptr, ptr %27, align 4
  %150 = getelementptr i32, ptr %149, i32 1
  store ptr %150, ptr %27, align 4
  store i32 1337344, ptr %149, align 4
  %151 = load ptr, ptr %27, align 4
  %152 = getelementptr i32, ptr %151, i32 1
  store ptr %152, ptr %27, align 4
  store i32 1, ptr %151, align 4
  %153 = load ptr, ptr %27, align 4
  %154 = getelementptr i32, ptr %153, i32 1
  store ptr %154, ptr %27, align 4
  store i32 %21, ptr %153, align 4
  %155 = load ptr, ptr %27, align 4
  %156 = getelementptr i32, ptr %155, i32 1
  store ptr %156, ptr %27, align 4
  store i32 0, ptr %155, align 4
  %157 = load ptr, ptr %27, align 4
  %158 = getelementptr i32, ptr %157, i32 1
  store ptr %158, ptr %27, align 4
  store i32 0, ptr %157, align 4
  %159 = load ptr, ptr %27, align 4
  %160 = getelementptr i32, ptr %159, i32 1
  store ptr %160, ptr %27, align 4
  store i32 1, ptr %159, align 4
  %161 = load ptr, ptr %27, align 4
  %162 = getelementptr i32, ptr %161, i32 1
  store ptr %162, ptr %27, align 4
  store i32 288796, ptr %161, align 4
  %163 = load ptr, ptr %27, align 4
  %164 = getelementptr i32, ptr %163, i32 1
  store ptr %164, ptr %27, align 4
  store i32 1, ptr %163, align 4
  %165 = load ptr, ptr %27, align 4
  %166 = getelementptr i32, ptr %165, i32 1
  store ptr %166, ptr %27, align 4
  store i32 1075264, ptr %165, align 4
  %167 = load ptr, ptr %27, align 4
  %168 = getelementptr i32, ptr %167, i32 1
  store ptr %168, ptr %27, align 4
  store i32 0, ptr %167, align 4
  %169 = load ptr, ptr %27, align 4
  %170 = getelementptr i32, ptr %169, i32 1
  store ptr %170, ptr %27, align 4
  store i32 1, ptr %169, align 4
  %171 = load ptr, ptr %27, align 4
  %172 = getelementptr i32, ptr %171, i32 1
  store ptr %172, ptr %27, align 4
  store i32 0, ptr %171, align 4
  %173 = load ptr, ptr %27, align 4
  %174 = getelementptr i32, ptr %173, i32 1
  store ptr %174, ptr %27, align 4
  store i32 1, ptr %173, align 4
  %175 = load ptr, ptr %27, align 4
  %176 = getelementptr i32, ptr %175, i32 1
  store ptr %176, ptr %27, align 4
  store i32 288904, ptr %175, align 4
  %177 = load ptr, ptr %27, align 4
  %178 = getelementptr i32, ptr %177, i32 1
  store ptr %178, ptr %27, align 4
  store i32 1, ptr %177, align 4
  %179 = load ptr, ptr %27, align 4
  %180 = getelementptr i32, ptr %179, i32 1
  store ptr %180, ptr %27, align 4
  store i32 1075392, ptr %179, align 4
  %181 = load ptr, ptr %27, align 4
  %182 = getelementptr i32, ptr %181, i32 1
  store ptr %182, ptr %27, align 4
  store i32 0, ptr %181, align 4
  %183 = load ptr, ptr %27, align 4
  %184 = getelementptr i32, ptr %183, i32 1
  store ptr %184, ptr %27, align 4
  store i32 1, ptr %183, align 4
  %185 = load ptr, ptr %27, align 4
  %186 = getelementptr i32, ptr %185, i32 1
  store ptr %186, ptr %27, align 4
  store i32 0, ptr %185, align 4
  %187 = load ptr, ptr %27, align 4
  %188 = getelementptr i32, ptr %187, i32 1
  store ptr %188, ptr %27, align 4
  store i32 1, ptr %187, align 4
  %189 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  tail call void %190(ptr noundef %11) #4
  br label %191

191:                                              ; preds = %40, %39, %20, %16, %1
  %192 = phi i32 [ %35, %39 ], [ 0, %40 ], [ -22, %16 ], [ -22, %1 ], [ %24, %20 ]
  ret i32 %192
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
