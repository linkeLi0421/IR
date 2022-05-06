; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/head907d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/head907d.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_head = type { ptr, %struct.nouveau_crtc, %struct.nv50_crc, %struct.nv50_lut, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.105, %struct.anon.106, %struct.anon.107, ptr, ptr }
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
%struct.anon.105 = type { i32, i8, i32, i32 }
%struct.anon.106 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.107 = type { i32 }
%struct.nv50_crc = type { %struct.spinlock, [2 x %struct.nv50_crc_notifier_ctx], %struct.drm_vblank_work, i32, i64, i16, i16, i8 }
%struct.nv50_crc_notifier_ctx = type { %struct.nvif_mem, %struct.nvif_object }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.104 }
%struct.anon.104 = type { ptr, i64 }
%struct.drm_vblank_work = type { %struct.kthread_work, ptr, i64, i32, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.78, ptr, i32, ptr, i8, i32 }
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
%struct.anon.78 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.113, %struct.anon.114, %struct.anon.116, ptr, %struct.anon.117, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.118, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.130 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.113 = type { ptr, i32, i32, i8 }
%struct.anon.114 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.115] }
%struct.anon.115 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.116 = type { i64, i64 }
%struct.anon.117 = type { i32, i64 }
%struct.anon.118 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.125, %struct.anon.126, %struct.anon.127, %struct.anon.128 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.119, i8 }
%union.anon.119 = type { %struct.anon.123 }
%struct.anon.123 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.125 = type { i32 }
%struct.anon.126 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.127 = type { i16, i16 }
%struct.anon.128 = type { i16, i16, i16, %struct.anon.129, i16 }
%struct.anon.129 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.130 = type { ptr, %struct.mutex, i8 }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.79, %struct.anon.80, %struct.nv50_head_mode, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, %struct.anon.87, %struct.anon.88, %struct.anon.89, %struct.anon.91, %struct.nv50_crc_atom, %struct.anon.92, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.anon.79 = type { i32, i32, i32 }
%struct.anon.80 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.81, %struct.anon.82 }
%struct.anon.81 = type { i16, i16, i16, i16 }
%struct.anon.82 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.83 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.84 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.85 = type { i8, i32, [6 x i8], i8 }
%struct.anon.86 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.87 = type { i8 }
%struct.anon.88 = type { i8 }
%struct.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i16, i16 }
%struct.anon.91 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.92 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.93 }
%struct.anon.93 = type { i16 }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/head907d.c\00", align 1
@head907d = dso_local local_unnamed_addr constant %struct.nv50_head_func { ptr @head907d_view, ptr @head907d_mode, ptr @head907d_olut, ptr @head907d_ilut_check, i8 0, i32 1024, ptr @head907d_olut_set, ptr @head907d_olut_clr, ptr @head507d_core_calc, ptr @head907d_core_set, ptr @head907d_core_clr, ptr @head507d_curs_layout, ptr @head507d_curs_format, ptr @head907d_curs_set, ptr @head907d_curs_clr, ptr @head907d_base, ptr @head907d_ovly, ptr @head907d_dither, ptr @head907d_procamp, ptr @head907d_or, ptr null }, align 4
@switch.table.head907d_ovly = private unnamed_addr constant [9 x i32] [i32 256, i32 256, i32 257, i32 256, i32 769, i32 256, i32 256, i32 256, i32 1281], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head907d_or(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = mul i32 %15, 768
  %31 = add i32 %30, 1028
  %32 = and i32 %31, 3844
  %33 = or i32 %32, 524288
  %34 = getelementptr i32, ptr %29, i32 1
  store ptr %34, ptr %16, align 4
  store i32 %33, ptr %29, align 4
  %35 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 11
  %36 = load i8, ptr %35, align 8
  %37 = lshr i8 %36, 6
  %38 = shl i8 %36, 3
  %39 = and i8 %38, 8
  %40 = or i8 %39, %37
  %41 = and i8 %38, 16
  %42 = or i8 %40, %41
  %43 = zext i8 %42 to i32
  %44 = lshr i8 %36, 2
  %45 = and i8 %44, 15
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 6
  %48 = or i32 %47, %43
  %49 = load ptr, ptr %16, align 4
  %50 = getelementptr i32, ptr %49, i32 1
  store ptr %50, ptr %16, align 4
  store i32 %48, ptr %49, align 4
  %51 = load i32, ptr %14, align 8
  %52 = shl i32 %51, 25
  %53 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3
  %54 = load i8, ptr %53, align 8, !range !8
  %55 = zext i8 %54 to i32
  %56 = or i32 %52, %55
  %57 = or i32 %56, 837574656
  %58 = load ptr, ptr %16, align 4
  %59 = getelementptr i32, ptr %58, i32 1
  store ptr %59, ptr %16, align 4
  store i32 %57, ptr %58, align 4
  br label %60

60:                                               ; preds = %28, %22
  %61 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head907d_procamp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  %30 = mul i32 %15, 768
  %31 = add i32 %30, 1176
  %32 = and i32 %31, 3992
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
define dso_local i32 @head907d_ovly(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  %18 = icmp ult i8 %17, 9
  br i1 %18, label %20, label %19

19:                                               ; preds = %20, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #5
  br label %29

20:                                               ; preds = %2
  %21 = zext i8 %17 to i16
  %22 = lshr i16 277, %21
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %19, label %25

25:                                               ; preds = %20
  %26 = sext i8 %17 to i32
  %27 = getelementptr inbounds [9 x i32], ptr @switch.table.head907d_ovly, i32 0, i32 %26
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i32 [ 1, %19 ], [ %28, %25 ]
  %31 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i32, ptr %32, i32 2
  %34 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = icmp ult ptr %33, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load ptr, ptr %13, align 8
  %39 = tail call i32 %38(ptr noundef %13, i32 noundef 2) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load ptr, ptr %31, align 4
  br label %43

43:                                               ; preds = %41, %29
  %44 = phi ptr [ %42, %41 ], [ %32, %29 ]
  %45 = mul i32 %15, 768
  %46 = add i32 %45, 1236
  %47 = and i32 %46, 4052
  %48 = or i32 %47, 262144
  %49 = getelementptr i32, ptr %44, i32 1
  store ptr %49, ptr %31, align 4
  store i32 %48, ptr %44, align 4
  %50 = load ptr, ptr %31, align 4
  %51 = getelementptr i32, ptr %50, i32 1
  store ptr %51, ptr %31, align 4
  store i32 %30, ptr %50, align 4
  br label %52

52:                                               ; preds = %43, %37
  %53 = phi i32 [ 0, %43 ], [ %39, %37 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head907d_curs_clr(ptr nocapture noundef readonly %0) #0 {
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
  %17 = getelementptr i32, ptr %16, i32 4
  %18 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ult ptr %17, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load ptr, ptr %12, align 8
  %23 = tail call i32 %22(ptr noundef %12, i32 noundef 4) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load ptr, ptr %15, align 4
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi ptr [ %26, %25 ], [ %16, %1 ]
  %29 = mul i32 %14, 768
  %30 = add i32 %29, 1152
  %31 = and i32 %30, 3968
  %32 = or i32 %31, 262144
  %33 = getelementptr i32, ptr %28, i32 1
  store ptr %33, ptr %15, align 4
  store i32 %32, ptr %28, align 4
  %34 = load ptr, ptr %15, align 4
  %35 = getelementptr i32, ptr %34, i32 1
  store ptr %35, ptr %15, align 4
  store i32 83886080, ptr %34, align 4
  %36 = add i32 %29, 1164
  %37 = and i32 %36, 3980
  %38 = or i32 %37, 262144
  %39 = load ptr, ptr %15, align 4
  %40 = getelementptr i32, ptr %39, i32 1
  store ptr %40, ptr %15, align 4
  store i32 %38, ptr %39, align 4
  %41 = load ptr, ptr %15, align 4
  %42 = getelementptr i32, ptr %41, i32 1
  store ptr %42, ptr %15, align 4
  store i32 0, ptr %41, align 4
  br label %43

43:                                               ; preds = %27, %21
  %44 = phi i32 [ 0, %27 ], [ %23, %21 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head907d_curs_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  %18 = getelementptr i32, ptr %17, i32 5
  %19 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %13, align 8
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 5) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = mul i32 %15, 768
  %31 = add i32 %30, 1152
  %32 = and i32 %31, 3968
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
  %54 = add i32 %30, 1164
  %55 = and i32 %54, 3980
  %56 = or i32 %55, 262144
  %57 = load ptr, ptr %16, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  store ptr %58, ptr %16, align 4
  store i32 %56, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 6, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %16, align 4
  %62 = getelementptr i32, ptr %61, i32 1
  store ptr %62, ptr %16, align 4
  store i32 %60, ptr %61, align 4
  br label %63

63:                                               ; preds = %28, %22
  %64 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head907d_core_clr(ptr nocapture noundef readonly %0) #0 {
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
  %29 = mul i32 %14, 768
  %30 = add i32 %29, 1140
  %31 = and i32 %30, 3956
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
define dso_local i32 @head907d_core_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  br i1 %25, label %26, label %103

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = mul i32 %15, 768
  %31 = add i32 %30, 1120
  %32 = and i32 %31, 3936
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
  %41 = add i32 %30, 1128
  %42 = and i32 %41, 3944
  %43 = or i32 %42, 1048576
  %44 = load ptr, ptr %16, align 4
  %45 = getelementptr i32, ptr %44, i32 1
  store ptr %45, ptr %16, align 4
  store i32 %43, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 8
  %47 = load i16, ptr %46, align 8
  %48 = zext i16 %47 to i32
  %49 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 9
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = shl nuw i32 %51, 16
  %53 = or i32 %52, %48
  %54 = load ptr, ptr %16, align 4
  %55 = getelementptr i32, ptr %54, i32 1
  store ptr %55, ptr %16, align 4
  store i32 %53, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 4
  %57 = load i16, ptr %56, align 2
  %58 = lshr i16 %57, 8
  %59 = and i16 %58, 15
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 12
  %64 = and i32 %63, 1048320
  %65 = or i32 %64, %60
  %66 = shl i32 %62, 8
  %67 = and i32 %66, 1048320
  %68 = or i32 %65, %67
  %69 = lshr i16 %57, 7
  %70 = and i16 %69, 1
  %71 = zext i16 %70 to i32
  %72 = shl nuw nsw i32 %71, 24
  %73 = or i32 %68, %72
  %74 = load ptr, ptr %16, align 4
  %75 = getelementptr i32, ptr %74, i32 1
  store ptr %75, ptr %16, align 4
  store i32 %73, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 3
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 8
  %80 = load ptr, ptr %16, align 4
  %81 = getelementptr i32, ptr %80, i32 1
  store ptr %81, ptr %16, align 4
  store i32 %79, ptr %80, align 4
  %82 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = load ptr, ptr %16, align 4
  %85 = getelementptr i32, ptr %84, i32 1
  store ptr %85, ptr %16, align 4
  store i32 %83, ptr %84, align 4
  %86 = add i32 %30, 1200
  %87 = and i32 %86, 4016
  %88 = or i32 %87, 262144
  %89 = load ptr, ptr %16, align 4
  %90 = getelementptr i32, ptr %89, i32 1
  store ptr %90, ptr %16, align 4
  store i32 %88, ptr %89, align 4
  %91 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 6
  %92 = load i16, ptr %91, align 4
  %93 = and i16 %92, 32767
  %94 = zext i16 %93 to i32
  %95 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 7
  %96 = load i16, ptr %95, align 2
  %97 = and i16 %96, 32767
  %98 = zext i16 %97 to i32
  %99 = shl nuw nsw i32 %98, 16
  %100 = or i32 %99, %94
  %101 = load ptr, ptr %16, align 4
  %102 = getelementptr i32, ptr %101, i32 1
  store ptr %102, ptr %16, align 4
  store i32 %100, ptr %101, align 4
  br label %103

103:                                              ; preds = %28, %22
  %104 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head907d_olut_clr(ptr nocapture noundef readonly %0) #0 {
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
  %17 = getelementptr i32, ptr %16, i32 4
  %18 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ult ptr %17, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load ptr, ptr %12, align 8
  %23 = tail call i32 %22(ptr noundef %12, i32 noundef 4) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load ptr, ptr %15, align 4
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi ptr [ %26, %25 ], [ %16, %1 ]
  %29 = mul i32 %14, 768
  %30 = add i32 %29, 1096
  %31 = and i32 %30, 3912
  %32 = or i32 %31, 262144
  %33 = getelementptr i32, ptr %28, i32 1
  store ptr %33, ptr %15, align 4
  store i32 %32, ptr %28, align 4
  %34 = load ptr, ptr %15, align 4
  %35 = getelementptr i32, ptr %34, i32 1
  store ptr %35, ptr %15, align 4
  store i32 0, ptr %34, align 4
  %36 = add i32 %29, 1116
  %37 = and i32 %36, 3932
  %38 = or i32 %37, 262144
  %39 = load ptr, ptr %15, align 4
  %40 = getelementptr i32, ptr %39, i32 1
  store ptr %40, ptr %15, align 4
  store i32 %38, ptr %39, align 4
  %41 = load ptr, ptr %15, align 4
  %42 = getelementptr i32, ptr %41, i32 1
  store ptr %42, ptr %15, align 4
  store i32 0, ptr %41, align 4
  br label %43

43:                                               ; preds = %27, %21
  %44 = phi i32 [ 0, %27 ], [ %23, %21 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head907d_olut_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  %18 = getelementptr i32, ptr %17, i32 5
  %19 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %13, align 8
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 5) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = mul i32 %15, 768
  %31 = add i32 %30, 1096
  %32 = and i32 %31, 3912
  %33 = or i32 %32, 524288
  %34 = getelementptr i32, ptr %29, i32 1
  store ptr %34, ptr %16, align 4
  store i32 %33, ptr %29, align 4
  %35 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 2
  %36 = load i48, ptr %35, align 8
  %37 = lshr i48 %36, 17
  %38 = trunc i48 %37 to i32
  %39 = and i32 %38, 251658240
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
  %48 = add i32 %30, 1116
  %49 = and i32 %48, 3932
  %50 = or i32 %49, 262144
  %51 = load ptr, ptr %16, align 4
  %52 = getelementptr i32, ptr %51, i32 1
  store ptr %52, ptr %16, align 4
  store i32 %50, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %16, align 4
  %56 = getelementptr i32, ptr %55, i32 1
  store ptr %56, ptr %16, align 4
  store i32 %54, ptr %55, align 4
  br label %57

57:                                               ; preds = %28, %22
  %58 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @head907d_olut_load(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
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
  %12 = add nuw nsw i32 %11, 2
  %13 = lshr i32 %12, 2
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 16383) #5
  %15 = trunc i32 %14 to i16
  %16 = add nuw i16 %15, 24576
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %16) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %17 = getelementptr inbounds %struct.drm_color_lut, ptr %6, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = add nuw nsw i32 %19, 2
  %21 = lshr i32 %20, 2
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 16383) #5
  %23 = trunc i32 %22 to i16
  %24 = add nuw i16 %23, 24576
  %25 = getelementptr i8, ptr %8, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 %24) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %26 = getelementptr inbounds %struct.drm_color_lut, ptr %6, i32 0, i32 2
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = add nuw nsw i32 %28, 2
  %30 = lshr i32 %29, 2
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 16383) #5
  %32 = trunc i32 %31 to i16
  %33 = add nuw i16 %32, 24576
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @head907d_olut(ptr nocapture readnone %0, ptr nocapture noundef %1, i32 noundef %2) #2 {
  switch i32 %2, label %12 [
    i32 1024, label %5
    i32 256, label %4
  ]

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi i48 [ 15393162788864, %4 ], [ 8796093022208, %3 ]
  %7 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 2
  %8 = load i48, ptr %7, align 8
  %9 = and i48 %8, -32985348833281
  %10 = or i48 %9, %6
  store i48 %10, ptr %7, align 8
  %11 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 4
  store ptr @head907d_olut_load, ptr %11, align 8
  br label %12

