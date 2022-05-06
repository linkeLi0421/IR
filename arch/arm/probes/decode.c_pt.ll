; ModuleID = '/llk/IR/arch/arm/probes/decode.c_pt.bc'
source_filename = "../arch/arm/probes/decode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.decode_header = type { %union.decode_item, %union.decode_item, %union.decode_item }
%union.decode_item = type { i32 }
%struct.decode_table = type { %struct.decode_header, %union.decode_item }
%struct.decode_custom = type { %struct.decode_header, %union.decode_item }
%struct.decode_checker = type { ptr }
%union.decode_action = type { ptr }
%struct.decode_simulate = type { %struct.decode_header, %union.decode_item }
%struct.decode_emulate = type { %struct.decode_header, %union.decode_item }

@probes_condition_checks = dso_local local_unnamed_addr constant [16 x ptr] [ptr @__check_eq, ptr @__check_ne, ptr @__check_cs, ptr @__check_cc, ptr @__check_mi, ptr @__check_pl, ptr @__check_vs, ptr @__check_vc, ptr @__check_hi, ptr @__check_ls, ptr @__check_ge, ptr @__check_lt, ptr @__check_gt, ptr @__check_le, ptr @__check_al, ptr @__check_al], align 4
@decode_struct_sizes = internal unnamed_addr constant [7 x i32] [i32 0, i32 16, i32 16, i32 16, i32 16, i32 12, i32 12], align 4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define dso_local void @arm_probes_decode_init() local_unnamed_addr #0 section ".init.text" {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__check_eq(i32 noundef %0) #1 {
  %2 = and i32 %0, 1073741824
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__check_ne(i32 noundef %0) #1 {
  %2 = and i32 %0, 1073741824
  %3 = xor i32 %2, 1073741824
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__check_cs(i32 noundef %0) #1 {
  %2 = and i32 %0, 536870912
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__check_cc(i32 noundef %0) #1 {
  %2 = and i32 %0, 536870912
  %3 = xor i32 %2, 536870912
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__check_mi(i32 noundef %0) #1 {
  %2 = and i32 %0, -2147483648
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__check_pl(i32 noundef %0) #1 {
  %2 = and i32 %0, -2147483648
  %3 = xor i32 %2, -2147483648
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__check_vs(i32 noundef %0) #1 {
  %2 = and i32 %0, 268435456
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__check_vc(i32 noundef %0) #1 {
  %2 = and i32 %0, 268435456
  %3 = xor i32 %2, 268435456
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__check_hi(i32 noundef %0) #1 {
  %2 = lshr i32 %0, 1
  %3 = xor i32 %2, -1
  %4 = and i32 %0, 536870912
  %5 = and i32 %4, %3
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__check_ls(i32 noundef %0) #1 {
  %2 = lshr i32 %0, 1
  %3 = xor i32 %0, -1
  %4 = or i32 %2, %3
  %5 = and i32 %4, 536870912
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__check_ge(i32 noundef %0) #1 {
  %2 = shl i32 %0, 3
  %3 = xor i32 %2, %0
  %4 = and i32 %3, -2147483648
  %5 = xor i32 %4, -2147483648
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__check_lt(i32 noundef %0) #1 {
  %2 = shl i32 %0, 3
  %3 = xor i32 %2, %0
  %4 = and i32 %3, -2147483648
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__check_gt(i32 noundef %0) #1 {
  %2 = shl i32 %0, 3
  %3 = xor i32 %2, %0
  %4 = shl i32 %0, 1
  %5 = or i32 %3, %4
  %6 = and i32 %5, -2147483648
  %7 = xor i32 %6, -2147483648
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__check_le(i32 noundef %0) #1 {
  %2 = shl i32 %0, 3
  %3 = xor i32 %2, %0
  %4 = shl i32 %0, 1
  %5 = or i32 %3, %4
  %6 = and i32 %5, -2147483648
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__check_al(i32 noundef %0) #1 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @probes_simulate_nop(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @probes_emulate_none(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.arch_probes_insn, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void %5() #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @probes_decode_insn(i32 noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nocapture noundef readonly %5, ptr noundef readonly %6) local_unnamed_addr #2 {
  %8 = getelementptr inbounds %struct.arch_probes_insn, ptr %1, i32 0, i32 5
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.arch_probes_insn, ptr %1, i32 0, i32 6
  store i32 -1, ptr %9, align 4
  br i1 %4, label %10, label %17

