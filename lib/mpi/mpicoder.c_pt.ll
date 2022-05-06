; ModuleID = '/llk/IR/lib/mpi/mpicoder.c_pt.bc'
source_filename = "../lib/mpi/mpicoder.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_read_raw_data:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_read_raw_data\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_read_raw_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_read_from_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_read_from_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_read_from_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_fromstr:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_fromstr\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_fromstr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_scanval:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_scanval\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_scanval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_read_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_read_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_read_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_get_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_get_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_get_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_write_to_sgl:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_write_to_sgl\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_write_to_sgl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_read_raw_from_sgl:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_read_raw_from_sgl\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_read_raw_from_sgl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_print:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_print\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_print:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"\016MPI: mpi too large (%u bits)\0A\00", align 1
@__kstrtab_mpi_read_raw_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_read_raw_data = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_read_raw_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_read_raw_data to i32), ptr @__kstrtab_mpi_read_raw_data, ptr @__kstrtabns_mpi_read_raw_data }, section "___ksymtab_gpl+mpi_read_raw_data", align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"\016MPI: mpi larger than buffer nbytes=%u ret_nread=%u\0A\00", align 1
@__kstrtab_mpi_read_from_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_read_from_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_read_from_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_read_from_buffer to i32), ptr @__kstrtab_mpi_read_from_buffer, ptr @__kstrtabns_mpi_read_from_buffer }, section "___ksymtab_gpl+mpi_read_from_buffer", align 4
@__kstrtab_mpi_fromstr = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_fromstr = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_fromstr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_fromstr to i32), ptr @__kstrtab_mpi_fromstr, ptr @__kstrtabns_mpi_fromstr }, section "___ksymtab_gpl+mpi_fromstr", align 4
@__kstrtab_mpi_scanval = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_scanval = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_scanval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_scanval to i32), ptr @__kstrtab_mpi_scanval, ptr @__kstrtabns_mpi_scanval }, section "___ksymtab_gpl+mpi_scanval", align 4
@__kstrtab_mpi_read_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_read_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_read_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_read_buffer to i32), ptr @__kstrtab_mpi_read_buffer, ptr @__kstrtabns_mpi_read_buffer }, section "___ksymtab_gpl+mpi_read_buffer", align 4
@__kstrtab_mpi_get_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_get_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_get_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_get_buffer to i32), ptr @__kstrtab_mpi_get_buffer, ptr @__kstrtabns_mpi_get_buffer }, section "___ksymtab_gpl+mpi_get_buffer", align 4
@__kstrtab_mpi_write_to_sgl = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_write_to_sgl = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_write_to_sgl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_write_to_sgl to i32), ptr @__kstrtab_mpi_write_to_sgl, ptr @__kstrtabns_mpi_write_to_sgl }, section "___ksymtab_gpl+mpi_write_to_sgl", align 4
@__kstrtab_mpi_read_raw_from_sgl = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_read_raw_from_sgl = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_read_raw_from_sgl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_read_raw_from_sgl to i32), ptr @__kstrtab_mpi_read_raw_from_sgl, ptr @__kstrtabns_mpi_read_raw_from_sgl }, section "___ksymtab_gpl+mpi_read_raw_from_sgl", align 4
@__kstrtab_mpi_print = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_print = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_print = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_print to i32), ptr @__kstrtab_mpi_print, ptr @__kstrtabns_mpi_print }, section "___ksymtab_gpl+mpi_print", align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_mpi_fromstr, ptr @__ksymtab_mpi_get_buffer, ptr @__ksymtab_mpi_print, ptr @__ksymtab_mpi_read_buffer, ptr @__ksymtab_mpi_read_from_buffer, ptr @__ksymtab_mpi_read_raw_data, ptr @__ksymtab_mpi_read_raw_from_sgl, ptr @__ksymtab_mpi_scanval, ptr @__ksymtab_mpi_write_to_sgl], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mpi_read_raw_data(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 %1
  br label %6

6:                                                ; preds = %11, %4
  %7 = phi ptr [ %12, %11 ], [ %0, %4 ]
  %8 = phi i32 [ %13, %11 ], [ %1, %4 ]
  %9 = load i8, ptr %7, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 1
  %13 = add i32 %8, -1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %6

15:                                               ; preds = %6
  %16 = shl i32 %8, 3
  %17 = icmp ugt i32 %16, 16384
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %16) #10
  br label %101

20:                                               ; preds = %15
  %21 = zext i8 %9 to i32
  %22 = tail call i32 @llvm.ctlz.i32(i32 %21, i1 true) #11, !range !8
  %23 = add nuw nsw i32 %16, 24
  %24 = sub nsw i32 %23, %22
  br label %25

25:                                               ; preds = %20, %11, %2
  %26 = phi i32 [ %8, %20 ], [ 0, %2 ], [ 0, %11 ]
  %27 = phi ptr [ %7, %20 ], [ %0, %2 ], [ %5, %11 ]
  %28 = phi i1 [ false, %20 ], [ true, %2 ], [ true, %11 ]
  %29 = phi i32 [ %24, %20 ], [ 0, %2 ], [ 0, %11 ]
  %30 = add i32 %26, 3
  %31 = lshr i32 %30, 2
  %32 = tail call ptr @mpi_alloc(i32 noundef %31) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %101, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.gcry_mpi, ptr %32, i32 0, i32 2
  store i32 %29, ptr %35, align 4
  %36 = getelementptr inbounds %struct.gcry_mpi, ptr %32, i32 0, i32 3
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.gcry_mpi, ptr %32, i32 0, i32 1
  store i32 %31, ptr %37, align 4
  %38 = icmp ult i32 %30, 4
  %39 = select i1 %28, i1 true, i1 %38
  br i1 %39, label %101, label %40

40:                                               ; preds = %34
  %41 = sub i32 0, %26
  %42 = and i32 %41, 3
  %43 = getelementptr inbounds %struct.gcry_mpi, ptr %32, i32 0, i32 5
  %44 = sub nsw i32 0, %42
  %45 = load i8, ptr %27, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %42, 3
  br i1 %47, label %68, label %48

48:                                               ; preds = %40
  %49 = getelementptr i8, ptr %27, i32 1
  %50 = shl nuw nsw i32 %46, 8
  %51 = load i8, ptr %49, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %50, %52
  %54 = icmp eq i32 %42, 2
  br i1 %54, label %68, label %55

55:                                               ; preds = %48
  %56 = getelementptr i8, ptr %27, i32 2
  %57 = shl nuw nsw i32 %53, 8
  %58 = load i8, ptr %56, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %57, %59
  %61 = icmp eq i32 %42, 1
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = getelementptr i8, ptr %27, i32 3
  %64 = shl nuw i32 %60, 8
  %65 = load i8, ptr %63, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %64, %66
  br label %68

68:                                               ; preds = %62, %55, %48, %40
  %69 = phi i32 [ %46, %40 ], [ %53, %48 ], [ %60, %55 ], [ %67, %62 ]
  %70 = getelementptr i8, ptr %27, i32 4
  %71 = getelementptr i8, ptr %70, i32 %44
  %72 = load ptr, ptr %43, align 4
  %73 = add nsw i32 %31, -1
  %74 = getelementptr i32, ptr %72, i32 %73
  store i32 %69, ptr %74, align 4
  %75 = icmp ugt i32 %30, 7
  br i1 %75, label %76, label %101

