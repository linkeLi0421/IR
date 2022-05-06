; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/wndwc37e.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.105, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.105 = type { ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.104 }
%struct.anon.104 = type { ptr, i64 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nv50_wndw_atom = type { %struct.drm_plane_state, ptr, i8, %struct.anon.78, %struct.anon.79, [4 x i8], %struct.anon.80, %struct.anon.82, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, %union.nv50_wndw_atom_mask, %union.nv50_wndw_atom_mask }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.anon.78 = type { i32, i16 }
%struct.anon.79 = type { i32, i16, i32, i32 }
%struct.anon.80 = type { i32, [4 x i8], %struct.anon.81 }
%struct.anon.81 = type { [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.82 = type { [12 x i32], i8 }
%struct.anon.83 = type { i8, i8, i16, [3 x i16], [3 x i32], i16, i16, [6 x i32], [6 x i64] }
%struct.anon.84 = type { i16, i16, i16, i16, i16, i16 }
%struct.anon.85 = type { i16, i16 }
%struct.anon.86 = type { i8, i8, i8 }
%union.nv50_wndw_atom_mask = type { %struct.anon.87 }
%struct.anon.87 = type { i8 }
%struct.nvc37e_window_channel_dma_v0 = type { i8, i8, [6 x i8], i64 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.111, %struct.anon.112, %struct.anon.113, ptr, %struct.anon.114, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.115, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.127 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.111 = type { ptr, i32, i32, i8 }
%struct.anon.112 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.103] }
%struct.anon.103 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.113 = type { i64, i64 }
%struct.anon.114 = type { i32, i64 }
%struct.anon.115 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.122, %struct.anon.123, %struct.anon.124, %struct.anon.125 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.116, i8 }
%union.anon.116 = type { %struct.anon.120 }
%struct.anon.120 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.122 = type { i32 }
%struct.anon.123 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.124 = type { i16, i16 }
%struct.anon.125 = type { i16, i16, i16, %struct.anon.126, i16 }
%struct.anon.126 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.127 = type { ptr, %struct.mutex, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.77, ptr, i32, ptr, i8, i32 }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.77 = type { i32, ptr }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
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
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }

@.str = private unnamed_addr constant [5 x i8] c"wndw\00", align 1
@wndwc37e_format = internal constant [17 x i32] [i32 538982467, i32 1448695129, i32 1498831189, i32 875713112, i32 875713089, i32 909199186, i32 892424792, i32 892424769, i32 808665688, i32 808665665, i32 875709016, i32 875708993, i32 808669784, i32 808669761, i32 1211384408, i32 1211384385, i32 0], align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: qndw%04x allocation failed: %d\0A\00", align 1
@wndwc37e = internal constant %struct.nv50_wndw_func { ptr @wndwc37e_acquire, ptr @wndwc37e_release, ptr null, ptr @wndwc37e_sema_set, ptr @wndwc37e_sema_clr, ptr @corec37d_ntfy_init, ptr @wndwc37e_ntfy_set, ptr @wndwc37e_ntfy_clr, ptr @base507c_ntfy_wait_begun, ptr @wndwc37e_ilut, ptr @base907c_csc, ptr @wndwc37e_csc_set, ptr @wndwc37e_csc_clr, i8 0, i32 1024, i8 0, ptr @wndwc37e_ilut_set, ptr @wndwc37e_ilut_clr, ptr @wndwc37e_image_set, ptr @wndwc37e_image_clr, ptr null, ptr @wndwc37e_blend_set, ptr @wndwc37e_update }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_blend_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 8
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 8) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 1835756, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 11
  %21 = load i8, ptr %20, align 8
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 4
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr i32, ptr %24, i32 1
  store ptr %25, ptr %5, align 4
  store i32 %23, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 11, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr i32, ptr %29, i32 1
  store ptr %30, ptr %5, align 4
  store i32 %28, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 11, i32 2
  %32 = load i8, ptr %31, align 2
  %33 = and i8 %32, 15
  %34 = mul nuw i8 %33, 17
  %35 = zext i8 %34 to i64
  %36 = lshr i8 %32, 4
  %37 = zext i8 %36 to i64
  %38 = shl nuw nsw i64 %37, 8
  %39 = or i64 %38, %35
  %40 = shl nuw nsw i64 %37, 12
  %41 = or i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr i32, ptr %43, i32 1
  store ptr %44, ptr %5, align 4
  store i32 %42, ptr %43, align 4
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr i32, ptr %45, i32 1
  store ptr %46, ptr %5, align 4
  store i32 -65536, ptr %45, align 4
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr i32, ptr %47, i32 1
  store ptr %48, ptr %5, align 4
  store i32 -65536, ptr %47, align 4
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr i32, ptr %49, i32 1
  store ptr %50, ptr %5, align 4
  store i32 -65536, ptr %49, align 4
  %51 = load ptr, ptr %5, align 4
  %52 = getelementptr i32, ptr %51, i32 1
  store ptr %52, ptr %5, align 4
  store i32 -65536, ptr %51, align 4
  br label %53

