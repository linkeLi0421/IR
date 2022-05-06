; ModuleID = '/llk/IR/lib/xxhash.c_pt.bc'
source_filename = "../lib/xxhash.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh32_copy_state:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh32_copy_state\22\09\09\09\09\09"
module asm "__kstrtabns_xxh32_copy_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh64_copy_state:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh64_copy_state\22\09\09\09\09\09"
module asm "__kstrtabns_xxh64_copy_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh32:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh32\22\09\09\09\09\09"
module asm "__kstrtabns_xxh32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh64:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh64\22\09\09\09\09\09"
module asm "__kstrtabns_xxh64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh32_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh32_reset\22\09\09\09\09\09"
module asm "__kstrtabns_xxh32_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh64_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh64_reset\22\09\09\09\09\09"
module asm "__kstrtabns_xxh64_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh32_update:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh32_update\22\09\09\09\09\09"
module asm "__kstrtabns_xxh32_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh32_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh32_digest\22\09\09\09\09\09"
module asm "__kstrtabns_xxh32_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh64_update:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh64_update\22\09\09\09\09\09"
module asm "__kstrtabns_xxh64_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xxh64_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22xxh64_digest\22\09\09\09\09\09"
module asm "__kstrtabns_xxh64_digest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xxh32_state = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32 }
%struct.xxh64_state = type { i64, i64, i64, i64, i64, [4 x i64], i32 }

@__kstrtab_xxh32_copy_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh32_copy_state = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh32_copy_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh32_copy_state to i32), ptr @__kstrtab_xxh32_copy_state, ptr @__kstrtabns_xxh32_copy_state }, section "___ksymtab+xxh32_copy_state", align 4
@__kstrtab_xxh64_copy_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh64_copy_state = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh64_copy_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh64_copy_state to i32), ptr @__kstrtab_xxh64_copy_state, ptr @__kstrtabns_xxh64_copy_state }, section "___ksymtab+xxh64_copy_state", align 4
@__kstrtab_xxh32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh32 = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh32 to i32), ptr @__kstrtab_xxh32, ptr @__kstrtabns_xxh32 }, section "___ksymtab+xxh32", align 4
@__kstrtab_xxh64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh64 = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh64 to i32), ptr @__kstrtab_xxh64, ptr @__kstrtabns_xxh64 }, section "___ksymtab+xxh64", align 4
@__kstrtab_xxh32_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh32_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh32_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh32_reset to i32), ptr @__kstrtab_xxh32_reset, ptr @__kstrtabns_xxh32_reset }, section "___ksymtab+xxh32_reset", align 4
@__kstrtab_xxh64_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh64_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh64_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh64_reset to i32), ptr @__kstrtab_xxh64_reset, ptr @__kstrtabns_xxh64_reset }, section "___ksymtab+xxh64_reset", align 4
@__kstrtab_xxh32_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh32_update = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh32_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh32_update to i32), ptr @__kstrtab_xxh32_update, ptr @__kstrtabns_xxh32_update }, section "___ksymtab+xxh32_update", align 4
@__kstrtab_xxh32_digest = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh32_digest = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh32_digest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh32_digest to i32), ptr @__kstrtab_xxh32_digest, ptr @__kstrtabns_xxh32_digest }, section "___ksymtab+xxh32_digest", align 4
@__kstrtab_xxh64_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh64_update = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh64_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh64_update to i32), ptr @__kstrtab_xxh64_update, ptr @__kstrtabns_xxh64_update }, section "___ksymtab+xxh64_update", align 4
@__kstrtab_xxh64_digest = external dso_local constant [0 x i8], align 1
@__kstrtabns_xxh64_digest = external dso_local constant [0 x i8], align 1
@__ksymtab_xxh64_digest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xxh64_digest to i32), ptr @__kstrtab_xxh64_digest, ptr @__kstrtabns_xxh64_digest }, section "___ksymtab+xxh64_digest", align 4
@__UNIQUE_ID_file100 = internal constant [23 x i8] c"xxhash.file=lib/xxhash\00", section ".modinfo", align 1
@__UNIQUE_ID_license101 = internal constant [28 x i8] c"xxhash.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description102 = internal constant [26 x i8] c"xxhash.description=xxHash\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_description102, ptr @__UNIQUE_ID_file100, ptr @__UNIQUE_ID_license101, ptr @__ksymtab_xxh32, ptr @__ksymtab_xxh32_copy_state, ptr @__ksymtab_xxh32_digest, ptr @__ksymtab_xxh32_reset, ptr @__ksymtab_xxh32_update, ptr @__ksymtab_xxh64, ptr @__ksymtab_xxh64_copy_state, ptr @__ksymtab_xxh64_digest, ptr @__ksymtab_xxh64_reset, ptr @__ksymtab_xxh64_update], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xxh32_copy_state(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %0, ptr noundef align 4 dereferenceable(44) %1, i32 44, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xxh64_copy_state(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(80) %0, ptr noundef align 8 dereferenceable(80) %1, i32 80, i1 false)
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @xxh32(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = ptrtoint ptr %0 to i32
  %5 = getelementptr i8, ptr %0, i32 %1
  %6 = icmp ugt i32 %1, 15
  br i1 %6, label %7, label %51

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -16
  %9 = add i32 %2, 606290984
  %10 = add i32 %2, -2048144777
  %11 = add i32 %2, 1640531535
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi ptr [ %0, %7 ], [ %41, %12 ]
  %14 = phi i32 [ %9, %7 ], [ %22, %12 ]
  %15 = phi i32 [ %10, %7 ], [ %28, %12 ]
  %16 = phi i32 [ %2, %7 ], [ %34, %12 ]
  %17 = phi i32 [ %11, %7 ], [ %40, %12 ]
  %18 = load i32, ptr %13, align 1
  %19 = mul i32 %18, -2048144777
  %20 = add i32 %19, %14
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 13) #6
  %22 = mul i32 %21, -1640531535
  %23 = getelementptr i8, ptr %13, i32 4
  %24 = load i32, ptr %23, align 1
  %25 = mul i32 %24, -2048144777
  %26 = add i32 %25, %15
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 13) #6
  %28 = mul i32 %27, -1640531535
  %29 = getelementptr i8, ptr %13, i32 8
  %30 = load i32, ptr %29, align 1
  %31 = mul i32 %30, -2048144777
  %32 = add i32 %31, %16
  %33 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 13) #6
  %34 = mul i32 %33, -1640531535
  %35 = getelementptr i8, ptr %13, i32 12
  %36 = load i32, ptr %35, align 1
  %37 = mul i32 %36, -2048144777
  %38 = add i32 %37, %17
  %39 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 13) #6
  %40 = mul i32 %39, -1640531535
  %41 = getelementptr i8, ptr %13, i32 16
  %42 = icmp ugt ptr %41, %8
  br i1 %42, label %43, label %12

