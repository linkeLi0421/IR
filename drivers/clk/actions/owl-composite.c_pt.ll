; ModuleID = '/llk/IR/drivers/clk/actions/owl-composite.c_pt.bc'
source_filename = "../drivers/clk/actions/owl-composite.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@owl_comp_div_ops = dso_local local_unnamed_addr constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @owl_comp_enable, ptr @owl_comp_disable, ptr @owl_comp_is_enabled, ptr null, ptr null, ptr null, ptr @owl_comp_div_recalc_rate, ptr @owl_comp_div_round_rate, ptr null, ptr @owl_comp_set_parent, ptr @owl_comp_get_parent, ptr @owl_comp_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@owl_comp_fact_ops = dso_local local_unnamed_addr constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @owl_comp_enable, ptr @owl_comp_disable, ptr @owl_comp_is_enabled, ptr null, ptr null, ptr null, ptr @owl_comp_fact_recalc_rate, ptr @owl_comp_fact_round_rate, ptr null, ptr @owl_comp_set_parent, ptr @owl_comp_get_parent, ptr @owl_comp_fact_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@owl_comp_fix_fact_ops = dso_local local_unnamed_addr constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @owl_comp_enable, ptr @owl_comp_disable, ptr @owl_comp_is_enabled, ptr null, ptr null, ptr null, ptr @owl_comp_fix_fact_recalc_rate, ptr @owl_comp_fix_fact_round_rate, ptr null, ptr null, ptr null, ptr @owl_comp_fix_fact_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@owl_comp_pass_ops = dso_local local_unnamed_addr constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @owl_comp_enable, ptr @owl_comp_disable, ptr @owl_comp_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @owl_comp_set_parent, ptr @owl_comp_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_comp_enable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 -36
  tail call void @owl_gate_set(ptr noundef %2, ptr noundef %3, i1 noundef zeroext true) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_comp_disable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 -36
  tail call void @owl_gate_set(ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_comp_is_enabled(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 -36
  %4 = tail call i32 @owl_gate_clk_is_enabled(ptr noundef %2, ptr noundef %3) #3
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_comp_div_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = tail call i32 @owl_divider_helper_recalc_rate(ptr noundef %3, ptr noundef %4, i32 noundef %1) #3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_comp_div_round_rate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = tail call i32 @owl_divider_helper_round_rate(ptr noundef %4, ptr noundef %5, i32 noundef %1, ptr noundef %2) #3
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_comp_set_parent(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = tail call i32 @owl_mux_helper_set_parent(ptr noundef %4, ptr noundef %3, i8 noundef zeroext %1) #3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @owl_comp_get_parent(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -44
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = tail call zeroext i8 @owl_mux_helper_get_parent(ptr noundef %3, ptr noundef %2) #3
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_comp_div_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = tail call i32 @owl_divider_helper_set_rate(ptr noundef %4, ptr noundef %5, i32 noundef %1, i32 noundef %2) #3
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_comp_fact_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = tail call i32 @owl_factor_helper_recalc_rate(ptr noundef %3, ptr noundef %4, i32 noundef %1) #3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_comp_fact_round_rate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = tail call i32 @owl_factor_helper_round_rate(ptr noundef %4, ptr noundef %5, i32 noundef %1, ptr noundef %2) #3
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_comp_fact_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = tail call i32 @owl_factor_helper_set_rate(ptr noundef %4, ptr noundef %5, i32 noundef %1, i32 noundef %2) #3
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_comp_fix_fact_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %3, i32 noundef %1) #3
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_comp_fix_fact_round_rate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4, i32 noundef %1, ptr noundef %2) #3
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @owl_comp_fix_fact_set_rate(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #1 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @owl_gate_set(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_gate_clk_is_enabled(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_divider_helper_recalc_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_divider_helper_round_rate(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_mux_helper_set_parent(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @owl_mux_helper_get_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_divider_helper_set_rate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_factor_helper_recalc_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_factor_helper_round_rate(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_factor_helper_set_rate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
