; ModuleID = '/llk/IR/lib/hexdump.c_pt.bc'
source_filename = "../lib/hexdump.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hex_asc:\09\09\09\09\09"
module asm "\09.asciz \09\22hex_asc\22\09\09\09\09\09"
module asm "__kstrtabns_hex_asc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hex_asc_upper:\09\09\09\09\09"
module asm "\09.asciz \09\22hex_asc_upper\22\09\09\09\09\09"
module asm "__kstrtabns_hex_asc_upper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hex_to_bin:\09\09\09\09\09"
module asm "\09.asciz \09\22hex_to_bin\22\09\09\09\09\09"
module asm "__kstrtabns_hex_to_bin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hex2bin:\09\09\09\09\09"
module asm "\09.asciz \09\22hex2bin\22\09\09\09\09\09"
module asm "__kstrtabns_hex2bin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bin2hex:\09\09\09\09\09"
module asm "\09.asciz \09\22bin2hex\22\09\09\09\09\09"
module asm "__kstrtabns_bin2hex:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hex_dump_to_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22hex_dump_to_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_hex_dump_to_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_print_hex_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22print_hex_dump\22\09\09\09\09\09"
module asm "__kstrtabns_print_hex_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@hex_asc = dso_local constant [17 x i8] c"0123456789abcdef\00", align 1
@__kstrtab_hex_asc = external dso_local constant [0 x i8], align 1
@__kstrtabns_hex_asc = external dso_local constant [0 x i8], align 1
@__ksymtab_hex_asc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hex_asc to i32), ptr @__kstrtab_hex_asc, ptr @__kstrtabns_hex_asc }, section "___ksymtab+hex_asc", align 4
@hex_asc_upper = dso_local constant [17 x i8] c"0123456789ABCDEF\00", align 1
@__kstrtab_hex_asc_upper = external dso_local constant [0 x i8], align 1
@__kstrtabns_hex_asc_upper = external dso_local constant [0 x i8], align 1
@__ksymtab_hex_asc_upper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hex_asc_upper to i32), ptr @__kstrtab_hex_asc_upper, ptr @__kstrtabns_hex_asc_upper }, section "___ksymtab+hex_asc_upper", align 4
@__kstrtab_hex_to_bin = external dso_local constant [0 x i8], align 1
@__kstrtabns_hex_to_bin = external dso_local constant [0 x i8], align 1
@__ksymtab_hex_to_bin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hex_to_bin to i32), ptr @__kstrtab_hex_to_bin, ptr @__kstrtabns_hex_to_bin }, section "___ksymtab+hex_to_bin", align 4
@__kstrtab_hex2bin = external dso_local constant [0 x i8], align 1
@__kstrtabns_hex2bin = external dso_local constant [0 x i8], align 1
@__ksymtab_hex2bin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hex2bin to i32), ptr @__kstrtab_hex2bin, ptr @__kstrtabns_hex2bin }, section "___ksymtab+hex2bin", align 4
@__kstrtab_bin2hex = external dso_local constant [0 x i8], align 1
@__kstrtabns_bin2hex = external dso_local constant [0 x i8], align 1
@__ksymtab_bin2hex = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bin2hex to i32), ptr @__kstrtab_bin2hex, ptr @__kstrtabns_bin2hex }, section "___ksymtab+bin2hex", align 4
@.str = private unnamed_addr constant [12 x i8] c"%s%16.16llx\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s%8.8x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s%4.4x\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_hex_dump_to_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_hex_dump_to_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_hex_dump_to_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hex_dump_to_buffer to i32), ptr @__kstrtab_hex_dump_to_buffer, ptr @__kstrtabns_hex_dump_to_buffer }, section "___ksymtab+hex_dump_to_buffer", align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"%s%s%p: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%s%s%.8x: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%s%s%s\0A\00", align 1
@__kstrtab_print_hex_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_print_hex_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_print_hex_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @print_hex_dump to i32), ptr @__kstrtab_print_hex_dump, ptr @__kstrtabns_print_hex_dump }, section "___ksymtab+print_hex_dump", align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_bin2hex, ptr @__ksymtab_hex2bin, ptr @__ksymtab_hex_asc, ptr @__ksymtab_hex_asc_upper, ptr @__ksymtab_hex_dump_to_buffer, ptr @__ksymtab_hex_to_bin, ptr @__ksymtab_print_hex_dump], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @hex_to_bin(i8 noundef zeroext %0) #0 {
  %2 = add i8 %0, -48
  %3 = icmp ult i8 %2, 10
  %4 = zext i8 %0 to i32
  br i1 %3, label %5, label %7

