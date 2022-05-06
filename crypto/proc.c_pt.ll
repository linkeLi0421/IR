; ModuleID = '/llk/IR/crypto/proc.c_pt.bc'
source_filename = "../crypto/proc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.62, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.62 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"crypto\00", align 1
@crypto_seq_ops = internal constant %struct.seq_operations { ptr @c_start, ptr @c_stop, ptr @c_next, ptr @c_show }, align 4
@crypto_alg_sem = external dso_local global %struct.rw_semaphore, align 4
@crypto_alg_list = external dso_local global %struct.list_head, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"name         : %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"driver       : %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"module       : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"priority     : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"refcnt       : %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"selftest     : %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"passed\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"internal     : %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"type         : larval\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"flags        : 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"type         : cipher\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"blocksize    : %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"min keysize  : %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"max keysize  : %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"type         : compression\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"type         : unknown\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @crypto_exit_proc], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @crypto_init_proc() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @crypto_seq_ops, i32 noundef 0, ptr noundef null) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @crypto_exit_proc() #0 section ".exit.text" {
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef null) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @c_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  tail call void @down_read(ptr noundef nonnull @crypto_alg_sem) #3
  %3 = load i64, ptr %1, align 8
  %4 = tail call ptr @seq_list_start(ptr noundef nonnull @crypto_alg_list, i64 noundef %3) #3
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @c_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #2 {
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @c_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef nonnull @crypto_alg_list, ptr noundef %2) #3
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @c_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %3) #3
  %4 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %4) #3
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.module, ptr %6, i32 0, i32 2
  %9 = select i1 %7, ptr @.str.4, ptr %8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %9) #3
  %10 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %11) #3
  %12 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 7
  %13 = load volatile i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %13) #3
  %14 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 16
  %16 = and i32 %15, 1024
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, ptr @.str.9, ptr @.str.8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %18) #3
  %19 = load i32, ptr %14, align 16
  %20 = and i32 %19, 8192
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr @.str.12, ptr @.str.11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %22) #3
  %23 = load i32, ptr %14, align 16
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13) #3
  %27 = load i32, ptr %14, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %27) #3
  br label %48

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 10
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.crypto_type, ptr %30, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void %34(ptr noundef %0, ptr noundef %1) #3
  br label %48

37:                                               ; preds = %32, %28
  %38 = and i32 %23, 15
  switch i32 %38, label %47 [
    i32 1, label %39
    i32 2, label %46
  ]

39:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15) #3
  %40 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %41) #3
  %42 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 11
  %43 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %43) #3
  %44 = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 11, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %45) #3
  br label %48

46:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19) #3
  br label %48

47:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20) #3
  br label %48

48:                                               ; preds = %47, %46, %39, %36, %26
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
