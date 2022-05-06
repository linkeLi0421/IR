; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_mmu_pt = type { %union.anon, ptr, i8, i16, i64, %struct.list_head }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nvkm_vmm_pt = type { [2 x ptr], [2 x i32], i8, i8, ptr, [0 x i8] }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon.123 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.nvkm_vmm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [0 x %struct.nvkm_vmm_page] }
%struct.gf100_vmm_map_v0 = type { i8, i8, i8, i8, i8 }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.0, %struct.anon.1, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.anon.0 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.1 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.138, %struct.anon.139, i8, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.138 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.139 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }

@gf100_vmm_pgt = dso_local constant %struct.nvkm_vmm_desc_func { ptr null, ptr @gf100_vmm_pgt_unmap, ptr null, ptr null, ptr @gf100_vmm_pgt_mem, ptr @gf100_vmm_pgt_dma, ptr @gf100_vmm_pgt_sgl, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgf100.c\00", align 1
@gf100_vmm_pgd = dso_local constant %struct.nvkm_vmm_desc_func { ptr null, ptr @gf100_vmm_pgt_unmap, ptr null, ptr @gf100_vmm_pgd_pde, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s: %s: args\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: %s: kind %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s: %s: comp %d %02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%s: %s: comp %d\0A\00", align 1
@gf100_vmm_desc_16_16 = internal constant [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 3, i8 10, i8 8, i32 4096, ptr @gf100_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 14, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@gf100_vmm_desc_16_12 = internal constant [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 2, i8 14, i8 8, i32 4096, ptr @gf100_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 14, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@gf100_vmm_16 = internal constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }> <{ ptr @gf100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [3 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 16, ptr @gf100_vmm_desc_16_16, i8 10 }, %struct.nvkm_vmm_page { i8 12, ptr @gf100_vmm_desc_16_12, i8 6 }, %struct.nvkm_vmm_page zeroinitializer] }>, align 8
@gf100_vmm_desc_17_17 = internal constant [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 3, i8 10, i8 8, i32 4096, ptr @gf100_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 13, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@gf100_vmm_desc_17_12 = internal constant [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 2, i8 15, i8 8, i32 4096, ptr @gf100_vmm_pgt }, %struct.nvkm_vmm_desc { i32 0, i8 13, i8 8, i32 4096, ptr @gf100_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@gf100_vmm_17 = internal constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [3 x %struct.nvkm_vmm_page] }> <{ ptr @gf100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [3 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 17, ptr @gf100_vmm_desc_17_17, i8 10 }, %struct.nvkm_vmm_page { i8 12, ptr @gf100_vmm_desc_17_12, i8 6 }, %struct.nvkm_vmm_page zeroinitializer] }>, align 8
@switch.table.gf100_vmm_aper = private unnamed_addr constant [3 x i32] [i32 0, i32 2, i32 3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_vmm_pgt_sgl(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
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
  tail call fastcc void @gf100_vmm_pgt_pte(ptr noundef %1, i32 noundef %18, i32 noundef %45, ptr noundef %4, i64 noundef %33)
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gf100_vmm_pgt_pte(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, i64 noundef %4) unnamed_addr #3 {
  %6 = lshr i64 %4, 8
  %7 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 10
  %8 = load i64, ptr %7, align 8
  %9 = or i64 %8, %6
  %10 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 11
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %62, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 9
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 17592186044416
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %13
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %99, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %0, i32 0, i32 3
  %22 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %0, i32 0, i32 1
  br label %23

23:                                               ; preds = %57, %20
  %24 = phi i64 [ %11, %20 ], [ %61, %57 ]
  %25 = phi i32 [ %1, %20 ], [ %60, %57 ]
  %26 = phi i32 [ %2, %20 ], [ %28, %57 ]
  %27 = phi i64 [ %9, %20 ], [ %59, %57 ]
  %28 = add i32 %26, -1
  %29 = shl i64 %24, 43
  %30 = and i64 %29, -17592186044416
  %31 = or i64 %30, %27
  %32 = add i64 %24, 1
  store i64 %32, ptr %10, align 8
  %33 = and i64 %24, 1
  %34 = icmp eq i64 %33, 0
  %35 = trunc i64 %27 to i32
  %36 = lshr i64 %31, 32
  %37 = trunc i64 %36 to i32
  %38 = or i32 %37, 268435456
  %39 = select i1 %34, i32 %38, i32 %37
  %40 = shl i32 %25, 3
  %41 = load i16, ptr %21, align 2
  %42 = zext i16 %41 to i32
  %43 = add i32 %40, %42
  %44 = zext i32 %43 to i64
  %45 = load ptr, ptr %22, align 4
  %46 = getelementptr inbounds %struct.nvkm_memory, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef %45, i64 noundef %44, i32 noundef %35) #7
  %50 = load ptr, ptr %22, align 4
  %51 = getelementptr inbounds %struct.nvkm_memory, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = add nuw nsw i64 %44, 4
  tail call void %54(ptr noundef %50, i64 noundef %55, i32 noundef %39) #7
  %56 = icmp eq i32 %28, 0
  br i1 %56, label %99, label %57

57:                                               ; preds = %23
  %58 = load i64, ptr %14, align 8
  %59 = add i64 %58, %27
  %60 = add i32 %25, 1
  %61 = load i64, ptr %10, align 8
  br label %23

62:                                               ; preds = %13, %5
  %63 = zext i32 %2 to i64
  %64 = mul i64 %11, %63
  %65 = add i64 %64, %8
  store i64 %65, ptr %7, align 8
  %66 = icmp eq i32 %2, 0
  br i1 %66, label %99, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %0, i32 0, i32 3
  %69 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %0, i32 0, i32 1
  %70 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 9
  br label %71

71:                                               ; preds = %71, %67
  %72 = phi i32 [ %1, %67 ], [ %76, %71 ]
  %73 = phi i32 [ %2, %67 ], [ %75, %71 ]
  %74 = phi i64 [ %9, %67 ], [ %97, %71 ]
  %75 = add i32 %73, -1
  %76 = add i32 %72, 1
  %77 = shl i32 %72, 3
  %78 = load i16, ptr %68, align 2
  %79 = zext i16 %78 to i32
  %80 = add i32 %77, %79
  %81 = zext i32 %80 to i64
  %82 = load ptr, ptr %69, align 4
  %83 = getelementptr inbounds %struct.nvkm_memory, ptr %82, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = trunc i64 %74 to i32
  tail call void %86(ptr noundef %82, i64 noundef %81, i32 noundef %87) #7
  %88 = load ptr, ptr %69, align 4
  %89 = getelementptr inbounds %struct.nvkm_memory, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = add nuw nsw i64 %81, 4
  %94 = lshr i64 %74, 32
  %95 = trunc i64 %94 to i32
  tail call void %92(ptr noundef %88, i64 noundef %93, i32 noundef %95) #7
  %96 = load i64, ptr %70, align 8
  %97 = add i64 %96, %74
  %98 = icmp eq i32 %75, 0
  br i1 %98, label %99, label %71

99:                                               ; preds = %71, %62, %23, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_vmm_pgt_dma(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
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
  br i1 %9, label %17, label %62

17:                                               ; preds = %5
  br i1 %16, label %94, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 4
  %20 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 10
  %21 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %22 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 11
  %23 = load i64, ptr %20, align 8
  %24 = trunc i64 %23 to i32
  %25 = lshr i64 %23, 32
  %26 = trunc i64 %25 to i32
  br label %27

27:                                               ; preds = %27, %18
  %28 = phi i32 [ %24, %18 ], [ %59, %27 ]
  %29 = phi i32 [ %26, %18 ], [ %61, %27 ]
  %30 = phi i32 [ %2, %18 ], [ %37, %27 ]
  %31 = phi i32 [ %3, %18 ], [ %32, %27 ]
  %32 = add i32 %31, -1
  %33 = load ptr, ptr %19, align 8
  %34 = getelementptr i32, ptr %33, i32 1
  store ptr %34, ptr %19, align 8
  %35 = load i32, ptr %33, align 4
  %36 = lshr i32 %35, 8
  %37 = add i32 %30, 1
  %38 = shl i32 %30, 3
  %39 = load i16, ptr %21, align 2
  %40 = zext i16 %39 to i32
  %41 = add i32 %38, %40
  %42 = zext i32 %41 to i64
  %43 = load ptr, ptr %10, align 4
  %44 = getelementptr inbounds %struct.nvkm_memory, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = or i32 %36, %28
  tail call void %47(ptr noundef %43, i64 noundef %42, i32 noundef %48) #7
  %49 = load ptr, ptr %10, align 4
  %50 = getelementptr inbounds %struct.nvkm_memory, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = add nuw nsw i64 %42, 4
  tail call void %53(ptr noundef %49, i64 noundef %54, i32 noundef %29) #7
  %55 = load i64, ptr %22, align 8
  %56 = load i64, ptr %20, align 8
  %57 = add i64 %56, %55
  store i64 %57, ptr %20, align 8
  %58 = icmp eq i32 %32, 0
  %59 = trunc i64 %57 to i32
  %60 = lshr i64 %57, 32
  %61 = trunc i64 %60 to i32
  br i1 %58, label %94, label %27

62:                                               ; preds = %5
  br i1 %16, label %94, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 6
  %65 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 4
  br label %66

66:                                               ; preds = %89, %63
  %67 = phi i32 [ %2, %63 ], [ %91, %89 ]
  %68 = phi i32 [ %3, %63 ], [ %92, %89 ]
  %69 = load i64, ptr %64, align 8
  %70 = sub i64 4096, %69
  %71 = load ptr, ptr %6, align 8
  %72 = load i8, ptr %71, align 4
  %73 = zext i8 %72 to i64
  %74 = lshr i64 %70, %73
  %75 = load ptr, ptr %65, align 8
  %76 = load i32, ptr %75, align 4
  %77 = zext i32 %76 to i64
  %78 = add i64 %69, %77
  %79 = zext i32 %68 to i64
  %80 = icmp ugt i64 %74, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %66
  %82 = zext i8 %72 to i32
  %83 = shl i32 %68, %82
  %84 = zext i32 %83 to i64
  %85 = add i64 %69, %84
  store i64 %85, ptr %64, align 8
  br label %89

86:                                               ; preds = %66
  store i64 0, ptr %64, align 8
  %87 = getelementptr i32, ptr %75, i32 1
  store ptr %87, ptr %65, align 8
  %88 = trunc i64 %74 to i32
  br label %89

89:                                               ; preds = %86, %81
  %90 = phi i32 [ %68, %81 ], [ %88, %86 ]
  tail call fastcc void @gf100_vmm_pgt_pte(ptr noundef %1, i32 noundef %67, i32 noundef %90, ptr noundef %4, i64 noundef %78)
  %91 = add i32 %90, %67
  %92 = sub i32 %68, %90
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %66

94:                                               ; preds = %89, %62, %27, %17
  %95 = load ptr, ptr %10, align 4
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.nvkm_memory_func, ptr %96, i32 0, i32 8
  %98 = load ptr, ptr %97, align 4
  tail call void %98(ptr noundef %95) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_vmm_pgt_mem(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
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
  tail call fastcc void @gf100_vmm_pgt_pte(ptr noundef %1, i32 noundef %18, i32 noundef %48, ptr noundef %4, i64 noundef %35)
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
define dso_local void @gf100_vmm_pgt_unmap(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
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
  br i1 %16, label %17, label %22, !prof !8

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
define dso_local void @gf100_vmm_pgd_pde(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr ptr, ptr %5, i32 %2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %1, align 4
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %13) #7
  switch i32 %17, label %20 [
    i32 1, label %21
    i32 2, label %18
    i32 3, label %19
  ]

18:                                               ; preds = %11
  br label %21

19:                                               ; preds = %11
  br label %21

20:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef null) #7
  br label %85

21:                                               ; preds = %19, %18, %11
  %22 = phi i64 [ 3, %19 ], [ 34359738370, %18 ], [ 1, %11 ]
  %23 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %9, i32 0, i32 4
  %24 = load i64, ptr %23, align 8
  %25 = lshr i64 %24, 8
  %26 = or i64 %25, %22
  br label %27

27:                                               ; preds = %21, %3
  %28 = phi i64 [ %26, %21 ], [ 0, %3 ]
  %29 = getelementptr [2 x ptr], ptr %7, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = trunc i64 %28 to i32
  %33 = lshr i64 %28, 32
  %34 = trunc i64 %33 to i32
  br i1 %31, label %55, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %30, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_memory_func, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef %37) #7
  switch i32 %41, label %44 [
    i32 1, label %45
    i32 2, label %42
    i32 3, label %43
  ]

42:                                               ; preds = %35
  br label %45

43:                                               ; preds = %35
  br label %45

44:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef null) #7
  br label %85

45:                                               ; preds = %43, %42, %35
  %46 = phi i64 [ 12884901888, %43 ], [ 25769803776, %42 ], [ 4294967296, %35 ]
  %47 = or i64 %28, %46
  %48 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %30, i32 0, i32 4
  %49 = load i64, ptr %48, align 8
  %50 = shl i64 %49, 24
  %51 = or i64 %50, %47
  %52 = trunc i64 %51 to i32
  %53 = lshr i64 %51, 32
  %54 = trunc i64 %53 to i32
  br label %55

55:                                               ; preds = %45, %27
  %56 = phi i32 [ %52, %45 ], [ %32, %27 ]
  %57 = phi i32 [ %54, %45 ], [ %34, %27 ]
  %58 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %8, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_memory_func, ptr %60, i32 0, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = tail call ptr %62(ptr noundef %59) #7
  %64 = shl i32 %2, 3
  %65 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %8, i32 0, i32 3
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = add i32 %64, %67
  %69 = zext i32 %68 to i64
  %70 = load ptr, ptr %58, align 4
  %71 = getelementptr inbounds %struct.nvkm_memory, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  tail call void %74(ptr noundef %70, i64 noundef %69, i32 noundef %56) #7
  %75 = load ptr, ptr %58, align 4
  %76 = getelementptr inbounds %struct.nvkm_memory, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = add nuw nsw i64 %69, 4
  tail call void %79(ptr noundef %75, i64 noundef %80, i32 noundef %57) #7
  %81 = load ptr, ptr %58, align 4
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nvkm_memory_func, ptr %82, i32 0, i32 8
  %84 = load ptr, ptr %83, align 4
  tail call void %84(ptr noundef %81) #7
  br label %85

85:                                               ; preds = %55, %44, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_vmm_invalidate_pdb(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_mmu, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = trunc i64 %1 to i32
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 1051832
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #7, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_vmm_invalidate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = alloca %struct.nvkm_timer_wait, align 8
  %5 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_mmu, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_mmu, ptr %6, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %12) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !11
  call void @nvkm_timer_wait_init(ptr noundef %8, i64 noundef 2000000000, ptr noundef nonnull %3) #7
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  br label %14

14:                                               ; preds = %20, %2
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr i8, ptr %15, i32 1051776
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %18 = and i32 %17, 16711680
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %14
  %21 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #7
  %22 = icmp sgt i64 %21, -1
  br i1 %22, label %14, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.nvkm_timer, ptr %24, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = call ptr @dev_driver_string(ptr noundef %28) #7
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct.nvkm_timer, ptr %30, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load ptr, ptr %34, align 4
  br label %40

40:                                               ; preds = %38, %23
  %41 = phi ptr [ %39, %38 ], [ %36, %23 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 201, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %29, ptr noundef %41) #7
  br label %42

42:                                               ; preds = %40, %14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  %43 = and i32 %1, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %11, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nvkm_memory_func, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 %50(ptr noundef %47) #7
  switch i32 %51, label %54 [
    i32 1, label %55
    i32 2, label %52
    i32 3, label %53
  ]

52:                                               ; preds = %45
  br label %55

53:                                               ; preds = %45
  br label %55

54:                                               ; preds = %45
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef null) #7
  br label %55

55:                                               ; preds = %54, %53, %52, %45
  %56 = phi i64 [ 0, %54 ], [ 3, %53 ], [ 2, %52 ], [ 0, %45 ]
  %57 = load ptr, ptr %9, align 8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %58, i32 0, i32 4
  %60 = load i64, ptr %59, align 8
  %61 = lshr i64 %60, 8
  %62 = and i64 %61, 72057594037927920
  %63 = or i64 %62, %56
  %64 = load ptr, ptr %0, align 8
  %65 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %64, i32 0, i32 6
  %66 = load ptr, ptr %65, align 8
  call void %66(ptr noundef %0, i64 noundef %63) #7
  br label %67

67:                                               ; preds = %55, %42
  %68 = or i32 %1, -2147483648
  %69 = load ptr, ptr %13, align 4
  %70 = getelementptr i8, ptr %69, i32 1051836
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #7, !srcloc !10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !11
  call void @nvkm_timer_wait_init(ptr noundef %8, i64 noundef 2000000000, ptr noundef nonnull %4) #7
  br label %71

71:                                               ; preds = %77, %67
  %72 = load ptr, ptr %13, align 4
  %73 = getelementptr i8, ptr %72, i32 1051776
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #7, !srcloc !12
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %75 = and i32 %74, 32768
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %71
  %78 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %4) #7
  %79 = icmp sgt i64 %78, -1
  br i1 %79, label %71, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %4, align 8
  %82 = getelementptr inbounds %struct.nvkm_timer, ptr %81, i32 0, i32 1, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nvkm_device, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8
  %86 = call ptr @dev_driver_string(ptr noundef %85) #7
  %87 = load ptr, ptr %4, align 8
  %88 = getelementptr inbounds %struct.nvkm_timer, ptr %87, i32 0, i32 1, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.nvkm_device, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %80
  %96 = load ptr, ptr %91, align 4
  br label %97

97:                                               ; preds = %95, %80
  %98 = phi ptr [ %96, %95 ], [ %93, %80 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %86, ptr noundef %98) #7
  br label %99

99:                                               ; preds = %97, %71
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  %100 = load ptr, ptr %5, align 4
  %101 = getelementptr inbounds %struct.nvkm_mmu, ptr %100, i32 0, i32 10
  call void @mutex_unlock(ptr noundef %101) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_vmm_flush(ptr noundef %0, i32 %1) #0 {
  %3 = getelementptr %struct.nvkm_vmm, ptr %0, i32 0, i32 14, i32 16
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 1, i32 5
  tail call void @gf100_vmm_invalidate(ptr noundef %0, i32 noundef %6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_vmm_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %7) #7
  %12 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 7
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_mmu, ptr %22, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !11
  %26 = load i8, ptr %13, align 4
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 1, %27
  %29 = ashr i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 9
  store i64 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 11
  %33 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 10
  %34 = icmp ugt i32 %2, 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  br i1 %34, label %35, label %54

35:                                               ; preds = %4
  %36 = load i8, ptr %1, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = icmp eq i32 %2, 5
  br i1 %39, label %40, label %58

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %1, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = icmp ne i8 %42, 0
  %44 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %1, i32 0, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  %47 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %1, i32 0, i32 3
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  %50 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %1, i32 0, i32 4
  %51 = load i8, ptr %50, align 1
  %52 = select i1 %46, i8 0, i8 4
  %53 = select i1 %49, i8 1, i8 3
  br label %72

54:                                               ; preds = %4
  %55 = icmp eq i32 %2, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = icmp eq i32 %11, 2
  br label %72

58:                                               ; preds = %54, %38, %35
  %59 = phi i32 [ -38, %54 ], [ -38, %35 ], [ -7, %38 ]
  %60 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %61, 3
  br i1 %62, label %63, label %208

63:                                               ; preds = %58
  %64 = load ptr, ptr %21, align 4
  %65 = getelementptr inbounds %struct.nvkm_mmu, ptr %64, i32 0, i32 1, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.nvkm_mmu, ptr %64, i32 0, i32 1, i32 4
  %70 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.2, ptr noundef %69, ptr noundef %71) #8
  br label %208

