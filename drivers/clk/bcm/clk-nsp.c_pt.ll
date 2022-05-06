; ModuleID = '/llk/IR/drivers/clk/bcm/clk-nsp.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-nsp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iproc_pll_ctrl = type { i32, %struct.iproc_pll_aon_pwr_ctrl, %struct.iproc_asiu_gate, %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_sw_ctrl, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op, %struct.iproc_pll_vco_ctrl, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op }
%struct.iproc_pll_aon_pwr_ctrl = type { i32, i32, i32, i32 }
%struct.iproc_asiu_gate = type { i32, i32 }
%struct.iproc_pll_reset_ctrl = type { i32, i32, i32 }
%struct.iproc_pll_dig_filter_ctrl = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iproc_pll_sw_ctrl = type { i32, i32 }
%struct.iproc_pll_vco_ctrl = type { i32, i32 }
%struct.iproc_clk_reg_op = type { i32, i32, i32 }
%struct.iproc_clk_ctrl = type { i32, i32, %struct.iproc_clk_enable_ctrl, %struct.iproc_clk_reg_op }
%struct.iproc_clk_enable_ctrl = type { i32, i32, i32, i32 }

@__of_table_nsp_armpll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,nsp-armpll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nsp_armpll_init }, section "__clk_of_table", align 4
@__of_table_nsp_genpll_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,nsp-genpll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nsp_genpll_clk_init }, section "__clk_of_table", align 4
@__of_table_nsp_lcpll0_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,nsp-lcpll0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @nsp_lcpll0_clk_init }, section "__clk_of_table", align 4
@genpll = internal constant %struct.iproc_pll_ctrl { i32 36, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 1, i32 12, i32 0 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 11, i32 10 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 4, i32 3, i32 0, i32 4, i32 7, i32 3 }, %struct.iproc_pll_sw_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 20, i32 20, i32 10 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 20 }, %struct.iproc_clk_reg_op { i32 24, i32 24, i32 3 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 32, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, align 4
@genpll_clk = internal constant [7 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 12, i32 6, i32 18 }, %struct.iproc_clk_reg_op { i32 24, i32 16, i32 8 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 13, i32 7, i32 19 }, %struct.iproc_clk_reg_op { i32 24, i32 8, i32 8 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 14, i32 8, i32 20 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 4, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 15, i32 9, i32 21 }, %struct.iproc_clk_reg_op { i32 28, i32 16, i32 8 } }, %struct.iproc_clk_ctrl { i32 5, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 16, i32 10, i32 22 }, %struct.iproc_clk_reg_op { i32 28, i32 8, i32 8 } }, %struct.iproc_clk_ctrl { i32 6, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 17, i32 11, i32 23 }, %struct.iproc_clk_reg_op { i32 28, i32 0, i32 8 } }], align 4
@lcpll0 = internal constant %struct.iproc_pll_ctrl { i32 36, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 1, i32 24, i32 0 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 23, i32 22 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 16, i32 3, i32 12, i32 4, i32 19, i32 4 }, %struct.iproc_pll_sw_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 4, i32 20, i32 8 }, %struct.iproc_clk_reg_op { i32 4, i32 0, i32 20 }, %struct.iproc_clk_reg_op { i32 4, i32 28, i32 3 }, %struct.iproc_pll_vco_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 16, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, align 4
@lcpll0_clk = internal constant [4 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 6, i32 3, i32 9 }, %struct.iproc_clk_reg_op { i32 8, i32 24, i32 8 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 7, i32 4, i32 10 }, %struct.iproc_clk_reg_op { i32 8, i32 16, i32 8 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 8, i32 5, i32 11 }, %struct.iproc_clk_reg_op { i32 8, i32 8, i32 8 } }], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_nsp_armpll, ptr @__of_table_nsp_genpll_clk, ptr @__of_table_nsp_lcpll0_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @nsp_armpll_init(ptr noundef %0) #0 section ".init.text" {
  tail call void @iproc_armpll_setup(ptr noundef %0) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @nsp_genpll_clk_init(ptr noundef %0) #0 section ".init.text" {
  tail call void @iproc_pll_clk_setup(ptr noundef %0, ptr noundef nonnull @genpll, ptr noundef null, i32 noundef 0, ptr noundef nonnull @genpll_clk, i32 noundef 7) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @nsp_lcpll0_clk_init(ptr noundef %0) #0 section ".init.text" {
  tail call void @iproc_pll_clk_setup(ptr noundef %0, ptr noundef nonnull @lcpll0, ptr noundef null, i32 noundef 0, ptr noundef nonnull @lcpll0_clk, i32 noundef 4) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iproc_armpll_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iproc_pll_clk_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
