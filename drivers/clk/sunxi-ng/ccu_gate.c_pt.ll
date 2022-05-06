; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu_gate.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_gate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_gate_helper_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_gate_helper_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_gate_helper_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_gate_helper_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_gate_helper_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_gate_helper_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_gate_helper_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_gate_helper_is_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_gate_helper_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_gate_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }

@__kstrtab_ccu_gate_helper_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_gate_helper_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_gate_helper_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_gate_helper_disable to i32), ptr @__kstrtab_ccu_gate_helper_disable, ptr @__kstrtabns_ccu_gate_helper_disable }, section "___ksymtab_gpl+ccu_gate_helper_disable", align 4
@__kstrtab_ccu_gate_helper_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_gate_helper_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_gate_helper_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_gate_helper_enable to i32), ptr @__kstrtab_ccu_gate_helper_enable, ptr @__kstrtabns_ccu_gate_helper_enable }, section "___ksymtab_gpl+ccu_gate_helper_enable", align 4
@__kstrtab_ccu_gate_helper_is_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_gate_helper_is_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_gate_helper_is_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_gate_helper_is_enabled to i32), ptr @__kstrtab_ccu_gate_helper_is_enabled, ptr @__kstrtabns_ccu_gate_helper_is_enabled }, section "___ksymtab_gpl+ccu_gate_helper_is_enabled", align 4
@ccu_gate_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_gate_enable, ptr @ccu_gate_disable, ptr @ccu_gate_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_gate_recalc_rate, ptr @ccu_gate_round_rate, ptr null, ptr null, ptr null, ptr @ccu_gate_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ccu_gate_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_gate_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_gate_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_gate_ops to i32), ptr @__kstrtab_ccu_gate_ops, ptr @__kstrtabns_ccu_gate_ops }, section "___ksymtab_gpl+ccu_gate_ops", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_ccu_gate_helper_disable, ptr @__ksymtab_ccu_gate_helper_enable, ptr @__ksymtab_ccu_gate_helper_is_enabled, ptr @__ksymtab_ccu_gate_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ccu_gate_helper_disable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %14 = xor i32 %1, -1
  %15 = and i32 %13, %14
  %16 = load ptr, ptr %0, align 4
  %17 = load i16, ptr %9, align 4
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %16, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %15) #4, !srcloc !11
  %20 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %7) #4
  br label %21

21:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ccu_gate_helper_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %14 = or i32 %13, %1
  %15 = load ptr, ptr %0, align 4
  %16 = load i16, ptr %9, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %14) #4, !srcloc !11
  %19 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %7) #4
  br label %20

20:                                               ; preds = %4, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ccu_gate_helper_is_enabled(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %11 = and i32 %10, %1
  br label %12

12:                                               ; preds = %4, %2
  %13 = phi i32 [ %11, %4 ], [ 1, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_gate_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -20
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %16 = or i32 %15, %3
  %17 = load ptr, ptr %6, align 4
  %18 = load i16, ptr %11, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %16) #4, !srcloc !11
  %21 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %9) #4
  br label %22

22:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ccu_gate_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -20
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %16 = xor i32 %3, -1
  %17 = and i32 %15, %16
  %18 = load ptr, ptr %6, align 4
  %19 = load i16, ptr %11, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #4, !srcloc !11
  %22 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %9) #4
  br label %23

23:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_gate_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -20
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %13 = and i32 %12, %3
  br label %14

14:                                               ; preds = %5, %1
  %15 = phi i32 [ %13, %5 ], [ 1, %1 ]
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ccu_gate_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -12
  %9 = load i32, ptr %8, align 4
  %10 = udiv i32 %1, %9
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ %10, %7 ], [ %1, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_gate_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -12
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %10, %8 ], [ 1, %3 ]
  %13 = tail call i32 @clk_hw_get_flags(ptr noundef %0) #4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, ptr %2, align 4
  br label %26

18:                                               ; preds = %11
  %19 = load i32, ptr %4, align 4
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 1, i32 %12
  %23 = mul i32 %22, %1
  %24 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #4
  %25 = tail call i32 @clk_hw_round_rate(ptr noundef %24, i32 noundef %23) #4
  store i32 %25, ptr %2, align 4
  br label %26

26:                                               ; preds = %18, %16
  %27 = phi i32 [ %17, %16 ], [ %25, %18 ]
  %28 = udiv i32 %27, %12
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ccu_gate_set_rate(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #3 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2843551}
!9 = !{i64 2150409373}
!10 = !{i64 2150409575}
!11 = !{i64 2843133}
!12 = !{i64 2150411822}
!13 = !{i64 2150412023}
!14 = !{i64 2150413891}
