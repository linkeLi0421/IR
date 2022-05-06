; ModuleID = '/llk/IR/lib/linear_ranges.c_pt.bc'
source_filename = "../lib/linear_ranges.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linear_range_values_in_range:\09\09\09\09\09"
module asm "\09.asciz \09\22linear_range_values_in_range\22\09\09\09\09\09"
module asm "__kstrtabns_linear_range_values_in_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linear_range_values_in_range_array:\09\09\09\09\09"
module asm "\09.asciz \09\22linear_range_values_in_range_array\22\09\09\09\09\09"
module asm "__kstrtabns_linear_range_values_in_range_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linear_range_get_max_value:\09\09\09\09\09"
module asm "\09.asciz \09\22linear_range_get_max_value\22\09\09\09\09\09"
module asm "__kstrtabns_linear_range_get_max_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linear_range_get_value:\09\09\09\09\09"
module asm "\09.asciz \09\22linear_range_get_value\22\09\09\09\09\09"
module asm "__kstrtabns_linear_range_get_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linear_range_get_value_array:\09\09\09\09\09"
module asm "\09.asciz \09\22linear_range_get_value_array\22\09\09\09\09\09"
module asm "__kstrtabns_linear_range_get_value_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linear_range_get_selector_low:\09\09\09\09\09"
module asm "\09.asciz \09\22linear_range_get_selector_low\22\09\09\09\09\09"
module asm "__kstrtabns_linear_range_get_selector_low:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linear_range_get_selector_low_array:\09\09\09\09\09"
module asm "\09.asciz \09\22linear_range_get_selector_low_array\22\09\09\09\09\09"
module asm "__kstrtabns_linear_range_get_selector_low_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linear_range_get_selector_high:\09\09\09\09\09"
module asm "\09.asciz \09\22linear_range_get_selector_high\22\09\09\09\09\09"
module asm "__kstrtabns_linear_range_get_selector_high:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linear_range_get_selector_within:\09\09\09\09\09"
module asm "\09.asciz \09\22linear_range_get_selector_within\22\09\09\09\09\09"
module asm "__kstrtabns_linear_range_get_selector_within:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }

@__kstrtab_linear_range_values_in_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_linear_range_values_in_range = external dso_local constant [0 x i8], align 1
@__ksymtab_linear_range_values_in_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linear_range_values_in_range to i32), ptr @__kstrtab_linear_range_values_in_range, ptr @__kstrtabns_linear_range_values_in_range }, section "___ksymtab_gpl+linear_range_values_in_range", align 4
@__kstrtab_linear_range_values_in_range_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_linear_range_values_in_range_array = external dso_local constant [0 x i8], align 1
@__ksymtab_linear_range_values_in_range_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linear_range_values_in_range_array to i32), ptr @__kstrtab_linear_range_values_in_range_array, ptr @__kstrtabns_linear_range_values_in_range_array }, section "___ksymtab_gpl+linear_range_values_in_range_array", align 4
@__kstrtab_linear_range_get_max_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_linear_range_get_max_value = external dso_local constant [0 x i8], align 1
@__ksymtab_linear_range_get_max_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linear_range_get_max_value to i32), ptr @__kstrtab_linear_range_get_max_value, ptr @__kstrtabns_linear_range_get_max_value }, section "___ksymtab_gpl+linear_range_get_max_value", align 4
@__kstrtab_linear_range_get_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_linear_range_get_value = external dso_local constant [0 x i8], align 1
@__ksymtab_linear_range_get_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linear_range_get_value to i32), ptr @__kstrtab_linear_range_get_value, ptr @__kstrtabns_linear_range_get_value }, section "___ksymtab_gpl+linear_range_get_value", align 4
@__kstrtab_linear_range_get_value_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_linear_range_get_value_array = external dso_local constant [0 x i8], align 1
@__ksymtab_linear_range_get_value_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linear_range_get_value_array to i32), ptr @__kstrtab_linear_range_get_value_array, ptr @__kstrtabns_linear_range_get_value_array }, section "___ksymtab_gpl+linear_range_get_value_array", align 4
@__kstrtab_linear_range_get_selector_low = external dso_local constant [0 x i8], align 1
@__kstrtabns_linear_range_get_selector_low = external dso_local constant [0 x i8], align 1
@__ksymtab_linear_range_get_selector_low = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linear_range_get_selector_low to i32), ptr @__kstrtab_linear_range_get_selector_low, ptr @__kstrtabns_linear_range_get_selector_low }, section "___ksymtab_gpl+linear_range_get_selector_low", align 4
@__kstrtab_linear_range_get_selector_low_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_linear_range_get_selector_low_array = external dso_local constant [0 x i8], align 1
@__ksymtab_linear_range_get_selector_low_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linear_range_get_selector_low_array to i32), ptr @__kstrtab_linear_range_get_selector_low_array, ptr @__kstrtabns_linear_range_get_selector_low_array }, section "___ksymtab_gpl+linear_range_get_selector_low_array", align 4
@__kstrtab_linear_range_get_selector_high = external dso_local constant [0 x i8], align 1
@__kstrtabns_linear_range_get_selector_high = external dso_local constant [0 x i8], align 1
@__ksymtab_linear_range_get_selector_high = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linear_range_get_selector_high to i32), ptr @__kstrtab_linear_range_get_selector_high, ptr @__kstrtabns_linear_range_get_selector_high }, section "___ksymtab_gpl+linear_range_get_selector_high", align 4
@__kstrtab_linear_range_get_selector_within = external dso_local constant [0 x i8], align 1
@__kstrtabns_linear_range_get_selector_within = external dso_local constant [0 x i8], align 1
@__ksymtab_linear_range_get_selector_within = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linear_range_get_selector_within to i32), ptr @__kstrtab_linear_range_get_selector_within, ptr @__kstrtabns_linear_range_get_selector_within }, section "___ksymtab_gpl+linear_range_get_selector_within", align 4
@__UNIQUE_ID_description100 = internal constant [47 x i8] c"linear_ranges.description=linear-ranges helper\00", section ".modinfo", align 1
@__UNIQUE_ID_file101 = internal constant [37 x i8] c"linear_ranges.file=lib/linear_ranges\00", section ".modinfo", align 1
@__UNIQUE_ID_license102 = internal constant [26 x i8] c"linear_ranges.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_description100, ptr @__UNIQUE_ID_file101, ptr @__UNIQUE_ID_license102, ptr @__ksymtab_linear_range_get_max_value, ptr @__ksymtab_linear_range_get_selector_high, ptr @__ksymtab_linear_range_get_selector_low, ptr @__ksymtab_linear_range_get_selector_low_array, ptr @__ksymtab_linear_range_get_selector_within, ptr @__ksymtab_linear_range_get_value, ptr @__ksymtab_linear_range_get_value_array, ptr @__ksymtab_linear_range_values_in_range, ptr @__ksymtab_linear_range_values_in_range_array], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @linear_range_values_in_range(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %5, 1
  %9 = sub i32 %8, %7
  br label %10

