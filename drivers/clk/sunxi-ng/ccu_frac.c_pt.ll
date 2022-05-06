; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu_frac.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_frac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_frac_helper_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_frac_helper_is_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_frac_helper_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_frac_helper_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_frac_helper_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_frac_helper_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_frac_helper_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_frac_helper_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_frac_helper_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_frac_helper_has_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_frac_helper_has_rate\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_frac_helper_has_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_frac_helper_read_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_frac_helper_read_rate\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_frac_helper_read_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_frac_helper_set_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_frac_helper_set_rate\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_frac_helper_set_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_frac_internal = type { i32, i32, [2 x i32] }

@__kstrtab_ccu_frac_helper_is_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_frac_helper_is_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_frac_helper_is_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_frac_helper_is_enabled to i32), ptr @__kstrtab_ccu_frac_helper_is_enabled, ptr @__kstrtabns_ccu_frac_helper_is_enabled }, section "___ksymtab_gpl+ccu_frac_helper_is_enabled", align 4
@__kstrtab_ccu_frac_helper_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_frac_helper_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_frac_helper_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_frac_helper_enable to i32), ptr @__kstrtab_ccu_frac_helper_enable, ptr @__kstrtabns_ccu_frac_helper_enable }, section "___ksymtab_gpl+ccu_frac_helper_enable", align 4
@__kstrtab_ccu_frac_helper_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_frac_helper_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_frac_helper_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_frac_helper_disable to i32), ptr @__kstrtab_ccu_frac_helper_disable, ptr @__kstrtabns_ccu_frac_helper_disable }, section "___ksymtab_gpl+ccu_frac_helper_disable", align 4
@__kstrtab_ccu_frac_helper_has_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_frac_helper_has_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_frac_helper_has_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_frac_helper_has_rate to i32), ptr @__kstrtab_ccu_frac_helper_has_rate, ptr @__kstrtabns_ccu_frac_helper_has_rate }, section "___ksymtab_gpl+ccu_frac_helper_has_rate", align 4
@__kstrtab_ccu_frac_helper_read_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_frac_helper_read_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_frac_helper_read_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_frac_helper_read_rate to i32), ptr @__kstrtab_ccu_frac_helper_read_rate, ptr @__kstrtabns_ccu_frac_helper_read_rate }, section "___ksymtab_gpl+ccu_frac_helper_read_rate", align 4
@__kstrtab_ccu_frac_helper_set_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_frac_helper_set_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_frac_helper_set_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_frac_helper_set_rate to i32), ptr @__kstrtab_ccu_frac_helper_set_rate, ptr @__kstrtabns_ccu_frac_helper_set_rate }, section "___ksymtab_gpl+ccu_frac_helper_set_rate", align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_ccu_frac_helper_disable, ptr @__ksymtab_ccu_frac_helper_enable, ptr @__ksymtab_ccu_frac_helper_has_rate, ptr @__ksymtab_ccu_frac_helper_is_enabled, ptr @__ksymtab_ccu_frac_helper_read_rate, ptr @__ksymtab_ccu_frac_helper_set_rate], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ccu_frac_helper_is_enabled(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %14 = load i32, ptr %1, align 4
  %15 = and i32 %14, %13
  %16 = icmp eq i32 %15, 0
  br label %17

17:                                               ; preds = %7, %2
  %18 = phi i1 [ %16, %7 ], [ false, %2 ]
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ccu_frac_helper_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #3
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %17 = load i32, ptr %1, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load ptr, ptr %0, align 4
  %21 = load i16, ptr %12, align 4
  %22 = zext i16 %21 to i32
  %23 = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #3, !srcloc !12
  %24 = load ptr, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %10) #3
  br label %25

25:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ccu_frac_helper_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #3
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %17 = load i32, ptr %1, align 4
  %18 = or i32 %17, %16
  %19 = load ptr, ptr %0, align 4
  %20 = load i16, ptr %12, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %18) #3, !srcloc !12
  %23 = load ptr, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %10) #3
  br label %24

24:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ccu_frac_helper_has_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ccu_frac_internal, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr %struct.ccu_frac_internal, ptr %1, i32 0, i32 2, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %2
  br label %16

16:                                               ; preds = %12, %8, %3
  %17 = phi i1 [ false, %3 ], [ true, %8 ], [ %15, %12 ]
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ccu_frac_helper_read_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !15
  %14 = getelementptr inbounds %struct.ccu_frac_internal, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr %struct.ccu_frac_internal, ptr %1, i32 0, i32 2, i32 1
  %19 = getelementptr inbounds %struct.ccu_frac_internal, ptr %1, i32 0, i32 2
  %20 = select i1 %17, ptr %19, ptr %18
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %7, %2
  %23 = phi i32 [ %21, %7 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ccu_frac_helper_set_rate(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ccu_frac_internal, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr %struct.ccu_frac_internal, ptr %1, i32 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ccu_frac_internal, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %9
  %21 = phi i32 [ %19, %17 ], [ 0, %9 ]
  %22 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #3
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 1
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = getelementptr i8, ptr %25, i32 %28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !16
  %31 = getelementptr inbounds %struct.ccu_frac_internal, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %30, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %35 = or i32 %34, %21
  %36 = load ptr, ptr %0, align 4
  %37 = load i16, ptr %26, align 4
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %36, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %35) #3, !srcloc !12
  %40 = load ptr, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %24) #3
  tail call void @ccu_helper_wait_for_lock(ptr noundef %0, i32 noundef %3) #3
  br label %41

41:                                               ; preds = %20, %13, %4
  %42 = phi i32 [ 0, %20 ], [ -22, %4 ], [ -22, %13 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_helper_wait_for_lock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2843609}
!9 = !{i64 2150405788}
!10 = !{i64 2150408026}
!11 = !{i64 2150408234}
!12 = !{i64 2843191}
!13 = !{i64 2150410554}
!14 = !{i64 2150410761}
!15 = !{i64 2150415721}
!16 = !{i64 2150418747}
!17 = !{i64 2150418947}