76:                                               ; preds = %76, %68
  %77 = phi i32 [ %98, %76 ], [ %73, %68 ]
  %78 = phi ptr [ %96, %76 ], [ %71, %68 ]
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = getelementptr i8, ptr %78, i32 1
  %82 = shl nuw nsw i32 %80, 8
  %83 = load i8, ptr %81, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %82, %84
  %86 = getelementptr i8, ptr %78, i32 2
  %87 = shl nuw nsw i32 %85, 8
  %88 = load i8, ptr %86, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %87, %89
  %91 = getelementptr i8, ptr %78, i32 3
  %92 = shl nuw i32 %90, 8
  %93 = load i8, ptr %91, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %92, %94
  %96 = getelementptr i8, ptr %78, i32 4
  %97 = load ptr, ptr %43, align 4
  %98 = add nsw i32 %77, -1
  %99 = getelementptr i32, ptr %97, i32 %98
  store i32 %95, ptr %99, align 4
  %100 = icmp sgt i32 %77, 1
  br i1 %100, label %76, label %101, !llvm.loop !9

101:                                              ; preds = %76, %68, %34, %25, %18
  %102 = phi ptr [ null, %18 ], [ null, %25 ], [ %32, %34 ], [ %32, %76 ], [ %32, %68 ]
  ret ptr %102
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mpi_read_from_buffer(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %0, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = getelementptr i8, ptr %0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %8, %11
  %13 = icmp ugt i32 %12, 16384
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %12) #10
  br label %28

16:                                               ; preds = %5
  %17 = add nuw nsw i32 %12, 7
  %18 = lshr i32 %17, 3
  %19 = add nuw nsw i32 %18, 2
  %20 = icmp ugt i32 %19, %3
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef %3) #10
  br label %28

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %0, i32 2
  %25 = tail call ptr @mpi_read_raw_data(ptr noundef %24, i32 noundef %18)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 %19, ptr %1, align 4
  br label %28

