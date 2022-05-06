; ModuleID = '/llk/IR/lib/decompress_unlz4.c_pt.bc'
source_filename = "../lib/decompress_unlz4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@.str = private unnamed_addr constant [51 x i8] c"NULL output pointer and no flush function provided\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not allocate output buffer\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Both input pointer and fill function provided,\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"NULL input pointer and missing fill function\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not allocate input buffer\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"data corrupted\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"invalid header\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"chunk length is longer than allocated\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Decoding failed\00", align 1

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @unlz4(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 section ".init.text" {
  %8 = icmp eq ptr %4, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %7
  %10 = icmp eq ptr %3, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void %6(ptr noundef nonnull @.str) #3
  br label %132

12:                                               ; preds = %9
  %13 = tail call noalias ptr @vmalloc(i32 noundef 8388608) #4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void %6(ptr noundef nonnull @.str.1) #3
  br label %132

16:                                               ; preds = %12, %7
  %17 = phi ptr [ %13, %12 ], [ %4, %7 ]
  %18 = icmp ne ptr %0, null
  %19 = icmp ne ptr %2, null
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void %6(ptr noundef nonnull @.str.2) #3
  br label %128

22:                                               ; preds = %16
  br i1 %18, label %29, label %23

23:                                               ; preds = %22
  br i1 %19, label %25, label %24

24:                                               ; preds = %23
  tail call void %6(ptr noundef nonnull @.str.3) #3
  br label %128

25:                                               ; preds = %23
  %26 = tail call noalias ptr @vmalloc(i32 noundef 8421520) #4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void %6(ptr noundef nonnull @.str.4) #3
  br label %128

29:                                               ; preds = %25, %22
  %30 = phi ptr [ %26, %25 ], [ %0, %22 ]
  %31 = icmp eq ptr %5, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, ptr %5, align 4
  br label %33

33:                                               ; preds = %32, %29
  br i1 %19, label %34, label %37

34:                                               ; preds = %33
  %35 = tail call i32 %2(ptr noundef nonnull %30, i32 noundef 4) #3
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %120, label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ %35, %34 ], [ %1, %33 ]
  %39 = load i32, ptr %30, align 1
  %40 = icmp eq i32 %39, 407642370
  br i1 %40, label %41, label %120

41:                                               ; preds = %37
  %42 = add i32 %38, -4
  %43 = select i1 %19, i32 0, i32 4
  %44 = getelementptr i8, ptr %30, i32 %43
  %45 = select i1 %19, i32 %38, i32 %42
  br i1 %31, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, ptr %5, align 4
  %48 = add i32 %47, 4
  store i32 %48, ptr %5, align 4
  br label %49

49:                                               ; preds = %46, %41
  %50 = icmp eq ptr %2, null
  %51 = icmp eq ptr %3, null
  br label %52

52:                                               ; preds = %117, %49
  %53 = phi ptr [ %44, %49 ], [ %118, %117 ]
  %54 = phi ptr [ %17, %49 ], [ %105, %117 ]
  %55 = phi i32 [ %45, %49 ], [ %119, %117 ]
  br label %56

56:                                               ; preds = %77, %52
  %57 = phi ptr [ %53, %52 ], [ %72, %77 ]
  %58 = phi i32 [ %55, %52 ], [ %73, %77 ]
  br i1 %19, label %59, label %64

59:                                               ; preds = %56
  %60 = tail call i32 %2(ptr noundef %57, i32 noundef 4) #3
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %124, label %62

62:                                               ; preds = %59
  %63 = icmp slt i32 %60, 4
  br i1 %63, label %120, label %66

64:                                               ; preds = %56
  %65 = icmp slt i32 %58, 4
  br i1 %65, label %124, label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %60, %62 ], [ %58, %64 ]
  %68 = load i32, ptr %57, align 1
  %69 = icmp eq i32 %68, 407642370
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = add nsw i32 %67, -4
  %72 = getelementptr i8, ptr %57, i32 %43
  %73 = select i1 %19, i32 %67, i32 %71
  br i1 %31, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %5, align 4
  %76 = add i32 %75, 4
  store i32 %76, ptr %5, align 4
  br label %77

77:                                               ; preds = %74, %70
  br label %56

78:                                               ; preds = %66
  %79 = icmp eq i32 %68, 0
  %80 = select i1 %50, i1 %79, i1 false
  br i1 %80, label %124, label %81

81:                                               ; preds = %78
  br i1 %31, label %85, label %82

