; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/wndw.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/wndw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.128 = type { i32, i32, ptr }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.105, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.105 = type { ptr, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.77 = type { i32, ptr }
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
%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_wimm_func = type { ptr, ptr }
%struct.nv50_wndw_ctxdma = type { %struct.list_head, %struct.nvif_object }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.75, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.75 = type { [4 x i8] }
%struct.nouveau_display = type { ptr, ptr, ptr, ptr, %struct.nvif_disp, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_disp = type { %struct.nvif_object }
%struct.nvif_sclass = type { i32, i32, i32 }
%struct.anon.129 = type { %struct.nv_dma_v0, %union.anon.130 }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }
%union.anon.130 = type { %struct.nv50_dma_v0 }
%struct.nv50_dma_v0 = type { i8, i8, i8, i8, i8, [3 x i8] }
%struct.dma_resv_iter = type { ptr, i8, ptr, i32, i32, ptr, i32, i8 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
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
%struct.dma_fence = type { ptr, ptr, %union.anon.69, i64, i64, i32, %struct.kref, i32 }
%union.anon.69 = type { i64 }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.88, %struct.anon.89, %struct.nv50_head_mode, %struct.anon.92, %struct.anon.93, %struct.anon.94, %struct.anon.95, %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.100, %struct.nv50_crc_atom, %struct.anon.101, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
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

@nv50_wndw = dso_local constant %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @nv50_wndw_destroy, ptr @nv50_wndw_reset, ptr null, ptr @nv50_wndw_atomic_duplicate_state, ptr @nv50_wndw_atomic_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_plane_format_mod_supported }, align 4
@nv50_cursor_format_modifiers = internal constant [2 x i64] [i64 0, i64 72057594037927935], align 8
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@nv50_wndw_helper = internal constant %struct.drm_plane_helper_funcs { ptr @nv50_wndw_prepare_fb, ptr @nv50_wndw_cleanup_fb, ptr @nv50_wndw_atomic_check, ptr null, ptr null, ptr null, ptr null }, align 4
@__const.nv50_wndw_new.wndws = private unnamed_addr constant [4 x %struct.anon.128] [%struct.anon.128 { i32 50814, i32 0, ptr @wndwc67e_new }, %struct.anon.128 { i32 50558, i32 0, ptr @wndwc57e_new }, %struct.anon.128 { i32 50046, i32 0, ptr @wndwc37e_new }, %struct.anon.128 zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: No supported window class\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/nouveau/dispnv50/wndw.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"%s: %s prepare: %p\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"kmsFbCtxDma\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%s: %s cleanup: %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%s: %s atomic_check\0A\00", align 1
@nv50_wndw_atomic_check_lut.dummy = internal global %struct.drm_property_blob zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"%s: %s acquire\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"%s: %s release\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_wndw_wait_armed(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 12
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.nv50_wndw_func, ptr %15, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nv50_disp, ptr %14, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 3, i32 1
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, 4095
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 %17(ptr noundef %19, i32 noundef %23, ptr noundef %25) #9
  br label %27

27:                                               ; preds = %7, %2
  %28 = phi i32 [ %26, %7 ], [ 0, %2 ]
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_wndw_flush_clr(ptr noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %3, i32 0, i32 13
  %6 = load i8, ptr %5, align 4
  br i1 %2, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %3, i32 0, i32 12
  %9 = load i8, ptr %8, align 1
  %10 = xor i8 %9, -1
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i8 [ %10, %7 ], [ -1, %4 ]
  %13 = and i8 %12, %6
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr inbounds %struct.nv50_wndw_func, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0) #9
  br label %21

21:                                               ; preds = %16, %11
  %22 = and i8 %13, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds %struct.nv50_wndw_func, ptr %25, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %0) #9
  br label %29

29:                                               ; preds = %24, %21
  %30 = and i8 %13, 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.nv50_wndw_func, ptr %33, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %0) #9
  br label %37

37:                                               ; preds = %32, %29
  %38 = and i8 %13, 8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds %struct.nv50_wndw_func, ptr %41, i32 0, i32 12
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %0) #9
  br label %45

45:                                               ; preds = %40, %37
  %46 = and i8 %13, 16
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %0, align 8
  %50 = getelementptr inbounds %struct.nv50_wndw_func, ptr %49, i32 0, i32 19
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 %51(ptr noundef %0) #9
  br label %53

53:                                               ; preds = %48, %45
  %54 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 3
  %55 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 3, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %54, align 4
  %58 = getelementptr i32, ptr %1, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, ptr %58, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_wndw_flush_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %2, i32 0, i32 8
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, -64
  %10 = or i8 %9, 4
  store i8 %10, ptr %7, align 8
  br label %11

11:                                               ; preds = %6, %3
  %12 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %2, i32 0, i32 12
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr inbounds %struct.nv50_wndw_func, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, ptr noundef %2) #9
  %21 = load i8, ptr %12, align 1
  br label %22

22:                                               ; preds = %16, %11
  %23 = phi i8 [ %21, %16 ], [ %13, %11 ]
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.nv50_wndw_func, ptr %27, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %0, ptr noundef %2) #9
  %31 = load i8, ptr %12, align 1
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i8 [ %31, %26 ], [ %23, %22 ]
  %34 = and i8 %33, 16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds %struct.nv50_wndw_func, ptr %37, i32 0, i32 18
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %0, ptr noundef %2) #9
  %41 = load i8, ptr %12, align 1
  br label %42

42:                                               ; preds = %36, %32
  %43 = phi i8 [ %41, %36 ], [ %33, %32 ]
  %44 = and i8 %43, 4
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %2, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %2, i32 0, i32 6, i32 2
  %53 = load i48, ptr %52, align 8
  %54 = lshr i48 %53, 40
  %55 = trunc i48 %54 to i32
  %56 = and i32 %55, 1
  %57 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %2, i32 0, i32 6, i32 2, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = tail call i32 @nv50_lut_load(ptr noundef %51, i32 noundef %56, ptr noundef nonnull %48, ptr noundef %58) #9
  %60 = zext i32 %59 to i48
  %61 = load i48, ptr %52, align 8
  %62 = and i48 %61, -1099511627776
  %63 = or i48 %62, %60
  store i48 %63, ptr %52, align 8
  br label %64

64:                                               ; preds = %50, %46
  %65 = load ptr, ptr %0, align 8
  %66 = getelementptr inbounds %struct.nv50_wndw_func, ptr %65, i32 0, i32 16
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 %67(ptr noundef %0, ptr noundef %2) #9
  %69 = load i8, ptr %12, align 1
  br label %70

70:                                               ; preds = %64, %42
  %71 = phi i8 [ %69, %64 ], [ %43, %42 ]
  %72 = and i8 %71, 8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %0, align 8
  %76 = getelementptr inbounds %struct.nv50_wndw_func, ptr %75, i32 0, i32 11
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 %77(ptr noundef %0, ptr noundef %2) #9
  %79 = load i8, ptr %12, align 1
  br label %80

80:                                               ; preds = %74, %70
  %81 = phi i8 [ %79, %74 ], [ %71, %70 ]
  %82 = and i8 %81, 32
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %0, align 8
  %86 = getelementptr inbounds %struct.nv50_wndw_func, ptr %85, i32 0, i32 20
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 %87(ptr noundef %0, ptr noundef %2) #9
  %89 = load i8, ptr %12, align 1
  br label %90

