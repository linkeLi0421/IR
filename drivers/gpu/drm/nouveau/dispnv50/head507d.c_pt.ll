; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/head507d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/head507d.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_head = type { ptr, %struct.nouveau_crtc, %struct.nv50_crc, %struct.nv50_lut, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.104, %struct.anon.105, %struct.anon.106, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
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
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.104 = type { i32, i8, i32, i32 }
%struct.anon.105 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.106 = type { i32 }
%struct.nv50_crc = type { %struct.spinlock, [2 x %struct.nv50_crc_notifier_ctx], %struct.drm_vblank_work, i32, i64, i16, i16, i8 }
%struct.nv50_crc_notifier_ctx = type { %struct.nvif_mem, %struct.nvif_object }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.103 }
%struct.anon.103 = type { ptr, i64 }
%struct.drm_vblank_work = type { %struct.kthread_work, ptr, i64, i32, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.77, ptr, i32, ptr, i8, i32 }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.77 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.112, %struct.anon.113, %struct.anon.115, ptr, %struct.anon.116, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.117, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.129 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.112 = type { ptr, i32, i32, i8 }
%struct.anon.113 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.114] }
%struct.anon.114 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.115 = type { i64, i64 }
%struct.anon.116 = type { i32, i64 }
%struct.anon.117 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.124, %struct.anon.125, %struct.anon.126, %struct.anon.127 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.118, i8 }
%union.anon.118 = type { %struct.anon.122 }
%struct.anon.122 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.124 = type { i32 }
%struct.anon.125 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.126 = type { i16, i16 }
%struct.anon.127 = type { i16, i16, i16, %struct.anon.128, i16 }
%struct.anon.128 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.129 = type { ptr, %struct.mutex, i8 }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.78, %struct.anon.79, %struct.nv50_head_mode, %struct.anon.82, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, %struct.anon.87, %struct.anon.88, %struct.anon.90, %struct.nv50_crc_atom, %struct.anon.91, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.anon.78 = type { i32, i32, i32 }
%struct.anon.79 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.80, %struct.anon.81 }
%struct.anon.80 = type { i16, i16, i16, i16 }
%struct.anon.81 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.82 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.83 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.84 = type { i8, i32, [6 x i8], i8 }
%struct.anon.85 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.86 = type { i8 }
%struct.anon.87 = type { i8 }
%struct.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i16, i16 }
%struct.anon.90 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.91 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.92 }
%struct.anon.92 = type { i16 }
%struct.nv50_wndw_atom = type { %struct.drm_plane_state, ptr, i8, %struct.anon.93, %struct.anon.94, [4 x i8], %struct.anon.95, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %union.nv50_wndw_atom_mask, %union.nv50_wndw_atom_mask }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.anon.93 = type { i32, i16 }
%struct.anon.94 = type { i32, i16, i32, i32 }
%struct.anon.95 = type { i32, [4 x i8], %struct.anon.96 }
%struct.anon.96 = type { [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.97 = type { [12 x i32], i8 }
%struct.anon.98 = type { i8, i8, i16, [3 x i16], [3 x i32], i16, i16, [6 x i32], [6 x i64] }
%struct.anon.99 = type { i16, i16, i16, i16, i16, i16 }
%struct.anon.100 = type { i16, i16 }
%struct.anon.101 = type { i8, i8, i8 }
%union.nv50_wndw_atom_mask = type { %struct.anon.102 }
%struct.anon.102 = type { i8 }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/head507d.c\00", align 1
@head507d = dso_local local_unnamed_addr constant %struct.nv50_head_func { ptr @head507d_view, ptr @head507d_mode, ptr @head507d_olut, ptr null, i8 0, i32 256, ptr @head507d_olut_set, ptr @head507d_olut_clr, ptr @head507d_core_calc, ptr @head507d_core_set, ptr @head507d_core_clr, ptr @head507d_curs_layout, ptr @head507d_curs_format, ptr @head507d_curs_set, ptr @head507d_curs_clr, ptr @head507d_base, ptr @head507d_ovly, ptr @head507d_dither, ptr @head507d_procamp, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head507d_procamp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nv50_core, ptr %11, i32 0, i32 1, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i32, ptr %17, i32 2
  %19 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %13, align 8
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 2) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = shl i32 %15, 10
  %31 = add i32 %30, 2216
  %32 = and i32 %31, 3240
  %33 = or i32 %32, 262144
  %34 = getelementptr i32, ptr %29, i32 1
  store ptr %34, ptr %16, align 4
  store i32 %33, ptr %29, align 4
  %35 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 10
  %36 = load i16, ptr %35, align 4
  %37 = and i16 %36, 4095
  %38 = zext i16 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 10, i32 0, i32 1
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = shl i32 %42, 20
  %44 = or i32 %39, %43
  %45 = load ptr, ptr %16, align 4
  %46 = getelementptr i32, ptr %45, i32 1
  store ptr %46, ptr %16, align 4
  store i32 %44, ptr %45, align 4
  br label %47

47:                                               ; preds = %28, %22
  %48 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head507d_dither(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nv50_core, ptr %11, i32 0, i32 1, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i32, ptr %17, i32 2
  %19 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %13, align 8
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 2) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = shl i32 %15, 10
  %31 = add i32 %30, 2208
  %32 = and i32 %31, 3232
  %33 = or i32 %32, 262144
  %34 = getelementptr i32, ptr %29, i32 1
  store ptr %34, ptr %16, align 4
  store i32 %33, ptr %29, align 4
  %35 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 9
  %36 = load i8, ptr %35, align 1
  %37 = and i8 %36, 127
  %38 = zext i8 %37 to i32
  %39 = load ptr, ptr %16, align 4
  %40 = getelementptr i32, ptr %39, i32 1
  store ptr %40, ptr %16, align 4
  store i32 %38, ptr %39, align 4
  br label %41

41:                                               ; preds = %28, %22
  %42 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head507d_ovly(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nv50_core, ptr %11, i32 0, i32 1, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 8
  %17 = load i8, ptr %16, align 2
  switch i8 %17, label %19 [
    i8 0, label %20
    i8 4, label %21
    i8 2, label %18
  ]

18:                                               ; preds = %2
  br label %21

19:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef null) #5
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %19, %18, %2
  %22 = phi i32 [ 256, %20 ], [ 1, %19 ], [ 257, %18 ], [ 769, %2 ]
  %23 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i32, ptr %24, i32 2
  %26 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = icmp ult ptr %25, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %21
  %30 = load ptr, ptr %13, align 8
  %31 = tail call i32 %30(ptr noundef %13, i32 noundef 2) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load ptr, ptr %23, align 4
  br label %35

35:                                               ; preds = %33, %21
  %36 = phi ptr [ %34, %33 ], [ %24, %21 ]
  %37 = shl i32 %15, 10
  %38 = add i32 %37, 2304
  %39 = and i32 %38, 3328
  %40 = or i32 %39, 262144
  %41 = getelementptr i32, ptr %36, i32 1
  store ptr %41, ptr %23, align 4
  store i32 %40, ptr %36, align 4
  %42 = load ptr, ptr %23, align 4
  %43 = getelementptr i32, ptr %42, i32 1
  store ptr %43, ptr %23, align 4
  store i32 %22, ptr %42, align 4
  br label %44

44:                                               ; preds = %35, %29
  %45 = phi i32 [ 0, %35 ], [ %31, %29 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head507d_base(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nv50_core, ptr %11, i32 0, i32 1, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 7, i32 1
  %17 = load i8, ptr %16, align 1
  switch i8 %17, label %21 [
    i8 0, label %24
    i8 8, label %22
    i8 4, label %18
    i8 2, label %19
    i8 1, label %20
  ]

18:                                               ; preds = %2
  br label %22

19:                                               ; preds = %2
  br label %22

20:                                               ; preds = %2
  br label %22

21:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #5
  br label %22

22:                                               ; preds = %21, %20, %19, %18, %2
  %23 = phi i32 [ 1, %21 ], [ 1, %20 ], [ 257, %19 ], [ 769, %18 ], [ 1281, %2 ]
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i32 [ %23, %22 ], [ 0, %2 ]
  %26 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i32, ptr %27, i32 2
  %29 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp ult ptr %28, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %13, align 8
  %34 = tail call i32 %33(ptr noundef %13, i32 noundef 2) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load ptr, ptr %26, align 4
  br label %38

38:                                               ; preds = %36, %24
  %39 = phi ptr [ %37, %36 ], [ %27, %24 ]
  %40 = shl i32 %15, 10
  %41 = add i32 %40, 2304
  %42 = and i32 %41, 3328
  %43 = or i32 %42, 262144
  %44 = getelementptr i32, ptr %39, i32 1
  store ptr %44, ptr %26, align 4
  store i32 %43, ptr %39, align 4
  %45 = load ptr, ptr %26, align 4
  %46 = getelementptr i32, ptr %45, i32 1
  store ptr %46, ptr %26, align 4
  store i32 %25, ptr %45, align 4
  br label %47

47:                                               ; preds = %38, %32
  %48 = phi i32 [ 0, %38 ], [ %34, %32 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head507d_curs_format(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, -49
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 6, i32 3
  store i8 1, ptr %8, align 2
  br label %10

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef null) #5
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ 0, %7 ], [ -22, %9 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @head507d_curs_layout(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 5
  %5 = load i16, ptr %4, align 8
  switch i16 %5, label %15 [
    i16 32, label %6
    i16 64, label %10
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 6, i32 2
  %8 = load i48, ptr %7, align 8
  %9 = and i48 %8, -3298534883329
  store i48 %9, ptr %7, align 8
  br label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 6, i32 2
  %12 = load i48, ptr %11, align 8
  %13 = and i48 %12, -3298534883329
  %14 = or i48 %13, 1099511627776
  store i48 %14, ptr %11, align 8
  br label %15

15:                                               ; preds = %10, %6, %3
  %16 = phi i32 [ -22, %3 ], [ 0, %10 ], [ 0, %6 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head507d_core_clr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nv50_disp, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nv50_core, ptr %10, i32 0, i32 1, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i32, ptr %16, i32 2
  %18 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ult ptr %17, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load ptr, ptr %12, align 8
  %23 = tail call i32 %22(ptr noundef %12, i32 noundef 2) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load ptr, ptr %15, align 4
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi ptr [ %26, %25 ], [ %16, %1 ]
  %29 = shl i32 %14, 10
  %30 = add i32 %29, 2164
  %31 = and i32 %30, 3188
  %32 = or i32 %31, 262144
  %33 = getelementptr i32, ptr %28, i32 1
  store ptr %33, ptr %15, align 4
  store i32 %32, ptr %28, align 4
  %34 = load ptr, ptr %15, align 4
  %35 = getelementptr i32, ptr %34, i32 1
  store ptr %35, ptr %15, align 4
  store i32 0, ptr %34, align 4
  br label %36

36:                                               ; preds = %27, %21
  %37 = phi i32 [ 0, %27 ], [ %23, %21 ]
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @head507d_core_calc(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 7, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5
  %14 = zext i1 %12 to i8
  store i8 %14, ptr %13, align 8
  br i1 %12, label %15, label %28

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 7, i32 2
  %17 = load i16, ptr %16, align 2
  %18 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 6
  store i16 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 7, i32 3
  %20 = load i16, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 7
  store i16 %20, ptr %21, align 2
  %22 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 7, i32 4
  %23 = load i16, ptr %22, align 2
  %24 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 8
  store i16 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 7, i32 5
  %26 = load i16, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 9
  store i16 %26, ptr %27, align 2
  br label %49

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 8
  %30 = load i8, ptr %29, align 2
  %31 = icmp ne i8 %30, 0
  %32 = zext i1 %31 to i8
  store i8 %32, ptr %13, align 8
  br i1 %31, label %40, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 6
  %35 = load i8, ptr %34, align 8, !range !8
  %36 = icmp eq i8 %35, 0
  store i8 %35, ptr %13, align 8
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 8
  %39 = load i16, ptr %38, align 8
  br label %49

40:                                               ; preds = %33, %28
  %41 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 6
  store i16 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 7
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 1
  %44 = load i16, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 8
  store i16 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 6
  %47 = load i16, ptr %46, align 2
  %48 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 9
  store i16 %47, ptr %48, align 2
  br label %49

49:                                               ; preds = %40, %37, %15
  %50 = phi i16 [ %39, %37 ], [ %44, %40 ], [ %23, %15 ]
  %51 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nv50_core, ptr %52, i32 0, i32 1, i32 5, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 1
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 2
  store i40 0, ptr %56, align 8
  %57 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 3
  store i8 -49, ptr %57, align 1
  %58 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 4
  %59 = load i16, ptr %58, align 2
  %60 = and i16 %59, -4096
  %61 = or i16 %60, 128
  store i16 %61, ptr %58, align 2
  %62 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 5
  %63 = zext i16 %50 to i32
  %64 = shl nuw nsw i32 %63, 14
  %65 = add nuw nsw i32 %64, 1032192
  %66 = and i32 %65, 2146435072
  store i32 %66, ptr %62, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @head507d_olut(ptr nocapture readnone %0, ptr nocapture noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 256
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 7, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 1
  %9 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 2
  %10 = load i48, ptr %9, align 8
  %11 = and i48 %10, -32985348833281
  %12 = or i48 %11, 2199023255552
  %13 = select i1 %8, i48 %11, i48 %12
  store i48 %13, ptr %9, align 8
  %14 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 4
  store ptr @head507d_olut_load, ptr %14, align 8
  br label %15

15:                                               ; preds = %5, %3
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @head507d_olut_load(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %38, label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %35, %5 ], [ %0, %3 ]
  %7 = phi i32 [ %9, %5 ], [ %1, %3 ]
  %8 = phi ptr [ %36, %5 ], [ %2, %3 ]
  %9 = add i32 %7, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %10 = load i16, ptr %6, align 2
  %11 = zext i16 %10 to i32
  %12 = add nuw nsw i32 %11, 16
  %13 = lshr i32 %12, 5
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 2047) #5
  %15 = trunc i32 %14 to i16
  %16 = shl nuw nsw i16 %15, 3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %16) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %17 = getelementptr inbounds %struct.drm_color_lut, ptr %6, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = add nuw nsw i32 %19, 16
  %21 = lshr i32 %20, 5
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 2047) #5
  %23 = trunc i32 %22 to i16
  %24 = shl nuw nsw i16 %23, 3
  %25 = getelementptr i8, ptr %8, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 %24) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %26 = getelementptr inbounds %struct.drm_color_lut, ptr %6, i32 0, i32 2
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = add nuw nsw i32 %28, 16
  %30 = lshr i32 %29, 5
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 2047) #5
  %32 = trunc i32 %31 to i16
  %33 = shl nuw nsw i16 %32, 3
  %34 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %34, i16 %33) #5, !srcloc !10
  %35 = getelementptr %struct.drm_color_lut, ptr %6, i32 1
  %36 = getelementptr i8, ptr %8, i32 8
  %37 = icmp eq i32 %9, 0
  br i1 %37, label %38, label %5

38:                                               ; preds = %5, %3
  %39 = phi ptr [ %2, %3 ], [ %36, %5 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %40 = getelementptr i8, ptr %39, i32 -8
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %40) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 %41) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %42 = getelementptr i8, ptr %39, i32 -6
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %42) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %44 = getelementptr i8, ptr %39, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %44, i16 %43) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %45 = getelementptr i8, ptr %39, i32 -4
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %45) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %47 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %47, i16 %46) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head507d_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nv50_core, ptr %11, i32 0, i32 1, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i32, ptr %17, i32 13
  %19 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %13, align 8
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 13) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %126

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3
  %31 = shl i32 %15, 10
  %32 = add i32 %31, 2052
  %33 = and i32 %32, 3076
  %34 = or i32 %33, 524288
  %35 = getelementptr i32, ptr %29, i32 1
  store ptr %35, ptr %16, align 4
  store i32 %34, ptr %29, align 4
  %36 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 4194303
  %39 = or i32 %38, 8388608
  %40 = load ptr, ptr %16, align 4
  %41 = getelementptr i32, ptr %40, i32 1
  store ptr %41, ptr %16, align 4
  store i32 %39, ptr %40, align 4
  %42 = load i8, ptr %30, align 4, !range !8
  %43 = shl nuw nsw i8 %42, 1
  %44 = zext i8 %43 to i32
  %45 = load ptr, ptr %16, align 4
  %46 = getelementptr i32, ptr %45, i32 1
  store ptr %46, ptr %16, align 4
  store i32 %44, ptr %45, align 4
  %47 = add i32 %31, 2064
  %48 = and i32 %47, 3088
  %49 = or i32 %48, 1835008
  %50 = load ptr, ptr %16, align 4
  %51 = getelementptr i32, ptr %50, i32 1
  store ptr %51, ptr %16, align 4
  store i32 %49, ptr %50, align 4
  %52 = load ptr, ptr %16, align 4
  %53 = getelementptr i32, ptr %52, i32 1
  store ptr %53, ptr %16, align 4
  store i32 0, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 2
  %55 = load i16, ptr %54, align 4
  %56 = and i16 %55, 32767
  %57 = zext i16 %56 to i32
  %58 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %59, 16
  %61 = and i32 %60, 2147418112
  %62 = or i32 %61, %57
  %63 = load ptr, ptr %16, align 4
  %64 = getelementptr i32, ptr %63, i32 1
  store ptr %64, ptr %16, align 4
  store i32 %62, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 2, i32 1
  %66 = load i16, ptr %65, align 2
  %67 = and i16 %66, 32767
  %68 = zext i16 %67 to i32
  %69 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 1
  %70 = load i16, ptr %69, align 4
  %71 = and i16 %70, 32767
  %72 = zext i16 %71 to i32
  %73 = shl nuw nsw i32 %72, 16
  %74 = or i32 %73, %68
  %75 = load ptr, ptr %16, align 4
  %76 = getelementptr i32, ptr %75, i32 1
  store ptr %76, ptr %16, align 4
  store i32 %74, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 2, i32 2
  %78 = load i16, ptr %77, align 4
  %79 = and i16 %78, 32767
  %80 = zext i16 %79 to i32
  %81 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 2
  %82 = load i16, ptr %81, align 2
  %83 = and i16 %82, 32767
  %84 = zext i16 %83 to i32
  %85 = shl nuw nsw i32 %84, 16
  %86 = or i32 %85, %80
  %87 = load ptr, ptr %16, align 4
  %88 = getelementptr i32, ptr %87, i32 1
  store ptr %88, ptr %16, align 4
  store i32 %86, ptr %87, align 4
  %89 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 2, i32 3
  %90 = load i16, ptr %89, align 2
  %91 = and i16 %90, 32767
  %92 = zext i16 %91 to i32
  %93 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 3
  %94 = load i16, ptr %93, align 4
  %95 = and i16 %94, 32767
  %96 = zext i16 %95 to i32
  %97 = shl nuw nsw i32 %96, 16
  %98 = or i32 %97, %92
  %99 = load ptr, ptr %16, align 4
  %100 = getelementptr i32, ptr %99, i32 1
  store ptr %100, ptr %16, align 4
  store i32 %98, ptr %99, align 4
  %101 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 4
  %102 = load i16, ptr %101, align 2
  %103 = and i16 %102, 32767
  %104 = zext i16 %103 to i32
  %105 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 5
  %106 = load i16, ptr %105, align 4
  %107 = and i16 %106, 32767
  %108 = zext i16 %107 to i32
  %109 = shl nuw nsw i32 %108, 16
  %110 = or i32 %109, %104
  %111 = load ptr, ptr %16, align 4
  %112 = getelementptr i32, ptr %111, i32 1
  store ptr %112, ptr %16, align 4
  store i32 %110, ptr %111, align 4
  %113 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 6
  %114 = load i16, ptr %113, align 2
  %115 = and i16 %114, 4095
  %116 = zext i16 %115 to i32
  %117 = load ptr, ptr %16, align 4
  %118 = getelementptr i32, ptr %117, i32 1
  store ptr %118, ptr %16, align 4
  store i32 %116, ptr %117, align 4
  %119 = add i32 %31, 2092
  %120 = and i32 %119, 3116
  %121 = or i32 %120, 262144
  %122 = load ptr, ptr %16, align 4
  %123 = getelementptr i32, ptr %122, i32 1
  store ptr %123, ptr %16, align 4
  store i32 %121, ptr %122, align 4
  %124 = load ptr, ptr %16, align 4
  %125 = getelementptr i32, ptr %124, i32 1
  store ptr %125, ptr %16, align 4
  store i32 0, ptr %124, align 4
  br label %126

