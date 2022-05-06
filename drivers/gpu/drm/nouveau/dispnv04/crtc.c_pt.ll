; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv04/crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/crtc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.84, %struct.anon.85, %struct.anon.90, ptr, %struct.anon.91, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.92, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.104 }
%struct.nvif_parent = type { ptr }
%struct.anon.84 = type { ptr, i32, i32, i8 }
%struct.anon.85 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.86] }
%struct.anon.86 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.90 = type { i64, i64 }
%struct.anon.91 = type { i32, i64 }
%struct.anon.92 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.93, i8 }
%union.anon.93 = type { %struct.anon.97 }
%struct.anon.97 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.99 = type { i32 }
%struct.anon.100 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.101 = type { i16, i16 }
%struct.anon.102 = type { i16, i16, i16, %struct.anon.103, i16 }
%struct.anon.103 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.104 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_channel = type { %struct.anon.87, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.88, i8, ptr, %struct.anon.89, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.87 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.88 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.89 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.72, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.83, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.72 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.83 = type { i32, ptr }
%struct.nouveau_fence_chan = type { %struct.spinlock, %struct.kref, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, [32 x i8], %struct.nvif_notify, i32, i32 }
%struct.nv04_page_flip_state = type { %struct.list_head, ptr, ptr, i32, i32, i64 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvif_notify_head_req_v0 = type { i8, i8, [6 x i8] }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.107, %struct.anon.108, %struct.anon.109, ptr, ptr }
%struct.anon.107 = type { i32, i8, i32, i32 }
%struct.anon.108 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.109 = type { i32 }
%struct.nouveau_display = type { ptr, ptr, ptr, ptr, %struct.nvif_disp, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_disp = type { %struct.nvif_object }
%struct.nv04_display = type { %struct.nv04_mode_state, %struct.nv04_mode_state, [4 x [16384 x i32]], [4 x i32], [2 x ptr], %struct.nvif_notify }
%struct.nv04_mode_state = type { [2 x %struct.nv04_crtc_reg], i32, i32 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.110, i32, i32 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i16, i16 }
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
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rgb = type { i8, i8, i8 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.79, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.79 = type { [4 x i8] }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.178, %struct.anon.178 }
%struct.anon.178 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.anon.197 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.173, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.173 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.anon.111 = type { i8, i8, i8, i8 }

@nv04_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr null, ptr @nv04_crtc_cursor_set, ptr null, ptr @nv04_crtc_cursor_move, ptr @nv_crtc_gamma_set, ptr @nv_crtc_destroy, ptr @drm_crtc_helper_set_config, ptr @nv04_crtc_page_flip, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nouveau_display_vblank_enable, ptr @nouveau_display_vblank_disable, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, align 4
@nv04_crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr @nv_crtc_dpms, ptr @nv_crtc_prepare, ptr @nv_crtc_commit, ptr null, ptr null, ptr @nv_crtc_mode_set, ptr null, ptr @nv04_crtc_mode_set_base, ptr @nv04_crtc_mode_set_base_atomic, ptr @nv_crtc_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nouveau_display_scanoutpos }, align 4
@.str = private unnamed_addr constant [7 x i8] c"kmsVbl\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: unexpected pageflip\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to allocate primary plane\0A\00", align 1
@drm_primary_helper_funcs = external dso_local constant %struct.drm_plane_funcs, align 4
@modeset_formats = internal constant [3 x i32] [i32 875713112, i32 909199186, i32 892424792], align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"%s: Setting dpms mode %d on CRTC %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: CTRC mode on CRTC %d:\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s: vpll: n1 %d n2 %d m1 %d m2 %d log2p %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"%s: vpll: n %d m %d log2p %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%s: index %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"%s: No FB bound\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_flip_complete(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvif_object, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_cli, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_channel, ptr %8, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nouveau_channel, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 28
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #8
  %17 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %10, i32 0, i32 3
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.nv04_page_flip_state, ptr %18, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.nv04_page_flip_state, ptr %18, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  br i1 %23, label %27, label %26

26:                                               ; preds = %20
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %25, ptr noundef nonnull %22) #8
  br label %36

27:                                               ; preds = %20
  tail call void @drm_crtc_vblank_put(ptr noundef %25) #8
  br label %36

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 2, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.1, ptr noundef %35) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #8
  br label %62

36:                                               ; preds = %27, %26
  %37 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %18, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %37, align 4
  %41 = load ptr, ptr %24, align 4
  %42 = getelementptr inbounds i8, ptr %18, i32 16
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds i8, ptr %18, i32 20
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds i8, ptr %18, i32 24
  %47 = load i64, ptr %46, align 8
  tail call void @kfree(ptr noundef %18) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #8
  %48 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.drm_crtc, ptr %41, i32 0, i32 8
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds %struct.drm_crtc, ptr %41, i32 0, i32 15
  %53 = load i32, ptr %52, align 4
  %54 = mul i32 %53, %45
  %55 = getelementptr inbounds %struct.drm_crtc, ptr %41, i32 0, i32 14
  %56 = load i32, ptr %55, align 8
  %57 = mul i32 %56, %43
  %58 = sdiv i32 %57, 8
  %59 = trunc i64 %47 to i32
  %60 = add i32 %54, %59
  %61 = add i32 %60, %58
  tail call fastcc void @nv_set_crtc_base(ptr noundef %49, i32 noundef %51, i32 noundef %61)
  br label %62

62:                                               ; preds = %36, %28
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv_set_crtc_base(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 6293504, i32 6301696
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !8

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %2) #8, !srcloc !10
  br label %16

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %15 = zext i32 %7 to i64
  tail call void @nvif_object_wr(ptr noundef %14, i32 noundef 4, i64 noundef %15, i32 noundef %2) #8
  br label %16

16:                                               ; preds = %13, %11
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %20, label %68

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds %struct.nouveau_drm, ptr %21, i32 0, i32 2, i32 3
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %21, i32 0, i32 2, i32 3, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  %26 = shl i32 %1, 13
  %27 = add i32 %26, 6296532
  br i1 %25, label %30, label %28, !prof !8

28:                                               ; preds = %20
  %29 = getelementptr i8, ptr %24, i32 %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 45) #8, !srcloc !12
  br label %32

30:                                               ; preds = %20
  %31 = sext i32 %27 to i64
  tail call void @nvif_object_wr(ptr noundef %22, i32 noundef 1, i64 noundef %31, i32 noundef 45) #8
  br label %32

32:                                               ; preds = %30, %28
  %33 = load ptr, ptr %23, align 8
  %34 = icmp eq ptr %33, null
  %35 = add i32 %26, 6296533
  br i1 %34, label %40, label %36, !prof !8

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %33, i32 %35
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %37) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %39 = zext i8 %38 to i32
  br label %43

40:                                               ; preds = %32
  %41 = sext i32 %35 to i64
  %42 = tail call i32 @nvif_object_rd(ptr noundef %22, i32 noundef 1, i64 noundef %41) #8
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i32 [ %39, %36 ], [ %42, %40 ]
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, -65
  %47 = lshr i32 %2, 18
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 64
  %50 = or i8 %46, %49
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 3
  %53 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 3, i32 0, i32 6
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56, !prof !8

56:                                               ; preds = %43
  %57 = getelementptr i8, ptr %54, i32 %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %57, i8 45) #8, !srcloc !12
  br label %60

58:                                               ; preds = %43
  %59 = sext i32 %27 to i64
  tail call void @nvif_object_wr(ptr noundef %52, i32 noundef 1, i64 noundef %59, i32 noundef 45) #8
  br label %60

60:                                               ; preds = %58, %56
  %61 = load ptr, ptr %53, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63, !prof !8

63:                                               ; preds = %60
  %64 = getelementptr i8, ptr %61, i32 %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %64, i8 %50) #8, !srcloc !12
  br label %68

65:                                               ; preds = %60
  %66 = sext i32 %35 to i64
  %67 = zext i8 %50 to i32
  tail call void @nvif_object_wr(ptr noundef %52, i32 noundef 1, i64 noundef %66, i32 noundef %67) #8
  br label %68

68:                                               ; preds = %65, %63, %16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_crtc_create(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvif_notify_head_req_v0, align 1
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 888) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.nouveau_crtc, ptr %9, i32 0, i32 12
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nouveau_crtc, ptr %9, i32 0, i32 1
  store i32 %1, ptr %13, align 8
  %14 = getelementptr inbounds %struct.nouveau_crtc, ptr %9, i32 0, i32 7
  store i32 128, ptr %14, align 8
  %15 = getelementptr inbounds %struct.nouveau_crtc, ptr %9, i32 0, i32 13
  store ptr @nv_crtc_save, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nouveau_crtc, ptr %9, i32 0, i32 14
  store ptr @nv_crtc_restore, ptr %16, align 4
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 456) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2) #8
  br label %25

21:                                               ; preds = %11
  %22 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %18, i32 noundef 0, ptr noundef nonnull @drm_primary_helper_funcs, ptr noundef nonnull @modeset_formats, i32 noundef 3, ptr noundef null, i32 noundef 1, ptr noundef null) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @kfree(ptr noundef nonnull %18) #8
  br label %25

25:                                               ; preds = %24, %21, %20
  %26 = phi ptr [ null, %20 ], [ null, %24 ], [ %18, %21 ]
  %27 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %26, ptr noundef null, ptr noundef nonnull @nv04_crtc_funcs, ptr noundef null) #8
  %28 = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 19
  store ptr @nv04_crtc_helper_funcs, ptr %28, align 4
  %29 = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef nonnull %9, i32 noundef 256) #8
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.nouveau_crtc, ptr %9, i32 0, i32 11
  %33 = tail call i32 @nouveau_bo_new(ptr noundef %31, i64 noundef 16384, i32 noundef 256, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %32) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %25
  %36 = load ptr, ptr %32, align 4
  %37 = tail call i32 @nouveau_bo_pin(ptr noundef %36, i32 noundef 2, i1 noundef zeroext false) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load ptr, ptr %32, align 4
  %41 = tail call i32 @nouveau_bo_map(ptr noundef %40) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %32, align 4
  %45 = tail call i32 @nouveau_bo_unpin(ptr noundef %44) #8
  br label %46

46:                                               ; preds = %43, %35
  %47 = load ptr, ptr %32, align 4
  store ptr null, ptr %32, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @ttm_bo_put(ptr noundef nonnull %47) #8
  br label %50

50:                                               ; preds = %49, %46, %39, %25
  %51 = tail call i32 @nv04_cursor_init(ptr noundef nonnull %9) #8
  %52 = getelementptr inbounds %struct.nouveau_display, ptr %7, i32 0, i32 4
  store i8 0, ptr %3, align 1
  %53 = getelementptr inbounds %struct.nvif_notify_head_req_v0, ptr %3, i32 0, i32 1
  %54 = load i32, ptr %13, align 8
  %55 = trunc i32 %54 to i8
  store i8 %55, ptr %53, align 1
  %56 = getelementptr inbounds %struct.nvif_notify_head_req_v0, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %56, i8 0, i32 6, i1 false)
  %57 = getelementptr inbounds %struct.nouveau_crtc, ptr %9, i32 0, i32 2
  %58 = call i32 @nvif_notify_ctor(ptr noundef %52, ptr noundef nonnull @.str, ptr noundef nonnull @nv04_crtc_vblank_handler, i1 noundef zeroext false, i8 noundef zeroext 0, ptr noundef nonnull %3, i32 noundef 8, i32 noundef 8, ptr noundef %57) #8
  br label %59

