; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.123], i32, [16 x %struct.anon.124], ptr, %struct.anon.125, %struct.anon.125, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.123 = type { i8, i64 }
%struct.anon.124 = type { i8, i8 }
%struct.anon.125 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.141, %struct.anon.142, i8, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.141 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.142 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nv50_vmm_map_v0 = type { i8, i8, i8, i8, i8 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.130, i32, i32, i32, i32, i32, i32, %union.anon.134, i32, i32, [11 x i32], %union.anon.138 }>
%union.anon.130 = type { %struct.anon.133 }
%struct.anon.133 = type { i64 }
%union.anon.134 = type { %struct.anon.137 }
%struct.anon.137 = type { i32, i32, i8 }
%union.anon.138 = type <{ %struct.anon.140, [12 x i8] }>
%struct.anon.140 = type { i48 }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.0, %struct.anon.1, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.anon.0 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.1 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nvkm_vmm_join = type { ptr, %struct.list_head }
%struct.nvkm_vmm_pt = type { [2 x ptr], [2 x i32], i8, i8, ptr, [0 x i8] }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_mmu_pt = type { %union.anon.129, ptr, i8, i16, i64, %struct.list_head }
%union.anon.129 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@nv50_vmm_pgt = internal constant %struct.nvkm_vmm_desc_func { ptr null, ptr @nv50_vmm_pgt_unmap, ptr null, ptr null, ptr @nv50_vmm_pgt_mem, ptr @nv50_vmm_pgt_dma, ptr @nv50_vmm_pgt_sgl, ptr null, ptr null, ptr null }, align 4
@nv50_vmm_pgd = internal constant %struct.nvkm_vmm_desc_func { ptr null, ptr null, ptr null, ptr @nv50_vmm_pgd_pde, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@nv50_vmm_desc_12 = dso_local constant [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 1, i8 17, i8 8, i32 4096, ptr @nv50_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 11, i8 0, i32 0, ptr @nv50_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@nv50_vmm_desc_16 = dso_local constant [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 1, i8 13, i8 8, i32 4096, ptr @nv50_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 11, i8 0, i32 0, ptr @nv50_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@.str = private unnamed_addr constant [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv50.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: %s mmu invalidate timeout\0A\00", align 1
@nvkm_subdev_type = external dso_local local_unnamed_addr global [51 x ptr], align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"%s: %s: args\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: %s: kind %02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"%s: %s: kind %02x bankswz: %d %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s: %s: comp %d %02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%s: %s: comp %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nv50_vmm = internal constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }> <{ ptr @nv50_vmm_join, ptr @nv50_vmm_part, ptr null, ptr @nv50_vmm_valid, ptr @nv50_vmm_flush, ptr null, ptr null, [4 x i8] undef, i64 536870912, [3 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 16, ptr @nv50_vmm_desc_16, i8 10 }, %struct.nvkm_vmm_page { i8 12, ptr @nv50_vmm_desc_12, i8 6 }, %struct.nvkm_vmm_page zeroinitializer] }>, align 8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_vmm_flush(ptr noundef %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_mmu, ptr %5, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_mmu, ptr %5, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %8) #7
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 53
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %11 = getelementptr inbounds %struct.nvkm_mmu, ptr %5, i32 0, i32 1, i32 5
  %12 = getelementptr inbounds %struct.nvkm_mmu, ptr %5, i32 0, i32 1, i32 4
  br label %13

13:                                               ; preds = %71, %2
  %14 = phi i32 [ 0, %2 ], [ %72, %71 ]
  %15 = getelementptr %struct.nvkm_vmm, ptr %0, i32 0, i32 14, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %71, label %18

18:                                               ; preds = %13
  switch i32 %14, label %71 [
    i32 33, label %19
    i32 50, label %30
    i32 38, label %30
    i32 16, label %25
    i32 39, label %26
    i32 36, label %26
    i32 27, label %27
    i32 40, label %27
    i32 29, label %28
    i32 46, label %28
    i32 28, label %29
  ]

19:                                               ; preds = %18
  %20 = load ptr, ptr %9, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = call i32 @nvkm_gr_tlb_flush(ptr noundef nonnull %20) #7
  %24 = icmp eq i32 %23, -19
  br i1 %24, label %30, label %71

25:                                               ; preds = %18
  br label %30

26:                                               ; preds = %18, %18
  br label %30

27:                                               ; preds = %18, %18
  br label %30

28:                                               ; preds = %18, %18
  br label %30

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %25, %22, %19, %18, %18
  %31 = phi i32 [ 851969, %29 ], [ 655361, %28 ], [ 589825, %27 ], [ 524289, %26 ], [ 393217, %25 ], [ 1, %22 ], [ 1, %19 ], [ 65537, %18 ], [ 65537, %18 ]
  %32 = load ptr, ptr %10, align 4
  %33 = getelementptr i8, ptr %32, i32 1051776
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #7, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %3) #7
  br label %34

34:                                               ; preds = %40, %30
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr i8, ptr %35, i32 1051776
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %70, label %40

40:                                               ; preds = %34
  %41 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #7
  %42 = icmp sgt i64 %41, -1
  br i1 %42, label %34, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.nvkm_timer, ptr %44, i32 0, i32 1, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = call ptr @dev_driver_string(ptr noundef %48) #7
  %50 = load ptr, ptr %3, align 8
  %51 = getelementptr inbounds %struct.nvkm_timer, ptr %50, i32 0, i32 1, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load ptr, ptr %54, align 4
  br label %60

60:                                               ; preds = %58, %43
  %61 = phi ptr [ %59, %58 ], [ %56, %43 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %49, ptr noundef %61) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  %62 = load i32, ptr %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %6, align 4
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr [51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 %14
  %69 = load ptr, ptr %68, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.2, ptr noundef %12, ptr noundef %69) #8
  br label %71

70:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  br label %71

71:                                               ; preds = %70, %64, %60, %22, %18, %13
  %72 = add nuw nsw i32 %14, 1
  %73 = icmp eq i32 %72, 51
  br i1 %73, label %74, label %13

74:                                               ; preds = %71
  %75 = load ptr, ptr %4, align 4
  %76 = getelementptr inbounds %struct.nvkm_mmu, ptr %75, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %76) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_tlb_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_vmm_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_mmu, ptr %10, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 33
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_fb, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !10
  %18 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 11
  %19 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %20 = load i8, ptr %8, align 4
  %21 = zext i8 %20 to i32
  %22 = shl nuw i32 1, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 9
  store i64 %23, ptr %24, align 8
  %25 = icmp ugt i32 %2, 4
  br i1 %25, label %26, label %46

26:                                               ; preds = %4
  %27 = load i8, ptr %1, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = icmp eq i32 %2, 5
  br i1 %30, label %31, label %48

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %1, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  %35 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %1, i32 0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  %38 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %1, i32 0, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 127
  %41 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %1, i32 0, i32 4
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 3
  %44 = select i1 %34, i8 0, i8 8
  %45 = select i1 %37, i8 0, i8 64
  br label %62

46:                                               ; preds = %4
  %47 = icmp eq i32 %2, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %46, %29, %26
  %49 = phi i32 [ -38, %46 ], [ -38, %26 ], [ -7, %29 ]
  %50 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, 3
  br i1 %52, label %53, label %218

53:                                               ; preds = %48
  %54 = load ptr, ptr %9, align 4
  %55 = getelementptr inbounds %struct.nvkm_mmu, ptr %54, i32 0, i32 1, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nvkm_mmu, ptr %54, i32 0, i32 1, i32 4
  %60 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.3, ptr noundef %59, ptr noundef %61) #8
  br label %218

