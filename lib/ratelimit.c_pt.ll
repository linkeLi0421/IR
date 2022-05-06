; ModuleID = '/llk/IR/lib/ratelimit.c_pt.bc'
source_filename = "../lib/ratelimit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab____ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22___ratelimit\22\09\09\09\09\09"
module asm "__kstrtabns____ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [31 x i8] c"\014%s: %d callbacks suppressed\0A\00", align 1
@__kstrtab____ratelimit = external dso_local constant [0 x i8], align 1
@__kstrtabns____ratelimit = external dso_local constant [0 x i8], align 1
@__ksymtab____ratelimit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @___ratelimit to i32), ptr @__kstrtab____ratelimit, ptr @__kstrtabns____ratelimit }, section "___ksymtab+___ratelimit", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab____ratelimit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @___ratelimit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ratelimit_state, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %54, label %6

6:                                                ; preds = %2
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #3, !srcloc !8
  %8 = tail call i32 @_raw_spin_trylock(ptr noundef %0) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #3, !srcloc !9
  br label %54

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ratelimit_state, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load volatile i32, ptr @jiffies, align 64
  store i32 %16, ptr %12, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %16, %15 ], [ %13, %11 ]
  %19 = load i32, ptr %3, align 4
  %20 = add i32 %19, %18
  %21 = load volatile i32, ptr @jiffies, align 64
  %22 = sub i32 %20, %21
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ratelimit_state, ptr %0, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ratelimit_state, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str, ptr noundef %1, i32 noundef %26) #4
  store i32 0, ptr %25, align 4
  br label %35

35:                                               ; preds = %33, %28, %24
  %36 = load volatile i32, ptr @jiffies, align 64
  store i32 %36, ptr %12, align 4
  %37 = getelementptr inbounds %struct.ratelimit_state, ptr %0, i32 0, i32 3
  store i32 0, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %17
  %39 = getelementptr inbounds %struct.ratelimit_state, ptr %0, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ratelimit_state, ptr %0, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %40, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %42, %38
  %47 = getelementptr inbounds %struct.ratelimit_state, ptr %0, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi i32 [ %48, %46 ], [ %44, %42 ]
  %51 = phi ptr [ %47, %46 ], [ %43, %42 ]
  %52 = phi i32 [ 0, %46 ], [ 1, %42 ]
  %53 = add i32 %50, 1
  store i32 %53, ptr %51, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %7) #3
  br label %54

54:                                               ; preds = %49, %10, %2
  %55 = phi i32 [ %52, %49 ], [ 0, %10 ], [ 1, %2 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 558218, i64 558279}
!9 = !{i64 561235}
