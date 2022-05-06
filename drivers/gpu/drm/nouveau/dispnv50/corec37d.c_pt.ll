; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/corec37d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/corec37d.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_core_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.100, ptr, ptr, ptr, ptr, ptr }
%struct.anon.100 = type { ptr }
%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_crc_func = type { ptr, ptr, ptr, ptr, i16, i16, i32 }
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

@.str = private unnamed_addr constant [9 x i8] c"dispCaps\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: Failed to init notifier caps region: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: Failed to map notifier caps region: %d\0A\00", align 1
@corec37d = internal constant %struct.nv50_core_func { ptr @corec37d_init, ptr @corec37d_ntfy_init, ptr @corec37d_caps_init, ptr @corec37d_ntfy_wait_done, ptr @corec37d_update, %struct.anon.100 { ptr @corec37d_wndw_owner }, ptr @headc37d, ptr @crcc37d, ptr null, ptr null, ptr @sorc37d }, align 4
@headc37d = external dso_local constant %struct.nv50_head_func, align 4
@crcc37d = external dso_local constant %struct.nv50_crc_func, align 4
@sorc37d = external dso_local constant %struct.nv50_outp_func, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @corec37d_wndw_owner(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_core, ptr %0, i32 0, i32 1, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i32, ptr %5, i32 16
  %7 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult ptr %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 16) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 266240, ptr %17, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i32, ptr %19, i32 1
  store ptr %20, ptr %4, align 4
  store i32 0, ptr %19, align 4
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i32, ptr %21, i32 1
  store ptr %22, ptr %4, align 4
  store i32 266368, ptr %21, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i32, ptr %23, i32 1
  store ptr %24, ptr %4, align 4
  store i32 0, ptr %23, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i32, ptr %25, i32 1
  store ptr %26, ptr %4, align 4
  store i32 266496, ptr %25, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i32, ptr %27, i32 1
  store ptr %28, ptr %4, align 4
  store i32 1, ptr %27, align 4
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i32, ptr %29, i32 1
  store ptr %30, ptr %4, align 4
  store i32 266624, ptr %29, align 4
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i32, ptr %31, i32 1
  store ptr %32, ptr %4, align 4
  store i32 1, ptr %31, align 4
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i32, ptr %33, i32 1
  store ptr %34, ptr %4, align 4
  store i32 266752, ptr %33, align 4
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i32, ptr %35, i32 1
  store ptr %36, ptr %4, align 4
  store i32 2, ptr %35, align 4
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr i32, ptr %37, i32 1
  store ptr %38, ptr %4, align 4
  store i32 266880, ptr %37, align 4
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr i32, ptr %39, i32 1
  store ptr %40, ptr %4, align 4
  store i32 2, ptr %39, align 4
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr i32, ptr %41, i32 1
  store ptr %42, ptr %4, align 4
  store i32 267008, ptr %41, align 4
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr i32, ptr %43, i32 1
  store ptr %44, ptr %4, align 4
  store i32 3, ptr %43, align 4
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i32, ptr %45, i32 1
  store ptr %46, ptr %4, align 4
  store i32 267136, ptr %45, align 4
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr i32, ptr %47, i32 1
  store ptr %48, ptr %4, align 4
  store i32 3, ptr %47, align 4
  br label %49

49:                                               ; preds = %16, %10
  %50 = phi i32 [ %12, %10 ], [ 0, %16 ]
  ret i32 %50
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @corec37d_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.nv50_core, ptr %0, i32 0, i32 1, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = select i1 %2, i32 9, i32 5
  %7 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i32, ptr %8, i32 %6
  %10 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ult ptr %9, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  %15 = tail call i32 %14(ptr noundef %5, i32 noundef %6) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %13, %3
  br i1 %2, label %18, label %23

18:                                               ; preds = %17
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr i32, ptr %19, i32 1
  store ptr %20, ptr %7, align 4
  store i32 262668, ptr %19, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr i32, ptr %21, i32 1
  store ptr %22, ptr %7, align 4
  store i32 4096, ptr %21, align 4
  br label %23

23:                                               ; preds = %18, %17
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr i32, ptr %24, i32 1
  store ptr %25, ptr %7, align 4
  store i32 524824, ptr %24, align 4
  %26 = getelementptr i32, ptr %1, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr i32, ptr %28, i32 1
  store ptr %29, ptr %7, align 4
  store i32 %27, ptr %28, align 4
  %30 = getelementptr i32, ptr %1, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr i32, ptr %32, i32 1
  store ptr %33, ptr %7, align 4
  store i32 %31, ptr %32, align 4
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i32, ptr %34, i32 1
  store ptr %35, ptr %7, align 4
  store i32 262656, ptr %34, align 4
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr i32, ptr %36, i32 1
  store ptr %37, ptr %7, align 4
  store i32 1, ptr %36, align 4
  br i1 %2, label %38, label %43

38:                                               ; preds = %23
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr i32, ptr %39, i32 1
  store ptr %40, ptr %7, align 4
  store i32 262668, ptr %39, align 4
  %41 = load ptr, ptr %7, align 4
  %42 = getelementptr i32, ptr %41, i32 1
  store ptr %42, ptr %7, align 4
  store i32 0, ptr %41, align 4
  br label %43