59:                                               ; preds = %50, %2
  %60 = phi i32 [ %58, %50 ], [ -12, %2 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv_crtc_save(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -102
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, 4080
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 1, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = icmp ugt i8 %16, 1
  %18 = icmp ne i16 %14, 256
  %19 = select i1 %17, i1 %18, i1 false
  %20 = icmp ne i16 %14, 336
  %21 = select i1 %19, i1 %20, i1 false
  %22 = icmp ne i16 %14, 416
  %23 = select i1 %21, i1 %22, i1 false
  %24 = icmp ne i16 %14, 512
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  tail call void @NVSetOwner(ptr noundef %2, i32 noundef %9) #8
  %27 = load ptr, ptr %0, align 8
  %28 = load i32, ptr %8, align 8
  br label %29

29:                                               ; preds = %26, %1
  %30 = phi i32 [ %28, %26 ], [ %9, %1 ]
  %31 = phi ptr [ %27, %26 ], [ %2, %1 ]
  %32 = getelementptr inbounds %struct.nv04_display, ptr %7, i32 0, i32 1
  tail call void @nouveau_hw_save_state(ptr noundef %31, i32 noundef %30, ptr noundef %32) #8
  %33 = getelementptr inbounds %struct.nv04_display, ptr %7, i32 0, i32 1, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, -327681
  %36 = getelementptr inbounds %struct.nv04_mode_state, ptr %7, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %32, i32 0, i32 %9, i32 1, i32 51
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 1, i32 51
  store i8 %38, ptr %39, align 1
  %40 = getelementptr inbounds %struct.nv04_display, ptr %7, i32 0, i32 1, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -806291969
  %43 = getelementptr inbounds %struct.nv04_mode_state, ptr %7, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %32, i32 0, i32 %9, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 10
  store i32 %45, ptr %46, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv_crtc_restore(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv04_display, ptr %9, i32 0, i32 1
  %11 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %10, i32 0, i32 %4, i32 1, i32 33
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 -102
  %16 = load i16, ptr %15, align 2
  %17 = and i16 %16, 4080
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 1, i32 4
  %19 = load i8, ptr %18, align 1
  %20 = icmp ugt i8 %19, 1
  %21 = icmp ne i16 %17, 256
  %22 = select i1 %20, i1 %21, i1 false
  %23 = icmp ne i16 %17, 336
  %24 = select i1 %22, i1 %23, i1 false
  %25 = icmp ne i16 %17, 416
  %26 = select i1 %24, i1 %25, i1 false
  %27 = icmp ne i16 %17, 512
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  tail call void @NVSetOwner(ptr noundef %2, i32 noundef %4) #8
  %30 = load ptr, ptr %0, align 8
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 19
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %33, align 8
  br label %35

35:                                               ; preds = %29, %1
  %36 = phi ptr [ %34, %29 ], [ %9, %1 ]
  %37 = phi ptr [ %30, %29 ], [ %2, %1 ]
  %38 = getelementptr inbounds %struct.nv04_display, ptr %36, i32 0, i32 1
  tail call void @nouveau_hw_load_state(ptr noundef %37, i32 noundef %4, ptr noundef %38) #8
  %39 = load ptr, ptr %0, align 8
  %40 = zext i8 %12 to i32
  tail call fastcc void @nv_lock_vga_crtc_shadow(ptr noundef %39, i32 noundef %4, i32 noundef %40)
  %41 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 7
  store i32 128, ptr %41, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_map(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nouveau_bo_ref(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #8, !srcloc !15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #8, !srcloc !16
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !8

12:                                               ; preds = %7
  %13 = add i32 %10, 1
  %14 = or i32 %13, %10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %18, label %16, !prof !17

16:                                               ; preds = %12, %7
  %17 = phi i32 [ 2, %7 ], [ 1, %12 ]
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef %17) #8
  br label %18

18:                                               ; preds = %16, %12, %4
  store ptr %0, ptr %1, align 4
  %19 = icmp eq ptr %5, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void @ttm_bo_put(ptr noundef nonnull %5) #8
  br label %21

21:                                               ; preds = %20, %18, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_cursor_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_ctor(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_crtc_vblank_handler(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -756
  %3 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %2) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVSetOwner(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_hw_save_state(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_hw_load_state(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv_lock_vga_crtc_shadow(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = shl i32 %1, 13
  %7 = add i32 %6, 6296532
  br label %36

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = shl i32 %1, 13
  %16 = add i32 %15, 6296532
  br i1 %14, label %19, label %17, !prof !8

17:                                               ; preds = %8
  %18 = getelementptr i8, ptr %13, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 33) #8, !srcloc !12
  br label %21

19:                                               ; preds = %8
  %20 = sext i32 %16 to i64
  tail call void @nvif_object_wr(ptr noundef %11, i32 noundef 1, i64 noundef %20, i32 noundef 33) #8
  br label %21

21:                                               ; preds = %19, %17
  %22 = load ptr, ptr %12, align 8
  %23 = icmp eq ptr %22, null
  %24 = add i32 %15, 6296533
  br i1 %23, label %29, label %25, !prof !8

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %22, i32 %24
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %26) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %28 = zext i8 %27 to i32
  br label %32

29:                                               ; preds = %21
  %30 = sext i32 %24 to i64
  %31 = tail call i32 @nvif_object_rd(ptr noundef %11, i32 noundef 1, i64 noundef %30) #8
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i32 [ %28, %25 ], [ %31, %29 ]
  %34 = and i32 %33, 5
  %35 = or i32 %34, 250
  br label %36

36:                                               ; preds = %32, %5
  %37 = phi i32 [ %7, %5 ], [ %16, %32 ]
  %38 = phi i32 [ %6, %5 ], [ %15, %32 ]
  %39 = phi i32 [ %2, %5 ], [ %35, %32 ]
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 3
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 3, i32 0, i32 6
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47, !prof !8

47:                                               ; preds = %36
  %48 = getelementptr i8, ptr %45, i32 %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %48, i8 33) #8, !srcloc !12
  br label %51

49:                                               ; preds = %36
  %50 = sext i32 %37 to i64
  tail call void @nvif_object_wr(ptr noundef %43, i32 noundef 1, i64 noundef %50, i32 noundef 33) #8
  br label %51

51:                                               ; preds = %49, %47
  %52 = load ptr, ptr %44, align 8
  %53 = icmp eq ptr %52, null
  %54 = add i32 %38, 6296533
  br i1 %53, label %57, label %55, !prof !8

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %52, i32 %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %56, i8 %40) #8, !srcloc !12
  br label %60

57:                                               ; preds = %51
  %58 = sext i32 %54 to i64
  %59 = and i32 %39, 255
  tail call void @nvif_object_wr(ptr noundef %43, i32 noundef 1, i64 noundef %58, i32 noundef %59) #8
  br label %60

60:                                               ; preds = %57, %55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_crtc_cursor_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 11, i32 4
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %0, i1 noundef zeroext true) #8
  br label %92

15:                                               ; preds = %5
  %16 = icmp ne i32 %3, 64
  %17 = icmp ne i32 %4, 64
  %18 = or i1 %16, %17
  br i1 %18, label %92, label %19

19:                                               ; preds = %15
  %20 = tail call ptr @drm_gem_object_lookup(ptr noundef %1, i32 noundef %2) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %92, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @nouveau_bo_map(ptr noundef nonnull %20) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %84

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3, i32 1, i32 2
  %27 = load i16, ptr %26, align 2
  %28 = icmp ugt i16 %27, 16
  %29 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  br i1 %28, label %31, label %40

31:                                               ; preds = %31, %25
  %32 = phi i32 [ %38, %31 ], [ 0, %25 ]
  %33 = tail call i32 @nouveau_bo_rd32(ptr noundef nonnull %20, i32 noundef %32) #8
  %34 = add i32 %33, -16777216
  %35 = icmp ult i32 %34, -33554432
  %36 = add i32 %33, 16777216
  %37 = select i1 %35, i32 %36, i32 %33
  tail call void @nouveau_bo_wr32(ptr noundef %30, i32 noundef %32, i32 noundef %37) #8
  %38 = add nuw nsw i32 %32, 1
  %39 = icmp eq i32 %38, 4096
  br i1 %39, label %73, label %31

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 3, i32 1, i32 4
  %44 = load i8, ptr %43, align 1
  %45 = icmp ugt i8 %44, 1
  %46 = select i1 %45, i32 64, i32 32
  br label %47

47:                                               ; preds = %70, %40
  %48 = phi i32 [ 0, %40 ], [ %71, %70 ]
  %49 = shl i32 %48, 6
  %50 = mul nuw nsw i32 %48, %46
  br label %51

51:                                               ; preds = %51, %47
  %52 = phi i32 [ 0, %47 ], [ %68, %51 ]
  %53 = add nuw nsw i32 %52, %49
  %54 = tail call i32 @nouveau_bo_rd32(ptr noundef nonnull %20, i32 noundef %53) #8
  %55 = add nuw nsw i32 %52, %50
  %56 = lshr i32 %54, 16
  %57 = and i32 %56, 32768
  %58 = lshr i32 %54, 9
  %59 = and i32 %58, 31744
  %60 = or i32 %57, %59
  %61 = lshr i32 %54, 6
  %62 = and i32 %61, 992
  %63 = or i32 %60, %62
  %64 = lshr i32 %54, 3
  %65 = and i32 %64, 31
  %66 = or i32 %63, %65
  %67 = trunc i32 %66 to i16
  tail call void @nouveau_bo_wr16(ptr noundef %30, i32 noundef %55, i16 noundef zeroext %67) #8
  %68 = add nuw nsw i32 %52, 1
  %69 = icmp eq i32 %68, %46
  br i1 %69, label %70, label %51

70:                                               ; preds = %51
  %71 = add nuw nsw i32 %48, 1
  %72 = icmp eq i32 %71, %46
  br i1 %72, label %73, label %47

73:                                               ; preds = %70, %31
  tail call void @nouveau_bo_unmap(ptr noundef nonnull %20) #8
  %74 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 11
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nouveau_bo, ptr %75, i32 0, i32 13
  %77 = load i64, ptr %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 11, i32 1
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 11, i32 2
  %81 = load ptr, ptr %80, align 4
  tail call void %81(ptr noundef %0, i32 noundef %78) #8
  %82 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 11, i32 5
  %83 = load ptr, ptr %82, align 4
  tail call void %83(ptr noundef %0, i1 noundef zeroext true) #8
  br label %84

84:                                               ; preds = %73, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %20) #8, !srcloc !15
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %20, ptr nonnull %20, i32 1, ptr nonnull elementtype(i32) %20) #8, !srcloc !19
  %86 = extractvalue { i32, i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = icmp sgt i32 %86, 0
  br i1 %89, label %92, label %90, !prof !17

90:                                               ; preds = %88
  tail call void @refcount_warn_saturate(ptr noundef nonnull %20, i32 noundef 3) #8
  br label %92

91:                                               ; preds = %84
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void @drm_gem_object_free(ptr noundef nonnull %20) #8
  br label %92

92:                                               ; preds = %91, %90, %88, %19, %15, %12
  %93 = phi i32 [ 0, %12 ], [ -22, %15 ], [ -2, %19 ], [ %23, %88 ], [ %23, %90 ], [ %23, %91 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_crtc_cursor_move(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 11, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv_crtc_gamma_set(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, i32 noundef %4, ptr nocapture noundef readnone %5) #0 {
  %7 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_plane, ptr %8, i32 0, i32 12
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 12
  store i32 0, ptr %13, align 4
  br label %58

14:                                               ; preds = %6
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %20, i32 0, i32 %22, i32 6
  %24 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 18
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 17
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i16, ptr %25, i32 %27
  %29 = getelementptr i16, ptr %28, i32 %27
  br label %30

30:                                               ; preds = %30, %14
  %31 = phi i32 [ 0, %14 ], [ %50, %30 ]
  %32 = phi ptr [ %29, %14 ], [ %45, %30 ]
  %33 = phi ptr [ %28, %14 ], [ %40, %30 ]
  %34 = phi ptr [ %25, %14 ], [ %35, %30 ]
  %35 = getelementptr i16, ptr %34, i32 1
  %36 = load i16, ptr %34, align 2
  %37 = lshr i16 %36, 8
  %38 = trunc i16 %37 to i8
  %39 = getelementptr %struct.rgb, ptr %23, i32 %31
  store i8 %38, ptr %39, align 1
  %40 = getelementptr i16, ptr %33, i32 1
  %41 = load i16, ptr %33, align 2
  %42 = lshr i16 %41, 8
  %43 = trunc i16 %42 to i8
  %44 = getelementptr %struct.rgb, ptr %23, i32 %31, i32 1
  store i8 %43, ptr %44, align 1
  %45 = getelementptr i16, ptr %32, i32 1
  %46 = load i16, ptr %32, align 2
  %47 = lshr i16 %46, 8
  %48 = trunc i16 %47 to i8
  %49 = getelementptr %struct.rgb, ptr %23, i32 %31, i32 2
  store i8 %48, ptr %49, align 1
  %50 = add nuw nsw i32 %31, 1
  %51 = icmp eq i32 %50, 256
  br i1 %51, label %52, label %30

52:                                               ; preds = %30
  %53 = load i32, ptr %21, align 8
  %54 = load ptr, ptr %16, align 4
  %55 = getelementptr inbounds %struct.nouveau_drm, ptr %54, i32 0, i32 19
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 8
  tail call void @nouveau_hw_load_state_palette(ptr noundef %15, i32 noundef %53, ptr noundef %57) #8
  br label %58

58:                                               ; preds = %52, %12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv_crtc_destroy(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %1
  tail call void @drm_crtc_cleanup(ptr noundef nonnull %0) #8
  %10 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr %struct.nv04_display, ptr %7, i32 0, i32 4, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %13) #8
  %17 = load i32, ptr %10, align 8
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i32 [ %17, %15 ], [ %11, %9 ]
  %20 = getelementptr %struct.nv04_display, ptr %7, i32 0, i32 4, i32 %19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 4
  store ptr null, ptr %20, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @ttm_bo_put(ptr noundef nonnull %23) #8
  br label %26

26:                                               ; preds = %25, %22, %18
  %27 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  tail call void @nouveau_bo_unmap(ptr noundef %28) #8
  %29 = load ptr, ptr %27, align 4
  %30 = tail call i32 @nouveau_bo_unpin(ptr noundef %29) #8
  %31 = icmp eq ptr %27, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %27, align 4
  store ptr null, ptr %27, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @ttm_bo_put(ptr noundef nonnull %33) #8
  br label %36

36:                                               ; preds = %35, %32, %26
  %37 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 2
  %38 = tail call i32 @nvif_notify_dtor(ptr noundef %37) #8
  tail call void @kfree(ptr noundef nonnull %0) #8
  br label %39

39:                                               ; preds = %36, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_helper_set_config(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_crtc_page_flip(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) #0 {
  %6 = alloca ptr, align 4
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.drm_plane, ptr %11, i32 0, i32 12
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store ptr null, ptr %6, align 4, !annotation !21
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %150, label %26

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.nouveau_channel, ptr %24, i32 0, i32 17, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.anon.87, ptr %24, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 32) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %150, label %34

34:                                               ; preds = %26
  %35 = icmp eq ptr %17, %15
  br i1 %35, label %39, label %36

36:                                               ; preds = %34
  %37 = tail call i32 @nouveau_bo_pin(ptr noundef %17, i32 noundef 2, i1 noundef zeroext true) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %148

39:                                               ; preds = %36, %34
  %40 = getelementptr inbounds %struct.nouveau_cli, ptr %28, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %40) #8
  %41 = getelementptr inbounds %struct.drm_gem_object, ptr %17, i32 0, i32 9
  %42 = load ptr, ptr %41, align 8
  %43 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %42, ptr noundef null) #8
  %44 = icmp eq i32 %43, -4
  %45 = select i1 %44, i32 -512, i32 %43
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %143

47:                                               ; preds = %39
  %48 = tail call i32 @nouveau_fence_sync(ptr noundef %17, ptr noundef nonnull %24, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ttm_buffer_object, ptr %17, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.ttm_device, ptr %52, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %53) #8
  %54 = getelementptr inbounds %struct.ttm_buffer_object, ptr %17, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %17, ptr noundef %55, ptr noundef null) #8
  %56 = load ptr, ptr %51, align 8
  %57 = getelementptr inbounds %struct.ttm_device, ptr %56, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %58 = load i16, ptr %57, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %57, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %60 = load ptr, ptr %41, align 8
  tail call void @ww_mutex_unlock(ptr noundef %60) #8
  br label %143

61:                                               ; preds = %47
  br i1 %35, label %80, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.ttm_buffer_object, ptr %17, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.ttm_device, ptr %64, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %65) #8
  %66 = getelementptr inbounds %struct.ttm_buffer_object, ptr %17, i32 0, i32 6
  %67 = load ptr, ptr %66, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %17, ptr noundef %67, ptr noundef null) #8
  %68 = load ptr, ptr %63, align 8
  %69 = getelementptr inbounds %struct.ttm_device, ptr %68, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %70 = load i16, ptr %69, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %69, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %72 = load ptr, ptr %41, align 8
  tail call void @ww_mutex_unlock(ptr noundef %72) #8
  %73 = getelementptr inbounds %struct.drm_gem_object, ptr %15, i32 0, i32 9
  %74 = load ptr, ptr %73, align 8
  %75 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %74, ptr noundef null) #8
  %76 = icmp eq i32 %75, -4
  %77 = select i1 %76, i32 -512, i32 %75
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %62
  tail call void @mutex_unlock(ptr noundef %40) #8
  br label %145