28:                                               ; preds = %27, %23, %21, %14, %2
  %29 = phi ptr [ inttoptr (i32 -22 to ptr), %14 ], [ inttoptr (i32 -22 to ptr), %21 ], [ %25, %27 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -12 to ptr), %23 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpi_fromstr(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i8, ptr %1, align 1
  %4 = icmp eq i8 %3, 45
  %5 = zext i1 %4 to i32
  %6 = getelementptr i8, ptr %1, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 48
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %6, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 120
  %13 = select i1 %12, i32 2, i32 0
  %14 = getelementptr i8, ptr %6, i32 %13
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi ptr [ %6, %2 ], [ %14, %9 ]
  %17 = tail call i32 @strlen(ptr noundef %16)
  %18 = icmp ugt i32 %17, 16777216
  br i1 %18, label %215, label %19

19:                                               ; preds = %15
  %20 = shl nuw nsw i32 %17, 2
  %21 = and i32 %17, 1
  %22 = add nuw nsw i32 %20, 7
  %23 = lshr i32 %22, 3
  %24 = add nuw nsw i32 %23, 3
  %25 = lshr i32 %24, 2
  %26 = load i32, ptr %0, align 4
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = tail call i32 @mpi_resize(ptr noundef %0, i32 noundef %25) #11
  br label %30

30:                                               ; preds = %28, %19
  %31 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 %25, ptr %31, align 4
  %32 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  store i32 %5, ptr %32, align 4
  %33 = icmp eq i32 %17, 0
  br i1 %33, label %216, label %34

34:                                               ; preds = %30
  %35 = sub nsw i32 0, %23
  %36 = and i32 %35, 3
  %37 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %38 = add nuw nsw i32 %36, 1
  br label %39

39:                                               ; preds = %208, %34
  %40 = phi i32 [ %25, %34 ], [ %212, %208 ]
  %41 = phi i32 [ %38, %34 ], [ 1, %208 ]
  %42 = phi i32 [ %21, %34 ], [ 0, %208 ]
  %43 = phi ptr [ %16, %34 ], [ %210, %208 ]
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = getelementptr i8, ptr %43, i32 1
  %47 = load i8, ptr %43, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i8 %47, 0
  br i1 %49, label %215, label %50

50:                                               ; preds = %45, %39
  %51 = phi i32 [ %48, %45 ], [ 48, %39 ]
  %52 = phi ptr [ %46, %45 ], [ %43, %39 ]
  %53 = getelementptr i8, ptr %52, i32 1
  %54 = load i8, ptr %52, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i8 %54, 0
  br i1 %56, label %215, label %57

57:                                               ; preds = %50
  %58 = add nsw i32 %51, -48
  %59 = icmp ult i32 %58, 10
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = add nsw i32 %51, -97
  %62 = icmp ult i32 %61, 6
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = add nsw i32 %51, -87
  br label %70

65:                                               ; preds = %60
  %66 = add nsw i32 %51, -65
  %67 = icmp ult i32 %66, 6
  br i1 %67, label %68, label %215

68:                                               ; preds = %65
  %69 = add nsw i32 %51, -55
  br label %70

70:                                               ; preds = %68, %63, %57
  %71 = phi i32 [ %64, %63 ], [ %69, %68 ], [ %58, %57 ]
  %72 = shl nuw nsw i32 %71, 4
  %73 = add i8 %54, -48
  %74 = icmp ult i8 %73, 10
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = add i8 %54, -97
  %77 = icmp ult i8 %76, 6
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = add i8 %54, -65
  %80 = icmp ult i8 %79, 6
  br i1 %80, label %81, label %215

81:                                               ; preds = %78, %75, %70
  %82 = phi i32 [ -48, %70 ], [ -87, %75 ], [ -55, %78 ]
  %83 = add nsw i32 %82, %55
  %84 = or i32 %72, %83
  %85 = icmp eq i32 %41, 4
  br i1 %85, label %208, label %86

86:                                               ; preds = %81
  %87 = getelementptr i8, ptr %52, i32 2
  %88 = load i8, ptr %53, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i8 %88, 0
  br i1 %90, label %215, label %91

91:                                               ; preds = %86
  %92 = getelementptr i8, ptr %87, i32 1
  %93 = load i8, ptr %87, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i8 %93, 0
  br i1 %95, label %215, label %96

96:                                               ; preds = %91
  %97 = add nsw i32 %89, -48
  %98 = icmp ult i32 %97, 10
  br i1 %98, label %109, label %99

99:                                               ; preds = %96
  %100 = add nsw i32 %89, -97
  %101 = icmp ult i32 %100, 6
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = add nsw i32 %89, -65
  %104 = icmp ult i32 %103, 6
  br i1 %104, label %105, label %215

105:                                              ; preds = %102
  %106 = add nsw i32 %89, -55
  br label %109

107:                                              ; preds = %99
  %108 = add nsw i32 %89, -87
  br label %109

109:                                              ; preds = %107, %105, %96
  %110 = phi i32 [ %108, %107 ], [ %106, %105 ], [ %97, %96 ]
  %111 = shl nuw nsw i32 %110, 4
  %112 = add i8 %93, -48
  %113 = icmp ult i8 %112, 10
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = add i8 %93, -97
  %116 = icmp ult i8 %115, 6
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = add i8 %93, -65
  %119 = icmp ult i8 %118, 6
  br i1 %119, label %120, label %215

120:                                              ; preds = %117, %114, %109
  %121 = phi i32 [ -48, %109 ], [ -87, %114 ], [ -55, %117 ]
  %122 = add nsw i32 %121, %94
  %123 = shl nsw i32 %84, 8
  %124 = or i32 %111, %123
  %125 = or i32 %124, %122
  %126 = icmp eq i32 %41, 3
  br i1 %126, label %208, label %127

127:                                              ; preds = %120
  %128 = getelementptr i8, ptr %87, i32 2
  %129 = load i8, ptr %92, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i8 %129, 0
  br i1 %131, label %215, label %132

132:                                              ; preds = %127
  %133 = getelementptr i8, ptr %128, i32 1
  %134 = load i8, ptr %128, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp eq i8 %134, 0
  br i1 %136, label %215, label %137

137:                                              ; preds = %132
  %138 = add nsw i32 %130, -48
  %139 = icmp ult i32 %138, 10
  br i1 %139, label %150, label %140

140:                                              ; preds = %137
  %141 = add nsw i32 %130, -97
  %142 = icmp ult i32 %141, 6
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  %144 = add nsw i32 %130, -65
  %145 = icmp ult i32 %144, 6
  br i1 %145, label %146, label %215

146:                                              ; preds = %143
  %147 = add nsw i32 %130, -55
  br label %150

148:                                              ; preds = %140
  %149 = add nsw i32 %130, -87
  br label %150

150:                                              ; preds = %148, %146, %137
  %151 = phi i32 [ %149, %148 ], [ %147, %146 ], [ %138, %137 ]
  %152 = shl nuw nsw i32 %151, 4
  %153 = add i8 %134, -48
  %154 = icmp ult i8 %153, 10
  br i1 %154, label %161, label %155

155:                                              ; preds = %150
  %156 = add i8 %134, -97
  %157 = icmp ult i8 %156, 6
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = add i8 %134, -65
  %160 = icmp ult i8 %159, 6
  br i1 %160, label %161, label %215

161:                                              ; preds = %158, %155, %150
  %162 = phi i32 [ -48, %150 ], [ -87, %155 ], [ -55, %158 ]
  %163 = add nsw i32 %162, %135
  %164 = shl i32 %125, 8
  %165 = or i32 %152, %164
  %166 = or i32 %165, %163
  %167 = icmp eq i32 %41, 2
  br i1 %167, label %208, label %168

168:                                              ; preds = %161
  %169 = getelementptr i8, ptr %128, i32 2
  %170 = load i8, ptr %133, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp eq i8 %170, 0
  br i1 %172, label %215, label %173

173:                                              ; preds = %168
  %174 = getelementptr i8, ptr %169, i32 1
  %175 = load i8, ptr %169, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp eq i8 %175, 0
  br i1 %177, label %215, label %178

178:                                              ; preds = %173
  %179 = add nsw i32 %171, -48
  %180 = icmp ult i32 %179, 10
  br i1 %180, label %191, label %181

181:                                              ; preds = %178
  %182 = add nsw i32 %171, -97
  %183 = icmp ult i32 %182, 6
  br i1 %183, label %189, label %184

184:                                              ; preds = %181
  %185 = add nsw i32 %171, -65
  %186 = icmp ult i32 %185, 6
  br i1 %186, label %187, label %215

187:                                              ; preds = %184
  %188 = add nsw i32 %171, -55
  br label %191

189:                                              ; preds = %181
  %190 = add nsw i32 %171, -87
  br label %191

191:                                              ; preds = %189, %187, %178
  %192 = phi i32 [ %190, %189 ], [ %188, %187 ], [ %179, %178 ]
  %193 = shl nuw nsw i32 %192, 4
  %194 = add i8 %175, -48
  %195 = icmp ult i8 %194, 10
  br i1 %195, label %202, label %196

196:                                              ; preds = %191
  %197 = add i8 %175, -97
  %198 = icmp ult i8 %197, 6
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = add i8 %175, -65
  %201 = icmp ult i8 %200, 6
  br i1 %201, label %202, label %215

202:                                              ; preds = %199, %196, %191
  %203 = phi i32 [ -48, %191 ], [ -87, %196 ], [ -55, %199 ]
  %204 = add nsw i32 %203, %176
  %205 = shl i32 %166, 8
  %206 = or i32 %193, %205
  %207 = or i32 %206, %204
  br label %208

208:                                              ; preds = %202, %161, %120, %81
  %209 = phi i32 [ %84, %81 ], [ %125, %120 ], [ %166, %161 ], [ %207, %202 ]
  %210 = phi ptr [ %53, %81 ], [ %92, %120 ], [ %133, %161 ], [ %174, %202 ]
  %211 = load ptr, ptr %37, align 4
  %212 = add nsw i32 %40, -1
  %213 = getelementptr i32, ptr %211, i32 %212
  store i32 %209, ptr %213, align 4
  %214 = icmp sgt i32 %40, 1
  br i1 %214, label %39, label %216

215:                                              ; preds = %199, %184, %173, %168, %158, %143, %132, %127, %117, %102, %91, %86, %78, %65, %50, %45, %15
  tail call void @mpi_clear(ptr noundef %0) #11
  br label %216

216:                                              ; preds = %215, %208, %30
  %217 = phi i32 [ 0, %30 ], [ -22, %215 ], [ 0, %208 ]
  ret i32 %217
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_resize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mpi_scanval(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call ptr @mpi_alloc(i32 noundef 0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @mpi_fromstr(ptr noundef nonnull %2, ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @mpi_free(ptr noundef nonnull %2) #11
  br label %9

8:                                                ; preds = %4
  tail call void @mpi_normalize(ptr noundef nonnull %2) #11
  br label %9

9:                                                ; preds = %8, %7, %1
  %10 = phi ptr [ null, %7 ], [ %2, %8 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_normalize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpi_read_buffer(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, i32 noundef %2, ptr noundef writeonly %3, ptr noundef writeonly %4) #5 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 2
  %10 = icmp ne ptr %1, null
  %11 = icmp ne ptr %3, null
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %73

13:                                               ; preds = %5
  %14 = icmp eq ptr %4, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %4, align 4
  %18 = load i32, ptr %7, align 4
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi i32 [ %18, %15 ], [ %8, %13 ]
  %21 = add i32 %20, -1
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = shl i32 %20, 2
  br label %27

27:                                               ; preds = %33, %23
  %28 = phi i32 [ %21, %23 ], [ %35, %33 ]
  %29 = phi i32 [ 0, %23 ], [ %34, %33 ]
  %30 = getelementptr i32, ptr %25, i32 %28
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = add i32 %29, 4
  %35 = add i32 %28, -1
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %27, label %41

37:                                               ; preds = %27
  %38 = tail call i32 @llvm.ctlz.i32(i32 %31, i1 true) #11, !range !8
  %39 = lshr i32 %38, 3
  %40 = or i32 %39, %29
  br label %41

41:                                               ; preds = %37, %33, %19
  %42 = phi i32 [ %40, %37 ], [ 0, %19 ], [ %26, %33 ]
  %43 = sub i32 %9, %42
  %44 = icmp ugt i32 %43, %2
  store i32 %43, ptr %3, align 4
  br i1 %44, label %73, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %7, align 4
  %47 = sdiv i32 %42, -4
  %48 = add nsw i32 %47, -1
  %49 = add i32 %48, %46
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = srem i32 %42, 4
  %53 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i32, ptr %54, i32 %49
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  store i32 %57, ptr %6, align 4
  %58 = getelementptr i8, ptr %6, i32 %52
  %59 = sub nsw i32 4, %52
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %1, ptr align 1 %58, i32 %59, i1 false)
  %60 = icmp eq i32 %49, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %51
  %62 = getelementptr i8, ptr %1, i32 %59
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i32 [ %49, %61 ], [ %66, %63 ]
  %65 = phi ptr [ %62, %61 ], [ %71, %63 ]
  %66 = add nsw i32 %64, -1
  %67 = load ptr, ptr %53, align 4
  %68 = getelementptr i32, ptr %67, i32 %66
  %69 = load i32, ptr %68, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  store i32 %70, ptr %65, align 1
  %71 = getelementptr i8, ptr %65, i32 4
  %72 = icmp ugt i32 %64, 1
  br i1 %72, label %63, label %73, !llvm.loop !11

73:                                               ; preds = %63, %51, %45, %41, %5
  %74 = phi i32 [ -22, %5 ], [ 0, %45 ], [ 0, %51 ], [ -75, %41 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %74
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mpi_get_buffer(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %77, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 1, i32 %9
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %77, label %14

14:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %15 = load i32, ptr %7, align 4
  %16 = shl i32 %15, 2
  %17 = icmp eq ptr %2, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %2, align 4
  %21 = load i32, ptr %7, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %21, %18 ], [ %15, %14 ]
  %24 = add i32 %23, -1
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = shl i32 %23, 2
  br label %30

30:                                               ; preds = %36, %26
  %31 = phi i32 [ %24, %26 ], [ %38, %36 ]
  %32 = phi i32 [ 0, %26 ], [ %37, %36 ]
  %33 = getelementptr i32, ptr %28, i32 %31
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = add i32 %32, 4
  %38 = add i32 %31, -1
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %30, label %44

40:                                               ; preds = %30
  %41 = tail call i32 @llvm.ctlz.i32(i32 %34, i1 true) #11, !range !8
  %42 = lshr i32 %41, 3
  %43 = or i32 %42, %32
  br label %44

44:                                               ; preds = %40, %36, %22
  %45 = phi i32 [ %43, %40 ], [ 0, %22 ], [ %29, %36 ]
  %46 = sub i32 %16, %45
  %47 = icmp ugt i32 %46, %11
  store i32 %46, ptr %1, align 4
  br i1 %47, label %76, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %7, align 4
  %50 = sdiv i32 %45, -4
  %51 = add nsw i32 %50, -1
  %52 = add i32 %51, %49
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %75

54:                                               ; preds = %48
  %55 = srem i32 %45, 4
  %56 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i32, ptr %57, i32 %52
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #11
  store i32 %60, ptr %4, align 4
  %61 = getelementptr i8, ptr %4, i32 %55
  %62 = sub nsw i32 4, %55
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %12, ptr align 1 %61, i32 %62, i1 false) #11
  %63 = icmp eq i32 %52, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %54
  %65 = getelementptr i8, ptr %12, i32 %62
  br label %66

66:                                               ; preds = %66, %64
  %67 = phi i32 [ %52, %64 ], [ %69, %66 ]
  %68 = phi ptr [ %65, %64 ], [ %73, %66 ]
  %69 = add nsw i32 %67, -1
  %70 = getelementptr i32, ptr %57, i32 %69
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #11
  store i32 %72, ptr %68, align 1
  %73 = getelementptr i8, ptr %68, i32 4
  %74 = icmp ugt i32 %67, 1
  br i1 %74, label %66, label %75, !llvm.loop !11

75:                                               ; preds = %66, %54, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %77

76:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  tail call void @kfree(ptr noundef nonnull %12) #11
  br label %77

77:                                               ; preds = %76, %75, %6, %3
  %78 = phi ptr [ null, %76 ], [ null, %3 ], [ null, %6 ], [ %12, %75 ]
  ret ptr %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpi_write_to_sgl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3) #0 {
  %5 = alloca %struct.sg_mapping_iter, align 4
  %6 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 2
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 44, i1 false), !annotation !12
  %9 = icmp eq ptr %3, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  br label %13

13:                                               ; preds = %10, %4
  %14 = icmp ugt i32 %8, %2
  br i1 %14, label %112, label %15

15:                                               ; preds = %13
  %16 = zext i32 %2 to i64
  %17 = tail call i32 @sg_nents_for_len(ptr noundef %1, i64 noundef %16) #11
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %112, label %19

19:                                               ; preds = %15
  call void @sg_miter_start(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %17, i32 noundef 3) #11
  %20 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %5) #11
  %21 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sg_mapping_iter, ptr %5, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ult i32 %8, %2
  br i1 %25, label %26, label %44

26:                                               ; preds = %40, %19
  %27 = phi i32 [ %33, %40 ], [ %2, %19 ]
  %28 = phi i32 [ %42, %40 ], [ %22, %19 ]
  %29 = phi ptr [ %41, %40 ], [ %24, %19 ]
  %30 = sub i32 %27, %8
  %31 = call i32 @llvm.umin.i32(i32 %30, i32 %28)
  call void @llvm.memset.p0.i32(ptr align 1 %29, i8 0, i32 %31, i1 false)
  %32 = getelementptr i8, ptr %29, i32 %31
  %33 = sub i32 %27, %31
  %34 = sub i32 %28, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %5) #11
  %38 = load i32, ptr %21, align 4
  %39 = load ptr, ptr %23, align 4
  br label %40

