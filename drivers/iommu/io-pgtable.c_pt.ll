; ModuleID = '/llk/IR/drivers/iommu/io-pgtable.c_pt.bc'
source_filename = "../drivers/iommu/io-pgtable.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_io_pgtable_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_io_pgtable_ops\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_io_pgtable_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_io_pgtable_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22free_io_pgtable_ops\22\09\09\09\09\09"
module asm "__kstrtabns_free_io_pgtable_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.io_pgtable_init_fns = type { ptr, ptr }
%struct.io_pgtable = type { i32, ptr, %struct.io_pgtable_cfg, %struct.io_pgtable_ops }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.64 }
%union.anon.64 = type { %struct.anon.71 }
%struct.anon.71 = type { [4 x i64], i32 }
%struct.io_pgtable_ops = type { ptr, ptr, ptr, ptr, ptr }

@io_pgtable_init_table = internal unnamed_addr constant [8 x ptr] [ptr @io_pgtable_arm_32_lpae_s1_init_fns, ptr @io_pgtable_arm_32_lpae_s2_init_fns, ptr @io_pgtable_arm_64_lpae_s1_init_fns, ptr @io_pgtable_arm_64_lpae_s2_init_fns, ptr null, ptr @io_pgtable_arm_mali_lpae_init_fns, ptr null, ptr @io_pgtable_apple_dart_init_fns], align 4
@__kstrtab_alloc_io_pgtable_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_io_pgtable_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_io_pgtable_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_io_pgtable_ops to i32), ptr @__kstrtab_alloc_io_pgtable_ops, ptr @__kstrtabns_alloc_io_pgtable_ops }, section "___ksymtab_gpl+alloc_io_pgtable_ops", align 4
@__kstrtab_free_io_pgtable_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_io_pgtable_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_free_io_pgtable_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_io_pgtable_ops to i32), ptr @__kstrtab_free_io_pgtable_ops, ptr @__kstrtabns_free_io_pgtable_ops }, section "___ksymtab_gpl+free_io_pgtable_ops", align 4
@io_pgtable_arm_32_lpae_s1_init_fns = external dso_local global %struct.io_pgtable_init_fns, align 4
@io_pgtable_arm_32_lpae_s2_init_fns = external dso_local global %struct.io_pgtable_init_fns, align 4
@io_pgtable_arm_64_lpae_s1_init_fns = external dso_local global %struct.io_pgtable_init_fns, align 4
@io_pgtable_arm_64_lpae_s2_init_fns = external dso_local global %struct.io_pgtable_init_fns, align 4
@io_pgtable_arm_mali_lpae_init_fns = external dso_local global %struct.io_pgtable_init_fns, align 4
@io_pgtable_apple_dart_init_fns = external dso_local global %struct.io_pgtable_init_fns, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_alloc_io_pgtable_ops, ptr @__ksymtab_free_io_pgtable_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_io_pgtable_ops(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ugt i32 %0, 7
  %5 = and i32 %0, 1073741821
  %6 = icmp eq i32 %5, 4
  %7 = or i1 %4, %6
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr [8 x ptr], ptr @io_pgtable_init_table, i32 0, i32 %0
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr %11(ptr noundef %1, ptr noundef %2) #2
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  store i32 %0, ptr %12, align 8
  %15 = getelementptr inbounds %struct.io_pgtable, ptr %12, i32 0, i32 1
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.io_pgtable, ptr %12, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(72) %16, ptr noundef align 8 dereferenceable(72) %1, i32 72, i1 false)
  %17 = getelementptr inbounds %struct.io_pgtable, ptr %12, i32 0, i32 3
  br label %18

18:                                               ; preds = %14, %8, %3
  %19 = phi ptr [ %17, %14 ], [ null, %3 ], [ null, %8 ]
  ret ptr %19
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_io_pgtable_ops(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i32 -80
  %5 = getelementptr i8, ptr %0, i32 -52
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %0, i32 -76
  %13 = load ptr, ptr %12, align 4
  tail call void %9(ptr noundef %13) #2
  br label %14

14:                                               ; preds = %11, %8, %3
  %15 = load i32, ptr %4, align 8
  %16 = getelementptr [8 x ptr], ptr @io_pgtable_init_table, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.io_pgtable_init_fns, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %4) #2
  br label %20

20:                                               ; preds = %14, %1
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
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
