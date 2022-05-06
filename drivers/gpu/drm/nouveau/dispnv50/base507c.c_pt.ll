; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/base507c.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/base507c.c"
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
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }
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
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.88, %struct.anon.89, %struct.nv50_head_mode, %struct.anon.92, %struct.anon.93, %struct.anon.94, %struct.anon.95, %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.100, %struct.nv50_crc_atom, %struct.anon.101, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.anon.88 = type { i32, i32, i32 }
%struct.anon.89 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.90, %struct.anon.91 }
%struct.anon.90 = type { i16, i16, i16, i16 }
%struct.anon.91 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.92 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.93 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.94 = type { i8, i32, [6 x i8], i8 }
%struct.anon.95 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.96 = type { i8 }
%struct.anon.97 = type { i8 }
%struct.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { i16, i16 }
%struct.anon.100 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.101 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.102 }
%struct.anon.102 = type { i16 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.75, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.75 = type { [4 x i8] }
%struct.nvif_notify_uevent_req = type {}
%struct.nv50_disp_base_channel_dma_v0 = type { i8, i8, [6 x i8], i64 }
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
%struct.nouveau_display = type { ptr, ptr, ptr, ptr, %struct.nvif_disp, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_disp = type { %struct.nvif_object }
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

@base507c_format = dso_local constant [13 x i32] [i32 538982467, i32 909199186, i32 892424792, i32 892424769, i32 875713112, i32 875713089, i32 808665688, i32 808665665, i32 875709016, i32 875708993, i32 1211384408, i32 1211384385, i32 0], align 4
@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: base%04x allocation failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"kmsBaseNtfy\00", align 1
@base507c = internal constant %struct.nv50_wndw_func { ptr @base507c_acquire, ptr @base507c_release, ptr null, ptr @base507c_sema_set, ptr @base507c_sema_clr, ptr @base507c_ntfy_reset, ptr @base507c_ntfy_set, ptr @base507c_ntfy_clr, ptr @base507c_ntfy_wait_begun, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, i8 1, ptr @base507c_xlut_set, ptr @base507c_xlut_clr, ptr @base507c_image_set, ptr @base507c_image_clr, ptr null, ptr null, ptr @base507c_update }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @base507c_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 2
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 2) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 262272, ptr %18, align 4
  %20 = load i32, ptr %1, align 4
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i32, ptr %21, i32 1
  store ptr %22, ptr %5, align 4
  store i32 %20, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %4) #7
  br label %25

25:                                               ; preds = %17, %11
  %26 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @base507c_image_clr(ptr nocapture noundef readonly %0) #0 {
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
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 4) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 262276, ptr %17, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i32, ptr %19, i32 1
  store ptr %20, ptr %4, align 4
  store i32 0, ptr %19, align 4
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i32, ptr %21, i32 1
  store ptr %22, ptr %4, align 4
  store i32 262336, ptr %21, align 4
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
define dso_local i32 @base507c_xlut_clr(ptr nocapture noundef readonly %0) #0 {
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
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 2) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 262368, ptr %17, align 4
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
define dso_local i32 @base507c_xlut_set(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 2
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 2) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 262368, ptr %18, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i32, ptr %20, i32 1
  store ptr %21, ptr %5, align 4
  store i32 1073741824, ptr %20, align 4
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @base507c_ntfy_wait_begun(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.nvif_timer_wait, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  call void @nvif_timer_wait_init(ptr noundef %2, i64 noundef 2000000000, ptr noundef nonnull %4) #7
  %5 = lshr i32 %1, 2
  %6 = call i32 @nouveau_bo_rd32(ptr noundef %0, i32 noundef %5) #7
  %7 = and i32 %6, -1073741824
  %8 = icmp eq i32 %7, 1073741824
  br i1 %8, label %16, label %13

9:                                                ; preds = %13
  %10 = call i32 @nouveau_bo_rd32(ptr noundef %0, i32 noundef %5) #7
  %11 = and i32 %10, -1073741824
  %12 = icmp eq i32 %11, 1073741824
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %3
  call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #7
  %14 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %4) #7
  %15 = icmp sgt i64 %14, -1
  br i1 %15, label %9, label %16