43:                                               ; preds = %12
  %44 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 1)
  %45 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 7)
  %46 = add i32 %45, %44
  %47 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 12)
  %48 = add i32 %46, %47
  %49 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 18)
  %50 = add i32 %48, %49
  br label %53

51:                                               ; preds = %3
  %52 = add i32 %2, 374761393
  br label %53

53:                                               ; preds = %51, %43
  %54 = phi ptr [ %41, %43 ], [ %0, %51 ]
  %55 = phi i32 [ %50, %43 ], [ %52, %51 ]
  %56 = add i32 %55, %1
  %57 = getelementptr i8, ptr %54, i32 4
  %58 = icmp ugt ptr %57, %5
  br i1 %58, label %59, label %68

59:                                               ; preds = %68, %53
  %60 = phi ptr [ %54, %53 ], [ %69, %68 ]
  %61 = phi i32 [ %56, %53 ], [ %76, %68 ]
  %62 = icmp ult ptr %60, %5
  br i1 %62, label %63, label %90

63:                                               ; preds = %59
  %64 = ptrtoint ptr %60 to i32
  %65 = add i32 %4, %1
  %66 = sub i32 %65, %64
  %67 = getelementptr i8, ptr %60, i32 %66
  br label %79

68:                                               ; preds = %68, %53
  %69 = phi ptr [ %77, %68 ], [ %57, %53 ]
  %70 = phi i32 [ %76, %68 ], [ %56, %53 ]
  %71 = phi ptr [ %69, %68 ], [ %54, %53 ]
  %72 = load i32, ptr %71, align 1
  %73 = mul i32 %72, -1028477379
  %74 = add i32 %73, %70
  %75 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 17)
  %76 = mul i32 %75, 668265263
  %77 = getelementptr i8, ptr %69, i32 4
  %78 = icmp ugt ptr %77, %5
  br i1 %78, label %59, label %68

79:                                               ; preds = %79, %63
  %80 = phi i32 [ %87, %79 ], [ %61, %63 ]
  %81 = phi ptr [ %88, %79 ], [ %60, %63 ]
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = mul i32 %83, 374761393
  %85 = add i32 %84, %80
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 11)
  %87 = mul i32 %86, -1640531535
  %88 = getelementptr i8, ptr %81, i32 1
  %89 = icmp eq ptr %88, %67
  br i1 %89, label %90, label %79

