; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgm200.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_vmm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [0 x %struct.nvkm_vmm_page] }
%struct.gm200_vmm_v0 = type { i8, i8 }
%struct.nvkm_mmu_pt = type { %union.anon.126, ptr, i8, i16, i64, %struct.list_head }
%union.anon.126 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@gm200_vmm_spt = internal constant %struct.nvkm_vmm_desc_func { ptr null, ptr @gf100_vmm_pgt_unmap, ptr @gm200_vmm_pgt_sparse, ptr null, ptr @gf100_vmm_pgt_mem, ptr @gf100_vmm_pgt_dma, ptr @gf100_vmm_pgt_sgl, ptr null, ptr null, ptr null }, align 4
@gm200_vmm_pgd = internal constant %struct.nvkm_vmm_desc_func { ptr null, ptr @gf100_vmm_pgt_unmap, ptr @gm200_vmm_pgd_sparse, ptr @gf100_vmm_pgd_pde, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gm200_vmm_desc_17_12 = dso_local constant [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 2, i8 15, i8 8, i32 4096, ptr @gm200_vmm_spt }, %struct.nvkm_vmm_desc { i32 0, i8 13, i8 8, i32 4096, ptr @gm200_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@gm200_vmm_lpt = internal constant %struct.nvkm_vmm_desc_func { ptr @gk104_vmm_lpt_invalid, ptr @gf100_vmm_pgt_unmap, ptr @gm200_vmm_pgt_sparse, ptr null, ptr @gf100_vmm_pgt_mem, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gm200_vmm_desc_17_17 = dso_local constant [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 3, i8 10, i8 8, i32 4096, ptr @gm200_vmm_lpt }, %struct.nvkm_vmm_desc { i32 0, i8 13, i8 8, i32 4096, ptr @gm200_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@gm200_vmm_desc_16_12 = dso_local constant [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 2, i8 14, i8 8, i32 4096, ptr @gm200_vmm_spt }, %struct.nvkm_vmm_desc { i32 0, i8 14, i8 8, i32 4096, ptr @gm200_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@gm200_vmm_desc_16_16 = dso_local constant [3 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 3, i8 10, i8 8, i32 4096, ptr @gm200_vmm_lpt }, %struct.nvkm_vmm_desc { i32 0, i8 14, i8 8, i32 4096, ptr @gm200_vmm_pgd }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@gm200_vmm_16 = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4 x %struct.nvkm_vmm_page] } { ptr @gm200_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, i64 0, [4 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 27, ptr getelementptr (i8, ptr @gm200_vmm_desc_16_16, i64 16), i8 1 }, %struct.nvkm_vmm_page { i8 16, ptr @gm200_vmm_desc_16_16, i8 11 }, %struct.nvkm_vmm_page { i8 12, ptr @gm200_vmm_desc_16_12, i8 7 }, %struct.nvkm_vmm_page zeroinitializer] }, align 8
@gm200_vmm_17 = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4 x %struct.nvkm_vmm_page] } { ptr @gm200_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gf100_vmm_valid, ptr @gf100_vmm_flush, ptr null, ptr @gf100_vmm_invalidate_pdb, i64 0, [4 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 27, ptr getelementptr (i8, ptr @gm200_vmm_desc_17_17, i64 16), i8 1 }, %struct.nvkm_vmm_page { i8 17, ptr @gm200_vmm_desc_17_17, i8 11 }, %struct.nvkm_vmm_page { i8 12, ptr @gm200_vmm_desc_17_12, i8 7 }, %struct.nvkm_vmm_page zeroinitializer] }, align 8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_vmm_join_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr %struct.nvkm_vmm_func, ptr %4, i32 1, i32 3
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 16
  %8 = or i64 %2, 2048
  %9 = select i1 %7, i64 %8, i64 %2
  %10 = tail call i32 @gf100_vmm_join_(ptr noundef %0, ptr noundef %1, i64 noundef %9) #2
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_join_(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_vmm_join(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr %struct.nvkm_vmm_func, ptr %3, i32 1, i32 3
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 16
  %7 = select i1 %6, i64 2048, i64 0
  %8 = tail call i32 @gf100_vmm_join_(ptr noundef %0, ptr noundef %1, i64 noundef %7) #2
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_vmm_new_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i64 noundef %4, i64 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
  %12 = icmp ugt i32 %7, 1
  br i1 %12, label %13, label %22

13:                                               ; preds = %11
  %14 = load i8, ptr %6, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = icmp eq i32 %7, 2
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.gm200_vmm_v0, ptr %6, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  switch i8 %20, label %27 [
    i8 16, label %24
    i8 17, label %21
  ]

21:                                               ; preds = %18
  br label %24

22:                                               ; preds = %11
  %23 = icmp eq i32 %7, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22, %21, %18
  %25 = phi ptr [ %1, %21 ], [ %0, %18 ], [ %1, %22 ]
  %26 = tail call i32 @nvkm_vmm_new_(ptr noundef %25, ptr noundef %2, i32 noundef 0, i1 noundef zeroext %3, i64 noundef %4, i64 noundef %5, ptr noundef %8, ptr noundef %9, ptr noundef %10) #2
  br label %27

27:                                               ; preds = %24, %22, %18, %16, %13
  %28 = phi i32 [ %26, %24 ], [ -22, %18 ], [ -38, %22 ], [ -38, %13 ], [ -7, %16 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_new_(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_vmm_new(ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = icmp ugt i32 %5, 1
  br i1 %10, label %11, label %20

11:                                               ; preds = %9
  %12 = load i8, ptr %4, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = icmp eq i32 %5, 2
  br i1 %15, label %16, label %25

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.gm200_vmm_v0, ptr %4, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  switch i8 %18, label %25 [
    i8 16, label %22
    i8 17, label %19
  ]

19:                                               ; preds = %16
  br label %22

20:                                               ; preds = %9
  %21 = icmp eq i32 %5, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %20, %19, %16
  %23 = phi ptr [ @gm200_vmm_17, %19 ], [ @gm200_vmm_16, %16 ], [ @gm200_vmm_17, %20 ]
  %24 = tail call i32 @nvkm_vmm_new_(ptr noundef nonnull %23, ptr noundef %0, i32 noundef 0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %6, ptr noundef %7, ptr noundef %8) #2
  br label %25

25:                                               ; preds = %22, %20, %16, %14, %11
  %26 = phi i32 [ %24, %22 ], [ -22, %16 ], [ -38, %20 ], [ -38, %11 ], [ -7, %14 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_vmm_new_fixed(ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = tail call i32 @gf100_vmm_new_(ptr noundef nonnull @gm200_vmm_16, ptr noundef nonnull @gm200_vmm_17, ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #2
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_new_(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_pgt_unmap(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm200_vmm_pgt_sparse(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = shl i32 %2, 3
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = add i32 %5, %8
  %10 = zext i32 %9 to i64
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr %16(ptr noundef %13) #2
  %18 = icmp eq ptr %17, null
  %19 = icmp eq i32 %3, 0
  br i1 %18, label %20, label %21, !prof !8

20:                                               ; preds = %4
  br i1 %19, label %50, label %33

21:                                               ; preds = %4
  br i1 %19, label %50, label %22

22:                                               ; preds = %21
  %23 = lshr i64 %10, 3
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i64 [ %27, %24 ], [ %11, %22 ]
  %26 = phi i64 [ %28, %24 ], [ %23, %22 ]
  %27 = add nsw i64 %25, -1
  %28 = add nuw nsw i64 %26, 1
  %29 = trunc i64 %26 to i32
  %30 = getelementptr i64, ptr %17, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !9
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #2, !srcloc !10
  %31 = getelementptr i32, ptr %30, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !9
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 1) #2, !srcloc !10
  %32 = icmp eq i64 %27, 0
  br i1 %32, label %50, label %24

33:                                               ; preds = %33, %20
  %34 = phi i64 [ %48, %33 ], [ %10, %20 ]
  %35 = phi i64 [ %47, %33 ], [ %11, %20 ]
  %36 = load ptr, ptr %12, align 4
  %37 = getelementptr inbounds %struct.nvkm_memory, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %36, i64 noundef %34, i32 noundef 0) #2
  %41 = load ptr, ptr %12, align 4
  %42 = getelementptr inbounds %struct.nvkm_memory, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = add nuw nsw i64 %34, 4
  tail call void %45(ptr noundef %41, i64 noundef %46, i32 noundef 1) #2
  %47 = add nsw i64 %35, -1
  %48 = add nuw nsw i64 %34, 8
  %49 = icmp eq i64 %47, 0
  br i1 %49, label %50, label %33

50:                                               ; preds = %33, %24, %21, %20
  %51 = load ptr, ptr %12, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_memory_func, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef %51) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_pgt_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_pgt_dma(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_pgt_sgl(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm200_vmm_pgd_sparse(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = shl i32 %2, 3
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = add i32 %5, %8
  %10 = zext i32 %9 to i64
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr %16(ptr noundef %13) #2
  %18 = icmp eq ptr %17, null
  %19 = icmp eq i32 %3, 0
  br i1 %18, label %20, label %21, !prof !8

20:                                               ; preds = %4
  br i1 %19, label %50, label %33

21:                                               ; preds = %4
  br i1 %19, label %50, label %22

22:                                               ; preds = %21
  %23 = lshr i64 %10, 3
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i64 [ %27, %24 ], [ %11, %22 ]
  %26 = phi i64 [ %28, %24 ], [ %23, %22 ]
  %27 = add nsw i64 %25, -1
  %28 = add nuw nsw i64 %26, 1
  %29 = trunc i64 %26 to i32
  %30 = getelementptr i64, ptr %17, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !9
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #2, !srcloc !10
  %31 = getelementptr i32, ptr %30, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !9
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 8) #2, !srcloc !10
  %32 = icmp eq i64 %27, 0
  br i1 %32, label %50, label %24

33:                                               ; preds = %33, %20
  %34 = phi i64 [ %48, %33 ], [ %10, %20 ]
  %35 = phi i64 [ %47, %33 ], [ %11, %20 ]
  %36 = load ptr, ptr %12, align 4
  %37 = getelementptr inbounds %struct.nvkm_memory, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %36, i64 noundef %34, i32 noundef 0) #2
  %41 = load ptr, ptr %12, align 4
  %42 = getelementptr inbounds %struct.nvkm_memory, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = add nuw nsw i64 %34, 4
  tail call void %45(ptr noundef %41, i64 noundef %46, i32 noundef 8) #2
  %47 = add nsw i64 %35, -1
  %48 = add nuw nsw i64 %34, 8
  %49 = icmp eq i64 %47, 0
  br i1 %49, label %50, label %33

50:                                               ; preds = %33, %24, %21, %20
  %51 = load ptr, ptr %12, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_memory_func, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef %51) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_pgd_pde(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_vmm_lpt_invalid(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_part(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_aper(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_valid(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_flush(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_invalidate_pdb(ptr noundef, i64 noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!9 = !{i64 2151504707}
!10 = !{i64 3963614}