126:                                              ; preds = %28, %22
  %127 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head507d_view(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nv50_core, ptr %11, i32 0, i32 1, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i32, ptr %17, i32 7
  %19 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %13, align 8
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 7) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %81

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = shl i32 %15, 10
  %31 = add i32 %30, 2212
  %32 = and i32 %31, 3236
  %33 = or i32 %32, 262144
  %34 = getelementptr i32, ptr %29, i32 1
  store ptr %34, ptr %16, align 4
  store i32 %33, ptr %29, align 4
  %35 = load ptr, ptr %16, align 4
  %36 = getelementptr i32, ptr %35, i32 1
  store ptr %36, ptr %16, align 4
  store i32 0, ptr %35, align 4
  %37 = add i32 %30, 2248
  %38 = and i32 %37, 3272
  %39 = or i32 %38, 262144
  %40 = load ptr, ptr %16, align 4
  %41 = getelementptr i32, ptr %40, i32 1
  store ptr %41, ptr %16, align 4
  store i32 %39, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 2
  %43 = load i16, ptr %42, align 8
  %44 = and i16 %43, 32767
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 2, i32 1
  %47 = load i16, ptr %46, align 2
  %48 = and i16 %47, 32767
  %49 = zext i16 %48 to i32
  %50 = shl nuw nsw i32 %49, 16
  %51 = or i32 %50, %45
  %52 = load ptr, ptr %16, align 4
  %53 = getelementptr i32, ptr %52, i32 1
  store ptr %53, ptr %16, align 4
  store i32 %51, ptr %52, align 4
  %54 = add i32 %30, 2264
  %55 = and i32 %54, 3288
  %56 = or i32 %55, 524288
  %57 = load ptr, ptr %16, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  store ptr %58, ptr %16, align 4
  store i32 %56, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 2, i32 2
  %60 = load i16, ptr %59, align 4
  %61 = and i16 %60, 32767
  %62 = zext i16 %61 to i32
  %63 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 2, i32 3
  %64 = load i16, ptr %63, align 2
  %65 = and i16 %64, 32767
  %66 = zext i16 %65 to i32
  %67 = shl nuw nsw i32 %66, 16
  %68 = or i32 %67, %62
  %69 = load ptr, ptr %16, align 4
  %70 = getelementptr i32, ptr %69, i32 1
  store ptr %70, ptr %16, align 4
  store i32 %68, ptr %69, align 4
  %71 = load i16, ptr %59, align 4
  %72 = and i16 %71, 32767
  %73 = zext i16 %72 to i32
  %74 = load i16, ptr %63, align 2
  %75 = and i16 %74, 32767
  %76 = zext i16 %75 to i32
  %77 = shl nuw nsw i32 %76, 16
  %78 = or i32 %77, %73
  %79 = load ptr, ptr %16, align 4
  %80 = getelementptr i32, ptr %79, i32 1
  store ptr %80, ptr %16, align 4
  store i32 %78, ptr %79, align 4
  br label %81

