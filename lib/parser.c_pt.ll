; ModuleID = '/llk/IR/lib/parser.c_pt.bc'
source_filename = "../lib/parser.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_token:\09\09\09\09\09"
module asm "\09.asciz \09\22match_token\22\09\09\09\09\09"
module asm "__kstrtabns_match_token:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_int:\09\09\09\09\09"
module asm "\09.asciz \09\22match_int\22\09\09\09\09\09"
module asm "__kstrtabns_match_int:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_uint:\09\09\09\09\09"
module asm "\09.asciz \09\22match_uint\22\09\09\09\09\09"
module asm "__kstrtabns_match_uint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22match_u64\22\09\09\09\09\09"
module asm "__kstrtabns_match_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_octal:\09\09\09\09\09"
module asm "\09.asciz \09\22match_octal\22\09\09\09\09\09"
module asm "__kstrtabns_match_octal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_hex:\09\09\09\09\09"
module asm "\09.asciz \09\22match_hex\22\09\09\09\09\09"
module asm "__kstrtabns_match_hex:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_wildcard:\09\09\09\09\09"
module asm "\09.asciz \09\22match_wildcard\22\09\09\09\09\09"
module asm "__kstrtabns_match_wildcard:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_strlcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22match_strlcpy\22\09\09\09\09\09"
module asm "__kstrtabns_match_strlcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_strdup:\09\09\09\09\09"
module asm "\09.asciz \09\22match_strdup\22\09\09\09\09\09"
module asm "__kstrtabns_match_strdup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.substring_t = type { ptr, ptr }

