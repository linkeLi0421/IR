; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/head917d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/head917d.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.78, %struct.anon.79, %struct.nv50_head_mode, %struct.anon.82, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, %struct.anon.87, %struct.anon.88, %struct.anon.90, %struct.nv50_crc_atom, %struct.anon.91, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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
%struct.nv50_head = type { ptr, %struct.nouveau_crtc, %struct.nv50_crc, %struct.nv50_lut, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.94, %struct.anon.95, %struct.anon.96, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.94 = type { i32, i8, i32, i32 }
%struct.anon.95 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.96 = type { i32 }
%struct.nv50_crc = type { %struct.spinlock, [2 x %struct.nv50_crc_notifier_ctx], %struct.drm_vblank_work, i32, i64, i16, i16, i8 }
%struct.nv50_crc_notifier_ctx = type { %struct.nvif_mem, %struct.nvif_object }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.93 }
%struct.anon.93 = type { ptr, i64 }
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

@head917d = dso_local local_unnamed_addr constant %struct.nv50_head_func { ptr @head907d_view, ptr @head907d_mode, ptr @head907d_olut, ptr @head907d_ilut_check, i8 0, i32 1024, ptr @head907d_olut_set, ptr @head907d_olut_clr, ptr @head507d_core_calc, ptr @head907d_core_set, ptr @head907d_core_clr, ptr @head917d_curs_layout, ptr @head507d_curs_format, ptr @head917d_curs_set, ptr @head907d_curs_clr, ptr @head917d_base, ptr @head907d_ovly, ptr @head917d_dither, ptr @head907d_procamp, ptr @head907d_or, ptr null }, align 4
@.str = private unnamed_addr constant [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/head917d.c\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @head917d_curs_layout(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, -32
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 27)
  switch i32 %9, label %28 [
    i32 0, label %10
    i32 1, label %14
    i32 3, label %19
    i32 7, label %24
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 6, i32 2
  %12 = load i48, ptr %11, align 8
  %13 = and i48 %12, -3298534883329
  store i48 %13, ptr %11, align 8
  br label %28

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 6, i32 2
  %16 = load i48, ptr %15, align 8
  %17 = and i48 %16, -3298534883329
  %18 = or i48 %17, 1099511627776
  store i48 %18, ptr %15, align 8
  br label %28

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 6, i32 2
  %21 = load i48, ptr %20, align 8
  %22 = and i48 %21, -3298534883329
  %23 = or i48 %22, 2199023255552
  store i48 %23, ptr %20, align 8
  br label %28

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 6, i32 2
  %26 = load i48, ptr %25, align 8
  %27 = or i48 %26, 3298534883328
  store i48 %27, ptr %25, align 8
  br label %28

28:                                               ; preds = %24, %19, %14, %10, %3
  %29 = phi i32 [ -22, %3 ], [ 0, %24 ], [ 0, %19 ], [ 0, %14 ], [ 0, %10 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_view(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_mode(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @head907d_olut(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @head907d_ilut_check(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_olut_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_olut_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @head507d_core_calc(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_core_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_core_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head507d_curs_format(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @head917d_curs_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
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
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 5) #4
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
  %44 = and i32 %43, 201326592
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_curs_clr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @head917d_base(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef null) #4
  br label %22

22:                                               ; preds = %21, %20, %19, %18, %2
  %23 = phi i32 [ 131073, %21 ], [ 131073, %20 ], [ 131329, %19 ], [ 131841, %18 ], [ 132353, %2 ]
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
  %34 = tail call i32 %33(ptr noundef %13, i32 noundef 2) #4
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_ovly(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @head917d_dither(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
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
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 2) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = mul i32 %15, 768
  %31 = add i32 %30, 1184
  %32 = and i32 %31, 4000
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_procamp(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head907d_or(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
