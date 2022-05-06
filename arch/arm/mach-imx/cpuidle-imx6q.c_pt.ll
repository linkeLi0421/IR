; ModuleID = '/llk/IR/arch/arm/mach-imx/cpuidle-imx6q.c_pt.bc'
source_filename = "../arch/arm/mach-imx/cpuidle-imx6q.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx6q_cpuidle_fec_irqs_used:\09\09\09\09\09"
module asm "\09.asciz \09\22imx6q_cpuidle_fec_irqs_used\22\09\09\09\09\09"
module asm "__kstrtabns_imx6q_cpuidle_fec_irqs_used:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx6q_cpuidle_fec_irqs_unused:\09\09\09\09\09"
module asm "\09.asciz \09\22imx6q_cpuidle_fec_irqs_unused\22\09\09\09\09\09"
module asm "__kstrtabns_imx6q_cpuidle_fec_irqs_unused:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }

@__kstrtab_imx6q_cpuidle_fec_irqs_used = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx6q_cpuidle_fec_irqs_used = external dso_local constant [0 x i8], align 1
@__ksymtab_imx6q_cpuidle_fec_irqs_used = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx6q_cpuidle_fec_irqs_used to i32), ptr @__kstrtab_imx6q_cpuidle_fec_irqs_used, ptr @__kstrtabns_imx6q_cpuidle_fec_irqs_used }, section "___ksymtab_gpl+imx6q_cpuidle_fec_irqs_used", align 4
@__kstrtab_imx6q_cpuidle_fec_irqs_unused = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx6q_cpuidle_fec_irqs_unused = external dso_local constant [0 x i8], align 1
@__ksymtab_imx6q_cpuidle_fec_irqs_unused = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx6q_cpuidle_fec_irqs_unused to i32), ptr @__kstrtab_imx6q_cpuidle_fec_irqs_unused, ptr @__kstrtabns_imx6q_cpuidle_fec_irqs_unused }, section "___ksymtab_gpl+imx6q_cpuidle_fec_irqs_unused", align 4
@.str = private unnamed_addr constant [14 x i8] c"imx6q_cpuidle\00", align 1
@imx6q_cpuidle_driver = internal global { ptr, ptr, i8, [7 x i8], <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }>, i32, i32, ptr, ptr } { ptr @.str, ptr null, i8 0, [7 x i8] undef, <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }> <{ %struct.cpuidle_state { [16 x i8] c"WFI\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ARM WFI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 1, i32 -1, i32 1, ptr @arm_cpuidle_simple_enter, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"WAIT\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Clock off\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 68, i32 50, i32 0, i32 75, ptr @imx6q_enter_wait, ptr null, ptr null }, [8 x %struct.cpuidle_state] zeroinitializer }>, i32 2, i32 0, ptr null, ptr null }, align 8
@cpuidle_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@num_idle_cpus = internal unnamed_addr global i32 0, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_imx6q_cpuidle_fec_irqs_unused, ptr @__ksymtab_imx6q_cpuidle_fec_irqs_used], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx6q_cpuidle_fec_irqs_used() #0 {
  tail call void @cpuidle_driver_state_disabled(ptr noundef nonnull @imx6q_cpuidle_driver, i32 noundef 1, i1 noundef zeroext true) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_driver_state_disabled(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx6q_cpuidle_fec_irqs_unused() #0 {
  tail call void @cpuidle_driver_state_disabled(ptr noundef nonnull @imx6q_cpuidle_driver, i32 noundef 1, i1 noundef zeroext false) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @imx6q_cpuidle_init() local_unnamed_addr #2 section ".init.text" {
  tail call void @imx6_set_int_mem_clk_lpm(i1 noundef zeroext true) #3
  %1 = tail call i32 @cpuidle_register(ptr noundef nonnull @imx6q_cpuidle_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6_set_int_mem_clk_lpm(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_cpuidle_simple_enter(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx6q_enter_wait(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef returned %2) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpuidle_lock) #3
  %4 = load i32, ptr @num_idle_cpus, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr @num_idle_cpus, align 4
  %6 = load volatile i32, ptr @__num_online_cpus, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @imx6_set_lpm(i32 noundef 1) #3
  br label %10

10:                                               ; preds = %8, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %11 = load i16, ptr @cpuidle_lock, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr @cpuidle_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  tail call void @rcu_idle_enter() #3
  %13 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %14 = tail call i32 %13() #3
  tail call void @rcu_idle_exit() #3
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpuidle_lock) #3
  %15 = load i32, ptr @num_idle_cpus, align 4
  %16 = add i32 %15, -1
  store i32 %16, ptr @num_idle_cpus, align 4
  %17 = load volatile i32, ptr @__num_online_cpus, align 4
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = tail call i32 @imx6_set_lpm(i32 noundef 0) #3
  br label %21

21:                                               ; preds = %19, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %22 = load i16, ptr @cpuidle_lock, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr @cpuidle_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx6_set_lpm(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_idle_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_idle_exit() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2149073790}
!9 = !{i64 2149069614}
!10 = !{i64 2149069689, i64 2149069716, i64 2149069763, i64 2149069785, i64 2149069813, i64 2149069833}
!11 = !{i64 2149096793}
