; ModuleID = '/llk/IR/drivers/clk/mvebu/mv98dx3236.c_pt.bc'
source_filename = "../drivers/clk/mvebu/mv98dx3236.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.coreclk_soc_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.clk_gating_soc_desc = type { ptr, ptr, i32, i32 }
%struct.coreclk_ratio = type { i32, ptr }

@__of_table_mv98dx3236_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv98dx3236-core-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mv98dx3236_clk_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [32 x i8] c"marvell,mv98dx3236-gating-clock\00", align 1
@mv98dx3236_core_clocks = internal constant %struct.coreclk_soc_desc { ptr @mv98dx3236_get_tclk_freq, ptr @mv98dx3236_get_cpu_freq, ptr @mv98dx3236_get_clk_ratio, ptr null, ptr null, ptr null, ptr @mv98dx3236_core_ratios, i32 2 }, align 4
@mv98dx3236_gating_desc = internal constant [7 x %struct.clk_gating_soc_desc] [%struct.clk_gating_soc_desc { ptr @.str.6, ptr null, i32 3, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.7, ptr null, i32 4, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.8, ptr null, i32 5, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.9, ptr null, i32 17, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.10, ptr null, i32 18, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.11, ptr null, i32 22, i32 0 }, %struct.clk_gating_soc_desc zeroinitializer], section ".init.rodata", align 4
@mv98dx3236_core_ratios = internal constant [2 x %struct.coreclk_ratio] [%struct.coreclk_ratio { i32 0, ptr @.str.4 }, %struct.coreclk_ratio { i32 1, ptr @.str.5 }], section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"marvell,armadaxp-98dx4251\00", align 1
@mv98dx4251_cpu_frequencies = internal unnamed_addr constant [8 x i32] [i32 400000000, i32 0, i32 667000000, i32 800000000, i32 0, i32 0, i32 0, i32 0], section ".init.rodata", align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"marvell,armadaxp-98dx3236\00", align 1
@mv98dx3236_cpu_frequencies = internal unnamed_addr constant [8 x i32] [i32 0, i32 667000000, i32 400000000, i32 800000000, i32 0, i32 800000000, i32 0, i32 0], section ".init.rodata", align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"\013CPU freq select unsupported %d\0A\00", align 1
@mv98dx4251_cpu_ddr_ratios = internal unnamed_addr constant [8 x [2 x i32]] [[2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@mv98dx3236_cpu_ddr_ratios = internal unnamed_addr constant [8 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@mv98dx4251_cpu_mpll_ratios = internal unnamed_addr constant [8 x [2 x i32]] [[2 x i32] [i32 2, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 3, i32 1], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@mv98dx3236_cpu_mpll_ratios = internal unnamed_addr constant [8 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 3, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"ddrclk\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mpll\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ge1\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ge0\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pex00\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"sdio\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"usb0\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"xor0\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_mv98dx3236_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mv98dx3236_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #4
  tail call void @mvebu_coreclk_setup(ptr noundef %0, ptr noundef nonnull @mv98dx3236_core_clocks) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @mvebu_clk_gating_setup(ptr noundef nonnull %2, ptr noundef nonnull @mv98dx3236_gating_desc) #5
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
define internal i32 @mv98dx3236_get_tclk_freq(ptr nocapture noundef readnone %0) #3 section ".init.text" {
  ret i32 200000000
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mv98dx3236_get_cpu_freq(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %3 = lshr i32 %2, 18
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 7
  %6 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ @mv98dx4251_cpu_frequencies, %1 ], [ @mv98dx3236_cpu_frequencies, %8 ]
  %13 = zext i8 %5 to i32
  %14 = getelementptr [8 x i32], ptr %12, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %8
  %18 = zext i8 %5 to i32
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %18) #5
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi i32 [ 0, %17 ], [ %15, %11 ]
  ret i32 %21
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mv98dx3236_get_clk_ratio(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 section ".init.text" {
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %6 = lshr i32 %5, 18
  %7 = and i32 %6, 7
  switch i32 %1, label %26 [
    i32 0, label %8
    i32 1, label %14
  ]

8:                                                ; preds = %4
  %9 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %20

14:                                               ; preds = %4
  %15 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17, %14, %11, %8
  %21 = phi ptr [ @mv98dx4251_cpu_ddr_ratios, %8 ], [ @mv98dx3236_cpu_ddr_ratios, %11 ], [ @mv98dx4251_cpu_mpll_ratios, %14 ], [ @mv98dx3236_cpu_mpll_ratios, %17 ]
  %22 = getelementptr [8 x [2 x i32]], ptr %21, i32 0, i32 %7
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %2, align 4
  %24 = getelementptr [8 x [2 x i32]], ptr %21, i32 0, i32 %7, i32 1
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %3, align 4
  br label %26

26:                                               ; preds = %20, %17, %11, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

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
!8 = !{i64 2845427}
!9 = !{i64 2150405627}
!10 = !{i64 2150407006}
