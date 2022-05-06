; ModuleID = '/llk/IR/drivers/clk/versatile/icst.c_pt.bc'
source_filename = "../drivers/clk/versatile/icst.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst307_s2div:\09\09\09\09\09"
module asm "\09.asciz \09\22icst307_s2div\22\09\09\09\09\09"
module asm "__kstrtabns_icst307_s2div:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst525_s2div:\09\09\09\09\09"
module asm "\09.asciz \09\22icst525_s2div\22\09\09\09\09\09"
module asm "__kstrtabns_icst525_s2div:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst_hz:\09\09\09\09\09"
module asm "\09.asciz \09\22icst_hz\22\09\09\09\09\09"
module asm "__kstrtabns_icst_hz:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst307_idx2s:\09\09\09\09\09"
module asm "\09.asciz \09\22icst307_idx2s\22\09\09\09\09\09"
module asm "__kstrtabns_icst307_idx2s:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst525_idx2s:\09\09\09\09\09"
module asm "\09.asciz \09\22icst525_idx2s\22\09\09\09\09\09"
module asm "__kstrtabns_icst525_idx2s:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icst_hz_to_vco:\09\09\09\09\09"
module asm "\09.asciz \09\22icst_hz_to_vco\22\09\09\09\09\09"
module asm "__kstrtabns_icst_hz_to_vco:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.icst_params = type { i32, i32, i32, i16, i16, i8, i8, ptr, ptr }

@icst307_s2div = dso_local constant [8 x i8] c"\0A\02\08\04\05\07\03\06", align 1
@icst525_s2div = dso_local constant [8 x i8] c"\0A\02\08\04\05\07\09\06", align 1
@__kstrtab_icst307_s2div = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst307_s2div = external dso_local constant [0 x i8], align 1
@__ksymtab_icst307_s2div = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst307_s2div to i32), ptr @__kstrtab_icst307_s2div, ptr @__kstrtabns_icst307_s2div }, section "___ksymtab+icst307_s2div", align 4
@__kstrtab_icst525_s2div = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst525_s2div = external dso_local constant [0 x i8], align 1
@__ksymtab_icst525_s2div = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst525_s2div to i32), ptr @__kstrtab_icst525_s2div, ptr @__kstrtabns_icst525_s2div }, section "___ksymtab+icst525_s2div", align 4
@__kstrtab_icst_hz = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst_hz = external dso_local constant [0 x i8], align 1
@__ksymtab_icst_hz = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst_hz to i32), ptr @__kstrtab_icst_hz, ptr @__kstrtabns_icst_hz }, section "___ksymtab+icst_hz", align 4
@icst307_idx2s = dso_local constant [8 x i8] c"\01\06\03\04\07\05\02\00", align 1
@icst525_idx2s = dso_local constant [8 x i8] c"\01\03\04\07\05\02\06\00", align 1
@__kstrtab_icst307_idx2s = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst307_idx2s = external dso_local constant [0 x i8], align 1
@__ksymtab_icst307_idx2s = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst307_idx2s to i32), ptr @__kstrtab_icst307_idx2s, ptr @__kstrtabns_icst307_idx2s }, section "___ksymtab+icst307_idx2s", align 4
@__kstrtab_icst525_idx2s = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst525_idx2s = external dso_local constant [0 x i8], align 1
@__ksymtab_icst525_idx2s = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst525_idx2s to i32), ptr @__kstrtab_icst525_idx2s, ptr @__kstrtabns_icst525_idx2s }, section "___ksymtab+icst525_idx2s", align 4
@__kstrtab_icst_hz_to_vco = external dso_local constant [0 x i8], align 1
@__kstrtabns_icst_hz_to_vco = external dso_local constant [0 x i8], align 1
@__ksymtab_icst_hz_to_vco = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icst_hz_to_vco to i32), ptr @__kstrtab_icst_hz_to_vco, ptr @__kstrtabns_icst_hz_to_vco }, section "___ksymtab+icst_hz_to_vco", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_icst307_idx2s, ptr @__ksymtab_icst307_s2div, ptr @__ksymtab_icst525_idx2s, ptr @__ksymtab_icst525_s2div, ptr @__ksymtab_icst_hz, ptr @__ksymtab_icst_hz_to_vco], section "llvm.metadata"

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @icst_hz(ptr nocapture noundef readonly %0, [1 x i32] %1) #0 {
  %3 = extractvalue [1 x i32] %1, 0
  %4 = lshr i32 %3, 16
  %5 = lshr i32 %3, 24
  %6 = load i32, ptr %0, align 4
  %7 = shl i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = and i32 %3, 65535
  %10 = add nuw nsw i32 %9, 8
  %11 = zext i32 %10 to i64
  %12 = mul nuw nsw i64 %8, %11
  %13 = and i32 %4, 255
  %14 = add nuw nsw i32 %13, 2
  %15 = getelementptr inbounds %struct.icst_params, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %5
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = mul nuw nsw i32 %14, %19
  %21 = icmp ult i64 %12, 4294967296
  br i1 %21, label %22, label %25, !prof !8