80:                                               ; preds = %62, %61
  %81 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.drm_format_info, ptr %82, i32 0, i32 3
  %84 = load i8, ptr %83, align 2
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 %85, 3
  %87 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 6
  %88 = load i32, ptr %87, align 8
  %89 = getelementptr inbounds %struct.nouveau_bo, ptr %17, i32 0, i32 13
  %90 = load i64, ptr %89, align 8
  store ptr null, ptr %32, align 8
  %91 = getelementptr inbounds i8, ptr %32, i32 4
  store ptr null, ptr %91, align 4
  %92 = getelementptr inbounds i8, ptr %32, i32 8
  store ptr %2, ptr %92, align 8
  %93 = getelementptr inbounds i8, ptr %32, i32 12
  store ptr %0, ptr %93, align 4
  %94 = getelementptr inbounds i8, ptr %32, i32 16
  store i32 %86, ptr %94, align 8
  %95 = getelementptr inbounds i8, ptr %32, i32 20
  store i32 %88, ptr %95, align 4
  %96 = getelementptr inbounds i8, ptr %32, i32 24
  store i64 %90, ptr %96, align 8
  %97 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #8
  %98 = and i32 %3, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %130

100:                                              ; preds = %80
  %101 = getelementptr inbounds %struct.nvif_push, ptr %30, i32 0, i32 4
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i32, ptr %102, i32 8
  %104 = getelementptr inbounds %struct.nvif_push, ptr %30, i32 0, i32 6
  %105 = load ptr, ptr %104, align 4
  %106 = icmp ult ptr %103, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %100
  %108 = load ptr, ptr %30, align 8
  %109 = tail call i32 %108(ptr noundef %30, i32 noundef 8) #8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %141

111:                                              ; preds = %107
  %112 = load ptr, ptr %101, align 4
  br label %113

113:                                              ; preds = %111, %100
  %114 = phi ptr [ %112, %111 ], [ %102, %100 ]
  %115 = getelementptr i32, ptr %114, i32 1
  store ptr %115, ptr %101, align 4
  store i32 278828, ptr %114, align 4
  %116 = load ptr, ptr %101, align 4
  %117 = getelementptr i32, ptr %116, i32 1
  store ptr %117, ptr %101, align 4
  store i32 0, ptr %116, align 4
  %118 = load ptr, ptr %101, align 4
  %119 = getelementptr i32, ptr %118, i32 1
  store ptr %119, ptr %101, align 4
  store i32 278836, ptr %118, align 4
  %120 = load ptr, ptr %101, align 4
  %121 = getelementptr i32, ptr %120, i32 1
  store ptr %121, ptr %101, align 4
  store i32 %22, ptr %120, align 4
  %122 = load ptr, ptr %101, align 4
  %123 = getelementptr i32, ptr %122, i32 1
  store ptr %123, ptr %101, align 4
  store i32 278784, ptr %122, align 4
  %124 = load ptr, ptr %101, align 4
  %125 = getelementptr i32, ptr %124, i32 1
  store ptr %125, ptr %101, align 4
  store i32 0, ptr %124, align 4
  %126 = load ptr, ptr %101, align 4
  %127 = getelementptr i32, ptr %126, i32 1
  store ptr %127, ptr %101, align 4
  store i32 278832, ptr %126, align 4
  %128 = load ptr, ptr %101, align 4
  %129 = getelementptr i32, ptr %128, i32 1
  store ptr %129, ptr %101, align 4
  store i32 0, ptr %128, align 4
  br label %130

130:                                              ; preds = %113, %80
  %131 = getelementptr %struct.nv04_display, ptr %20, i32 0, i32 4, i32 %22
  tail call fastcc void @nouveau_bo_ref(ptr noundef %17, ptr noundef %131)
  %132 = call fastcc i32 @nv04_page_flip_emit(ptr noundef nonnull %24, ptr noundef %15, ptr noundef nonnull %32, ptr noundef nonnull %6)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  call void @mutex_unlock(ptr noundef %40) #8
  %135 = load ptr, ptr %10, align 8
  %136 = getelementptr inbounds %struct.drm_plane, ptr %135, i32 0, i32 12
  store ptr %1, ptr %136, align 8
  %137 = load ptr, ptr %6, align 4
  call void @nouveau_bo_fence(ptr noundef %15, ptr noundef %137, i1 noundef zeroext false) #8
  call fastcc void @ttm_bo_unreserve(ptr noundef %15)
  br i1 %35, label %140, label %138

138:                                              ; preds = %134
  %139 = call i32 @nouveau_bo_unpin(ptr noundef %15) #8
  br label %140

140:                                              ; preds = %138, %134
  call void @nouveau_fence_unref(ptr noundef nonnull %6) #8
  br label %150

141:                                              ; preds = %130, %107
  %142 = phi i32 [ %132, %130 ], [ %109, %107 ]
  call void @drm_crtc_vblank_put(ptr noundef %0) #8
  call fastcc void @ttm_bo_unreserve(ptr noundef %15)
  br label %143

143:                                              ; preds = %141, %50, %39
  %144 = phi i32 [ %45, %39 ], [ %48, %50 ], [ %142, %141 ]
  call void @mutex_unlock(ptr noundef %40) #8
  br i1 %35, label %148, label %145

145:                                              ; preds = %143, %79
  %146 = phi i32 [ %77, %79 ], [ %144, %143 ]
  %147 = call i32 @nouveau_bo_unpin(ptr noundef %17) #8
  br label %148

148:                                              ; preds = %145, %143, %36
  %149 = phi i32 [ %37, %36 ], [ %146, %145 ], [ %144, %143 ]
  call void @kfree(ptr noundef nonnull %32) #8
  br label %150

