; ModuleID = '/llk/IR/lib/dec_and_lock.c_pt.bc'
source_filename = "../lib/dec_and_lock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__atomic_dec_and_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22_atomic_dec_and_lock\22\09\09\09\09\09"
module asm "__kstrtabns__atomic_dec_and_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__atomic_dec_and_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22_atomic_dec_and_lock_irqsave\22\09\09\09\09\09"
module asm "__kstrtabns__atomic_dec_and_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab__atomic_dec_and_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns__atomic_dec_and_lock = external dso_local constant [0 x i8], align 1
@__ksymtab__atomic_dec_and_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_atomic_dec_and_lock to i32), ptr @__kstrtab__atomic_dec_and_lock, ptr @__kstrtabns__atomic_dec_and_lock }, section "___ksymtab+_atomic_dec_and_lock", align 4
@__kstrtab__atomic_dec_and_lock_irqsave = external dso_local constant [0 x i8], align 1
@__kstrtabns__atomic_dec_and_lock_irqsave = external dso_local constant [0 x i8], align 1
@__ksymtab__atomic_dec_and_lock_irqsave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_atomic_dec_and_lock_irqsave to i32), ptr @__kstrtab__atomic_dec_and_lock_irqsave, ptr @__kstrtabns__atomic_dec_and_lock_irqsave }, section "___ksymtab+_atomic_dec_and_lock_irqsave", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab__atomic_dec_and_lock, ptr @__ksymtab__atomic_dec_and_lock_irqsave], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_atomic_dec_and_lock(ptr noundef %0, ptr noundef %1) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #2, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, i32 -1, ptr elementtype(i32) %0) #2, !srcloc !10
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !11
  br label %14

7:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef %1) #2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #2, !srcloc !9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #2, !srcloc !13
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !15
  %12 = load i16, ptr %1, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !18
  br label %14

14:                                               ; preds = %11, %7, %6
  %15 = phi i32 [ 0, %11 ], [ 1, %7 ], [ 0, %6 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_atomic_dec_and_lock_irqsave(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #2, !srcloc !9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, i32 -1, ptr elementtype(i32) %0) #2, !srcloc !10
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !11
  br label %15

8:                                                ; preds = %3
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #2
  store i32 %9, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #2, !srcloc !9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #2, !srcloc !13
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %14) #2
  br label %15

15:                                               ; preds = %13, %8, %7
  %16 = phi i32 [ 0, %13 ], [ 1, %8 ], [ 0, %7 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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
!8 = !{i64 2148152732}
!9 = !{i64 651839, i64 2148141810, i64 2148141836, i64 2148141883, i64 2148141905, i64 2148141933, i64 2148141953}
!10 = !{i64 638408, i64 638433, i64 638455, i64 638471, i64 638483, i64 638503, i64 638527, i64 638543, i64 638555}
!11 = !{i64 2148152858}
!12 = !{i64 2148253904}
!13 = !{i64 2148156266, i64 2148156298, i64 2148156327, i64 2148156361, i64 2148156392, i64 2148156415}
!14 = !{i64 2148254107}
!15 = !{i64 2148820443}
!16 = !{i64 2148816267}
!17 = !{i64 2148816342, i64 2148816369, i64 2148816416, i64 2148816438, i64 2148816466, i64 2148816486}
!18 = !{i64 2148843446}