81:                                               ; preds = %28, %22
  %82 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @head507d_olut_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nv50_core, ptr %11, i32 0, i32 1, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i32, ptr %17, i32 3
  %19 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %13, align 8
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 3) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = shl i32 %15, 10
  %31 = add i32 %30, 2112
  %32 = and i32 %31, 3136
  %33 = or i32 %32, 524288
  %34 = getelementptr i32, ptr %29, i32 1
  store ptr %34, ptr %16, align 4
  store i32 %33, ptr %29, align 4
  %35 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 2
  %36 = load i48, ptr %35, align 8
  %37 = lshr i48 %36, 11
  %38 = trunc i48 %37 to i32
  %39 = and i32 %38, 1073741824
  %40 = or i32 %39, -2147483648
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr i32, ptr %41, i32 1
  store ptr %42, ptr %16, align 4
  store i32 %40, ptr %41, align 4
  %43 = load i48, ptr %35, align 8
  %44 = lshr i48 %43, 8
  %45 = trunc i48 %44 to i32
  %46 = load ptr, ptr %16, align 4
  %47 = getelementptr i32, ptr %46, i32 1
  store ptr %47, ptr %16, align 4
  store i32 %45, ptr %46, align 4
  br label %48

48:                                               ; preds = %28, %22
  %49 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @head507d_olut_clr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nv50_disp, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nv50_core, ptr %10, i32 0, i32 1, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i32, ptr %16, i32 2
  %18 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ult ptr %17, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load ptr, ptr %12, align 8
  %23 = tail call i32 %22(ptr noundef %12, i32 noundef 2) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load ptr, ptr %15, align 4
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi ptr [ %26, %25 ], [ %16, %1 ]
  %29 = shl i32 %14, 10
  %30 = add i32 %29, 2112
  %31 = and i32 %30, 3136
  %32 = or i32 %31, 262144
  %33 = getelementptr i32, ptr %28, i32 1
  store ptr %33, ptr %15, align 4
  store i32 %32, ptr %28, align 4
  %34 = load ptr, ptr %15, align 4
  %35 = getelementptr i32, ptr %34, i32 1
  store ptr %35, ptr %15, align 4
  store i32 0, ptr %34, align 4
  br label %36

