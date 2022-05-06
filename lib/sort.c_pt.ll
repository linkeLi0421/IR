; ModuleID = '/llk/IR/lib/sort.c_pt.bc'
source_filename = "../lib/sort.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sort_r:\09\09\09\09\09"
module asm "\09.asciz \09\22sort_r\22\09\09\09\09\09"
module asm "__kstrtabns_sort_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sort:\09\09\09\09\09"
module asm "\09.asciz \09\22sort\22\09\09\09\09\09"
module asm "__kstrtabns_sort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_sort_r = external dso_local constant [0 x i8], align 1
@__kstrtabns_sort_r = external dso_local constant [0 x i8], align 1
@__ksymtab_sort_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sort_r to i32), ptr @__kstrtab_sort_r, ptr @__kstrtabns_sort_r }, section "___ksymtab+sort_r", align 4
@__kstrtab_sort = external dso_local constant [0 x i8], align 1
@__kstrtabns_sort = external dso_local constant [0 x i8], align 1
@__ksymtab_sort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sort to i32), ptr @__kstrtab_sort, ptr @__kstrtabns_sort }, section "___ksymtab+sort", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_sort, ptr @__ksymtab_sort_r], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sort_r(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = mul i32 %2, %1
  %8 = lshr i32 %1, 1
  %9 = mul i32 %8, %2
  %10 = sub i32 0, %2
  %11 = and i32 %10, %2
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %164, label %13

13:                                               ; preds = %6
  %14 = icmp eq ptr %4, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %13
  %16 = and i32 %2, 7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = and i32 %2, 3
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr inttoptr (i32 1 to ptr), ptr inttoptr (i32 2 to ptr)
  br label %22

22:                                               ; preds = %18, %15, %13
  %23 = phi ptr [ %4, %13 ], [ null, %15 ], [ %21, %18 ]
  %24 = ptrtoint ptr %23 to i32
  %25 = icmp eq ptr %3, null
  br label %26

26:                                               ; preds = %98, %22
  %27 = phi i32 [ %7, %22 ], [ %68, %98 ]
  %28 = phi i32 [ %9, %22 ], [ %69, %98 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = sub i32 %28, %2
  br label %67

32:                                               ; preds = %26
  %33 = sub i32 %27, %2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %164, label %35

35:                                               ; preds = %32
  %36 = getelementptr i8, ptr %0, i32 %33
  switch i32 %24, label %66 [
    i32 0, label %37
    i32 1, label %50
    i32 2, label %58
  ]

37:                                               ; preds = %37, %35
  %38 = phi i32 [ %44, %37 ], [ %2, %35 ]
  %39 = add i32 %38, -4
  %40 = getelementptr i8, ptr %0, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %36, i32 %39
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %40, align 4
  store i32 %41, ptr %42, align 4
  %44 = add i32 %38, -8
  %45 = getelementptr i8, ptr %0, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %36, i32 %44
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %45, align 4
  store i32 %46, ptr %47, align 4
  %49 = icmp eq i32 %44, 0
  br i1 %49, label %67, label %37

50:                                               ; preds = %50, %35
  %51 = phi i32 [ %52, %50 ], [ %2, %35 ]
  %52 = add i32 %51, -4
  %53 = getelementptr i8, ptr %0, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %36, i32 %52
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr %53, align 4
  store i32 %54, ptr %55, align 4
  %57 = icmp eq i32 %52, 0
  br i1 %57, label %67, label %50

58:                                               ; preds = %58, %35
  %59 = phi i32 [ %60, %58 ], [ %2, %35 ]
  %60 = add i32 %59, -1
  %61 = getelementptr i8, ptr %0, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr i8, ptr %36, i32 %60
  %64 = load i8, ptr %63, align 1
  store i8 %64, ptr %61, align 1
  store i8 %62, ptr %63, align 1
  %65 = icmp eq i32 %60, 0
  br i1 %65, label %67, label %58

66:                                               ; preds = %35
  tail call void %23(ptr noundef %0, ptr noundef %36, i32 noundef %2) #1
  br label %67

67:                                               ; preds = %66, %58, %50, %37, %30
  %68 = phi i32 [ %27, %30 ], [ %33, %66 ], [ %33, %37 ], [ %33, %50 ], [ %33, %58 ]
  %69 = phi i32 [ %31, %30 ], [ 0, %66 ], [ 0, %37 ], [ 0, %50 ], [ 0, %58 ]
  %70 = shl i32 %69, 1
  %71 = add i32 %70, %2
  %72 = add i32 %71, %2
  %73 = icmp ult i32 %72, %68
  br i1 %73, label %74, label %91

74:                                               ; preds = %83, %67
  %75 = phi i32 [ %89, %83 ], [ %72, %67 ]
  %76 = phi i32 [ %88, %83 ], [ %71, %67 ]
  %77 = getelementptr i8, ptr %0, i32 %76
  %78 = getelementptr i8, ptr %0, i32 %75
  br i1 %25, label %79, label %81

79:                                               ; preds = %74
  %80 = tail call i32 %5(ptr noundef %77, ptr noundef %78) #1
  br label %83

81:                                               ; preds = %74
  %82 = tail call i32 %3(ptr noundef %77, ptr noundef %78, ptr noundef %5) #1
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = icmp slt i32 %84, 0
  %86 = select i1 %85, i32 %75, i32 %76
  %87 = shl i32 %86, 1
  %88 = add i32 %87, %2
  %89 = add i32 %88, %2
  %90 = icmp ult i32 %89, %68
  br i1 %90, label %74, label %91

91:                                               ; preds = %83, %67
  %92 = phi i32 [ %69, %67 ], [ %86, %83 ]
  %93 = phi i32 [ %71, %67 ], [ %88, %83 ]
  %94 = phi i32 [ %72, %67 ], [ %89, %83 ]
  %95 = icmp eq i32 %94, %68
  %96 = select i1 %95, i32 %93, i32 %92
  %97 = icmp eq i32 %96, %69
  br i1 %97, label %98, label %99

98:                                               ; preds = %162, %119, %111, %91
  br label %26

99:                                               ; preds = %91
  %100 = getelementptr i8, ptr %0, i32 %69
  br label %101

101:                                              ; preds = %111, %99
  %102 = phi i32 [ %96, %99 ], [ %117, %111 ]
  %103 = getelementptr i8, ptr %0, i32 %102
  br i1 %25, label %104, label %106

104:                                              ; preds = %101
  %105 = tail call i32 %5(ptr noundef %100, ptr noundef %103) #1
  br label %108

106:                                              ; preds = %101
  %107 = tail call i32 %3(ptr noundef %100, ptr noundef %103, ptr noundef %5) #1
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = sub i32 %102, %2
  %113 = and i32 %112, %11
  %114 = sub i32 0, %113
  %115 = and i32 %114, %2
  %116 = sub i32 %112, %115
  %117 = lshr i32 %116, 1
  %118 = icmp eq i32 %117, %69
  br i1 %118, label %98, label %101

119:                                              ; preds = %108
  %120 = icmp eq i32 %102, %69
  br i1 %120, label %98, label %121

121:                                              ; preds = %119
  %122 = getelementptr i8, ptr %0, i32 %102
  br label %123

123:                                              ; preds = %162, %121
  %124 = phi i32 [ %102, %121 ], [ %130, %162 ]
  %125 = sub i32 %124, %2
  %126 = and i32 %125, %11
  %127 = sub i32 0, %126
  %128 = and i32 %127, %2
  %129 = sub i32 %125, %128
  %130 = lshr i32 %129, 1
  %131 = getelementptr i8, ptr %0, i32 %130
  switch i32 %24, label %161 [
    i32 0, label %132
    i32 1, label %145
    i32 2, label %153
  ]

132:                                              ; preds = %132, %123
  %133 = phi i32 [ %139, %132 ], [ %2, %123 ]
  %134 = add i32 %133, -4
  %135 = getelementptr i8, ptr %131, i32 %134
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr i8, ptr %122, i32 %134
  %138 = load i32, ptr %137, align 4
  store i32 %138, ptr %135, align 4
  store i32 %136, ptr %137, align 4
  %139 = add i32 %133, -8
  %140 = getelementptr i8, ptr %131, i32 %139
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr i8, ptr %122, i32 %139
  %143 = load i32, ptr %142, align 4
  store i32 %143, ptr %140, align 4
  store i32 %141, ptr %142, align 4
  %144 = icmp eq i32 %139, 0
  br i1 %144, label %162, label %132

145:                                              ; preds = %145, %123
  %146 = phi i32 [ %147, %145 ], [ %2, %123 ]
  %147 = add i32 %146, -4
  %148 = getelementptr i8, ptr %131, i32 %147
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr i8, ptr %122, i32 %147
  %151 = load i32, ptr %150, align 4
  store i32 %151, ptr %148, align 4
  store i32 %149, ptr %150, align 4
  %152 = icmp eq i32 %147, 0
  br i1 %152, label %162, label %145

153:                                              ; preds = %153, %123
  %154 = phi i32 [ %155, %153 ], [ %2, %123 ]
  %155 = add i32 %154, -1
  %156 = getelementptr i8, ptr %131, i32 %155
  %157 = load i8, ptr %156, align 1
  %158 = getelementptr i8, ptr %122, i32 %155
  %159 = load i8, ptr %158, align 1
  store i8 %159, ptr %156, align 1
  store i8 %157, ptr %158, align 1
  %160 = icmp eq i32 %155, 0
  br i1 %160, label %162, label %153

161:                                              ; preds = %123
  tail call void %23(ptr noundef %131, ptr noundef %122, i32 noundef %2) #1
  br label %162

162:                                              ; preds = %161, %153, %145, %132
  %163 = icmp eq i32 %130, %69
  br i1 %163, label %98, label %123

164:                                              ; preds = %32, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sort(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  tail call void @sort_r(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef null, ptr noundef %4, ptr noundef %3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }

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