150:                                              ; preds = %148, %140, %26, %5
  %151 = phi i32 [ %149, %148 ], [ 0, %140 ], [ -19, %5 ], [ -12, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret i32 %151
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_display_vblank_enable(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_display_vblank_disable(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_vblank_helper_get_vblank_timestamp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_unmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_rd32(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_hw_load_state_palette(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_dtor(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_sync(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ttm_bo_unreserve(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ttm_device, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %0, ptr noundef %6, ptr noundef null) #8
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.ttm_device, ptr %7, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %9 = load i16, ptr %8, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %11 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  tail call void @ww_mutex_unlock(ptr noundef %12) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nv04_page_flip_emit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.anon.87, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 28
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #8
  %15 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %6, i32 0, i32 3
  %16 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %6, i32 0, i32 3, i32 1
  %17 = load ptr, ptr %16, align 4
  store ptr %2, ptr %16, align 4
  store ptr %15, ptr %2, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %2, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #8
  %19 = tail call i32 @nouveau_fence_sync(ptr noundef %1, ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i32, ptr %23, i32 2
  %25 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = icmp ult ptr %24, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = load ptr, ptr %12, align 8
  %30 = tail call i32 %29(ptr noundef %12, i32 noundef 2) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load ptr, ptr %22, align 4
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi ptr [ %33, %32 ], [ %23, %21 ]
  %36 = getelementptr i32, ptr %35, i32 1
  store ptr %36, ptr %22, align 4
  store i32 271616, ptr %35, align 4
  %37 = load ptr, ptr %22, align 4
  %38 = getelementptr i32, ptr %37, i32 1
  store ptr %38, ptr %22, align 4
  store i32 0, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %12) #8
  %41 = tail call i32 @nouveau_fence_new(ptr noundef %0, i1 noundef zeroext false, ptr noundef %3) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %34, %28, %4
  %44 = phi i32 [ %19, %4 ], [ %41, %34 ], [ %30, %28 ]
  %45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #8
  %46 = load ptr, ptr %18, align 4
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %45) #8
  br label %49

49:                                               ; preds = %43, %34
  %50 = phi i32 [ %44, %43 ], [ 0, %34 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_fence(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_unref(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_new(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv_crtc_dpms(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load i32, ptr @__drm_debug, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 12
  %17 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.4, ptr noundef %16, i32 noundef %1, i32 noundef %18) #9
  br label %19

19:                                               ; preds = %8, %2
  %20 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 7
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %172, label %23

23:                                               ; preds = %19
  store i32 %1, ptr %20, align 8
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 -102
  %28 = load i16, ptr %27, align 2
  %29 = and i16 %28, 4080
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 2, i32 3, i32 1, i32 4
  %31 = load i8, ptr %30, align 1
  %32 = icmp ugt i8 %31, 1
  %33 = icmp ne i16 %29, 256
  %34 = select i1 %32, i1 %33, i1 false
  %35 = icmp ne i16 %29, 336
  %36 = select i1 %34, i1 %35, i1 false
  %37 = icmp ne i16 %29, 416
  %38 = select i1 %36, i1 %37, i1 false
  %39 = icmp ne i16 %29, 512
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %45

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %43 = load i32, ptr %42, align 8
  tail call void @NVSetOwner(ptr noundef %3, i32 noundef %43) #8
  %44 = load ptr, ptr %4, align 4
  br label %45

45:                                               ; preds = %41, %23
  %46 = phi ptr [ %44, %41 ], [ %24, %23 ]
  %47 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 2, i32 3
  %50 = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 2, i32 3, i32 0, i32 6
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  %53 = shl i32 %48, 13
  %54 = add i32 %53, 6296532
  br i1 %52, label %57, label %55, !prof !8

55:                                               ; preds = %45
  %56 = getelementptr i8, ptr %51, i32 %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %56, i8 26) #8, !srcloc !12
  br label %59

57:                                               ; preds = %45
  %58 = sext i32 %54 to i64
  tail call void @nvif_object_wr(ptr noundef %49, i32 noundef 1, i64 noundef %58, i32 noundef 26) #8
  br label %59

59:                                               ; preds = %57, %55
  %60 = load ptr, ptr %50, align 8
  %61 = icmp eq ptr %60, null
  %62 = add i32 %53, 6296533
  br i1 %61, label %67, label %63, !prof !8

63:                                               ; preds = %59
  %64 = getelementptr i8, ptr %60, i32 %62
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %64) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %66 = zext i8 %65 to i32
  br label %70

67:                                               ; preds = %59
  %68 = sext i32 %62 to i64
  %69 = tail call i32 @nvif_object_rd(ptr noundef %49, i32 noundef 1, i64 noundef %68) #8
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi i32 [ %66, %63 ], [ %69, %67 ]
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 63
  switch i32 %1, label %80 [
    i32 1, label %74
    i32 2, label %76
    i32 3, label %78
  ]

74:                                               ; preds = %70
  %75 = or i8 %73, -128
  br label %80

76:                                               ; preds = %70
  %77 = or i8 %73, 64
  br label %80

78:                                               ; preds = %70
  %79 = or i8 %72, -64
  br label %80

80:                                               ; preds = %78, %76, %74, %70
  %81 = phi i8 [ 32, %78 ], [ 32, %76 ], [ 32, %74 ], [ 0, %70 ]
  %82 = phi i8 [ 0, %78 ], [ -128, %76 ], [ -128, %74 ], [ -128, %70 ]
  %83 = phi i8 [ %79, %78 ], [ %77, %76 ], [ %75, %74 ], [ %73, %70 ]
  %84 = load i32, ptr %47, align 8
  tail call void @NVWriteVgaSeq(ptr noundef %3, i32 noundef %84, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %85 = load i32, ptr %47, align 8
  %86 = tail call zeroext i8 @NVReadVgaSeq(ptr noundef %3, i32 noundef %85, i8 noundef zeroext 1) #8
  %87 = and i8 %86, -33
  %88 = or i8 %87, %81
  %89 = load i32, ptr %47, align 8
  tail call void @NVWriteVgaSeq(ptr noundef %3, i32 noundef %89, i8 noundef zeroext 1, i8 noundef zeroext %88) #8
  %90 = load i32, ptr %47, align 8
  %91 = load ptr, ptr %4, align 4
  %92 = getelementptr inbounds %struct.nouveau_drm, ptr %91, i32 0, i32 2, i32 3
  %93 = getelementptr inbounds %struct.nouveau_drm, ptr %91, i32 0, i32 2, i32 3, i32 0, i32 6
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, null
  %96 = shl i32 %90, 13
  %97 = add i32 %96, 6296532
  br i1 %95, label %100, label %98, !prof !8

98:                                               ; preds = %80
  %99 = getelementptr i8, ptr %94, i32 %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %99, i8 23) #8, !srcloc !12
  br label %102

100:                                              ; preds = %80
  %101 = sext i32 %97 to i64
  tail call void @nvif_object_wr(ptr noundef %92, i32 noundef 1, i64 noundef %101, i32 noundef 23) #8
  br label %102

102:                                              ; preds = %100, %98
  %103 = load ptr, ptr %93, align 8
  %104 = icmp eq ptr %103, null
  %105 = add i32 %96, 6296533
  br i1 %104, label %110, label %106, !prof !8

106:                                              ; preds = %102
  %107 = getelementptr i8, ptr %103, i32 %105
  %108 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %107) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %109 = zext i8 %108 to i32
  br label %113

110:                                              ; preds = %102
  %111 = sext i32 %105 to i64
  %112 = tail call i32 @nvif_object_rd(ptr noundef %92, i32 noundef 1, i64 noundef %111) #8
  br label %113

113:                                              ; preds = %110, %106
  %114 = phi i32 [ %109, %106 ], [ %112, %110 ]
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 127
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %117(i32 noundef 214748000) #8
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 214748000) #8
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 214748000) #8
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 214748000) #8
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 214748000) #8
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 214748000) #8
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %123(i32 noundef 214748000) #8
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 214748000) #8
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %125(i32 noundef 214748000) #8
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %126(i32 noundef 214748000) #8
  %127 = or i8 %116, %82
  %128 = load i32, ptr %47, align 8
  %129 = load ptr, ptr %4, align 4
  %130 = getelementptr inbounds %struct.nouveau_drm, ptr %129, i32 0, i32 2, i32 3
  %131 = getelementptr inbounds %struct.nouveau_drm, ptr %129, i32 0, i32 2, i32 3, i32 0, i32 6
  %132 = load ptr, ptr %131, align 8
  %133 = icmp eq ptr %132, null
  %134 = shl i32 %128, 13
  %135 = add i32 %134, 6296532
  br i1 %133, label %138, label %136, !prof !8

136:                                              ; preds = %113
  %137 = getelementptr i8, ptr %132, i32 %135
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %137, i8 23) #8, !srcloc !12
  br label %140

138:                                              ; preds = %113
  %139 = sext i32 %135 to i64
  tail call void @nvif_object_wr(ptr noundef %130, i32 noundef 1, i64 noundef %139, i32 noundef 23) #8
  br label %140

140:                                              ; preds = %138, %136
  %141 = load ptr, ptr %131, align 8
  %142 = icmp eq ptr %141, null
  %143 = add i32 %134, 6296533
  br i1 %142, label %146, label %144, !prof !8

144:                                              ; preds = %140
  %145 = getelementptr i8, ptr %141, i32 %143
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %145, i8 %127) #8, !srcloc !12
  br label %149

146:                                              ; preds = %140
  %147 = sext i32 %143 to i64
  %148 = zext i8 %127 to i32
  tail call void @nvif_object_wr(ptr noundef %130, i32 noundef 1, i64 noundef %147, i32 noundef %148) #8
  br label %149

149:                                              ; preds = %146, %144
  %150 = load i32, ptr %47, align 8
  tail call void @NVWriteVgaSeq(ptr noundef %3, i32 noundef %150, i8 noundef zeroext 0, i8 noundef zeroext 3) #8
  %151 = load i32, ptr %47, align 8
  %152 = load ptr, ptr %4, align 4
  %153 = getelementptr inbounds %struct.nouveau_drm, ptr %152, i32 0, i32 2, i32 3
  %154 = getelementptr inbounds %struct.nouveau_drm, ptr %152, i32 0, i32 2, i32 3, i32 0, i32 6
  %155 = load ptr, ptr %154, align 8
  %156 = icmp eq ptr %155, null
  %157 = shl i32 %151, 13
  %158 = add i32 %157, 6296532
  br i1 %156, label %161, label %159, !prof !8

159:                                              ; preds = %149
  %160 = getelementptr i8, ptr %155, i32 %158
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %160, i8 26) #8, !srcloc !12
  br label %163

161:                                              ; preds = %149
  %162 = sext i32 %158 to i64
  tail call void @nvif_object_wr(ptr noundef %153, i32 noundef 1, i64 noundef %162, i32 noundef 26) #8
  br label %163

163:                                              ; preds = %161, %159
  %164 = load ptr, ptr %154, align 8
  %165 = icmp eq ptr %164, null
  %166 = add i32 %157, 6296533
  br i1 %165, label %169, label %167, !prof !8

167:                                              ; preds = %163
  %168 = getelementptr i8, ptr %164, i32 %166
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %168, i8 %83) #8, !srcloc !12
  br label %172

169:                                              ; preds = %163
  %170 = sext i32 %166 to i64
  %171 = zext i8 %83 to i32
  tail call void @nvif_object_wr(ptr noundef %153, i32 noundef 1, i64 noundef %170, i32 noundef %171) #8
  br label %172

172:                                              ; preds = %169, %167, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv_crtc_prepare(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -102
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %10, 4080
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 1, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = icmp ugt i8 %13, 1
  %15 = icmp ne i16 %11, 256
  %16 = select i1 %14, i1 %15, i1 false
  %17 = icmp ne i16 %11, 336
  %18 = select i1 %16, i1 %17, i1 false
  %19 = icmp ne i16 %11, 416
  %20 = select i1 %18, i1 %19, i1 false
  %21 = icmp ne i16 %11, 512
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 8
  tail call void @NVSetOwner(ptr noundef %2, i32 noundef %25) #8
  br label %26

26:                                               ; preds = %23, %1
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #8
  %27 = load ptr, ptr %6, align 4
  tail call void %27(ptr noundef %0, i32 noundef 3) #8
  %28 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 8
  tail call void @NVBlankScreen(ptr noundef %2, i32 noundef %29, i1 noundef zeroext true) #8
  %30 = load i32, ptr %28, align 8
  %31 = load ptr, ptr %3, align 4
  %32 = icmp eq i32 %30, 0
  %33 = select i1 %32, i32 6293508, i32 6301700
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 2, i32 3, i32 0, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !8

37:                                               ; preds = %26
  %38 = getelementptr i8, ptr %35, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 1) #8, !srcloc !10
  br label %42

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 2, i32 3
  %41 = zext i32 %33 to i64
  tail call void @nvif_object_wr(ptr noundef %40, i32 noundef 4, i64 noundef %41, i32 noundef 1) #8
  br label %42

42:                                               ; preds = %39, %37
  %43 = load i8, ptr %12, align 1
  %44 = icmp eq i8 %43, 5
  br i1 %44, label %45, label %75

45:                                               ; preds = %42
  %46 = load i32, ptr %28, align 8
  %47 = load ptr, ptr %3, align 4
  %48 = icmp eq i32 %46, 0
  %49 = select i1 %48, i32 6818048, i32 6826240
  %50 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3, i32 0, i32 6
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53, !prof !8

53:                                               ; preds = %45
  %54 = getelementptr i8, ptr %51, i32 %49
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !26
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  br label %60

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3
  %58 = zext i32 %49 to i64
  %59 = tail call i32 @nvif_object_rd(ptr noundef %57, i32 noundef 4, i64 noundef %58) #8
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i32 [ %55, %53 ], [ %59, %56 ]
  %62 = load i32, ptr %28, align 8
  %63 = and i32 %61, -65537
  %64 = load ptr, ptr %3, align 4
  %65 = icmp eq i32 %62, 0
  %66 = select i1 %65, i32 6818048, i32 6826240
  %67 = getelementptr inbounds %struct.nouveau_drm, ptr %64, i32 0, i32 2, i32 3, i32 0, i32 6
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70, !prof !8

70:                                               ; preds = %60
  %71 = getelementptr i8, ptr %68, i32 %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %63) #8, !srcloc !10
  br label %75

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.nouveau_drm, ptr %64, i32 0, i32 2, i32 3
  %74 = zext i32 %66 to i64
  tail call void @nvif_object_wr(ptr noundef %73, i32 noundef 4, i64 noundef %74, i32 noundef %63) #8
  br label %75

