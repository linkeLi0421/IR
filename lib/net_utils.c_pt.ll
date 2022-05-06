; ModuleID = '/llk/IR/lib/net_utils.c_pt.bc'
source_filename = "../lib/net_utils.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mac_pton:\09\09\09\09\09"
module asm "\09.asciz \09\22mac_pton\22\09\09\09\09\09"
module asm "__kstrtabns_mac_pton:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_mac_pton = external dso_local constant [0 x i8], align 1
@__kstrtabns_mac_pton = external dso_local constant [0 x i8], align 1
@__ksymtab_mac_pton = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mac_pton to i32), ptr @__kstrtab_mac_pton, ptr @__kstrtabns_mac_pton }, section "___ksymtab+mac_pton", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_mac_pton], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @mac_pton(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call i32 @strlen(ptr noundef %0)
  %4 = icmp ult i32 %3, 17
  br i1 %4, label %167, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %0, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 68
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %167, label %12

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 68
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %167, label %20

20:                                               ; preds = %12
  %21 = getelementptr i8, ptr %0, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 58
  br i1 %23, label %24, label %167

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %0, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %27
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 68
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %167, label %32

32:                                               ; preds = %24
  %33 = getelementptr i8, ptr %0, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %35
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 68
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %167, label %40

40:                                               ; preds = %32
  %41 = getelementptr i8, ptr %0, i32 5
  %42 = load i8, ptr %41, align 1
  %43 = icmp eq i8 %42, 58
  br i1 %43, label %44, label %167

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %0, i32 6
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %47
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, 68
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %167, label %52

52:                                               ; preds = %44
  %53 = getelementptr i8, ptr %0, i32 7
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %55
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, 68
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %167, label %60

60:                                               ; preds = %52
  %61 = getelementptr i8, ptr %0, i32 8
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 58
  br i1 %63, label %64, label %167

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %0, i32 9
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %67
  %69 = load i8, ptr %68, align 1
  %70 = and i8 %69, 68
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %167, label %72

72:                                               ; preds = %64
  %73 = getelementptr i8, ptr %0, i32 10
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %75
  %77 = load i8, ptr %76, align 1
  %78 = and i8 %77, 68
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %167, label %80

80:                                               ; preds = %72
  %81 = getelementptr i8, ptr %0, i32 11
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, 58
  br i1 %83, label %84, label %167

84:                                               ; preds = %80
  %85 = getelementptr i8, ptr %0, i32 12
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %87
  %89 = load i8, ptr %88, align 1
  %90 = and i8 %89, 68
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %167, label %92

92:                                               ; preds = %84
  %93 = getelementptr i8, ptr %0, i32 13
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %95
  %97 = load i8, ptr %96, align 1
  %98 = and i8 %97, 68
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %167, label %100

100:                                              ; preds = %92
  %101 = getelementptr i8, ptr %0, i32 14
  %102 = load i8, ptr %101, align 1
  %103 = icmp eq i8 %102, 58
  br i1 %103, label %104, label %167

104:                                              ; preds = %100
  %105 = getelementptr i8, ptr %0, i32 15
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %107
  %109 = load i8, ptr %108, align 1
  %110 = and i8 %109, 68
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %167, label %112

112:                                              ; preds = %104
  %113 = getelementptr i8, ptr %0, i32 16
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %115
  %117 = load i8, ptr %116, align 1
  %118 = and i8 %117, 68
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %167, label %120

120:                                              ; preds = %112
  %121 = tail call i32 @hex_to_bin(i8 noundef zeroext %6) #3
  %122 = shl i32 %121, 4
  %123 = load i8, ptr %13, align 1
  %124 = tail call i32 @hex_to_bin(i8 noundef zeroext %123) #3
  %125 = or i32 %124, %122
  %126 = trunc i32 %125 to i8
  store i8 %126, ptr %1, align 1
  %127 = load i8, ptr %25, align 1
  %128 = tail call i32 @hex_to_bin(i8 noundef zeroext %127) #3
  %129 = shl i32 %128, 4
  %130 = load i8, ptr %33, align 1
  %131 = tail call i32 @hex_to_bin(i8 noundef zeroext %130) #3
  %132 = or i32 %131, %129
  %133 = trunc i32 %132 to i8
  %134 = getelementptr i8, ptr %1, i32 1
  store i8 %133, ptr %134, align 1
  %135 = load i8, ptr %45, align 1
  %136 = tail call i32 @hex_to_bin(i8 noundef zeroext %135) #3
  %137 = shl i32 %136, 4
  %138 = load i8, ptr %53, align 1
  %139 = tail call i32 @hex_to_bin(i8 noundef zeroext %138) #3
  %140 = or i32 %139, %137
  %141 = trunc i32 %140 to i8
  %142 = getelementptr i8, ptr %1, i32 2
  store i8 %141, ptr %142, align 1
  %143 = load i8, ptr %65, align 1
  %144 = tail call i32 @hex_to_bin(i8 noundef zeroext %143) #3
  %145 = shl i32 %144, 4
  %146 = load i8, ptr %73, align 1
  %147 = tail call i32 @hex_to_bin(i8 noundef zeroext %146) #3
  %148 = or i32 %147, %145
  %149 = trunc i32 %148 to i8
  %150 = getelementptr i8, ptr %1, i32 3
  store i8 %149, ptr %150, align 1
  %151 = load i8, ptr %85, align 1
  %152 = tail call i32 @hex_to_bin(i8 noundef zeroext %151) #3
  %153 = shl i32 %152, 4
  %154 = load i8, ptr %93, align 1
  %155 = tail call i32 @hex_to_bin(i8 noundef zeroext %154) #3
  %156 = or i32 %155, %153
  %157 = trunc i32 %156 to i8
  %158 = getelementptr i8, ptr %1, i32 4
  store i8 %157, ptr %158, align 1
  %159 = load i8, ptr %105, align 1
  %160 = tail call i32 @hex_to_bin(i8 noundef zeroext %159) #3
  %161 = shl i32 %160, 4
  %162 = load i8, ptr %113, align 1
  %163 = tail call i32 @hex_to_bin(i8 noundef zeroext %162) #3
  %164 = or i32 %163, %161
  %165 = trunc i32 %164 to i8
  %166 = getelementptr i8, ptr %1, i32 5
  store i8 %165, ptr %166, align 1
  br label %167

167:                                              ; preds = %120, %112, %104, %100, %92, %84, %80, %72, %64, %60, %52, %44, %40, %32, %24, %20, %12, %5, %2
  %168 = phi i1 [ false, %2 ], [ true, %120 ], [ false, %112 ], [ false, %104 ], [ false, %100 ], [ false, %92 ], [ false, %84 ], [ false, %80 ], [ false, %72 ], [ false, %64 ], [ false, %60 ], [ false, %52 ], [ false, %44 ], [ false, %40 ], [ false, %32 ], [ false, %24 ], [ false, %12 ], [ false, %5 ], [ false, %20 ]
  ret i1 %168
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