36:                                               ; preds = %27, %21
  %37 = phi i32 [ 0, %27 ], [ %23, %21 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @head507d_core_set(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nv50_core, ptr %11, i32 0, i32 1, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i32, ptr %17, i32 9
  %19 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %13, align 8
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 9) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %123

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = shl i32 %15, 10
  %31 = add i32 %30, 2144
  %32 = and i32 %31, 3168
  %33 = or i32 %32, 262144
  %34 = getelementptr i32, ptr %29, i32 1
  store ptr %34, ptr %16, align 4
  store i32 %33, ptr %29, align 4
  %35 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 2
  %36 = load i40, ptr %35, align 8
  %37 = lshr i40 %36, 8
  %38 = trunc i40 %37 to i32
  %39 = load ptr, ptr %16, align 4
  %40 = getelementptr i32, ptr %39, i32 1
  store ptr %40, ptr %16, align 4
  store i32 %38, ptr %39, align 4
  %41 = add i32 %30, 2152
  %42 = and i32 %41, 3176
  %43 = or i32 %42, 1048576
  %44 = load ptr, ptr %16, align 4
  %45 = getelementptr i32, ptr %44, i32 1
  store ptr %45, ptr %16, align 4
  store i32 %43, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 8
  %47 = load i16, ptr %46, align 8
  %48 = and i16 %47, 32767
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 9
  %51 = load i16, ptr %50, align 2
  %52 = and i16 %51, 32767
  %53 = zext i16 %52 to i32
  %54 = shl nuw nsw i32 %53, 16
  %55 = or i32 %54, %49
  %56 = load ptr, ptr %16, align 4
  %57 = getelementptr i32, ptr %56, i32 1
  store ptr %57, ptr %16, align 4
  store i32 %55, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 4
  %59 = load i16, ptr %58, align 2
  %60 = lshr i16 %59, 8
  %61 = and i16 %60, 15
  %62 = zext i16 %61 to i32
  %63 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 5
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 12
  %66 = and i32 %65, 261888
  %67 = or i32 %66, %62
  %68 = shl i32 %64, 8
  %69 = and i32 %68, 261888
  %70 = or i32 %67, %69
  %71 = lshr i16 %59, 7
  %72 = and i16 %71, 1
  %73 = zext i16 %72 to i32
  %74 = shl nuw nsw i32 %73, 20
  %75 = or i32 %70, %74
  %76 = load ptr, ptr %16, align 4
  %77 = getelementptr i32, ptr %76, i32 1
  store ptr %77, ptr %16, align 4
  store i32 %75, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 3
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 8
  %82 = load i16, ptr %58, align 2
  %83 = and i16 %82, 127
  %84 = zext i16 %83 to i32
  %85 = shl nuw nsw i32 %84, 16
  %86 = or i32 %85, %81
  %87 = load ptr, ptr %16, align 4
  %88 = getelementptr i32, ptr %87, i32 1
  store ptr %88, ptr %16, align 4
  store i32 %86, ptr %87, align 4
  %89 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = load ptr, ptr %16, align 4
  %92 = getelementptr i32, ptr %91, i32 1
  store ptr %92, ptr %16, align 4
  store i32 %90, ptr %91, align 4
  %93 = add i32 %30, 2240
  %94 = and i32 %93, 3264
  %95 = or i32 %94, 262144
  %96 = load ptr, ptr %16, align 4
  %97 = getelementptr i32, ptr %96, i32 1
  store ptr %97, ptr %16, align 4
  store i32 %95, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 6
  %99 = load i16, ptr %98, align 4
  %100 = and i16 %99, 32767
  %101 = zext i16 %100 to i32
  %102 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 7
  %103 = load i16, ptr %102, align 2
  %104 = and i16 %103, 32767
  %105 = zext i16 %104 to i32
  %106 = shl nuw nsw i32 %105, 16
  %107 = or i32 %106, %101
  %108 = load ptr, ptr %16, align 4
  %109 = getelementptr i32, ptr %108, i32 1
  store ptr %109, ptr %16, align 4
  store i32 %107, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 6
  %111 = load i8, ptr %110, align 8, !range !8
  %112 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 14
  %113 = load i16, ptr %112, align 8
  %114 = shl nuw nsw i8 %111, 2
  %115 = zext i8 %114 to i16
  %116 = and i16 %113, -6
  %117 = or i16 %116, %115
  %118 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i16
  %122 = or i16 %117, %121
  store i16 %122, ptr %112, align 8
  br label %123

123:                                              ; preds = %28, %22
  %124 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @head507d_curs_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nv50_core, ptr %11, i32 0, i32 1, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i32, ptr %17, i32 3
  %19 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %13, align 8
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 3) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = shl i32 %15, 10
  %31 = add i32 %30, 2176
  %32 = and i32 %31, 3200
  %33 = or i32 %32, 524288
  %34 = getelementptr i32, ptr %29, i32 1
  store ptr %34, ptr %16, align 4
  store i32 %33, ptr %29, align 4
  %35 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 6, i32 3
  %36 = load i8, ptr %35, align 2
  %37 = and i8 %36, 3
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 24
  %40 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 6, i32 2
  %41 = load i48, ptr %40, align 8
  %42 = lshr i48 %41, 14
  %43 = trunc i48 %42 to i32
  %44 = and i32 %43, 67108864
  %45 = or i32 %44, %39
  %46 = or i32 %45, -2147483648
  %47 = load ptr, ptr %16, align 4
  %48 = getelementptr i32, ptr %47, i32 1
  store ptr %48, ptr %16, align 4
  store i32 %46, ptr %47, align 4
  %49 = load i48, ptr %40, align 8
  %50 = lshr i48 %49, 8
  %51 = trunc i48 %50 to i32
  %52 = load ptr, ptr %16, align 4
  %53 = getelementptr i32, ptr %52, i32 1
  store ptr %53, ptr %16, align 4
  store i32 %51, ptr %52, align 4
  br label %54