40:                                               ; preds = %36, %26
  %41 = phi ptr [ %32, %26 ], [ %39, %36 ]
  %42 = phi i32 [ %34, %26 ], [ %38, %36 ]
  %43 = icmp ugt i32 %33, %8
  br i1 %43, label %26, label %44

44:                                               ; preds = %40, %19
  %45 = phi ptr [ %24, %19 ], [ %41, %40 ]
  %46 = phi i32 [ %22, %19 ], [ %42, %40 ]
  %47 = load i32, ptr %6, align 4
  %48 = add i32 %47, -1
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %111

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  br label %52

52:                                               ; preds = %106, %50
  %53 = phi i32 [ %48, %50 ], [ %109, %106 ]
  %54 = phi i32 [ %46, %50 ], [ %108, %106 ]
  %55 = phi ptr [ %45, %50 ], [ %107, %106 ]
  %56 = load ptr, ptr %51, align 4
  %57 = getelementptr i32, ptr %56, i32 %53
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  %60 = call i32 @llvm.bswap.i32(i32 %58)
  %61 = select i1 %59, i32 0, i32 %60
  %62 = trunc i32 %61 to i8
  %63 = lshr i32 %61, 8
  %64 = trunc i32 %63 to i8
  %65 = lshr i32 %61, 16
  %66 = trunc i32 %65 to i8
  %67 = lshr i32 %61, 24
  %68 = trunc i32 %67 to i8
  %69 = getelementptr i8, ptr %55, i32 1
  store i8 %62, ptr %55, align 1
  %70 = add i32 %54, -1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %52
  %73 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %5) #11
  %74 = load i32, ptr %21, align 4
  %75 = load ptr, ptr %23, align 4
  br label %76

