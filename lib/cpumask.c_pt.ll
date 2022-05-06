; ModuleID = '/llk/IR/lib/cpumask.c_pt.bc'
source_filename = "../lib/cpumask.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpumask_next:\09\09\09\09\09"
module asm "\09.asciz \09\22cpumask_next\22\09\09\09\09\09"
module asm "__kstrtabns_cpumask_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpumask_next_and:\09\09\09\09\09"
module asm "\09.asciz \09\22cpumask_next_and\22\09\09\09\09\09"
module asm "__kstrtabns_cpumask_next_and:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpumask_any_but:\09\09\09\09\09"
module asm "\09.asciz \09\22cpumask_any_but\22\09\09\09\09\09"
module asm "__kstrtabns_cpumask_any_but:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpumask_next_wrap:\09\09\09\09\09"
module asm "\09.asciz \09\22cpumask_next_wrap\22\09\09\09\09\09"
module asm "__kstrtabns_cpumask_next_wrap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpumask_local_spread:\09\09\09\09\09"
module asm "\09.asciz \09\22cpumask_local_spread\22\09\09\09\09\09"
module asm "__kstrtabns_cpumask_local_spread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpumask_any_and_distribute:\09\09\09\09\09"
module asm "\09.asciz \09\22cpumask_any_and_distribute\22\09\09\09\09\09"
module asm "__kstrtabns_cpumask_any_and_distribute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpumask_any_distribute:\09\09\09\09\09"
module asm "\09.asciz \09\22cpumask_any_distribute\22\09\09\09\09\09"
module asm "__kstrtabns_cpumask_any_distribute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.atomic_t = type { i32 }

