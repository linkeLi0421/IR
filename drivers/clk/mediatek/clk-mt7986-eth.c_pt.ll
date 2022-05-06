; ModuleID = '/llk/IR/drivers/clk/mediatek/clk-mt7986-eth.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt7986-eth.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__of_table_mtk_sgmiisys_0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7986-sgmiisys_0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_sgmiisys_0_init }, section "__clk_of_table", align 4
@__of_table_mtk_sgmiisys_1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7986-sgmiisys_1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_sgmiisys_1_init }, section "__clk_of_table", align 4
@__of_table_mtk_ethsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7986-ethsys_ck\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_ethsys_init }, section "__clk_of_table", align 4
@sgmii0_clks = internal constant [4 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.1, ptr @.str.2, ptr @sgmii0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 1, ptr @.str.3, ptr @.str.2, ptr @sgmii0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.4, ptr @.str.2, ptr @sgmii0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.5, ptr @.str.2, ptr @sgmii0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], section ".init.rodata", align 4
@.str = private unnamed_addr constant [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", align 1
@__func__.mtk_sgmiisys_0_init = private unnamed_addr constant [20 x i8] c"mtk_sgmiisys_0_init\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"sgmii0_tx250m_en\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"top_xtal\00", align 1
@sgmii0_cg_regs = internal constant %struct.mtk_gate_regs { i32 228, i32 228, i32 228 }, align 4
@mtk_clk_gate_ops_no_setclr_inv = external dso_local constant %struct.clk_ops, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"sgmii0_rx250m_en\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"sgmii0_cdr_ref\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"sgmii0_cdr_fb\00", align 1
@sgmii1_clks = internal constant [4 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.6, ptr @.str.2, ptr @sgmii1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 1, ptr @.str.7, ptr @.str.2, ptr @sgmii1_cg_regs, i32 3, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.8, ptr @.str.2, ptr @sgmii1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.9, ptr @.str.2, ptr @sgmii1_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], section ".init.rodata", align 4
@__func__.mtk_sgmiisys_1_init = private unnamed_addr constant [20 x i8] c"mtk_sgmiisys_1_init\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"sgmii1_tx250m_en\00", align 1
@sgmii1_cg_regs = internal constant %struct.mtk_gate_regs { i32 228, i32 228, i32 228 }, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"sgmii1_rx250m_en\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"sgmii1_cdr_ref\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"sgmii1_cdr_fb\00", align 1
@eth_clks = internal constant [5 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.10, ptr @.str.11, ptr @eth_cg_regs, i32 6, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 1, ptr @.str.12, ptr @.str.13, ptr @eth_cg_regs, i32 7, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.14, ptr @.str.13, ptr @eth_cg_regs, i32 8, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.15, ptr @.str.16, ptr @eth_cg_regs, i32 14, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.17, ptr @.str.16, ptr @eth_cg_regs, i32 15, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], section ".init.rodata", align 4
@__func__.mtk_ethsys_init = private unnamed_addr constant [16 x i8] c"mtk_ethsys_init\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"eth_fe_en\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"netsys_2x_sel\00", align 1
@eth_cg_regs = internal constant %struct.mtk_gate_regs { i32 48, i32 48, i32 48 }, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"eth_gp2_en\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"sgm_325m_sel\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"eth_gp1_en\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"eth_wocpu1_en\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"netsys_mcu_sel\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"eth_wocpu0_en\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_mtk_ethsys, ptr @__of_table_mtk_sgmiisys_0, ptr @__of_table_mtk_sgmiisys_1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_sgmiisys_0_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 4) #3
  %3 = tail call i32 @mtk_clk_register_gates(ptr noundef %0, ptr noundef nonnull @sgmii0_clks, i32 noundef 4, ptr noundef %2) #3
  %4 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %2) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mtk_sgmiisys_0_init, i32 noundef %4) #4
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_sgmiisys_1_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 4) #3
  %3 = tail call i32 @mtk_clk_register_gates(ptr noundef %0, ptr noundef nonnull @sgmii1_clks, i32 noundef 4, ptr noundef %2) #3
  %4 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %2) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mtk_sgmiisys_1_init, i32 noundef %4) #4
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_ethsys_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 5) #3
  %3 = tail call i32 @mtk_clk_register_gates(ptr noundef %0, ptr noundef nonnull @eth_clks, i32 noundef 5, ptr noundef %2) #3
  %4 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %2) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mtk_ethsys_init, i32 noundef %4) #4
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