90:                                               ; preds = %79, %59
  %91 = phi i32 [ %61, %59 ], [ %87, %79 ]
  %92 = lshr i32 %91, 15
  %93 = xor i32 %92, %91
  %94 = mul i32 %93, -2048144777
  %95 = lshr i32 %94, 13
  %96 = xor i32 %95, %94
  %97 = mul i32 %96, -1028477379
  %98 = lshr i32 %97, 16
  %99 = xor i32 %98, %97
  ret i32 %99
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i64 @xxh64(ptr noundef readonly %0, i32 noundef %1, i64 noundef %2) #2 {
  %4 = ptrtoint ptr %0 to i32
  %5 = getelementptr i8, ptr %0, i32 %1
  %6 = icmp ugt i32 %1, 31
  br i1 %6, label %7, label %75

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -32
  %9 = add i64 %2, 6983438078262162902
  %10 = add i64 %2, -4417276706812531889
  %11 = add i64 %2, 7046029288634856825
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i64 [ %9, %7 ], [ %22, %12 ]
  %14 = phi i64 [ %10, %7 ], [ %28, %12 ]
  %15 = phi i64 [ %2, %7 ], [ %34, %12 ]
  %16 = phi i64 [ %11, %7 ], [ %40, %12 ]
  %17 = phi ptr [ %0, %7 ], [ %41, %12 ]
  %18 = load i64, ptr %17, align 1
  %19 = mul i64 %18, -4417276706812531889
  %20 = add i64 %19, %13
  %21 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 31) #6
  %22 = mul i64 %21, -7046029288634856825
  %23 = getelementptr i8, ptr %17, i32 8
  %24 = load i64, ptr %23, align 1
  %25 = mul i64 %24, -4417276706812531889
  %26 = add i64 %25, %14
  %27 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 31) #6
  %28 = mul i64 %27, -7046029288634856825
  %29 = getelementptr i8, ptr %17, i32 16
  %30 = load i64, ptr %29, align 1
  %31 = mul i64 %30, -4417276706812531889
  %32 = add i64 %31, %15
  %33 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 31) #6
  %34 = mul i64 %33, -7046029288634856825
  %35 = getelementptr i8, ptr %17, i32 24
  %36 = load i64, ptr %35, align 1
  %37 = mul i64 %36, -4417276706812531889
  %38 = add i64 %37, %16
  %39 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 31) #6
  %40 = mul i64 %39, -7046029288634856825
  %41 = getelementptr i8, ptr %17, i32 32
  %42 = icmp ugt ptr %41, %8
  br i1 %42, label %43, label %12

43:                                               ; preds = %12
  %44 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 1)
  %45 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 7)
  %46 = add i64 %45, %44
  %47 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 12)
  %48 = add i64 %46, %47
  %49 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 18)
  %50 = add i64 %48, %49
  %51 = mul i64 %21, -2381459717836149591
  %52 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 31) #6
  %53 = mul i64 %52, -7046029288634856825
  %54 = xor i64 %50, %53
  %55 = mul i64 %54, -7046029288634856825
  %56 = add i64 %55, -8796714831421723037
  %57 = mul i64 %27, -2381459717836149591
  %58 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 31) #6
  %59 = mul i64 %58, -7046029288634856825
  %60 = xor i64 %56, %59
  %61 = mul i64 %60, -7046029288634856825
  %62 = add i64 %61, -8796714831421723037
  %63 = mul i64 %33, -2381459717836149591
  %64 = tail call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 31) #6
  %65 = mul i64 %64, -7046029288634856825
  %66 = xor i64 %62, %65
  %67 = mul i64 %66, -7046029288634856825
  %68 = add i64 %67, -8796714831421723037
  %69 = mul i64 %39, -2381459717836149591
  %70 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 31) #6
  %71 = mul i64 %70, -7046029288634856825
  %72 = xor i64 %68, %71
  %73 = mul i64 %72, -7046029288634856825
  %74 = add i64 %73, -8796714831421723037
  br label %77

75:                                               ; preds = %3
  %76 = add i64 %2, 2870177450012600261
  br label %77

77:                                               ; preds = %75, %43
  %78 = phi i64 [ %74, %43 ], [ %76, %75 ]
  %79 = phi ptr [ %41, %43 ], [ %0, %75 ]
  %80 = zext i32 %1 to i64
  %81 = add i64 %78, %80
  %82 = getelementptr i8, ptr %79, i32 8
  %83 = icmp ugt ptr %82, %5
  br i1 %83, label %98, label %84

