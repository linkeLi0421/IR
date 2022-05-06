; ModuleID = '/llk/IR/kernel/trace/trace_clock.c_pt.bc'
source_filename = "../kernel/trace/trace_clock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_clock_local:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_clock_local\22\09\09\09\09\09"
module asm "__kstrtabns_trace_clock_local:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_clock\22\09\09\09\09\09"
module asm "__kstrtabns_trace_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_clock_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_clock_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_trace_clock_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_clock_global:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_clock_global\22\09\09\09\09\09"
module asm "__kstrtabns_trace_clock_global:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.37 = type { i64, %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_trace_clock_local = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_clock_local = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_clock_local = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_clock_local to i32), ptr @__kstrtab_trace_clock_local, ptr @__kstrtabns_trace_clock_local }, section "___ksymtab_gpl+trace_clock_local", align 4
@__kstrtab_trace_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_clock to i32), ptr @__kstrtab_trace_clock, ptr @__kstrtabns_trace_clock }, section "___ksymtab_gpl+trace_clock", align 4
@jiffies_64 = external dso_local local_unnamed_addr global i64, section ".data..cacheline_aligned", align 64
@__kstrtab_trace_clock_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_clock_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_clock_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_clock_jiffies to i32), ptr @__kstrtab_trace_clock_jiffies, ptr @__kstrtabns_trace_clock_jiffies }, section "___ksymtab_gpl+trace_clock_jiffies", align 4
@trace_clock_struct = internal global %struct.anon.37 zeroinitializer, align 64
@__kstrtab_trace_clock_global = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_clock_global = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_clock_global = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_clock_global to i32), ptr @__kstrtab_trace_clock_global, ptr @__kstrtabns_trace_clock_global }, section "___ksymtab_gpl+trace_clock_global", align 4
@trace_counter = internal global %struct.atomic64_t zeroinitializer, align 8
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_trace_clock, ptr @__ksymtab_trace_clock_global, ptr @__ksymtab_trace_clock_jiffies, ptr @__ksymtab_trace_clock_local], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @trace_clock_local() #0 {
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !8
  %1 = tail call i64 @sched_clock() #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !9
  ret i64 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @trace_clock() #0 {
  %1 = tail call i64 @sched_clock() #3
  ret i64 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @trace_clock_jiffies() #0 {
  %1 = load i64, ptr @jiffies_64, align 64
  %2 = add i64 %1, -4294937296
  %3 = tail call i64 @jiffies_64_to_clock_t(i64 noundef %2) #3
  ret i64 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @jiffies_64_to_clock_t(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @trace_clock_global() #0 {
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #3, !srcloc !10
  %2 = tail call ptr @llvm.thread.pointer() #3
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  %5 = load volatile i64, ptr @trace_clock_struct, align 64
  %6 = tail call i64 @sched_clock_cpu(i32 noundef %4) #3
  %7 = sub i64 %6, %5
  %8 = icmp slt i64 %7, 0
  %9 = select i1 %8, i64 %5, i64 %6
  %10 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 15728640
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29, !prof !12

14:                                               ; preds = %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.anon.37, ptr @trace_clock_struct, i32 0, i32 1)) #3, !srcloc !13
  br label %15

15:                                               ; preds = %15, %14
  %16 = tail call { i32, i32, i32 } asm sideeffect "\09ldrex\09$0, [$3]\0A\09mov\09$2, #0\0A\09subs\09$1, $0, $0, ror #16\0A\09addeq\09$0, $0, $4\0A\09strexeq\09$2, $0, [$3]", "=&r,=&r,=&r,r,I,~{cc}"(ptr getelementptr inbounds (%struct.anon.37, ptr @trace_clock_struct, i32 0, i32 1), i32 65536) #3, !srcloc !14
  %17 = extractvalue { i32, i32, i32 } %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = extractvalue { i32, i32, i32 } %16, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !15
  %23 = load volatile i64, ptr @trace_clock_struct, align 64
  %24 = sub i64 %9, %23
  %25 = icmp slt i64 %24, 0
  %26 = select i1 %25, i64 %23, i64 %9
  store i64 %26, ptr @trace_clock_struct, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !16
  %27 = load i16, ptr getelementptr inbounds (%struct.anon.37, ptr @trace_clock_struct, i32 0, i32 1), align 8
  %28 = add i16 %27, 1
  store i16 %28, ptr getelementptr inbounds (%struct.anon.37, ptr @trace_clock_struct, i32 0, i32 1), align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !18
  br label %29

29:                                               ; preds = %22, %19, %0
  %30 = phi i64 [ %9, %0 ], [ %26, %22 ], [ %9, %19 ]
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #3, !srcloc !19
  ret i64 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock_cpu(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @trace_clock_counter() local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @trace_counter) #3, !srcloc !13
  %1 = tail call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @trace_counter, ptr nonnull @trace_counter, i64 1, ptr nonnull elementtype(i64) @trace_counter) #3, !srcloc !21
  %2 = extractvalue { i64, i32 } %1, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !22
  ret i64 %2
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{i64 2151167205}
!9 = !{i64 2151167253}
!10 = !{i64 560589, i64 560650}
!11 = !{i64 2151171734}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 654911, i64 2148144882, i64 2148144908, i64 2148144955, i64 2148144977, i64 2148145005, i64 2148145025}
!14 = !{i64 1331971, i64 1331994, i64 1332012, i64 1332044, i64 1332068}
!15 = !{i64 2148823220}
!16 = !{i64 2148823515}
!17 = !{i64 2148819339}
!18 = !{i64 2148819414, i64 2148819441, i64 2148819488, i64 2148819510, i64 2148819538, i64 2148819558}
!19 = !{i64 563606}
!20 = !{i64 2148293615}
!21 = !{i64 2148168280, i64 2148168314, i64 2148168348, i64 2148168382, i64 2148168416, i64 2148168452, i64 2148168475}
!22 = !{i64 2148293820}
