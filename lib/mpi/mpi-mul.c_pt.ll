; ModuleID = '/llk/IR/lib/mpi/mpi-mul.c_pt.bc'
source_filename = "../lib/mpi/mpi-mul.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_mulm:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_mulm\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_mulm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__kstrtab_mpi_mulm = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_mulm = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_mulm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_mulm to i32), ptr @__kstrtab_mpi_mulm, ptr @__kstrtabns_mpi_mulm }, section "___ksymtab_gpl+mpi_mulm", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_mpi_mulm], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_mul(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %6, %8
  %10 = tail call i32 @llvm.smax.i32(i32 %6, i32 %8)
  %11 = tail call i32 @llvm.smin.i32(i32 %6, i32 %8)
  %12 = select i1 %9, ptr %2, ptr %1
  %13 = select i1 %9, ptr %1, ptr %2
  %14 = getelementptr inbounds %struct.gcry_mpi, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.gcry_mpi, ptr %13, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = xor i32 %17, %15
  %23 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = add i32 %10, %11
  %26 = load i32, ptr %0, align 4
  %27 = icmp slt i32 %26, %25
  %28 = icmp eq ptr %24, %21
  br i1 %27, label %29, label %37

29:                                               ; preds = %3
  %30 = icmp eq ptr %24, %19
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call ptr @mpi_alloc_limb_space(i32 noundef %25) #4
  br label %62

34:                                               ; preds = %29
  %35 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef %25) #4
  %36 = load ptr, ptr %23, align 4
  br label %62

37:                                               ; preds = %3
  br i1 %28, label %38, label %50

38:                                               ; preds = %37
  %39 = tail call ptr @mpi_alloc_limb_space(i32 noundef %10) #4
  %40 = icmp eq ptr %21, %19
  %41 = select i1 %40, ptr %39, ptr %19
  %42 = icmp sgt i32 %10, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %43, %38
  %44 = phi i32 [ %48, %43 ], [ 0, %38 ]
  %45 = getelementptr i32, ptr %21, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i32, ptr %39, i32 %44
  store i32 %46, ptr %47, align 4
  %48 = add nuw nsw i32 %44, 1
  %49 = icmp eq i32 %48, %10
  br i1 %49, label %62, label %43

50:                                               ; preds = %37
  %51 = icmp eq ptr %24, %19
  br i1 %51, label %52, label %62

52:                                               ; preds = %50
  %53 = tail call ptr @mpi_alloc_limb_space(i32 noundef %11) #4
  %54 = icmp sgt i32 %11, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %55, %52
  %56 = phi i32 [ %60, %55 ], [ 0, %52 ]
  %57 = getelementptr i32, ptr %19, i32 %56
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i32, ptr %53, i32 %56
  store i32 %58, ptr %59, align 4
  %60 = add nuw nsw i32 %56, 1
  %61 = icmp eq i32 %60, %11
  br i1 %61, label %62, label %55

62:                                               ; preds = %55, %52, %50, %43, %38, %34, %32
  %63 = phi ptr [ %21, %32 ], [ %21, %34 ], [ %21, %50 ], [ %39, %38 ], [ %21, %52 ], [ %39, %43 ], [ %21, %55 ]
  %64 = phi ptr [ %19, %32 ], [ %19, %34 ], [ %19, %50 ], [ %41, %38 ], [ %53, %52 ], [ %41, %43 ], [ %53, %55 ]
  %65 = phi ptr [ %33, %32 ], [ %36, %34 ], [ %24, %50 ], [ %21, %38 ], [ %19, %52 ], [ %21, %43 ], [ %19, %55 ]
  %66 = phi i1 [ false, %32 ], [ true, %34 ], [ true, %50 ], [ true, %38 ], [ true, %52 ], [ true, %43 ], [ true, %55 ]
  %67 = phi ptr [ null, %32 ], [ null, %34 ], [ null, %50 ], [ %39, %38 ], [ %53, %52 ], [ %39, %43 ], [ %53, %55 ]
  %68 = icmp eq i32 %11, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = call i32 @mpihelp_mul(ptr noundef %65, ptr noundef %63, i32 noundef %10, ptr noundef %64, i32 noundef %11, ptr noundef nonnull %4) #4
  %71 = load i32, ptr %4, align 4
  %72 = icmp eq i32 %71, 0
  %73 = sext i1 %72 to i32
  %74 = add i32 %25, %73
  br label %75

75:                                               ; preds = %69, %62
  %76 = phi i32 [ %74, %69 ], [ 0, %62 ]
  br i1 %66, label %78, label %77

77:                                               ; preds = %75
  call void @mpi_assign_limb_space(ptr noundef %0, ptr noundef %65, i32 noundef %76) #4
  br label %78

78:                                               ; preds = %77, %75
  %79 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 %76, ptr %79, align 4
  %80 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  store i32 %22, ptr %80, align 4
  %81 = icmp eq ptr %67, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  call void @mpi_free_limb_space(ptr noundef nonnull %67) #4
  br label %83

83:                                               ; preds = %82, %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc_limb_space(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_mul(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_assign_limb_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free_limb_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_mulm(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  tail call void @mpi_mul(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @mpi_tdiv_r(ptr noundef %0, ptr noundef %0, ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_tdiv_r(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