72:                                               ; preds = %56, %40
  %73 = phi i8 [ 0, %56 ], [ %51, %40 ]
  %74 = phi i8 [ 1, %56 ], [ %53, %40 ]
  %75 = phi i8 [ 0, %56 ], [ %52, %40 ]
  %76 = phi i1 [ %57, %56 ], [ %43, %40 ]
  %77 = load ptr, ptr %0, align 8
  %78 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8
  %80 = tail call i32 %79(i32 noundef %11) #7
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83, !prof !8

82:                                               ; preds = %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 9, ptr noundef null) #7
  br label %208

83:                                               ; preds = %72
  %84 = load ptr, ptr %21, align 4
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %85, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  %88 = call ptr %87(ptr noundef %84, ptr noundef nonnull %6, ptr noundef nonnull %5) #7
  %89 = zext i8 %73 to i32
  %90 = load i32, ptr %6, align 4
  %91 = icmp sgt i32 %90, %89
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = getelementptr i8, ptr %88, i32 %89
  %94 = load i8, ptr %93, align 1
  %95 = load i8, ptr %5, align 1
  %96 = icmp eq i8 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %92, %83
  %98 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = icmp ugt i32 %99, 3
  br i1 %100, label %101, label %208

101:                                              ; preds = %97
  %102 = load ptr, ptr %21, align 4
  %103 = getelementptr inbounds %struct.nvkm_mmu, ptr %102, i32 0, i32 1, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.nvkm_mmu, ptr %102, i32 0, i32 1, i32 4
  %108 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %109 = load ptr, ptr %108, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %106, ptr noundef nonnull @.str.3, ptr noundef %107, ptr noundef %109, i32 noundef %89) #8
  br label %208

