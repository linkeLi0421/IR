; ModuleID = '/llk/IR/lib/mpi/mpi-bit.c_pt.bc'
source_filename = "../lib/mpi/mpi-bit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_normalize:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_normalize\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_normalize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_get_nbits:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_get_nbits\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_get_nbits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_test_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_test_bit\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_test_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_set_highbit:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_set_highbit\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_set_highbit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_clear_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_clear_bit\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_clear_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__kstrtab_mpi_normalize = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_normalize = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_normalize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_normalize to i32), ptr @__kstrtab_mpi_normalize, ptr @__kstrtabns_mpi_normalize }, section "___ksymtab_gpl+mpi_normalize", align 4
@__kstrtab_mpi_get_nbits = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_get_nbits = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_get_nbits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_get_nbits to i32), ptr @__kstrtab_mpi_get_nbits, ptr @__kstrtabns_mpi_get_nbits }, section "___ksymtab_gpl+mpi_get_nbits", align 4
@__kstrtab_mpi_test_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_test_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_test_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_test_bit to i32), ptr @__kstrtab_mpi_test_bit, ptr @__kstrtabns_mpi_test_bit }, section "___ksymtab_gpl+mpi_test_bit", align 4
@__kstrtab_mpi_set_highbit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_set_highbit = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_set_highbit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_set_highbit to i32), ptr @__kstrtab_mpi_set_highbit, ptr @__kstrtabns_mpi_set_highbit }, section "___ksymtab_gpl+mpi_set_highbit", align 4
@__kstrtab_mpi_clear_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_clear_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_clear_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_clear_bit to i32), ptr @__kstrtab_mpi_clear_bit, ptr @__kstrtabns_mpi_clear_bit }, section "___ksymtab_gpl+mpi_clear_bit", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_mpi_clear_bit, ptr @__ksymtab_mpi_get_nbits, ptr @__ksymtab_mpi_normalize, ptr @__ksymtab_mpi_set_highbit, ptr @__ksymtab_mpi_test_bit], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_normalize(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %14, %5
  %9 = phi i32 [ %3, %5 ], [ %10, %14 ]
  %10 = add i32 %9, -1
  %11 = getelementptr i32, ptr %7, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  store i32 %10, ptr %2, align 4
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %16, label %8

16:                                               ; preds = %14, %8, %1
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpi_get_nbits(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %14, %5
  %9 = phi i32 [ %3, %5 ], [ %10, %14 ]
  %10 = add i32 %9, -1
  %11 = getelementptr i32, ptr %7, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  store i32 %10, ptr %2, align 4
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %20, label %8

16:                                               ; preds = %8
  %17 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #8, !range !8
  %18 = shl i32 %9, 5
  %19 = sub i32 %18, %17
  br label %20

20:                                               ; preds = %16, %14, %1
  %21 = phi i32 [ %19, %16 ], [ 0, %1 ], [ 0, %14 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mpi_test_bit(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = lshr i32 %1, 5
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = and i32 %1, 31
  %9 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i32, ptr %10, i32 %3
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, %8
  %14 = and i32 %13, 1
  br label %15

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %14, %7 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_set_bit(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = lshr i32 %1, 5
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 4
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ %5, %10 ], [ %16, %12 ]
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr i32, ptr %14, i32 %13
  store i32 0, ptr %15, align 4
  %16 = add nuw i32 %13, 1
  %17 = load i32, ptr %0, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %12, label %19

19:                                               ; preds = %12, %7
  %20 = add nuw nsw i32 %3, 1
  %21 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef %20) #8
  store i32 %20, ptr %4, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = and i32 %1, 31
  %24 = shl nuw i32 1, %23
  %25 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i32, ptr %26, i32 %3
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, ptr %27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_resize(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_set_highbit(ptr noundef %0, i32 noundef %1) #3 {
  %3 = lshr i32 %1, 5
  %4 = and i32 %1, 31
  %5 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %3, %6
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %0, align 4
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ %6, %11 ], [ %17, %13 ]
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr i32, ptr %15, i32 %14
  store i32 0, ptr %16, align 4
  %17 = add nuw i32 %14, 1
  %18 = load i32, ptr %0, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %13, label %20

20:                                               ; preds = %13, %8
  %21 = add nuw nsw i32 %3, 1
  %22 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef %21) #8
  store i32 %21, ptr %5, align 4
  br label %23

23:                                               ; preds = %20, %2
  %24 = shl nuw i32 1, %4
  %25 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i32, ptr %26, i32 %3
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, ptr %27, align 4
  %30 = icmp eq i32 %4, 31
  br i1 %30, label %43, label %31

31:                                               ; preds = %23
  %32 = add nuw nsw i32 %4, 1
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i32 [ %41, %33 ], [ %32, %31 ]
  %35 = shl nuw i32 1, %34
  %36 = xor i32 %35, -1
  %37 = load ptr, ptr %25, align 4
  %38 = getelementptr i32, ptr %37, i32 %3
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, ptr %38, align 4
  %41 = add nuw nsw i32 %34, 1
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %43, label %33

43:                                               ; preds = %33, %23
  %44 = add nuw nsw i32 %3, 1
  store i32 %44, ptr %5, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_clear_highbit(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %1, 5
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = and i32 %1, 31
  %9 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i32 [ %8, %7 ], [ %18, %10 ]
  %12 = shl nuw i32 1, %11
  %13 = xor i32 %12, -1
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i32, ptr %14, i32 %3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, ptr %15, align 4
  %18 = add nuw nsw i32 %11, 1
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %20, label %10

20:                                               ; preds = %10
  %21 = add nuw nsw i32 %3, 1
  store i32 %21, ptr %4, align 4
  br label %22

22:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @mpi_clear_bit(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = lshr i32 %1, 5
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = and i32 %1, 31
  %9 = shl nuw i32 1, %8
  %10 = xor i32 %9, -1
  %11 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i32, ptr %12, i32 %3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %10
  store i32 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_rshift_limbs(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = sub i32 %6, %1
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %16, %10 ], [ 0, %8 ]
  %12 = add i32 %11, %1
  %13 = getelementptr i32, ptr %4, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i32, ptr %4, i32 %11
  store i32 %14, ptr %15, align 4
  %16 = add nuw i32 %11, 1
  %17 = icmp eq i32 %16, %9
  br i1 %17, label %18, label %10

18:                                               ; preds = %10
  %19 = getelementptr i32, ptr %4, i32 %9
  store i32 0, ptr %19, align 4
  %20 = load i32, ptr %5, align 4
  %21 = sub i32 %20, %1
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi i32 [ %21, %18 ], [ 0, %2 ]
  store i32 %23, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_rshift(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = lshr i32 %2, 5
  %5 = and i32 %2, 31
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %7, label %41

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %4, %9
  br i1 %10, label %11, label %139

11:                                               ; preds = %7
  %12 = icmp ult i32 %2, 32
  br i1 %12, label %32, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %22, %15 ]
  %17 = load ptr, ptr %14, align 4
  %18 = add i32 %16, %4
  %19 = getelementptr i32, ptr %17, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i32, ptr %17, i32 %16
  store i32 %20, ptr %21, align 4
  %22 = add nuw i32 %16, 1
  %23 = load i32, ptr %8, align 4
  %24 = sub i32 %23, %4
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %15, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i32, ptr %28, i32 %22
  store i32 0, ptr %29, align 4
  %30 = load i32, ptr %8, align 4
  %31 = sub i32 %30, %4
  store i32 %31, ptr %8, align 4
  br label %32

32:                                               ; preds = %26, %11
  %33 = phi i32 [ %31, %26 ], [ %9, %11 ]
  %34 = icmp ne i32 %33, 0
  %35 = icmp ne i32 %5, 0
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %124

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @mpihelp_rshift(ptr noundef %39, ptr noundef %39, i32 noundef %33, i32 noundef %5) #8
  br label %124

41:                                               ; preds = %3
  %42 = icmp ult i32 %2, 32
  %43 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr %0, align 4
  %49 = icmp slt i32 %48, %44
  br i1 %42, label %97, label %50

50:                                               ; preds = %41
  br i1 %49, label %51, label %53

51:                                               ; preds = %50
  %52 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef %44) #8
  br label %53

53:                                               ; preds = %51, %50
  %54 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 %44, ptr %54, align 4
  %55 = load i32, ptr %43, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %139, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %59 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  br label %60

60:                                               ; preds = %60, %57
  %61 = phi i32 [ 0, %57 ], [ %67, %60 ]
  %62 = load ptr, ptr %58, align 4
  %63 = getelementptr i32, ptr %62, i32 %61
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %59, align 4
  %66 = getelementptr i32, ptr %65, i32 %61
  store i32 %64, ptr %66, align 4
  %67 = add nuw i32 %61, 1
  %68 = load i32, ptr %43, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %60, label %70

70:                                               ; preds = %60
  store i32 %67, ptr %54, align 4
  %71 = icmp ugt i32 %4, %61
  br i1 %71, label %139, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi i32 [ 0, %72 ], [ %81, %74 ]
  %76 = load ptr, ptr %73, align 4
  %77 = add i32 %75, %4
  %78 = getelementptr i32, ptr %76, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr i32, ptr %76, i32 %75
  store i32 %79, ptr %80, align 4
  %81 = add nuw i32 %75, 1
  %82 = load i32, ptr %54, align 4
  %83 = sub i32 %82, %4
  %84 = icmp ult i32 %81, %83
  br i1 %84, label %74, label %85

85:                                               ; preds = %74
  %86 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i32, ptr %87, i32 %81
  store i32 0, ptr %88, align 4
  %89 = load i32, ptr %54, align 4
  %90 = sub i32 %89, %4
  store i32 %90, ptr %54, align 4
  %91 = icmp ne i32 %89, %4
  %92 = icmp ne i32 %5, 0
  %93 = and i1 %92, %91
  br i1 %93, label %94, label %124

94:                                               ; preds = %85
  %95 = load ptr, ptr %86, align 4
  %96 = tail call i32 @mpihelp_rshift(ptr noundef %95, ptr noundef %95, i32 noundef %90, i32 noundef %5) #8
  br label %124

97:                                               ; preds = %41
  br i1 %49, label %98, label %100

98:                                               ; preds = %97
  %99 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef %44) #8
  br label %100

100:                                              ; preds = %98, %97
  %101 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 %44, ptr %101, align 4
  %102 = icmp eq i32 %44, 0
  br i1 %102, label %124, label %103

103:                                              ; preds = %100
  %104 = icmp eq i32 %5, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %107 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  br label %114

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i32 @mpihelp_rshift(ptr noundef %110, ptr noundef %112, i32 noundef %44, i32 noundef %5) #8
  br label %124

114:                                              ; preds = %114, %105
  %115 = phi i32 [ 0, %105 ], [ %121, %114 ]
  %116 = load ptr, ptr %106, align 4
  %117 = getelementptr i32, ptr %116, i32 %115
  %118 = load i32, ptr %117, align 4
  %119 = load ptr, ptr %107, align 4
  %120 = getelementptr i32, ptr %119, i32 %115
  store i32 %118, ptr %120, align 4
  %121 = add nuw i32 %115, 1
  %122 = load i32, ptr %101, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %114, label %124

124:                                              ; preds = %114, %108, %100, %94, %85, %37, %32
  %125 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %130 = load ptr, ptr %129, align 4
  br label %131

131:                                              ; preds = %137, %128
  %132 = phi i32 [ %126, %128 ], [ %133, %137 ]
  %133 = add nsw i32 %132, -1
  %134 = getelementptr i32, ptr %130, i32 %133
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  store i32 %133, ptr %125, align 4
  %138 = icmp ugt i32 %132, 1
  br i1 %138, label %131, label %141

139:                                              ; preds = %70, %53, %7
  %140 = phi ptr [ %8, %7 ], [ %54, %53 ], [ %54, %70 ]
  store i32 0, ptr %140, align 4
  br label %141

141:                                              ; preds = %139, %137, %131, %124
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_rshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_lshift_limbs(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp ne i32 %1, 0
  %6 = icmp ne i32 %4, 0
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = load i32, ptr %0, align 4
  %10 = add i32 %4, %1
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef %10) #8
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = add i32 %4, -1
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %27

19:                                               ; preds = %19, %14
  %20 = phi i32 [ %25, %19 ], [ %17, %14 ]
  %21 = getelementptr i32, ptr %16, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %20, %1
  %24 = getelementptr i32, ptr %16, i32 %23
  store i32 %22, ptr %24, align 4
  %25 = add nsw i32 %20, -1
  %26 = icmp sgt i32 %20, 0
  br i1 %26, label %19, label %27

27:                                               ; preds = %19, %14
  %28 = call i32 @llvm.umax.i32(i32 %1, i32 1)
  %29 = shl nuw i32 %28, 2
  call void @llvm.memset.p0.i32(ptr align 4 %16, i8 0, i32 %29, i1 false)
  %30 = load i32, ptr %3, align 4
  %31 = add i32 %30, %1
  store i32 %31, ptr %3, align 4
  br label %32

32:                                               ; preds = %27, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_lshift(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = lshr i32 %2, 5
  %5 = and i32 %2, 31
  %6 = icmp ne ptr %0, %1
  %7 = icmp ne i32 %2, 0
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %168

9:                                                ; preds = %3
  br i1 %6, label %10, label %40

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %0, align 4
  %16 = add nuw nsw i32 %4, 1
  %17 = add i32 %16, %12
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef %17) #8
  br label %21

21:                                               ; preds = %19, %10
  %22 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq i32 %12, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %27, %21
  %28 = phi i32 [ %32, %27 ], [ 0, %21 ]
  %29 = getelementptr i32, ptr %25, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i32, ptr %23, i32 %28
  store i32 %30, ptr %31, align 4
  %32 = add nuw i32 %28, 1
  %33 = icmp eq i32 %32, %12
  br i1 %33, label %34, label %27

34:                                               ; preds = %27, %21
  %35 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 %12, ptr %35, align 4
  %36 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 4
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  store i32 %14, ptr %39, align 4
  br label %40

40:                                               ; preds = %34, %9
  %41 = icmp ult i32 %2, 32
  %42 = icmp ne i32 %5, 0
  %43 = or i1 %41, %42
  br i1 %43, label %72, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %168, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %0, align 4
  %50 = add i32 %46, %4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef %50) #8
  br label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = add i32 %46, -1
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %67

59:                                               ; preds = %59, %54
  %60 = phi i32 [ %65, %59 ], [ %57, %54 ]
  %61 = getelementptr i32, ptr %56, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %60, %4
  %64 = getelementptr i32, ptr %56, i32 %63
  store i32 %62, ptr %64, align 4
  %65 = add nsw i32 %60, -1
  %66 = icmp eq i32 %60, 0
  br i1 %66, label %67, label %59

67:                                               ; preds = %59, %54
  %68 = tail call i32 @llvm.umax.i32(i32 %4, i32 1) #8
  %69 = shl nuw nsw i32 %68, 2
  tail call void @llvm.memset.p0.i32(ptr align 4 %56, i8 0, i32 %69, i1 false) #8
  %70 = load i32, ptr %45, align 4
  %71 = add i32 %70, %4
  store i32 %71, ptr %45, align 4
  br label %153

72:                                               ; preds = %40
  br i1 %7, label %76, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  br label %153

76:                                               ; preds = %72
  %77 = add nuw nsw i32 %4, 1
  %78 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %152, label %81

81:                                               ; preds = %76
  %82 = load i32, ptr %0, align 4
  %83 = add i32 %79, %77
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef %83) #8
  br label %87

