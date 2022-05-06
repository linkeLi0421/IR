; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/core507d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/core507d.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_core_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.100, ptr, ptr, ptr, ptr, ptr }
%struct.anon.100 = type { ptr }
%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_outp_func = type { ptr, ptr }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.79 }
%struct.anon.79 = type { ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.83, %struct.anon.84, %struct.anon.85, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.87, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.99 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.83 = type { ptr, i32, i32, i8 }
%struct.anon.84 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.78] }
%struct.anon.78 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.85 = type { i64, i64 }
%struct.anon.86 = type { i32, i64 }
%struct.anon.87 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.94, %struct.anon.95, %struct.anon.96, %struct.anon.97 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.88, i8 }
%union.anon.88 = type { %struct.anon.92 }
%struct.anon.92 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.94 = type { i32 }
%struct.anon.95 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.96 = type { i16, i16 }
%struct.anon.97 = type { i16, i16, i16, %struct.anon.98, i16 }
%struct.anon.98 = type { i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.99 = type { ptr, %struct.mutex, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.76 = type { i32, ptr }
%struct.nv50_disp_core_channel_dma_v0 = type { i8, [7 x i8], i64 }
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

@.str = private unnamed_addr constant [32 x i8] c"%s: core caps notifier timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: core%04x allocation failed: %d\0A\00", align 1
@core507d = internal constant %struct.nv50_core_func { ptr @core507d_init, ptr @core507d_ntfy_init, ptr @core507d_caps_init, ptr @core507d_ntfy_wait_done, ptr @core507d_update, %struct.anon.100 zeroinitializer, ptr @head507d, ptr null, ptr @dac507d, ptr @pior507d, ptr @sor507d }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@head507d = external dso_local constant %struct.nv50_head_func, align 4
@dac507d = external dso_local constant %struct.nv50_outp_func, align 4
@pior507d = external dso_local constant %struct.nv50_outp_func, align 4
@sor507d = external dso_local constant %struct.nv50_outp_func, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @core507d_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.nv50_core, ptr %0, i32 0, i32 1, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %2, i32 5, i32 3
  %7 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i32, ptr %8, i32 %6
  %10 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ult ptr %9, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  %15 = tail call i32 %14(ptr noundef %5, i32 noundef %6) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %13, %3
  br i1 %2, label %18, label %23

18:                                               ; preds = %17
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr i32, ptr %19, i32 1
  store ptr %20, ptr %7, align 4
  store i32 262276, ptr %19, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr i32, ptr %21, i32 1
  store ptr %22, ptr %7, align 4
  store i32 -2147483648, ptr %21, align 4
  br label %23

23:                                               ; preds = %18, %17
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr i32, ptr %24, i32 1
  store ptr %25, ptr %7, align 4
  store i32 524416, ptr %24, align 4
  %26 = getelementptr i32, ptr %1, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i32, ptr %1, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %27
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr i32, ptr %31, i32 1
  store ptr %32, ptr %7, align 4
  store i32 %30, ptr %31, align 4
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr i32, ptr %33, i32 1
  store ptr %34, ptr %7, align 4
  store i32 0, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef %5) #7
  br label %37

37:                                               ; preds = %23, %13
  %38 = phi i32 [ 0, %23 ], [ %15, %13 ]
  ret i32 %38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @core507d_ntfy_wait_done(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.nvif_timer_wait, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  call void @nvif_timer_wait_init(ptr noundef %2, i64 noundef 2000000000, ptr noundef nonnull %4) #7
  %5 = lshr i32 %1, 2
  %6 = call i32 @nouveau_bo_rd32(ptr noundef %0, i32 noundef %5) #7
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %16

9:                                                ; preds = %13
  %10 = call i32 @nouveau_bo_rd32(ptr noundef %0, i32 noundef %5) #7
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

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
define dso_local void @core507d_ntfy_init(ptr noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 2
  tail call void @nouveau_bo_wr32(ptr noundef %0, i32 noundef %3, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @core507d_read_caps(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nv50_disp, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nv50_core, ptr %3, i32 0, i32 1, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i32, ptr %7, i32 6
  %9 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ult ptr %8, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %5, align 8
  %14 = tail call i32 %13(ptr noundef %5, i32 noundef 6) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 4
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %7, %1 ]
  %20 = getelementptr i32, ptr %19, i32 1
  store ptr %20, ptr %6, align 4
  store i32 262276, ptr %19, align 4
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr i32, ptr %21, i32 1
  store ptr %22, ptr %6, align 4
  store i32 -2147483648, ptr %21, align 4
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr i32, ptr %23, i32 1
  store ptr %24, ptr %6, align 4
  store i32 262284, ptr %23, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr i32, ptr %25, i32 1
  store ptr %26, ptr %6, align 4
  store i32 0, ptr %25, align 4
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i32, ptr %27, i32 1
  store ptr %28, ptr %6, align 4
  store i32 262276, ptr %27, align 4
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr i32, ptr %29, i32 1
  store ptr %30, ptr %6, align 4
  store i32 0, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %5) #7
  br label %33

33:                                               ; preds = %18, %12
  %34 = phi i32 [ 0, %18 ], [ %14, %12 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @core507d_caps_init(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.nvif_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  tail call void @nouveau_bo_wr32(ptr noundef %7, i32 noundef 1, i32 noundef 0) #7
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.nv50_core, ptr %8, i32 0, i32 1, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvif_push, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i32, ptr %12, i32 6
  %14 = getelementptr inbounds %struct.nvif_push, ptr %10, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ult ptr %13, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %10, align 8
  %19 = tail call i32 %18(ptr noundef %10, i32 noundef 6) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load ptr, ptr %11, align 4
  br label %23

23:                                               ; preds = %21, %2
  %24 = phi ptr [ %22, %21 ], [ %12, %2 ]
  %25 = getelementptr i32, ptr %24, i32 1
  store ptr %25, ptr %11, align 4
  store i32 262276, ptr %24, align 4
  %26 = load ptr, ptr %11, align 4
  %27 = getelementptr i32, ptr %26, i32 1
  store ptr %27, ptr %11, align 4
  store i32 -2147483648, ptr %26, align 4
  %28 = load ptr, ptr %11, align 4
  %29 = getelementptr i32, ptr %28, i32 1
  store ptr %29, ptr %11, align 4
  store i32 262284, ptr %28, align 4
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr i32, ptr %30, i32 1
  store ptr %31, ptr %11, align 4
  store i32 0, ptr %30, align 4
  %32 = load ptr, ptr %11, align 4
  %33 = getelementptr i32, ptr %32, i32 1
  store ptr %33, ptr %11, align 4
  store i32 262276, ptr %32, align 4
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr i32, ptr %34, i32 1
  store ptr %35, ptr %11, align 4
  store i32 0, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvif_push, ptr %10, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %10) #7
  br label %40

38:                                               ; preds = %17
  %39 = icmp slt i32 %19, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %38, %23
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  %41 = getelementptr inbounds %struct.nv50_core, ptr %5, i32 0, i32 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  call void @nvif_timer_wait_init(ptr noundef %42, i64 noundef 2000000000, ptr noundef nonnull %3) #7
  br label %43

43:                                               ; preds = %47, %40
  %44 = call i32 @nouveau_bo_rd32(ptr noundef %7, i32 noundef 1) #7
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #7
  %48 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %3) #7
  %49 = icmp sgt i64 %48, -1
  br i1 %49, label %43, label %51

50:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  br label %59

51:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nouveau_drm, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.drm_device, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str, ptr noundef %58) #8
  br label %59

59:                                               ; preds = %51, %50, %38
  %60 = phi i32 [ %19, %38 ], [ 0, %51 ], [ 0, %50 ]
  ret i32 %60
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @core507d_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_core, ptr %0, i32 0, i32 1, i32 2
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
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 262280, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nv50_core, ptr %0, i32 0, i32 1, i32 4, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i32, ptr %21, i32 1
  store ptr %22, ptr %4, align 4
  store i32 %20, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %3) #7
  br label %25

25:                                               ; preds = %16, %10
  %26 = phi i32 [ 0, %16 ], [ %12, %10 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @core507d_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv50_disp_core_channel_dma_v0, align 8
  store i32 %2, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false)
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 272) #9
  store ptr %15, ptr %3, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %4
  store ptr %0, ptr %15, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %19 = load ptr, ptr %13, align 8
  %20 = getelementptr inbounds %struct.nv50_disp, ptr %13, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nouveau_bo, ptr %21, i32 0, i32 13
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nv50_core, ptr %15, i32 0, i32 1
  %25 = call i32 @nv50_dmac_create(ptr noundef %18, ptr noundef %19, ptr noundef nonnull %5, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 16, i64 noundef %23, ptr noundef %24) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.drm_device, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  %35 = load i32, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.1, ptr noundef %34, i32 noundef %35, i32 noundef %25) #8
  br label %36

36:                                               ; preds = %27, %17, %4
  %37 = phi i32 [ %25, %27 ], [ -12, %4 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dmac_create(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @core507d_new(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call i32 @core507d_new_(ptr noundef nonnull @core507d, ptr noundef %0, i32 noundef %1, ptr noundef %2)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