43:                                               ; preds = %38, %23
  %44 = getelementptr inbounds %struct.nvif_push, ptr %5, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef %5) #6
  br label %46

46:                                               ; preds = %43, %13
  %47 = phi i32 [ 0, %43 ], [ %15, %13 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @corec37d_ntfy_wait_done(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.nvif_timer_wait, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  call void @nvif_timer_wait_init(ptr noundef %2, i64 noundef 2000000000, ptr noundef nonnull %4) #6
  %5 = lshr i32 %1, 2
  %6 = call i32 @nouveau_bo_rd32(ptr noundef %0, i32 noundef %5) #6
  %7 = and i32 %6, -1073741824
  %8 = icmp eq i32 %7, -2147483648
  br i1 %8, label %16, label %13

9:                                                ; preds = %13
  %10 = call i32 @nouveau_bo_rd32(ptr noundef %0, i32 noundef %5) #6
  %11 = and i32 %10, -1073741824
  %12 = icmp eq i32 %11, -2147483648
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %3
  call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #6
  %14 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %4) #6
  %15 = icmp sgt i64 %14, -1
  br i1 %15, label %9, label %16

16:                                               ; preds = %13, %9, %3
  %17 = phi i64 [ 0, %3 ], [ %14, %9 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6
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
define dso_local void @corec37d_ntfy_init(ptr noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 2
  tail call void @nouveau_bo_wr32(ptr noundef %0, i32 noundef %3, i32 noundef 0) #6
  %4 = add nuw nsw i32 %3, 1
  tail call void @nouveau_bo_wr32(ptr noundef %0, i32 noundef %4, i32 noundef 0) #6
  %5 = add nuw nsw i32 %3, 2
  tail call void @nouveau_bo_wr32(ptr noundef %0, i32 noundef %5, i32 noundef 0) #6
  %6 = add nuw nsw i32 %3, 3
  tail call void @nouveau_bo_wr32(ptr noundef %0, i32 noundef %6, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @corec37d_caps_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.nv50_disp, ptr %1, i32 0, i32 2
  %5 = tail call i32 @nvif_object_ctor(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 50035, ptr noundef null, i32 noundef 0, ptr noundef %4) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef %14, i32 noundef %5) #7
  br label %26

15:                                               ; preds = %2
  %16 = tail call i32 @nvif_object_map(ptr noundef %4, ptr noundef null, i32 noundef 0) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.2, ptr noundef %25, i32 noundef %16) #7
  br label %26

26:                                               ; preds = %18, %15, %7
  %27 = phi i32 [ %5, %7 ], [ %16, %18 ], [ 0, %15 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @corec37d_new(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @core507d_new_(ptr noundef nonnull @corec37d, ptr noundef %0, i32 noundef %1, ptr noundef %2) #6
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core507d_new_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @corec37d_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_core, ptr %0, i32 0, i32 1, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i32, ptr %5, i32 42
  %7 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult ptr %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 42) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %106

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 262664, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nv50_core, ptr %0, i32 0, i32 1, i32 4, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i32, ptr %21, i32 1
  store ptr %22, ptr %4, align 4
  store i32 %20, ptr %21, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i32, ptr %23, i32 1
  store ptr %24, ptr %4, align 4
  store i32 528388, ptr %23, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i32, ptr %25, i32 1
  store ptr %26, ptr %4, align 4
  store i32 31, ptr %25, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i32, ptr %27, i32 1
  store ptr %28, ptr %4, align 4
  store i32 0, ptr %27, align 4
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i32, ptr %29, i32 1
  store ptr %30, ptr %4, align 4
  store i32 266256, ptr %29, align 4
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i32, ptr %31, i32 1
  store ptr %32, ptr %4, align 4
  store i32 1212415, ptr %31, align 4
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i32, ptr %33, i32 1
  store ptr %34, ptr %4, align 4
  store i32 528516, ptr %33, align 4
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i32, ptr %35, i32 1
  store ptr %36, ptr %4, align 4
  store i32 31, ptr %35, align 4
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr i32, ptr %37, i32 1
  store ptr %38, ptr %4, align 4
  store i32 0, ptr %37, align 4
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr i32, ptr %39, i32 1
  store ptr %40, ptr %4, align 4
  store i32 266384, ptr %39, align 4
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr i32, ptr %41, i32 1
  store ptr %42, ptr %4, align 4
  store i32 1212415, ptr %41, align 4
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr i32, ptr %43, i32 1
  store ptr %44, ptr %4, align 4
  store i32 528644, ptr %43, align 4
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i32, ptr %45, i32 1
  store ptr %46, ptr %4, align 4
  store i32 31, ptr %45, align 4
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr i32, ptr %47, i32 1
  store ptr %48, ptr %4, align 4
  store i32 0, ptr %47, align 4
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr i32, ptr %49, i32 1
  store ptr %50, ptr %4, align 4
  store i32 266512, ptr %49, align 4
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr i32, ptr %51, i32 1
  store ptr %52, ptr %4, align 4
  store i32 1212415, ptr %51, align 4
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr i32, ptr %53, i32 1
  store ptr %54, ptr %4, align 4
  store i32 528772, ptr %53, align 4
  %55 = load ptr, ptr %4, align 4
  %56 = getelementptr i32, ptr %55, i32 1
  store ptr %56, ptr %4, align 4
  store i32 31, ptr %55, align 4
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  store ptr %58, ptr %4, align 4
  store i32 0, ptr %57, align 4
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr i32, ptr %59, i32 1
  store ptr %60, ptr %4, align 4
  store i32 266640, ptr %59, align 4
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr i32, ptr %61, i32 1
  store ptr %62, ptr %4, align 4
  store i32 1212415, ptr %61, align 4
  %63 = load ptr, ptr %4, align 4
  %64 = getelementptr i32, ptr %63, i32 1
  store ptr %64, ptr %4, align 4
  store i32 528900, ptr %63, align 4
  %65 = load ptr, ptr %4, align 4
  %66 = getelementptr i32, ptr %65, i32 1
  store ptr %66, ptr %4, align 4
  store i32 31, ptr %65, align 4
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr i32, ptr %67, i32 1
  store ptr %68, ptr %4, align 4
  store i32 0, ptr %67, align 4
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr i32, ptr %69, i32 1
  store ptr %70, ptr %4, align 4
  store i32 266768, ptr %69, align 4
  %71 = load ptr, ptr %4, align 4
  %72 = getelementptr i32, ptr %71, i32 1
  store ptr %72, ptr %4, align 4
  store i32 1212415, ptr %71, align 4
  %73 = load ptr, ptr %4, align 4
  %74 = getelementptr i32, ptr %73, i32 1
  store ptr %74, ptr %4, align 4
  store i32 529028, ptr %73, align 4
  %75 = load ptr, ptr %4, align 4
  %76 = getelementptr i32, ptr %75, i32 1
  store ptr %76, ptr %4, align 4
  store i32 31, ptr %75, align 4
  %77 = load ptr, ptr %4, align 4
  %78 = getelementptr i32, ptr %77, i32 1
  store ptr %78, ptr %4, align 4
  store i32 0, ptr %77, align 4
  %79 = load ptr, ptr %4, align 4
  %80 = getelementptr i32, ptr %79, i32 1
  store ptr %80, ptr %4, align 4
  store i32 266896, ptr %79, align 4
  %81 = load ptr, ptr %4, align 4
  %82 = getelementptr i32, ptr %81, i32 1
  store ptr %82, ptr %4, align 4
  store i32 1212415, ptr %81, align 4
  %83 = load ptr, ptr %4, align 4
  %84 = getelementptr i32, ptr %83, i32 1
  store ptr %84, ptr %4, align 4
  store i32 529156, ptr %83, align 4
  %85 = load ptr, ptr %4, align 4
  %86 = getelementptr i32, ptr %85, i32 1
  store ptr %86, ptr %4, align 4
  store i32 31, ptr %85, align 4
  %87 = load ptr, ptr %4, align 4
  %88 = getelementptr i32, ptr %87, i32 1
  store ptr %88, ptr %4, align 4
  store i32 0, ptr %87, align 4
  %89 = load ptr, ptr %4, align 4
  %90 = getelementptr i32, ptr %89, i32 1
  store ptr %90, ptr %4, align 4
  store i32 267024, ptr %89, align 4
  %91 = load ptr, ptr %4, align 4
  %92 = getelementptr i32, ptr %91, i32 1
  store ptr %92, ptr %4, align 4
  store i32 1212415, ptr %91, align 4
  %93 = load ptr, ptr %4, align 4
  %94 = getelementptr i32, ptr %93, i32 1
  store ptr %94, ptr %4, align 4
  store i32 529284, ptr %93, align 4
  %95 = load ptr, ptr %4, align 4
  %96 = getelementptr i32, ptr %95, i32 1
  store ptr %96, ptr %4, align 4
  store i32 31, ptr %95, align 4
  %97 = load ptr, ptr %4, align 4
  %98 = getelementptr i32, ptr %97, i32 1
  store ptr %98, ptr %4, align 4
  store i32 0, ptr %97, align 4
  %99 = load ptr, ptr %4, align 4
  %100 = getelementptr i32, ptr %99, i32 1
  store ptr %100, ptr %4, align 4
  store i32 267152, ptr %99, align 4
  %101 = load ptr, ptr %4, align 4
  %102 = getelementptr i32, ptr %101, i32 1
  store ptr %102, ptr %4, align 4
  store i32 1212415, ptr %101, align 4
  %103 = getelementptr inbounds %struct.nv50_core, ptr %0, i32 0, i32 2
  store i8 1, ptr %103, align 8
  %104 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  tail call void %105(ptr noundef %3) #6
  br label %106

106:                                              ; preds = %16, %10
  %107 = phi i32 [ 0, %16 ], [ %12, %10 ]
  ret i32 %107
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