5:                                                ; preds = %1
  %6 = add nsw i32 %4, -48
  br label %19

7:                                                ; preds = %1
  %8 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %4
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  %12 = add i8 %0, 32
  %13 = select i1 %11, i8 %0, i8 %12
  %14 = add i8 %13, -97
  %15 = icmp ult i8 %14, 6
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = zext i8 %13 to i32
  %18 = add nsw i32 %17, -87
  br label %19

19:                                               ; preds = %16, %7, %5
  %20 = phi i32 [ %6, %5 ], [ %18, %16 ], [ -1, %7 ]
  ret i32 %20
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hex2bin(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %61, label %5

5:                                                ; preds = %55, %3
  %6 = phi i32 [ %9, %55 ], [ %2, %3 ]
  %7 = phi ptr [ %31, %55 ], [ %1, %3 ]
  %8 = phi ptr [ %59, %55 ], [ %0, %3 ]
  %9 = add i32 %6, -1
  %10 = getelementptr i8, ptr %7, i32 1
  %11 = load i8, ptr %7, align 1
  %12 = add i8 %11, -48
  %13 = icmp ult i8 %12, 10
  %14 = zext i8 %11 to i32
  br i1 %13, label %15, label %17

15:                                               ; preds = %5
  %16 = add nsw i32 %14, -48
  br label %29

17:                                               ; preds = %5
  %18 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %14
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  %22 = add i8 %11, 32
  %23 = select i1 %21, i8 %11, i8 %22
  %24 = add i8 %23, -97
  %25 = icmp ult i8 %24, 6
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = zext i8 %23 to i32
  %28 = add nsw i32 %27, -87
  br label %29

29:                                               ; preds = %26, %17, %15
  %30 = phi i32 [ %16, %15 ], [ %28, %26 ], [ -1, %17 ]
  %31 = getelementptr i8, ptr %7, i32 2
  %32 = load i8, ptr %10, align 1
  %33 = add i8 %32, -48
  %34 = icmp ult i8 %33, 10
  %35 = zext i8 %32 to i32
  br i1 %34, label %36, label %38

36:                                               ; preds = %29
  %37 = add nsw i32 %35, -48
  br label %50

38:                                               ; preds = %29
  %39 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %35
  %40 = load i8, ptr %39, align 1
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  %43 = add i8 %32, 32
  %44 = select i1 %42, i8 %32, i8 %43
  %45 = add i8 %44, -97
  %46 = icmp ult i8 %45, 6
  br i1 %46, label %47, label %61

47:                                               ; preds = %38
  %48 = zext i8 %44 to i32
  %49 = add nsw i32 %48, -87
  br label %50

50:                                               ; preds = %47, %36
  %51 = phi i32 [ %37, %36 ], [ %49, %47 ]
  %52 = icmp slt i32 %30, 0
  %53 = icmp slt i32 %51, 0
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = shl nuw nsw i32 %30, 4
  %57 = or i32 %51, %56
  %58 = trunc i32 %57 to i8
  %59 = getelementptr i8, ptr %8, i32 1
  store i8 %58, ptr %8, align 1
  %60 = icmp eq i32 %9, 0
  br i1 %60, label %61, label %5

61:                                               ; preds = %55, %50, %38, %3
  %62 = phi i32 [ 0, %3 ], [ -22, %38 ], [ -22, %50 ], [ 0, %55 ]
  ret i32 %62
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bin2hex(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %10, %5 ], [ %1, %3 ]
  %7 = phi i32 [ %9, %5 ], [ %2, %3 ]
  %8 = phi ptr [ %20, %5 ], [ %0, %3 ]
  %9 = add i32 %7, -1
  %10 = getelementptr i8, ptr %6, i32 1
  %11 = load i8, ptr %6, align 1
  %12 = zext i8 %11 to i32
  %13 = lshr i32 %12, 4
  %14 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr i8, ptr %8, i32 1
  store i8 %15, ptr %8, align 1
  %17 = and i32 %12, 15
  %18 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr i8, ptr %8, i32 2
  store i8 %19, ptr %16, align 1
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %22, label %5

22:                                               ; preds = %5, %3
  %23 = phi ptr [ %0, %3 ], [ %20, %5 ]
  ret ptr %23
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hex_dump_to_buffer(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i1 noundef zeroext %6) #3 {
  %8 = icmp ne i32 %2, 16
  %9 = icmp ne i32 %2, 32
  %10 = and i1 %8, %9
  %11 = select i1 %10, i32 16, i32 %2
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %1)
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @llvm.ctpop.i32(i32 %3) #9, !range !8
  %16 = icmp ult i32 %15, 2
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i1 [ false, %7 ], [ %16, %14 ]
  %19 = icmp slt i32 %3, 9
  %20 = and i1 %19, %18
  %21 = select i1 %20, i32 %3, i32 1
  %22 = urem i32 %12, %21
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 %21, i32 1
  %25 = udiv i32 %12, %24
  %26 = shl nuw nsw i32 %11, 1
  %27 = sdiv i32 %11, %24
  %28 = add nsw i32 %27, %26
  %29 = icmp eq i32 %5, 0
  br i1 %29, label %159, label %30