@__kstrtab_cpumask_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpumask_next = external dso_local constant [0 x i8], align 1
@__ksymtab_cpumask_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpumask_next to i32), ptr @__kstrtab_cpumask_next, ptr @__kstrtabns_cpumask_next }, section "___ksymtab+cpumask_next", align 4
@__kstrtab_cpumask_next_and = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpumask_next_and = external dso_local constant [0 x i8], align 1
@__ksymtab_cpumask_next_and = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpumask_next_and to i32), ptr @__kstrtab_cpumask_next_and, ptr @__kstrtabns_cpumask_next_and }, section "___ksymtab+cpumask_next_and", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_cpumask_any_but = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpumask_any_but = external dso_local constant [0 x i8], align 1
@__ksymtab_cpumask_any_but = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpumask_any_but to i32), ptr @__kstrtab_cpumask_any_but, ptr @__kstrtabns_cpumask_any_but }, section "___ksymtab+cpumask_any_but", align 4
@__kstrtab_cpumask_next_wrap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpumask_next_wrap = external dso_local constant [0 x i8], align 1
@__ksymtab_cpumask_next_wrap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpumask_next_wrap to i32), ptr @__kstrtab_cpumask_next_wrap, ptr @__kstrtabns_cpumask_next_wrap }, section "___ksymtab+cpumask_next_wrap", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_cpumask_local_spread = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpumask_local_spread = external dso_local constant [0 x i8], align 1
@__ksymtab_cpumask_local_spread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpumask_local_spread to i32), ptr @__kstrtab_cpumask_local_spread, ptr @__kstrtabns_cpumask_local_spread }, section "___ksymtab+cpumask_local_spread", align 4
@distribute_cpu_mask_prev = internal global i32 0, section ".data..percpu", align 4
@__kstrtab_cpumask_any_and_distribute = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpumask_any_and_distribute = external dso_local constant [0 x i8], align 1
@__ksymtab_cpumask_any_and_distribute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpumask_any_and_distribute to i32), ptr @__kstrtab_cpumask_any_and_distribute, ptr @__kstrtabns_cpumask_any_and_distribute }, section "___ksymtab+cpumask_any_and_distribute", align 4
@__kstrtab_cpumask_any_distribute = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpumask_any_distribute = external dso_local constant [0 x i8], align 1
@__ksymtab_cpumask_any_distribute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpumask_any_distribute to i32), ptr @__kstrtab_cpumask_any_distribute, ptr @__kstrtabns_cpumask_any_distribute }, section "___ksymtab+cpumask_any_distribute", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_cpumask_any_and_distribute, ptr @__ksymtab_cpumask_any_but, ptr @__ksymtab_cpumask_any_distribute, ptr @__ksymtab_cpumask_local_spread, ptr @__ksymtab_cpumask_next, ptr @__ksymtab_cpumask_next_and, ptr @__ksymtab_cpumask_next_wrap], section "llvm.metadata"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cpumask_next(i32 noundef %0, ptr noundef %1) #0 {
  %3 = add i32 %0, 1
  %4 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef 16, i32 noundef %3) #6
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cpumask_next_and(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = add i32 %0, 1
  %5 = icmp ugt i32 %4, 15
  br i1 %5, label %16, label %6, !prof !9

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4
  %8 = load i32, ptr %2, align 4
  %9 = shl nsw i32 -1, %4
  %10 = and i32 %9, 65535
  %11 = and i32 %10, %7
  %12 = and i32 %11, %8
  %13 = icmp eq i32 %12, 0
  %14 = tail call i32 @llvm.cttz.i32(i32 %12, i1 true) #6, !range !10
  %15 = select i1 %13, i32 16, i32 %14
  br label %16

16:                                               ; preds = %6, %3
  %17 = phi i32 [ 16, %3 ], [ %15, %6 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cpumask_any_but(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @_find_next_bit_le(ptr noundef %0, i32 noundef 16, i32 noundef 0) #6
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  %6 = icmp eq i32 %3, %1
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = add i32 %1, 1
  br label %10

10:                                               ; preds = %10, %8
  %11 = tail call i32 @_find_next_bit_le(ptr noundef %0, i32 noundef 16, i32 noundef %9) #6
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %13 = icmp ult i32 %11, %12
  %14 = icmp eq i32 %11, %1
  %15 = and i1 %14, %13
  br i1 %15, label %10, label %16, !llvm.loop !11

16:                                               ; preds = %10, %2
  %17 = phi i32 [ %3, %2 ], [ %11, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpumask_next_wrap(i32 noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #3 {
  br label %5

5:                                                ; preds = %15, %4
  %6 = phi i32 [ %0, %4 ], [ -1, %15 ]
  %7 = phi i1 [ %3, %4 ], [ true, %15 ]
  %8 = add i32 %6, 1
  %9 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef 16, i32 noundef %8) #6
  %10 = icmp slt i32 %6, %2
  %11 = and i1 %7, %10
  %12 = xor i1 %11, true
  %13 = icmp slt i32 %9, %2
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = icmp ugt i32 %9, 15
  br i1 %16, label %5, label %17

17:                                               ; preds = %15, %5
  %18 = phi i32 [ 16, %5 ], [ %9, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpumask_local_spread(i32 noundef %0, i32 noundef %1) #3 {
  %3 = load volatile i32, ptr @__num_online_cpus, align 4
  %4 = urem i32 %0, %3
  %5 = icmp eq i32 %1, -1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = load i32, ptr @__cpu_online_mask, align 4
  br label %19

9:                                                ; preds = %16, %2
  %10 = phi i32 [ %17, %16 ], [ %4, %2 ]
  %11 = phi i32 [ %13, %16 ], [ -1, %2 ]
  %12 = add i32 %11, 1
  %13 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16, i32 noundef %12) #6
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %9
  %17 = add i32 %10, -1
  %18 = icmp eq i32 %10, 0
  br i1 %18, label %58, label %9

19:                                               ; preds = %34, %6
  %20 = phi i32 [ %35, %34 ], [ %4, %6 ]
  %21 = phi i32 [ %32, %34 ], [ -1, %6 ]
  %22 = add nsw i32 %21, 1
  %23 = icmp ugt i32 %22, 15
  br i1 %23, label %31, label %24, !prof !9

24:                                               ; preds = %19
  %25 = shl nsw i32 -1, %22
  %26 = and i32 %25, 65535
  %27 = and i32 %26, %8
  %28 = icmp eq i32 %27, 0
  %29 = tail call i32 @llvm.cttz.i32(i32 %27, i1 true) #6, !range !10
  %30 = select i1 %28, i32 16, i32 %29
  br label %31

31:                                               ; preds = %24, %19
  %32 = phi i32 [ 16, %19 ], [ %30, %24 ]
  %33 = icmp ult i32 %32, %7
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = add i32 %20, -1
  %36 = icmp eq i32 %20, 0
  br i1 %36, label %58, label %19

37:                                               ; preds = %54, %43
  %38 = phi i32 [ %40, %43 ], [ %56, %54 ]
  %39 = add i32 %38, 1
  %40 = tail call i32 @_find_next_bit_le(ptr noundef nonnull @__cpu_online_mask, i32 noundef 16, i32 noundef %39) #6
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = lshr i32 %40, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %40, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %37

51:                                               ; preds = %43
  %52 = add i32 %55, -1
  %53 = icmp eq i32 %55, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51, %31
  %55 = phi i32 [ %52, %51 ], [ %20, %31 ]
  %56 = phi i32 [ %40, %51 ], [ -1, %31 ]
  br label %37

57:                                               ; preds = %37, %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/cpumask.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 232, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

58:                                               ; preds = %51, %34, %16
  %59 = phi i32 [ %13, %16 ], [ %40, %51 ], [ %32, %34 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpumask_any_and_distribute(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #5, !srcloc !14
  %6 = add i32 %5, ptrtoint (ptr @distribute_cpu_mask_prev to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = icmp ugt i32 %9, 15
  br i1 %10, label %21, label %11, !prof !9

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 4
  %13 = load i32, ptr %1, align 4
  %14 = shl nsw i32 -1, %9
  %15 = and i32 %14, 65535
  %16 = and i32 %15, %12
  %17 = and i32 %16, %13
  %18 = icmp eq i32 %17, 0
  %19 = tail call i32 @llvm.cttz.i32(i32 %17, i1 true) #6, !range !10
  %20 = select i1 %18, i32 16, i32 %19
  br label %21

21:                                               ; preds = %11, %2
  %22 = phi i32 [ 16, %2 ], [ %20, %11 ]
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %0, align 4
  %27 = load i32, ptr %1, align 4
  %28 = and i32 %26, 65535
  %29 = and i32 %28, %27
  %30 = icmp eq i32 %29, 0
  %31 = tail call i32 @llvm.cttz.i32(i32 %29, i1 true) #6, !range !10
  %32 = select i1 %30, i32 16, i32 %31
  br label %33

33:                                               ; preds = %25, %21
  %34 = phi i32 [ %32, %25 ], [ %22, %21 ]
  %35 = icmp ult i32 %34, %23
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 %34, ptr %7, align 4
  br label %37

37:                                               ; preds = %36, %33
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpumask_any_distribute(ptr noundef %0) #3 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #5, !srcloc !14
  %5 = add i32 %4, ptrtoint (ptr @distribute_cpu_mask_prev to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  %9 = tail call i32 @_find_next_bit_le(ptr noundef %0, i32 noundef 16, i32 noundef %8) #6
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = tail call i32 @_find_first_bit_le(ptr noundef %0, i32 noundef 16) #6
  %14 = load i32, ptr @nr_cpu_ids, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi i32 [ %14, %12 ], [ %10, %1 ]
  %17 = phi i32 [ %13, %12 ], [ %9, %1 ]
  %18 = icmp ult i32 %17, %16
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #5, !srcloc !14
  %23 = add i32 %22, ptrtoint (ptr @distribute_cpu_mask_prev to i32)
  %24 = inttoptr i32 %23 to ptr
  store i32 %17, ptr %24, align 4
  br label %25

25:                                               ; preds = %19, %15
  ret i32 %17
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i32 0, i32 33}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.peeled.count", i32 1}
!13 = !{i64 2152070216, i64 2152070694, i64 2152070253, i64 2152070309, i64 2152070343, i64 2152070367, i64 2152070408, i64 2152070429, i64 2152070457, i64 2152070491}
!14 = !{i64 685324}
