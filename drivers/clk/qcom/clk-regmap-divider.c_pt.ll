; ModuleID = '/llk/IR/drivers/clk/qcom/clk-regmap-divider.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-regmap-divider.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_div_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_div_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_div_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_div_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_div_ro_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_div_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@clk_regmap_div_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @div_recalc_rate, ptr @div_round_rate, ptr null, ptr null, ptr null, ptr @div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_regmap_div_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_div_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_div_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_div_ops to i32), ptr @__kstrtab_clk_regmap_div_ops, ptr @__kstrtabns_clk_regmap_div_ops }, section "___ksymtab_gpl+clk_regmap_div_ops", align 4
@clk_regmap_div_ro_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @div_recalc_rate, ptr @div_round_ro_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_regmap_div_ro_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_div_ro_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_div_ro_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_div_ro_ops to i32), ptr @__kstrtab_clk_regmap_div_ro_ops, ptr @__kstrtabns_clk_regmap_div_ro_ops }, section "___ksymtab_gpl+clk_regmap_div_ro_ops", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_clk_regmap_div_ops, ptr @__ksymtab_clk_regmap_div_ro_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @div_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr i8, ptr %0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = call i32 @regmap_read(ptr noundef %6, i32 noundef %7, ptr noundef nonnull %3) #3
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %3, align 4
  %12 = lshr i32 %11, %10
  %13 = getelementptr i8, ptr %0, i32 -4
  %14 = load i32, ptr %13, align 4
  %15 = shl nsw i32 -1, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  store i32 %17, ptr %3, align 4
  %18 = call i32 @divider_recalc_rate(ptr noundef %0, i32 noundef %1, i32 noundef %17, ptr noundef null, i32 noundef 16, i32 noundef %14) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @div_round_rate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  %7 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #3
  %8 = tail call i32 @divider_round_rate_parent(ptr noundef %0, ptr noundef %7, i32 noundef %1, ptr noundef %2, ptr noundef null, i8 noundef zeroext %6, i32 noundef 16) #3
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @div_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i8
  %8 = tail call i32 @divider_get_val(i32 noundef %1, i32 noundef %2, ptr noundef null, i8 noundef zeroext %7, i32 noundef 16) #3
  %9 = getelementptr i8, ptr %0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %4, align 4
  %12 = load i32, ptr %5, align 4
  %13 = shl nsw i32 -1, %12
  %14 = xor i32 %13, -1
  %15 = getelementptr i8, ptr %0, i32 -8
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %14, %16
  %18 = shl i32 %8, %16
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %11, i32 noundef %17, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @div_round_ro_rate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = getelementptr i8, ptr %0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %5, align 4
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %4) #3
  %10 = getelementptr i8, ptr %0, i32 -8
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %4, align 4
  %13 = lshr i32 %12, %11
  %14 = getelementptr i8, ptr %0, i32 -4
  %15 = load i32, ptr %14, align 4
  %16 = shl nsw i32 -1, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  store i32 %18, ptr %4, align 4
  %19 = trunc i32 %15 to i8
  %20 = call ptr @clk_hw_get_parent(ptr noundef %0) #3
  %21 = call i32 @divider_ro_round_rate_parent(ptr noundef %0, ptr noundef %20, i32 noundef %1, ptr noundef %2, ptr noundef null, i8 noundef zeroext %19, i32 noundef 16, i32 noundef %18) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_ro_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{!"auto-init"}