76:                                               ; preds = %72, %52
  %77 = phi ptr [ %69, %52 ], [ %75, %72 ]
  %78 = phi i32 [ %70, %52 ], [ %74, %72 ]
  %79 = getelementptr i8, ptr %77, i32 1
  store i8 %64, ptr %77, align 1
  %80 = add i32 %78, -1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %5) #11
  %84 = load i32, ptr %21, align 4
  %85 = load ptr, ptr %23, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %79, %76 ], [ %85, %82 ]
  %88 = phi i32 [ %80, %76 ], [ %84, %82 ]
  %89 = getelementptr i8, ptr %87, i32 1
  store i8 %66, ptr %87, align 1
  %90 = add i32 %88, -1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %5) #11
  %94 = load i32, ptr %21, align 4
  %95 = load ptr, ptr %23, align 4
  br label %96

96:                                               ; preds = %92, %86
  %97 = phi ptr [ %89, %86 ], [ %95, %92 ]
  %98 = phi i32 [ %90, %86 ], [ %94, %92 ]
  %99 = getelementptr i8, ptr %97, i32 1
  store i8 %68, ptr %97, align 1
  %100 = add i32 %98, -1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %5) #11
  %104 = load i32, ptr %21, align 4
  %105 = load ptr, ptr %23, align 4
  br label %106

106:                                              ; preds = %102, %96
  %107 = phi ptr [ %99, %96 ], [ %105, %102 ]
  %108 = phi i32 [ %100, %96 ], [ %104, %102 ]
  %109 = add i32 %53, -1
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %52, label %111

111:                                              ; preds = %106, %44
  call void @sg_miter_stop(ptr noundef nonnull %5) #11
  br label %112

112:                                              ; preds = %111, %15, %13
  %113 = phi i32 [ 0, %111 ], [ -75, %13 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #11
  ret i32 %113
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mpi_read_raw_from_sgl(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.sg_mapping_iter, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false), !annotation !12
  %4 = zext i32 %1 to i64
  %5 = tail call i32 @sg_nents_for_len(ptr noundef %0, i64 noundef %4) #11
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %108, label %7

7:                                                ; preds = %2
  call void @sg_miter_start(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %5, i32 noundef 5) #11
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.sg_mapping_iter, ptr %3, i32 0, i32 1
  %11 = getelementptr inbounds %struct.sg_mapping_iter, ptr %3, i32 0, i32 2
  br label %12

12:                                               ; preds = %28, %9
  %13 = phi ptr [ null, %9 ], [ %30, %28 ]
  %14 = phi i32 [ 0, %9 ], [ %31, %28 ]
  %15 = phi i32 [ %1, %9 ], [ %32, %28 ]
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %23, %12
  %18 = phi ptr [ %26, %23 ], [ %13, %12 ]
  %19 = phi i32 [ %25, %23 ], [ %14, %12 ]
  %20 = phi i32 [ %24, %23 ], [ 0, %12 ]
  %21 = load i8, ptr %18, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = add nuw i32 %20, 1
  %25 = add i32 %19, -1
  %26 = getelementptr i8, ptr %18, i32 1
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %28, label %17

28:                                               ; preds = %23, %12
  %29 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %3) #11
  %30 = load ptr, ptr %10, align 4
  %31 = load i32, ptr %11, align 4
  %32 = sub i32 %15, %14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %12

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.sg_mapping_iter, ptr %3, i32 0, i32 3
  store i32 %20, ptr %35, align 4
  %36 = sub i32 %15, %20
  %37 = shl i32 %36, 3
  %38 = icmp ugt i32 %37, 16384
  br i1 %38, label %41, label %43

39:                                               ; preds = %28, %7
  %40 = getelementptr inbounds %struct.sg_mapping_iter, ptr %3, i32 0, i32 3
  store i32 0, ptr %40, align 4
  br label %51

41:                                               ; preds = %34
  call void @sg_miter_stop(ptr noundef nonnull %3) #11
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %37) #10
  br label %108

43:                                               ; preds = %34
  %44 = icmp eq i32 %15, %20
  br i1 %44, label %51, label %45

45:                                               ; preds = %43
  %46 = load i8, ptr %18, align 1
  %47 = zext i8 %46 to i32
  %48 = call i32 @llvm.ctlz.i32(i32 %47, i1 false) #11, !range !8
  %49 = add nuw nsw i32 %37, 24
  %50 = sub nsw i32 %49, %48
  br label %51

51:                                               ; preds = %45, %43, %39
  %52 = phi i1 [ false, %45 ], [ true, %43 ], [ true, %39 ]
  %53 = phi i32 [ %36, %45 ], [ %36, %43 ], [ 0, %39 ]
  %54 = phi i32 [ %50, %45 ], [ %37, %43 ], [ 0, %39 ]
  call void @sg_miter_stop(ptr noundef nonnull %3) #11
  %55 = add i32 %53, 3
  %56 = lshr i32 %55, 2
  %57 = call ptr @mpi_alloc(i32 noundef %56) #11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %108, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.gcry_mpi, ptr %57, i32 0, i32 2
  store i32 %54, ptr %60, align 4
  %61 = getelementptr inbounds %struct.gcry_mpi, ptr %57, i32 0, i32 3
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.gcry_mpi, ptr %57, i32 0, i32 1
  store i32 %56, ptr %62, align 4
  br i1 %52, label %108, label %63

63:                                               ; preds = %59
  %64 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %3) #11
  br i1 %64, label %65, label %108

65:                                               ; preds = %63
  %66 = sub i32 0, %53
  %67 = and i32 %66, 3
  %68 = add nsw i32 %56, -1
  %69 = getelementptr inbounds %struct.sg_mapping_iter, ptr %3, i32 0, i32 1
  %70 = getelementptr inbounds %struct.sg_mapping_iter, ptr %3, i32 0, i32 2
  %71 = getelementptr inbounds %struct.gcry_mpi, ptr %57, i32 0, i32 5
  br label %72

72:                                               ; preds = %103, %65
  %73 = phi i32 [ 0, %65 ], [ %105, %103 ]
  %74 = phi i32 [ %67, %65 ], [ %106, %103 ]
  %75 = phi i32 [ %68, %65 ], [ %104, %103 ]
  %76 = load i32, ptr %70, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %103, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %69, align 4
  br label %80