62:                                               ; preds = %46, %31
  %63 = phi i8 [ %40, %31 ], [ 0, %46 ]
  %64 = phi i8 [ %43, %31 ], [ 0, %46 ]
  %65 = phi i8 [ %45, %31 ], [ 0, %46 ]
  %66 = phi i8 [ %44, %31 ], [ 0, %46 ]
  %67 = load ptr, ptr %17, align 4
  %68 = getelementptr inbounds %struct.nvkm_memory_func, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 %69(ptr noundef %17) #7
  switch i32 %70, label %79 [
    i32 1, label %71
    i32 2, label %80
    i32 3, label %78
  ]

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.nvkm_ram, ptr %16, i32 0, i32 5
  %73 = load i64, ptr %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load i64, ptr %19, align 8
  %77 = or i64 %76, %73
  store i64 %77, ptr %19, align 8
  br label %80

78:                                               ; preds = %62
  br label %80

79:                                               ; preds = %62
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 276, i32 noundef 9, ptr noundef null) #7
  br label %218

80:                                               ; preds = %78, %75, %71, %62
  %81 = phi i1 [ false, %75 ], [ false, %78 ], [ true, %71 ], [ false, %62 ]
  %82 = phi i8 [ 3, %75 ], [ 3, %78 ], [ 0, %71 ], [ 2, %62 ]
  %83 = load ptr, ptr %9, align 4
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %84, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  %87 = call ptr %86(ptr noundef %83, ptr noundef nonnull %6, ptr noundef nonnull %5) #7
  %88 = zext i8 %63 to i32
  %89 = load i32, ptr %6, align 4
  %90 = icmp sgt i32 %89, %88
  br i1 %90, label %91, label %97