110:                                              ; preds = %92
  %111 = icmp eq i8 %94, %73
  br i1 %111, label %194, label %112

112:                                              ; preds = %110
  %113 = load i8, ptr %13, align 4
  %114 = icmp eq i8 %113, 16
  %115 = select i1 %114, i1 %20, i1 false
  %116 = load ptr, ptr %25, align 4
  %117 = getelementptr inbounds %struct.nvkm_memory_func, ptr %116, i32 0, i32 5
  %118 = load ptr, ptr %117, align 4
  %119 = call i64 %118(ptr noundef %25) #7
  %120 = add i64 %119, 131071
  %121 = and i64 %120, -131072
  %122 = select i1 %115, i64 16, i64 17
  %123 = lshr i64 %121, %122
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %80, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %112
  %127 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %13, i32 0, i32 2
  %128 = load i8, ptr %127, align 4
  %129 = and i8 %128, 8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %126, %112
  %132 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %133 = load i32, ptr %132, align 4
  %134 = icmp ugt i32 %133, 3
  br i1 %134, label %135, label %208

135:                                              ; preds = %131
  %136 = load ptr, ptr %21, align 4
  %137 = getelementptr inbounds %struct.nvkm_mmu, ptr %136, i32 0, i32 1, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.nvkm_device, ptr %138, i32 0, i32 2
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.nvkm_mmu, ptr %136, i32 0, i32 1, i32 4
  %142 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %13, i32 0, i32 2
  %145 = load i8, ptr %144, align 4
  %146 = zext i8 %145 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %140, ptr noundef nonnull @.str.4, ptr noundef %141, ptr noundef %143, i32 noundef %80, i32 noundef %146) #8
  br label %208

