; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_mem.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_mem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.anon.100 = type { %struct.nv50_vmm_map_v0 }
%struct.nv50_vmm_map_v0 = type { i8, i8, i8, i8, i8 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nouveau_mem = type { %struct.ttm_resource, ptr, i8, i8, %struct.nvif_mem, [2 x %struct.nvif_vma] }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_vma = type { i64, i64 }
%struct.gf100_vmm_map_v0 = type { i8, i8, i8, i8, i8 }
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
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.80, %struct.anon.81, %struct.anon.83, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.85, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.97 }
%struct.nvif_parent = type { ptr }
%struct.anon.80 = type { ptr, i32, i32, i8 }
%struct.anon.81 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.82] }
%struct.anon.82 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.83 = type { i64, i64 }
%struct.anon.84 = type { i32, i64 }
%struct.anon.85 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.92, %struct.anon.93, %struct.anon.94, %struct.anon.95 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.86, i8 }
%union.anon.86 = type { %struct.anon.90 }
%struct.anon.90 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.92 = type { i32 }
%struct.anon.93 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.94 = type { i16, i16 }
%struct.anon.95 = type { i16, i16, i16, %struct.anon.96, i16 }
%struct.anon.96 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.97 = type { ptr, %struct.mutex, i8 }
%struct.nvif_mem_ram_v0 = type { i8, [7 x i8], ptr, ptr }
%struct.anon.1 = type { i8, i8 }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.gf100_mem_v0 = type { i8, i8 }
%struct.nv50_mem_v0 = type { i8, i8, i8 }

@.str = private unnamed_addr constant [38 x i8] c"drivers/gpu/drm/nouveau/nouveau_mem.c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ttmHostMem\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ttmVram\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_mem_map(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %union.anon.100, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.nvif_object, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  switch i32 %6, label %24 [
    i32 -2147483635, label %25
    i32 -2147463155, label %7
    i32 -2147446771, label %14
    i32 -2147438579, label %14
    i32 -2147434483, label %14
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %4, i32 0, i32 3
  store i8 %9, ptr %10, align 1
  %11 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %4, i32 0, i32 4
  store i8 %12, ptr %13, align 1
  br label %25

14:                                               ; preds = %3, %3, %3
  %15 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 4, i32 1
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %4, i32 0, i32 1
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %4, i32 0, i32 3
  store i8 0, ptr %20, align 1
  %21 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 2
  %22 = load i8, ptr %21, align 4
  %23 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %4, i32 0, i32 4
  store i8 %22, ptr %23, align 1
  br label %25

24:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef null) #5
  br label %32

25:                                               ; preds = %14, %7, %3
  %26 = phi i32 [ 5, %14 ], [ 5, %7 ], [ 0, %3 ]
  %27 = load i64, ptr %2, align 8
  %28 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 4
  %29 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 4, i32 4
  %30 = load i64, ptr %29, align 8
  %31 = call i32 @nvif_vmm_map(ptr noundef %1, i64 noundef %27, i64 noundef %30, ptr noundef nonnull %4, i32 noundef %26, ptr noundef %28, i64 noundef 0) #5
  br label %32