91:                                               ; preds = %80
  %92 = getelementptr i8, ptr %87, i32 %88
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, ptr %5, align 1
  %96 = icmp eq i8 %93, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %91, %80
  %98 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = icmp ugt i32 %99, 3
  br i1 %100, label %101, label %218

101:                                              ; preds = %97
  %102 = load ptr, ptr %9, align 4
  %103 = getelementptr inbounds %struct.nvkm_mmu, ptr %102, i32 0, i32 1, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.nvkm_mmu, ptr %102, i32 0, i32 1, i32 4
  %108 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %109 = load ptr, ptr %108, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %106, ptr noundef nonnull @.str.4, ptr noundef %107, ptr noundef %109, i32 noundef %88) #8
  br label %218

110:                                              ; preds = %91
  %111 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 2
  %112 = load ptr, ptr %111, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %132, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.nvkm_mm_node, ptr %112, i32 0, i32 4
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i8 %116, %93
  br i1 %118, label %132, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = icmp ugt i32 %121, 3
  br i1 %122, label %123, label %218

123:                                              ; preds = %119
  %124 = load ptr, ptr %9, align 4
  %125 = getelementptr inbounds %struct.nvkm_mmu, ptr %124, i32 0, i32 1, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.nvkm_device, ptr %126, i32 0, i32 2
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr inbounds %struct.nvkm_mmu, ptr %124, i32 0, i32 1, i32 4
  %130 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %131 = load ptr, ptr %130, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %128, ptr noundef nonnull @.str.5, ptr noundef %129, ptr noundef %131, i32 noundef %88, i32 noundef %94, i32 noundef %117) #8
  br label %218

132:                                              ; preds = %114, %110
  %133 = icmp eq i8 %64, 0
  br i1 %133, label %205, label %134

134:                                              ; preds = %132
  %135 = load ptr, ptr %17, align 4
  %136 = getelementptr inbounds %struct.nvkm_memory_func, ptr %135, i32 0, i32 5
  %137 = load ptr, ptr %136, align 4
  %138 = call i64 %137(ptr noundef %17) #7
  %139 = lshr i64 %138, 16
  %140 = zext i8 %64 to i64
  %141 = mul nuw nsw i64 %139, %140
  %142 = trunc i64 %141 to i32
  %143 = zext i8 %82 to i32
  br i1 %81, label %144, label %149

144:                                              ; preds = %134
  %145 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %8, i32 0, i32 2
  %146 = load i8, ptr %145, align 4
  %147 = and i8 %146, 8
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %144, %134
  %150 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %151 = load i32, ptr %150, align 4
  %152 = icmp ugt i32 %151, 3
  br i1 %152, label %153, label %218

153:                                              ; preds = %149
  %154 = load ptr, ptr %9, align 4
  %155 = getelementptr inbounds %struct.nvkm_mmu, ptr %154, i32 0, i32 1, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.nvkm_device, ptr %156, i32 0, i32 2
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr inbounds %struct.nvkm_mmu, ptr %154, i32 0, i32 1, i32 4
  %160 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %8, i32 0, i32 2
  %163 = load i8, ptr %162, align 4
  %164 = zext i8 %163 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %158, ptr noundef nonnull @.str.6, ptr noundef %159, ptr noundef %161, i32 noundef %143, i32 noundef %164) #8
  br label %218

165:                                              ; preds = %144
  %166 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 8
  %167 = call i32 @nvkm_memory_tags_get(ptr noundef %17, ptr noundef %12, i32 noundef %142, ptr noundef null, ptr noundef %166) #7
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %182, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %171 = load i32, ptr %170, align 4
  %172 = icmp ugt i32 %171, 3
  br i1 %172, label %173, label %218

173:                                              ; preds = %169
  %174 = load ptr, ptr %9, align 4
  %175 = getelementptr inbounds %struct.nvkm_mmu, ptr %174, i32 0, i32 1, i32 1
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.nvkm_device, ptr %176, i32 0, i32 2
  %178 = load ptr, ptr %177, align 8
  %179 = getelementptr inbounds %struct.nvkm_mmu, ptr %174, i32 0, i32 1, i32 4
  %180 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %181 = load ptr, ptr %180, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %178, ptr noundef nonnull @.str.7, ptr noundef %179, ptr noundef %181, i32 noundef %167) #8
  br label %218

