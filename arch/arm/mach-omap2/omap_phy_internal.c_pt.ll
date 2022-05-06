; ModuleID = '/llk/IR/arch/arm/mach-omap2/omap_phy_internal.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_phy_internal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@__initcall__kmod_omap_phy_internal__215_54___omap4430_phy_power_downearly = internal global ptr @__omap4430_phy_power_down, section ".initcallearly.init", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [52 x i8] c"\016omap_phy_internal: Waiting for PHY clock good...\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"\013omap_phy_internal: musb PHY clock good timed out\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\016omap_phy_internal: Unsupported mode %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"\013omap_phy_internal: control module ioremap failed\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_omap_phy_internal__215_54___omap4430_phy_power_downearly, ptr @__omap4430_phy_power_down], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @__omap4430_phy_power_down() #0 section ".init.text" {
  %1 = tail call i32 @omap_rev() #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call fastcc i32 @omap4430_phy_power_down() #5
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @omap4430_phy_power_down() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @omap_rev() #4
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 68
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = tail call ptr @ioremap(i32 noundef 1241522176, i32 noundef 1024) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %5, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1) #4, !srcloc !8
  tail call void @iounmap(ptr noundef nonnull %5) #4
  br label %11

11:                                               ; preds = %9, %7, %0
  %12 = phi i32 [ 0, %9 ], [ -12, %7 ], [ 0, %0 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @am35x_musb_reset() local_unnamed_addr #1 {
  %1 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1432) #4
  %2 = or i32 %1, 1
  tail call void @omap_ctrl_writel(i32 noundef %2, i16 noundef zeroext 1432) #4
  %3 = and i32 %1, -2
  tail call void @omap_ctrl_writel(i32 noundef %3, i16 noundef zeroext 1432) #4
  %4 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1432) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_ctrl_readl(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_ctrl_writel(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @am35x_musb_phy_power(i8 noundef zeroext %0) local_unnamed_addr #1 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = add i32 %2, 10
  %4 = icmp eq i8 %0, 0
  %5 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1408) #4
  br i1 %4, label %20, label %6

6:                                                ; preds = %1
  %7 = and i32 %5, -61
  %8 = or i32 %7, 32
  tail call void @omap_ctrl_writel(i32 noundef %8, i16 noundef zeroext 1408) #4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %10

10:                                               ; preds = %14, %6
  %11 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1408) #4
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !10
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = sub i32 %3, %15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %10

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %23

20:                                               ; preds = %1
  %21 = and i32 %5, -45
  %22 = or i32 %21, 12
  tail call void @omap_ctrl_writel(i32 noundef %22, i16 noundef zeroext 1408) #4
  br label %23

23:                                               ; preds = %20, %18, %10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @am35x_musb_clear_irq() local_unnamed_addr #1 {
  %1 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1428) #4
  %2 = or i32 %1, 16
  tail call void @omap_ctrl_writel(i32 noundef %2, i16 noundef zeroext 1428) #4
  %3 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1428) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @am35x_set_mode(i8 noundef zeroext %0) local_unnamed_addr #1 {
  %2 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1408) #4
  %3 = and i32 %2, -49153
  switch i8 %0, label %8 [
    i8 1, label %4
    i8 2, label %6
    i8 3, label %11
  ]

4:                                                ; preds = %1
  %5 = or i32 %3, 16384
  br label %11

6:                                                ; preds = %1
  %7 = or i32 %3, 32768
  br label %11

8:                                                ; preds = %1
  %9 = zext i8 %0 to i32
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %9) #6
  br label %11

11:                                               ; preds = %8, %6, %4, %1
  %12 = phi i32 [ %3, %8 ], [ %7, %6 ], [ %5, %4 ], [ %3, %1 ]
  tail call void @omap_ctrl_writel(i32 noundef %12, i16 noundef zeroext 1408) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold }
attributes #6 = { cold nounwind }

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
!8 = !{i64 2477997}
!9 = !{i64 2152594059}
!10 = !{i64 2152593901}