16:                                               ; preds = %13, %9, %3
  %17 = phi i64 [ 0, %3 ], [ %14, %9 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  %18 = call i64 @llvm.smin.i64(i64 %17, i64 0)
  %19 = trunc i64 %18 to i32
  ret i32 %19
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_rd32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @base507c_ntfy_clr(ptr nocapture noundef readonly %0) #0 {
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
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 2) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 262308, ptr %17, align 4
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
define dso_local i32 @base507c_ntfy_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 3) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 524448, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 3
  %21 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 3, i32 1
  %22 = load i16, ptr %21, align 4
  %23 = lshr i16 %22, 12
  %24 = and i16 %23, 1
  %25 = zext i16 %24 to i32
  %26 = shl nuw nsw i32 %25, 30
  %27 = and i16 %22, 4092
  %28 = zext i16 %27 to i32
  %29 = or i32 %26, %28
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr i32, ptr %30, i32 1
  store ptr %31, ptr %5, align 4
  store i32 %29, ptr %30, align 4
  %32 = load i32, ptr %20, align 4
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i32, ptr %33, i32 1
  store ptr %34, ptr %5, align 4
  store i32 %32, ptr %33, align 4
  br label %35

35:                                               ; preds = %17, %11
  %36 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @base507c_ntfy_reset(ptr noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 2
  tail call void @nouveau_bo_wr32(ptr noundef %0, i32 noundef %3, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @base507c_sema_clr(ptr nocapture noundef readonly %0) #0 {
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
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 2) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 262292, ptr %17, align 4
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
define dso_local i32 @base507c_sema_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 5) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 1048712, ptr %18, align 4
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @base507c_release(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 7, i32 1
  store i8 0, ptr %4, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @base507c_acquire(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %1, ptr noundef %2, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %60

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.nv50_wndw_func, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 7, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = icmp ne i8 %15, 1
  %17 = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_format_info, ptr %18, i32 0, i32 3
  %20 = load i8, ptr %19, align 2
  %21 = icmp ne i8 %20, 1
  %22 = xor i1 %16, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.drm_crtc_state, ptr %2, i32 0, i32 3
  %25 = load i8, ptr %24, align 2
  %26 = or i8 %25, 32
  store i8 %26, ptr %24, align 2
  br label %27

27:                                               ; preds = %23, %13, %8
  %28 = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.drm_format_info, ptr %29, i32 0, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 7
  store i8 %31, ptr %32, align 8
  %33 = load ptr, ptr %28, align 8
  %34 = getelementptr inbounds %struct.drm_format_info, ptr %33, i32 0, i32 3
  %35 = load i8, ptr %34, align 2
  %36 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 7, i32 1
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %38, 16
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 7, i32 2
  store i16 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = lshr i32 %43, 16
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 7, i32 3
  store i16 %45, ptr %46, align 4
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds %struct.drm_framebuffer, ptr %47, i32 0, i32 9
  %49 = load i32, ptr %48, align 8
  %50 = trunc i32 %49 to i16
  %51 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 7, i32 4
  store i16 %50, ptr %51, align 2
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds %struct.drm_framebuffer, ptr %52, i32 0, i32 10
  %54 = load i32, ptr %53, align 4
  %55 = trunc i32 %54 to i16
  %56 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 7, i32 5
  store i16 %55, ptr %56, align 8
  %57 = icmp eq i8 %31, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %27
  %59 = shl i8 %35, 3
  store i8 %59, ptr %32, align 8
  br label %60

60:                                               ; preds = %58, %27, %3
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @base507c_new_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.nvif_notify_uevent_req, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.nv50_disp_base_channel_dma_v0, align 8
  %11 = alloca ptr, align 4
  store i32 %4, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7
  %12 = getelementptr inbounds %struct.nv50_disp_base_channel_dma_v0, ptr %10, i32 0, i32 1
  %13 = trunc i32 %3 to i8
  store i64 0, ptr %10, align 8
  store i8 %13, ptr %12, align 1
  %14 = getelementptr inbounds %struct.nv50_disp_base_channel_dma_v0, ptr %10, i32 0, i32 2
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %2, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(14) %14, i8 0, i64 14, i1 false)
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  store ptr null, ptr %11, align 4, !annotation !8
  %22 = shl nuw i32 1, %3
  %23 = call i32 @nv50_wndw_new_(ptr noundef %0, ptr noundef %16, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %3, ptr noundef %1, i32 noundef %22, i32 noundef 2, i32 noundef %5, ptr noundef nonnull %11) #7
  %24 = load ptr, ptr %11, align 4
  store ptr %24, ptr %6, align 4
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %7
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %2, i32 0, i32 2, i32 3
  %28 = getelementptr inbounds %struct.nouveau_display, ptr %20, i32 0, i32 4
  %29 = getelementptr inbounds %struct.nv50_disp, ptr %21, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nouveau_bo, ptr %30, i32 0, i32 13
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nv50_wndw, ptr %24, i32 0, i32 7
  %34 = call i32 @nv50_dmac_create(ptr noundef %27, ptr noundef %28, ptr noundef nonnull %9, i8 noundef zeroext %13, ptr noundef nonnull %10, i32 noundef 16, i64 noundef %32, ptr noundef %33) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.nouveau_drm, ptr %2, i32 0, i32 2, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nouveau_drm, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %2, i32 0, i32 2, i32 12
  %44 = load i32, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.1, ptr noundef %43, i32 noundef %44, i32 noundef %34) #8
  br label %64

