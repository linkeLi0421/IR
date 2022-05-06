; ModuleID = '/llk/IR/lib/once.c_pt.bc'
source_filename = "../lib/once.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___do_once_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__do_once_start\22\09\09\09\09\09"
module asm "__kstrtabns___do_once_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___do_once_done:\09\09\09\09\09"
module asm "\09.asciz \09\22__do_once_done\22\09\09\09\09\09"
module asm "__kstrtabns___do_once_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.once_work = type { %struct.work_struct, ptr, ptr }

@once_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab___do_once_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___do_once_start = external dso_local constant [0 x i8], align 1
@__ksymtab___do_once_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__do_once_start to i32), ptr @__kstrtab___do_once_start, ptr @__kstrtabns___do_once_start }, section "___ksymtab+__do_once_start", align 4
@__kstrtab___do_once_done = external dso_local constant [0 x i8], align 1
@__kstrtabns___do_once_done = external dso_local constant [0 x i8], align 1
@__ksymtab___do_once_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__do_once_done to i32), ptr @__kstrtab___do_once_done, ptr @__kstrtabns___do_once_done }, section "___ksymtab+__do_once_done", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@static_key_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab___do_once_done, ptr @__ksymtab___do_once_start], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__do_once_start(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @once_lock) #3
  store i32 %3, ptr %1, align 4
  %4 = load i8, ptr %0, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @once_lock, i32 noundef %3) #3
  br label %7

7:                                                ; preds = %6, %2
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__do_once_done(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  store i8 1, ptr %0, align 1
  %5 = load i32, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @once_lock, i32 noundef %5) #3
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2592, i32 noundef 24) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  store i32 -32, ptr %7, align 8
  %10 = getelementptr inbounds %struct.work_struct, ptr %7, i32 0, i32 1
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.work_struct, ptr %7, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.work_struct, ptr %7, i32 0, i32 2
  store ptr @once_deferred, ptr %12, align 4
  %13 = getelementptr inbounds %struct.once_work, ptr %7, i32 0, i32 1
  store ptr %1, ptr %13, align 8
  %14 = getelementptr inbounds %struct.once_work, ptr %7, i32 0, i32 2
  store ptr %3, ptr %14, align 4
  tail call void @__module_get(ptr noundef %3) #3
  %15 = load ptr, ptr @system_wq, align 4
  %16 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %15, ptr noundef nonnull %7) #3
  br label %17

17:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @once_deferred(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.once_work, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/once.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 19, 0\0A.popsection", ""() #3, !srcloc !10
  unreachable

7:                                                ; preds = %1
  %8 = load i8, ptr @static_key_initialized, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.static_key_disable, ptr noundef %3) #3
  br label %11

11:                                               ; preds = %10, %7
  %12 = load volatile i32, ptr %3, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load volatile i32, ptr %3, align 4
  %16 = icmp ne i32 %15, 0
  %17 = load i1, ptr @static_key_disable.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %22, !prof !9

20:                                               ; preds = %14
  store i1 true, ptr @static_key_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 332, i32 noundef 9, ptr noundef null) #3
  br label %22

21:                                               ; preds = %11
  store volatile i32 0, ptr %3, align 4
  br label %22

22:                                               ; preds = %21, %20, %14
  %23 = getelementptr inbounds %struct.once_work, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  tail call void @module_put(ptr noundef %24) #3
  tail call void @kfree(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
!10 = !{i64 2150510697, i64 2150511171, i64 2150510734, i64 2150510790, i64 2150510824, i64 2150510848, i64 2150510889, i64 2150510910, i64 2150510938, i64 2150510972}