84:                                               ; preds = %84, %77
  %85 = phi ptr [ %96, %84 ], [ %82, %77 ]
  %86 = phi ptr [ %85, %84 ], [ %79, %77 ]
  %87 = phi i64 [ %95, %84 ], [ %81, %77 ]
  %88 = load i64, ptr %86, align 1
  %89 = mul i64 %88, -4417276706812531889
  %90 = tail call i64 @llvm.fshl.i64(i64 %89, i64 %89, i64 31) #6
  %91 = mul i64 %90, -7046029288634856825
  %92 = xor i64 %91, %87
  %93 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 27)
  %94 = mul i64 %93, -7046029288634856825
  %95 = add i64 %94, -8796714831421723037
  %96 = getelementptr i8, ptr %85, i32 8
  %97 = icmp ugt ptr %96, %5
  br i1 %97, label %98, label %84

98:                                               ; preds = %84, %77
  %99 = phi i64 [ %81, %77 ], [ %95, %84 ]
  %100 = phi ptr [ %79, %77 ], [ %85, %84 ]
  %101 = getelementptr i8, ptr %100, i32 4
  %102 = icmp ugt ptr %101, %5
  br i1 %102, label %111, label %103

103:                                              ; preds = %98
  %104 = load i32, ptr %100, align 1
  %105 = zext i32 %104 to i64
  %106 = mul i64 %105, -7046029288634856825
  %107 = xor i64 %106, %99
  %108 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 23)
  %109 = mul i64 %108, -4417276706812531889
  %110 = add i64 %109, 1609587929392839161
  br label %111

111:                                              ; preds = %103, %98
  %112 = phi i64 [ %110, %103 ], [ %99, %98 ]
  %113 = phi ptr [ %101, %103 ], [ %100, %98 ]
  %114 = icmp ult ptr %113, %5
  br i1 %114, label %115, label %131

115:                                              ; preds = %111
  %116 = ptrtoint ptr %113 to i32
  %117 = add i32 %4, %1
  %118 = sub i32 %117, %116
  %119 = getelementptr i8, ptr %113, i32 %118
  br label %120

120:                                              ; preds = %120, %115
  %121 = phi ptr [ %129, %120 ], [ %113, %115 ]
  %122 = phi i64 [ %128, %120 ], [ %112, %115 ]
  %123 = load i8, ptr %121, align 1
  %124 = zext i8 %123 to i64
  %125 = mul i64 %124, 2870177450012600261
  %126 = xor i64 %125, %122
  %127 = tail call i64 @llvm.fshl.i64(i64 %126, i64 %126, i64 11)
  %128 = mul i64 %127, -7046029288634856825
  %129 = getelementptr i8, ptr %121, i32 1
  %130 = icmp eq ptr %129, %119
  br i1 %130, label %131, label %120

131:                                              ; preds = %120, %111
  %132 = phi i64 [ %112, %111 ], [ %128, %120 ]
  %133 = lshr i64 %132, 33
  %134 = xor i64 %133, %132
  %135 = mul i64 %134, -4417276706812531889
  %136 = lshr i64 %135, 29
  %137 = xor i64 %136, %135
  %138 = mul i64 %137, 1609587929392839161
  %139 = lshr i64 %138, 32
  %140 = xor i64 %139, %138
  ret i64 %140
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xxh32_reset(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  %3 = add i32 %1, 606290984
  %4 = add i32 %1, -2048144777
  %5 = add i32 %1, 1640531535
  store i64 0, ptr %0, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %3, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 12
  store i32 %4, ptr %7, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 20
  store i32 %5, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 24
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xxh64_reset(ptr nocapture noundef writeonly %0, i64 noundef %1) #0 {
  %3 = add i64 %1, 6983438078262162902
  %4 = add i64 %1, -4417276706812531889
  %5 = add i64 %1, 7046029288634856825
  store i64 0, ptr %0, align 8
  %6 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %3, ptr %6, align 8
  %7 = getelementptr inbounds i8, ptr %0, i32 16
  store i64 %4, ptr %7, align 8
  %8 = getelementptr inbounds i8, ptr %0, i32 24
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  store i64 %5, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %0, i32 40
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %10, i8 0, i32 40, i1 false)
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xxh32_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr i8, ptr %1, i32 %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %119, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 4
  %8 = add i32 %7, %2
  store i32 %8, ptr %0, align 4
  %9 = or i32 %8, %2
  %10 = icmp ugt i32 %9, 15
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, %11
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %2
  %18 = icmp ult i32 %17, 16
  br i1 %18, label %19, label %24

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 6
  %21 = getelementptr i8, ptr %20, i32 %16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %21, ptr nonnull align 1 %1, i32 %2, i1 false)
  %22 = load i32, ptr %15, align 4
  %23 = add i32 %22, %2
  br label %117