90:                                               ; preds = %84, %80
  %91 = phi i8 [ %89, %84 ], [ %81, %80 ]
  %92 = icmp sgt i8 %91, -1
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %0, align 8
  %95 = getelementptr inbounds %struct.nv50_wndw_func, ptr %94, i32 0, i32 21
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 %96(ptr noundef %0, ptr noundef %2) #9
  %98 = load i8, ptr %12, align 1
  br label %99

99:                                               ; preds = %93, %90
  %100 = phi i8 [ %98, %93 ], [ %91, %90 ]
  %101 = and i8 %100, 64
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %128, label %103

103:                                              ; preds = %99
  %104 = and i8 %100, -65
  store i8 %104, ptr %12, align 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 3
  %108 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 3, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = load i32, ptr %107, align 4
  %111 = getelementptr i32, ptr %1, i32 %110
  %112 = load i32, ptr %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, ptr %111, align 4
  br label %114

114:                                              ; preds = %106, %103
  %115 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 3, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr i32, ptr %1, i32 5
  %118 = load i32, ptr %117, align 4
  %119 = or i32 %118, %116
  store i32 %119, ptr %117, align 4
  %120 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %121, align 4
  %123 = tail call i32 %122(ptr noundef %0, ptr noundef %2) #9
  %124 = load ptr, ptr %120, align 4
  %125 = getelementptr inbounds %struct.nv50_wimm_func, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = tail call i32 %126(ptr noundef %0, ptr noundef %1) #9
  br label %136

128:                                              ; preds = %99
  %129 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 3
  %130 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 3, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = load i32, ptr %129, align 4
  %133 = getelementptr i32, ptr %1, i32 %132
  %134 = load i32, ptr %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, ptr %133, align 4
  br label %136

136:                                              ; preds = %128, %114
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_lut_load(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_wndw_ntfy_enable(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 4, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 3
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 10
  %14 = load i16, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 3, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %14, 4095
  %18 = and i16 %16, -8192
  %19 = or i16 %18, %17
  store i16 %19, ptr %15, align 4
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 12
  %21 = load i8, ptr %20, align 1
  %22 = or i8 %21, 1
  store i8 %22, ptr %20, align 1
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.nv50_wndw_func, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = load i16, ptr %13, align 4
  %29 = zext i16 %28 to i32
  tail call void %25(ptr noundef %27, i32 noundef %29) #9
  %30 = load i16, ptr %13, align 4
  %31 = xor i16 %30, 16
  store i16 %31, ptr %13, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_wndw_destroy(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %14, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nv50_wndw_ctxdma, ptr %6, i32 0, i32 1
  tail call void @nvif_object_dtor(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @kfree(ptr noundef %6) #9
  %13 = icmp eq ptr %7, %2
  br i1 %13, label %14, label %5

14:                                               ; preds = %5, %1
  %15 = getelementptr i8, ptr %0, i32 -40
  %16 = getelementptr i8, ptr %0, i32 1096
  %17 = tail call i32 @nvif_notify_dtor(ptr noundef %16) #9
  %18 = getelementptr i8, ptr %0, i32 840
  tail call void @nv50_dmac_destroy(ptr noundef %18) #9
  %19 = getelementptr i8, ptr %0, i32 584
  tail call void @nv50_dmac_destroy(ptr noundef %19) #9
  %20 = getelementptr i8, ptr %0, i32 456
  tail call void @nv50_lut_fini(ptr noundef %20) #9
  tail call void @drm_plane_cleanup(ptr noundef %0) #9
  tail call void @kfree(ptr noundef %15) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_wndw_reset(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 368) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 631, i32 noundef 9, ptr noundef null) #9
  br label %31

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.drm_plane_funcs, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %0, ptr noundef nonnull %8) #9
  br label %15

15:                                               ; preds = %10, %6
  tail call void @__drm_atomic_helper_plane_reset(ptr noundef %0, ptr noundef nonnull %3) #9
  %16 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 16
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 1
  %19 = icmp eq i32 %17, 0
  %20 = select i1 %19, i32 1, i32 255
  %21 = select i1 %18, i32 0, i32 %20
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.drm_plane_state, ptr %22, i32 0, i32 15
  store i32 %21, ptr %23, align 4
  %24 = load i32, ptr %16, align 8
  %25 = icmp eq i32 %24, 1
  %26 = icmp eq i32 %24, 0
  %27 = select i1 %26, i32 1, i32 255
  %28 = select i1 %25, i32 0, i32 %27
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 16
  store i32 %28, ptr %30, align 4
  br label %31

31:                                               ; preds = %15, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv50_wndw_atomic_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 368) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  tail call void @__drm_atomic_helper_plane_duplicate_state(ptr noundef %0, ptr noundef nonnull %5) #9
  %8 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 4
  %9 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %3, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %8, ptr noundef align 4 dereferenceable(16) %9, i32 16, i1 false)
  %10 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 3
  %11 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %3, i32 0, i32 3
  %12 = load i64, ptr %11, align 4
  store i64 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 1
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 6
  %15 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %3, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %14, ptr noundef align 8 dereferenceable(24) %15, i32 24, i1 false)
  %16 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 7
  %17 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %3, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(52) %16, ptr noundef align 8 dereferenceable(52) %17, i32 52, i1 false)
  %18 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 8
  %19 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %3, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(104) %18, ptr noundef align 8 dereferenceable(104) %19, i32 104, i1 false)
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 10
  %21 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %3, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 13
  store i8 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %5, i32 0, i32 12
  store i8 0, ptr %24, align 1
  br label %25