75:                                               ; preds = %72, %70, %42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv_crtc_commit(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 8
  tail call void @nouveau_hw_load_state(ptr noundef %2, i32 noundef %6, ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 14
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 15
  %15 = load i32, ptr %14, align 4
  %16 = tail call fastcc i32 @nv_crtc_swap_fbs(ptr noundef %0) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  tail call fastcc void @nv04_crtc_do_mode_set_base(ptr noundef %0, ptr noundef null, i32 noundef %13, i32 noundef %15, i1 noundef zeroext false) #8
  br label %19

19:                                               ; preds = %18, %1
  %20 = load ptr, ptr %4, align 4
  tail call void %20(ptr noundef %0, i32 noundef 0) #8
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv_crtc_mode_set(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #0 {
  %7 = alloca %struct.nvbios_pll, align 4
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr @__drm_debug, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 12
  %22 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.5, ptr noundef %21, i32 noundef %23) #9
  br label %24

24:                                               ; preds = %14, %6
  tail call void @drm_mode_debug_printmodeline(ptr noundef %2) #8
  %25 = tail call fastcc i32 @nv_crtc_swap_fbs(ptr noundef %0)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %726

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 8
  tail call fastcc void @nv_lock_vga_crtc_shadow(ptr noundef %8, i32 noundef %29, i32 noundef -1)
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 19
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 8
  %36 = load i32, ptr %28, align 8
  %37 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36
  %38 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.drm_plane, ptr %39, i32 0, i32 12
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 13
  %43 = load i16, ptr %42, align 4
  %44 = lshr i16 %43, 3
  %45 = zext i16 %44 to i32
  %46 = add nsw i32 %45, -1
  %47 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 16
  %48 = load i16, ptr %47, align 2
  %49 = lshr i16 %48, 3
  %50 = add nuw nsw i16 %49, 1
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 17
  %53 = load i16, ptr %52, align 4
  %54 = lshr i16 %53, 3
  %55 = add nuw nsw i16 %54, 1
  %56 = zext i16 %55 to i32
  %57 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 18
  %58 = load i16, ptr %57, align 2
  %59 = lshr i16 %58, 3
  %60 = zext i16 %59 to i32
  %61 = add nsw i32 %60, -5
  %62 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 20
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  %65 = add nsw i32 %64, -1
  %66 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 23
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = add nsw i32 %68, -1
  %70 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 24
  %71 = load i16, ptr %70, align 2
  %72 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 25
  %73 = load i16, ptr %72, align 4
  %74 = zext i16 %73 to i32
  %75 = add nsw i32 %74, -2
  %76 = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 30, i32 16
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, %76
  br i1 %78, label %79, label %82

79:                                               ; preds = %27
  %80 = trunc i16 %71 to i8
  %81 = add i8 %80, -1
  br label %109

82:                                               ; preds = %96, %27
  %83 = phi ptr [ %98, %96 ], [ %77, %27 ]
  %84 = phi i1 [ %97, %96 ], [ false, %27 ]
  %85 = getelementptr i8, ptr %83, i32 48
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, %0
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = getelementptr i8, ptr %83, i32 80
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.dcb_output, ptr %90, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, -2
  %94 = icmp eq i32 %93, 2
  %95 = select i1 %94, i1 true, i1 %84
  br label %96

96:                                               ; preds = %88, %82
  %97 = phi i1 [ %84, %82 ], [ %95, %88 ]
  %98 = load ptr, ptr %83, align 4
  %99 = icmp eq ptr %98, %76
  br i1 %99, label %100, label %82

100:                                              ; preds = %96
  %101 = trunc i16 %71 to i8
  %102 = add i8 %101, -1
  br i1 %97, label %103, label %109

103:                                              ; preds = %100
  %104 = add nsw i32 %74, -5
  %105 = add nsw i32 %60, -10
  %106 = add nsw i32 %60, -7
  %107 = trunc i16 %73 to i8
  %108 = add i8 %107, -4
  br label %109

109:                                              ; preds = %103, %100, %79
  %110 = phi i32 [ %105, %103 ], [ %51, %100 ], [ %51, %79 ]
  %111 = phi i32 [ %106, %103 ], [ %56, %100 ], [ %56, %79 ]
  %112 = phi i32 [ %104, %103 ], [ %69, %100 ], [ %69, %79 ]
  %113 = phi i8 [ %108, %103 ], [ %102, %100 ], [ %81, %79 ]
  %114 = phi i32 [ %104, %103 ], [ %65, %100 ], [ %65, %79 ]
  %115 = add nsw i32 %60, -1
  %116 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 11
  %117 = load i32, ptr %116, align 4
  %118 = lshr i32 %117, 4
  %119 = and i32 %118, 1
  %120 = or i32 %119, %75
  %121 = and i32 %117, 3
  %122 = icmp eq i32 %121, 0
  %123 = and i32 %117, 12
  %124 = icmp eq i32 %123, 0
  %125 = or i1 %122, %124
  br i1 %125, label %136, label %126

126:                                              ; preds = %109
  store i8 35, ptr %37, align 4
  %127 = load i32, ptr %116, align 4
  %128 = and i32 %127, 2
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, i8 35, i8 99
  store i8 %130, ptr %37, align 4
  %131 = load i32, ptr %116, align 4
  %132 = and i32 %131, 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %156, label %134

134:                                              ; preds = %126
  %135 = or i8 %130, -128
  br label %154

136:                                              ; preds = %109
  %137 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 6
  %138 = load i16, ptr %137, align 2
  %139 = zext i16 %138 to i32
  %140 = lshr i32 %117, 5
  %141 = and i32 %140, 1
  %142 = shl nuw nsw i32 %139, %141
  %143 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 10
  %144 = load i16, ptr %143, align 2
  %145 = tail call i16 @llvm.umax.i16(i16 %144, i16 1) #8
  %146 = zext i16 %145 to i32
  %147 = mul i32 %142, %146
  %148 = icmp slt i32 %147, 400
  br i1 %148, label %154, label %149

149:                                              ; preds = %136
  %150 = icmp ult i32 %147, 480
  br i1 %150, label %154, label %151

151:                                              ; preds = %149
  %152 = icmp ult i32 %147, 768
  %153 = select i1 %152, i8 -29, i8 35
  br label %154

154:                                              ; preds = %151, %149, %136, %134
  %155 = phi i8 [ %135, %134 ], [ -93, %136 ], [ 99, %149 ], [ %153, %151 ]
  store i8 %155, ptr %37, align 4
  br label %156

156:                                              ; preds = %154, %126
  %157 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 3
  store i8 0, ptr %157, align 1
  %158 = load i32, ptr %116, align 4
  %159 = and i32 %158, 8192
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, i8 33, i8 41
  %162 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 3, i32 1
  store i8 %161, ptr %162, align 1
  %163 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 3, i32 2
  store i8 15, ptr %163, align 1
  %164 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 3, i32 3
  store i8 0, ptr %164, align 1
  %165 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 3, i32 4
  store i8 14, ptr %165, align 1
  %166 = trunc i32 %61 to i8
  %167 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1
  store i8 %166, ptr %167, align 1
  %168 = trunc i32 %46 to i8
  %169 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 1
  store i8 %168, ptr %169, align 1
  %170 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 2
  store i8 %168, ptr %170, align 1
  %171 = trunc i32 %115 to i8
  %172 = and i8 %171, 31
  %173 = or i8 %172, -128
  %174 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 3
  store i8 %173, ptr %174, align 1
  %175 = trunc i32 %110 to i8
  %176 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 4
  store i8 %175, ptr %176, align 1
  %177 = shl nsw i32 %115, 2
  %178 = and i32 %177, 128
  %179 = and i32 %111, 31
  %180 = or i32 %179, %178
  %181 = trunc i32 %180 to i8
  %182 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 5
  store i8 %181, ptr %182, align 1
  %183 = trunc i32 %120 to i8
  %184 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 6
  store i8 %183, ptr %184, align 1
  %185 = lshr i32 %112, 2
  %186 = and i32 %185, 128
  %187 = lshr i32 %65, 3
  %188 = and i32 %187, 64
  %189 = lshr i32 %75, 4
  %190 = and i32 %189, 32
  %191 = lshr i32 %114, 5
  %192 = and i32 %191, 8
  %193 = lshr i32 %112, 6
  %194 = and i32 %193, 4
  %195 = lshr i32 %65, 7
  %196 = and i32 %195, 2
  %197 = lshr i32 %75, 8
  %198 = and i32 %197, 1
  %199 = or i32 %196, %188
  %200 = or i32 %199, %190
  %201 = or i32 %200, %198
  %202 = or i32 %201, %186
  %203 = or i32 %202, %194
  %204 = or i32 %203, %192
  %205 = trunc i32 %204 to i8
  %206 = or i8 %205, 16
  %207 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 7
  store i8 %206, ptr %207, align 1
  %208 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 8
  store i8 0, ptr %208, align 1
  %209 = load i32, ptr %116, align 4
  %210 = shl i32 %209, 2
  %211 = and i32 %210, 128
  %212 = lshr i32 %114, 4
  %213 = and i32 %212, 32
  %214 = or i32 %211, %213
  %215 = trunc i32 %214 to i8
  %216 = or i8 %215, 64
  %217 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 9
  store i8 %216, ptr %217, align 1
  %218 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 10
  %219 = trunc i32 %112 to i8
  %220 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(6) %218, i8 0, i64 6, i1 false) #8
  store i8 %219, ptr %220, align 1
  %221 = and i8 %113, 15
  %222 = or i8 %221, 32
  %223 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 17
  store i8 %222, ptr %223, align 1
  %224 = trunc i32 %65 to i8
  %225 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 18
  store i8 %224, ptr %225, align 1
  %226 = getelementptr inbounds %struct.drm_framebuffer, ptr %41, i32 0, i32 6
  %227 = load i32, ptr %226, align 8
  %228 = lshr i32 %227, 3
  %229 = trunc i32 %228 to i8
  %230 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 19
  store i8 %229, ptr %230, align 1
  %231 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 20
  store i8 0, ptr %231, align 1
  %232 = trunc i32 %114 to i8
  %233 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 21
  store i8 %232, ptr %233, align 1
  %234 = trunc i16 %73 to i8
  %235 = add i8 %234, -1
  %236 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 22
  store i8 %235, ptr %236, align 1
  %237 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 23
  store i8 67, ptr %237, align 1
  %238 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 24
  store i8 -1, ptr %238, align 1
  %239 = load i32, ptr %226, align 8
  %240 = lshr i32 %239, 6
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, -32
  %243 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 25
  store i8 %242, ptr %243, align 1
  %244 = load i32, ptr %226, align 8
  %245 = lshr i32 %244, 8
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 64
  %248 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 66
  store i8 %247, ptr %248, align 1
  %249 = load i16, ptr %42, align 4
  %250 = icmp ult i16 %249, 1280
  %251 = select i1 %250, i8 4, i8 0
  %252 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 26
  store i8 %251, ptr %252, align 1
  %253 = lshr i32 %115, 2
  %254 = and i32 %253, 16
  %255 = lshr i32 %114, 7
  %256 = and i32 %255, 8
  %257 = lshr i32 %112, 8
  %258 = and i32 %257, 4
  %259 = lshr i32 %65, 9
  %260 = and i32 %259, 2
  %261 = lshr i32 %75, 10
  %262 = and i32 %261, 1
  %263 = or i32 %260, %254
  %264 = or i32 %263, %262
  %265 = or i32 %264, %258
  %266 = or i32 %265, %256
  %267 = trunc i32 %266 to i8
  %268 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 37
  store i8 %267, ptr %268, align 1
  %269 = lshr i32 %110, 5
  %270 = and i32 %269, 8
  %271 = ashr i32 %46, 8
  %272 = shl nsw i32 %271, 2
  %273 = and i32 %272, 4
  %274 = shl nsw i32 %271, 1
  %275 = and i32 %274, 2
  %276 = lshr i32 %61, 8
  %277 = and i32 %276, 1
  %278 = or i32 %275, %273
  %279 = or i32 %278, %277
  %280 = or i32 %279, %270
  %281 = trunc i32 %280 to i8
  %282 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 45
  store i8 %281, ptr %282, align 1
  %283 = and i32 %191, 64
  %284 = lshr i32 %112, 7
  %285 = and i32 %284, 16
  %286 = and i32 %259, 4
  %287 = lshr i32 %75, 11
  %288 = and i32 %287, 1
  %289 = or i32 %288, %286
  %290 = or i32 %289, %285
  %291 = or i32 %290, %283
  %292 = trunc i32 %291 to i8
  %293 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 65
  store i8 %292, ptr %293, align 1
  %294 = load i32, ptr %116, align 4
  %295 = and i32 %294, 16
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %305, label %297

297:                                              ; preds = %156
  %298 = lshr i32 %61, 1
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, -2
  %301 = lshr i32 %61, 5
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 16
  %304 = or i8 %303, %281
  store i8 %304, ptr %282, align 1
  br label %305

305:                                              ; preds = %297, %156
  %306 = phi i8 [ %300, %297 ], [ -1, %156 ]
  %307 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 1, i32 57
  store i8 %306, ptr %307, align 1
  %308 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 4
  %309 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 4, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(5) %308, i8 0, i64 5, i1 false) #8
  store i8 64, ptr %309, align 1
  %310 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 4, i32 6
  store i8 5, ptr %310, align 2
  %311 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 4, i32 7
  store i8 15, ptr %311, align 1
  %312 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 4, i32 8
  store i8 -1, ptr %312, align 2
  %313 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5
  store i8 0, ptr %313, align 1
  %314 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 1
  store i8 1, ptr %314, align 1
  %315 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 2
  store i8 2, ptr %315, align 1
  %316 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 3
  store i8 3, ptr %316, align 1
  %317 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 4
  store i8 4, ptr %317, align 1
  %318 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 5
  store i8 5, ptr %318, align 1
  %319 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 6
  store i8 6, ptr %319, align 1
  %320 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 7
  store i8 7, ptr %320, align 1
  %321 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 8
  store i8 8, ptr %321, align 1
  %322 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 9
  store i8 9, ptr %322, align 1
  %323 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 10
  store i8 10, ptr %323, align 1
  %324 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 11
  store i8 11, ptr %324, align 1
  %325 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 12
  store i8 12, ptr %325, align 1
  %326 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 13
  store i8 13, ptr %326, align 1
  %327 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 14
  store i8 14, ptr %327, align 1
  %328 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 15
  store i8 15, ptr %328, align 1
  %329 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 16
  store i8 1, ptr %329, align 1
  %330 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 17
  store i8 0, ptr %330, align 1
  %331 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 18
  store i8 15, ptr %331, align 1
  %332 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 19
  store i8 0, ptr %332, align 1
  %333 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %35, i32 0, i32 %36, i32 5, i32 20
  store i8 0, ptr %333, align 1
  %334 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3, i32 1, i32 4
  %335 = load i8, ptr %334, align 1
  %336 = icmp eq i8 %335, 5
  br i1 %336, label %337, label %351

337:                                              ; preds = %305
  %338 = load ptr, ptr %9, align 4
  %339 = getelementptr inbounds %struct.nouveau_drm, ptr %338, i32 0, i32 19
  %340 = load ptr, ptr %339, align 4
  %341 = load ptr, ptr %340, align 8
  %342 = getelementptr inbounds %struct.nv04_mode_state, ptr %341, i32 0, i32 2
  %343 = load i32, ptr %342, align 4
  %344 = getelementptr inbounds %struct.nouveau_drm, ptr %338, i32 0, i32 2, i32 3, i32 0, i32 6
  %345 = load ptr, ptr %344, align 8
  %346 = icmp eq ptr %345, null
  br i1 %346, label %349, label %347, !prof !8

