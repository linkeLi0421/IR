; ModuleID = '/llk/IR/arch/arm/mach-omap2/pm.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/pm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@oscillator.0 = internal unnamed_addr global i32 -1, align 4
@oscillator.1 = internal unnamed_addr global i32 -1, align 4
@omap_pm_suspend = internal unnamed_addr global ptr null, align 4
@omap_pm_ops = internal constant %struct.platform_suspend_ops { ptr @suspend_valid_only_mem, ptr @omap_pm_begin, ptr null, ptr null, ptr @omap_pm_enter, ptr @omap_pm_wake, ptr null, ptr null, ptr @omap_pm_end, ptr null }, align 4
@omap_pm_soc_init = dso_local local_unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [30 x i8] c"\014%s: pm soc init failed: %i\0A\00", align 1
@__func__.omap2_common_pm_late_init = private unnamed_addr constant [26 x i8] c"omap2_common_pm_late_init\00", align 1
@__initcall__kmod_pm__247_167___omap2_common_pm_late_init7 = internal global ptr @__omap2_common_pm_late_init, section ".initcall7.init", align 4
@enable_off_mode = dso_local local_unnamed_addr global i32 0, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_pm__247_167___omap2_common_pm_late_init7, ptr @__omap2_common_pm_late_init], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap_pm_setup_oscillator(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  store i32 %0, ptr @oscillator.0, align 4
  store i32 %1, ptr @oscillator.1, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @omap_pm_get_oscillator(ptr noundef writeonly %0, ptr noundef writeonly %1) local_unnamed_addr #1 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load i32, ptr @oscillator.0, align 4
  store i32 %7, ptr %0, align 4
  %8 = load i32, ptr @oscillator.1, align 4
  store i32 %8, ptr %1, align 4
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_pm_clkdms_setup(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  tail call void @clkdm_allow_idle(ptr noundef %0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_allow_idle(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_common_suspend_init(ptr noundef %0) local_unnamed_addr #2 {
  store ptr %0, ptr @omap_pm_suspend, align 4
  tail call void @suspend_set_ops(ptr noundef nonnull @omap_pm_ops) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_pm_nop_init() local_unnamed_addr #4 {
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap2_common_pm_late_init() local_unnamed_addr #5 section ".init.text" {
  %1 = load ptr, ptr @omap_pm_soc_init, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @omap3_twl_init() #7
  %5 = tail call i32 @omap4_twl_init() #7
  %6 = tail call i32 @omap4_cpcap_init() #7
  %7 = tail call i32 @omap_voltage_late_init() #7
  %8 = load ptr, ptr @omap_pm_soc_init, align 4
  %9 = tail call i32 %8() #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap2_common_pm_late_init, i32 noundef %9) #8
  br label %13

13:                                               ; preds = %11, %3
  %14 = tail call i32 @omap2_clk_enable_autoidle_all() #7
  br label %15

15:                                               ; preds = %13, %0
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_twl_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_twl_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_cpcap_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_voltage_late_init() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_enable_autoidle_all() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @__omap2_common_pm_late_init() #5 section ".init.text" {
  %1 = tail call i32 @omap_rev() #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @omap2_common_pm_late_init() #9
  br label %5

5:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suspend_valid_only_mem(i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_pm_begin(i32 noundef %0) #2 {
  tail call void @cpu_idle_poll_ctrl(i1 noundef zeroext true) #7
  %2 = tail call i32 @omap_rev() #7
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 52
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @omap_prcm_irq_prepare() #7
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_pm_enter(i32 noundef %0) #2 {
  %2 = load ptr, ptr @omap_pm_suspend, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = icmp eq i32 %0, 3
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call i32 %2() #7
  br label %8

8:                                                ; preds = %6, %4, %1
  %9 = phi i32 [ -2, %1 ], [ %7, %6 ], [ -22, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_pm_wake() #2 {
  %1 = tail call i32 @omap_rev() #7
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 52
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void @omap_prcm_irq_complete() #7
  br label %5

5:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_pm_end() #2 {
  tail call void @cpu_idle_poll_ctrl(i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_idle_poll_ctrl(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_prcm_irq_prepare() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_prcm_irq_complete() local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { cold }

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