25:                                               ; preds = %7, %1
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_wndw_atomic_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @__drm_atomic_helper_plane_destroy_state(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv50_plane_format_mod_supported(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 1, i32 2
  %8 = load i16, ptr %7, align 2
  %9 = icmp ult i16 %8, 192
  br i1 %9, label %10, label %34

10:                                               ; preds = %3
  %11 = tail call ptr @drm_format_info(i32 noundef %1) #9
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.drm_format_info, ptr %11, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.drm_format_info, ptr %11, i32 0, i32 3
  %19 = and i64 %2, 1044480
  %20 = icmp ne i64 %19, 458752
  %21 = zext i8 %15 to i32
  br label %22

22:                                               ; preds = %22, %17
  %23 = phi i32 [ 0, %17 ], [ %28, %22 ]
  %24 = getelementptr [4 x i8], ptr %18, i32 0, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = icmp ne i8 %25, 4
  %27 = and i1 %20, %26
  %28 = add nuw nsw i32 %23, 1
  %29 = icmp eq i32 %28, %21
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %31, label %22

31:                                               ; preds = %22
  %32 = and i1 %20, %26
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %31, %13, %10, %3
  %35 = phi i1 [ true, %3 ], [ false, %10 ], [ true, %13 ], [ %33, %31 ]
  ret i1 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_wndw_fini(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 9
  %3 = tail call i32 @nvif_notify_put(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_wndw_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 9
  %3 = tail call i32 @nvif_notify_get(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_wndw_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nocapture noundef %9) local_unnamed_addr #0 {
  %11 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 2, i32 4
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 1200) #10
  store ptr %18, ptr %9, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %86, label %20

20:                                               ; preds = %10
  store ptr %0, ptr %18, align 8
  %21 = getelementptr inbounds %struct.nv50_wndw, ptr %18, i32 0, i32 2
  store i32 %4, ptr %21, align 8
  %22 = getelementptr inbounds %struct.nv50_wndw, ptr %18, i32 0, i32 3
  store i32 %7, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nv50_wndw, ptr %18, i32 0, i32 3, i32 1
  store i32 %8, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nv50_wndw, ptr %18, i32 0, i32 7
  %25 = getelementptr inbounds %struct.nv50_wndw, ptr %18, i32 0, i32 4
  store ptr %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.nv50_wndw, ptr %18, i32 0, i32 4, i32 1
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nv50_wndw, ptr %18, i32 0, i32 4, i32 1, i32 1
  store ptr %26, ptr %27, align 8
  br label %28

28:                                               ; preds = %28, %20
  %29 = phi i32 [ 0, %20 ], [ %33, %28 ]
  %30 = getelementptr i32, ptr %5, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = add i32 %29, 1
  br i1 %32, label %34, label %28

34:                                               ; preds = %28
  %35 = icmp eq i32 %2, 2
  br i1 %35, label %42, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr %11, align 4
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %37, i32 0, i32 19
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nouveau_display, ptr %39, i32 0, i32 13
  %41 = load ptr, ptr %40, align 8
  br label %42

42:                                               ; preds = %36, %34
  %43 = phi ptr [ %41, %36 ], [ @nv50_cursor_format_modifiers, %34 ]
  %44 = getelementptr inbounds %struct.nv50_wndw, ptr %18, i32 0, i32 5
  %45 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %1, ptr noundef %44, i32 noundef %6, ptr noundef nonnull @nv50_wndw, ptr noundef %5, i32 noundef %29, ptr noundef %43, i32 noundef %2, ptr noundef nonnull @.str, ptr noundef %3, i32 noundef %4) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %48) #9
  store ptr null, ptr %9, align 4
  br label %86

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.nv50_wndw, ptr %18, i32 0, i32 5, i32 18
  store ptr @nv50_wndw_helper, ptr %50, align 8
  %51 = load ptr, ptr %18, align 8
  %52 = getelementptr inbounds %struct.nv50_wndw_func, ptr %51, i32 0, i32 9
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.nv50_wndw, ptr %18, i32 0, i32 6
  %57 = tail call i32 @nv50_lut_init(ptr noundef %16, ptr noundef %13, ptr noundef %56) #9
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %55
  %60 = load ptr, ptr %18, align 8
  br label %61

61:                                               ; preds = %59, %49
  %62 = phi ptr [ %60, %59 ], [ %51, %49 ]
  %63 = getelementptr inbounds %struct.nv50_wndw, ptr %18, i32 0, i32 9, i32 6
  store ptr @nv50_wndw_notify, ptr %63, align 8
  %64 = getelementptr inbounds %struct.nv50_wndw_func, ptr %62, i32 0, i32 21
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.nv50_wndw, ptr %18, i32 0, i32 5, i32 16
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, 1
  %70 = icmp eq i32 %68, 0
  %71 = select i1 %70, i32 1, i32 255
  %72 = select i1 %69, i32 0, i32 %71
  br i1 %66, label %82, label %73

73:                                               ; preds = %61
  %74 = tail call i32 @drm_plane_create_zpos_property(ptr noundef %44, i32 noundef %72, i32 noundef 0, i32 noundef 254) #9
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = tail call i32 @drm_plane_create_alpha_property(ptr noundef %44) #9
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = tail call i32 @drm_plane_create_blend_mode_property(ptr noundef %44, i32 noundef 7) #9
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %86

82:                                               ; preds = %61
  %83 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef %44, i32 noundef %72) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82, %79
  br label %86