53:                                               ; preds = %17, %11
  %54 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_image_clr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i32, ptr %5, i32 4
  %7 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult ptr %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 4) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 262920, ptr %17, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i32, ptr %19, i32 1
  store ptr %20, ptr %4, align 4
  store i32 0, ptr %19, align 4
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i32, ptr %21, i32 1
  store ptr %22, ptr %4, align 4
  store i32 262720, ptr %21, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i32, ptr %23, i32 1
  store ptr %24, ptr %4, align 4
  store i32 0, ptr %23, align 4
  br label %25

25:                                               ; preds = %16, %10
  %26 = phi i32 [ 0, %16 ], [ %12, %10 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_ntfy_clr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i32, ptr %5, i32 2
  %7 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult ptr %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 2) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 262684, ptr %17, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i32, ptr %19, i32 1
  store ptr %20, ptr %4, align 4
  store i32 0, ptr %19, align 4
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi i32 [ 0, %16 ], [ %12, %10 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_ntfy_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 3
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 3) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 524828, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i32, ptr %22, i32 1
  store ptr %23, ptr %5, align 4
  store i32 %21, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 3, i32 1
  %25 = load i16, ptr %24, align 4
  %26 = lshr i16 %25, 12
  %27 = and i16 %26, 1
  %28 = and i16 %25, 4080
  %29 = or i16 %27, %28
  %30 = zext i16 %29 to i32
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr i32, ptr %31, i32 1
  store ptr %32, ptr %5, align 4
  store i32 %30, ptr %31, align 4
  br label %33

33:                                               ; preds = %17, %11
  %34 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_sema_clr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i32, ptr %5, i32 2
  %7 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult ptr %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 2) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 262680, ptr %17, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i32, ptr %19, i32 1
  store ptr %20, ptr %4, align 4
  store i32 0, ptr %19, align 4
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi i32 [ 0, %16 ], [ %12, %10 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_sema_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 5
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 5) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 1049100, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 4
  %21 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 4, i32 1
  %22 = load i16, ptr %21, align 4
  %23 = and i16 %22, 4095
  %24 = zext i16 %23 to i32
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr i32, ptr %25, i32 1
  store ptr %26, ptr %5, align 4
  store i32 %24, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 4, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr i32, ptr %29, i32 1
  store ptr %30, ptr %5, align 4
  store i32 %28, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 4, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i32, ptr %33, i32 1
  store ptr %34, ptr %5, align 4
  store i32 %32, ptr %33, align 4
  %35 = load i32, ptr %20, align 4
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr i32, ptr %36, i32 1
  store ptr %37, ptr %5, align 4
  store i32 %35, ptr %36, align 4
  br label %38