24:                                               ; preds = %6
  %25 = icmp eq i32 %16, 0
  br i1 %25, label %64, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 6
  %28 = getelementptr i8, ptr %27, i32 %16
  %29 = sub i32 16, %16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %28, ptr nonnull align 1 %1, i32 %29, i1 false)
  %30 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %27, align 1
  %33 = mul i32 %32, -2048144777
  %34 = add i32 %33, %31
  %35 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 13) #6
  %36 = mul i32 %35, -1640531535
  store i32 %36, ptr %30, align 4
  %37 = getelementptr %struct.xxh32_state, ptr %0, i32 0, i32 6, i32 1
  %38 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %37, align 1
  %41 = mul i32 %40, -2048144777
  %42 = add i32 %41, %39
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 13) #6
  %44 = mul i32 %43, -1640531535
  store i32 %44, ptr %38, align 4
  %45 = getelementptr %struct.xxh32_state, ptr %0, i32 0, i32 6, i32 2
  %46 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %45, align 1
  %49 = mul i32 %48, -2048144777
  %50 = add i32 %49, %47
  %51 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 13) #6
  %52 = mul i32 %51, -1640531535
  store i32 %52, ptr %46, align 4
  %53 = getelementptr %struct.xxh32_state, ptr %0, i32 0, i32 6, i32 3
  %54 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %53, align 1
  %57 = mul i32 %56, -2048144777
  %58 = add i32 %57, %55
  %59 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 13) #6
  %60 = mul i32 %59, -1640531535
  store i32 %60, ptr %54, align 4
  %61 = load i32, ptr %15, align 4
  %62 = sub i32 16, %61
  %63 = getelementptr i8, ptr %1, i32 %62
  store i32 0, ptr %15, align 4
  br label %64

64:                                               ; preds = %26, %24
  %65 = phi ptr [ %63, %26 ], [ %1, %24 ]
  %66 = getelementptr i8, ptr %4, i32 -16
  %67 = icmp ugt ptr %65, %66
  br i1 %67, label %109, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 5
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %77, %68
  %78 = phi ptr [ %65, %68 ], [ %106, %77 ]
  %79 = phi i32 [ %70, %68 ], [ %87, %77 ]
  %80 = phi i32 [ %72, %68 ], [ %93, %77 ]
  %81 = phi i32 [ %74, %68 ], [ %99, %77 ]
  %82 = phi i32 [ %76, %68 ], [ %105, %77 ]
  %83 = load i32, ptr %78, align 1
  %84 = mul i32 %83, -2048144777
  %85 = add i32 %84, %79
  %86 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 13) #6
  %87 = mul i32 %86, -1640531535
  %88 = getelementptr i8, ptr %78, i32 4
  %89 = load i32, ptr %88, align 1
  %90 = mul i32 %89, -2048144777
  %91 = add i32 %90, %80
  %92 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 13) #6
  %93 = mul i32 %92, -1640531535
  %94 = getelementptr i8, ptr %78, i32 8
  %95 = load i32, ptr %94, align 1
  %96 = mul i32 %95, -2048144777
  %97 = add i32 %96, %81
  %98 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 13) #6
  %99 = mul i32 %98, -1640531535
  %100 = getelementptr i8, ptr %78, i32 12
  %101 = load i32, ptr %100, align 1
  %102 = mul i32 %101, -2048144777
  %103 = add i32 %102, %82
  %104 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 13) #6
  %105 = mul i32 %104, -1640531535
  %106 = getelementptr i8, ptr %78, i32 16
  %107 = icmp ugt ptr %106, %66
  br i1 %107, label %108, label %77

108:                                              ; preds = %77
  store i32 %87, ptr %69, align 4
  store i32 %93, ptr %71, align 4
  store i32 %99, ptr %73, align 4
  store i32 %105, ptr %75, align 4
  br label %109

109:                                              ; preds = %108, %64
  %110 = phi ptr [ %106, %108 ], [ %65, %64 ]
  %111 = icmp ult ptr %110, %4
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 6
  %114 = ptrtoint ptr %4 to i32
  %115 = ptrtoint ptr %110 to i32
  %116 = sub i32 %114, %115
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %113, ptr align 1 %110, i32 %116, i1 false)
  br label %117

117:                                              ; preds = %112, %19
  %118 = phi i32 [ %116, %112 ], [ %23, %19 ]
  store i32 %118, ptr %15, align 4
  br label %119