87:                                               ; preds = %85, %81
  %88 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %89 = load ptr, ptr %88, align 4
  %90 = add i32 %79, -1
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %92, label %100

92:                                               ; preds = %92, %87
  %93 = phi i32 [ %98, %92 ], [ %90, %87 ]
  %94 = getelementptr i32, ptr %89, i32 %93
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %93, %77
  %97 = getelementptr i32, ptr %89, i32 %96
  store i32 %95, ptr %97, align 4
  %98 = add nsw i32 %93, -1
  %99 = icmp eq i32 %93, 0
  br i1 %99, label %100, label %92

100:                                              ; preds = %92, %87
  %101 = shl nuw nsw i32 %77, 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 %89, i8 0, i32 %101, i1 false) #8
  %102 = load i32, ptr %78, align 4
  %103 = add i32 %102, %77
  store i32 %103, ptr %78, align 4
  %104 = sub nuw nsw i32 32, %5
  %105 = lshr i32 %104, 5
  %106 = and i32 %104, 31
  %107 = icmp ult i32 %105, %103
  br i1 %107, label %108, label %152

108:                                              ; preds = %100
  %109 = icmp eq i32 %5, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  br label %112

112:                                              ; preds = %112, %110
  %113 = phi i32 [ 0, %110 ], [ %119, %112 ]
  %114 = load ptr, ptr %111, align 4
  %115 = add nuw i32 %113, %105
  %116 = getelementptr i32, ptr %114, i32 %115
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr i32, ptr %114, i32 %113
  store i32 %117, ptr %118, align 4
  %119 = add nuw i32 %113, 1
  %120 = load i32, ptr %78, align 4
  %121 = sub i32 %120, %105
  %122 = icmp ult i32 %119, %121
  br i1 %122, label %112, label %123