86:                                               ; preds = %85, %82, %79, %76, %73, %55, %47, %10
  %87 = phi i32 [ %45, %47 ], [ 0, %85 ], [ -12, %10 ], [ %57, %55 ], [ %74, %73 ], [ %77, %76 ], [ %80, %79 ], [ %83, %82 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_lut_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nv50_wndw_notify(ptr nocapture noundef readnone %0) #4 {
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_alpha_property(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_wndw_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 19
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !9
  %14 = call i32 @nvif_object_sclass_get(ptr noundef %13, ptr noundef nonnull %5) #9
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = icmp eq i32 %14, 0
  %18 = load ptr, ptr %5, align 4
  br i1 %17, label %20, label %21

19:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %71

20:                                               ; preds = %68, %54, %37, %16
  call void @nvif_object_sclass_put(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %71

21:                                               ; preds = %34, %16
  %22 = phi i32 [ %35, %34 ], [ 0, %16 ]
  %23 = getelementptr %struct.nvif_sclass, ptr %18, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 50814
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = getelementptr %struct.nvif_sclass, ptr %18, i32 %22, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.nvif_sclass, ptr %18, i32 %22, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %79

34:                                               ; preds = %30, %26, %21
  %35 = add nuw nsw i32 %22, 1
  %36 = icmp eq i32 %35, %14
  br i1 %36, label %37, label %21

37:                                               ; preds = %34
  br i1 %17, label %20, label %38

38:                                               ; preds = %51, %37
  %39 = phi i32 [ %52, %51 ], [ 0, %37 ]
  %40 = getelementptr %struct.nvif_sclass, ptr %18, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 50558
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = getelementptr %struct.nvif_sclass, ptr %18, i32 %39, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr %struct.nvif_sclass, ptr %18, i32 %39, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %47, %43, %38
  %52 = add nuw nsw i32 %39, 1
  %53 = icmp eq i32 %52, %14
  br i1 %53, label %54, label %38

54:                                               ; preds = %51
  br i1 %17, label %20, label %55

55:                                               ; preds = %68, %54
  %56 = phi i32 [ %69, %68 ], [ 0, %54 ]
  %57 = getelementptr %struct.nvif_sclass, ptr %18, i32 %56
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 50046
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = getelementptr %struct.nvif_sclass, ptr %18, i32 %56, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr %struct.nvif_sclass, ptr %18, i32 %56, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %64, %60, %55
  %69 = add nuw nsw i32 %56, 1
  %70 = icmp eq i32 %69, %14
  br i1 %70, label %20, label %55

71:                                               ; preds = %20, %19
  %72 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.nouveau_drm, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.drm_device, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.1, ptr noundef %78) #11
  br label %90

79:                                               ; preds = %64, %47, %30
  %80 = phi i32 [ 2, %64 ], [ 1, %47 ], [ 0, %30 ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %81 = getelementptr [4 x %struct.anon.128], ptr @__const.nv50_wndw_new.wndws, i32 0, i32 %80
  %82 = getelementptr [4 x %struct.anon.128], ptr @__const.nv50_wndw_new.wndws, i32 0, i32 %80, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = load i32, ptr %81, align 4
  %85 = call i32 %83(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %84, ptr noundef %3) #9
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load ptr, ptr %3, align 4
  %89 = call i32 @nv50_wimm_init(ptr noundef %0, ptr noundef %88) #9
  br label %90

90:                                               ; preds = %87, %79, %71
  %91 = phi i32 [ -19, %71 ], [ %89, %87 ], [ %85, %79 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc67e_new(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc57e_new(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_new(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_wimm_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_dmac_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_lut_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_plane_destroy_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_wndw_prepare_fb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.anon.129, align 8
  %6 = alloca %struct.dma_resv_iter, align 4
  %7 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -40
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  %13 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %13, i8 0, i32 28, i1 false), !annotation !9
  %14 = load i32, ptr @__drm_debug, align 4
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 12
  %25 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef %24, ptr noundef %26, ptr noundef %8) #11
  %27 = load ptr, ptr %7, align 8
  br label %28

28:                                               ; preds = %17, %2
  %29 = phi ptr [ %27, %17 ], [ %8, %2 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %170, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.drm_framebuffer, ptr %8, i32 0, i32 15
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @nouveau_bo_pin(ptr noundef %33, i32 noundef 2, i1 noundef zeroext true) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %170

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %0, i32 -16
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %117, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %8, align 8
  %42 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false) #9
  call void @nouveau_framebuffer_get_layout(ptr noundef %8, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %44 = load i8, ptr %4, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %45, -83886080
  %47 = getelementptr i8, ptr %0, i32 -12
  br label %48

48:                                               ; preds = %52, %40
  %49 = phi ptr [ %47, %40 ], [ %50, %52 ]
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %47
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.nv50_wndw_ctxdma, ptr %50, i32 0, i32 1, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %46
  br i1 %55, label %102, label %48

56:                                               ; preds = %48
  %57 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %58 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 48) #10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %105

61:                                               ; preds = %56
  %62 = load ptr, ptr %47, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %58, ptr %63, align 4
  store ptr %62, ptr %58, align 8
  %64 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %47, ptr %64, align 4
  store volatile ptr %58, ptr %47, align 4
  %65 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 1
  store i8 1, ptr %65, align 1
  %66 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 2
  store i8 3, ptr %66, align 2
  %67 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 4
  store i64 0, ptr %67, align 8
  %68 = getelementptr inbounds %struct.nouveau_drm, ptr %43, i32 0, i32 2, i32 3, i32 1, i32 7
  %69 = load i64, ptr %68, align 8
  %70 = add i64 %69, -1
  %71 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 5
  store i64 %70, ptr %71, align 8
  %72 = getelementptr inbounds %struct.nouveau_drm, ptr %43, i32 0, i32 2, i32 3, i32 1, i32 2
  %73 = load i16, ptr %72, align 2
  %74 = icmp ult i16 %73, 128
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = getelementptr inbounds %struct.anon.129, ptr %5, i32 0, i32 1, i32 0, i32 2
  store i8 1, ptr %76, align 2
  br label %92

77:                                               ; preds = %61
  %78 = icmp ult i16 %73, 192
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.anon.129, ptr %5, i32 0, i32 1, i32 0, i32 2
  store i8 1, ptr %80, align 2
  %81 = load i8, ptr %4, align 1
  %82 = getelementptr inbounds %struct.anon.129, ptr %5, i32 0, i32 1, i32 0, i32 4
  store i8 %81, ptr %82, align 4
  br label %92

83:                                               ; preds = %77
  %84 = icmp ult i16 %73, 208
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i8, ptr %4, align 1
  %87 = getelementptr inbounds %struct.anon.129, ptr %5, i32 0, i32 1, i32 0, i32 2
  store i8 %86, ptr %87, align 2
  br label %92

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.anon.129, ptr %5, i32 0, i32 1, i32 0, i32 1
  store i8 0, ptr %89, align 1
  %90 = load i8, ptr %4, align 1
  %91 = getelementptr inbounds %struct.anon.129, ptr %5, i32 0, i32 1, i32 0, i32 2
  store i8 %90, ptr %91, align 2
  br label %92

92:                                               ; preds = %88, %85, %79, %75
  %93 = load ptr, ptr %37, align 8
  %94 = getelementptr inbounds %struct.nv50_wndw_ctxdma, ptr %58, i32 0, i32 1
  %95 = call i32 @nvif_object_ctor(ptr noundef %93, ptr noundef nonnull @.str.4, i32 noundef %46, i32 noundef 61, ptr noundef nonnull %5, i32 noundef 32, ptr noundef %94) #9
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  call void @nvif_object_dtor(ptr noundef %94) #9
  %98 = load ptr, ptr %64, align 4
  %99 = load ptr, ptr %58, align 8
  %100 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  store ptr %98, ptr %100, align 4
  store volatile ptr %99, ptr %98, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %58, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %64, align 4
  call void @kfree(ptr noundef nonnull %58) #9
  %101 = inttoptr i32 %95 to ptr
  br label %102

102:                                              ; preds = %97, %92, %52
  %103 = phi ptr [ %101, %97 ], [ %58, %92 ], [ %50, %52 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %104 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %109

105:                                              ; preds = %102, %60
  %106 = phi ptr [ inttoptr (i32 -12 to ptr), %60 ], [ %103, %102 ]
  %107 = call i32 @nouveau_bo_unpin(ptr noundef %33) #9
  %108 = ptrtoint ptr %106 to i32
  br label %170

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 2
  %111 = load i8, ptr %110, align 8, !range !10
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.nv50_wndw_ctxdma, ptr %103, i32 0, i32 1, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 7
  store i32 %115, ptr %116, align 4
  br label %117

117:                                              ; preds = %113, %109, %36
  %118 = getelementptr inbounds %struct.drm_gem_object, ptr %33, i32 0, i32 9
  %119 = load ptr, ptr %118, align 8
  store ptr %119, ptr %6, align 4
  %120 = getelementptr inbounds %struct.dma_resv_iter, ptr %6, i32 0, i32 1
  store i8 0, ptr %120, align 4
  %121 = getelementptr inbounds %struct.dma_resv_iter, ptr %6, i32 0, i32 2
  store ptr null, ptr %121, align 4
  %122 = call ptr @dma_resv_iter_first_unlocked(ptr noundef nonnull %6) #9
  %123 = icmp eq ptr %122, null
  br i1 %123, label %137, label %124

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.dma_fence, ptr %122, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %125) #9, !srcloc !11
  %126 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %125, ptr %125, i32 1, ptr elementtype(i32) %125) #9, !srcloc !12
  %127 = extractvalue { i32, i32, i32 } %126, 0
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %133, label %129, !prof !8

129:                                              ; preds = %124
  %130 = add i32 %127, 1
  %131 = or i32 %130, %127
  %132 = icmp sgt i32 %131, -1
  br i1 %132, label %135, label %133, !prof !13

133:                                              ; preds = %129, %124
  %134 = phi i32 [ 2, %124 ], [ 1, %129 ]
  call void @refcount_warn_saturate(ptr noundef %125, i32 noundef %134) #9
  br label %135

135:                                              ; preds = %133, %129
  %136 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 3
  store ptr %122, ptr %136, align 4
  br label %137

137:                                              ; preds = %135, %117
  %138 = load ptr, ptr %121, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %149, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.dma_fence, ptr %138, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #9, !srcloc !11
  %142 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 1, ptr elementtype(i32) %141) #9, !srcloc !15
  %143 = extractvalue { i32, i32, i32 } %142, 0
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = icmp sgt i32 %143, 0
  br i1 %146, label %149, label %147, !prof !13

147:                                              ; preds = %145
  call void @refcount_warn_saturate(ptr noundef %141, i32 noundef 3) #9
  br label %149

148:                                              ; preds = %140
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  call void @dma_fence_release(ptr noundef %141) #9
  br label %149

149:                                              ; preds = %148, %147, %145, %137
  %150 = getelementptr inbounds %struct.nouveau_bo, ptr %33, i32 0, i32 13
  %151 = load i64, ptr %150, align 8
  %152 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 8
  store i64 %151, ptr %152, align 8
  %153 = load ptr, ptr %12, align 8
  %154 = getelementptr inbounds %struct.nv50_wndw_func, ptr %153, i32 0, i32 2
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %170, label %157

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 25
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = call ptr @drm_atomic_get_crtc_state(ptr noundef %159, ptr noundef %161) #9
  %163 = icmp ugt ptr %162, inttoptr (i32 -4096 to ptr)
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = ptrtoint ptr %162 to i32
  br label %170

166:                                              ; preds = %157
  %167 = load ptr, ptr %12, align 8
  %168 = getelementptr inbounds %struct.nv50_wndw_func, ptr %167, i32 0, i32 2
  %169 = load ptr, ptr %168, align 4
  call void %169(ptr noundef %12, ptr noundef %162, ptr noundef %1) #9
  br label %170

170:                                              ; preds = %166, %164, %149, %105, %31, %28
  %171 = phi i32 [ %108, %105 ], [ %165, %164 ], [ 0, %28 ], [ %34, %31 ], [ 0, %166 ], [ 0, %149 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  ret i32 %171
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_wndw_cleanup_fb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr @__drm_debug, align 4
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 12
  %17 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.5, ptr noundef %16, ptr noundef %18, ptr noundef %20) #11
  br label %21

21:                                               ; preds = %6, %2
  %22 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.drm_framebuffer, ptr %23, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @nouveau_bo_unpin(ptr noundef %27) #9
  br label %29

29:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_wndw_atomic_check(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.__drm_planes_state, ptr %6, i32 %8, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 -40
  %12 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr @__drm_debug, align 4
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 2, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 2, i32 12
  %28 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.6, ptr noundef %27, ptr noundef %29) #11
  br label %30

30:                                               ; preds = %17, %2
  %31 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 25
  %36 = load ptr, ptr %35, align 8
  %37 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %36, ptr noundef nonnull %32) #9
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = ptrtoint ptr %37 to i32
  br label %546

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.drm_crtc_state, ptr %37, i32 0, i32 3
  %43 = load i8, ptr %42, align 2
  %44 = and i8 %43, 14
  %45 = icmp ne i8 %44, 0
  %46 = getelementptr inbounds %struct.drm_crtc_state, ptr %37, i32 0, i32 2
  %47 = load i8, ptr %46, align 1, !range !10
  br label %48

48:                                               ; preds = %41, %30
  %49 = phi i8 [ %47, %41 ], [ 0, %30 ]
  %50 = phi ptr [ %37, %41 ], [ null, %30 ]
  %51 = phi i1 [ %45, %41 ], [ false, %30 ]
  %52 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 2
  store i8 %49, ptr %52, align 8
  %53 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 25
  %58 = load ptr, ptr %57, align 8
  %59 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %58, ptr noundef nonnull %54) #9
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 2
  %63 = load i8, ptr %62, align 8, !range !10
  br label %66

64:                                               ; preds = %56
  %65 = ptrtoint ptr %59 to i32
  br label %546

66:                                               ; preds = %61, %48
  %67 = phi i8 [ %63, %61 ], [ %49, %48 ]
  %68 = phi ptr [ %59, %61 ], [ null, %48 ]
  %69 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 2
  %70 = icmp eq i8 %67, 0
  br i1 %70, label %458, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %11, align 8
  %73 = getelementptr inbounds %struct.nv50_wndw_func, ptr %72, i32 0, i32 16
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %237, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %13, i32 0, i32 2
  %78 = load i8, ptr %77, align 8, !range !10
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 3
  %82 = load i8, ptr %81, align 2
  %83 = and i8 %82, 32
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.drm_framebuffer, ptr %87, i32 0, i32 4
  %89 = load ptr, ptr %88, align 8
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.drm_framebuffer, ptr %92, i32 0, i32 4
  %94 = load ptr, ptr %93, align 8
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %90, %95
  br i1 %96, label %237, label %97

97:                                               ; preds = %85, %80, %76
  %98 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 10
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %123

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 2
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.drm_framebuffer, ptr %103, i32 0, i32 4
  %105 = load ptr, ptr %104, align 8
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 538982467
  br i1 %107, label %108, label %131

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 12
  %110 = load ptr, ptr %109, align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %233, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.nv50_wndw_func, ptr %72, i32 0, i32 9
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %152, label %116

116:                                              ; preds = %112
  %117 = getelementptr i8, ptr %0, i32 -32
  %118 = load i32, ptr %117, align 8
  %119 = shl nuw i32 1, %118
  %120 = getelementptr inbounds %struct.nv50_head_atom, ptr %50, i32 0, i32 1, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = or i32 %121, %119
  store i32 %122, ptr %120, align 4
  br label %152

123:                                              ; preds = %97
  %124 = getelementptr i8, ptr %0, i32 -32
  %125 = load i32, ptr %124, align 8
  %126 = shl nuw i32 1, %125
  %127 = xor i32 %126, -1
  %128 = getelementptr inbounds %struct.nv50_head_atom, ptr %50, i32 0, i32 1, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, %127
  store i32 %130, ptr %128, align 4
  br label %152

131:                                              ; preds = %101
  %132 = getelementptr i8, ptr %0, i32 -32
  %133 = load i32, ptr %132, align 8
  %134 = shl nuw i32 1, %133
  %135 = xor i32 %134, -1
  %136 = getelementptr inbounds %struct.nv50_head_atom, ptr %50, i32 0, i32 1, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %137, %135
  store i32 %138, ptr %136, align 4
  %139 = load ptr, ptr %11, align 8
  %140 = getelementptr inbounds %struct.nv50_wndw_func, ptr %139, i32 0, i32 13
  %141 = load i8, ptr %140, align 4, !range !10
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %131
  %144 = load ptr, ptr %102, align 8
  %145 = getelementptr inbounds %struct.drm_framebuffer, ptr %144, i32 0, i32 4
  %146 = load ptr, ptr %145, align 8
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 1211384408
  %149 = icmp eq i32 %147, 1211384385
  %150 = or i1 %148, %149
  %151 = select i1 %150, ptr null, ptr @nv50_wndw_atomic_check_lut.dummy
  br label %152

152:                                              ; preds = %143, %131, %123, %116, %112
  %153 = phi ptr [ %99, %123 ], [ null, %131 ], [ %151, %143 ], [ %110, %116 ], [ %110, %112 ]
  %154 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %154, i8 0, i32 24, i1 false) #9
  %155 = load ptr, ptr %11, align 8
  %156 = getelementptr inbounds %struct.nv50_wndw_func, ptr %155, i32 0, i32 9
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  %159 = select i1 %158, ptr null, ptr %153
  %160 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 1
  store ptr %159, ptr %160, align 4
  %161 = icmp eq ptr %159, null
  br i1 %161, label %177, label %162

