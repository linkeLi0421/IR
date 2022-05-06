; ModuleID = '/llk/IR/kernel/cpu_pm.c_pt.bc'
source_filename = "../kernel/cpu_pm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_pm_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_pm_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_pm_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_pm_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_pm_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_pm_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_pm_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_pm_enter\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_pm_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_pm_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_pm_exit\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_pm_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_cluster_pm_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_cluster_pm_enter\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_cluster_pm_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_cluster_pm_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_cluster_pm_exit\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_cluster_pm_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.anon = type { %struct.raw_notifier_head, %struct.raw_spinlock }
%struct.raw_notifier_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@cpu_pm_notifier = internal global %struct.anon zeroinitializer, align 4
@__kstrtab_cpu_pm_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_pm_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_pm_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_pm_register_notifier to i32), ptr @__kstrtab_cpu_pm_register_notifier, ptr @__kstrtabns_cpu_pm_register_notifier }, section "___ksymtab_gpl+cpu_pm_register_notifier", align 4
@__kstrtab_cpu_pm_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_pm_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_pm_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_pm_unregister_notifier to i32), ptr @__kstrtab_cpu_pm_unregister_notifier, ptr @__kstrtabns_cpu_pm_unregister_notifier }, section "___ksymtab_gpl+cpu_pm_unregister_notifier", align 4
@__kstrtab_cpu_pm_enter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_pm_enter = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_pm_enter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_pm_enter to i32), ptr @__kstrtab_cpu_pm_enter, ptr @__kstrtabns_cpu_pm_enter }, section "___ksymtab_gpl+cpu_pm_enter", align 4
@__kstrtab_cpu_pm_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_pm_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_pm_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_pm_exit to i32), ptr @__kstrtab_cpu_pm_exit, ptr @__kstrtabns_cpu_pm_exit }, section "___ksymtab_gpl+cpu_pm_exit", align 4
@__kstrtab_cpu_cluster_pm_enter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_cluster_pm_enter = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_cluster_pm_enter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_cluster_pm_enter to i32), ptr @__kstrtab_cpu_cluster_pm_enter, ptr @__kstrtabns_cpu_cluster_pm_enter }, section "___ksymtab_gpl+cpu_cluster_pm_enter", align 4
@__kstrtab_cpu_cluster_pm_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_cluster_pm_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_cluster_pm_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_cluster_pm_exit to i32), ptr @__kstrtab_cpu_cluster_pm_exit, ptr @__kstrtabns_cpu_cluster_pm_exit }, section "___ksymtab_gpl+cpu_cluster_pm_exit", align 4
@__initcall__kmod_cpu_pm__100_213_cpu_pm_init1 = internal global ptr @cpu_pm_init, section ".initcall1.init", align 4
@cpu_pm_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @cpu_pm_suspend, ptr @cpu_pm_resume, ptr null }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__initcall__kmod_cpu_pm__100_213_cpu_pm_init1, ptr @__ksymtab_cpu_cluster_pm_enter, ptr @__ksymtab_cpu_cluster_pm_exit, ptr @__ksymtab_cpu_pm_enter, ptr @__ksymtab_cpu_pm_exit, ptr @__ksymtab_cpu_pm_register_notifier, ptr @__ksymtab_cpu_pm_unregister_notifier], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpu_pm_register_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1)) #2
  %3 = tail call i32 @raw_notifier_chain_register(ptr noundef nonnull @cpu_pm_notifier, ptr noundef %0) #2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1), i32 noundef %2) #2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpu_pm_unregister_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1)) #2
  %3 = tail call i32 @raw_notifier_chain_unregister(ptr noundef nonnull @cpu_pm_notifier, ptr noundef %0) #2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1), i32 noundef %2) #2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpu_pm_enter() #0 {
  tail call void @rcu_irq_enter_irqson() #2
  %1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1)) #2
  %2 = tail call i32 @raw_notifier_call_chain_robust(ptr noundef nonnull @cpu_pm_notifier, i32 noundef 0, i32 noundef 1, ptr noundef null) #2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1), i32 noundef %1) #2
  tail call void @rcu_irq_exit_irqson() #2
  %3 = and i32 %2, -32769
  %4 = icmp sgt i32 %3, 1
  %5 = sub i32 1, %3
  %6 = select i1 %4, i32 %5, i32 0
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpu_pm_exit() #0 {
  tail call void @rcu_irq_enter_irqson() #2
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !8
  %1 = tail call i32 @raw_notifier_call_chain(ptr noundef nonnull @cpu_pm_notifier, i32 noundef 2, ptr noundef null) #2
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !9
  tail call void @rcu_irq_exit_irqson() #2
  %2 = and i32 %1, -32769
  %3 = icmp sgt i32 %2, 1
  %4 = sub i32 1, %2
  %5 = select i1 %3, i32 %4, i32 0
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpu_cluster_pm_enter() #0 {
  tail call void @rcu_irq_enter_irqson() #2
  %1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1)) #2
  %2 = tail call i32 @raw_notifier_call_chain_robust(ptr noundef nonnull @cpu_pm_notifier, i32 noundef 3, i32 noundef 4, ptr noundef null) #2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1), i32 noundef %1) #2
  tail call void @rcu_irq_exit_irqson() #2
  %3 = and i32 %2, -32769
  %4 = icmp sgt i32 %3, 1
  %5 = sub i32 1, %3
  %6 = select i1 %4, i32 %5, i32 0
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpu_cluster_pm_exit() #0 {
  tail call void @rcu_irq_enter_irqson() #2
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !8
  %1 = tail call i32 @raw_notifier_call_chain(ptr noundef nonnull @cpu_pm_notifier, i32 noundef 5, ptr noundef null) #2
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !9
  tail call void @rcu_irq_exit_irqson() #2
  %2 = and i32 %1, -32769
  %3 = icmp sgt i32 %2, 1
  %4 = sub i32 1, %2
  %5 = select i1 %3, i32 %4, i32 0
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_pm_init() #0 {
  tail call void @register_syscore_ops(ptr noundef nonnull @cpu_pm_syscore_ops) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain_robust(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_pm_suspend() #0 {
  tail call void @rcu_irq_enter_irqson() #2
  %1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1)) #2
  %2 = tail call i32 @raw_notifier_call_chain_robust(ptr noundef nonnull @cpu_pm_notifier, i32 noundef 0, i32 noundef 1, ptr noundef null) #2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1), i32 noundef %1) #2
  tail call void @rcu_irq_exit_irqson() #2
  %3 = and i32 %2, -32769
  %4 = icmp sgt i32 %3, 1
  %5 = sub i32 1, %3
  %6 = select i1 %4, i32 %5, i32 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  tail call void @rcu_irq_enter_irqson() #2
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1)) #2
  %10 = tail call i32 @raw_notifier_call_chain_robust(ptr noundef nonnull @cpu_pm_notifier, i32 noundef 3, i32 noundef 4, ptr noundef null) #2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.anon, ptr @cpu_pm_notifier, i32 0, i32 1), i32 noundef %9) #2
  tail call void @rcu_irq_exit_irqson() #2
  %11 = and i32 %10, -32769
  %12 = icmp sgt i32 %11, 1
  %13 = sub i32 1, %11
  %14 = select i1 %12, i32 %13, i32 0
  br label %15

15:                                               ; preds = %8, %0
  %16 = phi i32 [ %14, %8 ], [ %6, %0 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpu_pm_resume() #0 {
  tail call void @rcu_irq_enter_irqson() #2
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !8
  %1 = tail call i32 @raw_notifier_call_chain(ptr noundef nonnull @cpu_pm_notifier, i32 noundef 5, ptr noundef null) #2
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !9
  tail call void @rcu_irq_exit_irqson() #2
  tail call void @rcu_irq_enter_irqson() #2
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !8
  %2 = tail call i32 @raw_notifier_call_chain(ptr noundef nonnull @cpu_pm_notifier, i32 noundef 2, ptr noundef null) #2
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !9
  tail call void @rcu_irq_exit_irqson() #2
  ret void
}

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
!8 = !{i64 2148954280}
!9 = !{i64 2148954497}
