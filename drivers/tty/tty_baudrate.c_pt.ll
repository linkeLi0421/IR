; ModuleID = '/llk/IR/drivers/tty/tty_baudrate.c_pt.bc'
source_filename = "../drivers/tty/tty_baudrate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_termios_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_termios_baud_rate\22\09\09\09\09\09"
module asm "__kstrtabns_tty_termios_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_termios_input_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_termios_input_baud_rate\22\09\09\09\09\09"
module asm "__kstrtabns_tty_termios_input_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_termios_encode_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_termios_encode_baud_rate\22\09\09\09\09\09"
module asm "__kstrtabns_tty_termios_encode_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_encode_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_encode_baud_rate\22\09\09\09\09\09"
module asm "__kstrtabns_tty_encode_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.59, %struct.anon.60, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.59 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.60 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@baud_table = internal unnamed_addr constant [31 x i32] [i32 0, i32 50, i32 75, i32 110, i32 134, i32 150, i32 200, i32 300, i32 600, i32 1200, i32 1800, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 500000, i32 576000, i32 921600, i32 1000000, i32 1152000, i32 1500000, i32 2000000, i32 2500000, i32 3000000, i32 3500000, i32 4000000], align 4
@__kstrtab_tty_termios_baud_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_termios_baud_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_termios_baud_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_termios_baud_rate to i32), ptr @__kstrtab_tty_termios_baud_rate, ptr @__kstrtabns_tty_termios_baud_rate }, section "___ksymtab+tty_termios_baud_rate", align 4
@__kstrtab_tty_termios_input_baud_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_termios_input_baud_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_termios_input_baud_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_termios_input_baud_rate to i32), ptr @__kstrtab_tty_termios_input_baud_rate, ptr @__kstrtabns_tty_termios_input_baud_rate }, section "___ksymtab+tty_termios_input_baud_rate", align 4
@baud_bits = internal unnamed_addr constant [31 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 4097, i32 4098, i32 4099, i32 4100, i32 4101, i32 4102, i32 4103, i32 4104, i32 4105, i32 4106, i32 4107, i32 4108, i32 4109, i32 4110, i32 4111], align 4
@__kstrtab_tty_termios_encode_baud_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_termios_encode_baud_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_termios_encode_baud_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_termios_encode_baud_rate to i32), ptr @__kstrtab_tty_termios_encode_baud_rate, ptr @__kstrtabns_tty_termios_encode_baud_rate }, section "___ksymtab_gpl+tty_termios_encode_baud_rate", align 4
@__kstrtab_tty_encode_baud_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_encode_baud_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_encode_baud_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_encode_baud_rate to i32), ptr @__kstrtab_tty_encode_baud_rate, ptr @__kstrtabns_tty_encode_baud_rate }, section "___ksymtab_gpl+tty_encode_baud_rate", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_tty_encode_baud_rate, ptr @__ksymtab_tty_termios_baud_rate, ptr @__ksymtab_tty_termios_encode_baud_rate, ptr @__ksymtab_tty_termios_input_baud_rate], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tty_termios_baud_rate(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 4111
  %5 = icmp eq i32 %4, 4096
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 7
  br label %23

8:                                                ; preds = %1
  %9 = and i32 %3, 4096
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = and i32 %3, 15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = and i32 %3, -4097
  store i32 %15, ptr %2, align 4
  br label %20

16:                                               ; preds = %11
  %17 = add nuw nsw i32 %12, 15
  br label %20

18:                                               ; preds = %8
  %19 = icmp ugt i32 %4, 30
  br i1 %19, label %26, label %20

20:                                               ; preds = %18, %16, %14
  %21 = phi i32 [ %4, %18 ], [ %17, %16 ], [ 0, %14 ]
  %22 = getelementptr [31 x i32], ptr @baud_table, i32 0, i32 %21
  br label %23

23:                                               ; preds = %20, %6
  %24 = phi ptr [ %22, %20 ], [ %7, %6 ]
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i32 [ 0, %18 ], [ %25, %23 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tty_termios_input_baud_rate(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 4111
  switch i32 %5, label %28 [
    i32 0, label %6
    i32 4096, label %26
  ]

6:                                                ; preds = %1
  %7 = and i32 %3, 4111
  %8 = icmp eq i32 %7, 4096
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 7
  br label %43

11:                                               ; preds = %6
  %12 = and i32 %3, 4096
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = and i32 %3, 15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = and i32 %3, -4097
  store i32 %18, ptr %2, align 4
  br label %23

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %15, 15
  br label %23

21:                                               ; preds = %11
  %22 = icmp ugt i32 %7, 30
  br i1 %22, label %46, label %23

23:                                               ; preds = %21, %19, %17
  %24 = phi i32 [ %7, %21 ], [ %20, %19 ], [ 0, %17 ]
  %25 = getelementptr [31 x i32], ptr @baud_table, i32 0, i32 %24
  br label %43

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 6
  br label %43

28:                                               ; preds = %1
  %29 = and i32 %3, 268435456
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = and i32 %4, 15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = and i32 %3, -268435457
  store i32 %35, ptr %2, align 4
  br label %40

36:                                               ; preds = %31
  %37 = add nuw nsw i32 %32, 15
  br label %40

38:                                               ; preds = %28
  %39 = icmp ugt i32 %5, 30
  br i1 %39, label %46, label %40

40:                                               ; preds = %38, %36, %34
  %41 = phi i32 [ %5, %38 ], [ %37, %36 ], [ 0, %34 ]
  %42 = getelementptr [31 x i32], ptr @baud_table, i32 0, i32 %41
  br label %43

43:                                               ; preds = %40, %26, %23, %9
  %44 = phi ptr [ %42, %40 ], [ %27, %26 ], [ %25, %23 ], [ %10, %9 ]
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %38, %21
  %47 = phi i32 [ 0, %38 ], [ 0, %21 ], [ %45, %43 ]
  ret i32 %47
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_termios_encode_baud_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = udiv i32 %1, 50
  %5 = udiv i32 %2, 50
  %6 = icmp eq i32 %2, 0
  %7 = select i1 %6, i32 0, i32 %1
  %8 = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 6
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 7
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ktermios, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 269418496
  %13 = icmp ne i32 %12, 0
  %14 = and i32 %11, 4111
  %15 = icmp eq i32 %14, 4096
  %16 = and i32 %11, 269422607
  %17 = icmp eq i32 %16, 4096
  %18 = select i1 %15, i32 0, i32 %5
  %19 = icmp eq i32 %12, 268435456
  %20 = or i1 %19, %17
  %21 = select i1 %20, i32 0, i32 %4
  %22 = and i32 %11, -269422608
  store i32 %22, ptr %10, align 4
  %23 = sub i32 %2, %18
  %24 = add i32 %18, %2
  %25 = sub i32 %7, %21
  %26 = add i32 %21, %7
  br label %27

27:                                               ; preds = %55, %3
  %28 = phi i32 [ %22, %3 ], [ %56, %55 ]
  %29 = phi i32 [ 0, %3 ], [ %58, %55 ]
  %30 = phi i32 [ -1, %3 ], [ %57, %55 ]
  %31 = phi i32 [ -1, %3 ], [ %43, %55 ]
  %32 = getelementptr [31 x i32], ptr @baud_table, i32 0, i32 %29
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %23, %33
  %35 = icmp ult i32 %24, %33
  %36 = or i1 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %27
  %38 = getelementptr [31 x i32], ptr @baud_bits, i32 0, i32 %29
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %28, %39
  store i32 %40, ptr %10, align 4
  br label %41

41:                                               ; preds = %37, %27
  %42 = phi i32 [ %40, %37 ], [ %28, %27 ]
  %43 = phi i32 [ %29, %37 ], [ %31, %27 ]
  %44 = icmp ugt i32 %25, %33
  %45 = icmp ult i32 %26, %33
  %46 = or i1 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %41
  %48 = icmp ne i32 %43, %29
  %49 = select i1 %48, i1 true, i1 %13
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = getelementptr [31 x i32], ptr @baud_bits, i32 0, i32 %29
  %52 = load i32, ptr %51, align 4
  %53 = shl i32 %52, 16
  %54 = or i32 %42, %53
  store i32 %54, ptr %10, align 4
  br label %55

55:                                               ; preds = %50, %47, %41
  %56 = phi i32 [ %54, %50 ], [ %42, %41 ], [ %42, %47 ]
  %57 = phi i32 [ %29, %50 ], [ %30, %41 ], [ %29, %47 ]
  %58 = add nuw nsw i32 %29, 1
  %59 = icmp eq i32 %58, 31
  br i1 %59, label %60, label %27

60:                                               ; preds = %55
  %61 = icmp eq i32 %43, -1
  %62 = icmp eq i32 %57, -1
  %63 = icmp ne i32 %7, %2
  %64 = select i1 %63, i1 true, i1 %13
  %65 = select i1 %62, i1 %64, i1 false
  %66 = or i1 %61, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = or i32 %56, 4096
  %69 = select i1 %61, i32 %68, i32 %56
  %70 = or i32 %69, 268435456
  %71 = select i1 %65, i32 %70, i32 %69
  store i32 %71, ptr %10, align 4
  br label %72

72:                                               ; preds = %67, %60
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_encode_baud_rate(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  tail call void @tty_termios_encode_baud_rate(ptr noundef %4, i32 noundef %1, i32 noundef %2)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