119:                                              ; preds = %117, %109, %3
  %120 = phi i32 [ -22, %3 ], [ 0, %109 ], [ 0, %117 ]
  ret i32 %120
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @xxh32_digest(ptr noundef readonly %0) #2 {
  %2 = ptrtoint ptr %0 to i32
  %3 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 %5
  %7 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 1)
  %14 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7)
  %17 = add i32 %16, %13
  %18 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 12)
  %21 = add i32 %17, %20
  %22 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 18)
  %25 = add i32 %21, %24
  br label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.xxh32_state, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 374761393
  br label %30

30:                                               ; preds = %26, %10
  %31 = phi i32 [ %25, %10 ], [ %29, %26 ]
  %32 = load i32, ptr %0, align 4
  %33 = add i32 %32, %31
  %34 = getelementptr %struct.xxh32_state, ptr %0, i32 0, i32 6, i32 1
  %35 = icmp ugt ptr %34, %6
  br i1 %35, label %36, label %46

36:                                               ; preds = %46, %30
  %37 = phi ptr [ %3, %30 ], [ %47, %46 ]
  %38 = phi i32 [ %33, %30 ], [ %54, %46 ]
  %39 = icmp ult ptr %37, %6
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = ptrtoint ptr %37 to i32
  %42 = add i32 %5, %2
  %43 = add i32 %42, 24
  %44 = sub i32 %43, %41
  %45 = getelementptr i8, ptr %37, i32 %44
  br label %57

46:                                               ; preds = %46, %30
  %47 = phi ptr [ %55, %46 ], [ %34, %30 ]
  %48 = phi i32 [ %54, %46 ], [ %33, %30 ]
  %49 = phi ptr [ %47, %46 ], [ %3, %30 ]
  %50 = load i32, ptr %49, align 1
  %51 = mul i32 %50, -1028477379
  %52 = add i32 %51, %48
  %53 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 17)
  %54 = mul i32 %53, 668265263
  %55 = getelementptr i8, ptr %47, i32 4
  %56 = icmp ugt ptr %55, %6
  br i1 %56, label %36, label %46

57:                                               ; preds = %57, %40
  %58 = phi i32 [ %65, %57 ], [ %38, %40 ]
  %59 = phi ptr [ %66, %57 ], [ %37, %40 ]
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = mul i32 %61, 374761393
  %63 = add i32 %62, %58
  %64 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 11)
  %65 = mul i32 %64, -1640531535
  %66 = getelementptr i8, ptr %59, i32 1
  %67 = icmp eq ptr %66, %45
  br i1 %67, label %68, label %57

68:                                               ; preds = %57, %36
  %69 = phi i32 [ %38, %36 ], [ %65, %57 ]
  %70 = lshr i32 %69, 15
  %71 = xor i32 %70, %69
  %72 = mul i32 %71, -2048144777
  %73 = lshr i32 %72, 13
  %74 = xor i32 %73, %72
  %75 = mul i32 %74, -1028477379
  %76 = lshr i32 %75, 16
  %77 = xor i32 %76, %75
  ret i32 %77
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xxh64_update(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr i8, ptr %1, i32 %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %115, label %6

6:                                                ; preds = %3
  %7 = zext i32 %2 to i64
  %8 = load i64, ptr %0, align 8
  %9 = add i64 %8, %7
  store i64 %9, ptr %0, align 8
  %10 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, %2
  %13 = icmp ult i32 %12, 32
  br i1 %13, label %14, label %19

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 5
  %16 = getelementptr i8, ptr %15, i32 %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr nonnull align 1 %1, i32 %2, i1 false)
  %17 = load i32, ptr %10, align 8
  %18 = add i32 %17, %2
  br label %113

19:                                               ; preds = %6
  %20 = icmp eq i32 %11, 0
  br i1 %20, label %59, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 5
  %23 = getelementptr i8, ptr %22, i32 %11
  %24 = sub i32 32, %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr nonnull align 1 %1, i32 %24, i1 false)
  %25 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = load i64, ptr %22, align 1
  %28 = mul i64 %27, -4417276706812531889
  %29 = add i64 %28, %26
  %30 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 31) #6
  %31 = mul i64 %30, -7046029288634856825
  store i64 %31, ptr %25, align 8
  %32 = getelementptr %struct.xxh64_state, ptr %0, i32 0, i32 5, i32 1
  %33 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = load i64, ptr %32, align 1
  %36 = mul i64 %35, -4417276706812531889
  %37 = add i64 %36, %34
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31) #6
  %39 = mul i64 %38, -7046029288634856825
  store i64 %39, ptr %33, align 8
  %40 = getelementptr %struct.xxh64_state, ptr %0, i32 0, i32 5, i32 2
  %41 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 3
  %42 = load i64, ptr %41, align 8
  %43 = load i64, ptr %40, align 1
  %44 = mul i64 %43, -4417276706812531889
  %45 = add i64 %44, %42
  %46 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 31) #6
  %47 = mul i64 %46, -7046029288634856825
  store i64 %47, ptr %41, align 8
  %48 = getelementptr %struct.xxh64_state, ptr %0, i32 0, i32 5, i32 3
  %49 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 4
  %50 = load i64, ptr %49, align 8
  %51 = load i64, ptr %48, align 1
  %52 = mul i64 %51, -4417276706812531889
  %53 = add i64 %52, %50
  %54 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 31) #6
  %55 = mul i64 %54, -7046029288634856825
  store i64 %55, ptr %49, align 8
  %56 = load i32, ptr %10, align 8
  %57 = sub i32 32, %56
  %58 = getelementptr i8, ptr %1, i32 %57
  store i32 0, ptr %10, align 8
  br label %59

