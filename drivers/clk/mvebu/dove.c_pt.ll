; ModuleID = '/llk/IR/drivers/clk/mvebu/dove.c_pt.bc'
source_filename = "../drivers/clk/mvebu/dove.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.coreclk_soc_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.clk_gating_soc_desc = type { ptr, ptr, i32, i32 }
%struct.coreclk_ratio = type { i32, ptr }

@__of_table_dove_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,dove-core-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dove_clk_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [26 x i8] c"marvell,dove-gating-clock\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"marvell,dove-divider-clock\00", align 1
@dove_coreclks = internal constant %struct.coreclk_soc_desc { ptr @dove_get_tclk_freq, ptr @dove_get_cpu_freq, ptr @dove_get_clk_ratio, ptr null, ptr null, ptr null, ptr @dove_coreclk_ratios, i32 2 }, align 4
@dove_gating_desc = internal constant [19 x %struct.clk_gating_soc_desc] [%struct.clk_gating_soc_desc { ptr @.str.4, ptr null, i32 0, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.5, ptr null, i32 1, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.6, ptr @.str.7, i32 2, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.8, ptr null, i32 3, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.9, ptr null, i32 4, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.10, ptr null, i32 5, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.11, ptr null, i32 8, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.12, ptr null, i32 9, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.13, ptr null, i32 10, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.14, ptr null, i32 11, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.15, ptr null, i32 12, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.16, ptr null, i32 13, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.17, ptr null, i32 15, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.18, ptr null, i32 21, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.19, ptr null, i32 22, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.20, ptr null, i32 23, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.21, ptr null, i32 24, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.7, ptr null, i32 30, i32 0 }, %struct.clk_gating_soc_desc zeroinitializer], section ".init.rodata", align 4
@dove_coreclk_ratios = internal constant [2 x %struct.coreclk_ratio] [%struct.coreclk_ratio { i32 0, ptr @.str.2 }, %struct.coreclk_ratio { i32 1, ptr @.str.3 }], section ".init.rodata", align 4
@dove_tclk_freqs = internal unnamed_addr constant [4 x i32] [i32 166666667, i32 125000000, i32 0, i32 0], section ".init.rodata", align 4
@dove_cpu_freqs = internal unnamed_addr constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1000000000, i32 933333333, i32 933333333, i32 800000000, i32 800000000, i32 800000000, i32 1066666667, i32 666666667, i32 533333333, i32 400000000, i32 333333333], section ".init.rodata", align 4
@dove_cpu_l2_ratios = internal unnamed_addr constant [8 x [2 x i32]] [[2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 4], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@dove_cpu_ddr_ratios = internal unnamed_addr constant [16 x [2 x i32]] [[2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 5], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 4], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 5], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 6], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 7], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 8], [2 x i32] [i32 1, i32 10]], section ".init.rodata", align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"l2clk\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ddrclk\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"usb0\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"usb1\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"gephy\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"pex0\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"pex1\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"sdio0\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"sdio1\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"i2s0\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"i2s1\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"crypto\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"ac97\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"pdma\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"xor0\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"xor1\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_dove_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dove_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #3
  %3 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #3
  tail call void @mvebu_coreclk_setup(ptr noundef %0, ptr noundef nonnull @dove_coreclks) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @dove_divider_clk_init(ptr noundef nonnull %3) #4
  tail call void @of_node_put(ptr noundef nonnull %3) #3
  br label %6

6:                                                ; preds = %5, %1
  %7 = icmp eq ptr %2, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @mvebu_clk_gating_setup(ptr noundef nonnull %2, ptr noundef nonnull @dove_gating_desc) #4
  tail call void @of_node_put(ptr noundef nonnull %2) #3
  br label %9

9:                                                ; preds = %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mvebu_coreclk_setup(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dove_divider_clk_init(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mvebu_clk_gating_setup(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dove_get_tclk_freq(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %3 = lshr i32 %2, 23
  %4 = and i32 %3, 3
  %5 = getelementptr [4 x i32], ptr @dove_tclk_freqs, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dove_get_cpu_freq(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 15
  %5 = getelementptr [16 x i32], ptr @dove_cpu_freqs, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dove_get_clk_ratio(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 section ".init.text" {
  switch i32 %1, label %22 [
    i32 0, label %5
    i32 1, label %12
  ]

5:                                                ; preds = %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %7 = lshr i32 %6, 9
  %8 = and i32 %7, 7
  %9 = getelementptr [8 x [2 x i32]], ptr @dove_cpu_l2_ratios, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %2, align 4
  %11 = getelementptr [8 x [2 x i32]], ptr @dove_cpu_l2_ratios, i32 0, i32 %8, i32 1
  br label %19

12:                                               ; preds = %4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %14 = lshr i32 %13, 12
  %15 = and i32 %14, 15
  %16 = getelementptr [16 x [2 x i32]], ptr @dove_cpu_ddr_ratios, i32 0, i32 %15
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %2, align 4
  %18 = getelementptr [16 x [2 x i32]], ptr @dove_cpu_ddr_ratios, i32 0, i32 %15, i32 1
  br label %19

19:                                               ; preds = %12, %5
  %20 = phi ptr [ %18, %12 ], [ %11, %5 ]
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %3, align 4
  br label %22

22:                                               ; preds = %19, %4
  ret void
}

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
!8 = !{i64 2845154}
!9 = !{i64 2150405508}
!10 = !{i64 2150406078}
!11 = !{i64 2150406726}
!12 = !{i64 2150407024}