147:                                              ; preds = %126
  %148 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 8
  %149 = call i32 @nvkm_memory_tags_get(ptr noundef %25, ptr noundef %24, i32 noundef %124, ptr noundef nonnull @nvkm_ltc_tags_clear, ptr noundef %148) #7
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = icmp ugt i32 %153, 3
  br i1 %154, label %155, label %208

155:                                              ; preds = %151
  %156 = load ptr, ptr %21, align 4
  %157 = getelementptr inbounds %struct.nvkm_mmu, ptr %156, i32 0, i32 1, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.nvkm_device, ptr %158, i32 0, i32 2
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %struct.nvkm_mmu, ptr %156, i32 0, i32 1, i32 4
  %162 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %163 = load ptr, ptr %162, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %160, ptr noundef nonnull @.str.5, ptr noundef %161, ptr noundef %163, i32 noundef %149) #8
  br label %208

164:                                              ; preds = %147
  %165 = load ptr, ptr %148, align 4
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %192, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.nvkm_mm_node, ptr %166, i32 0, i32 5
  %170 = load i32, ptr %169, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 1
  %173 = load i64, ptr %172, align 8
  %174 = lshr i64 %173, 17
  %175 = add nuw nsw i64 %174, %171
  %176 = load i8, ptr %13, align 4
  %177 = icmp eq i8 %176, 17
  %178 = select i1 %177, i1 true, i1 %20
  br i1 %178, label %179, label %187