162:                                              ; preds = %152
  %163 = load ptr, ptr %11, align 8
  %164 = getelementptr inbounds %struct.nv50_wndw_func, ptr %163, i32 0, i32 9
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.drm_property_blob, ptr %153, i32 0, i32 4
  %167 = load i32, ptr %166, align 4
  %168 = lshr i32 %167, 3
  tail call void %165(ptr noundef %11, ptr noundef %10, i32 noundef %168) #9
  %169 = getelementptr i8, ptr %0, i32 780
  %170 = load i32, ptr %169, align 4
  store i32 %170, ptr %154, align 8
  %171 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 6, i32 2
  %172 = load i48, ptr %171, align 8
  %173 = xor i48 %172, 1099511627776
  store i48 %173, ptr %171, align 8
  %174 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 12
  %175 = load i8, ptr %174, align 1
  %176 = or i8 %175, 4
  store i8 %176, ptr %174, align 1
  br label %186

177:                                              ; preds = %152
  %178 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %13, i32 0, i32 6
  %179 = load i32, ptr %178, align 8
  %180 = icmp eq i32 %179, 0
  %181 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 13
  %182 = load i8, ptr %181, align 4
  %183 = select i1 %180, i8 0, i8 4
  %184 = and i8 %182, -5
  %185 = or i8 %184, %183
  store i8 %185, ptr %181, align 4
  br label %186