347:                                              ; preds = %337
  %348 = getelementptr i8, ptr %345, i32 6817060
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %348, i32 %343) #8, !srcloc !10
  br label %351

349:                                              ; preds = %337
  %350 = getelementptr inbounds %struct.nouveau_drm, ptr %338, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %350, i32 noundef 4, i64 noundef 6817060, i32 noundef %343) #8
  br label %351

351:                                              ; preds = %349, %347, %305
  %352 = load ptr, ptr %0, align 8
  %353 = getelementptr inbounds %struct.drm_device, ptr %352, i32 0, i32 5
  %354 = load ptr, ptr %353, align 4
  %355 = getelementptr inbounds %struct.nouveau_drm, ptr %354, i32 0, i32 19
  %356 = load ptr, ptr %355, align 4
  %357 = load ptr, ptr %356, align 8
  %358 = load i32, ptr %28, align 8
  %359 = getelementptr inbounds %struct.nv04_display, ptr %357, i32 0, i32 1
  %360 = load ptr, ptr %38, align 8
  %361 = getelementptr inbounds %struct.drm_plane, ptr %360, i32 0, i32 12
  %362 = load ptr, ptr %361, align 8
  %363 = getelementptr inbounds %struct.drm_device, ptr %352, i32 0, i32 30, i32 16
  %364 = load ptr, ptr %363, align 4
  %365 = icmp eq ptr %364, %363
  br i1 %365, label %400, label %366

366:                                              ; preds = %393, %351
  %367 = phi ptr [ %398, %393 ], [ %364, %351 ]
  %368 = phi i1 [ %397, %393 ], [ false, %351 ]
  %369 = phi i1 [ %396, %393 ], [ false, %351 ]
  %370 = phi i1 [ %395, %393 ], [ false, %351 ]
  %371 = phi i1 [ %394, %393 ], [ false, %351 ]
  %372 = getelementptr i8, ptr %367, i32 48
  %373 = load ptr, ptr %372, align 4
  %374 = icmp eq ptr %373, %0
  br i1 %374, label %375, label %393

375:                                              ; preds = %366
  %376 = getelementptr i8, ptr %367, i32 80
  %377 = load ptr, ptr %376, align 4
  %378 = getelementptr inbounds %struct.dcb_output, ptr %377, i32 0, i32 3
  %379 = load i32, ptr %378, align 4
  %380 = icmp eq i32 %379, 3
  %381 = select i1 %380, i1 true, i1 %371
  %382 = icmp eq i32 %379, 1
  %383 = select i1 %382, i1 true, i1 %369
  %384 = icmp eq i32 %379, 2
  %385 = select i1 %384, i1 true, i1 %370
  %386 = getelementptr inbounds %struct.dcb_output, ptr %377, i32 0, i32 8
  %387 = load i8, ptr %386, align 4
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %393, label %389

389:                                              ; preds = %375
  %390 = and i32 %379, -2
  %391 = icmp eq i32 %390, 2
  %392 = select i1 %391, i1 true, i1 %368
  br label %393

393:                                              ; preds = %389, %375, %366
  %394 = phi i1 [ %371, %366 ], [ %381, %389 ], [ %381, %375 ]
  %395 = phi i1 [ %370, %366 ], [ %385, %389 ], [ %385, %375 ]
  %396 = phi i1 [ %369, %366 ], [ %383, %389 ], [ %383, %375 ]
  %397 = phi i1 [ %368, %366 ], [ %392, %389 ], [ %368, %375 ]
  %398 = load ptr, ptr %367, align 4
  %399 = icmp eq ptr %398, %363
  br i1 %399, label %400, label %366

400:                                              ; preds = %393, %351
  %401 = phi i1 [ false, %351 ], [ %394, %393 ]
  %402 = phi i1 [ false, %351 ], [ %395, %393 ]
  %403 = phi i1 [ false, %351 ], [ %396, %393 ]
  %404 = phi i1 [ false, %351 ], [ %397, %393 ]
  %405 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %359, i32 0, i32 %358, i32 1, i32 28
  %406 = load i8, ptr %405, align 1
  %407 = and i8 %406, -33
  %408 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 1, i32 28
  store i8 %407, ptr %408, align 1
  %409 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 14
  store i32 0, ptr %409, align 4
  %410 = load i32, ptr %28, align 8
  %411 = icmp eq i32 %410, 0
  %412 = select i1 %411, i32 16, i32 0
  store i32 %412, ptr %409, align 4
  %413 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 9
  store i32 67174656, ptr %413, align 4
  %414 = getelementptr inbounds %struct.nouveau_drm, ptr %354, i32 0, i32 2, i32 3, i32 1, i32 2
  %415 = load i16, ptr %414, align 2
  %416 = icmp ugt i16 %415, 16
  %417 = select i1 %416, i32 67178752, i32 67174656
  store i32 %417, ptr %413, align 4
  %418 = load i32, ptr %116, align 4
  %419 = and i32 %418, 32
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %423, label %421

421:                                              ; preds = %400
  %422 = or i32 %417, 16
  store i32 %422, ptr %413, align 4
  br label %423

423:                                              ; preds = %421, %400
  %424 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 1, i32 83
  store i8 0, ptr %424, align 1
  %425 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 1, i32 84
  store i8 0, ptr %425, align 1
  %426 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 1, i32 59
  %427 = select i1 %402, i8 -120, i8 34
  %428 = select i1 %401, i8 17, i8 %427
  store i8 %428, ptr %426, align 1
  %429 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %359, i32 0, i32 %358, i32 1, i32 60
  %430 = load i8, ptr %429, align 1
  %431 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 1, i32 60
  store i8 %430, ptr %431, align 1
  %432 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 5
  %433 = load i32, ptr %432, align 8
  %434 = load ptr, ptr %0, align 8
  %435 = getelementptr inbounds %struct.drm_device, ptr %434, i32 0, i32 5
  %436 = load ptr, ptr %435, align 4
  %437 = getelementptr inbounds %struct.nouveau_drm, ptr %436, i32 0, i32 19
  %438 = load ptr, ptr %437, align 4
  %439 = load ptr, ptr %438, align 8
  %440 = load i32, ptr %28, align 8
  %441 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %439, i32 0, i32 %440
  %442 = trunc i32 %433 to i8
  %443 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %439, i32 0, i32 %440, i32 1, i32 69
  store i8 %442, ptr %443, align 1
  %444 = load i32, ptr %432, align 8
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %473, label %446

446:                                              ; preds = %423
  %447 = load ptr, ptr %0, align 8
  %448 = getelementptr inbounds %struct.drm_device, ptr %447, i32 0, i32 5
  %449 = load ptr, ptr %448, align 4
  %450 = getelementptr inbounds %struct.drm_device, ptr %447, i32 0, i32 2
  %451 = load ptr, ptr %450, align 4
  %452 = getelementptr i8, ptr %451, i32 -102
  %453 = load i16, ptr %452, align 2
  %454 = and i16 %453, 4080
  %455 = getelementptr inbounds %struct.nouveau_drm, ptr %449, i32 0, i32 2, i32 3, i32 1, i32 4
  %456 = load i8, ptr %455, align 1
  %457 = icmp ugt i8 %456, 1
  %458 = icmp ne i16 %454, 256
  %459 = select i1 %457, i1 %458, i1 false
  %460 = icmp ne i16 %454, 336
  %461 = select i1 %459, i1 %460, i1 false
  %462 = icmp ne i16 %454, 416
  %463 = select i1 %461, i1 %462, i1 false
  %464 = icmp ne i16 %454, 512
  %465 = select i1 %463, i1 %464, i1 false
  %466 = icmp ne i16 %454, 272
  %467 = select i1 %465, i1 %466, i1 false
  br i1 %467, label %468, label %473

468:                                              ; preds = %446
  store i8 -128, ptr %443, align 1
  %469 = load i32, ptr %432, align 8
  %470 = trunc i32 %469 to i8
  %471 = shl i8 %470, 2
  %472 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %439, i32 0, i32 %440, i32 1, i32 91
  store i8 %471, ptr %472, align 1
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %0, ptr noundef %441, i32 noundef 91) #8
  br label %473

473:                                              ; preds = %468, %446, %423
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %0, ptr noundef %441, i32 noundef 69) #8
  %474 = load i32, ptr %28, align 8
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %481

476:                                              ; preds = %473
  %477 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %359, i32 0, i32 %358, i32 1, i32 75
  %478 = load i8, ptr %477, align 1
  %479 = or i8 %478, -128
  %480 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 1, i32 75
  store i8 %479, ptr %480, align 1
  br label %481

481:                                              ; preds = %476, %473
  %482 = load ptr, ptr %353, align 4
  %483 = getelementptr inbounds %struct.nouveau_drm, ptr %482, i32 0, i32 19
  %484 = load ptr, ptr %483, align 4
  %485 = load ptr, ptr %484, align 8
  %486 = getelementptr %struct.nv04_display, ptr %485, i32 0, i32 1, i32 0, i32 0, i32 1, i32 82
  %487 = load i8, ptr %486, align 1
  %488 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 1, i32 82
  store i8 %487, ptr %488, align 1
  %489 = load i32, ptr %28, align 8
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %493

491:                                              ; preds = %481
  %492 = add i8 %487, 4
  store i8 %492, ptr %488, align 1
  br label %493

493:                                              ; preds = %491, %481
  %494 = zext i1 %404 to i8
  %495 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 1, i32 89
  store i8 %494, ptr %495, align 1
  %496 = getelementptr inbounds %struct.nouveau_drm, ptr %354, i32 0, i32 2, i32 3, i32 1, i32 4
  %497 = load i8, ptr %496, align 1
  %498 = icmp ugt i8 %497, 3
  br i1 %498, label %499, label %502

499:                                              ; preds = %493
  %500 = select i1 %404, i8 17, i8 1
  %501 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 1, i32 159
  store i8 %500, ptr %501, align 1
  br label %502

502:                                              ; preds = %499, %493
  %503 = load i16, ptr %62, align 2
  %504 = zext i16 %503 to i32
  %505 = add nsw i32 %504, -3
  %506 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 11
  store i32 %505, ptr %506, align 4
  %507 = load i16, ptr %62, align 2
  %508 = zext i16 %507 to i32
  %509 = add nsw i32 %508, -1
  %510 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 12
  store i32 %509, ptr %510, align 4
  %511 = load i8, ptr %496, align 1
  %512 = icmp eq i8 %511, 5
  br i1 %512, label %513, label %528

513:                                              ; preds = %502
  %514 = load ptr, ptr %353, align 4
  %515 = getelementptr inbounds %struct.nouveau_drm, ptr %514, i32 0, i32 2, i32 3, i32 0, i32 6
  %516 = load ptr, ptr %515, align 8
  %517 = icmp eq ptr %516, null
  br i1 %517, label %521, label %518, !prof !8

518:                                              ; preds = %513
  %519 = getelementptr i8, ptr %516, i32 6293584
  %520 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %519) #8, !srcloc !26
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  br label %524

521:                                              ; preds = %513
  %522 = getelementptr inbounds %struct.nouveau_drm, ptr %514, i32 0, i32 2, i32 3
  %523 = tail call i32 @nvif_object_rd(ptr noundef %522, i32 noundef 4, i64 noundef 6293584) #8
  br label %524

524:                                              ; preds = %521, %518
  %525 = phi i32 [ %520, %518 ], [ %523, %521 ]
  %526 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 13
  store i32 %525, ptr %526, align 4
  %527 = load i8, ptr %496, align 1
  br label %528

528:                                              ; preds = %524, %502
  %529 = phi i8 [ %527, %524 ], [ %511, %502 ]
  %530 = icmp ugt i8 %529, 3
  br i1 %530, label %531, label %546

531:                                              ; preds = %528
  %532 = load ptr, ptr %353, align 4
  %533 = getelementptr inbounds %struct.nouveau_drm, ptr %532, i32 0, i32 2, i32 3, i32 0, i32 6
  %534 = load ptr, ptr %533, align 8
  %535 = icmp eq ptr %534, null
  br i1 %535, label %539, label %536, !prof !8

536:                                              ; preds = %531
  %537 = getelementptr i8, ptr %534, i32 6293532
  %538 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %537) #8, !srcloc !26
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  br label %542

539:                                              ; preds = %531
  %540 = getelementptr inbounds %struct.nouveau_drm, ptr %532, i32 0, i32 2, i32 3
  %541 = tail call i32 @nvif_object_rd(ptr noundef %540, i32 noundef 4, i64 noundef 6293532) #8
  br label %542

542:                                              ; preds = %539, %536
  %543 = phi i32 [ %538, %536 ], [ %541, %539 ]
  %544 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 10
  store i32 %543, ptr %544, align 4
  %545 = load i8, ptr %496, align 1
  br label %546

546:                                              ; preds = %542, %528
  %547 = phi i8 [ %545, %542 ], [ %529, %528 ]
  %548 = icmp ugt i8 %547, 1
  %549 = select i1 %548, i32 2, i32 4
  %550 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 8
  store i32 %549, ptr %550, align 4
  %551 = load i8, ptr %496, align 1
  %552 = icmp eq i8 %551, 5
  br i1 %552, label %553, label %556

