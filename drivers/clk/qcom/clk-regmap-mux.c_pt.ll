; ModuleID = '/llk/IR/drivers/clk/qcom/clk-regmap-mux.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-regmap-mux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_mux_closest_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_mux_closest_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_mux_closest_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.parent_map = type { i8, i8 }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_regmap_mux_closest_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate_closest, ptr @mux_set_parent, ptr @mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_regmap_mux_closest_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_mux_closest_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_mux_closest_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_mux_closest_ops to i32), ptr @__kstrtab_clk_regmap_mux_closest_ops, ptr @__kstrtabns_clk_regmap_mux_closest_ops }, section "___ksymtab_gpl+clk_regmap_mux_closest_ops", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_clk_regmap_mux_closest_ops], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate_closest(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mux_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = zext i8 %1 to i32
  %12 = getelementptr %struct.parent_map, ptr %8, i32 %11, i32 1
  %13 = load i8, ptr %12, align 1
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i8 [ %13, %10 ], [ %1, %2 ]
  %16 = getelementptr i8, ptr %0, i32 -16
  %17 = shl nsw i32 -1, %4
  %18 = add i32 %4, %6
  %19 = sub i32 32, %18
  %20 = lshr i32 -1, %19
  %21 = and i32 %20, %17
  %22 = zext i8 %15 to i32
  %23 = shl i32 %22, %4
  %24 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %16, align 4
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %26, i32 noundef %21, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @mux_get_parent(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 32, %5
  %7 = lshr i32 -1, %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %3, align 4
  %11 = call i32 @regmap_read(ptr noundef %9, i32 noundef %10, ptr noundef nonnull %2) #3
  %12 = getelementptr i8, ptr %0, i32 -12
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %2, align 4
  %15 = lshr i32 %14, %13
  %16 = and i32 %15, %7
  store i32 %16, ptr %2, align 4
  %17 = getelementptr i8, ptr %0, i32 -4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = trunc i32 %16 to i8
  %22 = call i32 @qcom_find_cfg_index(ptr noundef %0, ptr noundef nonnull %18, i8 noundef zeroext %21) #3
  br label %23

23:                                               ; preds = %20, %1
  %24 = phi i32 [ %22, %20 ], [ %16, %1 ]
  %25 = trunc i32 %24 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret i8 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_find_cfg_index(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