186:                                              ; preds = %177, %162
  %187 = phi i32 [ 0, %177 ], [ %170, %162 ]
  %188 = load ptr, ptr %11, align 8
  %189 = getelementptr inbounds %struct.nv50_wndw_func, ptr %188, i32 0, i32 15
  %190 = load i8, ptr %189, align 4, !range !10
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %206, label %192

192:                                              ; preds = %186
  %193 = load i8, ptr %77, align 8, !range !10
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %13, i32 0, i32 6
  %197 = load i32, ptr %196, align 8
  %198 = icmp ne i32 %197, 0
  %199 = icmp eq i32 %187, 0
  %200 = select i1 %198, i1 %199, i1 false
  br i1 %200, label %201, label %206

201:                                              ; preds = %195, %192
  %202 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 12
  %203 = load i8, ptr %202, align 1
  %204 = or i8 %203, 4
  store i8 %204, ptr %202, align 1
  %205 = load ptr, ptr %11, align 8
  br label %206

206:                                              ; preds = %201, %195, %186
  %207 = phi ptr [ %205, %201 ], [ %188, %195 ], [ %188, %186 ]
  %208 = getelementptr inbounds %struct.nv50_wndw_func, ptr %207, i32 0, i32 10
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %222, label %211

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 11
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %222, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.drm_property_blob, ptr %213, i32 0, i32 5
  %217 = load ptr, ptr %216, align 4
  tail call void %209(ptr noundef %11, ptr noundef %10, ptr noundef %217) #9
  %218 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 7, i32 1
  store i8 1, ptr %218, align 8
  %219 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 12
  %220 = load i8, ptr %219, align 1
  %221 = or i8 %220, 8
  store i8 %221, ptr %219, align 1
  br label %231

222:                                              ; preds = %211, %206
  %223 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 7, i32 1
  store i8 0, ptr %223, align 8
  %224 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %13, i32 0, i32 7, i32 1
  %225 = load i8, ptr %224, align 8, !range !10
  %226 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 13
  %227 = load i8, ptr %226, align 4
  %228 = shl nuw nsw i8 %225, 3
  %229 = and i8 %227, -9
  %230 = or i8 %229, %228
  store i8 %230, ptr %226, align 4
  br label %231

231:                                              ; preds = %222, %215
  %232 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 14
  br label %233

233:                                              ; preds = %231, %108
  %234 = phi ptr [ %232, %231 ], [ %69, %108 ]
  store i8 0, ptr %234, align 8
  %235 = load i8, ptr %69, align 8
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %458, label %237

237:                                              ; preds = %233, %85, %71
  %238 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 2
  %239 = load ptr, ptr %238, align 8
  %240 = load ptr, ptr %0, align 8
  %241 = getelementptr inbounds %struct.drm_device, ptr %240, i32 0, i32 5
  %242 = load ptr, ptr %241, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %243 = load i32, ptr @__drm_debug, align 4
  %244 = and i32 %243, 16
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %256, label %246

246:                                              ; preds = %237
  %247 = getelementptr inbounds %struct.nouveau_drm, ptr %242, i32 0, i32 2, i32 1
  %248 = load ptr, ptr %247, align 8
  %249 = getelementptr inbounds %struct.nouveau_drm, ptr %248, i32 0, i32 3
  %250 = load ptr, ptr %249, align 8
  %251 = getelementptr inbounds %struct.drm_device, ptr %250, i32 0, i32 2
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr inbounds %struct.nouveau_drm, ptr %242, i32 0, i32 2, i32 12
  %254 = getelementptr i8, ptr %0, i32 12
  %255 = load ptr, ptr %254, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %252, ptr noundef nonnull @.str.7, ptr noundef %253, ptr noundef %255) #11
  br label %256

256:                                              ; preds = %246, %237
  %257 = getelementptr inbounds %struct.drm_plane_state, ptr %13, i32 0, i32 2
  %258 = load ptr, ptr %257, align 8
  %259 = icmp eq ptr %239, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %13, i32 0, i32 2
  %262 = load i8, ptr %261, align 8, !range !10
  %263 = icmp eq i8 %262, 0
  %264 = or i1 %51, %263
  br i1 %264, label %265, label %355