22:                                               ; preds = %2
  %23 = trunc i64 %12 to i32
  %24 = udiv i32 %23, %20
  br label %29

25:                                               ; preds = %2
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %12) #3, !srcloc !9
  %27 = extractvalue { i64, i64 } %26, 1
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i32 [ %24, %22 ], [ %28, %25 ]
  ret i32 %30
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @icst_hz_to_vco(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.icst_params, ptr %0, i32 0, i32 4
  %4 = load i16, ptr %3, align 2
  %5 = getelementptr inbounds %struct.icst_params, ptr %0, i32 0, i32 6
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.icst_params, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.icst_params, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.icst_params, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.icst_params, ptr %0, i32 0, i32 1
  %14 = load i8, ptr %10, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr i8, ptr %8, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = mul i32 %18, %1
  %20 = icmp ugt i32 %19, %12
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, ptr %13, align 4
  %23 = icmp ugt i32 %19, %22
  br i1 %23, label %24, label %108

24:                                               ; preds = %21, %2
  %25 = getelementptr i8, ptr %10, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr i8, ptr %8, i32 %27
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = mul i32 %30, %1
  %32 = icmp ugt i32 %31, %12
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, ptr %13, align 4
  %35 = icmp ugt i32 %31, %34
  br i1 %35, label %36, label %108

36:                                               ; preds = %33, %24
  %37 = getelementptr i8, ptr %10, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr i8, ptr %8, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = mul i32 %42, %1
  %44 = icmp ugt i32 %43, %12
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, ptr %13, align 4
  %47 = icmp ugt i32 %43, %46
  br i1 %47, label %48, label %108

48:                                               ; preds = %45, %36
  %49 = getelementptr i8, ptr %10, i32 3
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = getelementptr i8, ptr %8, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = mul i32 %54, %1
  %56 = icmp ugt i32 %55, %12
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, ptr %13, align 4
  %59 = icmp ugt i32 %55, %58
  br i1 %59, label %60, label %108

60:                                               ; preds = %57, %48
  %61 = getelementptr i8, ptr %10, i32 4
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = getelementptr i8, ptr %8, i32 %63
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = mul i32 %66, %1
  %68 = icmp ugt i32 %67, %12
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, ptr %13, align 4
  %71 = icmp ugt i32 %67, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %69, %60
  %73 = getelementptr i8, ptr %10, i32 5
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = getelementptr i8, ptr %8, i32 %75
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = mul i32 %78, %1
  %80 = icmp ugt i32 %79, %12
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i32, ptr %13, align 4
  %83 = icmp ugt i32 %79, %82
  br i1 %83, label %84, label %108

84:                                               ; preds = %81, %72
  %85 = getelementptr i8, ptr %10, i32 6
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = getelementptr i8, ptr %8, i32 %87
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = mul i32 %90, %1
  %92 = icmp ugt i32 %91, %12
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load i32, ptr %13, align 4
  %95 = icmp ugt i32 %91, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %93, %84
  %97 = getelementptr i8, ptr %10, i32 7
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = getelementptr i8, ptr %8, i32 %99
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = mul i32 %102, %1
  %104 = icmp ugt i32 %103, %12
  br i1 %104, label %105, label %157

105:                                              ; preds = %96
  %106 = load i32, ptr %13, align 4
  %107 = icmp ugt i32 %103, %106
  br i1 %107, label %157, label %108

108:                                              ; preds = %105, %93, %81, %69, %57, %45, %33, %21
  %109 = phi i8 [ %14, %21 ], [ %26, %33 ], [ %38, %45 ], [ %50, %57 ], [ %62, %69 ], [ %74, %81 ], [ %86, %93 ], [ %98, %105 ]
  %110 = phi i32 [ %19, %21 ], [ %31, %33 ], [ %43, %45 ], [ %55, %57 ], [ %67, %69 ], [ %79, %81 ], [ %91, %93 ], [ %103, %105 ]
  %111 = getelementptr inbounds %struct.icst_params, ptr %0, i32 0, i32 5
  %112 = load i8, ptr %111, align 4
  %113 = icmp ugt i8 %112, %6
  br i1 %113, label %152, label %114

114:                                              ; preds = %108
  %115 = zext i8 %6 to i32
  %116 = zext i8 %112 to i32
  %117 = load i32, ptr %0, align 4
  %118 = shl i32 %117, 1
  %119 = getelementptr inbounds %struct.icst_params, ptr %0, i32 0, i32 3
  %120 = load i16, ptr %119, align 4
  %121 = zext i16 %120 to i32
  %122 = zext i16 %4 to i32
  br label %123

123:                                              ; preds = %146, %114
  %124 = phi i32 [ -1, %114 ], [ %149, %146 ]
  %125 = phi i32 [ %116, %114 ], [ %150, %146 ]
  %126 = phi i16 [ %4, %114 ], [ %148, %146 ]
  %127 = phi i8 [ %6, %114 ], [ %147, %146 ]
  %128 = udiv i32 %118, %125
  %129 = lshr i32 %128, 1
  %130 = add i32 %129, %110
  %131 = udiv i32 %130, %128
  %132 = icmp ult i32 %131, %121
  %133 = icmp ugt i32 %131, %122
  %134 = select i1 %132, i1 true, i1 %133
  br i1 %134, label %146, label %135

135:                                              ; preds = %123
  %136 = mul i32 %131, %128
  %137 = sub i32 %136, %110
  %138 = tail call i32 @llvm.abs.i32(i32 %137, i1 false)
  %139 = icmp ult i32 %138, %124
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = trunc i32 %131 to i16
  %142 = add i16 %141, -8
  %143 = trunc i32 %125 to i8
  %144 = add i8 %143, -2
  %145 = icmp eq i32 %136, %110
  br i1 %145, label %152, label %146

146:                                              ; preds = %140, %135, %123
  %147 = phi i8 [ %127, %123 ], [ %127, %135 ], [ %144, %140 ]
  %148 = phi i16 [ %126, %123 ], [ %126, %135 ], [ %142, %140 ]
  %149 = phi i32 [ %124, %123 ], [ %124, %135 ], [ %138, %140 ]
  %150 = add nuw nsw i32 %125, 1
  %151 = icmp eq i32 %125, %115
  br i1 %151, label %152, label %123

152:                                              ; preds = %146, %140, %108
  %153 = phi i8 [ %6, %108 ], [ %144, %140 ], [ %147, %146 ]
  %154 = phi i16 [ %4, %108 ], [ %142, %140 ], [ %148, %146 ]
  %155 = zext i8 %109 to i32
  %156 = shl nuw i32 %155, 24
  br label %157

157:                                              ; preds = %152, %105, %96
  %158 = phi i32 [ %156, %152 ], [ 16777216, %105 ], [ 16777216, %96 ]
  %159 = phi i8 [ %153, %152 ], [ %6, %105 ], [ %6, %96 ]
  %160 = phi i16 [ %154, %152 ], [ %4, %105 ], [ %4, %96 ]
  %161 = zext i8 %159 to i32
  %162 = shl nuw nsw i32 %161, 16
  %163 = or i32 %162, %158
  %164 = zext i16 %160 to i32
  %165 = or i32 %163, %164
  ret i32 %165
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2147890516, i64 2147890796, i64 2147891130, i64 2147891464}
