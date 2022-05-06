; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv41.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv41.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.124], i32, [16 x %struct.anon.125], ptr, %struct.anon.126, %struct.anon.126, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.124 = type { i8, i64 }
%struct.anon.125 = type { i8, i8 }
%struct.anon.126 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.123, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.anon.123 = type { %struct.notifier_block }
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
%struct.nvkm_mmu_pt = type { %union.anon, ptr, i8, i16, i64, %struct.list_head }
%union.anon = type { ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@nv41_vmm_desc_12 = internal constant [2 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 1, i8 17, i8 4, i32 4096, ptr @nv41_vmm_desc_pgt }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@nv41_vmm = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [2 x %struct.nvkm_vmm_page] } { ptr null, ptr null, ptr null, ptr @nv04_vmm_valid, ptr @nv41_vmm_flush, ptr null, ptr null, i64 0, [2 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 12, ptr @nv41_vmm_desc_12, i8 4 }, %struct.nvkm_vmm_page zeroinitializer] }, align 8
@.str = private unnamed_addr constant [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv41.c\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@nv41_vmm_desc_pgt = internal constant %struct.nvkm_vmm_desc_func { ptr null, ptr @nv41_vmm_pgt_unmap, ptr null, ptr null, ptr null, ptr @nv41_vmm_pgt_dma, ptr @nv41_vmm_pgt_sgl, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv41_vmm_new(ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = tail call i32 @nv04_vmm_new_(ptr noundef nonnull @nv41_vmm, ptr noundef %0, i32 noundef 0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #4
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_vmm_new_(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_vmm_valid(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv41_vmm_flush(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_mmu, ptr %5, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_mmu, ptr %5, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %8) #4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 1050640
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 34) #4, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %3) #4
  br label %12

12:                                               ; preds = %18, %2
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr i8, ptr %13, i32 1050640
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #4
  %20 = icmp sgt i64 %19, -1
  br i1 %20, label %12, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.nvkm_timer, ptr %22, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = call ptr @dev_driver_string(ptr noundef %26) #4
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.nvkm_timer, ptr %28, i32 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load ptr, ptr %32, align 4
  br label %38

38:                                               ; preds = %36, %21
  %39 = phi ptr [ %37, %36 ], [ %34, %21 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %27, ptr noundef %39) #4
  br label %40

40:                                               ; preds = %38, %12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #4
  %41 = load ptr, ptr %9, align 4
  %42 = getelementptr i8, ptr %41, i32 1050640
  call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  call void @arm_heavy_mb() #4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #4, !srcloc !9
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr inbounds %struct.nvkm_mmu, ptr %43, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %44) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv41_vmm_pgt_unmap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = shl i32 %2, 2
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = add i32 %5, %8
  %10 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_memory_func, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %11) #4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22, !prof !13

17:                                               ; preds = %4
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %17
  %20 = zext i32 %9 to i64
  %21 = zext i32 %3 to i64
  br label %26

22:                                               ; preds = %4
  %23 = shl i32 %3, 2
  %24 = lshr i32 %9, 2
  %25 = getelementptr i32, ptr %15, i32 %24
  tail call void @mmioset(ptr noundef %25, i32 noundef 0, i32 noundef %23) #4
  br label %37

26:                                               ; preds = %26, %19
  %27 = phi i64 [ %34, %26 ], [ %21, %19 ]
  %28 = phi i64 [ %35, %26 ], [ %20, %19 ]
  %29 = load ptr, ptr %10, align 4
  %30 = getelementptr inbounds %struct.nvkm_memory, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %29, i64 noundef %28, i32 noundef 0) #4
  %34 = add nsw i64 %27, -1
  %35 = add nuw nsw i64 %28, 4
  %36 = icmp eq i64 %34, 0
  br i1 %36, label %37, label %26

37:                                               ; preds = %26, %22, %17
  %38 = load ptr, ptr %10, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvkm_memory_func, ptr %39, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  tail call void %41(ptr noundef %38) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv41_vmm_pgt_dma(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr %10(ptr noundef %7) #4
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 4
  %15 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i32 [ %2, %13 ], [ %25, %16 ]
  %18 = phi i32 [ %3, %13 ], [ %19, %16 ]
  %19 = add i32 %18, -1
  %20 = load ptr, ptr %14, align 8
  %21 = getelementptr i32, ptr %20, i32 1
  store ptr %21, ptr %14, align 8
  %22 = load i32, ptr %20, align 4
  %23 = lshr i32 %22, 7
  %24 = or i32 %23, 1
  %25 = add i32 %17, 1
  %26 = shl i32 %17, 2
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds %struct.nvkm_memory, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load i16, ptr %15, align 2
  %33 = zext i16 %32 to i32
  %34 = add i32 %26, %33
  %35 = zext i32 %34 to i64
  tail call void %31(ptr noundef %27, i64 noundef %35, i32 noundef %24) #4
  %36 = icmp eq i32 %19, 0
  br i1 %36, label %37, label %16

37:                                               ; preds = %16, %5
  %38 = load ptr, ptr %6, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvkm_memory_func, ptr %39, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  tail call void %41(ptr noundef %38) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv41_vmm_pgt_sgl(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr %10(ptr noundef %7) #4
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %74, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 3
  %15 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 6
  %16 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  %17 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  br label %18

18:                                               ; preds = %69, %13
  %19 = phi i32 [ %2, %13 ], [ %71, %69 ]
  %20 = phi i32 [ %3, %13 ], [ %72, %69 ]
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, ptr %15, align 8
  %26 = sub i64 %24, %25
  %27 = load ptr, ptr %16, align 8
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i64
  %30 = lshr i64 %26, %29
  %31 = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = zext i32 %32 to i64
  %34 = add i64 %25, %33
  %35 = zext i32 %20 to i64
  %36 = icmp ugt i64 %30, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %18
  %38 = zext i8 %28 to i32
  %39 = shl i32 %20, %38
  %40 = zext i32 %39 to i64
  %41 = add i64 %25, %40
  store i64 %41, ptr %15, align 8
  br label %46

42:                                               ; preds = %18
  store i64 0, ptr %15, align 8
  %43 = tail call ptr @sg_next(ptr noundef %21) #4
  store ptr %43, ptr %14, align 4
  %44 = trunc i64 %30 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %42, %37
  %47 = phi i32 [ %20, %37 ], [ %44, %42 ]
  %48 = lshr i64 %34, 7
  %49 = trunc i64 %48 to i32
  %50 = or i32 %49, 1
  br label %51

51:                                               ; preds = %51, %46
  %52 = phi i32 [ %19, %46 ], [ %56, %51 ]
  %53 = phi i32 [ %47, %46 ], [ %55, %51 ]
  %54 = phi i32 [ %50, %46 ], [ %67, %51 ]
  %55 = add i32 %53, -1
  %56 = add i32 %52, 1
  %57 = shl i32 %52, 2
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr inbounds %struct.nvkm_memory, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = load i16, ptr %17, align 2
  %64 = zext i16 %63 to i32
  %65 = add i32 %57, %64
  %66 = zext i32 %65 to i64
  tail call void %62(ptr noundef %58, i64 noundef %66, i32 noundef %54) #4
  %67 = add i32 %54, 32
  %68 = icmp eq i32 %55, 0
  br i1 %68, label %69, label %51

69:                                               ; preds = %51, %42
  %70 = phi i32 [ 0, %42 ], [ %47, %51 ]
  %71 = add i32 %70, %19
  %72 = sub i32 %20, %70
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %18

74:                                               ; preds = %69, %5
  %75 = load ptr, ptr %6, align 4
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nvkm_memory_func, ptr %76, i32 0, i32 8
  %78 = load ptr, ptr %77, align 4
  tail call void %78(ptr noundef %75) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 2151502608}
!9 = !{i64 3961515}
!10 = !{!"auto-init"}
!11 = !{i64 3961933}
!12 = !{i64 2151501386}
!13 = !{!"branch_weights", i32 1, i32 2000}