38:                                               ; preds = %17, %11
  %39 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 5
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 5) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 525168, ptr %18, align 4
  %20 = getelementptr i32, ptr %1, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 1
  %23 = load i32, ptr %1, align 4
  %24 = or i32 %22, %23
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr i32, ptr %25, i32 1
  store ptr %26, ptr %5, align 4
  store i32 %24, ptr %25, align 4
  %27 = getelementptr i32, ptr %1, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr i32, ptr %29, i32 1
  store ptr %30, ptr %5, align 4
  store i32 %28, ptr %29, align 4
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr i32, ptr %31, i32 1
  store ptr %32, ptr %5, align 4
  store i32 262656, ptr %31, align 4
  %33 = getelementptr i32, ptr %1, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 3, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 1, i32 4097
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr i32, ptr %40, i32 1
  store ptr %41, ptr %5, align 4
  store i32 %39, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %4) #8
  br label %44

44:                                               ; preds = %17, %11
  %45 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @wndwc37e_release(ptr nocapture %0, ptr nocapture %1, ptr nocapture %2) #2 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_acquire(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %1, ptr noundef %2, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext true) #8
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvc37e_window_channel_dma_v0, align 8
  %10 = alloca ptr, align 4
  store i32 %4, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %11 = getelementptr inbounds %struct.nvc37e_window_channel_dma_v0, ptr %9, i32 0, i32 1
  %12 = trunc i32 %3 to i8
  store i64 0, ptr %9, align 8
  store i8 %12, ptr %11, align 1
  %13 = getelementptr inbounds %struct.nvc37e_window_channel_dma_v0, ptr %9, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(6) %13, i8 0, i32 6, i1 false)
  %14 = getelementptr inbounds %struct.nvc37e_window_channel_dma_v0, ptr %9, i32 0, i32 3
  %15 = or i32 %3, -1342145024
  %16 = zext i32 %15 to i64
  store i64 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  store ptr null, ptr %10, align 4, !annotation !8
  %24 = shl nuw i32 1, %3
  %25 = call i32 @nv50_wndw_new_(ptr noundef %0, ptr noundef %18, i32 noundef %2, ptr noundef nonnull @.str, i32 noundef %3, ptr noundef nonnull @wndwc37e_format, i32 noundef %5, i32 noundef 4, i32 noundef %24, ptr noundef nonnull %10) #8
  %26 = load ptr, ptr %10, align 4
  store ptr %26, ptr %6, align 4
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %30 = load ptr, ptr %23, align 8
  %31 = getelementptr inbounds %struct.nv50_disp, ptr %23, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nouveau_bo, ptr %32, i32 0, i32 13
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nv50_wndw, ptr %26, i32 0, i32 7
  %36 = call i32 @nv50_dmac_create(ptr noundef %29, ptr noundef %30, ptr noundef nonnull %8, i8 noundef zeroext 0, ptr noundef nonnull %9, i32 noundef 16, i64 noundef %34, ptr noundef %35) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nouveau_drm, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  %46 = load i32, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.1, ptr noundef %45, i32 noundef %46, i32 noundef %36) #9
  br label %58

47:                                               ; preds = %28
  %48 = load ptr, ptr %10, align 4
  %49 = getelementptr inbounds %struct.nv50_wndw, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = trunc i32 %50 to i16
  %52 = shl i16 %51, 6
  %53 = add i16 %52, 96
  %54 = getelementptr inbounds %struct.nv50_wndw, ptr %48, i32 0, i32 10
  store i16 %53, ptr %54, align 4
  %55 = add i16 %52, 64
  %56 = getelementptr inbounds %struct.nv50_wndw, ptr %48, i32 0, i32 11
  store i16 %55, ptr %56, align 2
  %57 = getelementptr inbounds %struct.nv50_wndw, ptr %48, i32 0, i32 12
  store i32 0, ptr %57, align 8
  br label %58