182:                                              ; preds = %165
  %183 = load ptr, ptr %166, align 4
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %205, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.nvkm_mm_node, ptr %184, i32 0, i32 5
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 1
  %190 = load i64, ptr %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = lshr i32 %191, 16
  %193 = add i32 %192, %188
  %194 = shl nuw nsw i64 %140, 49
  %195 = load i64, ptr %18, align 8
  %196 = or i64 %195, %194
  store i64 %196, ptr %18, align 8
  %197 = shl nuw nsw i64 %140, 47
  %198 = load i64, ptr %19, align 8
  %199 = or i64 %198, %197
  %200 = zext i32 %193 to i64
  %201 = shl i64 %200, 49
  %202 = or i64 %199, %201
  store i64 %202, ptr %19, align 8
  %203 = load i64, ptr %24, align 8
  %204 = or i64 %203, %196
  store i64 %204, ptr %24, align 8
  br label %205

205:                                              ; preds = %186, %182, %132
  %206 = load i64, ptr %19, align 8
  %207 = zext i8 %66 to i64
  %208 = shl nuw nsw i8 %82, 4
  %209 = zext i8 %208 to i64
  %210 = zext i8 %65 to i64
  %211 = zext i8 %63 to i64
  %212 = shl nuw nsw i64 %211, 40
  %213 = or i64 %212, %210
  %214 = or i64 %213, %207
  %215 = or i64 %214, %209
  %216 = or i64 %215, %206
  %217 = or i64 %216, 1
  store i64 %217, ptr %19, align 8
  br label %218