80:                                               ; preds = %98, %78
  %81 = phi i32 [ %100, %98 ], [ %73, %78 ]
  %82 = phi ptr [ %86, %98 ], [ %79, %78 ]
  %83 = phi i32 [ %99, %98 ], [ %75, %78 ]
  %84 = phi i32 [ %101, %98 ], [ 0, %78 ]
  %85 = shl i32 %81, 8
  %86 = getelementptr i8, ptr %82, i32 1
  %87 = load i8, ptr %82, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %85, %88
  %90 = add i32 %84, %74
  %91 = add i32 %90, 1
  %92 = and i32 %91, 3
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load ptr, ptr %71, align 4
  %96 = add i32 %83, -1
  %97 = getelementptr i32, ptr %95, i32 %83
  store i32 %89, ptr %97, align 4
  br label %98

98:                                               ; preds = %94, %80
  %99 = phi i32 [ %96, %94 ], [ %83, %80 ]
  %100 = phi i32 [ 0, %94 ], [ %89, %80 ]
  %101 = add nuw i32 %84, 1
  %102 = icmp eq i32 %101, %76
  br i1 %102, label %103, label %80

103:                                              ; preds = %98, %72
  %104 = phi i32 [ %75, %72 ], [ %99, %98 ]
  %105 = phi i32 [ %73, %72 ], [ %100, %98 ]
  %106 = add i32 %76, %74
  %107 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %3) #11
  br i1 %107, label %72, label %108