54:                                               ; preds = %28, %22
  %55 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @head507d_curs_clr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nv50_disp, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nv50_core, ptr %10, i32 0, i32 1, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i32, ptr %16, i32 2
  %18 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ult ptr %17, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load ptr, ptr %12, align 8
  %23 = tail call i32 %22(ptr noundef %12, i32 noundef 2) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load ptr, ptr %15, align 4
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi ptr [ %26, %25 ], [ %16, %1 ]
  %29 = shl i32 %14, 10
  %30 = add i32 %29, 2176
  %31 = and i32 %30, 3200
  %32 = or i32 %31, 262144
  %33 = getelementptr i32, ptr %28, i32 1
  store ptr %33, ptr %15, align 4
  store i32 %32, ptr %28, align 4
  %34 = load ptr, ptr %15, align 4
  %35 = getelementptr i32, ptr %34, i32 1
  store ptr %35, ptr %15, align 4
  store i32 83886080, ptr %34, align 4
  br label %36

36:                                               ; preds = %27, %21
  %37 = phi i32 [ 0, %27 ], [ %23, %21 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!9 = !{i64 2156540529}
!10 = !{i64 3957330}
!11 = !{i64 2156540937}
!12 = !{i64 2156541345}
!13 = !{i64 2156542181}
!14 = !{i64 3957530}
!15 = !{i64 2156542622}
!16 = !{i64 2156543265}
!17 = !{i64 2156543706}
!18 = !{i64 2156544349}
!19 = !{i64 2156544790}
