; ModuleID = '/llk/IR/drivers/rtc/lib.c_pt.bc'
source_filename = "../drivers/rtc/lib.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_month_days:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_month_days\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_month_days:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_year_days:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_year_days\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_year_days:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_time64_to_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_time64_to_tm\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_time64_to_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_valid_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_valid_tm\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_valid_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_tm_to_time64:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_tm_to_time64\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_tm_to_time64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_tm_to_ktime:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_tm_to_ktime\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_tm_to_ktime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_ktime_to_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_ktime_to_tm\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_ktime_to_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }

@rtc_days_in_month = internal unnamed_addr constant [12 x i8] c"\1F\1C\1F\1E\1F\1E\1F\1F\1E\1F\1E\1F", align 1
@__kstrtab_rtc_month_days = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_month_days = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_month_days = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_month_days to i32), ptr @__kstrtab_rtc_month_days, ptr @__kstrtabns_rtc_month_days }, section "___ksymtab+rtc_month_days", align 4
@rtc_ydays = internal unnamed_addr constant [2 x [13 x i16]] [[13 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334, i16 365], [13 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335, i16 366]], align 2
@__kstrtab_rtc_year_days = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_year_days = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_year_days = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_year_days to i32), ptr @__kstrtab_rtc_year_days, ptr @__kstrtabns_rtc_year_days }, section "___ksymtab+rtc_year_days", align 4
@__kstrtab_rtc_time64_to_tm = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_time64_to_tm = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_time64_to_tm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_time64_to_tm to i32), ptr @__kstrtab_rtc_time64_to_tm, ptr @__kstrtabns_rtc_time64_to_tm }, section "___ksymtab+rtc_time64_to_tm", align 4
@__kstrtab_rtc_valid_tm = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_valid_tm = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_valid_tm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_valid_tm to i32), ptr @__kstrtab_rtc_valid_tm, ptr @__kstrtabns_rtc_valid_tm }, section "___ksymtab+rtc_valid_tm", align 4
@__kstrtab_rtc_tm_to_time64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_tm_to_time64 = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_tm_to_time64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_tm_to_time64 to i32), ptr @__kstrtab_rtc_tm_to_time64, ptr @__kstrtabns_rtc_tm_to_time64 }, section "___ksymtab+rtc_tm_to_time64", align 4
@__kstrtab_rtc_tm_to_ktime = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_tm_to_ktime = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_tm_to_ktime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_tm_to_ktime to i32), ptr @__kstrtab_rtc_tm_to_ktime, ptr @__kstrtabns_rtc_tm_to_ktime }, section "___ksymtab_gpl+rtc_tm_to_ktime", align 4
@__kstrtab_rtc_ktime_to_tm = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_ktime_to_tm = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_ktime_to_tm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_ktime_to_tm to i32), ptr @__kstrtab_rtc_ktime_to_tm, ptr @__kstrtabns_rtc_ktime_to_tm }, section "___ksymtab_gpl+rtc_ktime_to_tm", align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_rtc_ktime_to_tm, ptr @__ksymtab_rtc_month_days, ptr @__ksymtab_rtc_time64_to_tm, ptr @__ksymtab_rtc_tm_to_ktime, ptr @__ksymtab_rtc_tm_to_time64, ptr @__ksymtab_rtc_valid_tm, ptr @__ksymtab_rtc_year_days], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @rtc_month_days(i32 noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr [12 x i8], ptr @rtc_days_in_month, i32 0, i32 %0
  %4 = load i8, ptr %3, align 1
  %5 = and i32 %1, 3
  %6 = icmp ne i32 %5, 0
  %7 = urem i32 %1, 100
  %8 = icmp eq i32 %7, 0
  %9 = or i1 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = urem i32 %1, 400
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ %12, %10 ], [ true, %2 ]
  %15 = zext i8 %4 to i32
  %16 = icmp eq i32 %0, 1
  %17 = and i1 %16, %14
  %18 = zext i1 %17 to i32
  %19 = add nuw nsw i32 %18, %15
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @rtc_year_days(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 3
  %5 = icmp eq i32 %4, 0
  %6 = urem i32 %2, 100
  %7 = icmp ne i32 %6, 0
  %8 = urem i32 %2, 400
  %9 = icmp eq i32 %8, 0
  %10 = and i1 %5, %7
  %11 = or i1 %10, %9
  %12 = zext i1 %11 to i32
  %13 = getelementptr [2 x [13 x i16]], ptr @rtc_ydays, i32 0, i32 %12, i32 %1
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = add i32 %0, -1
  %17 = add i32 %16, %15
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtc_time64_to_tm(i64 noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i64 @div_s64_rem(i64 noundef %0, i32 noundef 86400, ptr noundef nonnull %3) #6
  %5 = trunc i64 %4 to i32
  %6 = add i32 %5, 4
  %7 = srem i32 %6, 7
  %8 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %7, ptr %8, align 4
  %9 = shl i32 %5, 2
  %10 = add i32 %9, 2877875
  %11 = freeze i32 %10
  %12 = udiv i32 %11, 146097
  %13 = mul i32 %12, 146097
  %14 = sub i32 %11, %13
  %15 = and i32 %14, 262140
  %16 = or i32 %15, 3
  %17 = zext i32 %16 to i64
  %18 = mul nuw nsw i64 %17, 2939745
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = trunc i64 %18 to i32
  %22 = udiv i32 %21, 11758980
  %23 = mul nuw nsw i32 %22, 2141
  %24 = add nuw nsw i32 %23, 132377
  %25 = lshr i32 %24, 16
  %26 = icmp ugt i32 %21, -696719417
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = add nsw i32 %25, -12
  %29 = add nsw i32 %22, -306
  br label %38

30:                                               ; preds = %2
  %31 = icmp eq i32 %20, 0
  %32 = select i1 %31, i32 %12, i32 %20
  %33 = and i32 %32, 3
  %34 = icmp eq i32 %33, 0
  %35 = add nuw nsw i32 %22, 59
  %36 = zext i1 %34 to i32
  %37 = add nuw nsw i32 %35, %36
  br label %38

38:                                               ; preds = %30, %27
  %39 = phi i32 [ %25, %30 ], [ %28, %27 ]
  %40 = phi i32 [ %37, %30 ], [ %29, %27 ]
  %41 = trunc i32 %24 to i16
  %42 = udiv i16 %41, 2141
  %43 = add nuw nsw i16 %42, 1
  %44 = zext i16 %43 to i32
  %45 = mul nuw nsw i32 %12, 100
  %46 = zext i1 %26 to i32
  %47 = add nsw i32 %45, -1900
  %48 = add nsw i32 %47, %20
  %49 = add nsw i32 %48, %46
  %50 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %39, ptr %51, align 4
  %52 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %44, ptr %52, align 4
  %53 = add nsw i32 %40, 1
  %54 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 7
  store i32 %53, ptr %54, align 4
  %55 = load i32, ptr %3, align 4
  %56 = udiv i32 %55, 3600
  %57 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %56, ptr %57, align 4
  %58 = mul i32 %56, -3600
  %59 = add i32 %58, %55
  %60 = udiv i32 %59, 60
  %61 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %60, ptr %61, align 4
  %62 = mul i32 %60, -60
  %63 = add i32 %62, %59
  store i32 %63, ptr %1, align 4
  %64 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 8
  store i32 0, ptr %64, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rtc_valid_tm(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.rtc_time, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -2147481748
  %5 = icmp ult i32 %4, -2147481678
  br i1 %5, label %46, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtc_time, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 11
  br i1 %9, label %46, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtc_time, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %46, label %14

14:                                               ; preds = %10
  %15 = add nuw nsw i32 %3, 1900
  %16 = getelementptr [12 x i8], ptr @rtc_days_in_month, i32 0, i32 %8
  %17 = load i8, ptr %16, align 1
  %18 = and i32 %3, 3
  %19 = icmp ne i32 %18, 0
  %20 = urem i32 %15, 100
  %21 = icmp eq i32 %20, 0
  %22 = or i1 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = urem i32 %15, 400
  %25 = icmp eq i32 %24, 0
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi i1 [ %25, %23 ], [ true, %14 ]
  %28 = zext i8 %17 to i32
  %29 = icmp eq i32 %8, 1
  %30 = and i1 %29, %27
  %31 = zext i1 %30 to i32
  %32 = add nuw nsw i32 %31, %28
  %33 = icmp ugt i32 %12, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.rtc_time, ptr %0, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, 23
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtc_time, ptr %0, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, 59
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %0, align 4
  %44 = icmp ugt i32 %43, 59
  %45 = select i1 %44, i32 -22, i32 0
  br label %46

46:                                               ; preds = %42, %38, %34, %26, %10, %6, %1
  %47 = phi i32 [ -22, %38 ], [ -22, %34 ], [ -22, %26 ], [ -22, %10 ], [ -22, %6 ], [ -22, %1 ], [ %45, %42 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @rtc_tm_to_time64(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.rtc_time, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 1900
  %5 = getelementptr inbounds %struct.rtc_time, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  %8 = getelementptr inbounds %struct.rtc_time, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rtc_time, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rtc_time, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %0, align 4
  %15 = tail call i64 @mktime64(i32 noundef %4, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %14) #6
  ret i64 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @rtc_tm_to_ktime([9 x i32] %0) #1 {
  %2 = extractvalue [9 x i32] %0, 0
  %3 = extractvalue [9 x i32] %0, 1
  %4 = extractvalue [9 x i32] %0, 2
  %5 = extractvalue [9 x i32] %0, 3
  %6 = extractvalue [9 x i32] %0, 4
  %7 = extractvalue [9 x i32] %0, 5
  %8 = add i32 %7, 1900
  %9 = add i32 %6, 1
  %10 = tail call i64 @mktime64(i32 noundef %8, i32 noundef %9, i32 noundef %5, i32 noundef %4, i32 noundef %3, i32 noundef %2) #6
  %11 = icmp sgt i64 %10, 9223372035
  %12 = mul i64 %10, 1000000000
  %13 = select i1 %11, i64 9223372036854775807, i64 %12, !prof !9
  ret i64 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtc_ktime_to_tm(ptr noalias nocapture writeonly sret(%struct.rtc_time) align 4 %0, i64 noundef %1) #1 {
  %3 = alloca %struct.timespec64, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %0, i8 0, i32 36, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %3, i64 noundef %1) #6
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr %3, i32 8
  %6 = load i32, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = add i64 %4, %8
  call void @rtc_time64_to_tm(i64 noundef %9, ptr noundef %0)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
