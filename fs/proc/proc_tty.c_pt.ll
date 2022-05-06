; ModuleID = '/llk/IR/fs/proc/proc_tty.c_pt.bc'
source_filename = "../fs/proc/proc_tty.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, ptr, ptr, %union.anon.65, ptr, %union.anon.66, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, ptr, %struct.rb_root, %struct.rb_node, ptr, i16, i8, i8, [0 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%union.anon.65 = type { ptr }
%union.anon.66 = type { ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.rb_node = type { i32, ptr, ptr }

@proc_tty_driver = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"tty/ldisc\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"tty/driver\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"tty/ldiscs\00", align 1
@tty_ldiscs_seq_ops = external dso_local constant %struct.seq_operations, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"tty/drivers\00", align 1
@tty_drivers_op = internal constant %struct.seq_operations { ptr @t_start, ptr @t_stop, ptr @t_next, ptr @show_tty_driver }, align 4
@tty_mutex = external dso_local global %struct.mutex, align 4
@tty_drivers = external dso_local global %struct.list_head, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"%-20s /dev/%-8s \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%3d %7d \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"system:/dev/tty\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"/dev/console\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"system:console\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"/dev/ptmx\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"ptmx\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"system\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"/dev/vc/0\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"vc/0\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"system:vtmaster\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%-20s \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"/dev/%-8s \00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"%3d %d-%d \00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c":/dev/tty\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c":console\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c":vtmaster\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"pty:master\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"pty:slave\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"pty\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"type:%d.%d\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @proc_tty_register_driver(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tty_operations, ptr %11, i32 0, i32 32
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr @proc_tty_driver, align 4
  %17 = tail call ptr @proc_create_single_data(ptr noundef nonnull %3, i16 noundef zeroext 0, ptr noundef %16, ptr noundef nonnull %13, ptr noundef %0) #3
  store ptr %17, ptr %6, align 4
  br label %18

18:                                               ; preds = %15, %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @proc_tty_unregister_driver(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr @proc_tty_driver, align 4
  tail call void @remove_proc_entry(ptr noundef %7, ptr noundef %8) #3
  store ptr null, ptr %2, align 4
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @proc_tty_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str, ptr noundef null) #3
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.1, ptr noundef null) #3
  %5 = tail call ptr @proc_mkdir_mode(ptr noundef nonnull @.str.2, i16 noundef zeroext 320, ptr noundef null) #3
  store ptr %5, ptr @proc_tty_driver, align 4
  %6 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.3, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @tty_ldiscs_seq_ops, i32 noundef 0, ptr noundef null) #3
  %7 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.4, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @tty_drivers_op, i32 noundef 0, ptr noundef null) #3
  br label %8

8:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir_mode(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @t_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @tty_mutex) #3
  %3 = load i64, ptr %1, align 8
  %4 = tail call ptr @seq_list_start(ptr noundef nonnull @tty_drivers, i64 noundef %3) #3
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @t_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @tty_mutex) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @t_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef nonnull @tty_drivers, ptr noundef %2) #3
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_tty_driver(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -120
  %4 = getelementptr i8, ptr %1, i32 -92
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 20
  %7 = getelementptr i8, ptr %1, i32 -88
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %6, %8
  %10 = getelementptr i8, ptr %1, i32 -84
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %9, %11
  %13 = load ptr, ptr @tty_drivers, align 4
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str) #3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 5, i32 noundef 0) #3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.8) #3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 5, i32 noundef 1) #3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.11) #3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 5, i32 noundef 2) #3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.14) #3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef 4, i32 noundef 0) #3
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.17) #3
  br label %16

16:                                               ; preds = %15, %2
  %17 = lshr i32 %12, 20
  %18 = lshr i32 %9, 20
  %19 = icmp ult i32 %18, %17
  br i1 %19, label %20, label %27

20:                                               ; preds = %20, %16
  %21 = phi i32 [ %23, %20 ], [ %9, %16 ]
  %22 = add i32 %21, 1048576
  %23 = and i32 %22, -1048576
  %24 = sub i32 %23, %21
  tail call fastcc void @show_tty_range(ptr noundef %0, ptr noundef %3, i32 noundef %21, i32 noundef %24)
  %25 = lshr i32 %22, 20
  %26 = icmp ult i32 %25, %17
  br i1 %26, label %20, label %27

27:                                               ; preds = %20, %16
  %28 = phi i32 [ %9, %16 ], [ %23, %20 ]
  %29 = icmp eq i32 %12, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = sub i32 %12, %28
  tail call fastcc void @show_tty_range(ptr noundef %0, ptr noundef %3, i32 noundef %28, i32 noundef %31)
  br label %32

32:                                               ; preds = %30, %27
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @show_tty_range(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str.19, ptr %6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %8) #3
  %9 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %10) #3
  %11 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 1
  %14 = lshr i32 %2, 20
  %15 = and i32 %2, 1048575
  br i1 %13, label %16, label %19

16:                                               ; preds = %4
  %17 = add i32 %3, -1
  %18 = add i32 %17, %15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %14, i32 noundef %15, i32 noundef %18) #3
  br label %20

19:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %14, i32 noundef %15) #3
  br label %20

20:                                               ; preds = %19, %16
  %21 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 10
  %22 = load i16, ptr %21, align 4
  %23 = sext i16 %22 to i32
  switch i32 %23, label %38 [
    i32 1, label %24
    i32 2, label %30
    i32 3, label %31
    i32 4, label %32
  ]

24:                                               ; preds = %20
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.22) #3
  %25 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 11
  %26 = load i16, ptr %25, align 2
  switch i16 %26, label %42 [
    i16 1, label %27
    i16 3, label %28
    i16 2, label %29
  ]

27:                                               ; preds = %24
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.23) #3
  br label %42

28:                                               ; preds = %24
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.24) #3
  br label %42

29:                                               ; preds = %24
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.25) #3
  br label %42

30:                                               ; preds = %20
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.10) #3
  br label %42

31:                                               ; preds = %20
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.26) #3
  br label %42

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 11
  %34 = load i16, ptr %33, align 2
  switch i16 %34, label %37 [
    i16 1, label %35
    i16 2, label %36
  ]

35:                                               ; preds = %32
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.27) #3
  br label %42

36:                                               ; preds = %32
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.28) #3
  br label %42

37:                                               ; preds = %32
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.29) #3
  br label %42

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 11
  %40 = load i16, ptr %39, align 2
  %41 = sext i16 %40 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %23, i32 noundef %41) #3
  br label %42

42:                                               ; preds = %38, %37, %36, %35, %31, %30, %29, %28, %27, %24
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

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
