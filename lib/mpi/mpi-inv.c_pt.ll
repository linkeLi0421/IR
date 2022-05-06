; ModuleID = '/llk/IR/lib/mpi/mpi-inv.c_pt.bc'
source_filename = "../lib/mpi/mpi-inv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_invm:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_invm\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_invm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__kstrtab_mpi_invm = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_invm = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_invm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_invm to i32), ptr @__kstrtab_mpi_invm, ptr @__kstrtabns_mpi_invm }, section "___ksymtab_gpl+mpi_invm", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_mpi_invm], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpi_invm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @mpi_cmp_ui(ptr noundef %1, i32 noundef 0) #2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %115, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @mpi_cmp_ui(ptr noundef %2, i32 noundef 1) #2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %115, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @mpi_copy(ptr noundef %1) #2
  %11 = tail call ptr @mpi_copy(ptr noundef %2) #2
  %12 = tail call i32 @mpi_test_bit(ptr noundef %10, i32 noundef 0) #2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %17, %9
  %15 = tail call i32 @mpi_test_bit(ptr noundef %11, i32 noundef 0) #2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  tail call void @mpi_rshift(ptr noundef %10, ptr noundef %10, i32 noundef 1) #2
  tail call void @mpi_rshift(ptr noundef %11, ptr noundef %11, i32 noundef 1) #2
  %18 = tail call i32 @mpi_test_bit(ptr noundef %10, i32 noundef 0) #2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %14, label %20

20:                                               ; preds = %17, %14, %9
  %21 = tail call i32 @mpi_test_bit(ptr noundef %11, i32 noundef 0) #2
  %22 = tail call ptr @mpi_alloc_set_ui(i32 noundef 1) #2
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call ptr @mpi_alloc_set_ui(i32 noundef 0) #2
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi ptr [ null, %20 ], [ %25, %24 ]
  %28 = tail call ptr @mpi_copy(ptr noundef %10) #2
  %29 = tail call ptr @mpi_copy(ptr noundef %11) #2
  br i1 %23, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = tail call ptr @mpi_alloc(i32 noundef %32) #2
  tail call void @mpi_sub(ptr noundef %33, ptr noundef %22, ptr noundef %10) #2
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi ptr [ null, %26 ], [ %33, %30 ]
  %36 = tail call ptr @mpi_copy(ptr noundef %11) #2
  %37 = tail call i32 @mpi_test_bit(ptr noundef %10, i32 noundef 0) #2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %34
  %40 = tail call ptr @mpi_alloc_set_ui(i32 noundef 0) #2
  br i1 %23, label %41, label %44

41:                                               ; preds = %39
  %42 = tail call ptr @mpi_alloc_set_ui(i32 noundef 1) #2
  %43 = getelementptr inbounds %struct.gcry_mpi, ptr %42, i32 0, i32 3
  store i32 1, ptr %43, align 4
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi ptr [ null, %39 ], [ %42, %41 ]
  %46 = tail call ptr @mpi_copy(ptr noundef %11) #2
  %47 = getelementptr inbounds %struct.gcry_mpi, ptr %46, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, ptr %47, align 4
  br label %73

51:                                               ; preds = %34
  %52 = tail call ptr @mpi_alloc_set_ui(i32 noundef 1) #2
  br i1 %23, label %53, label %55

53:                                               ; preds = %51
  %54 = tail call ptr @mpi_alloc_set_ui(i32 noundef 0) #2
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi ptr [ null, %51 ], [ %54, %53 ]
  %57 = tail call ptr @mpi_copy(ptr noundef %10) #2
  br label %58

58:                                               ; preds = %108, %73, %55
  %59 = phi ptr [ %74, %73 ], [ %74, %108 ], [ %52, %55 ]
  %60 = phi ptr [ %75, %73 ], [ %75, %108 ], [ %56, %55 ]
  %61 = phi ptr [ %76, %73 ], [ %76, %108 ], [ %57, %55 ]
  %62 = tail call i32 @mpi_test_bit(ptr noundef %59, i32 noundef 0) #2
  %63 = icmp eq i32 %62, 0
  br i1 %23, label %64, label %70

64:                                               ; preds = %58
  br i1 %63, label %65, label %68

65:                                               ; preds = %64
  %66 = tail call i32 @mpi_test_bit(ptr noundef %60, i32 noundef 0) #2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65, %64
  tail call void @mpi_add(ptr noundef %59, ptr noundef %59, ptr noundef %11) #2
  tail call void @mpi_sub(ptr noundef %60, ptr noundef %60, ptr noundef %10) #2
  br label %69