32:                                               ; preds = %25, %24
  %33 = phi i32 [ -38, %24 ], [ %31, %25 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #5
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_vmm_map(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_mem_fini(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nouveau_cli, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 5, i32 1
  %7 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 5
  %8 = getelementptr %struct.nouveau_mem, ptr %0, i32 0, i32 5, i32 1
  tail call void @nvif_vmm_put(ptr noundef %6, ptr noundef %8) #5
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.nouveau_cli, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 5, i32 1
  tail call void @nvif_vmm_put(ptr noundef %12, ptr noundef %7) #5
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.nouveau_cli, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 1, i32 15
  tail call void @mutex_lock(ptr noundef %16) #5
  %17 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 4
  tail call void @nvif_mem_dtor(ptr noundef %17) #5
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.nouveau_cli, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 1, i32 15
  tail call void @mutex_unlock(ptr noundef %21) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_mem_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_mem_host(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvif_mem_ram_v0, align 4
  %4 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nouveau_cli, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false)
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 4, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 8, i32 7
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr %struct.anon.1, ptr %9, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = icmp sgt i8 %13, -1
  %15 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  br i1 %14, label %22, label %17

17:                                               ; preds = %2
  %18 = icmp ne i8 %16, 0
  %19 = zext i1 %18 to i32
  %20 = getelementptr %struct.nouveau_drm, ptr %7, i32 0, i32 8, i32 8, i32 %19
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i32 [ %21, %17 ], [ %11, %2 ]
  %24 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 2
  %25 = icmp eq i8 %16, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.nouveau_cli, ptr %5, i32 0, i32 4, i32 8
  %28 = load ptr, ptr %27, align 8
  %29 = and i32 %23, 255
  %30 = getelementptr %struct.anon.1, ptr %28, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  store i8 0, ptr %24, align 4
  %35 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 3
  store i8 0, ptr %35, align 1
  br label %36

36:                                               ; preds = %34, %26, %22
  %37 = phi i8 [ 0, %34 ], [ %16, %26 ], [ 0, %22 ]
  %38 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.nouveau_cli, ptr %5, i32 0, i32 4, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = and i32 %23, 255
  %45 = getelementptr %struct.anon.1, ptr %43, i32 %44
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, 4
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.nouveau_cli, ptr %5, i32 0, i32 4, i32 0, i32 4
  %51 = load i32, ptr %50, align 8
  %52 = icmp ugt i32 %51, -2147446776
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.nouveau_cli, ptr %5, i32 0, i32 4, i32 9
  %55 = load ptr, ptr %54, align 4
  %56 = zext i8 %37 to i32
  %57 = getelementptr i8, ptr %55, i32 %56
  %58 = load i8, ptr %57, align 1
  store i8 %58, ptr %24, align 4
  br label %59

59:                                               ; preds = %53, %49
  store i8 0, ptr %38, align 1
  br label %60

60:                                               ; preds = %59, %41, %36
  %61 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %62, align 4
  %66 = getelementptr inbounds %struct.nvif_mem_ram_v0, ptr %3, i32 0, i32 3
  store ptr %65, ptr %66, align 4
  br label %71

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.ttm_tt, ptr %1, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvif_mem_ram_v0, ptr %3, i32 0, i32 2
  store ptr %69, ptr %70, align 4
  br label %71

71:                                               ; preds = %67, %64
  %72 = getelementptr inbounds %struct.nouveau_cli, ptr %5, i32 0, i32 4
  %73 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 1, i32 15
  tail call void @mutex_lock(ptr noundef %73) #5
  %74 = getelementptr inbounds %struct.nouveau_cli, ptr %5, i32 0, i32 7
  %75 = load ptr, ptr %74, align 8
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %23, 255
  %78 = getelementptr inbounds %struct.ttm_resource, ptr %0, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = shl i32 %79, 12
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 4
  %83 = call i32 @nvif_mem_ctor_type(ptr noundef %72, ptr noundef nonnull @.str.1, i32 noundef %76, i32 noundef %77, i8 noundef zeroext 12, i64 noundef %81, ptr noundef nonnull %3, i32 noundef 16, ptr noundef %82) #5
  call void @mutex_unlock(ptr noundef %73) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_mem_ctor_type(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_mem_vram(ptr noundef %0, i1 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gf100_mem_v0, align 1
  %5 = alloca %struct.nv50_mem_v0, align 1
  %6 = zext i1 %1 to i8
  %7 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nouveau_cli, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nouveau_cli, ptr %8, i32 0, i32 4
  %12 = getelementptr inbounds %struct.ttm_resource, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 12
  %15 = zext i8 %2 to i32
  %16 = shl nsw i32 -1, %15
  %17 = xor i32 %16, -1
  %18 = add i32 %14, %17
  %19 = and i32 %18, %16
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 1, i32 15
  tail call void @mutex_lock(ptr noundef %21) #5
  %22 = getelementptr inbounds %struct.nouveau_cli, ptr %8, i32 0, i32 7
  %23 = load ptr, ptr %22, align 8
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %47 [
    i32 -2147446773, label %25
    i32 -2147463157, label %31
  ]

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 8, i32 6
  %27 = load i32, ptr %26, align 4
  store i8 0, ptr %4, align 1
  %28 = getelementptr inbounds %struct.gf100_mem_v0, ptr %4, i32 0, i32 1
  store i8 %6, ptr %28, align 1
  %29 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 4
  %30 = call i32 @nvif_mem_ctor_type(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef -2147446773, i32 noundef %27, i8 noundef zeroext %2, i64 noundef %20, ptr noundef nonnull %4, i32 noundef 2, ptr noundef %29) #5
  br label %48

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 8, i32 6
  %33 = load i32, ptr %32, align 4
  store i8 0, ptr %5, align 1
  %34 = getelementptr inbounds %struct.nv50_mem_v0, ptr %5, i32 0, i32 1
  %35 = getelementptr inbounds %struct.nouveau_cli, ptr %8, i32 0, i32 4, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 2
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  %40 = getelementptr i8, ptr %36, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 2
  %43 = zext i1 %42 to i8
  store i8 %43, ptr %34, align 1
  %44 = getelementptr inbounds %struct.nv50_mem_v0, ptr %5, i32 0, i32 2
  store i8 %6, ptr %44, align 1
  %45 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 4
  %46 = call i32 @nvif_mem_ctor_type(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef -2147463157, i32 noundef %33, i8 noundef zeroext %2, i64 noundef %20, ptr noundef nonnull %5, i32 noundef 3, ptr noundef %45) #5
  br label %48

47:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #5
  br label %48

48:                                               ; preds = %47, %31, %25
  %49 = phi i32 [ -38, %47 ], [ %46, %31 ], [ %30, %25 ]
  call void @mutex_unlock(ptr noundef %21) #5
  %50 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 4, i32 3
  %51 = load i64, ptr %50, align 8
  %52 = lshr i64 %51, 12
  %53 = trunc i64 %52 to i32
  store i32 %53, ptr %0, align 4
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_mem_del(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nouveau_cli, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 5, i32 1
  %7 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 5
  %8 = getelementptr %struct.nouveau_mem, ptr %0, i32 0, i32 5, i32 1
  tail call void @nvif_vmm_put(ptr noundef %6, ptr noundef %8) #5
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.nouveau_cli, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 5, i32 1
  tail call void @nvif_vmm_put(ptr noundef %12, ptr noundef %7) #5
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.nouveau_cli, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 1, i32 15
  tail call void @mutex_lock(ptr noundef %16) #5
  %17 = getelementptr inbounds %struct.nouveau_mem, ptr %0, i32 0, i32 4
  tail call void @nvif_mem_dtor(ptr noundef %17) #5
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.nouveau_cli, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 1, i32 15
  tail call void @mutex_unlock(ptr noundef %21) #5
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_mem_new(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 136) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nouveau_mem, ptr %6, i32 0, i32 1
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nouveau_mem, ptr %6, i32 0, i32 2
  store i8 %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nouveau_mem, ptr %6, i32 0, i32 3
  store i8 %2, ptr %11, align 1
  store ptr %6, ptr %3, align 4
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