@__kstrtab_match_token = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_token = external dso_local constant [0 x i8], align 1
@__ksymtab_match_token = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_token to i32), ptr @__kstrtab_match_token, ptr @__kstrtabns_match_token }, section "___ksymtab+match_token", align 4
@__kstrtab_match_int = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_int = external dso_local constant [0 x i8], align 1
@__ksymtab_match_int = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_int to i32), ptr @__kstrtab_match_int, ptr @__kstrtabns_match_int }, section "___ksymtab+match_int", align 4
@__kstrtab_match_uint = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_uint = external dso_local constant [0 x i8], align 1
@__ksymtab_match_uint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_uint to i32), ptr @__kstrtab_match_uint, ptr @__kstrtabns_match_uint }, section "___ksymtab+match_uint", align 4
@__kstrtab_match_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_match_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_u64 to i32), ptr @__kstrtab_match_u64, ptr @__kstrtabns_match_u64 }, section "___ksymtab+match_u64", align 4
@__kstrtab_match_octal = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_octal = external dso_local constant [0 x i8], align 1
@__ksymtab_match_octal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_octal to i32), ptr @__kstrtab_match_octal, ptr @__kstrtabns_match_octal }, section "___ksymtab+match_octal", align 4
@__kstrtab_match_hex = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_hex = external dso_local constant [0 x i8], align 1
@__ksymtab_match_hex = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_hex to i32), ptr @__kstrtab_match_hex, ptr @__kstrtabns_match_hex }, section "___ksymtab+match_hex", align 4
@__kstrtab_match_wildcard = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_wildcard = external dso_local constant [0 x i8], align 1
@__ksymtab_match_wildcard = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_wildcard to i32), ptr @__kstrtab_match_wildcard, ptr @__kstrtabns_match_wildcard }, section "___ksymtab+match_wildcard", align 4
@__kstrtab_match_strlcpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_strlcpy = external dso_local constant [0 x i8], align 1
@__ksymtab_match_strlcpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_strlcpy to i32), ptr @__kstrtab_match_strlcpy, ptr @__kstrtabns_match_strlcpy }, section "___ksymtab+match_strlcpy", align 4
@__kstrtab_match_strdup = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_strdup = external dso_local constant [0 x i8], align 1
@__ksymtab_match_strdup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_strdup to i32), ptr @__kstrtab_match_strdup, ptr @__kstrtabns_match_strdup }, section "___ksymtab+match_strdup", align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_match_hex, ptr @__ksymtab_match_int, ptr @__ksymtab_match_octal, ptr @__ksymtab_match_strdup, ptr @__ksymtab_match_strlcpy, ptr @__ksymtab_match_token, ptr @__ksymtab_match_u64, ptr @__ksymtab_match_uint, ptr @__ksymtab_match_wildcard], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @match_token(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.match_token, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store ptr %6, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %95, %3
  %9 = phi ptr [ %1, %3 ], [ %96, %95 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %100

10:                                               ; preds = %95, %3
  %11 = phi ptr [ %98, %95 ], [ %6, %3 ]
  %12 = phi ptr [ %96, %95 ], [ %1, %3 ]
  %13 = call ptr @strchr(ptr noundef nonnull %11, i32 noundef 37) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %90, label %15

15:                                               ; preds = %83, %10
  %16 = phi ptr [ %87, %83 ], [ %13, %10 ]
  %17 = phi ptr [ %84, %83 ], [ %11, %10 ]
  %18 = phi i32 [ %86, %83 ], [ 0, %10 ]
  %19 = phi ptr [ %85, %83 ], [ %0, %10 ]
  %20 = ptrtoint ptr %16 to i32
  %21 = ptrtoint ptr %17 to i32
  %22 = sub i32 %20, %21
  %23 = call i32 @strncmp(ptr noundef %17, ptr noundef %19, i32 noundef %22) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %89

25:                                               ; preds = %15
  %26 = getelementptr i8, ptr %19, i32 %22
  %27 = getelementptr i8, ptr %16, i32 1
  store ptr %27, ptr %4, align 4
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %29, -58
  %31 = icmp ult i32 %30, -10
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = call i32 @simple_strtoul(ptr noundef %27, ptr noundef nonnull %4, i32 noundef 10) #7
  br label %42

34:                                               ; preds = %25
  %35 = icmp eq i8 %28, 37
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = load i8, ptr %26, align 1
  %38 = icmp eq i8 %37, 37
  br i1 %38, label %39, label %89

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %26, i32 1
  %41 = getelementptr i8, ptr %16, i32 2
  store ptr %41, ptr %4, align 4
  br label %83

42:                                               ; preds = %34, %32
  %43 = phi i32 [ %33, %32 ], [ -1, %34 ]
  %44 = icmp sgt i32 %18, 2
  br i1 %44, label %89, label %45

45:                                               ; preds = %42
  %46 = getelementptr %struct.substring_t, ptr %2, i32 %18
  store ptr %26, ptr %46, align 4
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr i8, ptr %47, i32 1
  store ptr %48, ptr %4, align 4
  %49 = load i8, ptr %47, align 1
  switch i8 %49, label %89 [
    i8 115, label %50
    i8 100, label %60
    i8 117, label %63
    i8 111, label %66
    i8 120, label %69
  ]

50:                                               ; preds = %45
  %51 = call i32 @strlen(ptr noundef %26) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %89, label %53

53:                                               ; preds = %50
  %54 = icmp eq i32 %43, -1
  %55 = icmp ugt i32 %43, %51
  %56 = select i1 %54, i1 true, i1 %55
  %57 = select i1 %56, i32 %51, i32 %43
  %58 = getelementptr i8, ptr %26, i32 %57
  %59 = getelementptr %struct.substring_t, ptr %2, i32 %18, i32 1
  store ptr %58, ptr %59, align 4
  br label %79

60:                                               ; preds = %45
  %61 = getelementptr %struct.substring_t, ptr %2, i32 %18, i32 1
  %62 = call i32 @simple_strtol(ptr noundef %26, ptr noundef %61, i32 noundef 0) #7
  br label %72

63:                                               ; preds = %45
  %64 = getelementptr %struct.substring_t, ptr %2, i32 %18, i32 1
  %65 = call i32 @simple_strtoul(ptr noundef %26, ptr noundef %64, i32 noundef 0) #7
  br label %72

66:                                               ; preds = %45
  %67 = getelementptr %struct.substring_t, ptr %2, i32 %18, i32 1
  %68 = call i32 @simple_strtoul(ptr noundef %26, ptr noundef %67, i32 noundef 8) #7
  br label %72

69:                                               ; preds = %45
  %70 = getelementptr %struct.substring_t, ptr %2, i32 %18, i32 1
  %71 = call i32 @simple_strtoul(ptr noundef %26, ptr noundef %70, i32 noundef 16) #7
  br label %72

72:                                               ; preds = %69, %66, %63, %60
  %73 = getelementptr %struct.substring_t, ptr %2, i32 %18, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %46, align 4
  %76 = icmp eq ptr %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr %4, align 4
  br label %79

79:                                               ; preds = %77, %53
  %80 = phi ptr [ %48, %53 ], [ %78, %77 ]
  %81 = phi ptr [ %58, %53 ], [ %74, %77 ]
  %82 = add nsw i32 %18, 1
  br label %83

83:                                               ; preds = %79, %39
  %84 = phi ptr [ %80, %79 ], [ %41, %39 ]
  %85 = phi ptr [ %81, %79 ], [ %40, %39 ]
  %86 = phi i32 [ %82, %79 ], [ %18, %39 ]
  %87 = call ptr @strchr(ptr noundef %84, i32 noundef 37) #7
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %15

89:                                               ; preds = %72, %50, %45, %42, %36, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %95

90:                                               ; preds = %83, %10
  %91 = phi ptr [ %0, %10 ], [ %85, %83 ]
  %92 = phi ptr [ %11, %10 ], [ %84, %83 ]
  %93 = call i32 @strcmp(ptr noundef %92, ptr noundef %91) #7
  %94 = icmp eq i32 %93, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %94, label %100, label %95

95:                                               ; preds = %90, %89
  %96 = getelementptr %struct.match_token, ptr %12, i32 1
  %97 = getelementptr %struct.match_token, ptr %12, i32 1, i32 1
  %98 = load ptr, ptr %97, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store ptr %98, ptr %4, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %8, label %10

100:                                              ; preds = %90, %8
  %101 = phi ptr [ %9, %8 ], [ %12, %90 ]
  %102 = load i32, ptr %101, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @match_int(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.substring_t, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = ptrtoint ptr %4 to i32
  %9 = sub i32 %7, %8
  %10 = tail call ptr @kmemdup_nul(ptr noundef %4, i32 noundef %9, i32 noundef 3264) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = call i32 @simple_strtol(ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 0) #7
  %14 = load ptr, ptr %3, align 4
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 %13, ptr %1, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ 0, %16 ], [ -22, %12 ]
  call void @kfree(ptr noundef nonnull %10) #7
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ %18, %17 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @match_uint(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.substring_t, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = ptrtoint ptr %3 to i32
  %8 = sub i32 %6, %7
  %9 = tail call ptr @kmemdup_nul(ptr noundef %3, i32 noundef %8, i32 noundef 3264) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @kstrtouint(ptr noundef nonnull %9, i32 noundef 10, ptr noundef %1) #7
  tail call void @kfree(ptr noundef nonnull %9) #7
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi i32 [ %12, %11 ], [ -12, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @match_strdup(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.substring_t, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = ptrtoint ptr %2 to i32
  %7 = sub i32 %5, %6
  %8 = tail call ptr @kmemdup_nul(ptr noundef %2, i32 noundef %7, i32 noundef 3264) #7
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @match_u64(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.substring_t, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = ptrtoint ptr %4 to i32
  %9 = sub i32 %7, %8
  %10 = tail call ptr @kmemdup_nul(ptr noundef %4, i32 noundef %9, i32 noundef 3264) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = call i32 @kstrtoull(ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull %3) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i64, ptr %3, align 8
  store i64 %16, ptr %1, align 8
  br label %17

17:                                               ; preds = %15, %12
  call void @kfree(ptr noundef nonnull %10) #7
  br label %18

18:                                               ; preds = %17, %2
  %19 = phi i32 [ %13, %17 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @match_octal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.substring_t, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = ptrtoint ptr %4 to i32
  %9 = sub i32 %7, %8
  %10 = tail call ptr @kmemdup_nul(ptr noundef %4, i32 noundef %9, i32 noundef 3264) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = call i32 @simple_strtol(ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 8) #7
  %14 = load ptr, ptr %3, align 4
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 %13, ptr %1, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ 0, %16 ], [ -22, %12 ]
  call void @kfree(ptr noundef nonnull %10) #7
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ %18, %17 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @match_hex(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.substring_t, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = ptrtoint ptr %4 to i32
  %9 = sub i32 %7, %8
  %10 = tail call ptr @kmemdup_nul(ptr noundef %4, i32 noundef %9, i32 noundef 3264) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = call i32 @simple_strtol(ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 16) #7
  %14 = load ptr, ptr %3, align 4
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 %13, ptr %1, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ 0, %16 ], [ -22, %12 ]
  call void @kfree(ptr noundef nonnull %10) #7
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ %18, %17 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %20
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @match_wildcard(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i8, ptr %1, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %36, label %5

5:                                                ; preds = %28, %2
  %6 = phi i8 [ %34, %28 ], [ %3, %2 ]
  %7 = phi i1 [ %33, %28 ], [ false, %2 ]
  %8 = phi ptr [ %32, %28 ], [ %0, %2 ]
  %9 = phi ptr [ %31, %28 ], [ %1, %2 ]
  %10 = phi ptr [ %30, %28 ], [ %1, %2 ]
  %11 = phi ptr [ %29, %28 ], [ %0, %2 ]
  %12 = load i8, ptr %8, align 1
  switch i8 %12, label %20 [
    i8 63, label %13
    i8 42, label %16
  ]

13:                                               ; preds = %5
  %14 = getelementptr i8, ptr %9, i32 1
  %15 = getelementptr i8, ptr %8, i32 1
  br label %28

16:                                               ; preds = %5
  %17 = getelementptr i8, ptr %8, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %44, label %28

20:                                               ; preds = %5
  %21 = icmp eq i8 %6, %12
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = getelementptr i8, ptr %9, i32 1
  %24 = getelementptr i8, ptr %8, i32 1
  br label %28

25:                                               ; preds = %20
  br i1 %7, label %26, label %44

26:                                               ; preds = %25
  %27 = getelementptr i8, ptr %10, i32 1
  br label %28

28:                                               ; preds = %26, %22, %16, %13
  %29 = phi ptr [ %11, %22 ], [ %11, %26 ], [ %11, %13 ], [ %17, %16 ]
  %30 = phi ptr [ %10, %22 ], [ %27, %26 ], [ %10, %13 ], [ %9, %16 ]
  %31 = phi ptr [ %23, %22 ], [ %27, %26 ], [ %14, %13 ], [ %9, %16 ]
  %32 = phi ptr [ %24, %22 ], [ %11, %26 ], [ %15, %13 ], [ %17, %16 ]
  %33 = phi i1 [ %7, %22 ], [ true, %26 ], [ %7, %13 ], [ true, %16 ]
  %34 = load i8, ptr %31, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %5

36:                                               ; preds = %28, %2
  %37 = phi ptr [ %0, %2 ], [ %32, %28 ]
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 42
  %40 = zext i1 %39 to i32
  %41 = getelementptr i8, ptr %37, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = icmp eq i8 %42, 0
  br label %44

44:                                               ; preds = %36, %25, %16
  %45 = phi i1 [ %43, %36 ], [ false, %25 ], [ true, %16 ]
  ret i1 %45
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @match_strlcpy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.substring_t, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %5 to i32
  %8 = ptrtoint ptr %6 to i32
  %9 = sub i32 %7, %8
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = icmp ult i32 %9, %2
  %13 = add i32 %2, -1
  %14 = select i1 %12, i32 %9, i32 %13
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %0, ptr align 1 %6, i32 %14, i1 false)
  %15 = getelementptr i8, ptr %0, i32 %14
  store i8 0, ptr %15, align 1
  br label %16

16:                                               ; preds = %11, %3
  ret i32 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }

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