59:                                               ; preds = %21, %19
  %60 = phi ptr [ %58, %21 ], [ %1, %19 ]
  %61 = getelementptr i8, ptr %60, i32 32
  %62 = icmp ugt ptr %61, %4
  br i1 %62, label %105, label %63

63:                                               ; preds = %59
  %64 = getelementptr i8, ptr %4, i32 -32
  %65 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 1
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 2
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 3
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 4
  %72 = load i64, ptr %71, align 8
  br label %73

73:                                               ; preds = %73, %63
  %74 = phi ptr [ %60, %63 ], [ %102, %73 ]
  %75 = phi i64 [ %66, %63 ], [ %83, %73 ]
  %76 = phi i64 [ %68, %63 ], [ %89, %73 ]
  %77 = phi i64 [ %70, %63 ], [ %95, %73 ]
  %78 = phi i64 [ %72, %63 ], [ %101, %73 ]
  %79 = load i64, ptr %74, align 1
  %80 = mul i64 %79, -4417276706812531889
  %81 = add i64 %80, %75
  %82 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 31) #6
  %83 = mul i64 %82, -7046029288634856825
  %84 = getelementptr i8, ptr %74, i32 8
  %85 = load i64, ptr %84, align 1
  %86 = mul i64 %85, -4417276706812531889
  %87 = add i64 %86, %76
  %88 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 31) #6
  %89 = mul i64 %88, -7046029288634856825
  %90 = getelementptr i8, ptr %74, i32 16
  %91 = load i64, ptr %90, align 1
  %92 = mul i64 %91, -4417276706812531889
  %93 = add i64 %92, %77
  %94 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 31) #6
  %95 = mul i64 %94, -7046029288634856825
  %96 = getelementptr i8, ptr %74, i32 24
  %97 = load i64, ptr %96, align 1
  %98 = mul i64 %97, -4417276706812531889
  %99 = add i64 %98, %78
  %100 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 31) #6
  %101 = mul i64 %100, -7046029288634856825
  %102 = getelementptr i8, ptr %74, i32 32
  %103 = icmp ugt ptr %102, %64
  br i1 %103, label %104, label %73

104:                                              ; preds = %73
  store i64 %83, ptr %65, align 8
  store i64 %89, ptr %67, align 8
  store i64 %95, ptr %69, align 8
  store i64 %101, ptr %71, align 8
  br label %105

105:                                              ; preds = %104, %59
  %106 = phi ptr [ %102, %104 ], [ %60, %59 ]
  %107 = icmp ult ptr %106, %4
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 5
  %110 = ptrtoint ptr %4 to i32
  %111 = ptrtoint ptr %106 to i32
  %112 = sub i32 %110, %111
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %109, ptr align 1 %106, i32 %112, i1 false)
  br label %113

113:                                              ; preds = %108, %14
  %114 = phi i32 [ %112, %108 ], [ %18, %14 ]
  store i32 %114, ptr %10, align 8
  br label %115

