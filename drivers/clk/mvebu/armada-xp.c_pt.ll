; ModuleID = '/llk/IR/drivers/clk/mvebu/armada-xp.c_pt.bc'
source_filename = "../drivers/clk/mvebu/armada-xp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.coreclk_soc_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.clk_gating_soc_desc = type { ptr, ptr, i32, i32 }
%struct.coreclk_ratio = type { i32, ptr }

@__of_table_axp_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-xp-core-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axp_clk_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [31 x i8] c"marvell,armada-xp-gating-clock\00", align 1
@axp_coreclks = internal constant %struct.coreclk_soc_desc { ptr @axp_get_tclk_freq, ptr @axp_get_cpu_freq, ptr @axp_get_clk_ratio, ptr null, ptr null, ptr null, ptr @axp_coreclk_ratios, i32 3 }, align 4
@axp_gating_desc = internal constant [30 x %struct.clk_gating_soc_desc] [%struct.clk_gating_soc_desc { ptr @.str.5, ptr null, i32 0, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.6, ptr null, i32 1, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.7, ptr null, i32 2, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.8, ptr null, i32 3, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.9, ptr null, i32 4, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.10, ptr null, i32 5, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.11, ptr null, i32 6, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.12, ptr null, i32 7, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.13, ptr null, i32 8, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.14, ptr null, i32 9, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.15, ptr null, i32 10, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.16, ptr null, i32 11, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.17, ptr null, i32 12, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.18, ptr null, i32 13, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.19, ptr null, i32 14, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.20, ptr @.str.19, i32 15, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.21, ptr null, i32 16, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.22, ptr null, i32 17, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.23, ptr null, i32 18, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.24, ptr null, i32 19, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.25, ptr null, i32 20, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.26, ptr null, i32 22, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.27, ptr null, i32 23, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.28, ptr null, i32 25, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.29, ptr null, i32 26, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.30, ptr null, i32 27, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.31, ptr null, i32 28, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.32, ptr null, i32 29, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.33, ptr @.str.32, i32 30, i32 0 }, %struct.clk_gating_soc_desc zeroinitializer], section ".init.rodata", align 4
@axp_coreclk_ratios = internal constant [3 x %struct.coreclk_ratio] [%struct.coreclk_ratio { i32 0, ptr @.str.2 }, %struct.coreclk_ratio { i32 1, ptr @.str.3 }, %struct.coreclk_ratio { i32 2, ptr @.str.4 }], section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"\013CPU freq select unsupported: %d\0A\00", align 1
@axp_cpu_freqs = internal unnamed_addr constant [12 x i32] [i32 1000000000, i32 1066000000, i32 1200000000, i32 1333000000, i32 1500000000, i32 1666000000, i32 1800000000, i32 2000000000, i32 667000000, i32 0, i32 800000000, i32 1600000000], section ".init.rodata", align 4
@axp_nbclk_ratios = internal unnamed_addr constant [32 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 4], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@axp_hclk_ratios = internal unnamed_addr constant [32 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 6], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 1, i32 4], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 6], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 6], [2 x i32] [i32 2, i32 10], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 4], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 2, i32 5], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 6], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@axp_dramclk_ratios = internal unnamed_addr constant [32 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 6], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 2, i32 5], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 4], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 2, i32 5], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"nbclk\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"dramclk\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ge3\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ge2\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ge1\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ge0\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"pex00\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"pex01\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"pex02\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"pex03\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"pex10\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"pex11\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"pex12\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"pex13\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"bp\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"sata0lnk\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"sata0\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"lcd\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"sdio\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"usb0\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"usb1\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"xor0\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"crypto\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"tdm\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"pex20\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"pex30\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"xor1\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"sata1lnk\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"sata1\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_axp_clk], section "llvm.metadata"
@switch.table.axp_get_clk_ratio = private unnamed_addr constant [3 x ptr] [ptr @axp_nbclk_ratios, ptr @axp_hclk_ratios, ptr @axp_dramclk_ratios], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @axp_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #4
  tail call void @mvebu_coreclk_setup(ptr noundef %0, ptr noundef nonnull @axp_coreclks) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @mvebu_clk_gating_setup(ptr noundef nonnull %2, ptr noundef nonnull @axp_gating_desc) #5
  tail call void @of_node_put(ptr noundef nonnull %2) #4
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mvebu_coreclk_setup(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mvebu_clk_gating_setup(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal i32 @axp_get_tclk_freq(ptr nocapture noundef readnone %0) #3 section ".init.text" {
  ret i32 250000000
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @axp_get_cpu_freq(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %3 = lshr i32 %2, 21
  %4 = and i32 %3, 7
  %5 = getelementptr i8, ptr %0, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %7 = lshr i32 %6, 17
  %8 = and i32 %7, 8
  %9 = or i32 %8, %4
  %10 = icmp ugt i32 %9, 11
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %9) #5
  br label %16

13:                                               ; preds = %1
  %14 = getelementptr [12 x i32], ptr @axp_cpu_freqs, i32 0, i32 %9
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi i32 [ 0, %11 ], [ %15, %13 ]
  ret i32 %17
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @axp_get_clk_ratio(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 section ".init.text" {
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %6 = getelementptr i8, ptr %0, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %8 = icmp ult i32 %1, 3
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = lshr i32 %7, 15
  %11 = and i32 %10, 16
  %12 = lshr i32 %5, 24
  %13 = and i32 %12, 15
  %14 = or i32 %11, %13
  %15 = getelementptr inbounds [3 x ptr], ptr @switch.table.axp_get_clk_ratio, i32 0, i32 %1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr [32 x [2 x i32]], ptr %16, i32 0, i32 %14
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %2, align 4
  %19 = getelementptr [32 x [2 x i32]], ptr %16, i32 0, i32 %14, i32 1
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %3, align 4
  br label %21

21:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2846055}
!9 = !{i64 2150406269}
!10 = !{i64 2150406582}
!11 = !{i64 2150408224}
!12 = !{i64 2150408537}