30:                                               ; preds = %17
  %31 = icmp eq i32 %12, 0
  br i1 %31, label %153, label %32

32:                                               ; preds = %30
  switch i32 %24, label %85 [
    i32 8, label %37
    i32 4, label %35
    i32 2, label %33
  ]

33:                                               ; preds = %32
  %34 = icmp ugt i32 %24, %12
  br i1 %34, label %114, label %69

35:                                               ; preds = %32
  %36 = icmp ugt i32 %24, %12
  br i1 %36, label %114, label %54

37:                                               ; preds = %32
  %38 = icmp ugt i32 %24, %12
  br i1 %38, label %114, label %39

39:                                               ; preds = %50, %37
  %40 = phi i32 [ %51, %50 ], [ 0, %37 ]
  %41 = phi i32 [ %52, %50 ], [ 0, %37 ]
  %42 = getelementptr i8, ptr %4, i32 %40
  %43 = sub i32 %5, %40
  %44 = icmp eq i32 %41, 0
  %45 = select i1 %44, ptr @.str.2, ptr @.str.1
  %46 = getelementptr i64, ptr %0, i32 %41
  %47 = load i64, ptr %46, align 1
  %48 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %42, i32 noundef %43, ptr noundef nonnull @.str, ptr noundef nonnull %45, i64 noundef %47)
  %49 = icmp ult i32 %48, %43
  br i1 %49, label %50, label %159

50:                                               ; preds = %39
  %51 = add i32 %48, %40
  %52 = add nuw nsw i32 %41, 1
  %53 = icmp eq i32 %52, %25
  br i1 %53, label %114, label %39

54:                                               ; preds = %65, %35
  %55 = phi i32 [ %66, %65 ], [ 0, %35 ]
  %56 = phi i32 [ %67, %65 ], [ 0, %35 ]
  %57 = getelementptr i8, ptr %4, i32 %55
  %58 = sub i32 %5, %55
  %59 = icmp eq i32 %56, 0
  %60 = select i1 %59, ptr @.str.2, ptr @.str.1
  %61 = getelementptr i32, ptr %0, i32 %56
  %62 = load i32, ptr %61, align 1
  %63 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %57, i32 noundef %58, ptr noundef nonnull @.str.3, ptr noundef nonnull %60, i32 noundef %62)
  %64 = icmp ult i32 %63, %58
  br i1 %64, label %65, label %159

