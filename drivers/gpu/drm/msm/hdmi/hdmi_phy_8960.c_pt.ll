; ModuleID = '/llk/IR/drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_phy_8960.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdmi_phy_cfg = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.hdmi_phy = type { ptr, ptr, ptr, ptr, ptr, ptr }

@hdmi_phy_8960_reg_names = internal constant [1 x ptr] [ptr @.str.2], align 4
@hdmi_phy_8960_clk_names = internal constant [1 x ptr] [ptr @.str.3], align 4
@msm_hdmi_phy_8960_cfg = dso_local local_unnamed_addr constant %struct.hdmi_phy_cfg { i32 1, ptr @hdmi_phy_8960_powerup, ptr @hdmi_phy_8960_powerdown, ptr @hdmi_phy_8960_reg_names, i32 1, ptr @hdmi_phy_8960_clk_names, i32 1 }, align 4
@.str = private unnamed_addr constant [15 x i8] c"pixclock: %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"core-vdda\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"slave_iface\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_phy_8960_powerup(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %1) #2
  %3 = getelementptr inbounds %struct.hdmi_phy, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  tail call void @msm_writel(i32 noundef 0, ptr noundef %5) #2
  %6 = load ptr, ptr %3, align 4
  tail call void @msm_writel(i32 noundef 27, ptr noundef %6) #2
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  tail call void @msm_writel(i32 noundef 242, ptr noundef %8) #2
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  tail call void @msm_writel(i32 noundef 0, ptr noundef %10) #2
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 20
  tail call void @msm_writel(i32 noundef 0, ptr noundef %12) #2
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 24
  tail call void @msm_writel(i32 noundef 0, ptr noundef %14) #2
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %16) #2
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 32
  tail call void @msm_writel(i32 noundef 0, ptr noundef %18) #2
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 36
  tail call void @msm_writel(i32 noundef 0, ptr noundef %20) #2
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i8, ptr %21, i32 40
  tail call void @msm_writel(i32 noundef 0, ptr noundef %22) #2
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 44
  tail call void @msm_writel(i32 noundef 0, ptr noundef %24) #2
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 12
  tail call void @msm_writel(i32 noundef 32, ptr noundef %26) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_phy_8960_powerdown(ptr nocapture noundef readonly %0) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1) #2
  %2 = getelementptr inbounds %struct.hdmi_phy, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  tail call void @msm_writel(i32 noundef 127, ptr noundef %4) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