82:                                               ; preds = %81
  %83 = load i32, ptr %5, align 4
  %84 = add i32 %83, 4
  store i32 %84, ptr %5, align 4
  br label %85

85:                                               ; preds = %82, %81
  br i1 %19, label %89, label %86

86:                                               ; preds = %85
  %87 = getelementptr i8, ptr %57, i32 4
  %88 = add nsw i32 %67, -4
  br label %94

89:                                               ; preds = %85
  %90 = icmp ugt i32 %68, 8421520
  br i1 %90, label %120, label %91

91:                                               ; preds = %89
  %92 = tail call i32 %2(ptr noundef %57, i32 noundef %68) #3
  %93 = icmp ult i32 %92, %68
  br i1 %93, label %120, label %94

94:                                               ; preds = %91, %86
  %95 = phi ptr [ %57, %91 ], [ %87, %86 ]
  %96 = phi i32 [ %92, %91 ], [ %88, %86 ]
  %97 = tail call i32 @LZ4_decompress_safe(ptr noundef %95, ptr noundef %54, i32 noundef %68, i32 noundef 8388608) #3
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %120, label %99

99:                                               ; preds = %94
  br i1 %51, label %103, label %100

100:                                              ; preds = %99
  %101 = tail call i32 %3(ptr noundef %54, i32 noundef %97) #3
  %102 = icmp eq i32 %101, %97
  br i1 %102, label %103, label %124

103:                                              ; preds = %100, %99
  %104 = select i1 %8, i32 0, i32 %97
  %105 = getelementptr i8, ptr %54, i32 %104
  br i1 %31, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, ptr %5, align 4
  %108 = add i32 %107, %68
  store i32 %108, ptr %5, align 4
  br label %109

109:                                              ; preds = %106, %103
  br i1 %19, label %117, label %110

110:                                              ; preds = %109
  %111 = sub i32 %96, %68
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %110
  %114 = icmp slt i32 %111, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %113
  %116 = getelementptr i8, ptr %95, i32 %68
  br label %117

117:                                              ; preds = %115, %109
  %118 = phi ptr [ %95, %109 ], [ %116, %115 ]
  %119 = phi i32 [ %96, %109 ], [ %111, %115 ]
  br label %52

120:                                              ; preds = %113, %94, %91, %89, %62, %37, %34
  %121 = phi ptr [ @.str.5, %34 ], [ @.str.6, %37 ], [ @.str.5, %62 ], [ @.str.7, %89 ], [ @.str.5, %91 ], [ @.str.8, %94 ], [ @.str.5, %113 ]
  %122 = phi i32 [ -1, %34 ], [ -1, %37 ], [ -1, %62 ], [ -1, %89 ], [ -1, %91 ], [ %97, %94 ], [ -1, %113 ]
  %123 = phi ptr [ %17, %34 ], [ %17, %37 ], [ %54, %62 ], [ %54, %89 ], [ %54, %91 ], [ %54, %94 ], [ %105, %113 ]
  tail call void %6(ptr noundef nonnull %121) #3
  br label %124

124:                                              ; preds = %120, %110, %100, %78, %64, %59
  %125 = phi i32 [ %122, %120 ], [ 0, %59 ], [ 0, %64 ], [ -1, %100 ], [ 0, %110 ], [ 0, %78 ]
  %126 = phi ptr [ %123, %120 ], [ %54, %59 ], [ %54, %64 ], [ %54, %100 ], [ %105, %110 ], [ %54, %78 ]
  br i1 %18, label %128, label %127

127:                                              ; preds = %124
  tail call void @vfree(ptr noundef %30) #3
  br label %128

128:                                              ; preds = %127, %124, %28, %24, %21
  %129 = phi i32 [ -1, %21 ], [ %125, %124 ], [ %125, %127 ], [ -1, %28 ], [ -1, %24 ]
  %130 = phi ptr [ %17, %21 ], [ %126, %124 ], [ %126, %127 ], [ %17, %28 ], [ %17, %24 ]
  br i1 %8, label %131, label %132

131:                                              ; preds = %128
  tail call void @vfree(ptr noundef %130) #3
  br label %132

132:                                              ; preds = %131, %128, %15, %11
  %133 = phi i32 [ %129, %128 ], [ %129, %131 ], [ -1, %15 ], [ -1, %11 ]
  ret i32 %133
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @LZ4_decompress_safe(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(0) }

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