553:                                              ; preds = %546
  %554 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 1, i32 133
  store i8 -1, ptr %554, align 1
  %555 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 1, i32 134
  store i8 1, ptr %555, align 1
  br label %556

556:                                              ; preds = %553, %546
  %557 = getelementptr inbounds %struct.drm_framebuffer, ptr %362, i32 0, i32 4
  %558 = load ptr, ptr %557, align 8
  %559 = getelementptr inbounds %struct.drm_format_info, ptr %558, i32 0, i32 1
  %560 = load i8, ptr %559, align 4
  %561 = zext i8 %560 to i16
  %562 = add nuw nsw i16 %561, 1
  %563 = lshr i16 %562, 3
  %564 = trunc i16 %563 to i8
  %565 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 1, i32 40
  %566 = select i1 %401, i1 true, i1 %402
  %567 = select i1 %566, i1 true, i1 %403
  %568 = or i8 %564, -128
  %569 = select i1 %567, i8 %568, i8 %564
  store i8 %569, ptr %565, align 1
  %570 = load i8, ptr %496, align 1
  %571 = icmp ugt i8 %570, 1
  br i1 %571, label %572, label %574

572:                                              ; preds = %556
  %573 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 15
  store i32 33554432, ptr %573, align 4
  br label %574

574:                                              ; preds = %572, %556
  %575 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 17
  store i32 1048880, ptr %575, align 4
  %576 = load ptr, ptr %557, align 8
  %577 = getelementptr inbounds %struct.drm_format_info, ptr %576, i32 0, i32 1
  %578 = load i8, ptr %577, align 4
  %579 = icmp eq i8 %578, 16
  %580 = select i1 %579, i32 1052976, i32 1048880
  store i32 %580, ptr %575, align 4
  %581 = load i16, ptr %414, align 2
  %582 = icmp ugt i16 %581, 16
  br i1 %582, label %583, label %585

583:                                              ; preds = %574
  %584 = or i32 %580, 536870912
  store i32 %584, ptr %575, align 4
  br label %585

585:                                              ; preds = %583, %574
  %586 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 18
  store i32 0, ptr %586, align 4
  %587 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 20
  store i32 0, ptr %587, align 4
  %588 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 6
  %589 = load i32, ptr %588, align 4
  %590 = load ptr, ptr %0, align 8
  %591 = getelementptr inbounds %struct.drm_device, ptr %590, i32 0, i32 5
  %592 = load ptr, ptr %591, align 4
  %593 = getelementptr inbounds %struct.nouveau_drm, ptr %592, i32 0, i32 19
  %594 = load ptr, ptr %593, align 4
  %595 = load ptr, ptr %594, align 8
  %596 = load i32, ptr %28, align 8
  %597 = icmp slt i32 %589, 0
  %598 = add i32 %589, 64
  %599 = select i1 %597, i32 %598, i32 %589
  %600 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %595, i32 0, i32 %596, i32 19
  store i32 %599, ptr %600, align 4
  %601 = load ptr, ptr %0, align 8
  %602 = load i32, ptr %28, align 8
  %603 = getelementptr inbounds %struct.drm_device, ptr %601, i32 0, i32 5
  %604 = load ptr, ptr %603, align 4
  %605 = icmp eq i32 %602, 0
  %606 = select i1 %605, i32 6817332, i32 6825524
  %607 = getelementptr inbounds %struct.nouveau_drm, ptr %604, i32 0, i32 2, i32 3, i32 0, i32 6
  %608 = load ptr, ptr %607, align 8
  %609 = icmp eq ptr %608, null
  br i1 %609, label %612, label %610, !prof !8

610:                                              ; preds = %585
  %611 = getelementptr i8, ptr %608, i32 %606
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %611, i32 %599) #8, !srcloc !10
  br label %615

612:                                              ; preds = %585
  %613 = getelementptr inbounds %struct.nouveau_drm, ptr %604, i32 0, i32 2, i32 3
  %614 = zext i32 %606 to i64
  tail call void @nvif_object_wr(ptr noundef %613, i32 noundef 4, i64 noundef %614, i32 noundef %599) #8
  br label %615

615:                                              ; preds = %612, %610
  %616 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 37
  store i32 256, ptr %616, align 4
  %617 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 38
  store i32 0, ptr %617, align 4
  %618 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 39
  store i32 1048575, ptr %618, align 4
  %619 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %357, i32 0, i32 %358, i32 40
  store i32 1, ptr %619, align 4
  %620 = load i32, ptr %2, align 4
  %621 = load ptr, ptr %0, align 8
  %622 = getelementptr inbounds %struct.drm_device, ptr %621, i32 0, i32 5
  %623 = load ptr, ptr %622, align 4
  %624 = getelementptr inbounds %struct.nouveau_drm, ptr %623, i32 0, i32 2, i32 3, i32 0, i32 5
  %625 = load ptr, ptr %624, align 4
  %626 = getelementptr inbounds %struct.anon.197, ptr %625, i32 0, i32 1
  %627 = load ptr, ptr %626, align 8
  %628 = getelementptr inbounds %struct.nvkm_device, ptr %627, i32 0, i32 21
  %629 = load ptr, ptr %628, align 8
  %630 = getelementptr inbounds %struct.nvkm_device, ptr %627, i32 0, i32 43
  %631 = load ptr, ptr %630, align 8
  %632 = getelementptr inbounds %struct.nouveau_drm, ptr %623, i32 0, i32 19
  %633 = load ptr, ptr %632, align 4
  %634 = load ptr, ptr %633, align 8
  %635 = load i32, ptr %28, align 8
  %636 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %634, i32 0, i32 %635, i32 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %7, i8 0, i32 56, i1 false) #8, !annotation !21
  %637 = icmp eq i32 %635, 0
  %638 = select i1 %637, i32 128, i32 129
  %639 = call i32 @nvbios_pll_parse(ptr noundef %629, i32 noundef %638, ptr noundef nonnull %7) #8
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %725

641:                                              ; preds = %615
  %642 = getelementptr inbounds %struct.anon.112, ptr %636, i32 0, i32 1
  store i16 0, ptr %642, align 2
  %643 = getelementptr inbounds %struct.nouveau_drm, ptr %623, i32 0, i32 2, i32 3, i32 1, i32 2
  %644 = load i16, ptr %643, align 2
  %645 = icmp ult i16 %644, 65
  %646 = getelementptr inbounds %struct.nvbios_pll, ptr %7, i32 0, i32 7, i32 1
  %647 = load i32, ptr %646, align 4
  %648 = lshr i32 %647, 1
  %649 = icmp ult i32 %648, %620
  %650 = select i1 %645, i1 true, i1 %649
  br i1 %650, label %653, label %651

651:                                              ; preds = %641
  %652 = getelementptr inbounds %struct.nvbios_pll, ptr %7, i32 0, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %652, i8 0, i32 20, i1 false) #8
  br label %653

653:                                              ; preds = %651, %641
  %654 = getelementptr inbounds %struct.nvkm_clk, ptr %631, i32 0, i32 21
  %655 = load ptr, ptr %654, align 4
  %656 = call i32 %655(ptr noundef %631, ptr noundef nonnull %7, i32 noundef %620, ptr noundef %636) #8
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %725, label %658

658:                                              ; preds = %653
  %659 = getelementptr inbounds %struct.nv04_mode_state, ptr %634, i32 0, i32 1
  %660 = load i32, ptr %659, align 4
  %661 = and i32 %660, 806291968
  store i32 %661, ptr %659, align 4
  %662 = getelementptr inbounds %struct.nouveau_drm, ptr %623, i32 0, i32 2, i32 3, i32 1, i32 4
  %663 = load i8, ptr %662, align 1
  %664 = icmp eq i8 %663, 5
  br i1 %664, label %665, label %667

665:                                              ; preds = %658
  %666 = or i32 %661, 4
  store i32 %666, ptr %659, align 4
  br label %667

667:                                              ; preds = %665, %658
  %668 = phi i32 [ %666, %665 ], [ %661, %658 ]
  %669 = load i16, ptr %643, align 2
  %670 = icmp ult i16 %669, 65
  br i1 %670, label %671, label %673

671:                                              ; preds = %667
  %672 = or i32 %668, 1280
  store i32 %672, ptr %659, align 4
  br label %673

673:                                              ; preds = %671, %667
  %674 = phi i32 [ %672, %671 ], [ %668, %667 ]
  %675 = load i32, ptr %28, align 8
  %676 = icmp eq i32 %675, 0
  %677 = select i1 %676, i32 268435968, i32 536872960
  %678 = or i32 %677, %674
  store i32 %678, ptr %659, align 4
  %679 = load i16, ptr %642, align 2
  %680 = icmp eq i16 %679, 0
  %681 = lshr i16 %679, 8
  %682 = zext i16 %681 to i32
  %683 = load i32, ptr @__drm_debug, align 4
  %684 = and i32 %683, 2
  %685 = icmp eq i32 %684, 0
  br i1 %680, label %704, label %686

686:                                              ; preds = %673
  br i1 %685, label %720, label %687

687:                                              ; preds = %686
  %688 = getelementptr inbounds %struct.nouveau_drm, ptr %623, i32 0, i32 2, i32 1
  %689 = load ptr, ptr %688, align 8
  %690 = getelementptr inbounds %struct.nouveau_drm, ptr %689, i32 0, i32 3
  %691 = load ptr, ptr %690, align 8
  %692 = getelementptr inbounds %struct.drm_device, ptr %691, i32 0, i32 2
  %693 = load ptr, ptr %692, align 4
  %694 = getelementptr inbounds %struct.nouveau_drm, ptr %623, i32 0, i32 2, i32 12
  %695 = getelementptr inbounds %struct.anon.111, ptr %636, i32 0, i32 1
  %696 = load i8, ptr %695, align 1
  %697 = zext i8 %696 to i32
  %698 = load i8, ptr %636, align 4
  %699 = zext i8 %698 to i32
  %700 = and i16 %679, 255
  %701 = zext i16 %700 to i32
  %702 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %634, i32 0, i32 %635, i32 16, i32 1
  %703 = load i32, ptr %702, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %693, ptr noundef nonnull @.str.6, ptr noundef %694, i32 noundef %697, i32 noundef %682, i32 noundef %699, i32 noundef %701, i32 noundef %703) #9
  br label %720

704:                                              ; preds = %673
  br i1 %685, label %720, label %705

705:                                              ; preds = %704
  %706 = getelementptr inbounds %struct.nouveau_drm, ptr %623, i32 0, i32 2, i32 1
  %707 = load ptr, ptr %706, align 8
  %708 = getelementptr inbounds %struct.nouveau_drm, ptr %707, i32 0, i32 3
  %709 = load ptr, ptr %708, align 8
  %710 = getelementptr inbounds %struct.drm_device, ptr %709, i32 0, i32 2
  %711 = load ptr, ptr %710, align 4
  %712 = getelementptr inbounds %struct.nouveau_drm, ptr %623, i32 0, i32 2, i32 12
  %713 = getelementptr inbounds %struct.anon.111, ptr %636, i32 0, i32 1
  %714 = load i8, ptr %713, align 1
  %715 = zext i8 %714 to i32
  %716 = load i8, ptr %636, align 4
  %717 = zext i8 %716 to i32
  %718 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %634, i32 0, i32 %635, i32 16, i32 1
  %719 = load i32, ptr %718, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %711, ptr noundef nonnull @.str.7, ptr noundef %712, i32 noundef %715, i32 noundef %717, i32 noundef %719) #9
  br label %720

720:                                              ; preds = %705, %704, %687, %686
  %721 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 11, i32 2
  %722 = load ptr, ptr %721, align 4
  %723 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 11, i32 1
  %724 = load i32, ptr %723, align 4
  call void %722(ptr noundef %0, i32 noundef %724) #8
  br label %725

725:                                              ; preds = %720, %653, %615
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #8
  br label %726

