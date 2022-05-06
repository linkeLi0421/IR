; ModuleID = '/llk/IR/kernel/sched/clock.c_pt.bc'
source_filename = "../kernel/sched/clock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_clock\22\09\09\09\09\09"
module asm "__kstrtabns_sched_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_sched_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_clock to i32), ptr @__kstrtab_sched_clock, ptr @__kstrtabns_sched_clock }, section "___ksymtab_gpl+sched_clock", align 4
@sched_clock_running = internal global %struct.static_key_false zeroinitializer, align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_slow_inc = private unnamed_addr constant [20 x i8] c"static_key_slow_inc\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_sched_clock], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i64 @sched_clock() #0 {
  %1 = load volatile i32, ptr @jiffies, align 64
  %2 = add i32 %1, 30000
  %3 = zext i32 %2 to i64
  %4 = mul nuw nsw i64 %3, 10000000
  ret i64 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @sched_clock_init() local_unnamed_addr #1 section ".init.text" {
  %1 = load i8, ptr @static_key_initialized, align 1, !range !8
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !9

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @sched_clock_running) #3
  br label %4

4:                                                ; preds = %3, %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @sched_clock_running) #3, !srcloc !10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @sched_clock_running, ptr nonnull @sched_clock_running, i32 1, ptr nonnull elementtype(i32) @sched_clock_running) #3, !srcloc !11
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #3, !srcloc !12
  tail call void @generic_sched_clock_init() #3
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #3, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_sched_clock_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @sched_clock_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr @sched_clock_running, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %6, !prof !14

4:                                                ; preds = %1
  %5 = tail call i64 @sched_clock()
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i64 [ %5, %4 ], [ 0, %1 ]
  ret i64 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i64 @running_clock() local_unnamed_addr #0 {
  %1 = tail call i64 @sched_clock() #3
  ret i64 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 610003, i64 2148111569, i64 2148111595, i64 2148111642, i64 2148111664, i64 2148111692, i64 2148111712}
!11 = !{i64 2148174831, i64 2148174857, i64 2148174886, i64 2148174920, i64 2148174951, i64 2148174974}
!12 = !{i64 639185}
!13 = !{i64 638995}
!14 = !{!"branch_weights", i32 2000, i32 1}
