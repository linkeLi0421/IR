; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu_mmc_timing.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_mmc_timing.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunxi_ccu_set_mmc_timing_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22sunxi_ccu_set_mmc_timing_mode\22\09\09\09\09\09"
module asm "__kstrtabns_sunxi_ccu_set_mmc_timing_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunxi_ccu_get_mmc_timing_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22sunxi_ccu_get_mmc_timing_mode\22\09\09\09\09\09"
module asm "__kstrtabns_sunxi_ccu_get_mmc_timing_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_sunxi_ccu_set_mmc_timing_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunxi_ccu_set_mmc_timing_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_sunxi_ccu_set_mmc_timing_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunxi_ccu_set_mmc_timing_mode to i32), ptr @__kstrtab_sunxi_ccu_set_mmc_timing_mode, ptr @__kstrtabns_sunxi_ccu_set_mmc_timing_mode }, section "___ksymtab_gpl+sunxi_ccu_set_mmc_timing_mode", align 4
@__kstrtab_sunxi_ccu_get_mmc_timing_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunxi_ccu_get_mmc_timing_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_sunxi_ccu_get_mmc_timing_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunxi_ccu_get_mmc_timing_mode to i32), ptr @__kstrtab_sunxi_ccu_get_mmc_timing_mode, ptr @__kstrtabns_sunxi_ccu_get_mmc_timing_mode }, section "___ksymtab_gpl+sunxi_ccu_get_mmc_timing_mode", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_sunxi_ccu_get_mmc_timing_mode, ptr @__ksymtab_sunxi_ccu_set_mmc_timing_mode], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sunxi_ccu_set_mmc_timing_mode(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = tail call ptr @__clk_get_hw(ptr noundef %0) #2
  %4 = getelementptr i8, ptr %3, i32 -8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %3, i32 -20
  %10 = getelementptr i8, ptr %3, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #2
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr i8, ptr %3, i32 -16
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr i8, ptr %13, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %19 = and i32 %18, -1073741825
  %20 = select i1 %1, i32 1073741824, i32 0
  %21 = or i32 %19, %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  %22 = load ptr, ptr %9, align 4
  %23 = load i16, ptr %14, align 4
  %24 = zext i16 %23 to i32
  %25 = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #2, !srcloc !11
  %26 = load ptr, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %12) #2
  br label %27

27:                                               ; preds = %8, %2
  %28 = phi i32 [ 0, %8 ], [ -524, %2 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sunxi_ccu_get_mmc_timing_mode(ptr noundef %0) #0 {
  %2 = tail call ptr @__clk_get_hw(ptr noundef %0) #2
  %3 = getelementptr i8, ptr %2, i32 -8
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %2, i32 -20
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %2, i32 -16
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  %15 = lshr i32 %14, 30
  %16 = and i32 %15, 1
  br label %17

17:                                               ; preds = %7, %1
  %18 = phi i32 [ %16, %7 ], [ -524, %1 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

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
!8 = !{i64 2842527}
!9 = !{i64 2150403896}
!10 = !{i64 2150404250}
!11 = !{i64 2842109}
!12 = !{i64 2150406336}
