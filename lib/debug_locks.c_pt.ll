; ModuleID = '/llk/IR/lib/debug_locks.c_pt.bc'
source_filename = "../lib/debug_locks.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debug_locks:\09\09\09\09\09"
module asm "\09.asciz \09\22debug_locks\22\09\09\09\09\09"
module asm "__kstrtabns_debug_locks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debug_locks_silent:\09\09\09\09\09"
module asm "\09.asciz \09\22debug_locks_silent\22\09\09\09\09\09"
module asm "__kstrtabns_debug_locks_silent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debug_locks_off:\09\09\09\09\09"
module asm "\09.asciz \09\22debug_locks_off\22\09\09\09\09\09"
module asm "__kstrtabns_debug_locks_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@debug_locks = dso_local global i32 1, section ".data..read_mostly", align 4
@__kstrtab_debug_locks = external dso_local constant [0 x i8], align 1
@__kstrtabns_debug_locks = external dso_local constant [0 x i8], align 1
@__ksymtab_debug_locks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debug_locks to i32), ptr @__kstrtab_debug_locks, ptr @__kstrtabns_debug_locks }, section "___ksymtab_gpl+debug_locks", align 4
@debug_locks_silent = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_debug_locks_silent = external dso_local constant [0 x i8], align 1
@__kstrtabns_debug_locks_silent = external dso_local constant [0 x i8], align 1
@__ksymtab_debug_locks_silent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debug_locks_silent to i32), ptr @__kstrtab_debug_locks_silent, ptr @__kstrtabns_debug_locks_silent }, section "___ksymtab_gpl+debug_locks_silent", align 4
@__kstrtab_debug_locks_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_debug_locks_off = external dso_local constant [0 x i8], align 1
@__ksymtab_debug_locks_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debug_locks_off to i32), ptr @__kstrtab_debug_locks_off, ptr @__kstrtabns_debug_locks_off }, section "___ksymtab_gpl+debug_locks_off", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_debug_locks, ptr @__ksymtab_debug_locks_off, ptr @__ksymtab_debug_locks_silent], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @debug_locks_off() #0 {
  %1 = load i32, ptr @debug_locks, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @debug_locks) #2, !srcloc !9
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @debug_locks) #2, !srcloc !10
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !11
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @debug_locks_silent, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @console_verbose() #2
  br label %11

11:                                               ; preds = %10, %3, %0
  %12 = phi i32 [ 1, %10 ], [ 0, %3 ], [ 0, %0 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_verbose() local_unnamed_addr #1

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
!8 = !{i64 2148892685}
!9 = !{i64 659314, i64 2148149285, i64 2148149311, i64 2148149358, i64 2148149380, i64 2148149408, i64 2148149428}
!10 = !{i64 667964, i64 667981, i64 668005, i64 668031, i64 668049}
!11 = !{i64 2148893002}