179:                                              ; preds = %168
  %180 = shl i64 %175, 44
  %181 = load i64, ptr %33, align 8
  %182 = or i64 %181, %180
  store i64 %182, ptr %33, align 8
  %183 = load i64, ptr %32, align 8
  %184 = or i64 %183, 17592186044416
  store i64 %184, ptr %32, align 8
  %185 = load i64, ptr %31, align 8
  %186 = or i64 %185, 17592186044416
  store i64 %186, ptr %31, align 8
  br label %194

187:                                              ; preds = %168
  %188 = shl nuw nsw i64 %175, 1
  %189 = or i64 %188, 1
  %190 = load i64, ptr %32, align 8
  %191 = or i64 %190, %189
  store i64 %191, ptr %32, align 8
  br label %194

192:                                              ; preds = %164
  %193 = load i8, ptr %93, align 1
  br label %194

194:                                              ; preds = %192, %187, %179, %110
  %195 = phi i8 [ %73, %110 ], [ %193, %192 ], [ %73, %187 ], [ %73, %179 ]
  %196 = load i64, ptr %33, align 8
  %197 = select i1 %76, i64 4294967296, i64 0
  %198 = zext i32 %80 to i64
  %199 = shl nuw i64 %198, 33
  %200 = zext i8 %195 to i64
  %201 = shl nuw nsw i64 %200, 36
  %202 = or i8 %74, %75
  %203 = zext i8 %202 to i64
  %204 = or i64 %197, %203
  %205 = or i64 %204, %199
  %206 = or i64 %201, %196
  %207 = or i64 %206, %205
  store i64 %207, ptr %33, align 8
  br label %208

