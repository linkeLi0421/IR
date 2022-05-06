; ModuleID = '/llk/IR/arch/arm/kernel/reboot.c_pt.bc'
source_filename = "../arch/arm/kernel/reboot.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_power_off:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_power_off\22\09\09\09\09\09"
module asm "__kstrtabns_pm_power_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }

@pm_power_off = dso_local global ptr null, align 4
@__kstrtab_pm_power_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_power_off = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_power_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_power_off to i32), ptr @__kstrtab_pm_power_off, ptr @__kstrtabns_pm_power_off }, section "___ksymtab+pm_power_off", align 4
@soft_restart_stack = internal global [16 x i64] zeroinitializer, align 8
@reboot_cpu = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [32 x i8] c"Reboot failed -- System halted\0A\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@arch_phys_to_idmap_offset = external dso_local local_unnamed_addr global i64, align 8
@__boot_cpu_mode = external dso_local local_unnamed_addr global i32, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_pm_power_off], section "llvm.metadata"

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_soft_restart(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #4, !srcloc !8
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #4, !srcloc !9
  br i1 %1, label %3, label %4

3:                                                ; preds = %2
  tail call void @outer_disable() #4
  br label %4

4:                                                ; preds = %3, %2
  %5 = inttoptr i32 %0 to ptr
  tail call void @call_with_stack(ptr noundef nonnull @__soft_restart, ptr noundef %5, ptr noundef getelementptr inbounds ([16 x i64], ptr @soft_restart_stack, i32 1, i32 0)) #4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/reboot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #4, !srcloc !10
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @outer_disable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_with_stack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__soft_restart(ptr noundef %0) #0 {
  tail call void @setup_mm_for_reboot() #4
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %2() #4
  %3 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 4), align 4
  tail call void %3() #4
  %4 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %4() #4
  %5 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 5), align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %6, i32 -2130706432, i32 8454144) #5, !srcloc !11
  %8 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %9 = trunc i64 %8 to i32
  %10 = add i32 %7, %9
  %11 = inttoptr i32 %10 to ptr
  %12 = ptrtoint ptr %0 to i32
  %13 = load i32, ptr @__boot_cpu_mode, align 4
  %14 = and i32 %13, -2147483617
  %15 = icmp eq i32 %14, 26
  tail call void %11(i32 noundef %12, i1 noundef zeroext %15) #4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/reboot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 56, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @soft_restart(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  %3 = icmp eq i32 %2, 1
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #4, !srcloc !8
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #4, !srcloc !9
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @outer_disable() #4
  br label %5

5:                                                ; preds = %4, %1
  %6 = inttoptr i32 %0 to ptr
  tail call void @call_with_stack(ptr noundef nonnull @__soft_restart, ptr noundef %6, ptr noundef getelementptr inbounds ([16 x i64], ptr @soft_restart_stack, i32 1, i32 0)) #4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/reboot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #4, !srcloc !10
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @machine_shutdown() local_unnamed_addr #2 {
  %1 = load i32, ptr @reboot_cpu, align 4
  tail call void @smp_shutdown_nonboot_cpus(i32 noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_shutdown_nonboot_cpus(i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @machine_halt() local_unnamed_addr #0 {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #4, !srcloc !8
  tail call void @smp_send_stop() #4
  br label %1

1:                                                ; preds = %1, %0
  br label %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_send_stop() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @machine_power_off() local_unnamed_addr #2 {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #4, !srcloc !8
  tail call void @smp_send_stop() #4
  %1 = load ptr, ptr @pm_power_off, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #4
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @machine_restart(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #4, !srcloc !8
  tail call void @smp_send_stop() #4
  tail call void @do_kernel_restart(ptr noundef %0) #4
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 1000, %1 ], [ %4, %2 ]
  %4 = add nsw i32 %3, -1
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #4
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %9

9:                                                ; preds = %9, %7
  br label %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_kernel_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_mm_for_reboot() local_unnamed_addr #1

attributes #0 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
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
!8 = !{i64 616336}
!9 = !{i64 2152483045}
!10 = !{i64 2152483264, i64 2152483752, i64 2152483301, i64 2152483357, i64 2152483391, i64 2152483415, i64 2152483456, i64 2152483477, i64 2152483505, i64 2152483539}
!11 = !{i64 2148782633, i64 2148782656, i64 2148782688, i64 2148782720, i64 2148782758, i64 2148782788}
!12 = !{i64 2152481802, i64 2152482290, i64 2152481839, i64 2152481895, i64 2152481929, i64 2152481953, i64 2152481994, i64 2152482015, i64 2152482043, i64 2152482077}
