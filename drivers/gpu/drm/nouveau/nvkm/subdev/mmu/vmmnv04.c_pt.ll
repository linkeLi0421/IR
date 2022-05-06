; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmnv04.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon.123 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_mmu_pt = type { %union.anon, ptr, i8, i16, i64, %struct.list_head }
%union.anon = type { ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s: %s: args\0A\00", align 1
@nv04_vmm_desc_12 = internal constant [2 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 1, i8 15, i8 4, i32 4096, ptr @nv04_vmm_desc_pgt }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@nv04_vmm = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [2 x %struct.nvkm_vmm_page] } { ptr null, ptr null, ptr null, ptr @nv04_vmm_valid, ptr null, ptr null, ptr null, i64 0, [2 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 12, ptr @nv04_vmm_desc_12, i8 4 }, %struct.nvkm_vmm_page zeroinitializer] }, align 8
@nv04_vmm_desc_pgt = internal constant %struct.nvkm_vmm_desc_func { ptr null, ptr @nv04_vmm_pgt_unmap, ptr null, ptr null, ptr null, ptr @nv04_vmm_pgt_dma, ptr @nv04_vmm_pgt_sgl, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_vmm_valid(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, i32 noundef %2, ptr nocapture readnone %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_mmu, ptr %12, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_mmu, ptr %12, i32 0, i32 1, i32 4
  %18 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef %17, ptr noundef %19) #4
  br label %20

20:                                               ; preds = %10, %6, %4
  %21 = phi i32 [ -38, %6 ], [ -38, %10 ], [ 0, %4 ]
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_vmm_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i64 noundef %4, i64 noundef %5, ptr nocapture readnone %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
  %12 = tail call i32 @nvkm_vmm_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i64 noundef %4, i64 noundef %5, ptr noundef %8, ptr noundef %9, ptr noundef %10) #5
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %7, 0
  %15 = select i1 %14, i32 0, i32 -38
  %16 = select i1 %13, i32 %15, i32 %12
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_new_(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_vmm_new(ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readnone %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #5
  store ptr null, ptr %10, align 4, !annotation !8
  %11 = call i32 @nvkm_vmm_new_(ptr noundef nonnull @nv04_vmm, ptr noundef %0, i32 noundef 8, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %10) #5
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i32 %5, 0
  %14 = select i1 %13, i32 0, i32 -38
  %15 = select i1 %12, i32 %14, i32 %11
  %16 = load ptr, ptr %10, align 4
  store ptr %16, ptr %8, align 4
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.nvkm_vmm, ptr %16, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_memory_func, ptr %24, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = call ptr %26(ptr noundef %23) #5
  %28 = getelementptr inbounds %struct.nvkm_memory, ptr %23, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  call void %31(ptr noundef %23, i64 noundef 0, i32 noundef 135229) #5
  %32 = load ptr, ptr %28, align 4
  %33 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr inbounds %struct.nvkm_vmm, ptr %35, i32 0, i32 7
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = add i32 %38, -1
  call void %34(ptr noundef %23, i64 noundef 4, i32 noundef %39) #5
  %40 = load ptr, ptr %23, align 4
  %41 = getelementptr inbounds %struct.nvkm_memory_func, ptr %40, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  call void %42(ptr noundef %23) #5
  br label %43

43:                                               ; preds = %18, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #5
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_vmm_pgt_unmap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = shl i32 %2, 2
  %6 = add i32 %5, 8
  %7 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = add i32 %6, %9
  %11 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_memory_func, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr %15(ptr noundef %12) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23, !prof !9

18:                                               ; preds = %4
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %18
  %21 = zext i32 %10 to i64
  %22 = zext i32 %3 to i64
  br label %27

23:                                               ; preds = %4
  %24 = shl i32 %3, 2
  %25 = lshr i32 %10, 2
  %26 = getelementptr i32, ptr %16, i32 %25
  tail call void @mmioset(ptr noundef %26, i32 noundef 0, i32 noundef %24) #5
  br label %38

27:                                               ; preds = %27, %20
  %28 = phi i64 [ %35, %27 ], [ %22, %20 ]
  %29 = phi i64 [ %36, %27 ], [ %21, %20 ]
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr inbounds %struct.nvkm_memory, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %30, i64 noundef %29, i32 noundef 0) #5
  %35 = add nsw i64 %28, -1
  %36 = add nuw nsw i64 %29, 4
  %37 = icmp eq i64 %35, 0
  br i1 %37, label %38, label %27

38:                                               ; preds = %27, %23, %18
  %39 = load ptr, ptr %11, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_memory_func, ptr %40, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %39) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_vmm_pgt_dma(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr %10(ptr noundef %7) #5
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 4
  %15 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i32 [ %2, %13 ], [ %20, %16 ]
  %18 = phi i32 [ %3, %13 ], [ %19, %16 ]
  %19 = add i32 %18, -1
  %20 = add i32 %17, 1
  %21 = shl i32 %17, 2
  %22 = add i32 %21, 8
  %23 = load ptr, ptr %14, align 8
  %24 = getelementptr i32, ptr %23, i32 1
  store ptr %24, ptr %14, align 8
  %25 = load i32, ptr %23, align 4
  %26 = or i32 %25, 3
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds %struct.nvkm_memory, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load i16, ptr %15, align 2
  %33 = zext i16 %32 to i32
  %34 = add i32 %22, %33
  %35 = zext i32 %34 to i64
  tail call void %31(ptr noundef %27, i64 noundef %35, i32 noundef %26) #5
  %36 = icmp eq i32 %19, 0
  br i1 %36, label %37, label %16

37:                                               ; preds = %16, %5
  %38 = load ptr, ptr %6, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvkm_memory_func, ptr %39, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  tail call void %41(ptr noundef %38) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_vmm_pgt_sgl(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr %10(ptr noundef %7) #5
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %73, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 3
  %15 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 6
  %16 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  %17 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  br label %18

18:                                               ; preds = %68, %13
  %19 = phi i32 [ %2, %13 ], [ %70, %68 ]
  %20 = phi i32 [ %3, %13 ], [ %71, %68 ]
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
  %33 = zext i32 %20 to i64
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %18
  %36 = zext i8 %28 to i32
  %37 = shl i32 %20, %36
  %38 = zext i32 %37 to i64
  %39 = add i64 %25, %38
  store i64 %39, ptr %15, align 8
  br label %44

40:                                               ; preds = %18
  store i64 0, ptr %15, align 8
  %41 = tail call ptr @sg_next(ptr noundef %21) #5
  store ptr %41, ptr %14, align 4
  %42 = trunc i64 %30 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %68, label %44

44:                                               ; preds = %40, %35
  %45 = phi i32 [ %20, %35 ], [ %42, %40 ]
  %46 = trunc i64 %25 to i32
  %47 = add i32 %32, %46
  %48 = or i32 %47, 3
  br label %49

49:                                               ; preds = %49, %44
  %50 = phi i32 [ %19, %44 ], [ %54, %49 ]
  %51 = phi i32 [ %45, %44 ], [ %53, %49 ]
  %52 = phi i32 [ %48, %44 ], [ %66, %49 ]
  %53 = add i32 %51, -1
  %54 = add i32 %50, 1
  %55 = shl i32 %50, 2
  %56 = add i32 %55, 8
  %57 = load ptr, ptr %6, align 4
  %58 = getelementptr inbounds %struct.nvkm_memory, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load i16, ptr %17, align 2
  %63 = zext i16 %62 to i32
  %64 = add i32 %56, %63
  %65 = zext i32 %64 to i64
  tail call void %61(ptr noundef %57, i64 noundef %65, i32 noundef %52) #5
  %66 = add i32 %52, 4096
  %67 = icmp eq i32 %53, 0
  br i1 %67, label %68, label %49

68:                                               ; preds = %49, %40
  %69 = phi i32 [ 0, %40 ], [ %45, %49 ]
  %70 = add i32 %69, %19
  %71 = sub i32 %20, %69
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %18

73:                                               ; preds = %68, %5
  %74 = load ptr, ptr %6, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nvkm_memory_func, ptr %75, i32 0, i32 8
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef %74) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
