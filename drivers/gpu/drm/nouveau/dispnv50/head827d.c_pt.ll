; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/head827d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/head827d.c"
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

@head827d = dso_local local_unnamed_addr constant %struct.nv50_head_func { ptr @head507d_view, ptr @head507d_mode, ptr @head507d_olut, ptr null, i8 0, i32 256, ptr @head827d_olut_set, ptr @head827d_olut_clr, ptr @head507d_core_calc, ptr @head827d_core_set, ptr @head507d_core_clr, ptr @head507d_curs_layout, ptr @head507d_curs_format, ptr @head827d_curs_set, ptr @head827d_curs_clr, ptr @head507d_base, ptr @head507d_ovly, ptr @head507d_dither, ptr @head507d_procamp, ptr null, ptr null }, align 4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_view(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_mode(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @head507d_olut(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @head827d_olut_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
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
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 5) #2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %57

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
  %48 = add i32 %30, 2140
  %49 = and i32 %48, 3164
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
define internal i32 @head827d_olut_clr(ptr nocapture noundef readonly %0) #1 {
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
  %23 = tail call i32 %22(ptr noundef %12, i32 noundef 4) #2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43

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
  %36 = add i32 %29, 2140
  %37 = and i32 %36, 3164
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @head507d_core_calc(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @head827d_core_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
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
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 9) #2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %105

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
  %82 = load ptr, ptr %16, align 4
  %83 = getelementptr i32, ptr %82, i32 1
  store ptr %83, ptr %16, align 4
  store i32 %81, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %16, align 4
  %87 = getelementptr i32, ptr %86, i32 1
  store ptr %87, ptr %16, align 4
  store i32 %85, ptr %86, align 4
  %88 = add i32 %30, 2240
  %89 = and i32 %88, 3264
  %90 = or i32 %89, 262144
  %91 = load ptr, ptr %16, align 4
  %92 = getelementptr i32, ptr %91, i32 1
  store ptr %92, ptr %16, align 4
  store i32 %90, ptr %91, align 4
  %93 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 6
  %94 = load i16, ptr %93, align 4
  %95 = and i16 %94, 32767
  %96 = zext i16 %95 to i32
  %97 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 5, i32 7
  %98 = load i16, ptr %97, align 2
  %99 = and i16 %98, 32767
  %100 = zext i16 %99 to i32
  %101 = shl nuw nsw i32 %100, 16
  %102 = or i32 %101, %96
  %103 = load ptr, ptr %16, align 4
  %104 = getelementptr i32, ptr %103, i32 1
  store ptr %104, ptr %16, align 4
  store i32 %102, ptr %103, align 4
  br label %105

105:                                              ; preds = %28, %22
  %106 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_core_clr(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_curs_layout(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_curs_format(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @head827d_curs_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
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
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 5) #2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %63

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
  %54 = add i32 %30, 2204
  %55 = and i32 %54, 3228
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
define internal i32 @head827d_curs_clr(ptr nocapture noundef readonly %0) #1 {
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
  %23 = tail call i32 %22(ptr noundef %12, i32 noundef 4) #2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43

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
  %36 = add i32 %29, 2204
  %37 = and i32 %36, 3228
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_base(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_ovly(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_dither(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_procamp(ptr noundef, ptr noundef) #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }

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