265:                                              ; preds = %260, %256
  call void @nouveau_framebuffer_get_layout(ptr noundef %239, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %266 = getelementptr inbounds %struct.drm_framebuffer, ptr %239, i32 0, i32 9
  %267 = load i32, ptr %266, align 8
  %268 = trunc i32 %267 to i16
  %269 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 8
  %270 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 8, i32 5
  store i16 %268, ptr %270, align 8
  %271 = getelementptr inbounds %struct.drm_framebuffer, ptr %239, i32 0, i32 10
  %272 = load i32, ptr %271, align 4
  %273 = trunc i32 %272 to i16
  %274 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 8, i32 6
  store i16 %273, ptr %274, align 2
  %275 = load i8, ptr %3, align 1
  %276 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 8, i32 2
  %277 = load i16, ptr %276, align 2
  %278 = and i8 %275, 127
  %279 = zext i8 %278 to i16
  %280 = and i16 %277, -128
  %281 = or i16 %280, %279
  store i16 %281, ptr %276, align 2
  %282 = load ptr, ptr %238, align 8
  %283 = getelementptr inbounds %struct.drm_framebuffer, ptr %282, i32 0, i32 4
  %284 = load ptr, ptr %283, align 8
  %285 = load i32, ptr %284, align 4
  switch i32 %285, label %305 [
    i32 538982467, label %293
    i32 875713112, label %286
    i32 875713089, label %286
    i32 909199186, label %287
    i32 892424792, label %288
    i32 892424769, label %288
    i32 808665688, label %289
    i32 808665665, label %289
    i32 875709016, label %290
    i32 875708993, label %290
    i32 808669784, label %291
    i32 808669761, label %291
    i32 1211384408, label %292
    i32 1211384385, label %292
    i32 1448695129, label %299
    i32 1498831189, label %298
  ]

286:                                              ; preds = %265, %265
  br label %293

287:                                              ; preds = %265
  br label %293

288:                                              ; preds = %265, %265
  br label %293

289:                                              ; preds = %265, %265
  br label %293

290:                                              ; preds = %265, %265
  br label %293

291:                                              ; preds = %265, %265
  br label %293

292:                                              ; preds = %265, %265
  br label %293

293:                                              ; preds = %292, %291, %290, %289, %288, %287, %286, %265
  %294 = phi i8 [ -54, %292 ], [ -33, %291 ], [ -43, %290 ], [ -47, %289 ], [ -23, %288 ], [ -24, %287 ], [ -49, %286 ], [ 30, %265 ]
  %295 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 8, i32 1
  store i8 %294, ptr %295, align 1
  %296 = load i8, ptr %269, align 8
  %297 = and i8 %296, 63
  br label %306

298:                                              ; preds = %265
  br label %299

299:                                              ; preds = %298, %265
  %300 = phi i8 [ 41, %298 ], [ 40, %265 ]
  %301 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 8, i32 1
  store i8 %300, ptr %301, align 1
  %302 = load i8, ptr %269, align 8
  %303 = and i8 %302, 63
  %304 = or i8 %303, 64
  br label %306

305:                                              ; preds = %265
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 216, i32 noundef 9, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %546

306:                                              ; preds = %299, %293
  %307 = phi i8 [ %297, %293 ], [ %304, %299 ]
  store i8 %307, ptr %269, align 8
  %308 = icmp eq i8 %278, 0
  br i1 %308, label %326, label %309

309:                                              ; preds = %306
  %310 = and i16 %281, -129
  store i16 %310, ptr %276, align 2
  %311 = getelementptr inbounds %struct.nouveau_drm, ptr %242, i32 0, i32 2, i32 3, i32 1, i32 2
  %312 = load i16, ptr %311, align 2
  %313 = icmp ugt i16 %312, 191
  %314 = load i32, ptr %4, align 4
  %315 = trunc i32 %314 to i16
  %316 = select i1 %313, i16 4, i16 8
  %317 = shl i16 %315, %316
  %318 = and i16 %317, 3840
  %319 = and i16 %281, -3969
  %320 = or i16 %318, %319
  store i16 %320, ptr %276, align 2
  %321 = getelementptr inbounds %struct.drm_framebuffer, ptr %239, i32 0, i32 6
  %322 = load i32, ptr %321, align 8
  %323 = lshr i32 %322, 6
  %324 = trunc i32 %323 to i16
  %325 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 8, i32 3
  store i16 %324, ptr %325, align 4
  br label %332

326:                                              ; preds = %306
  %327 = and i16 %281, -3969
  %328 = or i16 %327, 128
  store i16 %328, ptr %276, align 2
  %329 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 8, i32 3
  store i16 0, ptr %329, align 4
  %330 = getelementptr inbounds %struct.drm_framebuffer, ptr %239, i32 0, i32 6
  %331 = load i32, ptr %330, align 8
  br label %332

332:                                              ; preds = %326, %309
  %333 = phi i32 [ %331, %326 ], [ 0, %309 ]
  %334 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 8, i32 4
  store i32 %333, ptr %334, align 4
  %335 = getelementptr inbounds %struct.drm_crtc_state, ptr %50, i32 0, i32 14
  %336 = load i8, ptr %335, align 8, !range !10
  %337 = icmp eq i8 %336, 0
  %338 = and i8 %307, -61
  %339 = or i8 %338, 4
  %340 = select i1 %337, i8 %339, i8 %338
  %341 = and i8 %340, -60
  %342 = lshr i8 %340, 2
  %343 = and i8 %342, 1
  %344 = or i8 %343, %341
  %345 = xor i8 %344, 1
  store i8 %345, ptr %269, align 8
  %346 = load ptr, ptr %11, align 8
  %347 = getelementptr inbounds %struct.nv50_wndw_func, ptr %346, i32 0, i32 18
  %348 = load ptr, ptr %347, align 4
  %349 = icmp eq ptr %348, null
  %350 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 12
  %351 = load i8, ptr %350, align 1
  %352 = select i1 %349, i8 0, i8 16
  %353 = and i8 %351, -17
  %354 = or i8 %353, %352
  store i8 %354, ptr %350, align 1
  br label %355

355:                                              ; preds = %332, %260
  %356 = load ptr, ptr %11, align 8
  %357 = getelementptr inbounds %struct.nv50_wndw_func, ptr %356, i32 0, i32 20
  %358 = load ptr, ptr %357, align 4
  %359 = icmp eq ptr %358, null
  br i1 %359, label %396, label %360

360:                                              ; preds = %355
  %361 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 8
  %362 = load i32, ptr %361, align 8
  %363 = lshr i32 %362, 16
  %364 = trunc i32 %363 to i16
  %365 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 9
  store i16 %364, ptr %365, align 8
  %366 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 9
  %367 = load i32, ptr %366, align 4
  %368 = lshr i32 %367, 16
  %369 = trunc i32 %368 to i16
  %370 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 9, i32 1
  store i16 %369, ptr %370, align 2
  %371 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 11
  %372 = load i32, ptr %371, align 4
  %373 = lshr i32 %372, 16
  %374 = trunc i32 %373 to i16
  %375 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 9, i32 2
  store i16 %374, ptr %375, align 4
  %376 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 10
  %377 = load i32, ptr %376, align 8
  %378 = lshr i32 %377, 16
  %379 = trunc i32 %378 to i16
  %380 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 9, i32 3
  store i16 %379, ptr %380, align 2
  %381 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 6
  %382 = load i32, ptr %381, align 8
  %383 = trunc i32 %382 to i16
  %384 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 9, i32 4
  store i16 %383, ptr %384, align 8
  %385 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 7
  %386 = load i32, ptr %385, align 4
  %387 = trunc i32 %386 to i16
  %388 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 9, i32 5
  store i16 %387, ptr %388, align 2
  %389 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %13, i32 0, i32 9
  %390 = call i32 @bcmp(ptr noundef dereferenceable(12) %389, ptr noundef dereferenceable(12) %365, i32 12) #9
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %396, label %392

392:                                              ; preds = %360
  %393 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 12
  %394 = load i8, ptr %393, align 1
  %395 = or i8 %394, 32
  store i8 %395, ptr %393, align 1
  br label %396

396:                                              ; preds = %392, %360, %355
  %397 = load ptr, ptr %11, align 8
  %398 = getelementptr inbounds %struct.nv50_wndw_func, ptr %397, i32 0, i32 21
  %399 = load ptr, ptr %398, align 4
  %400 = icmp eq ptr %399, null
  br i1 %400, label %426, label %401

401:                                              ; preds = %396
  %402 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 16
  %403 = load i32, ptr %402, align 4
  %404 = trunc i32 %403 to i8
  %405 = xor i8 %404, -1
  %406 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 11
  store i8 %405, ptr %406, align 8
  %407 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 12
  %408 = load i16, ptr %407, align 8
  %409 = lshr i16 %408, 8
  %410 = trunc i16 %409 to i8
  %411 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 11, i32 1
  store i8 %410, ptr %411, align 1
  %412 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 13
  %413 = load i16, ptr %412, align 2
  %414 = icmp eq i16 %413, 1
  %415 = select i1 %414, i8 117, i8 66
  %416 = icmp eq i16 %413, 0
  %417 = select i1 %416, i8 114, i8 %415
  %418 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 11, i32 2
  store i8 %417, ptr %418, align 2
  %419 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %13, i32 0, i32 11
  %420 = call i32 @bcmp(ptr noundef dereferenceable(3) %419, ptr noundef dereferenceable(3) %406, i32 3) #9
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %426, label %422

422:                                              ; preds = %401
  %423 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 12
  %424 = load i8, ptr %423, align 1
  %425 = or i8 %424, -128
  store i8 %425, ptr %423, align 1
  br label %426

426:                                              ; preds = %422, %401, %396
  %427 = getelementptr i8, ptr %0, i32 -36
  %428 = load ptr, ptr %427, align 4
  %429 = icmp eq ptr %428, null
  br i1 %429, label %446, label %430

430:                                              ; preds = %426
  %431 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 4
  %432 = load i32, ptr %431, align 8
  %433 = trunc i32 %432 to i16
  %434 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 10
  store i16 %433, ptr %434, align 4
  %435 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 5
  %436 = load i32, ptr %435, align 4
  %437 = trunc i32 %436 to i16
  %438 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 10, i32 1
  store i16 %437, ptr %438, align 2
  %439 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %13, i32 0, i32 10
  %440 = call i32 @bcmp(ptr noundef dereferenceable(4) %439, ptr noundef dereferenceable(4) %434, i32 4) #9
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %446, label %442

442:                                              ; preds = %430
  %443 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 12
  %444 = load i8, ptr %443, align 1
  %445 = or i8 %444, 64
  store i8 %445, ptr %443, align 1
  br label %446

446:                                              ; preds = %442, %430, %426
  %447 = load ptr, ptr %11, align 8
  %448 = load ptr, ptr %447, align 4
  %449 = call i32 %448(ptr noundef %11, ptr noundef %10, ptr noundef %50) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %546

451:                                              ; preds = %446
  %452 = getelementptr i8, ptr %0, i32 -32
  %453 = load i32, ptr %452, align 8
  %454 = shl nuw i32 1, %453
  %455 = getelementptr inbounds %struct.nv50_head_atom, ptr %50, i32 0, i32 1
  %456 = load i32, ptr %455, align 4
  %457 = or i32 %456, %454
  store i32 %457, ptr %455, align 4
  br label %494

458:                                              ; preds = %233, %66
  %459 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %13, i32 0, i32 2
  %460 = load i8, ptr %459, align 8, !range !10
  %461 = icmp eq i8 %460, 0
  br i1 %461, label %546, label %462

462:                                              ; preds = %458
  %463 = load i32, ptr @__drm_debug, align 4
  %464 = and i32 %463, 16
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %479, label %466

466:                                              ; preds = %462
  %467 = load ptr, ptr %0, align 8
  %468 = getelementptr inbounds %struct.drm_device, ptr %467, i32 0, i32 5
  %469 = load ptr, ptr %468, align 4
  %470 = getelementptr inbounds %struct.nouveau_drm, ptr %469, i32 0, i32 2, i32 1
  %471 = load ptr, ptr %470, align 8
  %472 = getelementptr inbounds %struct.nouveau_drm, ptr %471, i32 0, i32 3
  %473 = load ptr, ptr %472, align 8
  %474 = getelementptr inbounds %struct.drm_device, ptr %473, i32 0, i32 2
  %475 = load ptr, ptr %474, align 4
  %476 = getelementptr inbounds %struct.nouveau_drm, ptr %469, i32 0, i32 2, i32 12
  %477 = getelementptr i8, ptr %0, i32 12
  %478 = load ptr, ptr %477, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %475, ptr noundef nonnull @.str.8, ptr noundef %476, ptr noundef %478) #11
  br label %479