218:                                              ; preds = %205, %173, %169, %153, %149, %123, %119, %101, %97, %79, %53, %48
  %219 = phi i32 [ -22, %79 ], [ 0, %205 ], [ %49, %53 ], [ %49, %48 ], [ -22, %101 ], [ -22, %97 ], [ -22, %123 ], [ -22, %119 ], [ %167, %169 ], [ %167, %173 ], [ -22, %149 ], [ -22, %153 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  ret i32 %219
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_tags_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_vmm_part(ptr noundef readonly %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 9
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -4
  %14 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  tail call void @kfree(ptr noundef %13) #7
  br label %18

18:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_vmm_join(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %6, i32 0, i32 4, i32 3
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !10
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 12) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %74, label %12

12:                                               ; preds = %2
  store ptr %1, ptr %10, align 8
  %13 = getelementptr inbounds %struct.nvkm_vmm_join, ptr %10, i32 0, i32 1
  %14 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 9
  %15 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 9, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %13, ptr %15, align 4
  store ptr %14, ptr %13, align 4
  %17 = getelementptr inbounds %struct.nvkm_vmm_join, ptr %10, i32 0, i32 1, i32 1
  store ptr %16, ptr %17, align 8
  store volatile ptr %13, ptr %16, align 4
  %18 = load ptr, ptr %10, align 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_memory_func, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr %21(ptr noundef %18) #7
  %23 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 6
  %24 = load i64, ptr %23, align 8
  %25 = lshr i64 %24, 29
  %26 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 7
  %27 = and i64 %25, 4294967295
  %28 = load i64, ptr %26, align 8
  %29 = add i64 %28, -1
  %30 = lshr i64 %29, 29
  %31 = icmp ult i64 %30, %27
  br i1 %31, label %68, label %32

32:                                               ; preds = %12
  %33 = trunc i64 %25 to i32
  %34 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 8
  br label %35

35:                                               ; preds = %43, %32
  %36 = phi i32 [ %33, %32 ], [ %62, %43 ]
  %37 = load ptr, ptr %34, align 8
  %38 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %37, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr ptr, ptr %39, i32 %36
  %41 = load ptr, ptr %40, align 4
  %42 = call fastcc zeroext i1 @nv50_vmm_pde(ptr noundef %41, ptr noundef nonnull %3)
  br i1 %42, label %43, label %68

43:                                               ; preds = %35
  %44 = shl i32 %36, 3
  %45 = add i32 %44, %8
  %46 = zext i32 %45 to i64
  %47 = load i64, ptr %3, align 8
  %48 = load ptr, ptr %10, align 8
  %49 = getelementptr inbounds %struct.nvkm_memory, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = trunc i64 %47 to i32
  tail call void %52(ptr noundef %48, i64 noundef %46, i32 noundef %53) #7
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds %struct.nvkm_memory, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = add nuw nsw i64 %46, 4
  %60 = lshr i64 %47, 32
  %61 = trunc i64 %60 to i32
  tail call void %58(ptr noundef %54, i64 noundef %59, i32 noundef %61) #7
  %62 = add i32 %36, 1
  %63 = zext i32 %62 to i64
  %64 = load i64, ptr %26, align 8
  %65 = add i64 %64, -1
  %66 = lshr i64 %65, 29
  %67 = icmp ult i64 %66, %63
  br i1 %67, label %68, label %35

68:                                               ; preds = %43, %35, %12
  %69 = phi i32 [ 0, %12 ], [ -22, %35 ], [ 0, %43 ]
  %70 = load ptr, ptr %10, align 8
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nvkm_memory_func, ptr %71, i32 0, i32 8
  %73 = load ptr, ptr %72, align 4
  tail call void %73(ptr noundef %70) #7
  br label %74

74:                                               ; preds = %68, %2
  %75 = phi i32 [ %69, %68 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nv50_vmm_pde(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %40, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  switch i8 %9, label %21 [
    i8 16, label %22
    i8 12, label %10
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_memory_func, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i64 %15(ptr noundef %12) #7
  switch i64 %16, label %20 [
    i64 1048576, label %22
    i64 262144, label %17
    i64 131072, label %18
    i64 65536, label %19
  ]

17:                                               ; preds = %10
  br label %22

18:                                               ; preds = %10
  br label %22

19:                                               ; preds = %10
  br label %22

20:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef null) #7
  br label %42

21:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 125, i32 noundef 9, ptr noundef null) #7
  br label %42

22:                                               ; preds = %19, %18, %17, %10, %7
  %23 = phi i64 [ 99, %19 ], [ 67, %18 ], [ 35, %17 ], [ 1, %7 ], [ 3, %10 ]
  %24 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %5, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_memory_func, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %25) #7
  switch i32 %29, label %34 [
    i32 1, label %35
    i32 2, label %30
    i32 3, label %32
  ]

30:                                               ; preds = %22
  %31 = or i64 %23, 8
  br label %35

32:                                               ; preds = %22
  %33 = or i64 %23, 12
  br label %35

34:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef null) #7
  br label %42

35:                                               ; preds = %32, %30, %22
  %36 = phi i64 [ %33, %32 ], [ %31, %30 ], [ %23, %22 ]
  %37 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %5, i32 0, i32 4
  %38 = load i64, ptr %37, align 8
  %39 = or i64 %38, %36
  br label %40

40:                                               ; preds = %35, %4, %2
  %41 = phi i64 [ %39, %35 ], [ -2401039834048102400, %4 ], [ -2401039834048102400, %2 ]
  store i64 %41, ptr %1, align 8
  br label %42

42:                                               ; preds = %40, %34, %21, %20
  %43 = phi i1 [ false, %21 ], [ false, %20 ], [ false, %34 ], [ true, %40 ]
  ret i1 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_vmm_new(ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = tail call i32 @nv04_vmm_new_(ptr noundef nonnull @nv50_vmm, ptr noundef %0, i32 noundef 0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #7
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_vmm_new_(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_vmm_pgt_unmap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = shl i32 %2, 3
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = add i32 %5, %8
  %10 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_memory_func, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %11) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22, !prof !13

17:                                               ; preds = %4
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %17
  %20 = zext i32 %9 to i64
  %21 = zext i32 %3 to i64
  br label %26

22:                                               ; preds = %4
  %23 = shl i32 %3, 3
  %24 = lshr i32 %9, 3
  %25 = getelementptr i64, ptr %15, i32 %24
  tail call void @mmioset(ptr noundef %25, i32 noundef 0, i32 noundef %23) #7
  br label %43

26:                                               ; preds = %26, %19
  %27 = phi i64 [ %41, %26 ], [ %20, %19 ]
  %28 = phi i64 [ %40, %26 ], [ %21, %19 ]
  %29 = load ptr, ptr %10, align 4
  %30 = getelementptr inbounds %struct.nvkm_memory, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %29, i64 noundef %27, i32 noundef 0) #7
  %34 = load ptr, ptr %10, align 4
  %35 = getelementptr inbounds %struct.nvkm_memory, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = add nuw nsw i64 %27, 4
  tail call void %38(ptr noundef %34, i64 noundef %39, i32 noundef 0) #7
  %40 = add nsw i64 %28, -1
  %41 = add nuw nsw i64 %27, 8
  %42 = icmp eq i64 %40, 0
  br i1 %42, label %43, label %26

43:                                               ; preds = %26, %22, %17
  %44 = load ptr, ptr %10, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_memory_func, ptr %45, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef %44) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_vmm_pgt_mem(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr %10(ptr noundef %7) #7
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 2
  %15 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 6
  %16 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  br label %17

17:                                               ; preds = %47, %13
  %18 = phi i32 [ %2, %13 ], [ %49, %47 ]
  %19 = phi i32 [ %3, %13 ], [ %50, %47 ]
  %20 = load ptr, ptr %14, align 8
  %21 = getelementptr inbounds %struct.nvkm_mm_node, ptr %20, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 12
  %25 = load i64, ptr %15, align 8
  %26 = sub i64 %24, %25
  %27 = load ptr, ptr %16, align 8
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i64
  %30 = lshr i64 %26, %29
  %31 = getelementptr inbounds %struct.nvkm_mm_node, ptr %20, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = zext i32 %32 to i64
  %34 = shl nuw nsw i64 %33, 12
  %35 = add i64 %34, %25
  %36 = zext i32 %19 to i64
  %37 = icmp ugt i64 %30, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %17
  %39 = zext i8 %28 to i32
  %40 = shl i32 %19, %39
  %41 = zext i32 %40 to i64
  %42 = add i64 %25, %41
  store i64 %42, ptr %15, align 8
  br label %47

43:                                               ; preds = %17
  store i64 0, ptr %15, align 8
  %44 = getelementptr inbounds %struct.nvkm_mm_node, ptr %20, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  store ptr %45, ptr %14, align 8
  %46 = trunc i64 %30 to i32
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i32 [ %19, %38 ], [ %46, %43 ]
  tail call fastcc void @nv50_vmm_pgt_pte(ptr noundef %1, i32 noundef %18, i32 noundef %48, ptr noundef %4, i64 noundef %35)
  %49 = add i32 %48, %18
  %50 = sub i32 %19, %48
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %17

52:                                               ; preds = %47, %5
  %53 = load ptr, ptr %6, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_memory_func, ptr %54, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef %53) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_vmm_pgt_dma(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  %7 = load ptr, ptr %6, align 8
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 12
  %10 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_memory_func, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %11) #7
  %16 = icmp eq i32 %3, 0
  br i1 %9, label %17, label %58

17:                                               ; preds = %5
  br i1 %16, label %90, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 4
  %20 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 10
  %21 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %22 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 11
  %23 = load i64, ptr %20, align 8
  br label %24

24:                                               ; preds = %24, %18
  %25 = phi i64 [ %23, %18 ], [ %56, %24 ]
  %26 = phi i32 [ %2, %18 ], [ %34, %24 ]
  %27 = phi i32 [ %3, %18 ], [ %28, %24 ]
  %28 = add i32 %27, -1
  %29 = load ptr, ptr %19, align 8
  %30 = getelementptr i32, ptr %29, i32 1
  store ptr %30, ptr %19, align 8
  %31 = load i32, ptr %29, align 4
  %32 = zext i32 %31 to i64
  %33 = add i64 %25, %32
  %34 = add i32 %26, 1
  %35 = shl i32 %26, 3
  %36 = load i16, ptr %21, align 2
  %37 = zext i16 %36 to i32
  %38 = add i32 %35, %37
  %39 = zext i32 %38 to i64
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr inbounds %struct.nvkm_memory, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = trunc i64 %33 to i32
  tail call void %44(ptr noundef %40, i64 noundef %39, i32 noundef %45) #7
  %46 = load ptr, ptr %10, align 4
  %47 = getelementptr inbounds %struct.nvkm_memory, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = add nuw nsw i64 %39, 4
  %52 = lshr i64 %33, 32
  %53 = trunc i64 %52 to i32
  tail call void %50(ptr noundef %46, i64 noundef %51, i32 noundef %53) #7
  %54 = load i64, ptr %22, align 8
  %55 = load i64, ptr %20, align 8
  %56 = add i64 %55, %54
  store i64 %56, ptr %20, align 8
  %57 = icmp eq i32 %28, 0
  br i1 %57, label %90, label %24

58:                                               ; preds = %5
  br i1 %16, label %90, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 6
  %61 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 4
  br label %62

62:                                               ; preds = %85, %59
  %63 = phi i32 [ %2, %59 ], [ %87, %85 ]
  %64 = phi i32 [ %3, %59 ], [ %88, %85 ]
  %65 = load i64, ptr %60, align 8
  %66 = sub i64 4096, %65
  %67 = load ptr, ptr %6, align 8
  %68 = load i8, ptr %67, align 4
  %69 = zext i8 %68 to i64
  %70 = lshr i64 %66, %69
  %71 = load ptr, ptr %61, align 8
  %72 = load i32, ptr %71, align 4
  %73 = zext i32 %72 to i64
  %74 = add i64 %65, %73
  %75 = zext i32 %64 to i64
  %76 = icmp ugt i64 %70, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %62
  %78 = zext i8 %68 to i32
  %79 = shl i32 %64, %78
  %80 = zext i32 %79 to i64
  %81 = add i64 %65, %80
  store i64 %81, ptr %60, align 8
  br label %85

82:                                               ; preds = %62
  store i64 0, ptr %60, align 8
  %83 = getelementptr i32, ptr %71, i32 1
  store ptr %83, ptr %61, align 8
  %84 = trunc i64 %70 to i32
  br label %85

85:                                               ; preds = %82, %77
  %86 = phi i32 [ %64, %77 ], [ %84, %82 ]
  tail call fastcc void @nv50_vmm_pgt_pte(ptr noundef %1, i32 noundef %63, i32 noundef %86, ptr noundef %4, i64 noundef %74)
  %87 = add i32 %86, %63
  %88 = sub i32 %64, %86
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %62

90:                                               ; preds = %85, %58, %24, %17
  %91 = load ptr, ptr %10, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.nvkm_memory_func, ptr %92, i32 0, i32 8
  %94 = load ptr, ptr %93, align 4
  tail call void %94(ptr noundef %91) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_vmm_pgt_sgl(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr %10(ptr noundef %7) #7
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %49, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 3
  %15 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 6
  %16 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  br label %17

17:                                               ; preds = %44, %13
  %18 = phi i32 [ %2, %13 ], [ %46, %44 ]
  %19 = phi i32 [ %3, %13 ], [ %47, %44 ]
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr inbounds %struct.scatterlist, ptr %20, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %22 to i64
  %24 = load i64, ptr %15, align 8
  %25 = sub i64 %23, %24
  %26 = load ptr, ptr %16, align 8
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i64
  %29 = lshr i64 %25, %28
  %30 = getelementptr inbounds %struct.scatterlist, ptr %20, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = zext i32 %31 to i64
  %33 = add i64 %24, %32
  %34 = zext i32 %19 to i64
  %35 = icmp ugt i64 %29, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %17
  %37 = zext i8 %27 to i32
  %38 = shl i32 %19, %37
  %39 = zext i32 %38 to i64
  %40 = add i64 %24, %39
  store i64 %40, ptr %15, align 8
  br label %44

41:                                               ; preds = %17
  store i64 0, ptr %15, align 8
  %42 = tail call ptr @sg_next(ptr noundef %20) #7
  store ptr %42, ptr %14, align 4
  %43 = trunc i64 %29 to i32
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi i32 [ %19, %36 ], [ %43, %41 ]
  tail call fastcc void @nv50_vmm_pgt_pte(ptr noundef %1, i32 noundef %18, i32 noundef %45, ptr noundef %4, i64 noundef %33)
  %46 = add i32 %45, %18
  %47 = sub i32 %19, %45
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %17

49:                                               ; preds = %44, %5
  %50 = load ptr, ptr %6, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nvkm_memory_func, ptr %51, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %50) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_vmm_pgt_pte(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, i64 noundef %4) unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 10
  %7 = load i64, ptr %6, align 8
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 11
  %10 = load i64, ptr %9, align 8
  %11 = mul i64 %10, %8
  %12 = add i64 %11, %7
  store i64 %12, ptr %6, align 8
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %97, label %14

14:                                               ; preds = %5
  %15 = add i64 %7, %4
  %16 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 9
  %17 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %0, i32 0, i32 3
  %18 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %0, i32 0, i32 1
  br label %22

19:                                               ; preds = %75
  %20 = sub i32 %24, %65
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %97, label %22

22:                                               ; preds = %19, %14
  %23 = phi i32 [ %1, %14 ], [ %79, %19 ]
  %24 = phi i32 [ %2, %14 ], [ %20, %19 ]
  %25 = phi i64 [ %15, %14 ], [ %70, %19 ]
  %26 = icmp ult i32 %24, 128
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = and i32 %23, 127
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %64, label %32

30:                                               ; preds = %22
  %31 = icmp ult i32 %24, 64
  br i1 %31, label %35, label %32

32:                                               ; preds = %30, %27
  %33 = and i32 %23, 63
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %64, label %37

35:                                               ; preds = %30
  %36 = icmp ult i32 %24, 32
  br i1 %36, label %40, label %37

37:                                               ; preds = %35, %32
  %38 = and i32 %23, 31
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %64, label %42

40:                                               ; preds = %35
  %41 = icmp ult i32 %24, 16
  br i1 %41, label %45, label %42

42:                                               ; preds = %40, %37
  %43 = and i32 %23, 15
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %64, label %47

45:                                               ; preds = %40
  %46 = icmp ult i32 %24, 8
  br i1 %46, label %50, label %47

47:                                               ; preds = %45, %42
  %48 = and i32 %23, 7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %64, label %52

50:                                               ; preds = %45
  %51 = icmp ult i32 %24, 4
  br i1 %51, label %55, label %52

52:                                               ; preds = %50, %47
  %53 = and i32 %23, 3
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %60

55:                                               ; preds = %50
  %56 = icmp ugt i32 %24, 1
  %57 = and i32 %23, 1
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %64, label %63

60:                                               ; preds = %52
  %61 = and i32 %23, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %60, %55, %52, %47, %42, %37, %32, %27
  %65 = phi i32 [ 128, %27 ], [ 64, %32 ], [ 32, %37 ], [ 16, %42 ], [ 8, %47 ], [ 4, %52 ], [ 2, %60 ], [ 1, %63 ], [ 2, %55 ]
  %66 = phi i32 [ 896, %27 ], [ 768, %32 ], [ 640, %37 ], [ 512, %42 ], [ 384, %47 ], [ 256, %52 ], [ 128, %60 ], [ 0, %63 ], [ 128, %55 ]
  %67 = zext i32 %65 to i64
  %68 = load i64, ptr %16, align 8
  %69 = mul i64 %68, %67
  %70 = add i64 %69, %25
  %71 = trunc i64 %25 to i32
  %72 = or i32 %66, %71
  %73 = lshr i64 %25, 32
  %74 = trunc i64 %73 to i32
  br label %75

75:                                               ; preds = %75, %64
  %76 = phi i32 [ %23, %64 ], [ %79, %75 ]
  %77 = phi i32 [ %65, %64 ], [ %78, %75 ]
  %78 = add nsw i32 %77, -1
  %79 = add i32 %76, 1
  %80 = shl i32 %76, 3
  %81 = load i16, ptr %17, align 2
  %82 = zext i16 %81 to i32
  %83 = add i32 %80, %82
  %84 = zext i32 %83 to i64
  %85 = load ptr, ptr %18, align 4
  %86 = getelementptr inbounds %struct.nvkm_memory, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  tail call void %89(ptr noundef %85, i64 noundef %84, i32 noundef %72) #7
  %90 = load ptr, ptr %18, align 4
  %91 = getelementptr inbounds %struct.nvkm_memory, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = add nuw nsw i64 %84, 4
  tail call void %94(ptr noundef %90, i64 noundef %95, i32 noundef %74) #7
  %96 = icmp eq i32 %78, 0
  br i1 %96, label %19, label %75

97:                                               ; preds = %19, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_vmm_pgd_pde(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %7, i32 0, i32 4, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %2, 3
  %11 = add i32 %9, %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !10
  %12 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %1, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %2
  %15 = load ptr, ptr %14, align 4
  %16 = call fastcc zeroext i1 @nv50_vmm_pde(ptr noundef %15, ptr noundef nonnull %4)
  br i1 %16, label %17, label %52

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %52, label %21

21:                                               ; preds = %17
  %22 = zext i32 %11 to i64
  %23 = load i64, ptr %4, align 8
  %24 = trunc i64 %23 to i32
  %25 = add nuw nsw i64 %22, 4
  %26 = lshr i64 %23, 32
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %28, %21
  %29 = phi ptr [ %19, %21 ], [ %50, %28 ]
  %30 = getelementptr i8, ptr %29, i32 -4
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_memory_func, ptr %32, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = tail call ptr %34(ptr noundef %31) #7
  %36 = load ptr, ptr %30, align 4
  %37 = getelementptr inbounds %struct.nvkm_memory, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %36, i64 noundef %22, i32 noundef %24) #7
  %41 = load ptr, ptr %30, align 4
  %42 = getelementptr inbounds %struct.nvkm_memory, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef %41, i64 noundef %25, i32 noundef %27) #7
  %46 = load ptr, ptr %30, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nvkm_memory_func, ptr %47, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef %46) #7
  %50 = load ptr, ptr %29, align 4
  %51 = icmp eq ptr %50, %18
  br i1 %51, label %52, label %28

52:                                               ; preds = %28, %17, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2151508859}
!9 = !{i64 3967766}
!10 = !{!"auto-init"}
!11 = !{i64 3968184}
!12 = !{i64 2151507637}
!13 = !{!"branch_weights", i32 1, i32 2000}