12:                                               ; preds = %5, %3
  %13 = icmp eq i32 %2, 1024
  %14 = icmp eq i32 %2, 256
  %15 = or i1 %14, %13
  ret i1 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @head907d_ilut_check(i32 noundef %0) #3 {
  %2 = icmp eq i32 %0, 256
  %3 = icmp eq i32 %0, 1024
  %4 = or i1 %2, %3
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head907d_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  br i1 %25, label %26, label %121

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = mul i32 %15, 768
  %31 = add i32 %30, 1040
  %32 = and i32 %31, 3856
  %33 = or i32 %32, 1572864
  %34 = getelementptr i32, ptr %29, i32 1
  store ptr %34, ptr %16, align 4
  store i32 %33, ptr %29, align 4
  %35 = load ptr, ptr %16, align 4
  %36 = getelementptr i32, ptr %35, i32 1
  store ptr %36, ptr %16, align 4
  store i32 0, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 2
  %38 = load i16, ptr %37, align 4
  %39 = and i16 %38, 32767
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 16
  %44 = and i32 %43, 2147418112
  %45 = or i32 %44, %40
  %46 = load ptr, ptr %16, align 4
  %47 = getelementptr i32, ptr %46, i32 1
  store ptr %47, ptr %16, align 4
  store i32 %45, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 2, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = and i16 %49, 32767
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 1
  %53 = load i16, ptr %52, align 4
  %54 = and i16 %53, 32767
  %55 = zext i16 %54 to i32
  %56 = shl nuw nsw i32 %55, 16
  %57 = or i32 %56, %51
  %58 = load ptr, ptr %16, align 4
  %59 = getelementptr i32, ptr %58, i32 1
  store ptr %59, ptr %16, align 4
  store i32 %57, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 2, i32 2
  %61 = load i16, ptr %60, align 4
  %62 = and i16 %61, 32767
  %63 = zext i16 %62 to i32
  %64 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 2
  %65 = load i16, ptr %64, align 2
  %66 = and i16 %65, 32767
  %67 = zext i16 %66 to i32
  %68 = shl nuw nsw i32 %67, 16
  %69 = or i32 %68, %63
  %70 = load ptr, ptr %16, align 4
  %71 = getelementptr i32, ptr %70, i32 1
  store ptr %71, ptr %16, align 4
  store i32 %69, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 2, i32 3
  %73 = load i16, ptr %72, align 2
  %74 = and i16 %73, 32767
  %75 = zext i16 %74 to i32
  %76 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 3
  %77 = load i16, ptr %76, align 4
  %78 = and i16 %77, 32767
  %79 = zext i16 %78 to i32
  %80 = shl nuw nsw i32 %79, 16
  %81 = or i32 %80, %75
  %82 = load ptr, ptr %16, align 4
  %83 = getelementptr i32, ptr %82, i32 1
  store ptr %83, ptr %16, align 4
  store i32 %81, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 4
  %85 = load i16, ptr %84, align 2
  %86 = and i16 %85, 32767
  %87 = zext i16 %86 to i32
  %88 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 5
  %89 = load i16, ptr %88, align 4
  %90 = and i16 %89, 32767
  %91 = zext i16 %90 to i32
  %92 = shl nuw nsw i32 %91, 16
  %93 = or i32 %92, %87
  %94 = load ptr, ptr %16, align 4
  %95 = getelementptr i32, ptr %94, i32 1
  store ptr %95, ptr %16, align 4
  store i32 %93, ptr %94, align 4
  %96 = add i32 %30, 1068
  %97 = and i32 %96, 3884
  %98 = or i32 %97, 262144
  %99 = load ptr, ptr %16, align 4
  %100 = getelementptr i32, ptr %99, i32 1
  store ptr %100, ptr %16, align 4
  store i32 %98, ptr %99, align 4
  %101 = load ptr, ptr %16, align 4
  %102 = getelementptr i32, ptr %101, i32 1
  store ptr %102, ptr %16, align 4
  store i32 0, ptr %101, align 4
  %103 = add i32 %30, 1104
  %104 = and i32 %103, 3920
  %105 = or i32 %104, 786432
  %106 = load ptr, ptr %16, align 4
  %107 = getelementptr i32, ptr %106, i32 1
  store ptr %107, ptr %16, align 4
  store i32 %105, ptr %106, align 4
  %108 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = mul i32 %109, 1000
  %111 = and i32 %110, 2147483640
  %112 = load ptr, ptr %16, align 4
  %113 = getelementptr i32, ptr %112, i32 1
  store ptr %113, ptr %16, align 4
  store i32 %111, ptr %112, align 4
  %114 = load ptr, ptr %16, align 4
  %115 = getelementptr i32, ptr %114, i32 1
  store ptr %115, ptr %16, align 4
  store i32 2097152, ptr %114, align 4
  %116 = load i32, ptr %108, align 4
  %117 = mul i32 %116, 1000
  %118 = and i32 %117, 2147483640
  %119 = load ptr, ptr %16, align 4
  %120 = getelementptr i32, ptr %119, i32 1
  store ptr %120, ptr %16, align 4
  store i32 %118, ptr %119, align 4
  br label %121