65:                                               ; preds = %54
  %66 = add i32 %63, %55
  %67 = add nuw nsw i32 %56, 1
  %68 = icmp eq i32 %67, %25
  br i1 %68, label %114, label %54

69:                                               ; preds = %81, %33
  %70 = phi i32 [ %82, %81 ], [ 0, %33 ]
  %71 = phi i32 [ %83, %81 ], [ 0, %33 ]
  %72 = getelementptr i8, ptr %4, i32 %70
  %73 = sub i32 %5, %70
  %74 = icmp eq i32 %71, 0
  %75 = select i1 %74, ptr @.str.2, ptr @.str.1
  %76 = getelementptr i16, ptr %0, i32 %71
  %77 = load i16, ptr %76, align 1
  %78 = zext i16 %77 to i32
  %79 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %72, i32 noundef %73, ptr noundef nonnull @.str.4, ptr noundef nonnull %75, i32 noundef %78)
  %80 = icmp ult i32 %79, %73
  br i1 %80, label %81, label %159

81:                                               ; preds = %69
  %82 = add i32 %79, %70
  %83 = add nuw nsw i32 %71, 1
  %84 = icmp eq i32 %83, %25
  br i1 %84, label %114, label %69

85:                                               ; preds = %108, %32
  %86 = phi i32 [ %99, %108 ], [ 0, %32 ]
  %87 = phi i32 [ %110, %108 ], [ 0, %32 ]
  %88 = add i32 %86, 2
  %89 = icmp ugt i32 %88, %5
  br i1 %89, label %156, label %90

90:                                               ; preds = %85
  %91 = getelementptr i8, ptr %0, i32 %87
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  %94 = lshr i32 %93, 4
  %95 = getelementptr [17 x i8], ptr @hex_asc, i32 0, i32 %94
  %96 = load i8, ptr %95, align 1
  %97 = add i32 %86, 1
  %98 = getelementptr i8, ptr %4, i32 %86
  store i8 %96, ptr %98, align 1
  %99 = add i32 %86, 3
  %100 = icmp ugt i32 %99, %5
  br i1 %100, label %156, label %101

101:                                              ; preds = %90
  %102 = and i32 %93, 15
  %103 = getelementptr [17 x i8], ptr @hex_asc, i32 0, i32 %102
  %104 = load i8, ptr %103, align 1
  %105 = getelementptr i8, ptr %4, i32 %97
  store i8 %104, ptr %105, align 1
  %106 = add i32 %86, 4
  %107 = icmp ugt i32 %106, %5
  br i1 %107, label %156, label %108

108:                                              ; preds = %101
  %109 = getelementptr i8, ptr %4, i32 %88
  store i8 32, ptr %109, align 1
  %110 = add nuw i32 %87, 1
  %111 = icmp eq i32 %110, %12
  br i1 %111, label %112, label %85

112:                                              ; preds = %108
  %113 = add i32 %86, 2
  br label %114

114:                                              ; preds = %112, %81, %65, %50, %37, %35, %33
  %115 = phi i32 [ %113, %112 ], [ 0, %37 ], [ 0, %35 ], [ 0, %33 ], [ %51, %50 ], [ %66, %65 ], [ %82, %81 ]
  br i1 %6, label %116, label %153

116:                                              ; preds = %114
  %117 = icmp sgt i32 %115, %28
  br i1 %117, label %120, label %118

118:                                              ; preds = %116
  %119 = add i32 %28, 1
  br label %123

120:                                              ; preds = %127, %116
  %121 = phi i32 [ %115, %116 ], [ %119, %127 ]
  %122 = call i32 @llvm.umax.i32(i32 %12, i32 1)
  br label %131

123:                                              ; preds = %127, %118
  %124 = phi i32 [ %128, %127 ], [ %115, %118 ]
  %125 = add i32 %124, 2
  %126 = icmp ugt i32 %125, %5
  br i1 %126, label %156, label %127

127:                                              ; preds = %123
  %128 = add i32 %124, 1
  %129 = getelementptr i8, ptr %4, i32 %124
  store i8 32, ptr %129, align 1
  %130 = icmp eq i32 %124, %28
  br i1 %130, label %120, label %123