208:                                              ; preds = %194, %155, %151, %135, %131, %101, %97, %82, %63, %58
  %209 = phi i32 [ %80, %82 ], [ 0, %194 ], [ %59, %63 ], [ %59, %58 ], [ -22, %101 ], [ -22, %97 ], [ %149, %151 ], [ %149, %155 ], [ -22, %131 ], [ -22, %135 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  ret i32 %209
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_tags_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ltc_tags_clear(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @gf100_vmm_aper(i32 noundef %0) #6 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 3
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds [3 x i32], ptr @switch.table.gf100_vmm_aper, i32 0, i32 %2
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ %6, %4 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_vmm_part(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.nvkm_memory_func, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr %5(ptr noundef %1) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %22, !prof !8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvkm_memory, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %1, i64 noundef 512, i32 noundef 0) #7
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %1, i64 noundef 516, i32 noundef 0) #7
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %1, i64 noundef 520, i32 noundef 0) #7
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %1, i64 noundef 524, i32 noundef 0) #7
  br label %24

22:                                               ; preds = %2
  %23 = getelementptr i64, ptr %6, i32 64
  tail call void @mmioset(ptr noundef %23, i32 noundef 0, i32 noundef 16) #7
  br label %24

24:                                               ; preds = %22, %8
  %25 = load ptr, ptr %1, align 4
  %26 = getelementptr inbounds %struct.nvkm_memory_func, ptr %25, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_vmm_join_(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_memory_func, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %8) #7
  switch i32 %12, label %17 [
    i32 1, label %18
    i32 2, label %13
    i32 3, label %15
  ]

