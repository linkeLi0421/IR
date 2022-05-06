; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv44.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv44.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.124], i32, [16 x %struct.anon.125], ptr, %struct.anon.126, %struct.anon.126, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.124 = type { i8, i64 }
%struct.anon.125 = type { i8, i8 }
%struct.anon.126 = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.123, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.anon.123 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
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

@.str = private unnamed_addr constant [36 x i8] c"%s: unable to allocate dummy pages\0A\00", align 1
@nv44_vmm_desc_12 = internal constant [2 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 1, i8 17, i8 4, i32 524288, ptr @nv44_vmm_desc_pgt }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@nv44_vmm = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [2 x %struct.nvkm_vmm_page] } { ptr null, ptr null, ptr null, ptr @nv04_vmm_valid, ptr @nv44_vmm_flush, ptr null, ptr null, i64 0, [2 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 12, ptr @nv44_vmm_desc_12, i8 4 }, %struct.nvkm_vmm_page zeroinitializer] }, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv44.c\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@nv44_vmm_desc_pgt = internal constant %struct.nvkm_vmm_desc_func { ptr null, ptr @nv44_vmm_pgt_unmap, ptr null, ptr null, ptr null, ptr @nv44_vmm_pgt_dma, ptr @nv44_vmm_pgt_sgl, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv44_vmm_new(ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store ptr null, ptr %10, align 4, !annotation !8
  %11 = call i32 @nv04_vmm_new_(ptr noundef nonnull @nv44_vmm, ptr noundef %0, i32 noundef 0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %10) #6
  %12 = load ptr, ptr %10, align 4
  store ptr %12, ptr %8, align 4
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nvkm_vmm, ptr %12, i32 0, i32 15
  %20 = call ptr @dma_alloc_attrs(ptr noundef %18, i32 noundef 16384, ptr noundef %19, i32 noundef 3264, i32 noundef 0) #6
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.nvkm_vmm, ptr %21, i32 0, i32 16
  store ptr %20, ptr %22, align 8
  %23 = icmp eq ptr %20, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 1, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load ptr, ptr %15, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %31, ptr noundef nonnull @.str, ptr noundef %32) #7
  %33 = load ptr, ptr %10, align 4
  br label %34

34:                                               ; preds = %28, %24
  %35 = phi ptr [ %33, %28 ], [ %21, %24 ]
  %36 = getelementptr inbounds %struct.nvkm_vmm, ptr %35, i32 0, i32 15
  store i32 0, ptr %36, align 4
  br label %37

37:                                               ; preds = %34, %14, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_vmm_new_(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_vmm_valid(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv44_vmm_flush(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_mmu, ptr %5, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 7
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = add i32 %10, -4096
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 1050644
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #6, !srcloc !10
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr i8, ptr %15, i32 1050632
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 32) #6, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %3) #6
  br label %17

17:                                               ; preds = %23, %2
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr i8, ptr %18, i32 1050632
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #6
  %25 = icmp sgt i64 %24, -1
  br i1 %25, label %17, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds %struct.nvkm_timer, ptr %27, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = call ptr @dev_driver_string(ptr noundef %31) #6
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.nvkm_timer, ptr %33, i32 0, i32 1, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = load ptr, ptr %37, align 4
  br label %43

43:                                               ; preds = %41, %26
  %44 = phi ptr [ %42, %41 ], [ %39, %26 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 193, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %32, ptr noundef %44) #6
  br label %45

45:                                               ; preds = %43, %17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  %46 = load ptr, ptr %12, align 4
  %47 = getelementptr i8, ptr %46, i32 1050632
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !9
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #6, !srcloc !10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv44_vmm_pgt_unmap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %9(ptr noundef %6) #6
  %11 = and i32 %2, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = sub nuw nsw i32 4, %11
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %3)
  tail call fastcc void @nv44_vmm_pgt_fill(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %2, i32 noundef %15)
  %16 = add i32 %15, %2
  %17 = sub i32 %3, %15
  br label %18

18:                                               ; preds = %13, %4
  %19 = phi i32 [ %17, %13 ], [ %3, %4 ]
  %20 = phi i32 [ %16, %13 ], [ %2, %4 ]
  %21 = icmp ugt i32 %19, 4
  br i1 %21, label %22, label %70

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ %20, %22 ], [ %57, %24 ]
  %26 = phi i32 [ %19, %22 ], [ %68, %24 ]
  %27 = shl i32 %25, 2
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.nvkm_memory, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load i16, ptr %23, align 2
  %34 = zext i16 %33 to i32
  %35 = add i32 %27, %34
  %36 = zext i32 %35 to i64
  tail call void %32(ptr noundef %28, i64 noundef %36, i32 noundef 0) #6
  %37 = add i32 %27, 4
  %38 = load ptr, ptr %5, align 4
  %39 = getelementptr inbounds %struct.nvkm_memory, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load i16, ptr %23, align 2
  %44 = zext i16 %43 to i32
  %45 = add i32 %37, %44
  %46 = zext i32 %45 to i64
  tail call void %42(ptr noundef %38, i64 noundef %46, i32 noundef 0) #6
  %47 = add i32 %27, 8
  %48 = load ptr, ptr %5, align 4
  %49 = getelementptr inbounds %struct.nvkm_memory, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load i16, ptr %23, align 2
  %54 = zext i16 %53 to i32
  %55 = add i32 %47, %54
  %56 = zext i32 %55 to i64
  tail call void %52(ptr noundef %48, i64 noundef %56, i32 noundef 0) #6
  %57 = add i32 %25, 4
  %58 = add i32 %27, 12
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr inbounds %struct.nvkm_memory, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = load i16, ptr %23, align 2
  %65 = zext i16 %64 to i32
  %66 = add i32 %58, %65
  %67 = zext i32 %66 to i64
  tail call void %63(ptr noundef %59, i64 noundef %67, i32 noundef 0) #6
  %68 = add i32 %26, -4
  %69 = icmp ugt i32 %68, 4
  br i1 %69, label %24, label %72

70:                                               ; preds = %18
  %71 = icmp eq i32 %19, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %70, %24
  %73 = phi i32 [ %20, %70 ], [ %57, %24 ]
  %74 = phi i32 [ %19, %70 ], [ %68, %24 ]
  tail call fastcc void @nv44_vmm_pgt_fill(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %73, i32 noundef %74)
  br label %75

75:                                               ; preds = %72, %70
  %76 = load ptr, ptr %5, align 4
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_memory_func, ptr %77, i32 0, i32 8
  %79 = load ptr, ptr %78, align 4
  tail call void %79(ptr noundef %76) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv44_vmm_pgt_dma(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr %10(ptr noundef %7) #6
  %12 = and i32 %2, 3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %5
  %15 = sub nuw nsw i32 4, %12
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %3)
  %17 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  tail call fastcc void @nv44_vmm_pgt_fill(ptr noundef %0, ptr noundef %1, ptr noundef %18, i32 noundef %2, i32 noundef %16)
  %19 = add i32 %16, %2
  %20 = sub i32 %3, %16
  %21 = load ptr, ptr %17, align 8
  %22 = getelementptr i32, ptr %21, i32 %16
  store ptr %22, ptr %17, align 8
  br label %23

23:                                               ; preds = %14, %5
  %24 = phi i32 [ %20, %14 ], [ %3, %5 ]
  %25 = phi i32 [ %19, %14 ], [ %2, %5 ]
  %26 = icmp ugt i32 %24, 3
  br i1 %26, label %27, label %99

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 4
  %29 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  br label %30

30:                                               ; preds = %30, %27
  %31 = phi i32 [ %25, %27 ], [ %84, %30 ]
  %32 = phi i32 [ %24, %27 ], [ %97, %30 ]
  %33 = load ptr, ptr %28, align 8
  %34 = getelementptr i32, ptr %33, i32 1
  store ptr %34, ptr %28, align 8
  %35 = load i32, ptr %33, align 4
  %36 = lshr i32 %35, 12
  %37 = getelementptr i32, ptr %33, i32 2
  store ptr %37, ptr %28, align 8
  %38 = load i32, ptr %34, align 4
  %39 = getelementptr i32, ptr %33, i32 3
  store ptr %39, ptr %28, align 8
  %40 = load i32, ptr %37, align 4
  %41 = getelementptr i32, ptr %33, i32 4
  store ptr %41, ptr %28, align 8
  %42 = load i32, ptr %39, align 4
  %43 = shl i32 %31, 2
  %44 = shl i32 %38, 15
  %45 = and i32 %44, -134217728
  %46 = or i32 %45, %36
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr inbounds %struct.nvkm_memory, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load i16, ptr %29, align 2
  %53 = zext i16 %52 to i32
  %54 = add i32 %43, %53
  %55 = zext i32 %54 to i64
  tail call void %51(ptr noundef %47, i64 noundef %55, i32 noundef %46) #6
  %56 = add i32 %43, 4
  %57 = lshr i32 %38, 17
  %58 = shl i32 %40, 10
  %59 = and i32 %58, -4194304
  %60 = or i32 %59, %57
  %61 = load ptr, ptr %6, align 4
  %62 = getelementptr inbounds %struct.nvkm_memory, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = load i16, ptr %29, align 2
  %67 = zext i16 %66 to i32
  %68 = add i32 %56, %67
  %69 = zext i32 %68 to i64
  tail call void %65(ptr noundef %61, i64 noundef %69, i32 noundef %60) #6
  %70 = add i32 %43, 8
  %71 = lshr i32 %40, 22
  %72 = shl i32 %42, 5
  %73 = and i32 %72, -131072
  %74 = or i32 %73, %71
  %75 = load ptr, ptr %6, align 4
  %76 = getelementptr inbounds %struct.nvkm_memory, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = load i16, ptr %29, align 2
  %81 = zext i16 %80 to i32
  %82 = add i32 %70, %81
  %83 = zext i32 %82 to i64
  tail call void %79(ptr noundef %75, i64 noundef %83, i32 noundef %74) #6
  %84 = add i32 %31, 4
  %85 = add i32 %43, 12
  %86 = lshr i32 %42, 27
  %87 = or i32 %86, 1073741824
  %88 = load ptr, ptr %6, align 4
  %89 = getelementptr inbounds %struct.nvkm_memory, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = load i16, ptr %29, align 2
  %94 = zext i16 %93 to i32
  %95 = add i32 %85, %94
  %96 = zext i32 %95 to i64
  tail call void %92(ptr noundef %88, i64 noundef %96, i32 noundef %87) #6
  %97 = add i32 %32, -4
  %98 = icmp ugt i32 %97, 3
  br i1 %98, label %30, label %99

99:                                               ; preds = %30, %23
  %100 = phi i32 [ %24, %23 ], [ %97, %30 ]
  %101 = phi i32 [ %25, %23 ], [ %84, %30 ]
  %102 = icmp eq i32 %100, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 4
  %105 = load ptr, ptr %104, align 8
  tail call fastcc void @nv44_vmm_pgt_fill(ptr noundef %0, ptr noundef %1, ptr noundef %105, i32 noundef %101, i32 noundef %100)
  %106 = load ptr, ptr %104, align 8
  %107 = getelementptr i32, ptr %106, i32 %100
  store ptr %107, ptr %104, align 8
  br label %108

108:                                              ; preds = %103, %99
  %109 = load ptr, ptr %6, align 4
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.nvkm_memory_func, ptr %110, i32 0, i32 8
  %112 = load ptr, ptr %111, align 4
  tail call void %112(ptr noundef %109) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv44_vmm_pgt_sgl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = alloca [4 x i32], align 4
  %7 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_memory_func, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr %11(ptr noundef %8) #6
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %176, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 3
  %16 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 6
  %17 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  %18 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 1
  %19 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %20 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 2
  %21 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 3
  %22 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 1
  %23 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 2
  %24 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 3
  br label %25

25:                                               ; preds = %172, %14
  %26 = phi i32 [ %2, %14 ], [ %173, %172 ]
  %27 = phi i32 [ %3, %14 ], [ %174, %172 ]
  %28 = load ptr, ptr %15, align 4
  %29 = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, ptr %16, align 8
  %33 = sub i64 %31, %32
  %34 = load ptr, ptr %17, align 8
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i64
  %37 = lshr i64 %33, %36
  %38 = getelementptr inbounds %struct.scatterlist, ptr %28, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = zext i32 %39 to i64
  %41 = add i64 %32, %40
  %42 = zext i32 %27 to i64
  %43 = icmp ugt i64 %37, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %25
  %45 = zext i8 %35 to i32
  %46 = shl i32 %27, %45
  %47 = zext i32 %46 to i64
  %48 = add i64 %32, %47
  store i64 %48, ptr %16, align 8
  br label %52

49:                                               ; preds = %25
  store i64 0, ptr %16, align 8
  %50 = call ptr @sg_next(ptr noundef %28) #6
  store ptr %50, ptr %15, align 4
  %51 = trunc i64 %37 to i32
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi i32 [ %27, %44 ], [ %51, %49 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #6, !annotation !8
  %54 = and i32 %26, 3
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %52
  %57 = sub nuw nsw i32 4, %54
  %58 = call i32 @llvm.umin.i32(i32 %57, i32 %53) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %56
  %61 = trunc i64 %41 to i32
  store i32 %61, ptr %6, align 4
  %62 = add i64 %41, 4096
  %63 = icmp eq i32 %58, 1
  br i1 %63, label %75, label %64

64:                                               ; preds = %60
  %65 = trunc i64 %62 to i32
  store i32 %65, ptr %22, align 4
  %66 = add i64 %41, 8192
  %67 = icmp eq i32 %58, 2
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = trunc i64 %66 to i32
  store i32 %69, ptr %23, align 4
  %70 = add i64 %41, 12288
  %71 = icmp eq i32 %58, 3
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = trunc i64 %70 to i32
  store i32 %73, ptr %24, align 4
  %74 = add i64 %41, 16384
  br label %75

75:                                               ; preds = %72, %68, %64, %60, %56
  %76 = phi i64 [ %41, %56 ], [ %62, %60 ], [ %66, %64 ], [ %70, %68 ], [ %74, %72 ]
  call fastcc void @nv44_vmm_pgt_fill(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i32 noundef %26, i32 noundef %58) #6
  %77 = add i32 %58, %26
  %78 = sub i32 %53, %58
  br label %79

79:                                               ; preds = %75, %52
  %80 = phi i64 [ %76, %75 ], [ %41, %52 ]
  %81 = phi i32 [ %78, %75 ], [ %53, %52 ]
  %82 = phi i32 [ %77, %75 ], [ %26, %52 ]
  %83 = icmp ugt i32 %81, 3
  br i1 %83, label %84, label %158

84:                                               ; preds = %84, %79
  %85 = phi i32 [ %142, %84 ], [ %82, %79 ]
  %86 = phi i32 [ %156, %84 ], [ %81, %79 ]
  %87 = phi i64 [ %99, %84 ], [ %80, %79 ]
  %88 = lshr i64 %87, 12
  %89 = trunc i64 %88 to i32
  store i32 %89, ptr %6, align 4
  %90 = add i64 %87, 4096
  %91 = lshr i64 %90, 12
  %92 = trunc i64 %91 to i32
  store i32 %92, ptr %18, align 4
  %93 = add i64 %87, 8192
  %94 = lshr i64 %93, 12
  %95 = trunc i64 %94 to i32
  store i32 %95, ptr %20, align 4
  %96 = add i64 %87, 12288
  %97 = lshr i64 %96, 12
  %98 = trunc i64 %97 to i32
  store i32 %98, ptr %21, align 4
  %99 = add i64 %87, 16384
  %100 = shl i32 %85, 2
  %101 = shl i32 %92, 27
  %102 = or i32 %101, %89
  %103 = load ptr, ptr %7, align 4
  %104 = getelementptr inbounds %struct.nvkm_memory, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %105, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = load i16, ptr %19, align 2
  %109 = zext i16 %108 to i32
  %110 = add i32 %100, %109
  %111 = zext i32 %110 to i64
  call void %107(ptr noundef %103, i64 noundef %111, i32 noundef %102) #6
  %112 = add i32 %100, 4
  %113 = load i32, ptr %18, align 4
  %114 = lshr i32 %113, 5
  %115 = load i32, ptr %20, align 4
  %116 = shl i32 %115, 22
  %117 = or i32 %116, %114
  %118 = load ptr, ptr %7, align 4
  %119 = getelementptr inbounds %struct.nvkm_memory, ptr %118, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %120, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = load i16, ptr %19, align 2
  %124 = zext i16 %123 to i32
  %125 = add i32 %112, %124
  %126 = zext i32 %125 to i64
  call void %122(ptr noundef %118, i64 noundef %126, i32 noundef %117) #6
  %127 = add i32 %100, 8
  %128 = load i32, ptr %20, align 4
  %129 = lshr i32 %128, 10
  %130 = load i32, ptr %21, align 4
  %131 = shl i32 %130, 17
  %132 = or i32 %131, %129
  %133 = load ptr, ptr %7, align 4
  %134 = getelementptr inbounds %struct.nvkm_memory, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %135, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = load i16, ptr %19, align 2
  %139 = zext i16 %138 to i32
  %140 = add i32 %127, %139
  %141 = zext i32 %140 to i64
  call void %137(ptr noundef %133, i64 noundef %141, i32 noundef %132) #6
  %142 = add i32 %85, 4
  %143 = add i32 %100, 12
  %144 = load i32, ptr %21, align 4
  %145 = lshr i32 %144, 15
  %146 = or i32 %145, 1073741824
  %147 = load ptr, ptr %7, align 4
  %148 = getelementptr inbounds %struct.nvkm_memory, ptr %147, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %149, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = load i16, ptr %19, align 2
  %153 = zext i16 %152 to i32
  %154 = add i32 %143, %153
  %155 = zext i32 %154 to i64
  call void %151(ptr noundef %147, i64 noundef %155, i32 noundef %146) #6
  %156 = add i32 %86, -4
  %157 = icmp ugt i32 %156, 3
  br i1 %157, label %84, label %158

158:                                              ; preds = %84, %79
  %159 = phi i64 [ %80, %79 ], [ %99, %84 ]
  %160 = phi i32 [ %81, %79 ], [ %156, %84 ]
  %161 = phi i32 [ %82, %79 ], [ %142, %84 ]
  %162 = icmp eq i32 %160, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %163, %158
  %164 = phi i64 [ %169, %163 ], [ %159, %158 ]
  %165 = phi i32 [ %168, %163 ], [ 0, %158 ]
  %166 = trunc i64 %164 to i32
  %167 = getelementptr [4 x i32], ptr %6, i32 0, i32 %165
  store i32 %166, ptr %167, align 4
  %168 = add nuw i32 %165, 1
  %169 = add i64 %164, 4096
  %170 = icmp eq i32 %168, %160
  br i1 %170, label %171, label %163

171:                                              ; preds = %163
  call fastcc void @nv44_vmm_pgt_fill(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i32 noundef %161, i32 noundef %160) #6
  br label %172

172:                                              ; preds = %171, %158
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  %173 = add i32 %53, %26
  %174 = sub i32 %27, %53
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %25

176:                                              ; preds = %172, %5
  %177 = load ptr, ptr %7, align 4
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.nvkm_memory_func, ptr %178, i32 0, i32 8
  %180 = load ptr, ptr %179, align 4
  call void %180(ptr noundef %177) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv44_vmm_pgt_fill(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = shl i32 %3, 2
  %7 = and i32 %6, -16
  %8 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_memory, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = zext i32 %7 to i64
  %14 = tail call i32 %12(ptr noundef %9, i64 noundef %13) #6
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.nvkm_memory, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = or i32 %7, 4
  %20 = zext i32 %19 to i64
  %21 = tail call i32 %18(ptr noundef %15, i64 noundef %20) #6
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr inbounds %struct.nvkm_memory, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = or i32 %7, 8
  %27 = zext i32 %26 to i64
  %28 = tail call i32 %25(ptr noundef %22, i64 noundef %27) #6
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.nvkm_memory, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = or i32 %6, 12
  %34 = zext i32 %33 to i64
  %35 = tail call i32 %32(ptr noundef %29, i64 noundef %34) #6
  %36 = icmp eq i32 %4, 0
  br i1 %36, label %87, label %37

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 15
  br label %39

39:                                               ; preds = %81, %37
  %40 = phi i32 [ %4, %37 ], [ %47, %81 ]
  %41 = phi ptr [ %2, %37 ], [ %50, %81 ]
  %42 = phi i32 [ %3, %37 ], [ %54, %81 ]
  %43 = phi i32 [ %14, %37 ], [ %85, %81 ]
  %44 = phi i32 [ %21, %37 ], [ %84, %81 ]
  %45 = phi i32 [ %28, %37 ], [ %83, %81 ]
  %46 = phi i32 [ %35, %37 ], [ %82, %81 ]
  %47 = add i32 %40, -1
  %48 = icmp eq ptr %41, null
  %49 = getelementptr i32, ptr %41, i32 1
  %50 = select i1 %48, ptr null, ptr %49
  %51 = select i1 %48, ptr %38, ptr %41
  %52 = load i32, ptr %51, align 4
  %53 = lshr i32 %52, 12
  %54 = add i32 %42, 1
  %55 = and i32 %42, 3
  switch i32 %55, label %80 [
    i32 0, label %56
    i32 1, label %59
    i32 2, label %66
    i32 3, label %73
  ]

56:                                               ; preds = %39
  %57 = and i32 %43, -134217728
  %58 = or i32 %53, %57
  br label %81

59:                                               ; preds = %39
  %60 = and i32 %43, 134217727
  %61 = shl i32 %53, 27
  %62 = or i32 %61, %60
  %63 = and i32 %44, -4194304
  %64 = lshr i32 %52, 17
  %65 = or i32 %64, %63
  br label %81

66:                                               ; preds = %39
  %67 = and i32 %44, 4194303
  %68 = shl i32 %53, 22
  %69 = or i32 %68, %67
  %70 = and i32 %45, -131072
  %71 = lshr i32 %52, 22
  %72 = or i32 %71, %70
  br label %81

73:                                               ; preds = %39
  %74 = and i32 %45, 131071
  %75 = shl i32 %53, 17
  %76 = or i32 %75, %74
  %77 = and i32 %46, -4096
  %78 = lshr i32 %52, 27
  %79 = or i32 %78, %77
  br label %81

80:                                               ; preds = %39
  unreachable

81:                                               ; preds = %73, %66, %59, %56
  %82 = phi i32 [ %79, %73 ], [ %46, %66 ], [ %46, %59 ], [ %46, %56 ]
  %83 = phi i32 [ %76, %73 ], [ %72, %66 ], [ %45, %59 ], [ %45, %56 ]
  %84 = phi i32 [ %44, %73 ], [ %69, %66 ], [ %65, %59 ], [ %44, %56 ]
  %85 = phi i32 [ %43, %73 ], [ %43, %66 ], [ %62, %59 ], [ %58, %56 ]
  %86 = icmp eq i32 %47, 0
  br i1 %86, label %87, label %39

87:                                               ; preds = %81, %5
  %88 = phi i32 [ %35, %5 ], [ %82, %81 ]
  %89 = phi i32 [ %28, %5 ], [ %83, %81 ]
  %90 = phi i32 [ %21, %5 ], [ %84, %81 ]
  %91 = phi i32 [ %14, %5 ], [ %85, %81 ]
  %92 = load ptr, ptr %8, align 4
  %93 = getelementptr inbounds %struct.nvkm_memory, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %98 = load i16, ptr %97, align 2
  %99 = zext i16 %98 to i32
  %100 = add i32 %7, %99
  %101 = zext i32 %100 to i64
  tail call void %96(ptr noundef %92, i64 noundef %101, i32 noundef %91) #6
  %102 = load ptr, ptr %8, align 4
  %103 = getelementptr inbounds %struct.nvkm_memory, ptr %102, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = load i16, ptr %97, align 2
  %108 = zext i16 %107 to i32
  %109 = add i32 %19, %108
  %110 = zext i32 %109 to i64
  tail call void %106(ptr noundef %102, i64 noundef %110, i32 noundef %90) #6
  %111 = load ptr, ptr %8, align 4
  %112 = getelementptr inbounds %struct.nvkm_memory, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = load i16, ptr %97, align 2
  %117 = zext i16 %116 to i32
  %118 = add i32 %26, %117
  %119 = zext i32 %118 to i64
  tail call void %115(ptr noundef %111, i64 noundef %119, i32 noundef %89) #6
  %120 = or i32 %88, 1073741824
  %121 = load ptr, ptr %8, align 4
  %122 = getelementptr inbounds %struct.nvkm_memory, ptr %121, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = load i16, ptr %97, align 2
  %127 = zext i16 %126 to i32
  %128 = add i32 %33, %127
  %129 = zext i32 %128 to i64
  tail call void %125(ptr noundef %121, i64 noundef %129, i32 noundef %120) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{i64 2151505500}
!10 = !{i64 3964407}
!11 = !{i64 3964825}
!12 = !{i64 2151504278}