69:                                               ; preds = %68, %65
  tail call void @mpi_rshift(ptr noundef %59, ptr noundef %59, i32 noundef 1) #2
  tail call void @mpi_rshift(ptr noundef %60, ptr noundef %60, i32 noundef 1) #2
  tail call void @mpi_rshift(ptr noundef %61, ptr noundef %61, i32 noundef 1) #2
  br label %73

70:                                               ; preds = %58
  br i1 %63, label %72, label %71

71:                                               ; preds = %70
  tail call void @mpi_add(ptr noundef %59, ptr noundef %59, ptr noundef %11) #2
  br label %72

72:                                               ; preds = %71, %70
  tail call void @mpi_rshift(ptr noundef %59, ptr noundef %59, i32 noundef 1) #2
  tail call void @mpi_rshift(ptr noundef %61, ptr noundef %61, i32 noundef 1) #2
  br label %73

73:                                               ; preds = %72, %69, %44
  %74 = phi ptr [ %40, %44 ], [ %59, %72 ], [ %59, %69 ]
  %75 = phi ptr [ %45, %44 ], [ %60, %72 ], [ %60, %69 ]
  %76 = phi ptr [ %46, %44 ], [ %61, %72 ], [ %61, %69 ]
  %77 = tail call i32 @mpi_test_bit(ptr noundef %76, i32 noundef 0) #2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %58, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.gcry_mpi, ptr %76, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = tail call ptr @mpi_set(ptr noundef %22, ptr noundef %74) #2
  br i1 %23, label %85, label %87

85:                                               ; preds = %83
  %86 = tail call ptr @mpi_set(ptr noundef %27, ptr noundef %75) #2
  br label %87

87:                                               ; preds = %85, %83
  %88 = tail call ptr @mpi_set(ptr noundef %28, ptr noundef %76) #2
  br label %100

89:                                               ; preds = %79
  tail call void @mpi_sub(ptr noundef %29, ptr noundef %11, ptr noundef %74) #2
  %90 = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  %93 = zext i1 %92 to i32
  store i32 %93, ptr %90, align 4
  br i1 %23, label %94, label %95

94:                                               ; preds = %89
  tail call void @mpi_sub(ptr noundef %35, ptr noundef %10, ptr noundef %75) #2
  br label %95

95:                                               ; preds = %94, %89
  store i32 %91, ptr %90, align 4
  %96 = load i32, ptr %80, align 4
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  store i32 %98, ptr %80, align 4
  %99 = tail call ptr @mpi_set(ptr noundef %36, ptr noundef %76) #2
  store i32 %96, ptr %80, align 4
  br label %100

100:                                              ; preds = %95, %87
  tail call void @mpi_sub(ptr noundef %74, ptr noundef %22, ptr noundef %29) #2
  br i1 %23, label %101, label %102

101:                                              ; preds = %100
  tail call void @mpi_sub(ptr noundef %75, ptr noundef %27, ptr noundef %35) #2
  br label %102

102:                                              ; preds = %101, %100
  tail call void @mpi_sub(ptr noundef %76, ptr noundef %28, ptr noundef %36) #2
  %103 = getelementptr inbounds %struct.gcry_mpi, ptr %74, i32 0, i32 3
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  tail call void @mpi_add(ptr noundef %74, ptr noundef %74, ptr noundef %11) #2
  br i1 %23, label %107, label %108

107:                                              ; preds = %106
  tail call void @mpi_sub(ptr noundef %75, ptr noundef %75, ptr noundef %10) #2
  br label %108

108:                                              ; preds = %107, %106, %102
  %109 = tail call i32 @mpi_cmp_ui(ptr noundef %76, i32 noundef 0) #2
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %58

111:                                              ; preds = %108
  %112 = tail call ptr @mpi_set(ptr noundef %0, ptr noundef %22) #2
  tail call void @mpi_free(ptr noundef %22) #2
  tail call void @mpi_free(ptr noundef %29) #2
  tail call void @mpi_free(ptr noundef %74) #2
  br i1 %23, label %113, label %114

113:                                              ; preds = %111
  tail call void @mpi_free(ptr noundef %27) #2
  tail call void @mpi_free(ptr noundef %35) #2
  tail call void @mpi_free(ptr noundef %75) #2
  br label %114

114:                                              ; preds = %113, %111
  tail call void @mpi_free(ptr noundef %28) #2
  tail call void @mpi_free(ptr noundef %36) #2
  tail call void @mpi_free(ptr noundef %76) #2
  tail call void @mpi_free(ptr noundef %10) #2
  tail call void @mpi_free(ptr noundef %11) #2
  br label %115

115:                                              ; preds = %114, %6, %3
  %116 = phi i32 [ 1, %114 ], [ 0, %3 ], [ 0, %6 ]
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmp_ui(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_test_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_rshift(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc_set_ui(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free(ptr noundef) local_unnamed_addr #1

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