13:                                               ; preds = %3
  %14 = or i64 %2, 6
  br label %18

15:                                               ; preds = %3
  %16 = or i64 %2, 3
  br label %18

17:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 351, i32 noundef 9, ptr noundef null) #7
  br label %52

18:                                               ; preds = %15, %13, %3
  %19 = phi i64 [ %16, %15 ], [ %14, %13 ], [ %2, %3 ]
  %20 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %6, i32 0, i32 4
  %21 = load i64, ptr %20, align 8
  %22 = or i64 %21, %19
  %23 = load ptr, ptr %1, align 4
  %24 = getelementptr inbounds %struct.nvkm_memory_func, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = tail call ptr %25(ptr noundef %1) #7
  %27 = getelementptr inbounds %struct.nvkm_memory, ptr %1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = trunc i64 %22 to i32
  tail call void %30(ptr noundef %1, i64 noundef 512, i32 noundef %31) #7
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = lshr i64 %22, 32
  %36 = trunc i64 %35 to i32
  tail call void %34(ptr noundef %1, i64 noundef 516, i32 noundef %36) #7
  %37 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 7
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, -1
  %40 = load ptr, ptr %27, align 4
  %41 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = trunc i64 %39 to i32
  tail call void %42(ptr noundef %1, i64 noundef 520, i32 noundef %43) #7
  %44 = load ptr, ptr %27, align 4
  %45 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = lshr i64 %39, 32
  %48 = trunc i64 %47 to i32
  tail call void %46(ptr noundef %1, i64 noundef 524, i32 noundef %48) #7
  %49 = load ptr, ptr %1, align 4
  %50 = getelementptr inbounds %struct.nvkm_memory_func, ptr %49, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  tail call void %51(ptr noundef %1) #7
  br label %52

