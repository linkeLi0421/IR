; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu_reset.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_reset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_reset_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_reset_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_reset_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ccu_reset_map = type { i16, i32 }

@ccu_reset_ops = dso_local constant %struct.reset_control_ops { ptr @ccu_reset_reset, ptr @ccu_reset_assert, ptr @ccu_reset_deassert, ptr @ccu_reset_status }, align 4
@__kstrtab_ccu_reset_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_reset_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_reset_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_reset_ops to i32), ptr @__kstrtab_ccu_reset_ops, ptr @__kstrtabns_ccu_reset_ops }, section "___ksymtab_gpl+ccu_reset_ops", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_ccu_reset_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_reset_reset(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.ccu_reset_map, ptr %5, i32 %1
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #2
  %10 = load ptr, ptr %3, align 4
  %11 = load i16, ptr %6, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  %15 = getelementptr %struct.ccu_reset_map, ptr %5, i32 %1, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = load ptr, ptr %3, align 4
  %20 = load i16, ptr %6, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %18) #2, !srcloc !11
  %23 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %9) #2
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #2
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr %struct.ccu_reset_map, ptr %25, i32 %1
  %27 = load ptr, ptr %7, align 4
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #2
  %29 = load ptr, ptr %3, align 4
  %30 = load i16, ptr %26, align 4
  %31 = zext i16 %30 to i32
  %32 = getelementptr i8, ptr %29, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !13
  tail call void @arm_heavy_mb() #2
  %34 = getelementptr %struct.ccu_reset_map, ptr %25, i32 %1, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, %33
  %37 = load ptr, ptr %3, align 4
  %38 = load i16, ptr %26, align 4
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %37, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %36) #2, !srcloc !11
  %41 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %28) #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_reset_assert(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.ccu_reset_map, ptr %5, i32 %1
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #2
  %10 = load ptr, ptr %3, align 4
  %11 = load i16, ptr %6, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  %15 = getelementptr %struct.ccu_reset_map, ptr %5, i32 %1, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = load ptr, ptr %3, align 4
  %20 = load i16, ptr %6, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %18) #2, !srcloc !11
  %23 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %9) #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_reset_deassert(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.ccu_reset_map, ptr %5, i32 %1
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #2
  %10 = load ptr, ptr %3, align 4
  %11 = load i16, ptr %6, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !13
  tail call void @arm_heavy_mb() #2
  %15 = getelementptr %struct.ccu_reset_map, ptr %5, i32 %1, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, %14
  %18 = load ptr, ptr %3, align 4
  %19 = load i16, ptr %6, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #2, !srcloc !11
  %22 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %9) #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_reset_status(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.ccu_reset_map, ptr %5, i32 %1
  %7 = getelementptr %struct.ccu_reset_map, ptr %5, i32 %1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %3, align 4
  %10 = load i16, ptr %6, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !14
  %14 = and i32 %13, %8
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
!8 = !{i64 2383725}
!9 = !{i64 2149955739}
!10 = !{i64 2149955939}
!11 = !{i64 2383307}
!12 = !{i64 2149956788}
!13 = !{i64 2149956987}
!14 = !{i64 2149958026}
