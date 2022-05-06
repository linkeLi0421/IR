; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/gm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/gm200.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.0, %struct.anon.2, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.anon.0 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.2 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.123, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.anon.123 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.138, %struct.anon.139, i8, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.138 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.139 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }

@gm200_mmu_kind.kind = internal constant [256 x i8] c"\00\01\01\01\01\01\FF\01\01\01\01\FF\FF\FF\FF\FF\FF\11\FF\FF\FF\FF\FF\11\11\11\11\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF&'()*+\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF&'()&'()\FF\FF\FF\FFF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FFFFFF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF{\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF{{{{\FF\8B\8C\8D\8E\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\8B\8C\8D\8E\A7\A8\A9\AA\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\A7\A8\A9\AA\C3\FF\FF\FF\FF\FF\FF\FF\FF\FE\FE\C3\C3\C3\C3\FF\FF\FF\FF\FF\FF\FE\FF\FF\FE\FF\FE\FF\FE\FE\FF\FE\FE\FE\FE\FE\FF\FF\FE\FF\FE\FF\FE\FE\FF\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FF\FD\FE\FF", align 1
@gm200_mmu_fixed = internal constant %struct.nvkm_mmu_func { ptr null, i8 40, %struct.anon { %struct.nvkm_sclass { i32 -1, i32 -1, i32 -2147446775, ptr null, ptr null } }, %struct.anon.0 { %struct.nvkm_sclass { i32 -1, i32 0, i32 -2147446773, ptr null, ptr null }, ptr @gf100_mem_new, ptr @gf100_mem_map }, %struct.anon.2 { %struct.nvkm_sclass { i32 -1, i32 -1, i32 -2147438579, ptr null, ptr null }, ptr @gm200_vmm_new_fixed, i8 0, i32 0 }, ptr @gm200_mmu_kind, i8 1 }, align 4
@gm200_mmu = internal constant %struct.nvkm_mmu_func { ptr null, i8 40, %struct.anon { %struct.nvkm_sclass { i32 -1, i32 -1, i32 -2147446775, ptr null, ptr null } }, %struct.anon.0 { %struct.nvkm_sclass { i32 -1, i32 0, i32 -2147446773, ptr null, ptr null }, ptr @gf100_mem_new, ptr @gf100_mem_map }, %struct.anon.2 { %struct.nvkm_sclass { i32 -1, i32 0, i32 -2147438579, ptr null, ptr null }, ptr @gm200_vmm_new, i8 0, i32 0 }, ptr @gm200_mmu_kind, i8 1 }, align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local nonnull ptr @gm200_mmu_kind(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  store i32 256, ptr %1, align 4
  store i8 -1, ptr %2, align 1
  ret ptr @gm200_mmu_kind.kind
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_mmu_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 33
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_fb, ptr %6, i32 0, i32 6
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @gm200_mmu, ptr @gm200_mmu_fixed
  %11 = tail call i32 @nvkm_mmu_new_(ptr noundef nonnull %10, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mmu_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_mem_new(ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_mem_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_vmm_new_fixed(ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_vmm_new(ptr noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