108:                                              ; preds = %103, %63, %59, %51, %41, %2
  %109 = phi ptr [ null, %41 ], [ null, %2 ], [ null, %51 ], [ %57, %59 ], [ %57, %63 ], [ %57, %103 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #11
  ret ptr %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpi_print(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = tail call i32 @mpi_get_nbits(ptr noundef %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  %13 = icmp eq ptr %3, null
  %14 = select i1 %13, ptr %6, ptr %3
  %15 = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = tail call i32 @mpi_cmp_ui(ptr noundef %4, i32 noundef 0) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %5
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i1 [ true, %21 ], [ false, %18 ]
  %24 = phi i32 [ 1, %21 ], [ 2, %18 ]
  store i32 0, ptr %14, align 4
  switch i32 %0, label %358 [
    i32 1, label %25
    i32 5, label %134
    i32 2, label %152
    i32 3, label %178
    i32 4, label %294
  ]

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !12
  %26 = call ptr @mpi_get_buffer(ptr noundef %4, ptr noundef nonnull %7, ptr noundef null)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %132, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %7, align 4
  br i1 %23, label %99, label %30

30:                                               ; preds = %34, %28
  %31 = phi i32 [ %32, %34 ], [ %29, %28 ]
  %32 = add i32 %31, -1
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %93

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %26, i32 %32
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %30, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %26, i32 %32
  %40 = zext i8 %36 to i32
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = and i8 %36, -2
  %45 = xor i8 %44, -1
  br label %82

46:                                               ; preds = %38
  %47 = and i32 %40, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = and i8 %36, -4
  %51 = xor i8 %50, -2
  br label %82

52:                                               ; preds = %46
  %53 = and i32 %40, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = and i8 %36, -8
  %57 = xor i8 %56, -4
  br label %82

58:                                               ; preds = %52
  %59 = and i32 %40, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = and i8 %36, -16
  %63 = xor i8 %62, -8
  br label %82

64:                                               ; preds = %58
  %65 = and i32 %40, 16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = and i8 %36, -32
  %69 = xor i8 %68, -16
  br label %82

70:                                               ; preds = %64
  %71 = and i32 %40, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = and i8 %36, -64
  %75 = xor i8 %74, -32
  br label %82

76:                                               ; preds = %70
  %77 = and i32 %40, 64
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = and i8 %36, -128
  %81 = xor i8 %80, -64
  br label %82

82:                                               ; preds = %79, %76, %73, %67, %61, %55, %49, %43
  %83 = phi i8 [ %51, %49 ], [ %63, %61 ], [ %75, %73 ], [ %81, %79 ], [ %69, %67 ], [ %57, %55 ], [ %45, %43 ], [ -128, %76 ]
  store i8 %83, ptr %39, align 1
  %84 = add i32 %31, -2
  %85 = icmp sgt i32 %84, -1
  br i1 %85, label %86, label %93

86:                                               ; preds = %86, %82
  %87 = phi i32 [ %91, %86 ], [ %84, %82 ]
  %88 = getelementptr i8, ptr %26, i32 %87
  %89 = load i8, ptr %88, align 1
  %90 = xor i8 %89, -1
  store i8 %90, ptr %88, align 1
  %91 = add nsw i32 %87, -1
  %92 = icmp eq i32 %87, 0
  br i1 %92, label %93, label %86

93:                                               ; preds = %86, %82, %30
  %94 = load i8, ptr %26, align 1
  %95 = icmp sgt i8 %94, -1
  %96 = load i32, ptr %7, align 4
  br i1 %95, label %97, label %108

97:                                               ; preds = %93
  %98 = add i32 %96, 1
  store i32 %98, ptr %7, align 4
  br label %108

99:                                               ; preds = %28
  %100 = icmp eq i32 %29, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %99
  %102 = icmp eq ptr %1, null
  br i1 %102, label %130, label %125

103:                                              ; preds = %99
  %104 = load i8, ptr %26, align 1
  %105 = icmp sgt i8 %104, -1
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = add i32 %29, 1
  store i32 %107, ptr %7, align 4
  br label %108

108:                                              ; preds = %106, %103, %97, %93
  %109 = phi i32 [ %29, %103 ], [ %107, %106 ], [ %98, %97 ], [ %96, %93 ]
  %110 = phi i1 [ false, %103 ], [ true, %106 ], [ false, %97 ], [ false, %93 ]
  %111 = phi i1 [ false, %103 ], [ true, %106 ], [ true, %97 ], [ false, %93 ]
  %112 = phi i32 [ 0, %103 ], [ -1, %106 ], [ -1, %97 ], [ 0, %93 ]
  %113 = icmp eq ptr %1, null
  %114 = xor i1 %113, true
  %115 = icmp ugt i32 %109, %2
  %116 = select i1 %114, i1 %115, i1 false
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  call void @kfree(ptr noundef nonnull %26) #11
  br label %132

118:                                              ; preds = %108
  br i1 %113, label %130, label %119

119:                                              ; preds = %118
  %120 = or i1 %110, %111
  br i1 %120, label %121, label %125

121:                                              ; preds = %119
  %122 = xor i1 %110, true
  %123 = sext i1 %122 to i8
  %124 = getelementptr i8, ptr %1, i32 1
  store i8 %123, ptr %1, align 1
  br label %125

125:                                              ; preds = %121, %119, %101
  %126 = phi i32 [ 0, %101 ], [ %112, %121 ], [ %112, %119 ]
  %127 = phi i32 [ 0, %101 ], [ %109, %121 ], [ %109, %119 ]
  %128 = phi ptr [ %1, %101 ], [ %124, %121 ], [ %1, %119 ]
  %129 = add i32 %127, %126
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %128, ptr nonnull align 1 %26, i32 %129, i1 false)
  br label %130

130:                                              ; preds = %125, %118, %101
  call void @kfree(ptr noundef nonnull %26) #11
  %131 = load i32, ptr %7, align 4
  store i32 %131, ptr %14, align 4
  br label %132

132:                                              ; preds = %130, %117, %25
  %133 = phi i32 [ -7, %117 ], [ 0, %130 ], [ -22, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %358

134:                                              ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  %135 = add i32 %12, 7
  %136 = lshr i32 %135, 3
  store i32 %136, ptr %8, align 4
  %137 = icmp eq ptr %1, null
  %138 = xor i1 %137, true
  %139 = icmp ugt i32 %136, %2
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %150, label %141

141:                                              ; preds = %134
  br i1 %137, label %148, label %142

142:                                              ; preds = %141
  %143 = call ptr @mpi_get_buffer(ptr noundef %4, ptr noundef nonnull %8, ptr noundef null)
  %144 = icmp eq ptr %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %142
  %146 = load i32, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %1, ptr nonnull align 1 %143, i32 %146, i1 false)
  call void @kfree(ptr noundef nonnull %143) #11
  %147 = load i32, ptr %8, align 4
  br label %148

148:                                              ; preds = %145, %141
  %149 = phi i32 [ %147, %145 ], [ %136, %141 ]
  store i32 %149, ptr %14, align 4
  br label %150

150:                                              ; preds = %148, %142, %134
  %151 = phi i32 [ 0, %148 ], [ -7, %134 ], [ -22, %142 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %358

152:                                              ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  %153 = add i32 %12, 7
  %154 = lshr i32 %153, 3
  store i32 %154, ptr %9, align 4
  br i1 %23, label %155, label %176

155:                                              ; preds = %152
  %156 = icmp eq ptr %1, null
  %157 = xor i1 %156, true
  %158 = add nuw nsw i32 %154, 2
  %159 = icmp ugt i32 %158, %2
  %160 = select i1 %157, i1 %159, i1 false
  br i1 %160, label %176, label %161

161:                                              ; preds = %155
  br i1 %156, label %174, label %162

162:                                              ; preds = %161
  %163 = lshr i32 %12, 8
  %164 = trunc i32 %163 to i8
  store i8 %164, ptr %1, align 1
  %165 = trunc i32 %12 to i8
  %166 = getelementptr i8, ptr %1, i32 1
  store i8 %165, ptr %166, align 1
  %167 = call ptr @mpi_get_buffer(ptr noundef %4, ptr noundef nonnull %9, ptr noundef null)
  %168 = icmp eq ptr %167, null
  br i1 %168, label %176, label %169

169:                                              ; preds = %162
  %170 = getelementptr i8, ptr %1, i32 2
  %171 = load i32, ptr %9, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %170, ptr nonnull align 1 %167, i32 %171, i1 false)
  call void @kfree(ptr noundef nonnull %167) #11
  %172 = load i32, ptr %9, align 4
  %173 = add i32 %172, 2
  br label %174

174:                                              ; preds = %169, %161
  %175 = phi i32 [ %173, %169 ], [ %158, %161 ]
  store i32 %175, ptr %14, align 4
  br label %176

176:                                              ; preds = %174, %162, %155, %152
  %177 = phi i32 [ 0, %174 ], [ -22, %152 ], [ -7, %155 ], [ -22, %162 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  br label %358

178:                                              ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 0, ptr %10, align 4, !annotation !12
  %179 = call ptr @mpi_get_buffer(ptr noundef %4, ptr noundef nonnull %10, ptr noundef null)
  %180 = icmp eq ptr %179, null
  br i1 %180, label %292, label %181

181:                                              ; preds = %178
  %182 = load i32, ptr %10, align 4
  br i1 %23, label %252, label %183

183:                                              ; preds = %187, %181
  %184 = phi i32 [ %185, %187 ], [ %182, %181 ]
  %185 = add i32 %184, -1
  %186 = icmp sgt i32 %185, -1
  br i1 %186, label %187, label %246

187:                                              ; preds = %183
  %188 = getelementptr i8, ptr %179, i32 %185
  %189 = load i8, ptr %188, align 1
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %183, label %191

191:                                              ; preds = %187
  %192 = getelementptr i8, ptr %179, i32 %185
  %193 = zext i8 %189 to i32
  %194 = and i32 %193, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %191
  %197 = and i8 %189, -2
  %198 = xor i8 %197, -1
  br label %235

199:                                              ; preds = %191
  %200 = and i32 %193, 2
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = and i8 %189, -4
  %204 = xor i8 %203, -2
  br label %235

205:                                              ; preds = %199
  %206 = and i32 %193, 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = and i8 %189, -8
  %210 = xor i8 %209, -4
  br label %235

211:                                              ; preds = %205
  %212 = and i32 %193, 8
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = and i8 %189, -16
  %216 = xor i8 %215, -8
  br label %235

217:                                              ; preds = %211
  %218 = and i32 %193, 16
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  %221 = and i8 %189, -32
  %222 = xor i8 %221, -16
  br label %235

223:                                              ; preds = %217
  %224 = and i32 %193, 32
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %223
  %227 = and i8 %189, -64
  %228 = xor i8 %227, -32
  br label %235

229:                                              ; preds = %223
  %230 = and i32 %193, 64
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %229
  %233 = and i8 %189, -128
  %234 = xor i8 %233, -64
  br label %235

235:                                              ; preds = %232, %229, %226, %220, %214, %208, %202, %196
  %236 = phi i8 [ %204, %202 ], [ %216, %214 ], [ %228, %226 ], [ %234, %232 ], [ %222, %220 ], [ %210, %208 ], [ %198, %196 ], [ -128, %229 ]
  store i8 %236, ptr %192, align 1
  %237 = add i32 %184, -2
  %238 = icmp sgt i32 %237, -1
  br i1 %238, label %239, label %246

239:                                              ; preds = %239, %235
  %240 = phi i32 [ %244, %239 ], [ %237, %235 ]
  %241 = getelementptr i8, ptr %179, i32 %240
  %242 = load i8, ptr %241, align 1
  %243 = xor i8 %242, -1
  store i8 %243, ptr %241, align 1
  %244 = add nsw i32 %240, -1
  %245 = icmp eq i32 %240, 0
  br i1 %245, label %246, label %239

246:                                              ; preds = %239, %235, %183
  %247 = load i8, ptr %179, align 1
  %248 = icmp sgt i8 %247, -1
  br i1 %248, label %249, label %259

249:                                              ; preds = %246
  %250 = load i32, ptr %10, align 4
  %251 = add i32 %250, 1
  store i32 %251, ptr %10, align 4
  br label %259

252:                                              ; preds = %181
  %253 = icmp eq i32 %182, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %252
  %255 = load i8, ptr %179, align 1
  %256 = icmp sgt i8 %255, -1
  br i1 %256, label %259, label %257

257:                                              ; preds = %254
  %258 = add i32 %182, 1
  store i32 %258, ptr %10, align 4
  br label %259

259:                                              ; preds = %257, %254, %252, %249, %246
  %260 = phi i1 [ false, %252 ], [ false, %254 ], [ true, %257 ], [ false, %246 ], [ false, %249 ]
  %261 = phi i1 [ false, %252 ], [ false, %254 ], [ true, %257 ], [ false, %246 ], [ true, %249 ]
  %262 = phi i32 [ 0, %252 ], [ 0, %254 ], [ -1, %257 ], [ 0, %246 ], [ -1, %249 ]
  %263 = icmp eq ptr %1, null
  br i1 %263, label %289, label %264

264:                                              ; preds = %259
  %265 = load i32, ptr %10, align 4
  %266 = add i32 %265, 4
  %267 = icmp ugt i32 %266, %2
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  call void @kfree(ptr noundef nonnull %179) #11
  br label %292

269:                                              ; preds = %264
  %270 = lshr i32 %265, 24
  %271 = trunc i32 %270 to i8
  %272 = getelementptr i8, ptr %1, i32 1
  store i8 %271, ptr %1, align 1
  %273 = lshr i32 %265, 16
  %274 = trunc i32 %273 to i8
  %275 = getelementptr i8, ptr %1, i32 2
  store i8 %274, ptr %272, align 1
  %276 = lshr i32 %265, 8
  %277 = trunc i32 %276 to i8
  %278 = getelementptr i8, ptr %1, i32 3
  store i8 %277, ptr %275, align 1
  %279 = trunc i32 %265 to i8
  %280 = getelementptr i8, ptr %1, i32 4
  store i8 %279, ptr %278, align 1
  %281 = or i1 %260, %261
  br i1 %281, label %282, label %286

282:                                              ; preds = %269
  %283 = xor i1 %260, true
  %284 = sext i1 %283 to i8
  %285 = getelementptr i8, ptr %1, i32 5
  store i8 %284, ptr %280, align 1
  br label %286

286:                                              ; preds = %282, %269
  %287 = phi ptr [ %285, %282 ], [ %280, %269 ]
  %288 = add i32 %265, %262
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %287, ptr nonnull align 1 %179, i32 %288, i1 false)
  br label %289

289:                                              ; preds = %286, %259
  call void @kfree(ptr noundef nonnull %179) #11
  %290 = load i32, ptr %10, align 4
  %291 = add i32 %290, 4
  store i32 %291, ptr %14, align 4
  br label %292

292:                                              ; preds = %289, %268, %178
  %293 = phi i32 [ -7, %268 ], [ 0, %289 ], [ -22, %178 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  br label %358

294:                                              ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  store i32 0, ptr %11, align 4
  %295 = call ptr @mpi_get_buffer(ptr noundef %4, ptr noundef nonnull %11, ptr noundef null)
  %296 = icmp eq ptr %295, null
  br i1 %296, label %356, label %297

297:                                              ; preds = %294
  %298 = load i32, ptr %11, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %297
  %301 = load i8, ptr %295, align 1
  %302 = icmp sgt i8 %301, -1
  br i1 %302, label %304, label %303

303:                                              ; preds = %300, %297
  br label %304

304:                                              ; preds = %303, %300
  %305 = phi i1 [ false, %303 ], [ true, %300 ]
  %306 = phi i32 [ 2, %303 ], [ 0, %300 ]
  %307 = icmp eq ptr %1, null
  %308 = shl i32 %298, 1
  %309 = add i32 %24, %308
  %310 = add i32 %309, %306
  br i1 %307, label %352, label %311

311:                                              ; preds = %304
  %312 = icmp ugt i32 %310, %2
  br i1 %312, label %354, label %313

313:                                              ; preds = %311
  br i1 %23, label %316, label %314

314:                                              ; preds = %313
  %315 = getelementptr i8, ptr %1, i32 1
  store i8 45, ptr %1, align 1
  br label %316

316:                                              ; preds = %314, %313
  %317 = phi ptr [ %315, %314 ], [ %1, %313 ]
  br i1 %305, label %321, label %318

318:                                              ; preds = %316
  %319 = getelementptr i8, ptr %317, i32 1
  store i8 48, ptr %317, align 1
  %320 = getelementptr i8, ptr %317, i32 2
  store i8 48, ptr %319, align 1
  br label %321

321:                                              ; preds = %318, %316
  %322 = phi ptr [ %320, %318 ], [ %317, %316 ]
  br i1 %299, label %346, label %323

323:                                              ; preds = %323, %321
  %324 = phi ptr [ %342, %323 ], [ %322, %321 ]
  %325 = phi i32 [ %343, %323 ], [ 0, %321 ]
  %326 = getelementptr i8, ptr %295, i32 %325
  %327 = load i8, ptr %326, align 1
  %328 = zext i8 %327 to i32
  %329 = lshr i32 %328, 4
  %330 = icmp ult i8 %327, -96
  %331 = or i32 %329, 48
  %332 = add nuw nsw i32 %329, 55
  %333 = select i1 %330, i32 %331, i32 %332
  %334 = trunc i32 %333 to i8
  %335 = getelementptr i8, ptr %324, i32 1
  store i8 %334, ptr %324, align 1
  %336 = and i32 %328, 15
  %337 = icmp ult i32 %336, 10
  %338 = or i32 %336, 48
  %339 = add nuw nsw i32 %336, 55
  %340 = select i1 %337, i32 %338, i32 %339
  %341 = trunc i32 %340 to i8
  %342 = getelementptr i8, ptr %324, i32 2
  store i8 %341, ptr %335, align 1
  %343 = add nuw i32 %325, 1
  %344 = load i32, ptr %11, align 4
  %345 = icmp ult i32 %343, %344
  br i1 %345, label %323, label %346

346:                                              ; preds = %323, %321
  %347 = phi ptr [ %322, %321 ], [ %342, %323 ]
  %348 = getelementptr i8, ptr %347, i32 1
  store i8 0, ptr %347, align 1
  %349 = ptrtoint ptr %348 to i32
  %350 = ptrtoint ptr %1 to i32
  %351 = sub i32 %349, %350
  br label %352

352:                                              ; preds = %346, %304
  %353 = phi i32 [ %351, %346 ], [ %310, %304 ]
  store i32 %353, ptr %14, align 4
  br label %354

354:                                              ; preds = %352, %311
  %355 = phi i32 [ 0, %352 ], [ -7, %311 ]
  call void @kfree(ptr noundef nonnull %295) #11
  br label %356

356:                                              ; preds = %354, %294
  %357 = phi i32 [ -22, %294 ], [ %355, %354 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  br label %358

358:                                              ; preds = %356, %292, %176, %150, %132, %22
  %359 = phi i32 [ %133, %132 ], [ %151, %150 ], [ %177, %176 ], [ %293, %292 ], [ %357, %356 ], [ -22, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  ret i32 %359
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_get_nbits(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmp_ui(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = distinct !{!11, !10}
!12 = !{!"auto-init"}