479:                                              ; preds = %466, %462
  %480 = load ptr, ptr %11, align 8
  %481 = getelementptr inbounds %struct.nv50_wndw_func, ptr %480, i32 0, i32 1
  %482 = load ptr, ptr %481, align 4
  tail call void %482(ptr noundef %11, ptr noundef %10, ptr noundef %68) #9
  %483 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 3
  store i32 0, ptr %483, align 4
  %484 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 4
  store i32 0, ptr %484, align 4
  %485 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 6
  store i32 0, ptr %485, align 8
  %486 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 8, i32 7
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %486, i8 0, i32 24, i1 false) #9
  %487 = getelementptr i8, ptr %0, i32 -32
  %488 = load i32, ptr %487, align 8
  %489 = shl nuw i32 1, %488
  %490 = xor i32 %489, -1
  %491 = getelementptr inbounds %struct.nv50_head_atom, ptr %68, i32 0, i32 1
  %492 = load i32, ptr %491, align 4
  %493 = and i32 %492, %490
  store i32 %493, ptr %491, align 4
  br label %494

494:                                              ; preds = %479, %451
  %495 = load i8, ptr %69, align 8, !range !10
  %496 = icmp eq i8 %495, 0
  %497 = select i1 %496, i1 true, i1 %51
  br i1 %497, label %498, label %546

498:                                              ; preds = %494
  %499 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %13, i32 0, i32 3
  %500 = load i32, ptr %499, align 4
  %501 = icmp ne i32 %500, 0
  %502 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 13
  %503 = zext i1 %501 to i8
  %504 = load i8, ptr %502, align 4
  %505 = and i8 %504, -2
  %506 = or i8 %505, %503
  store i8 %506, ptr %502, align 4
  %507 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %13, i32 0, i32 4
  %508 = load i32, ptr %507, align 4
  %509 = icmp eq i32 %508, 0
  %510 = select i1 %509, i8 0, i8 2
  %511 = and i8 %506, -3
  %512 = or i8 %510, %511
  store i8 %512, ptr %502, align 4
  %513 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %13, i32 0, i32 6
  %514 = load i32, ptr %513, align 8
  %515 = icmp eq i32 %514, 0
  %516 = select i1 %515, i8 0, i8 4
  %517 = and i8 %512, -5
  %518 = or i8 %517, %516
  store i8 %518, ptr %502, align 4
  %519 = select i1 %515, i1 true, i1 %496
  br i1 %519, label %529, label %520

520:                                              ; preds = %498
  %521 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 6
  %522 = load i32, ptr %521, align 8
  %523 = icmp eq i32 %522, 0
  %524 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %10, i32 0, i32 12
  %525 = load i8, ptr %524, align 1
  %526 = select i1 %523, i8 0, i8 4
  %527 = and i8 %525, -5
  %528 = or i8 %527, %526
  store i8 %528, ptr %524, align 1
  br label %529

529:                                              ; preds = %520, %498
  %530 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %13, i32 0, i32 7, i32 1
  %531 = load i8, ptr %530, align 8, !range !10
  %532 = shl nuw nsw i8 %531, 3
  %533 = and i8 %518, -9
  %534 = or i8 %533, %532
  store i8 %534, ptr %502, align 4
  %535 = load ptr, ptr %11, align 8
  %536 = getelementptr inbounds %struct.nv50_wndw_func, ptr %535, i32 0, i32 19
  %537 = load ptr, ptr %536, align 4
  %538 = icmp eq ptr %537, null
  br i1 %538, label %546, label %539

539:                                              ; preds = %529
  %540 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %13, i32 0, i32 8, i32 7
  %541 = load i32, ptr %540, align 4
  %542 = icmp eq i32 %541, 0
  %543 = select i1 %542, i8 0, i8 16
  %544 = and i8 %534, -17
  %545 = or i8 %543, %544
  store i8 %545, ptr %502, align 4
  br label %546

546:                                              ; preds = %539, %529, %494, %458, %446, %305, %64, %39
  %547 = phi i32 [ %40, %39 ], [ %65, %64 ], [ %449, %446 ], [ 0, %458 ], [ 0, %494 ], [ 0, %529 ], [ 0, %539 ], [ -22, %305 ]
  ret i32 %547
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_first_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_framebuffer_get_layout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{i64 571884, i64 2148061855, i64 2148061881, i64 2148061928, i64 2148061950, i64 2148061978, i64 2148061998}
!12 = !{i64 2148074728, i64 2148074760, i64 2148074789, i64 2148074823, i64 2148074854, i64 2148074877}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148174950}
!15 = !{i64 2148077085, i64 2148077117, i64 2148077146, i64 2148077180, i64 2148077211, i64 2148077234}
!16 = !{i64 2149477903}