115:                                              ; preds = %113, %105, %3
  %116 = phi i32 [ -22, %3 ], [ 0, %105 ], [ 0, %113 ]
  ret i32 %116
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i64 @xxh64_digest(ptr noundef readonly %0) #2 {
  %2 = ptrtoint ptr %0 to i32
  %3 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 5
  %4 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr i8, ptr %3, i32 %5
  %7 = load i64, ptr %0, align 8
  %8 = icmp ugt i64 %7, 31
  br i1 %8, label %9, label %49

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 3
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 1)
  %19 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 7)
  %20 = add i64 %19, %18
  %21 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 12)
  %22 = add i64 %20, %21
  %23 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 18)
  %24 = add i64 %22, %23
  %25 = mul i64 %11, -4417276706812531889
  %26 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 31) #6
  %27 = mul i64 %26, -7046029288634856825
  %28 = xor i64 %24, %27
  %29 = mul i64 %28, -7046029288634856825
  %30 = add i64 %29, -8796714831421723037
  %31 = mul i64 %13, -4417276706812531889
  %32 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 31) #6
  %33 = mul i64 %32, -7046029288634856825
  %34 = xor i64 %30, %33
  %35 = mul i64 %34, -7046029288634856825
  %36 = add i64 %35, -8796714831421723037
  %37 = mul i64 %15, -4417276706812531889
  %38 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 31) #6
  %39 = mul i64 %38, -7046029288634856825
  %40 = xor i64 %36, %39
  %41 = mul i64 %40, -7046029288634856825
  %42 = add i64 %41, -8796714831421723037
  %43 = mul i64 %17, -4417276706812531889
  %44 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 31) #6
  %45 = mul i64 %44, -7046029288634856825
  %46 = xor i64 %42, %45
  %47 = mul i64 %46, -7046029288634856825
  %48 = add i64 %47, -8796714831421723037
  br label %53

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.xxh64_state, ptr %0, i32 0, i32 3
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %51, 2870177450012600261
  br label %53

53:                                               ; preds = %49, %9
  %54 = phi i64 [ %48, %9 ], [ %52, %49 ]
  %55 = add i64 %54, %7
  %56 = getelementptr %struct.xxh64_state, ptr %0, i32 0, i32 5, i32 1
  %57 = icmp ugt ptr %56, %6
  br i1 %57, label %72, label %58

58:                                               ; preds = %58, %53
  %59 = phi ptr [ %70, %58 ], [ %56, %53 ]
  %60 = phi ptr [ %59, %58 ], [ %3, %53 ]
  %61 = phi i64 [ %69, %58 ], [ %55, %53 ]
  %62 = load i64, ptr %60, align 1
  %63 = mul i64 %62, -4417276706812531889
  %64 = tail call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 31) #6
  %65 = mul i64 %64, -7046029288634856825
  %66 = xor i64 %65, %61
  %67 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 27)
  %68 = mul i64 %67, -7046029288634856825
  %69 = add i64 %68, -8796714831421723037
  %70 = getelementptr i8, ptr %59, i32 8
  %71 = icmp ugt ptr %70, %6
  br i1 %71, label %72, label %58

72:                                               ; preds = %58, %53
  %73 = phi i64 [ %55, %53 ], [ %69, %58 ]
  %74 = phi ptr [ %3, %53 ], [ %59, %58 ]
  %75 = getelementptr i8, ptr %74, i32 4
  %76 = icmp ugt ptr %75, %6
  br i1 %76, label %85, label %77

77:                                               ; preds = %72
  %78 = load i32, ptr %74, align 1
  %79 = zext i32 %78 to i64
  %80 = mul i64 %79, -7046029288634856825
  %81 = xor i64 %80, %73
  %82 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 23)
  %83 = mul i64 %82, -4417276706812531889
  %84 = add i64 %83, 1609587929392839161
  br label %85

85:                                               ; preds = %77, %72
  %86 = phi i64 [ %84, %77 ], [ %73, %72 ]
  %87 = phi ptr [ %75, %77 ], [ %74, %72 ]
  %88 = icmp ult ptr %87, %6
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = ptrtoint ptr %87 to i32
  %91 = add i32 %5, %2
  %92 = add i32 %91, 40
  %93 = sub i32 %92, %90
  %94 = getelementptr i8, ptr %87, i32 %93
  br label %95

95:                                               ; preds = %95, %89
  %96 = phi ptr [ %104, %95 ], [ %87, %89 ]
  %97 = phi i64 [ %103, %95 ], [ %86, %89 ]
  %98 = load i8, ptr %96, align 1
  %99 = zext i8 %98 to i64
  %100 = mul i64 %99, 2870177450012600261
  %101 = xor i64 %100, %97
  %102 = tail call i64 @llvm.fshl.i64(i64 %101, i64 %101, i64 11)
  %103 = mul i64 %102, -7046029288634856825
  %104 = getelementptr i8, ptr %96, i32 1
  %105 = icmp eq ptr %104, %94
  br i1 %105, label %106, label %95

106:                                              ; preds = %95, %85
  %107 = phi i64 [ %86, %85 ], [ %103, %95 ]
  %108 = lshr i64 %107, 33
  %109 = xor i64 %108, %107
  %110 = mul i64 %109, -4417276706812531889
  %111 = lshr i64 %110, 29
  %112 = xor i64 %111, %110
  %113 = mul i64 %112, 1609587929392839161
  %114 = lshr i64 %113, 32
  %115 = xor i64 %114, %113
  ret i64 %115
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