123:                                              ; preds = %112
  %124 = load ptr, ptr %111, align 4
  %125 = getelementptr i32, ptr %124, i32 %119
  store i32 0, ptr %125, align 4
  %126 = load i32, ptr %78, align 4
  %127 = sub i32 %126, %105
  store i32 %127, ptr %78, align 4
  br label %128

128:                                              ; preds = %123, %108
  %129 = phi i32 [ %127, %123 ], [ %103, %108 ]
  %130 = icmp ne i32 %129, 0
  %131 = icmp ne i32 %106, 0
  %132 = and i1 %131, %130
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %135 = load ptr, ptr %134, align 4
  %136 = tail call i32 @mpihelp_rshift(ptr noundef %135, ptr noundef %135, i32 noundef %129, i32 noundef %106) #8
  %137 = load i32, ptr %78, align 4
  br label %138

138:                                              ; preds = %133, %128
  %139 = phi i32 [ %137, %133 ], [ %129, %128 ]
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %143 = load ptr, ptr %142, align 4
  br label %144

144:                                              ; preds = %150, %141
  %145 = phi i32 [ %139, %141 ], [ %146, %150 ]
  %146 = add nsw i32 %145, -1
  %147 = getelementptr i32, ptr %143, i32 %146
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  store i32 %146, ptr %78, align 4
  %151 = icmp ugt i32 %145, 1
  br i1 %151, label %144, label %168

152:                                              ; preds = %100, %76
  store i32 0, ptr %78, align 4
  br label %168

153:                                              ; preds = %144, %73, %67
  %154 = phi i32 [ %75, %73 ], [ %71, %67 ], [ %145, %144 ]
  %155 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %156 = icmp sgt i32 %154, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %159 = load ptr, ptr %158, align 4
  br label %160

160:                                              ; preds = %166, %157
  %161 = phi i32 [ %154, %157 ], [ %162, %166 ]
  %162 = add nsw i32 %161, -1
  %163 = getelementptr i32, ptr %159, i32 %162
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  store i32 %162, ptr %155, align 4
  %167 = icmp ugt i32 %161, 1
  br i1 %167, label %160, label %168

168:                                              ; preds = %166, %160, %153, %152, %150, %138, %44, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }

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
!8 = !{i32 0, i32 33}
