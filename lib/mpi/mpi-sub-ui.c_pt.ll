; ModuleID = '/llk/IR/lib/mpi/mpi-sub-ui.c_pt.bc'
source_filename = "../lib/mpi/mpi-sub-ui.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_sub_ui:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_sub_ui\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_sub_ui:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__kstrtab_mpi_sub_ui = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_sub_ui = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_sub_ui = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_sub_ui to i32), ptr @__kstrtab_mpi_sub_ui, ptr @__kstrtabns_mpi_sub_ui }, section "___ksymtab_gpl+mpi_sub_ui", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_mpi_sub_ui], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpi_sub_ui(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef 1) #2
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %130, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  store i32 %2, ptr %12, align 4
  %13 = icmp ne i32 %2, 0
  %14 = zext i1 %13 to i32
  %15 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  store i32 %14, ptr %16, align 4
  br label %130

17:                                               ; preds = %3
  %18 = add i32 %5, 1
  %19 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef %18) #2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %130

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %70, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %4, align 4
  %31 = getelementptr i32, ptr %29, i32 1
  %32 = load i32, ptr %29, align 4
  %33 = add i32 %32, %2
  %34 = getelementptr i32, ptr %27, i32 1
  store i32 %33, ptr %27, align 4
  %35 = icmp ult i32 %33, %32
  br i1 %35, label %36, label %48

36:                                               ; preds = %42, %25
  %37 = phi ptr [ %46, %42 ], [ %34, %25 ]
  %38 = phi ptr [ %43, %42 ], [ %31, %25 ]
  %39 = phi i32 [ %40, %42 ], [ %30, %25 ]
  %40 = add i32 %39, -1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %36
  %43 = getelementptr i32, ptr %38, i32 1
  %44 = load i32, ptr %38, align 4
  %45 = add i32 %44, 1
  %46 = getelementptr i32, ptr %37, i32 1
  store i32 %45, ptr %37, align 4
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %36, label %48

48:                                               ; preds = %42, %25
  %49 = phi ptr [ %34, %25 ], [ %46, %42 ]
  %50 = phi ptr [ %31, %25 ], [ %43, %42 ]
  %51 = phi i32 [ %30, %25 ], [ %40, %42 ]
  %52 = icmp eq ptr %49, %50
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = add i32 %51, -1
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %56, %53
  %57 = phi i32 [ %61, %56 ], [ 0, %53 ]
  %58 = getelementptr i32, ptr %50, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr i32, ptr %49, i32 %57
  store i32 %59, ptr %60, align 4
  %61 = add nuw nsw i32 %57, 1
  %62 = icmp eq i32 %61, %54
  br i1 %62, label %63, label %56

63:                                               ; preds = %56, %53, %48, %36
  %64 = phi i32 [ 0, %48 ], [ 0, %53 ], [ 0, %56 ], [ 1, %36 ]
  %65 = load ptr, ptr %26, align 4
  %66 = load i32, ptr %4, align 4
  %67 = getelementptr i32, ptr %65, i32 %66
  store i32 %64, ptr %67, align 4
  %68 = load i32, ptr %4, align 4
  %69 = add i32 %68, %64
  br label %125

70:                                               ; preds = %21
  %71 = load i32, ptr %4, align 4
  %72 = icmp eq i32 %71, 1
  %73 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %74 = load ptr, ptr %73, align 4
  %75 = load i32, ptr %74, align 4
  %76 = icmp ult i32 %75, %2
  %77 = select i1 %72, i1 %76, i1 false
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = sub i32 %2, %75
  %80 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  store i32 %79, ptr %81, align 4
  br label %125

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i32, ptr %74, i32 1
  %86 = sub i32 %75, %2
  %87 = getelementptr i32, ptr %84, i32 1
  store i32 %86, ptr %84, align 4
  %88 = icmp ult i32 %75, %2
  br i1 %88, label %89, label %101

89:                                               ; preds = %95, %82
  %90 = phi ptr [ %99, %95 ], [ %87, %82 ]
  %91 = phi ptr [ %96, %95 ], [ %85, %82 ]
  %92 = phi i32 [ %93, %95 ], [ %71, %82 ]
  %93 = add i32 %92, -1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %116, label %95

95:                                               ; preds = %89
  %96 = getelementptr i32, ptr %91, i32 1
  %97 = load i32, ptr %91, align 4
  %98 = add i32 %97, -1
  %99 = getelementptr i32, ptr %90, i32 1
  store i32 %98, ptr %90, align 4
  %100 = icmp eq i32 %97, 0
  br i1 %100, label %89, label %101

101:                                              ; preds = %95, %82
  %102 = phi ptr [ %87, %82 ], [ %99, %95 ]
  %103 = phi ptr [ %85, %82 ], [ %96, %95 ]
  %104 = phi i32 [ %71, %82 ], [ %93, %95 ]
  %105 = icmp eq ptr %102, %103
  br i1 %105, label %116, label %106

106:                                              ; preds = %101
  %107 = add i32 %104, -1
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %109, %106
  %110 = phi i32 [ %114, %109 ], [ 0, %106 ]
  %111 = getelementptr i32, ptr %103, i32 %110
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i32, ptr %102, i32 %110
  store i32 %112, ptr %113, align 4
  %114 = add nuw nsw i32 %110, 1
  %115 = icmp eq i32 %114, %107
  br i1 %115, label %116, label %109

116:                                              ; preds = %109, %106, %101, %89
  %117 = load i32, ptr %4, align 4
  %118 = load ptr, ptr %83, align 4
  %119 = add i32 %117, -1
  %120 = getelementptr i32, ptr %118, i32 %119
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  %123 = sext i1 %122 to i32
  %124 = add i32 %117, %123
  br label %125

125:                                              ; preds = %116, %78, %63
  %126 = phi i32 [ 1, %78 ], [ %124, %116 ], [ %69, %63 ]
  %127 = phi i32 [ 1, %78 ], [ 0, %116 ], [ 1, %63 ]
  %128 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 %126, ptr %128, align 4
  %129 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  store i32 %127, ptr %129, align 4
  tail call void @mpi_normalize(ptr noundef %0) #2
  br label %130

130:                                              ; preds = %125, %17, %10, %7
  %131 = phi i32 [ 0, %10 ], [ 0, %125 ], [ -12, %7 ], [ -12, %17 ]
  ret i32 %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_resize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_normalize(ptr noundef) local_unnamed_addr #1

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