10:                                               ; preds = %3, %1
  %11 = phi i32 [ %9, %3 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @linear_range_values_in_range_array(ptr noundef readonly %0, i32 noundef %1) #1 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %21

4:                                                ; preds = %16, %2
  %5 = phi i32 [ %18, %16 ], [ 0, %2 ]
  %6 = phi i32 [ %19, %16 ], [ 0, %2 ]
  %7 = getelementptr %struct.linear_range, ptr %0, i32 %6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = getelementptr %struct.linear_range, ptr %0, i32 %6, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.linear_range, ptr %0, i32 %6, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %11, 1
  %15 = icmp eq i32 %14, %13
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = sub i32 %5, %13
  %18 = add i32 %17, %14
  %19 = add nuw nsw i32 %6, 1
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %4

21:                                               ; preds = %16, %9, %4, %2
  %22 = phi i32 [ 0, %2 ], [ 0, %4 ], [ %18, %16 ], [ 0, %9 ]
  ret i32 %22
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @linear_range_get_max_value(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = mul i32 %7, %9
  %11 = add i32 %10, %2
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @linear_range_get_value(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, %1
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %0, align 4
  %13 = sub i32 %1, %5
  %14 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, %13
  %17 = add i32 %16, %12
  store i32 %17, ptr %2, align 4
  br label %18

18:                                               ; preds = %11, %7, %3
  %19 = phi i32 [ 0, %11 ], [ -22, %7 ], [ -22, %3 ]
  ret i32 %19
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @linear_range_get_value_array(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %23, %4
  %7 = phi i32 [ %24, %23 ], [ 0, %4 ]
  %8 = getelementptr %struct.linear_range, ptr %0, i32 %7, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %2
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = getelementptr %struct.linear_range, ptr %0, i32 %7, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, %2
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.linear_range, ptr %0, i32 %7
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %2, %9
  %19 = getelementptr %struct.linear_range, ptr %0, i32 %7, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = mul i32 %20, %18
  %22 = add i32 %21, %17
  store i32 %22, ptr %3, align 4
  br label %26

23:                                               ; preds = %11, %6
  %24 = add nuw nsw i32 %7, 1
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %6

26:                                               ; preds = %23, %15, %4
  %27 = phi i32 [ 0, %15 ], [ -22, %4 ], [ -22, %23 ]
  ret i32 %27
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @linear_range_get_selector_low(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  store i8 0, ptr %3, align 1
  %5 = load i32, ptr %0, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %31, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %9, %11
  %13 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %12, %14
  %16 = add i32 %15, %5
  %17 = icmp ult i32 %16, %1
  br i1 %17, label %29, label %18

18:                                               ; preds = %7
  store i8 1, ptr %3, align 1
  %19 = load i32, ptr %13, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, ptr %10, align 4
  br label %29

23:                                               ; preds = %18
  %24 = load i32, ptr %0, align 4
  %25 = sub i32 %1, %24
  %26 = udiv i32 %25, %19
  %27 = load i32, ptr %10, align 4
  %28 = add i32 %27, %26
  br label %29

29:                                               ; preds = %23, %21, %7
  %30 = phi i32 [ %9, %7 ], [ %28, %23 ], [ %22, %21 ]
  store i32 %30, ptr %2, align 4
  br label %31

31:                                               ; preds = %29, %4
  %32 = phi i32 [ -22, %4 ], [ 0, %29 ]
  ret i32 %32
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @linear_range_get_selector_low_array(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) #3 {
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %39, %5
  %8 = phi i32 [ %41, %39 ], [ 0, %5 ]
  %9 = phi i32 [ %40, %39 ], [ -22, %5 ]
  %10 = getelementptr %struct.linear_range, ptr %0, i32 %8
  store i8 0, ptr %4, align 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, %2
  br i1 %12, label %39, label %13

13:                                               ; preds = %7
  %14 = getelementptr %struct.linear_range, ptr %0, i32 %8, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.linear_range, ptr %0, i32 %8, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %15, %17
  %19 = getelementptr %struct.linear_range, ptr %0, i32 %8, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = mul i32 %18, %20
  %22 = add i32 %21, %11
  %23 = icmp ult i32 %22, %2
  br i1 %23, label %35, label %24

24:                                               ; preds = %13
  store i8 1, ptr %4, align 1
  %25 = load i32, ptr %19, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, ptr %16, align 4
  br label %35

29:                                               ; preds = %24
  %30 = load i32, ptr %10, align 4
  %31 = sub i32 %2, %30
  %32 = udiv i32 %31, %25
  %33 = load i32, ptr %16, align 4
  %34 = add i32 %33, %32
  br label %35

35:                                               ; preds = %29, %27, %13
  %36 = phi i32 [ %15, %13 ], [ %34, %29 ], [ %28, %27 ]
  store i32 %36, ptr %3, align 4
  %37 = load i8, ptr %4, align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %7
  %40 = phi i32 [ 0, %35 ], [ %9, %7 ]
  %41 = add nuw nsw i32 %8, 1
  %42 = icmp eq i32 %41, %1
  br i1 %42, label %43, label %7

43:                                               ; preds = %39, %35, %5
  %44 = phi i32 [ -22, %5 ], [ 0, %35 ], [ %40, %39 ]
  ret i32 %44
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @linear_range_get_selector_high(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  store i8 0, ptr %3, align 1
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %10, %12
  %14 = add i32 %13, %5
  %15 = icmp ult i32 %14, %1
  br i1 %15, label %33, label %16

16:                                               ; preds = %4
  %17 = icmp ugt i32 %5, %1
  br i1 %17, label %31, label %18

18:                                               ; preds = %16
  store i8 1, ptr %3, align 1
  %19 = load i32, ptr %11, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, ptr %6, align 4
  br label %31

23:                                               ; preds = %18
  %24 = load i32, ptr %0, align 4
  %25 = add i32 %1, -1
  %26 = add i32 %25, %19
  %27 = sub i32 %26, %24
  %28 = udiv i32 %27, %19
  %29 = load i32, ptr %8, align 4
  %30 = add i32 %29, %28
  br label %31

31:                                               ; preds = %23, %21, %16
  %32 = phi i32 [ %9, %16 ], [ %30, %23 ], [ %22, %21 ]
  store i32 %32, ptr %2, align 4
  br label %33

33:                                               ; preds = %31, %4
  %34 = phi i32 [ -22, %4 ], [ 0, %31 ]
  ret i32 %34
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @linear_range_get_selector_within(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  br label %26

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = getelementptr inbounds %struct.linear_range, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %14, %16
  %18 = add i32 %17, %4
  %19 = icmp ult i32 %18, %1
  br i1 %19, label %26, label %20

20:                                               ; preds = %9
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = sub i32 %1, %4
  %24 = udiv i32 %23, %16
  %25 = add i32 %24, %13
  br label %26

26:                                               ; preds = %22, %20, %9, %6
  %27 = phi i32 [ %8, %6 ], [ %25, %22 ], [ %11, %9 ], [ %13, %20 ]
  store i32 %27, ptr %2, align 4
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