52:                                               ; preds = %18, %17
  %53 = phi i32 [ -22, %17 ], [ 0, %18 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_vmm_join(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call i32 @gf100_vmm_join_(ptr noundef %0, ptr noundef %1, i64 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_vmm_new_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
  %12 = getelementptr inbounds %struct.nvkm_mmu, ptr %2, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 33
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_fb, ptr %15, i32 0, i32 6
  %17 = load i8, ptr %16, align 4
  switch i8 %17, label %22 [
    i8 16, label %18
    i8 17, label %20
  ]

18:                                               ; preds = %11
  %19 = tail call i32 @nv04_vmm_new_(ptr noundef %0, ptr noundef %2, i32 noundef 0, i1 noundef zeroext %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #7
  br label %23

20:                                               ; preds = %11
  %21 = tail call i32 @nv04_vmm_new_(ptr noundef %1, ptr noundef %2, i32 noundef 0, i1 noundef zeroext %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #7
  br label %23

22:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 412, i32 noundef 9, ptr noundef null) #7
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = phi i32 [ -22, %22 ], [ %21, %20 ], [ %19, %18 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_vmm_new_(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_vmm_new(ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 33
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_fb, ptr %13, i32 0, i32 6
  %15 = load i8, ptr %14, align 4
  switch i8 %15, label %20 [
    i8 16, label %16
    i8 17, label %18
  ]

16:                                               ; preds = %9
  %17 = tail call i32 @nv04_vmm_new_(ptr noundef nonnull @gf100_vmm_16, ptr noundef %0, i32 noundef 0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #7
  br label %21

18:                                               ; preds = %9
  %19 = tail call i32 @nv04_vmm_new_(ptr noundef nonnull @gf100_vmm_17, ptr noundef %0, i32 noundef 0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #7
  br label %21

20:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 412, i32 noundef 9, ptr noundef null) #7
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = phi i32 [ -22, %20 ], [ %19, %18 ], [ %17, %16 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2151510213}
!10 = !{i64 3969120}
!11 = !{!"auto-init"}
!12 = !{i64 3969538}
!13 = !{i64 2151508991}