45:                                               ; preds = %26
  %46 = load ptr, ptr %11, align 4
  %47 = getelementptr inbounds %struct.nv50_wndw, ptr %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.nv50_wndw, ptr %46, i32 0, i32 9
  %49 = getelementptr inbounds %struct.nv50_wndw, ptr %46, i32 0, i32 9, i32 6
  %50 = load ptr, ptr %49, align 8
  %51 = call i32 @nvif_notify_ctor(ptr noundef %47, ptr noundef nonnull @.str.2, ptr noundef %50, i1 noundef zeroext false, i8 noundef zeroext 0, ptr noundef nonnull %8, i32 noundef 0, i32 noundef 0, ptr noundef %48) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %45
  %54 = load ptr, ptr %11, align 4
  %55 = getelementptr inbounds %struct.nv50_wndw, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = trunc i32 %56 to i16
  %58 = shl i16 %57, 6
  %59 = add i16 %58, 96
  %60 = getelementptr inbounds %struct.nv50_wndw, ptr %54, i32 0, i32 10
  store i16 %59, ptr %60, align 4
  %61 = add i16 %58, 64
  %62 = getelementptr inbounds %struct.nv50_wndw, ptr %54, i32 0, i32 11
  store i16 %61, ptr %62, align 2
  %63 = getelementptr inbounds %struct.nv50_wndw, ptr %54, i32 0, i32 12
  store i32 0, ptr %63, align 8
  br label %64