131:                                              ; preds = %147, %120
  %132 = phi i32 [ %149, %147 ], [ %121, %120 ]
  %133 = phi i32 [ %151, %147 ], [ 0, %120 ]
  %134 = add i32 %132, 2
  %135 = icmp ugt i32 %134, %5
  br i1 %135, label %156, label %136

136:                                              ; preds = %131
  %137 = getelementptr i8, ptr %0, i32 %133
  %138 = load i8, ptr %137, align 1
  %139 = icmp sgt i8 %138, -1
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = zext i8 %138 to i32
  %142 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %141
  %143 = load i8, ptr %142, align 1
  %144 = and i8 %143, -105
  %145 = icmp eq i8 %144, 0
  %146 = select i1 %145, i8 46, i8 %138
  br label %147

147:                                              ; preds = %140, %136
  %148 = phi i8 [ 46, %136 ], [ %146, %140 ]
  %149 = add i32 %132, 1
  %150 = getelementptr i8, ptr %4, i32 %132
  store i8 %148, ptr %150, align 1
  %151 = add nuw i32 %133, 1
  %152 = icmp eq i32 %151, %122
  br i1 %152, label %153, label %131

153:                                              ; preds = %147, %114, %30
  %154 = phi i32 [ %115, %114 ], [ 0, %30 ], [ %149, %147 ]
  %155 = getelementptr i8, ptr %4, i32 %154
  store i8 0, ptr %155, align 1
  br label %167

156:                                              ; preds = %131, %123, %101, %90, %85
  %157 = phi i32 [ %132, %131 ], [ %124, %123 ], [ %88, %101 ], [ %97, %90 ], [ %86, %85 ]
  %158 = getelementptr i8, ptr %4, i32 %157
  store i8 0, ptr %158, align 1
  br label %159

159:                                              ; preds = %156, %69, %54, %39, %17
  %160 = add i32 %12, 1
  %161 = add i32 %160, %28
  %162 = shl i32 %24, 1
  %163 = or i32 %162, 1
  %164 = mul i32 %163, %25
  %165 = add i32 %164, -1
  %166 = select i1 %6, i32 %161, i32 %165
  br label %167

167:                                              ; preds = %159, %153
  %168 = phi i32 [ %166, %159 ], [ %154, %153 ]
  ret i32 %168
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @print_hex_dump(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i1 noundef zeroext %7) #5 {
  %9 = alloca [131 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 131, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(131) %9, i8 0, i32 131, i1 false), !annotation !9
  %10 = icmp ne i32 %3, 16
  %11 = icmp ne i32 %3, 32
  %12 = and i1 %10, %11
  %13 = select i1 %12, i32 16, i32 %3
  %14 = icmp eq i32 %6, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %28, %8
  %16 = phi i32 [ %29, %28 ], [ 0, %8 ]
  %17 = phi i32 [ %19, %28 ], [ %6, %8 ]
  %18 = call i32 @llvm.smin.i32(i32 %17, i32 %13)
  %19 = sub i32 %17, %13
  %20 = getelementptr i8, ptr %5, i32 %16
  %21 = call i32 @hex_dump_to_buffer(ptr noundef %20, i32 noundef %18, i32 noundef %13, i32 noundef %4, ptr noundef nonnull %9, i32 noundef 131, i1 noundef zeroext %7)
  switch i32 %2, label %26 [
    i32 1, label %22
    i32 2, label %24
  ]

22:                                               ; preds = %15
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0, ptr noundef %1, ptr noundef %20, ptr noundef nonnull %9) #10
  br label %28

24:                                               ; preds = %15
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %0, ptr noundef %1, i32 noundef %16, ptr noundef nonnull %9) #10
  br label %28

26:                                               ; preds = %15
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9) #10
  br label %28

28:                                               ; preds = %26, %24, %22
  %29 = add i32 %16, %13
  %30 = icmp ult i32 %29, %6
  br i1 %30, label %15, label %31

31:                                               ; preds = %28, %8
  call void @llvm.lifetime.end.p0(i64 131, ptr nonnull %9) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{!"auto-init"}