10:                                               ; preds = %7
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr i32, ptr %11, i32 1
  store i32 -509546482, ptr %12, align 4
  %13 = icmp ult i32 %0, -536870912
  %14 = and i32 %0, 268435455
  %15 = or i32 %14, -536870912
  %16 = select i1 %13, i32 %15, i32 %0
  br label %17

17:                                               ; preds = %10, %7
  %18 = phi i32 [ %16, %10 ], [ %0, %7 ]
  %19 = load i32, ptr %2, align 4
  %20 = and i32 %19, 15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %166, label %22

22:                                               ; preds = %159, %17
  %23 = phi i32 [ %164, %159 ], [ %20, %17 ]
  %24 = phi i32 [ %163, %159 ], [ %19, %17 ]
  %25 = phi ptr [ %162, %159 ], [ %2, %17 ]
  %26 = phi i1 [ %161, %159 ], [ false, %17 ]
  %27 = phi i32 [ %160, %159 ], [ %18, %17 ]
  %28 = ptrtoint ptr %25 to i32
  %29 = getelementptr [7 x i32], ptr @decode_struct_sizes, i32 0, i32 %23
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %28
  %32 = inttoptr i32 %31 to ptr
  br i1 %26, label %40, label %33

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.decode_header, ptr %25, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, %27
  %37 = getelementptr inbounds %struct.decode_header, ptr %25, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %159

40:                                               ; preds = %33, %22
  %41 = icmp ult i32 %24, 16
  br i1 %41, label %83, label %42

42:                                               ; preds = %79, %40
  %43 = phi i32 [ %81, %79 ], [ 15, %40 ]
  %44 = phi i32 [ %80, %79 ], [ %27, %40 ]
  %45 = phi i32 [ %46, %79 ], [ %24, %40 ]
  %46 = lshr i32 %45, 4
  %47 = and i32 %46, 15
  switch i32 %47, label %73 [
    i32 0, label %79
    i32 9, label %69
    i32 2, label %48
    i32 3, label %49
    i32 4, label %53
    i32 5, label %57
    i32 6, label %61
    i32 10, label %61
    i32 8, label %66
    i32 7, label %69
  ]

48:                                               ; preds = %42
  br label %73

49:                                               ; preds = %42
  %50 = xor i32 %44, -572662307
  %51 = and i32 %50, %43
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %73, label %166

53:                                               ; preds = %42
  %54 = xor i32 %44, -1
  %55 = and i32 %43, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %73, label %166

57:                                               ; preds = %42
  %58 = xor i32 %44, -572662307
  %59 = and i32 %58, %43
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %166, label %73

61:                                               ; preds = %42, %42
  %62 = and i32 %44, -572662307
  %63 = xor i32 %62, -572662307
  %64 = and i32 %63, %43
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %166, label %73

66:                                               ; preds = %42
  %67 = and i32 %44, 18874368
  %68 = icmp eq i32 %67, 16777216
  br i1 %68, label %73, label %69

69:                                               ; preds = %66, %42, %42
  %70 = xor i32 %44, -1
  %71 = and i32 %43, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %166, label %73

73:                                               ; preds = %69, %66, %61, %57, %53, %49, %48, %42
  %74 = phi i32 [ 131331, %42 ], [ 131331, %69 ], [ 131331, %66 ], [ 131331, %61 ], [ 131331, %57 ], [ 131331, %53 ], [ 131331, %49 ], [ 572662306, %48 ]
  %75 = xor i32 %43, -1
  %76 = and i32 %44, %75
  %77 = and i32 %74, %43
  %78 = or i32 %77, %76
  br label %79

79:                                               ; preds = %73, %42
  %80 = phi i32 [ %78, %73 ], [ %44, %42 ]
  %81 = shl i32 %43, 4
  %82 = icmp ult i32 %45, 256
  br i1 %82, label %83, label %42

83:                                               ; preds = %79, %40
  %84 = phi i32 [ %27, %40 ], [ %80, %79 ]
  %85 = select i1 %4, i32 %84, i32 %27
  switch i32 %23, label %166 [
    i32 1, label %86
    i32 2, label %89
    i32 3, label %111
    i32 4, label %133
    i32 5, label %159
  ]

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.decode_table, ptr %25, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  br label %159

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.decode_custom, ptr %25, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq ptr %6, null
  br i1 %92, label %107, label %93