58:                                               ; preds = %47, %38, %7
  %59 = phi i32 [ %36, %38 ], [ 0, %47 ], [ %25, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  ret i32 %59
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_wndw_new_(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dmac_create(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc37e_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = ashr i32 %2, 1
  %7 = shl nuw i32 1, %6
  %8 = tail call i32 @wndwc37e_new_(ptr noundef nonnull @wndwc37e, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %7, ptr noundef %4)
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @corec37d_ntfy_init(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_wait_begun(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @wndwc37e_ilut(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 1024
  %5 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6, i32 2, i32 1
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, -32768
  %8 = select i1 %4, i16 8194, i16 8192
  %9 = or i16 %8, %7
  store i16 %9, ptr %5, align 2
  %10 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6, i32 2, i32 2
  store ptr @head907d_olut_load, ptr %10, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @base907c_csc(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wndwc37e_csc_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 13
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 13) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 3146428, ptr %18, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %20, ptr noundef align 8 dereferenceable(48) %21, i32 48, i1 false)
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i32, ptr %22, i32 12
  store ptr %23, ptr %5, align 4
  br label %24

24:                                               ; preds = %17, %11
  %25 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @wndwc37e_csc_clr(ptr nocapture noundef readnone %0) #2 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wndwc37e_ilut_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 4
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 4) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 787120, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6
  %21 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6, i32 2
  %22 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6, i32 2, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = lshr i16 %23, 5
  %25 = and i16 %24, 768
  %26 = lshr i16 %23, 7
  %27 = and i16 %26, 48
  %28 = and i16 %23, 3
  %29 = or i16 %27, %28
  %30 = or i16 %29, %25
  %31 = zext i16 %30 to i32
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr i32, ptr %32, i32 1
  store ptr %33, ptr %5, align 4
  store i32 %31, ptr %32, align 4
  %34 = load i48, ptr %21, align 8
  %35 = lshr i48 %34, 8
  %36 = trunc i48 %35 to i32
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr i32, ptr %37, i32 1
  store ptr %38, ptr %5, align 4
  store i32 %36, ptr %37, align 4
  %39 = load i32, ptr %20, align 8
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr i32, ptr %40, i32 1
  store ptr %41, ptr %5, align 4
  store i32 %39, ptr %40, align 4
  br label %42

42:                                               ; preds = %17, %11
  %43 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wndwc37e_ilut_clr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i32, ptr %5, i32 2
  %7 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult ptr %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 2) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 262840, ptr %17, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i32, ptr %19, i32 1
  store ptr %20, ptr %4, align 4
  store i32 0, ptr %19, align 4
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi i32 [ 0, %16 ], [ %12, %10 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wndwc37e_image_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 17
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 17) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %127

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 262920, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8
  %21 = load i8, ptr %20, align 8
  %22 = lshr i8 %21, 2
  %23 = and i8 %22, 15
  %24 = shl i8 %21, 4
  %25 = and i8 %24, 48
  %26 = or i8 %23, %25
  %27 = zext i8 %26 to i32
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr i32, ptr %28, i32 1
  store ptr %29, ptr %5, align 4
  store i32 %27, ptr %28, align 4
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr i32, ptr %30, i32 1
  store ptr %31, ptr %5, align 4
  store i32 1049124, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 5
  %33 = load i16, ptr %32, align 8
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 6
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = shl nuw i32 %37, 16
  %39 = or i32 %38, %34
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr i32, ptr %40, i32 1
  store ptr %41, ptr %5, align 4
  store i32 %39, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 2
  %43 = load i16, ptr %42, align 2
  %44 = lshr i16 %43, 8
  %45 = and i16 %44, 15
  %46 = lshr i16 %43, 3
  %47 = and i16 %46, 16
  %48 = or i16 %45, %47
  %49 = zext i16 %48 to i32
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr i32, ptr %50, i32 1
  store ptr %51, ptr %5, align 4
  store i32 %49, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, ptr %20, align 8
  %56 = lshr i8 %55, 6
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = or i32 %58, %54
  %60 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 7, i32 1
  %61 = load i8, ptr %60, align 8, !range !9
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 17
  %64 = or i32 %59, %63
  %65 = load ptr, ptr %5, align 4
  %66 = getelementptr i32, ptr %65, i32 1
  store ptr %66, ptr %5, align 4
  store i32 %64, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 3
  %68 = load i16, ptr %67, align 4
  %69 = and i16 %68, 8191
  %70 = zext i16 %69 to i32
  %71 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = lshr i32 %72, 6
  %74 = and i32 %73, 8191
  %75 = or i32 %74, %70
  %76 = load ptr, ptr %5, align 4
  %77 = getelementptr i32, ptr %76, i32 1
  store ptr %77, ptr %5, align 4
  store i32 %75, ptr %76, align 4
  %78 = load ptr, ptr %5, align 4
  %79 = getelementptr i32, ptr %78, i32 1
  store ptr %79, ptr %5, align 4
  store i32 262720, ptr %78, align 4
  %80 = load ptr, ptr %5, align 4
  %81 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 7
  %82 = load i32, ptr %81, align 4
  store i32 %82, ptr %80, align 4
  %83 = load ptr, ptr %5, align 4
  %84 = getelementptr i32, ptr %83, i32 1
  %85 = getelementptr i32, ptr %83, i32 2
  store ptr %85, ptr %5, align 4
  store i32 262752, ptr %84, align 4
  %86 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 8
  %87 = load i64, ptr %86, align 8
  %88 = lshr i64 %87, 8
  %89 = trunc i64 %88 to i32
  %90 = load ptr, ptr %5, align 4
  %91 = getelementptr i32, ptr %90, i32 1
  store ptr %91, ptr %5, align 4
  store i32 %89, ptr %90, align 4
  %92 = load ptr, ptr %5, align 4
  %93 = getelementptr i32, ptr %92, i32 1
  store ptr %93, ptr %5, align 4
  store i32 262800, ptr %92, align 4
  %94 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 8
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 16
  %97 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 9
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, -65536
  %100 = or i32 %99, %96
  %101 = load ptr, ptr %5, align 4
  %102 = getelementptr i32, ptr %101, i32 1
  store ptr %102, ptr %5, align 4
  store i32 %100, ptr %101, align 4
  %103 = load ptr, ptr %5, align 4
  %104 = getelementptr i32, ptr %103, i32 1
  store ptr %104, ptr %5, align 4
  store i32 262808, ptr %103, align 4
  %105 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 11
  %106 = load i32, ptr %105, align 4
  %107 = lshr i32 %106, 16
  %108 = and i32 %107, 32767
  %109 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 10
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 2147418112
  %112 = or i32 %108, %111
  %113 = load ptr, ptr %5, align 4
  %114 = getelementptr i32, ptr %113, i32 1
  store ptr %114, ptr %5, align 4
  store i32 %112, ptr %113, align 4
  %115 = load ptr, ptr %5, align 4
  %116 = getelementptr i32, ptr %115, i32 1
  store ptr %116, ptr %5, align 4
  store i32 262820, ptr %115, align 4
  %117 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 6
  %118 = load i32, ptr %117, align 8
  %119 = and i32 %118, 32767
  %120 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 7
  %121 = load i32, ptr %120, align 4
  %122 = shl i32 %121, 16
  %123 = and i32 %122, 2147418112
  %124 = or i32 %123, %119
  %125 = load ptr, ptr %5, align 4
  %126 = getelementptr i32, ptr %125, i32 1
  store ptr %126, ptr %5, align 4
  store i32 %124, ptr %125, align 4
  br label %127

127:                                              ; preds = %17, %11
  %128 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %128
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @head907d_olut_load(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
