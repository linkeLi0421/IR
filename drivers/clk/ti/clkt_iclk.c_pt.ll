; ModuleID = '/llk/IR/drivers/clk/ti/clkt_iclk.c_pt.bc'
source_filename = "../drivers/clk/ti/clkt_iclk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@clkhwops_iclk = dso_local local_unnamed_addr constant %struct.clk_hw_omap_ops { ptr null, ptr null, ptr @omap2_clkt_iclk_allow_idle, ptr @omap2_clkt_iclk_deny_idle }, align 4
@clkhwops_iclk_wait = dso_local local_unnamed_addr constant %struct.clk_hw_omap_ops { ptr @omap2_clk_dflt_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr @omap2_clkt_iclk_allow_idle, ptr @omap2_clkt_iclk_deny_idle }, align 4
@clkhwops_omap2430_i2chs_wait = dso_local local_unnamed_addr constant %struct.clk_hw_omap_ops { ptr @omap2430_clk_i2chs_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap2_clkt_iclk_allow_idle(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.clk_omap_reg, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %3 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %4 = load i64, ptr %3, align 4
  store i64 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.clk_omap_reg, ptr %2, i32 0, i32 1
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i16
  %8 = xor i16 %7, 32
  store i16 %8, ptr %5, align 4
  %9 = load ptr, ptr @ti_clk_ll_ops, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef nonnull %2) #4
  %12 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 5
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 1, %14
  %16 = or i32 %15, %11
  %17 = load ptr, ptr @ti_clk_ll_ops, align 4
  %18 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call void %19(i32 noundef %16, ptr noundef nonnull %2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap2_clkt_iclk_deny_idle(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.clk_omap_reg, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %3 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %4 = load i64, ptr %3, align 4
  store i64 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.clk_omap_reg, ptr %2, i32 0, i32 1
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i16
  %8 = xor i16 %7, 32
  store i16 %8, ptr %5, align 4
  %9 = load ptr, ptr @ti_clk_ll_ops, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef nonnull %2) #4
  %12 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 5
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 1, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %11, %16
  %18 = load ptr, ptr @ti_clk_ll_ops, align 4
  %19 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  call void %20(i32 noundef %17, ptr noundef nonnull %2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_dflt_find_idlest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_dflt_find_companion(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @omap2430_clk_i2chs_find_idlest(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 4
  %6 = load i64, ptr %5, align 4
  store i64 %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.clk_omap_reg, ptr %1, i32 0, i32 1
  %8 = lshr i64 %6, 32
  %9 = trunc i64 %8 to i16
  %10 = xor i16 %9, 36
  store i16 %10, ptr %7, align 4
  %11 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 5
  %12 = load i8, ptr %11, align 4
  store i8 %12, ptr %2, align 1
  store i8 0, ptr %3, align 1
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
