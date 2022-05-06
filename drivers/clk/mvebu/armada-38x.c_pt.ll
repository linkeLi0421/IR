; ModuleID = '/llk/IR/drivers/clk/mvebu/armada-38x.c_pt.bc'
source_filename = "../drivers/clk/mvebu/armada-38x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.coreclk_soc_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.coreclk_ratio = type { i32, ptr }
%struct.clk_gating_soc_desc = type { ptr, ptr, i32, i32 }

@__of_table_armada_38x_core_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-core-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_38x_coreclk_init }, section "__clk_of_table", align 4
@__of_table_armada_38x_clk_gating = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-380-gating-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_38x_clk_gating_init }, section "__clk_of_table", align 4
@armada_38x_coreclks = internal constant %struct.coreclk_soc_desc { ptr @armada_38x_get_tclk_freq, ptr @armada_38x_get_cpu_freq, ptr @armada_38x_get_clk_ratio, ptr null, ptr null, ptr null, ptr @armada_38x_coreclk_ratios, i32 2 }, align 4
@armada_38x_coreclk_ratios = internal constant [2 x %struct.coreclk_ratio] [%struct.coreclk_ratio { i32 1, ptr @.str.1 }, %struct.coreclk_ratio { i32 0, ptr @.str.2 }], section ".init.rodata", align 4
@armada_38x_tclk_frequencies = internal unnamed_addr constant [2 x i32] [i32 250000000, i32 200000000], section ".init.rodata", align 4
@.str = private unnamed_addr constant [43 x i8] c"\013Selected CPU frequency (%d) unsupported\0A\00", align 1
@armada_38x_cpu_frequencies = internal unnamed_addr constant [20 x i32] [i32 666000000, i32 0, i32 800000000, i32 0, i32 1066000000, i32 0, i32 1200000000, i32 0, i32 1332000000, i32 0, i32 0, i32 0, i32 1600000000, i32 0, i32 0, i32 0, i32 1866000000, i32 0, i32 0, i32 2000000000], section ".init.rodata", align 4
@armada_38x_cpu_l2_ratios = internal unnamed_addr constant [32 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@armada_38x_cpu_ddr_ratios = internal unnamed_addr constant [32 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 7, i32 15], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"l2clk\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ddrclk\00", align 1
@armada_38x_gating_desc = internal constant [24 x %struct.clk_gating_soc_desc] [%struct.clk_gating_soc_desc { ptr @.str.3, ptr null, i32 0, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.4, ptr null, i32 2, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.5, ptr null, i32 3, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.6, ptr null, i32 4, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.7, ptr null, i32 5, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.8, ptr null, i32 6, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.9, ptr null, i32 7, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.10, ptr null, i32 8, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.11, ptr null, i32 9, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.12, ptr null, i32 10, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.13, ptr null, i32 11, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.14, ptr null, i32 13, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.15, ptr null, i32 14, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.16, ptr null, i32 15, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.17, ptr null, i32 16, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.18, ptr null, i32 17, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.19, ptr null, i32 18, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.20, ptr null, i32 21, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.21, ptr null, i32 22, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.22, ptr null, i32 23, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.23, ptr null, i32 25, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.24, ptr null, i32 28, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.25, ptr null, i32 30, i32 0 }, %struct.clk_gating_soc_desc zeroinitializer], section ".init.rodata", align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ge2\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ge1\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ge0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"pex1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"pex2\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"pex3\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"pex0\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"usb3h0\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"usb3h1\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"usb3d\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"bm\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"crypto0z\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"sata0\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"crypto1z\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"sdio\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"crypto1\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"xor0\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"crypto0\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"tdm\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"xor1\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"sata1\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_armada_38x_clk_gating, ptr @__of_table_armada_38x_core_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @armada_38x_coreclk_init(ptr noundef %0) #0 section ".init.text" {
  tail call void @mvebu_coreclk_setup(ptr noundef %0, ptr noundef nonnull @armada_38x_coreclks) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @armada_38x_clk_gating_init(ptr noundef %0) #0 section ".init.text" {
  tail call void @mvebu_clk_gating_setup(ptr noundef %0, ptr noundef nonnull @armada_38x_gating_desc) #2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mvebu_coreclk_setup(ptr noundef, ptr noundef) local_unnamed_addr #1 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @armada_38x_get_tclk_freq(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %3 = lshr i32 %2, 15
  %4 = and i32 %3, 1
  %5 = getelementptr [2 x i32], ptr @armada_38x_tclk_frequencies, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @armada_38x_get_cpu_freq(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  %3 = lshr i32 %2, 10
  %4 = and i32 %3, 31
  %5 = icmp ugt i32 %4, 19
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %4) #2
  br label %11

8:                                                ; preds = %1
  %9 = getelementptr [20 x i32], ptr @armada_38x_cpu_frequencies, i32 0, i32 %4
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ 0, %6 ], [ %10, %8 ]
  ret i32 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @armada_38x_get_clk_ratio(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 section ".init.text" {
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %6 = lshr i32 %5, 10
  %7 = and i32 %6, 31
  switch i32 %1, label %15 [
    i32 1, label %9
    i32 0, label %8
  ]

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi ptr [ @armada_38x_cpu_ddr_ratios, %8 ], [ @armada_38x_cpu_l2_ratios, %4 ]
  %11 = getelementptr [32 x [2 x i32]], ptr %10, i32 0, i32 %7
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %2, align 4
  %13 = getelementptr [32 x [2 x i32]], ptr %10, i32 0, i32 %7, i32 1
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %3, align 4
  br label %15

15:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mvebu_clk_gating_setup(ptr noundef, ptr noundef) local_unnamed_addr #1 section ".init.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind }
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
!8 = !{i64 2845036}
!9 = !{i64 2150404965}
!10 = !{i64 2150405535}
!11 = !{i64 2150407314}
