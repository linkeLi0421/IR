; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_chan.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_chan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.anon.178 = type { %struct.nv_device_info_v1, %struct.anon.179 }
%struct.nv_device_info_v1 = type { i8, i8, [6 x i8], [0 x %struct.nv_device_info_v1_data] }
%struct.nv_device_info_v1_data = type { i64, i64 }
%struct.anon.179 = type { %struct.nv_device_info_v1_data }
%struct.nouveau_channel = type { %struct.anon.74, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.102, i8, ptr, %struct.anon.103, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.74 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.102 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.103 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.75 }
%struct.anon.75 = type { ptr, i64 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.84, %struct.anon.85, %struct.anon.87, ptr, %struct.anon.88, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.89, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.101 }
%struct.nvif_parent = type { ptr }
%struct.anon.84 = type { ptr, i32, i32, i8 }
%struct.anon.85 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.86] }
%struct.anon.86 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.87 = type { i64, i64 }
%struct.anon.88 = type { i32, i64 }
%struct.anon.89 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.99 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.90, i8 }
%union.anon.90 = type { %struct.anon.94 }
%struct.anon.94 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.96 = type { i32 }
%struct.anon.97 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.98 = type { i16, i16 }
%struct.anon.99 = type { i16, i16, i16, %struct.anon.100, i16 }
%struct.anon.100 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.101 = type { ptr, %struct.mutex, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.80, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.83, ptr, i32, ptr, i8, i32 }
%struct.anon.80 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.83 = type { i32, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_root = type { ptr }
%struct.nouveau_fence_priv = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }
%struct.nv03_channel_dma_v0 = type { i8, i8, [2 x i8], i32, i64 }
%union.anon.180 = type { %struct.volta_channel_gpfifo_a_v0 }
%struct.volta_channel_gpfifo_a_v0 = type { i8, i8, i16, i32, i64, i64, i64, i64, i32 }
%struct.nv50_channel_gpfifo_v0 = type { i8, i8, [2 x i8], i32, i64, i64, i64 }
%struct.kepler_channel_gpfifo_a_v0 = type { i8, i8, i16, i32, i64, i64, i64, i64 }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.nouveau_vma = type { ptr, i32, %struct.list_head, i64, ptr, ptr }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.anon.181 = type { %struct.nvkm_object, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@__UNIQUE_ID_vram_pushbuf277 = internal constant [50 x i8] c"parm=vram_pushbuf:Create DMA push buffers in VRAM\00", section ".modinfo", align 1
@__param_str_vram_pushbuf = internal constant [13 x i8] c"vram_pushbuf\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nouveau_vram_pushbuf = dso_local global i32 0, align 4
@__param_vram_pushbuf = internal constant %struct.kernel_param { ptr @__param_str_vram_pushbuf, ptr @__this_module, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.64 { ptr @nouveau_vram_pushbuf } }, section "__param", align 4
@__UNIQUE_ID_vram_pushbuftype278 = internal constant [26 x i8] c"parmtype=vram_pushbuf:int\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [36 x i8] c"%s: failed to idle channel %d [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: channel failed to initialise, %d\0A\00", align 1
@__const.nouveau_channels_init.args = private unnamed_addr constant %struct.anon.178 { %struct.nv_device_info_v1 { i8 1, i8 1, [6 x i8] zeroinitializer, [0 x %struct.nv_device_info_v1_data] zeroinitializer }, %struct.anon.179 { %struct.nv_device_info_v1_data { i64 4294967297, i64 0 } } }, align 8
@nouveau_channel_ind.oclasses = internal unnamed_addr constant [11 x i16] [i16 -14481, i16 -15249, i16 -15505, i16 -16273, i16 -20369, i16 -24209, i16 -24465, i16 -28561, i16 -32145, i16 20591, i16 0], align 2
@.str.2 = private unnamed_addr constant [14 x i8] c"abi16ChanUser\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"chanPush\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"abi16PushCtxDma\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"abi16ChanKilled\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"%s: Failed to request channel kill notification: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"abi16ChanVramCtxDma\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"abi16ChanGartCtxDma\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"abi16NvswFence\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"%s: channel %d killed!\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_vram_pushbuf277, ptr @__UNIQUE_ID_vram_pushbuftype278, ptr @__param_vram_pushbuf], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_channel_idle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %36, label %4, !prof !8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8, !prof !8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 19
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %36, !prof !9

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 17, i32 1
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4
  %15 = call i32 @nouveau_fence_new(ptr noundef nonnull %0, i1 noundef zeroext false, ptr noundef nonnull %2) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load ptr, ptr %2, align 4
  %19 = call i32 @nouveau_fence_wait(ptr noundef %18, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @nouveau_fence_unref(ptr noundef nonnull %2) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %36

22:                                               ; preds = %17, %12
  %23 = phi i32 [ %19, %17 ], [ %15, %12 ]
  %24 = getelementptr inbounds %struct.nouveau_cli, ptr %14, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nouveau_cli, ptr %14, i32 0, i32 12
  %31 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvif_object, ptr %14, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_client, ptr %34, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef %30, i32 noundef %32, ptr noundef %35) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %36

36:                                               ; preds = %22, %21, %8, %4, %1
  %37 = phi i32 [ %23, %22 ], [ 0, %21 ], [ 0, %1 ], [ 0, %4 ], [ 0, %8 ]
  ret i32 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_new(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_wait(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_channel_del(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nouveau_channel, ptr %2, i32 0, i32 17
  %6 = getelementptr inbounds %struct.nouveau_channel, ptr %2, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.nouveau_channel, ptr %2, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 10
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef nonnull %2) #7
  br label %16

16:                                               ; preds = %9, %4
  %17 = getelementptr inbounds %struct.nouveau_channel, ptr %2, i32 0, i32 9
  tail call void @nvif_object_dtor(ptr noundef %17) #7
  %18 = getelementptr inbounds %struct.nouveau_channel, ptr %2, i32 0, i32 8
  tail call void @nvif_object_dtor(ptr noundef %18) #7
  %19 = getelementptr inbounds %struct.nouveau_channel, ptr %2, i32 0, i32 7
  tail call void @nvif_object_dtor(ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.nouveau_channel, ptr %2, i32 0, i32 18
  %21 = tail call i32 @nvif_notify_dtor(ptr noundef %20) #7
  tail call void @nvif_object_dtor(ptr noundef %5) #7
  %22 = getelementptr inbounds %struct.nouveau_channel, ptr %2, i32 0, i32 10
  %23 = getelementptr inbounds %struct.nouveau_channel, ptr %2, i32 0, i32 10, i32 2
  tail call void @nvif_object_dtor(ptr noundef %23) #7
  %24 = getelementptr inbounds %struct.nouveau_channel, ptr %2, i32 0, i32 10, i32 1
  tail call void @nouveau_vma_del(ptr noundef %24) #7
  %25 = load ptr, ptr %22, align 8
  tail call void @nouveau_bo_unmap(ptr noundef %25) #7
  %26 = load ptr, ptr %22, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.ttm_buffer_object, ptr %26, i32 0, i32 13
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %26) #7
  br label %34

34:                                               ; preds = %32, %28, %16
  %35 = icmp eq ptr %22, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr %22, align 4
  store ptr null, ptr %22, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @ttm_bo_put(ptr noundef nonnull %37) #7
  br label %40

40:                                               ; preds = %39, %36, %34
  tail call void @kfree(ptr noundef nonnull %2) #7
  br label %41

41:                                               ; preds = %40, %1
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vma_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_channel_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.nv_dma_v0, align 8
  %8 = alloca %struct.nv03_channel_dma_v0, align 8
  %9 = alloca ptr, align 4
  %10 = alloca %union.anon.180, align 8
  %11 = alloca ptr, align 4
  %12 = getelementptr inbounds %struct.nvif_object, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = zext i32 %2 to i64
  %15 = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i32 48, i1 false) #7, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  store ptr null, ptr %11, align 4, !annotation !10
  %16 = call fastcc i32 @nouveau_channel_prep(ptr noundef %0, ptr noundef %1, i32 noundef 73728, ptr noundef nonnull %11) #7
  %17 = load ptr, ptr %11, align 4
  store ptr %17, ptr %5, align 4
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %105

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.nouveau_channel, ptr %17, i32 0, i32 17
  %21 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %10, i32 0, i32 3
  %22 = getelementptr inbounds %struct.nouveau_channel, ptr %17, i32 0, i32 10, i32 3
  %23 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %10, i32 0, i32 4
  %24 = getelementptr inbounds %struct.nouveau_channel, ptr %17, i32 0, i32 10, i32 2
  %25 = ptrtoint ptr %24 to i32
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %10, i32 0, i32 5
  %28 = getelementptr inbounds %struct.nouveau_channel, ptr %17, i32 0, i32 3
  %29 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %10, i32 0, i32 6
  %30 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %10, i32 0, i32 1
  br label %31

31:                                               ; preds = %99, %19
  %32 = phi i16 [ %101, %99 ], [ -14481, %19 ]
  %33 = phi ptr [ %100, %99 ], [ @nouveau_channel_ind.oclasses, %19 ]
  %34 = icmp ugt i16 %32, -15506
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  store i8 0, ptr %10, align 8
  store i32 8192, ptr %21, align 4
  %36 = load i64, ptr %22, align 8
  %37 = add i64 %36, 65536
  store i64 %37, ptr %23, align 8
  store i64 %14, ptr %27, align 8
  %38 = load ptr, ptr %28, align 8
  %39 = getelementptr inbounds %struct.nouveau_vmm, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  %41 = zext i32 %40 to i64
  store i64 %41, ptr %29, align 8
  store i8 %15, ptr %30, align 1
  br label %65

42:                                               ; preds = %31
  %43 = icmp ugt i16 %32, -24466
  br i1 %43, label %44, label %51

44:                                               ; preds = %42
  store i8 0, ptr %10, align 8
  store i32 8192, ptr %21, align 4
  %45 = load i64, ptr %22, align 8
  %46 = add i64 %45, 65536
  store i64 %46, ptr %23, align 8
  store i64 %14, ptr %27, align 8
  %47 = load ptr, ptr %28, align 8
  %48 = getelementptr inbounds %struct.nouveau_vmm, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  %50 = zext i32 %49 to i64
  store i64 %50, ptr %29, align 8
  store i8 %15, ptr %30, align 1
  br label %65

51:                                               ; preds = %42
  %52 = icmp ugt i16 %32, -28562
  store i8 0, ptr %10, align 8
  store i32 8192, ptr %21, align 4
  %53 = load i64, ptr %22, align 8
  %54 = add i64 %53, 65536
  store i64 %54, ptr %23, align 8
  br i1 %52, label %55, label %60

55:                                               ; preds = %51
  %56 = load ptr, ptr %28, align 8
  %57 = getelementptr inbounds %struct.nouveau_vmm, ptr %56, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  %59 = zext i32 %58 to i64
  store i64 %59, ptr %27, align 8
  br label %65

60:                                               ; preds = %51
  store i64 %26, ptr %27, align 8
  %61 = load ptr, ptr %28, align 8
  %62 = getelementptr inbounds %struct.nouveau_vmm, ptr %61, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  %64 = zext i32 %63 to i64
  store i64 %64, ptr %29, align 8
  br label %65

65:                                               ; preds = %60, %55, %44, %35
  %66 = phi i32 [ 48, %35 ], [ 40, %44 ], [ 24, %55 ], [ 32, %60 ]
  %67 = zext i16 %32 to i32
  %68 = call i32 @nvif_object_ctor(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef %67, ptr noundef nonnull %10, i32 noundef %66, ptr noundef %20) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.nouveau_channel, ptr %17, i32 0, i32 17, i32 4
  %72 = load i32, ptr %71, align 8
  %73 = icmp sgt i32 %72, 50030
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %10, i32 0, i32 2
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i32
  %78 = getelementptr inbounds %struct.nouveau_channel, ptr %17, i32 0, i32 4
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %10, i32 0, i32 7
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr inbounds %struct.nouveau_channel, ptr %17, i32 0, i32 5
  store i64 %80, ptr %81, align 8
  %82 = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %10, i32 0, i32 8
  %83 = load i32, ptr %82, align 8
  %84 = getelementptr inbounds %struct.nouveau_channel, ptr %17, i32 0, i32 6
  store i32 %83, ptr %84, align 8
  br label %104

85:                                               ; preds = %70
  %86 = icmp sgt i32 %72, 41070
  br i1 %86, label %87, label %95

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %10, i32 0, i32 2
  %89 = load i16, ptr %88, align 2
  %90 = zext i16 %89 to i32
  %91 = getelementptr inbounds %struct.nouveau_channel, ptr %17, i32 0, i32 4
  store i32 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %10, i32 0, i32 7
  %93 = load i64, ptr %92, align 8
  %94 = getelementptr inbounds %struct.nouveau_channel, ptr %17, i32 0, i32 5
  store i64 %93, ptr %94, align 8
  br label %104

95:                                               ; preds = %85
  %96 = load i8, ptr %30, align 1
  %97 = zext i8 %96 to i32
  %98 = getelementptr inbounds %struct.nouveau_channel, ptr %17, i32 0, i32 4
  store i32 %97, ptr %98, align 4
  br label %104

99:                                               ; preds = %65
  %100 = getelementptr i16, ptr %33, i32 1
  %101 = load i16, ptr %100, align 2
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %31

103:                                              ; preds = %99
  call void @nouveau_channel_del(ptr noundef %5) #7
  br label %105

104:                                              ; preds = %95, %87, %74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #7
  br label %138

105:                                              ; preds = %103, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  store i64 0, ptr %8, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store ptr null, ptr %9, align 4, !annotation !10
  %106 = call fastcc i32 @nouveau_channel_prep(ptr noundef %0, ptr noundef %1, i32 noundef 65536, ptr noundef nonnull %9) #7
  %107 = load ptr, ptr %9, align 4
  store ptr %107, ptr %5, align 4
  %108 = icmp eq i32 %106, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %105
  store i8 0, ptr %8, align 8
  %110 = getelementptr inbounds %struct.nouveau_channel, ptr %107, i32 0, i32 10, i32 2
  %111 = ptrtoint ptr %110 to i32
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %8, i32 0, i32 4
  store i64 %112, ptr %113, align 8
  %114 = getelementptr inbounds %struct.nouveau_channel, ptr %107, i32 0, i32 10, i32 3
  %115 = load i64, ptr %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %8, i32 0, i32 3
  store i32 %116, ptr %117, align 4
  %118 = getelementptr inbounds %struct.nouveau_channel, ptr %107, i32 0, i32 17
  %119 = call i32 @nvif_object_ctor(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 16494, ptr noundef nonnull %8, i32 noundef 16, ptr noundef %118) #7
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %109
  %122 = call i32 @nvif_object_ctor(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 5998, ptr noundef nonnull %8, i32 noundef 16, ptr noundef %118) #7
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %121
  %125 = call i32 @nvif_object_ctor(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 110, ptr noundef nonnull %8, i32 noundef 16, ptr noundef %118) #7
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %124
  %128 = call i32 @nvif_object_ctor(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 107, ptr noundef nonnull %8, i32 noundef 16, ptr noundef %118) #7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  call void @nouveau_channel_del(ptr noundef %5) #7
  br label %131

131:                                              ; preds = %130, %105
  %132 = phi i32 [ %106, %105 ], [ %128, %130 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %323

133:                                              ; preds = %127, %124, %121, %109
  %134 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %8, i32 0, i32 1
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = getelementptr inbounds %struct.nouveau_channel, ptr %107, i32 0, i32 4
  store i32 %136, ptr %137, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %138

138:                                              ; preds = %133, %104
  %139 = load ptr, ptr %5, align 4
  %140 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 1
  %141 = load ptr, ptr %140, align 8
  %142 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false) #7
  %144 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 17
  %145 = call i32 @nvif_object_map(ptr noundef %144, ptr noundef null, i32 noundef 0) #7
  %146 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 17, i32 4
  %147 = load i32, ptr %146, align 8
  %148 = add i32 %147, -36975
  %149 = icmp ult i32 %148, 14080
  br i1 %149, label %150, label %166

150:                                              ; preds = %138
  %151 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 18
  %152 = call i32 @nvif_notify_ctor(ptr noundef %144, ptr noundef nonnull @.str.5, ptr noundef nonnull @nouveau_channel_killed, i1 noundef zeroext true, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %151) #7
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = call i32 @nvif_notify_get(ptr noundef %151) #7
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %154, %150
  %158 = phi i32 [ %155, %154 ], [ %152, %150 ]
  %159 = getelementptr inbounds %struct.nouveau_drm, ptr %143, i32 0, i32 2, i32 1
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %struct.nouveau_drm, ptr %160, i32 0, i32 3
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %struct.drm_device, ptr %162, i32 0, i32 2
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.nouveau_drm, ptr %143, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.6, ptr noundef %165, i32 noundef %158) #8
  br label %304

166:                                              ; preds = %154, %138
  %167 = getelementptr inbounds %struct.nvif_device, ptr %141, i32 0, i32 1, i32 4
  %168 = load i8, ptr %167, align 1
  %169 = icmp ult i8 %168, 7
  br i1 %169, label %170, label %225

170:                                              ; preds = %166
  %171 = icmp eq i8 %168, 6
  br i1 %171, label %172, label %176

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 3
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr inbounds %struct.nouveau_vmm, ptr %174, i32 0, i32 1, i32 2
  br label %178

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.nvif_device, ptr %141, i32 0, i32 1, i32 7
  br label %178

178:                                              ; preds = %176, %172
  %179 = phi i8 [ 0, %172 ], [ 1, %176 ]
  %180 = phi i8 [ 0, %172 ], [ 3, %176 ]
  %181 = phi ptr [ %175, %172 ], [ %177, %176 ]
  %182 = load i64, ptr %181, align 8
  %183 = add i64 %182, -1
  %184 = getelementptr inbounds %struct.nv_dma_v0, ptr %7, i32 0, i32 1
  store i8 %179, ptr %184, align 1
  %185 = getelementptr inbounds %struct.nv_dma_v0, ptr %7, i32 0, i32 2
  store i8 %180, ptr %185, align 2
  %186 = getelementptr inbounds %struct.nv_dma_v0, ptr %7, i32 0, i32 4
  store i64 0, ptr %186, align 8
  %187 = getelementptr inbounds %struct.nv_dma_v0, ptr %7, i32 0, i32 5
  store i64 %183, ptr %187, align 8
  %188 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 7
  %189 = call i32 @nvif_object_ctor(ptr noundef %144, ptr noundef nonnull @.str.7, i32 noundef %2, i32 noundef 61, ptr noundef nonnull %7, i32 noundef 24, ptr noundef %188) #7
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %304

191:                                              ; preds = %178
  %192 = load i8, ptr %167, align 1
  %193 = icmp ugt i8 %192, 5
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  store i8 0, ptr %184, align 1
  store i8 0, ptr %185, align 2
  store i64 0, ptr %186, align 8
  %195 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 3
  %196 = load ptr, ptr %195, align 8
  %197 = getelementptr inbounds %struct.nouveau_vmm, ptr %196, i32 0, i32 1, i32 2
  %198 = load i64, ptr %197, align 8
  %199 = add i64 %198, -1
  br label %220

200:                                              ; preds = %191
  %201 = load ptr, ptr %142, align 4
  %202 = getelementptr inbounds %struct.nouveau_drm, ptr %201, i32 0, i32 7
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %214, label %205

205:                                              ; preds = %200
  store i8 4, ptr %184, align 1
  store i8 3, ptr %185, align 2
  %206 = getelementptr inbounds %struct.nouveau_drm, ptr %201, i32 0, i32 7, i32 1
  %207 = load i32, ptr %206, align 4
  %208 = zext i32 %207 to i64
  store i64 %208, ptr %186, align 8
  %209 = getelementptr inbounds %struct.nouveau_drm, ptr %201, i32 0, i32 7, i32 2
  %210 = load i32, ptr %209, align 4
  %211 = add i32 %207, -1
  %212 = add i32 %211, %210
  %213 = zext i32 %212 to i64
  br label %220

214:                                              ; preds = %200
  store i8 0, ptr %184, align 1
  store i8 3, ptr %185, align 2
  store i64 0, ptr %186, align 8
  %215 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 3
  %216 = load ptr, ptr %215, align 8
  %217 = getelementptr inbounds %struct.nouveau_vmm, ptr %216, i32 0, i32 1, i32 2
  %218 = load i64, ptr %217, align 8
  %219 = add i64 %218, -1
  br label %220

220:                                              ; preds = %214, %205, %194
  %221 = phi i64 [ %213, %205 ], [ %219, %214 ], [ %199, %194 ]
  store i64 %221, ptr %187, align 8
  %222 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 8
  %223 = call i32 @nvif_object_ctor(ptr noundef %144, ptr noundef nonnull @.str.8, i32 noundef %3, i32 noundef 61, ptr noundef nonnull %7, i32 noundef 24, ptr noundef %222) #7
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %304

225:                                              ; preds = %220, %166
  %226 = load i32, ptr %146, align 8
  %227 = trunc i32 %226 to i8
  switch i8 %227, label %232 [
    i8 107, label %228
    i8 110, label %228
  ]

228:                                              ; preds = %225, %225
  %229 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 16
  store i32 64, ptr %229, align 8
  %230 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 15
  store i32 68, ptr %230, align 4
  %231 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 13
  store i32 16382, ptr %231, align 8
  br label %241

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 16
  store i32 64, ptr %233, align 8
  %234 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 15
  store i32 68, ptr %234, align 4
  %235 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 14
  store i32 96, ptr %235, align 8
  %236 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 13
  %237 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 13, i32 4
  store i32 16384, ptr %237, align 8
  %238 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 13, i32 5
  store i32 1023, ptr %238, align 4
  %239 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 13, i32 7
  store i32 0, ptr %239, align 4
  %240 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 13, i32 6
  store i32 1023, ptr %240, align 8
  store i32 16384, ptr %236, align 8
  br label %241

241:                                              ; preds = %232, %228
  %242 = phi i32 [ 16384, %232 ], [ 16382, %228 ]
  %243 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 13, i32 3
  store i32 0, ptr %243, align 4
  %244 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 13, i32 2
  store i32 0, ptr %244, align 8
  %245 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 13, i32 1
  store i32 %242, ptr %245, align 4
  %246 = getelementptr inbounds %struct.anon.74, ptr %139, i32 0, i32 1
  %247 = load ptr, ptr %246, align 8
  %248 = getelementptr inbounds %struct.nvif_push, ptr %247, i32 0, i32 4
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr i32, ptr %249, i32 32
  %251 = getelementptr inbounds %struct.nvif_push, ptr %247, i32 0, i32 6
  %252 = load ptr, ptr %251, align 4
  %253 = icmp ult ptr %250, %252
  br i1 %253, label %258, label %254

254:                                              ; preds = %241
  %255 = load ptr, ptr %247, align 8
  %256 = call i32 %255(ptr noundef %247, i32 noundef 32) #7
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %304

258:                                              ; preds = %254, %241
  br label %259

259:                                              ; preds = %259, %258
  %260 = phi i32 [ %265, %259 ], [ 0, %258 ]
  %261 = load ptr, ptr %246, align 8
  %262 = getelementptr inbounds %struct.nvif_push, ptr %261, i32 0, i32 4
  %263 = load ptr, ptr %262, align 4
  %264 = getelementptr i32, ptr %263, i32 1
  store ptr %264, ptr %262, align 4
  store i32 0, ptr %263, align 4
  %265 = add nuw nsw i32 %260, 1
  %266 = icmp eq i32 %265, 32
  br i1 %266, label %267, label %259

267:                                              ; preds = %259
  %268 = load i8, ptr %167, align 1
  %269 = icmp ult i8 %268, 2
  br i1 %269, label %270, label %306

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 9
  %272 = call i32 @nvif_object_ctor(ptr noundef %144, ptr noundef nonnull @.str.9, i32 noundef 110, i32 noundef -4, ptr noundef null, i32 noundef 0, ptr noundef %271) #7
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %304

274:                                              ; preds = %270
  %275 = load ptr, ptr %246, align 8
  %276 = getelementptr inbounds %struct.nvif_push, ptr %275, i32 0, i32 4
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr i32, ptr %277, i32 2
  %279 = getelementptr inbounds %struct.nvif_push, ptr %275, i32 0, i32 6
  %280 = load ptr, ptr %279, align 4
  %281 = icmp ult ptr %278, %280
  br i1 %281, label %290, label %282

282:                                              ; preds = %274
  %283 = load ptr, ptr %275, align 8
  %284 = call i32 %283(ptr noundef %275, i32 noundef 2) #7
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %304

286:                                              ; preds = %282
  %287 = load ptr, ptr %246, align 8
  %288 = getelementptr inbounds %struct.nvif_push, ptr %287, i32 0, i32 4
  %289 = load ptr, ptr %288, align 4
  br label %290

290:                                              ; preds = %286, %274
  %291 = phi ptr [ %289, %286 ], [ %277, %274 ]
  %292 = phi ptr [ %287, %286 ], [ %275, %274 ]
  %293 = getelementptr inbounds %struct.nvif_push, ptr %292, i32 0, i32 4
  %294 = getelementptr i32, ptr %291, i32 1
  store ptr %294, ptr %293, align 4
  store i32 270336, ptr %291, align 4
  %295 = load ptr, ptr %246, align 8
  %296 = getelementptr inbounds %struct.nouveau_channel, ptr %139, i32 0, i32 9, i32 3
  %297 = load i32, ptr %296, align 4
  %298 = getelementptr inbounds %struct.nvif_push, ptr %295, i32 0, i32 4
  %299 = load ptr, ptr %298, align 4
  %300 = getelementptr i32, ptr %299, i32 1
  store ptr %300, ptr %298, align 4
  store i32 %297, ptr %299, align 4
  %301 = load ptr, ptr %246, align 8
  %302 = getelementptr inbounds %struct.nvif_push, ptr %301, i32 0, i32 1
  %303 = load ptr, ptr %302, align 4
  call void %303(ptr noundef %301) #7
  br label %306

304:                                              ; preds = %282, %270, %254, %220, %178, %157
  %305 = phi i32 [ %256, %254 ], [ %284, %282 ], [ %272, %270 ], [ %223, %220 ], [ %189, %178 ], [ %158, %157 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  br label %314

306:                                              ; preds = %290, %267
  %307 = load ptr, ptr %142, align 4
  %308 = getelementptr inbounds %struct.nouveau_drm, ptr %307, i32 0, i32 10
  %309 = load ptr, ptr %308, align 8
  %310 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %309, i32 0, i32 3
  %311 = load ptr, ptr %310, align 4
  %312 = call i32 %311(ptr noundef %139) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %323, label %314

314:                                              ; preds = %306, %304
  %315 = phi i32 [ %305, %304 ], [ %312, %306 ]
  %316 = getelementptr inbounds %struct.nouveau_cli, ptr %13, i32 0, i32 1
  %317 = load ptr, ptr %316, align 8
  %318 = getelementptr inbounds %struct.nouveau_drm, ptr %317, i32 0, i32 3
  %319 = load ptr, ptr %318, align 8
  %320 = getelementptr inbounds %struct.drm_device, ptr %319, i32 0, i32 2
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr inbounds %struct.nouveau_cli, ptr %13, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %321, ptr noundef nonnull @.str.1, ptr noundef %322, i32 noundef %315) #8
  call void @nouveau_channel_del(ptr noundef %5)
  br label %323

323:                                              ; preds = %314, %306, %131
  %324 = phi i32 [ %315, %314 ], [ %132, %131 ], [ 0, %306 ]
  ret i32 %324
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_channels_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.anon.178, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.nouveau_channels_init.args, i32 24, i1 false)
  %3 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 3
  %4 = call i32 @nvif_object_mthd(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 24) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.anon.178, ptr %2, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, -1
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.anon.178, ptr %2, i32 0, i32 1, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 11
  store i32 %13, ptr %14, align 8
  %15 = call i64 @dma_fence_context_alloc(i32 noundef %13) #7
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 11, i32 1
  store i64 %15, ptr %16, align 8
  br label %17

17:                                               ; preds = %10, %6, %1
  %18 = phi i32 [ 0, %10 ], [ -19, %6 ], [ -19, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %18
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_channel_prep(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.nv_dma_v0, align 8
  %6 = getelementptr inbounds %struct.nvif_object, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false)
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 456) #9
  store ptr %9, ptr %3, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %137, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nouveau_channel, ptr %9, i32 0, i32 1
  store ptr %1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.nouveau_channel, ptr %9, i32 0, i32 2
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nouveau_cli, ptr %7, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.nouveau_cli, ptr %7, i32 0, i32 5
  %18 = select i1 %16, ptr %17, ptr %14
  %19 = getelementptr inbounds %struct.nouveau_channel, ptr %9, i32 0, i32 3
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.nouveau_channel, ptr %9, i32 0, i32 19
  store volatile i32 0, ptr %20, align 4
  %21 = load i32, ptr @nouveau_vram_pushbuf, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 20, i32 2
  %24 = zext i32 %2 to i64
  %25 = getelementptr inbounds %struct.nouveau_channel, ptr %9, i32 0, i32 10
  %26 = tail call i32 @nouveau_bo_new(ptr noundef %7, i64 noundef %24, i32 noundef 0, i32 noundef %23, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %25) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %11
  %29 = load ptr, ptr %25, align 8
  %30 = tail call i32 @nouveau_bo_pin(ptr noundef %29, i32 noundef %23, i1 noundef zeroext false) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load ptr, ptr %25, align 8
  %34 = tail call i32 @nouveau_bo_map(ptr noundef %33) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32, %28, %11
  %37 = phi i32 [ %34, %32 ], [ %26, %11 ], [ %30, %28 ]
  tail call void @nouveau_channel_del(ptr noundef %3)
  br label %137

38:                                               ; preds = %32
  %39 = load ptr, ptr %7, align 8
  %40 = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 2
  store ptr %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 2, i32 0, i32 1
  store ptr %7, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 2, i32 0, i32 2
  store ptr @.str.3, ptr %42, align 8
  %43 = load ptr, ptr %25, align 8
  %44 = getelementptr inbounds %struct.nouveau_bo, ptr %43, i32 0, i32 6
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 2, i32 0, i32 6
  store ptr %45, ptr %46, align 8
  store ptr @nouveau_channel_wait, ptr %9, align 8
  %47 = getelementptr inbounds %struct.nvif_push, ptr %9, i32 0, i32 1
  store ptr @nouveau_channel_kick, ptr %47, align 4
  %48 = getelementptr inbounds %struct.anon.74, ptr %9, i32 0, i32 1
  store ptr %9, ptr %48, align 8
  %49 = getelementptr inbounds %struct.nouveau_bo, ptr %43, i32 0, i32 13
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.nouveau_channel, ptr %9, i32 0, i32 10, i32 3
  store i64 %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.nvif_device, ptr %1, i32 0, i32 1, i32 4
  %53 = load i8, ptr %52, align 1
  %54 = icmp ugt i8 %53, 5
  br i1 %54, label %55, label %75

55:                                               ; preds = %38
  %56 = load ptr, ptr %19, align 8
  %57 = getelementptr inbounds %struct.nouveau_channel, ptr %9, i32 0, i32 10, i32 1
  %58 = tail call i32 @nouveau_vma_new(ptr noundef %43, ptr noundef %56, ptr noundef %57) #7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  tail call void @nouveau_channel_del(ptr noundef %3)
  br label %137

61:                                               ; preds = %55
  %62 = load ptr, ptr %57, align 4
  %63 = getelementptr inbounds %struct.nouveau_vma, ptr %62, i32 0, i32 3
  %64 = load i64, ptr %63, align 8
  store i64 %64, ptr %51, align 8
  %65 = load i8, ptr %52, align 1
  %66 = icmp ugt i8 %65, 6
  br i1 %66, label %137, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 1
  store i8 0, ptr %68, align 1
  %69 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 2
  store i8 0, ptr %69, align 2
  %70 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 4
  store i64 0, ptr %70, align 8
  %71 = load ptr, ptr %19, align 8
  %72 = getelementptr inbounds %struct.nouveau_vmm, ptr %71, i32 0, i32 1, i32 2
  %73 = load i64, ptr %72, align 8
  %74 = add i64 %73, -1
  br label %130

75:                                               ; preds = %38
  %76 = getelementptr inbounds %struct.ttm_buffer_object, ptr %43, i32 0, i32 6
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.ttm_resource, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %106

81:                                               ; preds = %75
  %82 = icmp eq i8 %53, 1
  %83 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 1
  br i1 %82, label %84, label %100

84:                                               ; preds = %81
  store i8 2, ptr %83, align 1
  %85 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 2
  store i8 3, ptr %85, align 2
  %86 = getelementptr inbounds %struct.nvif_object, ptr %1, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.anon.181, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 8
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr inbounds %struct.nvkm_device_func, ptr %90, i32 0, i32 6
  %92 = load ptr, ptr %91, align 4
  %93 = tail call i32 %92(ptr noundef %89, i32 noundef 1) #7
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 4
  store i64 %94, ptr %95, align 8
  %96 = getelementptr inbounds %struct.nvif_device, ptr %1, i32 0, i32 1, i32 7
  %97 = load i64, ptr %96, align 8
  %98 = add nsw i64 %94, -1
  %99 = add i64 %98, %97
  br label %130

100:                                              ; preds = %81
  store i8 1, ptr %83, align 1
  %101 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 2
  store i8 3, ptr %101, align 2
  %102 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 4
  store i64 0, ptr %102, align 8
  %103 = getelementptr inbounds %struct.nvif_device, ptr %1, i32 0, i32 1, i32 7
  %104 = load i64, ptr %103, align 8
  %105 = add i64 %104, -1
  br label %130

106:                                              ; preds = %75
  %107 = load ptr, ptr %13, align 4
  %108 = getelementptr inbounds %struct.nouveau_drm, ptr %107, i32 0, i32 7
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  %111 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 1
  br i1 %110, label %123, label %112

112:                                              ; preds = %106
  store i8 4, ptr %111, align 1
  %113 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 2
  store i8 3, ptr %113, align 2
  %114 = getelementptr inbounds %struct.nouveau_drm, ptr %107, i32 0, i32 7, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 4
  store i64 %116, ptr %117, align 8
  %118 = getelementptr inbounds %struct.nouveau_drm, ptr %107, i32 0, i32 7, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %115, -1
  %121 = add i32 %120, %119
  %122 = zext i32 %121 to i64
  br label %130

123:                                              ; preds = %106
  store i8 0, ptr %111, align 1
  %124 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 2
  store i8 3, ptr %124, align 2
  %125 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 4
  store i64 0, ptr %125, align 8
  %126 = load ptr, ptr %19, align 8
  %127 = getelementptr inbounds %struct.nouveau_vmm, ptr %126, i32 0, i32 1, i32 2
  %128 = load i64, ptr %127, align 8
  %129 = add i64 %128, -1
  br label %130

130:                                              ; preds = %123, %112, %100, %84, %67
  %131 = phi i64 [ %105, %100 ], [ %99, %84 ], [ %129, %123 ], [ %122, %112 ], [ %74, %67 ]
  %132 = getelementptr inbounds %struct.nv_dma_v0, ptr %5, i32 0, i32 5
  store i64 %131, ptr %132, align 8
  %133 = getelementptr inbounds %struct.nouveau_channel, ptr %9, i32 0, i32 10, i32 2
  %134 = call i32 @nvif_object_ctor(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %5, i32 noundef 24, ptr noundef %133) #7
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %130
  call void @nouveau_channel_del(ptr noundef %3)
  br label %137

137:                                              ; preds = %136, %130, %61, %60, %36, %4
  %138 = phi i32 [ %37, %36 ], [ %58, %60 ], [ %134, %136 ], [ -12, %4 ], [ 0, %61 ], [ 0, %130 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  ret i32 %138
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_channel_wait(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvif_push, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %6 to i32
  %10 = ptrtoint ptr %8 to i32
  %11 = sub i32 %9, %10
  %12 = ashr exact i32 %11, 2
  %13 = add i32 %12, %4
  store i32 %13, ptr %3, align 8
  %14 = tail call i32 @nouveau_dma_wait(ptr noundef %0, i32 noundef 1, i32 noundef %1) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %18, %1
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.nvif_push, ptr %0, i32 0, i32 2, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = load i32, ptr %3, align 8
  %23 = getelementptr i32, ptr %21, i32 %22
  store ptr %23, ptr %7, align 8
  store ptr %23, ptr %5, align 4
  %24 = getelementptr i32, ptr %23, i32 %1
  %25 = getelementptr inbounds %struct.nvif_push, ptr %0, i32 0, i32 6
  store ptr %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %16, %2
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_channel_kick(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvif_push, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvif_push, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = ashr exact i32 %10, 2
  %12 = add i32 %11, %3
  store i32 %12, ptr %2, align 8
  %13 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %60, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 11
  store i8 1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 13, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 10, i32 3
  %23 = load i64, ptr %22, align 8
  %24 = shl i32 %14, 2
  %25 = sext i32 %24 to i64
  %26 = add i64 %23, %25
  %27 = sub i32 %12, %14
  %28 = shl i32 %27, 2
  tail call void @nv50_dma_push(ptr noundef %0, i64 noundef %26, i32 noundef %28) #7
  br label %57

29:                                               ; preds = %16
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %30 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 10
  %31 = load ptr, ptr %30, align 8
  %32 = tail call i32 @nouveau_bo_rd32(ptr noundef %31, i32 noundef 0) #7
  %33 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 17, i32 6
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36, !prof !8

36:                                               ; preds = %29
  %37 = load i32, ptr %2, align 8
  %38 = shl i32 %37, 2
  %39 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 10, i32 3
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = add i32 %38, %41
  %43 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 16
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr i8, ptr %34, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %42) #7, !srcloc !13
  br label %57

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 17
  %48 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 16
  %49 = load i32, ptr %48, align 8
  %50 = zext i32 %49 to i64
  %51 = load i32, ptr %2, align 8
  %52 = shl i32 %51, 2
  %53 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 10, i32 3
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = add i32 %52, %55
  tail call void @nvif_object_wr(ptr noundef %47, i32 noundef 4, i64 noundef %50, i32 noundef %56) #7
  br label %57

57:                                               ; preds = %46, %36, %21
  %58 = load i32, ptr %2, align 8
  store i32 %58, ptr %13, align 4
  %59 = load ptr, ptr %4, align 4
  br label %60

60:                                               ; preds = %57, %1
  %61 = phi ptr [ %5, %1 ], [ %59, %57 ]
  store ptr %61, ptr %6, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_vma_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_dma_wait(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_dma_push(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_ctor(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_channel_killed(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_cli, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nouveau_cli, ptr %3, i32 0, i32 12
  %11 = getelementptr i8, ptr %0, i32 -292
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef %10, i32 noundef %12) #8
  %13 = getelementptr i8, ptr %0, i32 52
  store volatile i32 1, ptr %13, align 4
  %14 = getelementptr i8, ptr %0, i32 -92
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  tail call void @nouveau_fence_context_kill(ptr noundef nonnull %15, i32 noundef -19) #7
  br label %18

18:                                               ; preds = %17, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_context_kill(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"auto-init"}
!11 = !{i64 2155641962}
!12 = !{i64 2151510783}
!13 = !{i64 3969690}