93:                                               ; preds = %103, %89
  %94 = phi ptr [ %106, %103 ], [ %6, %89 ]
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %107, label %97

97:                                               ; preds = %93
  %98 = getelementptr %struct.decode_checker, ptr %95, i32 %91
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = tail call i32 %99(i32 noundef %0, ptr noundef %1, ptr noundef %25) #3
  br label %103

103:                                              ; preds = %101, %97
  %104 = phi i32 [ %102, %101 ], [ 1, %97 ]
  %105 = icmp eq i32 %104, 0
  %106 = getelementptr ptr, ptr %94, i32 1
  br i1 %105, label %166, label %93

107:                                              ; preds = %93, %89
  %108 = getelementptr %union.decode_action, ptr %5, i32 %91
  %109 = load ptr, ptr %108, align 4
  %110 = tail call i32 %109(i32 noundef %85, ptr noundef %1, ptr noundef %25) #3
  br label %166

111:                                              ; preds = %83
  %112 = getelementptr inbounds %struct.decode_simulate, ptr %25, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq ptr %6, null
  br i1 %114, label %129, label %115

115:                                              ; preds = %125, %111
  %116 = phi ptr [ %128, %125 ], [ %6, %111 ]
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %129, label %119

119:                                              ; preds = %115
  %120 = getelementptr %struct.decode_checker, ptr %117, i32 %113
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = tail call i32 %121(i32 noundef %0, ptr noundef %1, ptr noundef %25) #3
  br label %125

125:                                              ; preds = %123, %119
  %126 = phi i32 [ %124, %123 ], [ 1, %119 ]
  %127 = icmp eq i32 %126, 0
  %128 = getelementptr ptr, ptr %116, i32 1
  br i1 %127, label %166, label %115

129:                                              ; preds = %115, %111
  %130 = getelementptr %union.decode_action, ptr %5, i32 %113
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.arch_probes_insn, ptr %1, i32 0, i32 1
  store ptr %131, ptr %132, align 4
  br label %166

133:                                              ; preds = %83
  %134 = getelementptr inbounds %struct.decode_emulate, ptr %25, i32 0, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq ptr %6, null
  br i1 %136, label %151, label %137

137:                                              ; preds = %147, %133
  %138 = phi ptr [ %150, %147 ], [ %6, %133 ]
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %151, label %141

141:                                              ; preds = %137
  %142 = getelementptr %struct.decode_checker, ptr %139, i32 %135
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = tail call i32 %143(i32 noundef %0, ptr noundef %1, ptr noundef %25) #3
  br label %147

147:                                              ; preds = %145, %141
  %148 = phi i32 [ %146, %145 ], [ 1, %141 ]
  %149 = icmp eq i32 %148, 0
  %150 = getelementptr ptr, ptr %138, i32 1
  br i1 %149, label %166, label %137

151:                                              ; preds = %137, %133
  %152 = getelementptr %union.decode_action, ptr %5, i32 %135
  %153 = load ptr, ptr %152, align 4
  br i1 %4, label %156, label %154

154:                                              ; preds = %151
  %155 = tail call i32 %153(i32 noundef %85, ptr noundef %1, ptr noundef %25) #3
  br label %166

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.arch_probes_insn, ptr %1, i32 0, i32 1
  store ptr %153, ptr %157, align 4
  %158 = load ptr, ptr %1, align 4
  store i32 %85, ptr %158, align 4
  br label %166

159:                                              ; preds = %86, %83, %33
  %160 = phi i32 [ %27, %33 ], [ %85, %83 ], [ %85, %86 ]
  %161 = phi i1 [ false, %33 ], [ true, %83 ], [ %26, %86 ]
  %162 = phi ptr [ %32, %33 ], [ %32, %83 ], [ %88, %86 ]
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, 15
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %22

166:                                              ; preds = %159, %156, %154, %147, %129, %125, %107, %103, %83, %69, %61, %57, %53, %49, %17
  %167 = phi i32 [ %155, %154 ], [ 1, %156 ], [ 2, %129 ], [ %110, %107 ], [ 0, %17 ], [ 0, %103 ], [ 0, %125 ], [ 0, %147 ], [ 0, %49 ], [ 0, %53 ], [ 0, %57 ], [ 0, %61 ], [ 0, %69 ], [ 0, %159 ], [ 0, %83 ]
  ret i32 %167
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