726:                                              ; preds = %725, %24
  %727 = phi i32 [ 0, %725 ], [ %25, %24 ]
  ret i32 %727
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_crtc_mode_set_base(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = tail call fastcc i32 @nv_crtc_swap_fbs(ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call fastcc void @nv04_crtc_do_mode_set_base(ptr noundef %0, ptr noundef %3, i32 noundef %1, i32 noundef %2, i1 noundef zeroext false)
  br label %8

8:                                                ; preds = %7, %4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_crtc_mode_set_base_atomic(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq i32 %4, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void @nouveau_fbcon_accel_save_disable(ptr noundef %10) #8
  br label %14

13:                                               ; preds = %5
  tail call void @nouveau_fbcon_accel_restore(ptr noundef %10) #8
  br label %14

14:                                               ; preds = %13, %12
  tail call fastcc void @nv04_crtc_do_mode_set_base(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv_crtc_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr %struct.nv04_display, ptr %7, i32 0, i32 4, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %11) #8
  %15 = load i32, ptr %8, align 8
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ %9, %1 ]
  %18 = getelementptr %struct.nv04_display, ptr %7, i32 0, i32 4, i32 %17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 4
  store ptr null, ptr %18, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @ttm_bo_put(ptr noundef nonnull %21) #8
  br label %24

24:                                               ; preds = %23, %20, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nouveau_display_scanoutpos(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @NVReadVgaSeq(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVWriteVgaSeq(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @NVBlankScreen(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_debug_printmodeline(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nv_crtc_swap_fbs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.drm_plane, ptr %9, i32 0, i32 12
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @nouveau_bo_pin(ptr noundef %13, i32 noundef 2, i1 noundef zeroext false) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr %struct.nv04_display, ptr %7, i32 0, i32 4, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %20) #8
  %24 = load i32, ptr %17, align 8
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i32 [ %24, %22 ], [ %18, %16 ]
  %27 = getelementptr %struct.nv04_display, ptr %7, i32 0, i32 4, i32 %26
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 4
  %31 = icmp eq ptr %13, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.ttm_buffer_object, ptr %13, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #8, !srcloc !15
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #8, !srcloc !16
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !prof !8

37:                                               ; preds = %32
  %38 = add i32 %35, 1
  %39 = or i32 %38, %35
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %43, label %41, !prof !17

41:                                               ; preds = %37, %32
  %42 = phi i32 [ 2, %32 ], [ 1, %37 ]
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef %42) #8
  br label %43

43:                                               ; preds = %41, %37, %29
  store ptr %13, ptr %27, align 4
  %44 = icmp eq ptr %30, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  tail call void @ttm_bo_put(ptr noundef nonnull %30) #8
  br label %46

46:                                               ; preds = %45, %43, %25, %1
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @crtc_wr_cio_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.nv04_crtc_reg, ptr %1, i32 0, i32 1, i32 %2
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = shl i32 %6, 13
  %16 = add i32 %15, 6296532
  br i1 %14, label %20, label %17, !prof !8

17:                                               ; preds = %3
  %18 = trunc i32 %2 to i8
  %19 = getelementptr i8, ptr %13, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %18) #8, !srcloc !12
  br label %23

20:                                               ; preds = %3
  %21 = sext i32 %16 to i64
  %22 = and i32 %2, 255
  tail call void @nvif_object_wr(ptr noundef %11, i32 noundef 1, i64 noundef %21, i32 noundef %22) #8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load ptr, ptr %12, align 8
  %25 = icmp eq ptr %24, null
  %26 = add i32 %15, 6296533
  br i1 %25, label %29, label %27, !prof !8

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %24, i32 %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 %8) #8, !srcloc !12
  br label %32

29:                                               ; preds = %23
  %30 = sext i32 %26 to i64
  %31 = zext i8 %8 to i32
  tail call void @nvif_object_wr(ptr noundef %11, i32 noundef 1, i64 noundef %30, i32 noundef %31) #8
  br label %32

32:                                               ; preds = %29, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv04_crtc_do_mode_set_base(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !21
  %17 = load i32, ptr @__drm_debug, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.8, ptr noundef %27, i32 noundef %15) #9
  br label %28

28:                                               ; preds = %20, %5
  br i1 %4, label %47, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.drm_plane, ptr %31, i32 0, i32 12
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i32, ptr @__drm_debug, align 4
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %191, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.nouveau_drm, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.drm_device, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.9, ptr noundef %46) #9
  br label %191

47:                                               ; preds = %29, %28
  %48 = phi ptr [ %1, %28 ], [ %33, %29 ]
  %49 = getelementptr inbounds %struct.drm_framebuffer, ptr %48, i32 0, i32 15
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nouveau_bo, ptr %50, i32 0, i32 13
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 10, i32 2
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 12
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.drm_framebuffer, ptr %48, i32 0, i32 4
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.drm_format_info, ptr %58, i32 0, i32 1
  %60 = load i8, ptr %59, align 4
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %56, %61
  br i1 %62, label %106, label %63

63:                                               ; preds = %47
  store i32 %61, ptr %55, align 4
  %64 = load ptr, ptr %0, align 8
  %65 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nouveau_drm, ptr %66, i32 0, i32 19
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %68, align 8
  %70 = load i32, ptr %14, align 8
  %71 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %69, i32 0, i32 %70, i32 6
  %72 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 18
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 17
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i16, ptr %73, i32 %75
  %77 = getelementptr i16, ptr %76, i32 %75
  br label %78

78:                                               ; preds = %78, %63
  %79 = phi i32 [ 0, %63 ], [ %98, %78 ]
  %80 = phi ptr [ %77, %63 ], [ %93, %78 ]
  %81 = phi ptr [ %76, %63 ], [ %88, %78 ]
  %82 = phi ptr [ %73, %63 ], [ %83, %78 ]
  %83 = getelementptr i16, ptr %82, i32 1
  %84 = load i16, ptr %82, align 2
  %85 = lshr i16 %84, 8
  %86 = trunc i16 %85 to i8
  %87 = getelementptr %struct.rgb, ptr %71, i32 %79
  store i8 %86, ptr %87, align 1
  %88 = getelementptr i16, ptr %81, i32 1
  %89 = load i16, ptr %81, align 2
  %90 = lshr i16 %89, 8
  %91 = trunc i16 %90 to i8
  %92 = getelementptr %struct.rgb, ptr %71, i32 %79, i32 1
  store i8 %91, ptr %92, align 1
  %93 = getelementptr i16, ptr %80, i32 1
  %94 = load i16, ptr %80, align 2
  %95 = lshr i16 %94, 8
  %96 = trunc i16 %95 to i8
  %97 = getelementptr %struct.rgb, ptr %71, i32 %79, i32 2
  store i8 %96, ptr %97, align 1
  %98 = add nuw nsw i32 %79, 1
  %99 = icmp eq i32 %98, 256
  br i1 %99, label %100, label %78

100:                                              ; preds = %78
  %101 = load i32, ptr %14, align 8
  %102 = load ptr, ptr %65, align 4
  %103 = getelementptr inbounds %struct.nouveau_drm, ptr %102, i32 0, i32 19
  %104 = load ptr, ptr %103, align 4
  %105 = load ptr, ptr %104, align 8
  tail call void @nouveau_hw_load_state_palette(ptr noundef %64, i32 noundef %101, ptr noundef %105) #8
  br label %106

106:                                              ; preds = %100, %47
  %107 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %15, i32 1, i32 40
  %108 = load i8, ptr %107, align 1
  %109 = and i8 %108, -4
  store i8 %109, ptr %107, align 1
  %110 = load ptr, ptr %57, align 8
  %111 = getelementptr inbounds %struct.drm_format_info, ptr %110, i32 0, i32 1
  %112 = load i8, ptr %111, align 4
  %113 = zext i8 %112 to i16
  %114 = add nuw nsw i16 %113, 1
  %115 = lshr i16 %114, 3
  %116 = trunc i16 %115 to i8
  %117 = or i8 %109, %116
  store i8 %117, ptr %107, align 1
  %118 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %15, i32 17
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, -4097
  store i32 %120, ptr %118, align 4
  %121 = load ptr, ptr %57, align 8
  %122 = getelementptr inbounds %struct.drm_format_info, ptr %121, i32 0, i32 1
  %123 = load i8, ptr %122, align 4
  %124 = icmp eq i8 %123, 16
  br i1 %124, label %125, label %127

125:                                              ; preds = %106
  %126 = or i32 %119, 4096
  store i32 %126, ptr %118, align 4
  br label %127

127:                                              ; preds = %125, %106
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %0, ptr noundef %16, i32 noundef 40)
  %128 = load i32, ptr %14, align 8
  %129 = load i32, ptr %118, align 4
  %130 = load ptr, ptr %9, align 4
  %131 = icmp eq i32 %128, 0
  %132 = select i1 %131, i32 6817280, i32 6825472
  %133 = getelementptr inbounds %struct.nouveau_drm, ptr %130, i32 0, i32 2, i32 3, i32 0, i32 6
  %134 = load ptr, ptr %133, align 8
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136, !prof !8

136:                                              ; preds = %127
  %137 = getelementptr i8, ptr %134, i32 %132
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %129) #8, !srcloc !10
  br label %141

138:                                              ; preds = %127
  %139 = getelementptr inbounds %struct.nouveau_drm, ptr %130, i32 0, i32 2, i32 3
  %140 = zext i32 %132 to i64
  tail call void @nvif_object_wr(ptr noundef %139, i32 noundef 4, i64 noundef %140, i32 noundef %129) #8
  br label %141

141:                                              ; preds = %138, %136
  %142 = getelementptr inbounds %struct.drm_framebuffer, ptr %48, i32 0, i32 6
  %143 = load i32, ptr %142, align 8
  %144 = lshr i32 %143, 3
  %145 = trunc i32 %144 to i8
  %146 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %15, i32 1, i32 19
  store i8 %145, ptr %146, align 1
  %147 = load i32, ptr %142, align 8
  %148 = lshr i32 %147, 6
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, -32
  %151 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %15, i32 1, i32 25
  store i8 %150, ptr %151, align 1
  %152 = load i32, ptr %142, align 8
  %153 = lshr i32 %152, 8
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 64
  %156 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %15, i32 1, i32 66
  store i8 %155, ptr %156, align 1
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %0, ptr noundef %16, i32 noundef 25)
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %0, ptr noundef %16, i32 noundef 19)
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %0, ptr noundef %16, i32 noundef 66)
  %157 = load i32, ptr %54, align 4
  %158 = and i32 %157, -4
  %159 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %15, i32 7
  store i32 %158, ptr %159, align 4
  %160 = load i32, ptr %142, align 8
  %161 = mul i32 %160, %3
  %162 = load ptr, ptr %57, align 8
  %163 = getelementptr inbounds %struct.drm_format_info, ptr %162, i32 0, i32 3
  %164 = load i8, ptr %163, align 2
  %165 = zext i8 %164 to i32
  %166 = mul i32 %165, %2
  %167 = add i32 %161, %158
  %168 = add i32 %167, %166
  store i32 %168, ptr %159, align 4
  %169 = load i32, ptr %14, align 8
  tail call fastcc void @nv_set_crtc_base(ptr noundef %8, i32 noundef %169, i32 noundef %168)
  %170 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 12
  %171 = load i32, ptr %170, align 8
  %172 = load ptr, ptr %57, align 8
  %173 = getelementptr inbounds %struct.drm_format_info, ptr %172, i32 0, i32 3
  %174 = load i8, ptr %173, align 2
  %175 = zext i8 %174 to i32
  %176 = shl nuw nsw i32 %175, 3
  call void @nouveau_calc_arb(ptr noundef %8, i32 noundef %171, i32 noundef %176, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  %177 = load i32, ptr %6, align 4
  %178 = trunc i32 %177 to i8
  %179 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %15, i32 1, i32 27
  store i8 %178, ptr %179, align 1
  %180 = load i32, ptr %7, align 4
  %181 = trunc i32 %180 to i8
  %182 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %15, i32 1, i32 32
  store i8 %181, ptr %182, align 1
  call fastcc void @crtc_wr_cio_state(ptr noundef %0, ptr noundef %16, i32 noundef 27)
  call fastcc void @crtc_wr_cio_state(ptr noundef %0, ptr noundef %16, i32 noundef 32)
  %183 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3, i32 1, i32 4
  %184 = load i8, ptr %183, align 1
  %185 = icmp ugt i8 %184, 2
  br i1 %185, label %186, label %191

186:                                              ; preds = %141
  %187 = load i32, ptr %7, align 4
  %188 = lshr i32 %187, 8
  %189 = trunc i32 %188 to i8
  %190 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %13, i32 0, i32 %15, i32 1, i32 71
  store i8 %189, ptr %190, align 1
  call fastcc void @crtc_wr_cio_state(ptr noundef %0, ptr noundef %16, i32 noundef 71)
  br label %191

191:                                              ; preds = %186, %141, %39, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_calc_arb(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fbcon_accel_save_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fbcon_accel_restore(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{i64 2150907258}
!10 = !{i64 3366165}
!11 = !{i64 2150906388}
!12 = !{i64 3365968}
!13 = !{i64 3366363}
!14 = !{i64 2150905090}
!15 = !{i64 696139, i64 2148186110, i64 2148186136, i64 2148186183, i64 2148186205, i64 2148186233, i64 2148186253}
!16 = !{i64 2148198983, i64 2148199015, i64 2148199044, i64 2148199078, i64 2148199109, i64 2148199132}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2148299205}
!19 = !{i64 2148201340, i64 2148201372, i64 2148201401, i64 2148201435, i64 2148201466, i64 2148201489}
!20 = !{i64 2149319405}
!21 = !{!"auto-init"}
!22 = !{i64 2148864743}
!23 = !{i64 2148860567}
!24 = !{i64 2148860642, i64 2148860669, i64 2148860716, i64 2148860738, i64 2148860766, i64 2148860786}
!25 = !{i64 2148887746}
!26 = !{i64 3366583}
!27 = !{i64 2150906036}