64:                                               ; preds = %53, %45, %36, %7
  %65 = phi i32 [ %34, %36 ], [ 0, %53 ], [ %23, %7 ], [ %51, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_wndw_new_(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dmac_create(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_ctor(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @base507c_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = shl i32 %1, 3
  %6 = shl i32 2, %5
  %7 = tail call i32 @base507c_new_(ptr noundef nonnull @base507c, ptr noundef nonnull @base507c_format, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %6, ptr noundef %3)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @base507c_image_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 13) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %105

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 262276, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8
  %21 = load i8, ptr %20, align 8
  %22 = and i8 %21, 3
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = shl i8 %21, 2
  %26 = and i8 %25, -16
  %27 = zext i8 %26 to i32
  %28 = or i32 %24, %27
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr i32, ptr %29, i32 1
  store ptr %30, ptr %5, align 4
  store i32 %28, ptr %29, align 4
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr i32, ptr %31, i32 1
  store ptr %32, ptr %5, align 4
  store i32 262336, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %5, align 4
  %36 = getelementptr i32, ptr %35, i32 1
  store ptr %36, ptr %5, align 4
  store i32 %34, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, -54
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr i32, ptr %40, i32 1
  store ptr %41, ptr %5, align 4
  store i32 524560, ptr %40, align 4
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr i32, ptr %42, i32 1
  store ptr %43, ptr %5, align 4
  br i1 %39, label %44, label %47

44:                                               ; preds = %17
  store i32 1, ptr %42, align 4
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr i32, ptr %45, i32 1
  store ptr %46, ptr %5, align 4
  store i32 6553600, ptr %45, align 4
  br label %50

47:                                               ; preds = %17
  store i32 0, ptr %42, align 4
  %48 = load ptr, ptr %5, align 4
  %49 = getelementptr i32, ptr %48, i32 1
  store ptr %49, ptr %5, align 4
  store i32 0, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load ptr, ptr %5, align 4
  %52 = getelementptr i32, ptr %51, i32 1
  store ptr %52, ptr %5, align 4
  store i32 264192, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 8
  %54 = load i64, ptr %53, align 8
  %55 = lshr i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = load ptr, ptr %5, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  store ptr %58, ptr %5, align 4
  store i32 %56, ptr %57, align 4
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr i32, ptr %59, i32 1
  store ptr %60, ptr %5, align 4
  store i32 788488, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 5
  %62 = load i16, ptr %61, align 8
  %63 = and i16 %62, 32767
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 6
  %66 = load i16, ptr %65, align 2
  %67 = and i16 %66, 32767
  %68 = zext i16 %67 to i32
  %69 = shl nuw nsw i32 %68, 16
  %70 = or i32 %69, %64
  %71 = load ptr, ptr %5, align 4
  %72 = getelementptr i32, ptr %71, i32 1
  store ptr %72, ptr %5, align 4
  store i32 %70, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 2
  %74 = load i16, ptr %73, align 2
  %75 = lshr i16 %74, 7
  %76 = and i16 %75, 1
  %77 = zext i16 %76 to i32
  %78 = shl nuw nsw i32 %77, 20
  %79 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 261888
  %82 = or i32 %78, %81
  %83 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 3
  %84 = load i16, ptr %83, align 4
  %85 = and i16 %84, 1023
  %86 = zext i16 %85 to i32
  %87 = shl nuw nsw i32 %86, 8
  %88 = lshr i16 %74, 8
  %89 = and i16 %88, 15
  %90 = zext i16 %89 to i32
  %91 = or i32 %87, %90
  %92 = or i32 %91, %82
  %93 = load ptr, ptr %5, align 4
  %94 = getelementptr i32, ptr %93, i32 1
  store ptr %94, ptr %5, align 4
  store i32 %92, ptr %93, align 4
  %95 = load i8, ptr %37, align 1
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 8
  %98 = load i16, ptr %73, align 2
  %99 = and i16 %98, 127
  %100 = zext i16 %99 to i32
  %101 = shl nuw nsw i32 %100, 16
  %102 = or i32 %101, %97
  %103 = load ptr, ptr %5, align 4
  %104 = getelementptr i32, ptr %103, i32 1
  store ptr %104, ptr %5, align 4
  store i32 %102, ptr %103, align 4
  br label %105

105:                                              ; preds = %50, %11
  %106 = phi i32 [ 0, %50 ], [ %13, %11 ]
  ret i32 %106
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
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
!8 = !{!"auto-init"}