121:                                              ; preds = %28, %22
  %122 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @head907d_view(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  %18 = getelementptr i32, ptr %17, i32 8
  %19 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %13, align 8
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 8) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %91

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = mul i32 %15, 768
  %31 = add i32 %30, 1172
  %32 = and i32 %31, 3988
  %33 = or i32 %32, 262144
  %34 = getelementptr i32, ptr %29, i32 1
  store ptr %34, ptr %16, align 4
  store i32 %33, ptr %29, align 4
  %35 = load ptr, ptr %16, align 4
  %36 = getelementptr i32, ptr %35, i32 1
  store ptr %36, ptr %16, align 4
  store i32 0, ptr %35, align 4
  %37 = add i32 %30, 1208
  %38 = and i32 %37, 4024
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
  %54 = add i32 %30, 1216
  %55 = and i32 %54, 4032
  %56 = or i32 %55, 786432
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
  %81 = load i16, ptr %59, align 4
  %82 = and i16 %81, 32767
  %83 = zext i16 %82 to i32
  %84 = load i16, ptr %63, align 2
  %85 = and i16 %84, 32767
  %86 = zext i16 %85 to i32
  %87 = shl nuw nsw i32 %86, 16
  %88 = or i32 %87, %83
  %89 = load ptr, ptr %16, align 4
  %90 = getelementptr i32, ptr %89, i32 1
  store ptr %90, ptr %16, align 4
  store i32 %88, ptr %89, align 4
  br label %91

91:                                               ; preds = %28, %22
  %92 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @head507d_core_calc(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_curs_layout(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_curs_format(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @head907d_base(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 9, ptr noundef null) #5
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
  %40 = mul i32 %15, 768
  %41 = add i32 %40, 1232
  %42 = and i32 %41, 4048
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
define internal i32 @head907d_dither(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  %30 = mul i32 %15, 768
  %31 = add i32 %30, 1168
  %32 = and i32 %31, 3984
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 2156706610}
!10 = !{i64 3789941}
!11 = !{i64 2156707030}
!12 = !{i64 2156707450}
!13 = !{i64 2156708294}
!14 = !{i64 3790141}
!15 = !{i64 2156708735}
!16 = !{i64 2156709378}
!17 = !{i64 2156709819}
!18 = !{i64 2156710462}
!19 = !{i64 2156710903}
