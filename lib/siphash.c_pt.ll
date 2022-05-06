; ModuleID = '/llk/IR/lib/siphash.c_pt.bc'
source_filename = "../lib/siphash.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___siphash_unaligned:\09\09\09\09\09"
module asm "\09.asciz \09\22__siphash_unaligned\22\09\09\09\09\09"
module asm "__kstrtabns___siphash_unaligned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_siphash_1u64:\09\09\09\09\09"
module asm "\09.asciz \09\22siphash_1u64\22\09\09\09\09\09"
module asm "__kstrtabns_siphash_1u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_siphash_2u64:\09\09\09\09\09"
module asm "\09.asciz \09\22siphash_2u64\22\09\09\09\09\09"
module asm "__kstrtabns_siphash_2u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_siphash_3u64:\09\09\09\09\09"
module asm "\09.asciz \09\22siphash_3u64\22\09\09\09\09\09"
module asm "__kstrtabns_siphash_3u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_siphash_4u64:\09\09\09\09\09"
module asm "\09.asciz \09\22siphash_4u64\22\09\09\09\09\09"
module asm "__kstrtabns_siphash_4u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_siphash_1u32:\09\09\09\09\09"
module asm "\09.asciz \09\22siphash_1u32\22\09\09\09\09\09"
module asm "__kstrtabns_siphash_1u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_siphash_3u32:\09\09\09\09\09"
module asm "\09.asciz \09\22siphash_3u32\22\09\09\09\09\09"
module asm "__kstrtabns_siphash_3u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hsiphash_unaligned:\09\09\09\09\09"
module asm "\09.asciz \09\22__hsiphash_unaligned\22\09\09\09\09\09"
module asm "__kstrtabns___hsiphash_unaligned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hsiphash_1u32:\09\09\09\09\09"
module asm "\09.asciz \09\22hsiphash_1u32\22\09\09\09\09\09"
module asm "__kstrtabns_hsiphash_1u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hsiphash_2u32:\09\09\09\09\09"
module asm "\09.asciz \09\22hsiphash_2u32\22\09\09\09\09\09"
module asm "__kstrtabns_hsiphash_2u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hsiphash_3u32:\09\09\09\09\09"
module asm "\09.asciz \09\22hsiphash_3u32\22\09\09\09\09\09"
module asm "__kstrtabns_hsiphash_3u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hsiphash_4u32:\09\09\09\09\09"
module asm "\09.asciz \09\22hsiphash_4u32\22\09\09\09\09\09"
module asm "__kstrtabns_hsiphash_4u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab___siphash_unaligned = external dso_local constant [0 x i8], align 1
@__kstrtabns___siphash_unaligned = external dso_local constant [0 x i8], align 1
@__ksymtab___siphash_unaligned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__siphash_unaligned to i32), ptr @__kstrtab___siphash_unaligned, ptr @__kstrtabns___siphash_unaligned }, section "___ksymtab+__siphash_unaligned", align 4
@__kstrtab_siphash_1u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_siphash_1u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_siphash_1u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @siphash_1u64 to i32), ptr @__kstrtab_siphash_1u64, ptr @__kstrtabns_siphash_1u64 }, section "___ksymtab+siphash_1u64", align 4
@__kstrtab_siphash_2u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_siphash_2u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_siphash_2u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @siphash_2u64 to i32), ptr @__kstrtab_siphash_2u64, ptr @__kstrtabns_siphash_2u64 }, section "___ksymtab+siphash_2u64", align 4
@__kstrtab_siphash_3u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_siphash_3u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_siphash_3u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @siphash_3u64 to i32), ptr @__kstrtab_siphash_3u64, ptr @__kstrtabns_siphash_3u64 }, section "___ksymtab+siphash_3u64", align 4
@__kstrtab_siphash_4u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_siphash_4u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_siphash_4u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @siphash_4u64 to i32), ptr @__kstrtab_siphash_4u64, ptr @__kstrtabns_siphash_4u64 }, section "___ksymtab+siphash_4u64", align 4
@__kstrtab_siphash_1u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_siphash_1u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_siphash_1u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @siphash_1u32 to i32), ptr @__kstrtab_siphash_1u32, ptr @__kstrtabns_siphash_1u32 }, section "___ksymtab+siphash_1u32", align 4
@__kstrtab_siphash_3u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_siphash_3u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_siphash_3u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @siphash_3u32 to i32), ptr @__kstrtab_siphash_3u32, ptr @__kstrtabns_siphash_3u32 }, section "___ksymtab+siphash_3u32", align 4
@__kstrtab___hsiphash_unaligned = external dso_local constant [0 x i8], align 1
@__kstrtabns___hsiphash_unaligned = external dso_local constant [0 x i8], align 1
@__ksymtab___hsiphash_unaligned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hsiphash_unaligned to i32), ptr @__kstrtab___hsiphash_unaligned, ptr @__kstrtabns___hsiphash_unaligned }, section "___ksymtab+__hsiphash_unaligned", align 4
@__kstrtab_hsiphash_1u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_hsiphash_1u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_hsiphash_1u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hsiphash_1u32 to i32), ptr @__kstrtab_hsiphash_1u32, ptr @__kstrtabns_hsiphash_1u32 }, section "___ksymtab+hsiphash_1u32", align 4
@__kstrtab_hsiphash_2u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_hsiphash_2u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_hsiphash_2u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hsiphash_2u32 to i32), ptr @__kstrtab_hsiphash_2u32, ptr @__kstrtabns_hsiphash_2u32 }, section "___ksymtab+hsiphash_2u32", align 4
@__kstrtab_hsiphash_3u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_hsiphash_3u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_hsiphash_3u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hsiphash_3u32 to i32), ptr @__kstrtab_hsiphash_3u32, ptr @__kstrtabns_hsiphash_3u32 }, section "___ksymtab+hsiphash_3u32", align 4
@__kstrtab_hsiphash_4u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_hsiphash_4u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_hsiphash_4u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hsiphash_4u32 to i32), ptr @__kstrtab_hsiphash_4u32, ptr @__kstrtabns_hsiphash_4u32 }, section "___ksymtab+hsiphash_4u32", align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab___hsiphash_unaligned, ptr @__ksymtab___siphash_unaligned, ptr @__ksymtab_hsiphash_1u32, ptr @__ksymtab_hsiphash_2u32, ptr @__ksymtab_hsiphash_3u32, ptr @__ksymtab_hsiphash_4u32, ptr @__ksymtab_siphash_1u32, ptr @__ksymtab_siphash_1u64, ptr @__ksymtab_siphash_2u64, ptr @__ksymtab_siphash_3u32, ptr @__ksymtab_siphash_3u64, ptr @__ksymtab_siphash_4u64], section "llvm.metadata"

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i64 @__siphash_unaligned(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 %1
  %5 = and i32 %1, 7
  %6 = sub nsw i32 0, %5
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = zext i32 %1 to i64
  %9 = shl i64 %8, 56
  %10 = getelementptr [2 x i64], ptr %2, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = xor i64 %11, 8387220255154660723
  %13 = load i64, ptr %2, align 8
  %14 = xor i64 %13, 7816392313619706465
  %15 = xor i64 %11, 7237128888997146477
  %16 = xor i64 %13, 8317987319222330741
  %17 = icmp eq ptr %7, %0
  br i1 %17, label %57, label %18

18:                                               ; preds = %18, %3
  %19 = phi i64 [ %49, %18 ], [ %12, %3 ]
  %20 = phi i64 [ %53, %18 ], [ %14, %3 ]
  %21 = phi i64 [ %52, %18 ], [ %15, %3 ]
  %22 = phi i64 [ %54, %18 ], [ %16, %3 ]
  %23 = phi ptr [ %55, %18 ], [ %0, %3 ]
  %24 = load i64, ptr %23, align 1
  %25 = xor i64 %24, %19
  %26 = add i64 %21, %22
  %27 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 13) #3
  %28 = xor i64 %27, %26
  %29 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 32) #3
  %30 = add i64 %25, %20
  %31 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 16) #3
  %32 = xor i64 %31, %30
  %33 = add i64 %32, %29
  %34 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 21) #3
  %35 = xor i64 %34, %33
  %36 = add i64 %30, %28
  %37 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 17) #3
  %38 = xor i64 %36, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 32) #3
  %40 = add i64 %33, %38
  %41 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 13) #3
  %42 = xor i64 %41, %40
  %43 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 32) #3
  %44 = add i64 %35, %39
  %45 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 16) #3
  %46 = xor i64 %45, %44
  %47 = add i64 %46, %43
  %48 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 21) #3
  %49 = xor i64 %48, %47
  %50 = add i64 %44, %42
  %51 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 17) #3
  %52 = xor i64 %51, %50
  %53 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 32) #3
  %54 = xor i64 %47, %24
  %55 = getelementptr i8, ptr %23, i32 8
  %56 = icmp eq ptr %55, %7
  br i1 %56, label %57, label %18

57:                                               ; preds = %18, %3
  %58 = phi i64 [ %16, %3 ], [ %54, %18 ]
  %59 = phi i64 [ %15, %3 ], [ %52, %18 ]
  %60 = phi i64 [ %14, %3 ], [ %53, %18 ]
  %61 = phi i64 [ %12, %3 ], [ %49, %18 ]
  switch i32 %5, label %102 [
    i32 7, label %62
    i32 6, label %68
    i32 5, label %75
    i32 4, label %82
    i32 3, label %87
    i32 2, label %93
    i32 1, label %98
  ]

62:                                               ; preds = %57
  %63 = getelementptr i8, ptr %7, i32 6
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i64
  %66 = shl nuw nsw i64 %65, 48
  %67 = or i64 %66, %9
  br label %68

68:                                               ; preds = %62, %57
  %69 = phi i64 [ %9, %57 ], [ %67, %62 ]
  %70 = getelementptr i8, ptr %7, i32 5
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i64
  %73 = shl nuw nsw i64 %72, 40
  %74 = or i64 %73, %69
  br label %75

75:                                               ; preds = %68, %57
  %76 = phi i64 [ %9, %57 ], [ %74, %68 ]
  %77 = getelementptr i8, ptr %7, i32 4
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i64
  %80 = shl nuw nsw i64 %79, 32
  %81 = or i64 %80, %76
  br label %82

82:                                               ; preds = %75, %57
  %83 = phi i64 [ %9, %57 ], [ %81, %75 ]
  %84 = load i32, ptr %7, align 1
  %85 = zext i32 %84 to i64
  %86 = or i64 %83, %85
  br label %102

87:                                               ; preds = %57
  %88 = getelementptr i8, ptr %7, i32 2
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i64
  %91 = shl nuw nsw i64 %90, 16
  %92 = or i64 %91, %9
  br label %93

93:                                               ; preds = %87, %57
  %94 = phi i64 [ %9, %57 ], [ %92, %87 ]
  %95 = load i16, ptr %7, align 1
  %96 = zext i16 %95 to i64
  %97 = or i64 %94, %96
  br label %102

98:                                               ; preds = %57
  %99 = load i8, ptr %7, align 1
  %100 = zext i8 %99 to i64
  %101 = or i64 %9, %100
  br label %102

102:                                              ; preds = %98, %93, %82, %57
  %103 = phi i64 [ %9, %57 ], [ %101, %98 ], [ %97, %93 ], [ %86, %82 ]
  %104 = xor i64 %103, %61
  %105 = add i64 %59, %58
  %106 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 13) #3
  %107 = xor i64 %106, %105
  %108 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 32) #3
  %109 = add i64 %104, %60
  %110 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 16) #3
  %111 = xor i64 %110, %109
  %112 = add i64 %111, %108
  %113 = tail call i64 @llvm.fshl.i64(i64 %111, i64 %111, i64 21) #3
  %114 = xor i64 %113, %112
  %115 = add i64 %109, %107
  %116 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 17) #3
  %117 = xor i64 %115, %116
  %118 = tail call i64 @llvm.fshl.i64(i64 %115, i64 %115, i64 32) #3
  %119 = add i64 %112, %117
  %120 = tail call i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 13) #3
  %121 = xor i64 %120, %119
  %122 = tail call i64 @llvm.fshl.i64(i64 %119, i64 %119, i64 32) #3
  %123 = add i64 %114, %118
  %124 = tail call i64 @llvm.fshl.i64(i64 %114, i64 %114, i64 16) #3
  %125 = xor i64 %124, %123
  %126 = add i64 %125, %122
  %127 = tail call i64 @llvm.fshl.i64(i64 %125, i64 %125, i64 21) #3
  %128 = xor i64 %127, %126
  %129 = add i64 %123, %121
  %130 = tail call i64 @llvm.fshl.i64(i64 %121, i64 %121, i64 17) #3
  %131 = xor i64 %130, %129
  %132 = tail call i64 @llvm.fshl.i64(i64 %129, i64 %129, i64 32) #3
  %133 = xor i64 %126, %103
  %134 = xor i64 %132, 255
  %135 = add i64 %133, %131
  %136 = tail call i64 @llvm.fshl.i64(i64 %131, i64 %131, i64 13) #3
  %137 = xor i64 %135, %136
  %138 = tail call i64 @llvm.fshl.i64(i64 %135, i64 %135, i64 32) #3
  %139 = add i64 %134, %128
  %140 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 16) #3
  %141 = xor i64 %140, %139
  %142 = add i64 %138, %141
  %143 = tail call i64 @llvm.fshl.i64(i64 %141, i64 %141, i64 21) #3
  %144 = xor i64 %143, %142
  %145 = add i64 %137, %139
  %146 = tail call i64 @llvm.fshl.i64(i64 %137, i64 %137, i64 17) #3
  %147 = xor i64 %146, %145
  %148 = tail call i64 @llvm.fshl.i64(i64 %145, i64 %145, i64 32) #3
  %149 = add i64 %147, %142
  %150 = tail call i64 @llvm.fshl.i64(i64 %147, i64 %147, i64 13) #3
  %151 = xor i64 %150, %149
  %152 = tail call i64 @llvm.fshl.i64(i64 %149, i64 %149, i64 32) #3
  %153 = add i64 %148, %144
  %154 = tail call i64 @llvm.fshl.i64(i64 %144, i64 %144, i64 16) #3
  %155 = xor i64 %154, %153
  %156 = add i64 %152, %155
  %157 = tail call i64 @llvm.fshl.i64(i64 %155, i64 %155, i64 21) #3
  %158 = xor i64 %157, %156
  %159 = add i64 %151, %153
  %160 = tail call i64 @llvm.fshl.i64(i64 %151, i64 %151, i64 17) #3
  %161 = xor i64 %160, %159
  %162 = tail call i64 @llvm.fshl.i64(i64 %159, i64 %159, i64 32) #3
  %163 = add i64 %161, %156
  %164 = tail call i64 @llvm.fshl.i64(i64 %161, i64 %161, i64 13) #3
  %165 = xor i64 %164, %163
  %166 = tail call i64 @llvm.fshl.i64(i64 %163, i64 %163, i64 32) #3
  %167 = add i64 %162, %158
  %168 = tail call i64 @llvm.fshl.i64(i64 %158, i64 %158, i64 16) #3
  %169 = xor i64 %168, %167
  %170 = add i64 %166, %169
  %171 = tail call i64 @llvm.fshl.i64(i64 %169, i64 %169, i64 21) #3
  %172 = xor i64 %171, %170
  %173 = add i64 %165, %167
  %174 = tail call i64 @llvm.fshl.i64(i64 %165, i64 %165, i64 17) #3
  %175 = xor i64 %174, %173
  %176 = tail call i64 @llvm.fshl.i64(i64 %173, i64 %173, i64 32) #3
  %177 = add i64 %175, %170
  %178 = tail call i64 @llvm.fshl.i64(i64 %175, i64 %175, i64 13) #3
  %179 = xor i64 %178, %177
  %180 = add i64 %176, %172
  %181 = tail call i64 @llvm.fshl.i64(i64 %172, i64 %172, i64 16) #3
  %182 = xor i64 %181, %180
  %183 = tail call i64 @llvm.fshl.i64(i64 %182, i64 %182, i64 21) #3
  %184 = add i64 %179, %180
  %185 = tail call i64 @llvm.fshl.i64(i64 %179, i64 %179, i64 17) #3
  %186 = xor i64 %185, %184
  %187 = tail call i64 @llvm.fshl.i64(i64 %184, i64 %184, i64 32) #3
  %188 = xor i64 %186, %183
  %189 = xor i64 %188, %187
  ret i64 %189
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @siphash_1u64(i64 noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr [2 x i64], ptr %1, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = load i64, ptr %1, align 8
  %6 = xor i64 %5, 7816392313619706465
  %7 = xor i64 %4, 7237128888997146477
  %8 = xor i64 %5, 8317987319222330741
  %9 = xor i64 %4, %0
  %10 = xor i64 %9, 8387220255154660723
  %11 = add i64 %8, %7
  %12 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 13) #3
  %13 = xor i64 %11, %12
  %14 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 32) #3
  %15 = add i64 %6, %10
  %16 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 16) #3
  %17 = xor i64 %15, %16
  %18 = add i64 %14, %17
  %19 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 21) #3
  %20 = xor i64 %19, %18
  %21 = add i64 %13, %15
  %22 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 17) #3
  %23 = xor i64 %22, %21
  %24 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 32) #3
  %25 = add i64 %23, %18
  %26 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 13) #3
  %27 = xor i64 %26, %25
  %28 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 32) #3
  %29 = add i64 %24, %20
  %30 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 16) #3
  %31 = xor i64 %30, %29
  %32 = add i64 %28, %31
  %33 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 21) #3
  %34 = xor i64 %33, %32
  %35 = add i64 %27, %29
  %36 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 17) #3
  %37 = xor i64 %36, %35
  %38 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 32) #3
  %39 = xor i64 %32, %0
  %40 = xor i64 %34, 576460752303423488
  %41 = add i64 %39, %37
  %42 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 13) #3
  %43 = xor i64 %42, %41
  %44 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 32) #3
  %45 = add i64 %40, %38
  %46 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %40, i64 16) #3
  %47 = xor i64 %46, %45
  %48 = add i64 %47, %44
  %49 = tail call i64 @llvm.fshl.i64(i64 %47, i64 %47, i64 21) #3
  %50 = xor i64 %49, %48
  %51 = add i64 %45, %43
  %52 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 17) #3
  %53 = xor i64 %52, %51
  %54 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 32) #3
  %55 = add i64 %48, %53
  %56 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 13) #3
  %57 = xor i64 %56, %55
  %58 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 32) #3
  %59 = add i64 %50, %54
  %60 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 16) #3
  %61 = xor i64 %60, %59
  %62 = add i64 %61, %58
  %63 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 21) #3
  %64 = xor i64 %63, %62
  %65 = add i64 %59, %57
  %66 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 17) #3
  %67 = xor i64 %66, %65
  %68 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 32) #3
  %69 = xor i64 %62, 576460752303423488
  %70 = xor i64 %68, 255
  %71 = add i64 %69, %67
  %72 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 13) #3
  %73 = xor i64 %71, %72
  %74 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 32) #3
  %75 = add i64 %70, %64
  %76 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 16) #3
  %77 = xor i64 %76, %75
  %78 = add i64 %74, %77
  %79 = tail call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 21) #3
  %80 = xor i64 %79, %78
  %81 = add i64 %73, %75
  %82 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 17) #3
  %83 = xor i64 %82, %81
  %84 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 32) #3
  %85 = add i64 %83, %78
  %86 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 13) #3
  %87 = xor i64 %86, %85
  %88 = tail call i64 @llvm.fshl.i64(i64 %85, i64 %85, i64 32) #3
  %89 = add i64 %84, %80
  %90 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 16) #3
  %91 = xor i64 %90, %89
  %92 = add i64 %88, %91
  %93 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 21) #3
  %94 = xor i64 %93, %92
  %95 = add i64 %87, %89
  %96 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 17) #3
  %97 = xor i64 %96, %95
  %98 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 32) #3
  %99 = add i64 %97, %92
  %100 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 13) #3
  %101 = xor i64 %100, %99
  %102 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 32) #3
  %103 = add i64 %98, %94
  %104 = tail call i64 @llvm.fshl.i64(i64 %94, i64 %94, i64 16) #3
  %105 = xor i64 %104, %103
  %106 = add i64 %102, %105
  %107 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 21) #3
  %108 = xor i64 %107, %106
  %109 = add i64 %101, %103
  %110 = tail call i64 @llvm.fshl.i64(i64 %101, i64 %101, i64 17) #3
  %111 = xor i64 %110, %109
  %112 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 32) #3
  %113 = add i64 %111, %106
  %114 = tail call i64 @llvm.fshl.i64(i64 %111, i64 %111, i64 13) #3
  %115 = xor i64 %114, %113
  %116 = add i64 %112, %108
  %117 = tail call i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 16) #3
  %118 = xor i64 %117, %116
  %119 = tail call i64 @llvm.fshl.i64(i64 %118, i64 %118, i64 21) #3
  %120 = add i64 %115, %116
  %121 = tail call i64 @llvm.fshl.i64(i64 %115, i64 %115, i64 17) #3
  %122 = xor i64 %121, %120
  %123 = tail call i64 @llvm.fshl.i64(i64 %120, i64 %120, i64 32) #3
  %124 = xor i64 %122, %119
  %125 = xor i64 %124, %123
  ret i64 %125
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @siphash_2u64(i64 noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr [2 x i64], ptr %2, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr %2, align 8
  %7 = xor i64 %6, 7816392313619706465
  %8 = xor i64 %5, 7237128888997146477
  %9 = xor i64 %6, 8317987319222330741
  %10 = xor i64 %5, %0
  %11 = xor i64 %10, 8387220255154660723
  %12 = add i64 %9, %8
  %13 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %8, i64 13) #3
  %14 = xor i64 %12, %13
  %15 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 32) #3
  %16 = add i64 %7, %11
  %17 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %11, i64 16) #3
  %18 = xor i64 %16, %17
  %19 = add i64 %15, %18
  %20 = tail call i64 @llvm.fshl.i64(i64 %18, i64 %18, i64 21) #3
  %21 = xor i64 %20, %19
  %22 = add i64 %14, %16
  %23 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 17) #3
  %24 = xor i64 %23, %22
  %25 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 32) #3
  %26 = add i64 %24, %19
  %27 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 13) #3
  %28 = xor i64 %27, %26
  %29 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 32) #3
  %30 = add i64 %25, %21
  %31 = tail call i64 @llvm.fshl.i64(i64 %21, i64 %21, i64 16) #3
  %32 = xor i64 %31, %30
  %33 = add i64 %29, %32
  %34 = tail call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 21) #3
  %35 = add i64 %28, %30
  %36 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 17) #3
  %37 = xor i64 %36, %35
  %38 = tail call i64 @llvm.fshl.i64(i64 %35, i64 %35, i64 32) #3
  %39 = xor i64 %33, %0
  %40 = xor i64 %33, %1
  %41 = xor i64 %40, %34
  %42 = add i64 %39, %37
  %43 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 13) #3
  %44 = xor i64 %43, %42
  %45 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 32) #3
  %46 = add i64 %41, %38
  %47 = tail call i64 @llvm.fshl.i64(i64 %41, i64 %41, i64 16) #3
  %48 = xor i64 %47, %46
  %49 = add i64 %48, %45
  %50 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 21) #3
  %51 = xor i64 %50, %49
  %52 = add i64 %46, %44
  %53 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 17) #3
  %54 = xor i64 %53, %52
  %55 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 32) #3
  %56 = add i64 %49, %54
  %57 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 13) #3
  %58 = xor i64 %57, %56
  %59 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 32) #3
  %60 = add i64 %51, %55
  %61 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 16) #3
  %62 = xor i64 %61, %60
  %63 = add i64 %62, %59
  %64 = tail call i64 @llvm.fshl.i64(i64 %62, i64 %62, i64 21) #3
  %65 = xor i64 %64, %63
  %66 = add i64 %60, %58
  %67 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 17) #3
  %68 = xor i64 %67, %66
  %69 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 32) #3
  %70 = xor i64 %63, %1
  %71 = xor i64 %65, 1152921504606846976
  %72 = add i64 %70, %68
  %73 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 13) #3
  %74 = xor i64 %72, %73
  %75 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 32) #3
  %76 = add i64 %71, %69
  %77 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %71, i64 16) #3
  %78 = xor i64 %77, %76
  %79 = add i64 %78, %75
  %80 = tail call i64 @llvm.fshl.i64(i64 %78, i64 %78, i64 21) #3
  %81 = xor i64 %80, %79
  %82 = add i64 %76, %74
  %83 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 17) #3
  %84 = xor i64 %83, %82
  %85 = tail call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 32) #3
  %86 = add i64 %79, %84
  %87 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 13) #3
  %88 = xor i64 %87, %86
  %89 = tail call i64 @llvm.fshl.i64(i64 %86, i64 %86, i64 32) #3
  %90 = add i64 %81, %85
  %91 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 16) #3
  %92 = xor i64 %91, %90
  %93 = add i64 %92, %89
  %94 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 21) #3
  %95 = xor i64 %94, %93
  %96 = add i64 %90, %88
  %97 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 17) #3
  %98 = xor i64 %97, %96
  %99 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %96, i64 32) #3
  %100 = xor i64 %93, 1152921504606846976
  %101 = xor i64 %99, 255
  %102 = add i64 %100, %98
  %103 = tail call i64 @llvm.fshl.i64(i64 %98, i64 %98, i64 13) #3
  %104 = xor i64 %102, %103
  %105 = tail call i64 @llvm.fshl.i64(i64 %102, i64 %102, i64 32) #3
  %106 = add i64 %101, %95
  %107 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 16) #3
  %108 = xor i64 %107, %106
  %109 = add i64 %105, %108
  %110 = tail call i64 @llvm.fshl.i64(i64 %108, i64 %108, i64 21) #3
  %111 = xor i64 %110, %109
  %112 = add i64 %104, %106
  %113 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 17) #3
  %114 = xor i64 %113, %112
  %115 = tail call i64 @llvm.fshl.i64(i64 %112, i64 %112, i64 32) #3
  %116 = add i64 %114, %109
  %117 = tail call i64 @llvm.fshl.i64(i64 %114, i64 %114, i64 13) #3
  %118 = xor i64 %117, %116
  %119 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 32) #3
  %120 = add i64 %115, %111
  %121 = tail call i64 @llvm.fshl.i64(i64 %111, i64 %111, i64 16) #3
  %122 = xor i64 %121, %120
  %123 = add i64 %119, %122
  %124 = tail call i64 @llvm.fshl.i64(i64 %122, i64 %122, i64 21) #3
  %125 = xor i64 %124, %123
  %126 = add i64 %118, %120
  %127 = tail call i64 @llvm.fshl.i64(i64 %118, i64 %118, i64 17) #3
  %128 = xor i64 %127, %126
  %129 = tail call i64 @llvm.fshl.i64(i64 %126, i64 %126, i64 32) #3
  %130 = add i64 %128, %123
  %131 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 13) #3
  %132 = xor i64 %131, %130
  %133 = tail call i64 @llvm.fshl.i64(i64 %130, i64 %130, i64 32) #3
  %134 = add i64 %129, %125
  %135 = tail call i64 @llvm.fshl.i64(i64 %125, i64 %125, i64 16) #3
  %136 = xor i64 %135, %134
  %137 = add i64 %133, %136
  %138 = tail call i64 @llvm.fshl.i64(i64 %136, i64 %136, i64 21) #3
  %139 = xor i64 %138, %137
  %140 = add i64 %132, %134
  %141 = tail call i64 @llvm.fshl.i64(i64 %132, i64 %132, i64 17) #3
  %142 = xor i64 %141, %140
  %143 = tail call i64 @llvm.fshl.i64(i64 %140, i64 %140, i64 32) #3
  %144 = add i64 %142, %137
  %145 = tail call i64 @llvm.fshl.i64(i64 %142, i64 %142, i64 13) #3
  %146 = xor i64 %145, %144
  %147 = add i64 %143, %139
  %148 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 16) #3
  %149 = xor i64 %148, %147
  %150 = tail call i64 @llvm.fshl.i64(i64 %149, i64 %149, i64 21) #3
  %151 = add i64 %146, %147
  %152 = tail call i64 @llvm.fshl.i64(i64 %146, i64 %146, i64 17) #3
  %153 = xor i64 %152, %151
  %154 = tail call i64 @llvm.fshl.i64(i64 %151, i64 %151, i64 32) #3
  %155 = xor i64 %153, %150
  %156 = xor i64 %155, %154
  ret i64 %156
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @siphash_3u64(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) #1 {
  %5 = getelementptr [2 x i64], ptr %3, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = load i64, ptr %3, align 8
  %8 = xor i64 %7, 7816392313619706465
  %9 = xor i64 %6, 7237128888997146477
  %10 = xor i64 %7, 8317987319222330741
  %11 = xor i64 %6, %0
  %12 = xor i64 %11, 8387220255154660723
  %13 = add i64 %10, %9
  %14 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %9, i64 13) #3
  %15 = xor i64 %13, %14
  %16 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 32) #3
  %17 = add i64 %8, %12
  %18 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 16) #3
  %19 = xor i64 %17, %18
  %20 = add i64 %16, %19
  %21 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 21) #3
  %22 = xor i64 %21, %20
  %23 = add i64 %15, %17
  %24 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 17) #3
  %25 = xor i64 %24, %23
  %26 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 32) #3
  %27 = add i64 %25, %20
  %28 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 13) #3
  %29 = xor i64 %28, %27
  %30 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 32) #3
  %31 = add i64 %26, %22
  %32 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 16) #3
  %33 = xor i64 %32, %31
  %34 = add i64 %30, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 21) #3
  %36 = add i64 %29, %31
  %37 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 17) #3
  %38 = xor i64 %37, %36
  %39 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 32) #3
  %40 = xor i64 %34, %0
  %41 = xor i64 %34, %1
  %42 = xor i64 %41, %35
  %43 = add i64 %40, %38
  %44 = tail call i64 @llvm.fshl.i64(i64 %38, i64 %38, i64 13) #3
  %45 = xor i64 %44, %43
  %46 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 32) #3
  %47 = add i64 %42, %39
  %48 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 16) #3
  %49 = xor i64 %48, %47
  %50 = add i64 %49, %46
  %51 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 21) #3
  %52 = xor i64 %51, %50
  %53 = add i64 %47, %45
  %54 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 17) #3
  %55 = xor i64 %54, %53
  %56 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 32) #3
  %57 = add i64 %50, %55
  %58 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 13) #3
  %59 = xor i64 %58, %57
  %60 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 32) #3
  %61 = add i64 %52, %56
  %62 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 16) #3
  %63 = xor i64 %62, %61
  %64 = add i64 %63, %60
  %65 = tail call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 21) #3
  %66 = add i64 %61, %59
  %67 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 17) #3
  %68 = xor i64 %67, %66
  %69 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 32) #3
  %70 = xor i64 %64, %1
  %71 = xor i64 %64, %2
  %72 = xor i64 %71, %65
  %73 = add i64 %70, %68
  %74 = tail call i64 @llvm.fshl.i64(i64 %68, i64 %68, i64 13) #3
  %75 = xor i64 %73, %74
  %76 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 32) #3
  %77 = add i64 %72, %69
  %78 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 16) #3
  %79 = xor i64 %78, %77
  %80 = add i64 %79, %76
  %81 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 21) #3
  %82 = xor i64 %81, %80
  %83 = add i64 %77, %75
  %84 = tail call i64 @llvm.fshl.i64(i64 %75, i64 %75, i64 17) #3
  %85 = xor i64 %84, %83
  %86 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 32) #3
  %87 = add i64 %80, %85
  %88 = tail call i64 @llvm.fshl.i64(i64 %85, i64 %85, i64 13) #3
  %89 = xor i64 %88, %87
  %90 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 32) #3
  %91 = add i64 %82, %86
  %92 = tail call i64 @llvm.fshl.i64(i64 %82, i64 %82, i64 16) #3
  %93 = xor i64 %92, %91
  %94 = add i64 %93, %90
  %95 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 21) #3
  %96 = xor i64 %95, %94
  %97 = add i64 %91, %89
  %98 = tail call i64 @llvm.fshl.i64(i64 %89, i64 %89, i64 17) #3
  %99 = xor i64 %98, %97
  %100 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 32) #3
  %101 = xor i64 %94, %2
  %102 = xor i64 %96, 1729382256910270464
  %103 = add i64 %101, %99
  %104 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 13) #3
  %105 = xor i64 %103, %104
  %106 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 32) #3
  %107 = add i64 %102, %100
  %108 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %102, i64 16) #3
  %109 = xor i64 %108, %107
  %110 = add i64 %109, %106
  %111 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 21) #3
  %112 = xor i64 %111, %110
  %113 = add i64 %107, %105
  %114 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 17) #3
  %115 = xor i64 %114, %113
  %116 = tail call i64 @llvm.fshl.i64(i64 %113, i64 %113, i64 32) #3
  %117 = add i64 %110, %115
  %118 = tail call i64 @llvm.fshl.i64(i64 %115, i64 %115, i64 13) #3
  %119 = xor i64 %118, %117
  %120 = tail call i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 32) #3
  %121 = add i64 %112, %116
  %122 = tail call i64 @llvm.fshl.i64(i64 %112, i64 %112, i64 16) #3
  %123 = xor i64 %122, %121
  %124 = add i64 %123, %120
  %125 = tail call i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 21) #3
  %126 = xor i64 %125, %124
  %127 = add i64 %121, %119
  %128 = tail call i64 @llvm.fshl.i64(i64 %119, i64 %119, i64 17) #3
  %129 = xor i64 %128, %127
  %130 = tail call i64 @llvm.fshl.i64(i64 %127, i64 %127, i64 32) #3
  %131 = xor i64 %124, 1729382256910270464
  %132 = xor i64 %130, 255
  %133 = add i64 %131, %129
  %134 = tail call i64 @llvm.fshl.i64(i64 %129, i64 %129, i64 13) #3
  %135 = xor i64 %133, %134
  %136 = tail call i64 @llvm.fshl.i64(i64 %133, i64 %133, i64 32) #3
  %137 = add i64 %132, %126
  %138 = tail call i64 @llvm.fshl.i64(i64 %126, i64 %126, i64 16) #3
  %139 = xor i64 %138, %137
  %140 = add i64 %136, %139
  %141 = tail call i64 @llvm.fshl.i64(i64 %139, i64 %139, i64 21) #3
  %142 = xor i64 %141, %140
  %143 = add i64 %135, %137
  %144 = tail call i64 @llvm.fshl.i64(i64 %135, i64 %135, i64 17) #3
  %145 = xor i64 %144, %143
  %146 = tail call i64 @llvm.fshl.i64(i64 %143, i64 %143, i64 32) #3
  %147 = add i64 %145, %140
  %148 = tail call i64 @llvm.fshl.i64(i64 %145, i64 %145, i64 13) #3
  %149 = xor i64 %148, %147
  %150 = tail call i64 @llvm.fshl.i64(i64 %147, i64 %147, i64 32) #3
  %151 = add i64 %146, %142
  %152 = tail call i64 @llvm.fshl.i64(i64 %142, i64 %142, i64 16) #3
  %153 = xor i64 %152, %151
  %154 = add i64 %150, %153
  %155 = tail call i64 @llvm.fshl.i64(i64 %153, i64 %153, i64 21) #3
  %156 = xor i64 %155, %154
  %157 = add i64 %149, %151
  %158 = tail call i64 @llvm.fshl.i64(i64 %149, i64 %149, i64 17) #3
  %159 = xor i64 %158, %157
  %160 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 32) #3
  %161 = add i64 %159, %154
  %162 = tail call i64 @llvm.fshl.i64(i64 %159, i64 %159, i64 13) #3
  %163 = xor i64 %162, %161
  %164 = tail call i64 @llvm.fshl.i64(i64 %161, i64 %161, i64 32) #3
  %165 = add i64 %160, %156
  %166 = tail call i64 @llvm.fshl.i64(i64 %156, i64 %156, i64 16) #3
  %167 = xor i64 %166, %165
  %168 = add i64 %164, %167
  %169 = tail call i64 @llvm.fshl.i64(i64 %167, i64 %167, i64 21) #3
  %170 = xor i64 %169, %168
  %171 = add i64 %163, %165
  %172 = tail call i64 @llvm.fshl.i64(i64 %163, i64 %163, i64 17) #3
  %173 = xor i64 %172, %171
  %174 = tail call i64 @llvm.fshl.i64(i64 %171, i64 %171, i64 32) #3
  %175 = add i64 %173, %168
  %176 = tail call i64 @llvm.fshl.i64(i64 %173, i64 %173, i64 13) #3
  %177 = xor i64 %176, %175
  %178 = add i64 %174, %170
  %179 = tail call i64 @llvm.fshl.i64(i64 %170, i64 %170, i64 16) #3
  %180 = xor i64 %179, %178
  %181 = tail call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 21) #3
  %182 = add i64 %177, %178
  %183 = tail call i64 @llvm.fshl.i64(i64 %177, i64 %177, i64 17) #3
  %184 = xor i64 %183, %182
  %185 = tail call i64 @llvm.fshl.i64(i64 %182, i64 %182, i64 32) #3
  %186 = xor i64 %184, %181
  %187 = xor i64 %186, %185
  ret i64 %187
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @siphash_4u64(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) #1 {
  %6 = getelementptr [2 x i64], ptr %4, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %4, align 8
  %9 = xor i64 %8, 7816392313619706465
  %10 = xor i64 %7, 7237128888997146477
  %11 = xor i64 %8, 8317987319222330741
  %12 = xor i64 %7, %0
  %13 = xor i64 %12, 8387220255154660723
  %14 = add i64 %11, %10
  %15 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %10, i64 13) #3
  %16 = xor i64 %14, %15
  %17 = tail call i64 @llvm.fshl.i64(i64 %14, i64 %14, i64 32) #3
  %18 = add i64 %9, %13
  %19 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 16) #3
  %20 = xor i64 %18, %19
  %21 = add i64 %17, %20
  %22 = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 21) #3
  %23 = xor i64 %22, %21
  %24 = add i64 %16, %18
  %25 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 17) #3
  %26 = xor i64 %25, %24
  %27 = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 32) #3
  %28 = add i64 %26, %21
  %29 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 13) #3
  %30 = xor i64 %29, %28
  %31 = tail call i64 @llvm.fshl.i64(i64 %28, i64 %28, i64 32) #3
  %32 = add i64 %27, %23
  %33 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 16) #3
  %34 = xor i64 %33, %32
  %35 = add i64 %31, %34
  %36 = tail call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 21) #3
  %37 = add i64 %30, %32
  %38 = tail call i64 @llvm.fshl.i64(i64 %30, i64 %30, i64 17) #3
  %39 = xor i64 %38, %37
  %40 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 32) #3
  %41 = xor i64 %35, %0
  %42 = xor i64 %35, %1
  %43 = xor i64 %42, %36
  %44 = add i64 %41, %39
  %45 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 13) #3
  %46 = xor i64 %45, %44
  %47 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %44, i64 32) #3
  %48 = add i64 %43, %40
  %49 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 16) #3
  %50 = xor i64 %49, %48
  %51 = add i64 %50, %47
  %52 = tail call i64 @llvm.fshl.i64(i64 %50, i64 %50, i64 21) #3
  %53 = xor i64 %52, %51
  %54 = add i64 %48, %46
  %55 = tail call i64 @llvm.fshl.i64(i64 %46, i64 %46, i64 17) #3
  %56 = xor i64 %55, %54
  %57 = tail call i64 @llvm.fshl.i64(i64 %54, i64 %54, i64 32) #3
  %58 = add i64 %51, %56
  %59 = tail call i64 @llvm.fshl.i64(i64 %56, i64 %56, i64 13) #3
  %60 = xor i64 %59, %58
  %61 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 32) #3
  %62 = add i64 %53, %57
  %63 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 16) #3
  %64 = xor i64 %63, %62
  %65 = add i64 %64, %61
  %66 = tail call i64 @llvm.fshl.i64(i64 %64, i64 %64, i64 21) #3
  %67 = add i64 %62, %60
  %68 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %60, i64 17) #3
  %69 = xor i64 %68, %67
  %70 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 32) #3
  %71 = xor i64 %65, %1
  %72 = xor i64 %65, %2
  %73 = xor i64 %72, %66
  %74 = add i64 %71, %69
  %75 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 13) #3
  %76 = xor i64 %74, %75
  %77 = tail call i64 @llvm.fshl.i64(i64 %74, i64 %74, i64 32) #3
  %78 = add i64 %73, %70
  %79 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 16) #3
  %80 = xor i64 %79, %78
  %81 = add i64 %80, %77
  %82 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 21) #3
  %83 = xor i64 %82, %81
  %84 = add i64 %78, %76
  %85 = tail call i64 @llvm.fshl.i64(i64 %76, i64 %76, i64 17) #3
  %86 = xor i64 %85, %84
  %87 = tail call i64 @llvm.fshl.i64(i64 %84, i64 %84, i64 32) #3
  %88 = add i64 %81, %86
  %89 = tail call i64 @llvm.fshl.i64(i64 %86, i64 %86, i64 13) #3
  %90 = xor i64 %89, %88
  %91 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 32) #3
  %92 = add i64 %83, %87
  %93 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 16) #3
  %94 = xor i64 %93, %92
  %95 = add i64 %94, %91
  %96 = tail call i64 @llvm.fshl.i64(i64 %94, i64 %94, i64 21) #3
  %97 = add i64 %92, %90
  %98 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 17) #3
  %99 = xor i64 %98, %97
  %100 = tail call i64 @llvm.fshl.i64(i64 %97, i64 %97, i64 32) #3
  %101 = xor i64 %95, %2
  %102 = xor i64 %95, %3
  %103 = xor i64 %102, %96
  %104 = add i64 %101, %99
  %105 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 13) #3
  %106 = xor i64 %104, %105
  %107 = tail call i64 @llvm.fshl.i64(i64 %104, i64 %104, i64 32) #3
  %108 = add i64 %103, %100
  %109 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 16) #3
  %110 = xor i64 %109, %108
  %111 = add i64 %110, %107
  %112 = tail call i64 @llvm.fshl.i64(i64 %110, i64 %110, i64 21) #3
  %113 = xor i64 %112, %111
  %114 = add i64 %108, %106
  %115 = tail call i64 @llvm.fshl.i64(i64 %106, i64 %106, i64 17) #3
  %116 = xor i64 %115, %114
  %117 = tail call i64 @llvm.fshl.i64(i64 %114, i64 %114, i64 32) #3
  %118 = add i64 %111, %116
  %119 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 13) #3
  %120 = xor i64 %119, %118
  %121 = tail call i64 @llvm.fshl.i64(i64 %118, i64 %118, i64 32) #3
  %122 = add i64 %113, %117
  %123 = tail call i64 @llvm.fshl.i64(i64 %113, i64 %113, i64 16) #3
  %124 = xor i64 %123, %122
  %125 = add i64 %124, %121
  %126 = tail call i64 @llvm.fshl.i64(i64 %124, i64 %124, i64 21) #3
  %127 = xor i64 %126, %125
  %128 = add i64 %122, %120
  %129 = tail call i64 @llvm.fshl.i64(i64 %120, i64 %120, i64 17) #3
  %130 = xor i64 %129, %128
  %131 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 32) #3
  %132 = xor i64 %125, %3
  %133 = xor i64 %127, 2305843009213693952
  %134 = add i64 %132, %130
  %135 = tail call i64 @llvm.fshl.i64(i64 %130, i64 %130, i64 13) #3
  %136 = xor i64 %134, %135
  %137 = tail call i64 @llvm.fshl.i64(i64 %134, i64 %134, i64 32) #3
  %138 = add i64 %133, %131
  %139 = tail call i64 @llvm.fshl.i64(i64 %127, i64 %133, i64 16) #3
  %140 = xor i64 %139, %138
  %141 = add i64 %140, %137
  %142 = tail call i64 @llvm.fshl.i64(i64 %140, i64 %140, i64 21) #3
  %143 = xor i64 %142, %141
  %144 = add i64 %138, %136
  %145 = tail call i64 @llvm.fshl.i64(i64 %136, i64 %136, i64 17) #3
  %146 = xor i64 %145, %144
  %147 = tail call i64 @llvm.fshl.i64(i64 %144, i64 %144, i64 32) #3
  %148 = add i64 %141, %146
  %149 = tail call i64 @llvm.fshl.i64(i64 %146, i64 %146, i64 13) #3
  %150 = xor i64 %149, %148
  %151 = tail call i64 @llvm.fshl.i64(i64 %148, i64 %148, i64 32) #3
  %152 = add i64 %143, %147
  %153 = tail call i64 @llvm.fshl.i64(i64 %143, i64 %143, i64 16) #3
  %154 = xor i64 %153, %152
  %155 = add i64 %154, %151
  %156 = tail call i64 @llvm.fshl.i64(i64 %154, i64 %154, i64 21) #3
  %157 = xor i64 %156, %155
  %158 = add i64 %152, %150
  %159 = tail call i64 @llvm.fshl.i64(i64 %150, i64 %150, i64 17) #3
  %160 = xor i64 %159, %158
  %161 = tail call i64 @llvm.fshl.i64(i64 %158, i64 %158, i64 32) #3
  %162 = xor i64 %155, 2305843009213693952
  %163 = xor i64 %161, 255
  %164 = add i64 %162, %160
  %165 = tail call i64 @llvm.fshl.i64(i64 %160, i64 %160, i64 13) #3
  %166 = xor i64 %164, %165
  %167 = tail call i64 @llvm.fshl.i64(i64 %164, i64 %164, i64 32) #3
  %168 = add i64 %163, %157
  %169 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %157, i64 16) #3
  %170 = xor i64 %169, %168
  %171 = add i64 %167, %170
  %172 = tail call i64 @llvm.fshl.i64(i64 %170, i64 %170, i64 21) #3
  %173 = xor i64 %172, %171
  %174 = add i64 %166, %168
  %175 = tail call i64 @llvm.fshl.i64(i64 %166, i64 %166, i64 17) #3
  %176 = xor i64 %175, %174
  %177 = tail call i64 @llvm.fshl.i64(i64 %174, i64 %174, i64 32) #3
  %178 = add i64 %176, %171
  %179 = tail call i64 @llvm.fshl.i64(i64 %176, i64 %176, i64 13) #3
  %180 = xor i64 %179, %178
  %181 = tail call i64 @llvm.fshl.i64(i64 %178, i64 %178, i64 32) #3
  %182 = add i64 %177, %173
  %183 = tail call i64 @llvm.fshl.i64(i64 %173, i64 %173, i64 16) #3
  %184 = xor i64 %183, %182
  %185 = add i64 %181, %184
  %186 = tail call i64 @llvm.fshl.i64(i64 %184, i64 %184, i64 21) #3
  %187 = xor i64 %186, %185
  %188 = add i64 %180, %182
  %189 = tail call i64 @llvm.fshl.i64(i64 %180, i64 %180, i64 17) #3
  %190 = xor i64 %189, %188
  %191 = tail call i64 @llvm.fshl.i64(i64 %188, i64 %188, i64 32) #3
  %192 = add i64 %190, %185
  %193 = tail call i64 @llvm.fshl.i64(i64 %190, i64 %190, i64 13) #3
  %194 = xor i64 %193, %192
  %195 = tail call i64 @llvm.fshl.i64(i64 %192, i64 %192, i64 32) #3
  %196 = add i64 %191, %187
  %197 = tail call i64 @llvm.fshl.i64(i64 %187, i64 %187, i64 16) #3
  %198 = xor i64 %197, %196
  %199 = add i64 %195, %198
  %200 = tail call i64 @llvm.fshl.i64(i64 %198, i64 %198, i64 21) #3
  %201 = xor i64 %200, %199
  %202 = add i64 %194, %196
  %203 = tail call i64 @llvm.fshl.i64(i64 %194, i64 %194, i64 17) #3
  %204 = xor i64 %203, %202
  %205 = tail call i64 @llvm.fshl.i64(i64 %202, i64 %202, i64 32) #3
  %206 = add i64 %204, %199
  %207 = tail call i64 @llvm.fshl.i64(i64 %204, i64 %204, i64 13) #3
  %208 = xor i64 %207, %206
  %209 = add i64 %205, %201
  %210 = tail call i64 @llvm.fshl.i64(i64 %201, i64 %201, i64 16) #3
  %211 = xor i64 %210, %209
  %212 = tail call i64 @llvm.fshl.i64(i64 %211, i64 %211, i64 21) #3
  %213 = add i64 %208, %209
  %214 = tail call i64 @llvm.fshl.i64(i64 %208, i64 %208, i64 17) #3
  %215 = xor i64 %214, %213
  %216 = tail call i64 @llvm.fshl.i64(i64 %213, i64 %213, i64 32) #3
  %217 = xor i64 %215, %212
  %218 = xor i64 %217, %216
  ret i64 %218
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @siphash_1u32(i32 noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr [2 x i64], ptr %1, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = load i64, ptr %1, align 8
  %6 = xor i64 %5, 7816392313619706465
  %7 = xor i64 %4, 7237128888997146477
  %8 = xor i64 %5, 8317987319222330741
  %9 = zext i32 %0 to i64
  %10 = or i64 %9, 288230376151711744
  %11 = xor i64 %4, %9
  %12 = xor i64 %11, 8098989879002948979
  %13 = add i64 %8, %7
  %14 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %7, i64 13) #3
  %15 = xor i64 %13, %14
  %16 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 32) #3
  %17 = add i64 %6, %12
  %18 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %12, i64 16) #3
  %19 = xor i64 %17, %18
  %20 = add i64 %16, %19
  %21 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 21) #3
  %22 = xor i64 %21, %20
  %23 = add i64 %15, %17
  %24 = tail call i64 @llvm.fshl.i64(i64 %15, i64 %15, i64 17) #3
  %25 = xor i64 %24, %23
  %26 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 32) #3
  %27 = add i64 %25, %20
  %28 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %25, i64 13) #3
  %29 = xor i64 %28, %27
  %30 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 32) #3
  %31 = add i64 %26, %22
  %32 = tail call i64 @llvm.fshl.i64(i64 %22, i64 %22, i64 16) #3
  %33 = xor i64 %32, %31
  %34 = add i64 %30, %33
  %35 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 21) #3
  %36 = xor i64 %35, %34
  %37 = add i64 %29, %31
  %38 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 17) #3
  %39 = xor i64 %38, %37
  %40 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 32) #3
  %41 = xor i64 %34, %10
  %42 = xor i64 %40, 255
  %43 = add i64 %41, %39
  %44 = tail call i64 @llvm.fshl.i64(i64 %39, i64 %39, i64 13) #3
  %45 = xor i64 %44, %43
  %46 = tail call i64 @llvm.fshl.i64(i64 %43, i64 %43, i64 32) #3
  %47 = add i64 %42, %36
  %48 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %36, i64 16) #3
  %49 = xor i64 %47, %48
  %50 = add i64 %49, %46
  %51 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 21) #3
  %52 = xor i64 %51, %50
  %53 = add i64 %47, %45
  %54 = tail call i64 @llvm.fshl.i64(i64 %45, i64 %45, i64 17) #3
  %55 = xor i64 %54, %53
  %56 = tail call i64 @llvm.fshl.i64(i64 %53, i64 %53, i64 32) #3
  %57 = add i64 %50, %55
  %58 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 13) #3
  %59 = xor i64 %58, %57
  %60 = tail call i64 @llvm.fshl.i64(i64 %57, i64 %57, i64 32) #3
  %61 = add i64 %52, %56
  %62 = tail call i64 @llvm.fshl.i64(i64 %52, i64 %52, i64 16) #3
  %63 = xor i64 %62, %61
  %64 = add i64 %63, %60
  %65 = tail call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 21) #3
  %66 = xor i64 %65, %64
  %67 = add i64 %61, %59
  %68 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 17) #3
  %69 = xor i64 %68, %67
  %70 = tail call i64 @llvm.fshl.i64(i64 %67, i64 %67, i64 32) #3
  %71 = add i64 %64, %69
  %72 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 13) #3
  %73 = xor i64 %72, %71
  %74 = tail call i64 @llvm.fshl.i64(i64 %71, i64 %71, i64 32) #3
  %75 = add i64 %66, %70
  %76 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %66, i64 16) #3
  %77 = xor i64 %76, %75
  %78 = add i64 %77, %74
  %79 = tail call i64 @llvm.fshl.i64(i64 %77, i64 %77, i64 21) #3
  %80 = xor i64 %79, %78
  %81 = add i64 %75, %73
  %82 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 17) #3
  %83 = xor i64 %82, %81
  %84 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 32) #3
  %85 = add i64 %78, %83
  %86 = tail call i64 @llvm.fshl.i64(i64 %83, i64 %83, i64 13) #3
  %87 = xor i64 %86, %85
  %88 = add i64 %80, %84
  %89 = tail call i64 @llvm.fshl.i64(i64 %80, i64 %80, i64 16) #3
  %90 = xor i64 %89, %88
  %91 = tail call i64 @llvm.fshl.i64(i64 %90, i64 %90, i64 21) #3
  %92 = add i64 %88, %87
  %93 = tail call i64 @llvm.fshl.i64(i64 %87, i64 %87, i64 17) #3
  %94 = xor i64 %93, %92
  %95 = tail call i64 @llvm.fshl.i64(i64 %92, i64 %92, i64 32) #3
  %96 = xor i64 %94, %91
  %97 = xor i64 %96, %95
  ret i64 %97
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @siphash_3u32(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #1 {
  %5 = zext i32 %1 to i64
  %6 = shl nuw i64 %5, 32
  %7 = zext i32 %0 to i64
  %8 = or i64 %6, %7
  %9 = getelementptr [2 x i64], ptr %3, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = load i64, ptr %3, align 8
  %12 = xor i64 %11, 7816392313619706465
  %13 = xor i64 %10, 7237128888997146477
  %14 = xor i64 %11, 8317987319222330741
  %15 = xor i64 %8, %10
  %16 = xor i64 %15, 8387220255154660723
  %17 = add i64 %14, %13
  %18 = tail call i64 @llvm.fshl.i64(i64 %13, i64 %13, i64 13) #3
  %19 = xor i64 %17, %18
  %20 = tail call i64 @llvm.fshl.i64(i64 %17, i64 %17, i64 32) #3
  %21 = add i64 %12, %16
  %22 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %16, i64 16) #3
  %23 = xor i64 %21, %22
  %24 = add i64 %20, %23
  %25 = tail call i64 @llvm.fshl.i64(i64 %23, i64 %23, i64 21) #3
  %26 = xor i64 %25, %24
  %27 = add i64 %19, %21
  %28 = tail call i64 @llvm.fshl.i64(i64 %19, i64 %19, i64 17) #3
  %29 = xor i64 %28, %27
  %30 = tail call i64 @llvm.fshl.i64(i64 %27, i64 %27, i64 32) #3
  %31 = add i64 %29, %24
  %32 = tail call i64 @llvm.fshl.i64(i64 %29, i64 %29, i64 13) #3
  %33 = xor i64 %32, %31
  %34 = tail call i64 @llvm.fshl.i64(i64 %31, i64 %31, i64 32) #3
  %35 = add i64 %30, %26
  %36 = tail call i64 @llvm.fshl.i64(i64 %26, i64 %26, i64 16) #3
  %37 = xor i64 %36, %35
  %38 = add i64 %34, %37
  %39 = tail call i64 @llvm.fshl.i64(i64 %37, i64 %37, i64 21) #3
  %40 = add i64 %33, %35
  %41 = tail call i64 @llvm.fshl.i64(i64 %33, i64 %33, i64 17) #3
  %42 = xor i64 %41, %40
  %43 = tail call i64 @llvm.fshl.i64(i64 %40, i64 %40, i64 32) #3
  %44 = xor i64 %38, %8
  %45 = zext i32 %2 to i64
  %46 = or i64 %45, 864691128455135232
  %47 = xor i64 %38, %46
  %48 = xor i64 %47, %39
  %49 = add i64 %44, %42
  %50 = tail call i64 @llvm.fshl.i64(i64 %42, i64 %42, i64 13) #3
  %51 = xor i64 %50, %49
  %52 = tail call i64 @llvm.fshl.i64(i64 %49, i64 %49, i64 32) #3
  %53 = add i64 %48, %43
  %54 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %48, i64 16) #3
  %55 = xor i64 %54, %53
  %56 = add i64 %55, %52
  %57 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %55, i64 21) #3
  %58 = xor i64 %57, %56
  %59 = add i64 %53, %51
  %60 = tail call i64 @llvm.fshl.i64(i64 %51, i64 %51, i64 17) #3
  %61 = xor i64 %60, %59
  %62 = tail call i64 @llvm.fshl.i64(i64 %59, i64 %59, i64 32) #3
  %63 = add i64 %56, %61
  %64 = tail call i64 @llvm.fshl.i64(i64 %61, i64 %61, i64 13) #3
  %65 = xor i64 %64, %63
  %66 = tail call i64 @llvm.fshl.i64(i64 %63, i64 %63, i64 32) #3
  %67 = add i64 %58, %62
  %68 = tail call i64 @llvm.fshl.i64(i64 %58, i64 %58, i64 16) #3
  %69 = xor i64 %68, %67
  %70 = add i64 %69, %66
  %71 = tail call i64 @llvm.fshl.i64(i64 %69, i64 %69, i64 21) #3
  %72 = xor i64 %71, %70
  %73 = add i64 %67, %65
  %74 = tail call i64 @llvm.fshl.i64(i64 %65, i64 %65, i64 17) #3
  %75 = xor i64 %74, %73
  %76 = tail call i64 @llvm.fshl.i64(i64 %73, i64 %73, i64 32) #3
  %77 = xor i64 %70, %46
  %78 = xor i64 %76, 255
  %79 = add i64 %77, %75
  %80 = tail call i64 @llvm.fshl.i64(i64 %75, i64 %75, i64 13) #3
  %81 = xor i64 %79, %80
  %82 = tail call i64 @llvm.fshl.i64(i64 %79, i64 %79, i64 32) #3
  %83 = add i64 %78, %72
  %84 = tail call i64 @llvm.fshl.i64(i64 %72, i64 %72, i64 16) #3
  %85 = xor i64 %84, %83
  %86 = add i64 %82, %85
  %87 = tail call i64 @llvm.fshl.i64(i64 %85, i64 %85, i64 21) #3
  %88 = xor i64 %87, %86
  %89 = add i64 %81, %83
  %90 = tail call i64 @llvm.fshl.i64(i64 %81, i64 %81, i64 17) #3
  %91 = xor i64 %90, %89
  %92 = tail call i64 @llvm.fshl.i64(i64 %89, i64 %89, i64 32) #3
  %93 = add i64 %91, %86
  %94 = tail call i64 @llvm.fshl.i64(i64 %91, i64 %91, i64 13) #3
  %95 = xor i64 %94, %93
  %96 = tail call i64 @llvm.fshl.i64(i64 %93, i64 %93, i64 32) #3
  %97 = add i64 %92, %88
  %98 = tail call i64 @llvm.fshl.i64(i64 %88, i64 %88, i64 16) #3
  %99 = xor i64 %98, %97
  %100 = add i64 %96, %99
  %101 = tail call i64 @llvm.fshl.i64(i64 %99, i64 %99, i64 21) #3
  %102 = xor i64 %101, %100
  %103 = add i64 %95, %97
  %104 = tail call i64 @llvm.fshl.i64(i64 %95, i64 %95, i64 17) #3
  %105 = xor i64 %104, %103
  %106 = tail call i64 @llvm.fshl.i64(i64 %103, i64 %103, i64 32) #3
  %107 = add i64 %105, %100
  %108 = tail call i64 @llvm.fshl.i64(i64 %105, i64 %105, i64 13) #3
  %109 = xor i64 %108, %107
  %110 = tail call i64 @llvm.fshl.i64(i64 %107, i64 %107, i64 32) #3
  %111 = add i64 %106, %102
  %112 = tail call i64 @llvm.fshl.i64(i64 %102, i64 %102, i64 16) #3
  %113 = xor i64 %112, %111
  %114 = add i64 %110, %113
  %115 = tail call i64 @llvm.fshl.i64(i64 %113, i64 %113, i64 21) #3
  %116 = xor i64 %115, %114
  %117 = add i64 %109, %111
  %118 = tail call i64 @llvm.fshl.i64(i64 %109, i64 %109, i64 17) #3
  %119 = xor i64 %118, %117
  %120 = tail call i64 @llvm.fshl.i64(i64 %117, i64 %117, i64 32) #3
  %121 = add i64 %119, %114
  %122 = tail call i64 @llvm.fshl.i64(i64 %119, i64 %119, i64 13) #3
  %123 = xor i64 %122, %121
  %124 = add i64 %120, %116
  %125 = tail call i64 @llvm.fshl.i64(i64 %116, i64 %116, i64 16) #3
  %126 = xor i64 %125, %124
  %127 = tail call i64 @llvm.fshl.i64(i64 %126, i64 %126, i64 21) #3
  %128 = add i64 %123, %124
  %129 = tail call i64 @llvm.fshl.i64(i64 %123, i64 %123, i64 17) #3
  %130 = xor i64 %129, %128
  %131 = tail call i64 @llvm.fshl.i64(i64 %128, i64 %128, i64 32) #3
  %132 = xor i64 %130, %127
  %133 = xor i64 %132, %131
  ret i64 %133
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @__hsiphash_unaligned(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 %1
  %5 = and i32 %1, 3
  %6 = sub nsw i32 0, %5
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = shl i32 %1, 24
  %9 = getelementptr [2 x i32], ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = xor i32 %10, 1952801890
  %12 = load i32, ptr %2, align 4
  %13 = xor i32 %12, 1819895653
  %14 = icmp eq ptr %7, %0
  br i1 %14, label %40, label %15

15:                                               ; preds = %15, %3
  %16 = phi i32 [ %32, %15 ], [ %11, %3 ]
  %17 = phi i32 [ %36, %15 ], [ %13, %3 ]
  %18 = phi i32 [ %35, %15 ], [ %10, %3 ]
  %19 = phi i32 [ %37, %15 ], [ %12, %3 ]
  %20 = phi ptr [ %38, %15 ], [ %0, %3 ]
  %21 = load i32, ptr %20, align 1
  %22 = xor i32 %21, %16
  %23 = add i32 %18, %19
  %24 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 5) #3
  %25 = xor i32 %24, %23
  %26 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 16) #3
  %27 = add i32 %22, %17
  %28 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 8) #3
  %29 = xor i32 %28, %27
  %30 = add i32 %29, %26
  %31 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 7) #3
  %32 = xor i32 %31, %30
  %33 = add i32 %27, %25
  %34 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 13) #3
  %35 = xor i32 %33, %34
  %36 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 16) #3
  %37 = xor i32 %30, %21
  %38 = getelementptr i8, ptr %20, i32 4
  %39 = icmp eq ptr %38, %7
  br i1 %39, label %40, label %15

40:                                               ; preds = %15, %3
  %41 = phi i32 [ %12, %3 ], [ %37, %15 ]
  %42 = phi i32 [ %10, %3 ], [ %35, %15 ]
  %43 = phi i32 [ %13, %3 ], [ %36, %15 ]
  %44 = phi i32 [ %11, %3 ], [ %32, %15 ]
  switch i32 %5, label %60 [
    i32 3, label %45
    i32 2, label %51
    i32 1, label %56
  ]

45:                                               ; preds = %40
  %46 = getelementptr i8, ptr %7, i32 2
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 16
  %50 = or i32 %49, %8
  br label %51

51:                                               ; preds = %45, %40
  %52 = phi i32 [ %8, %40 ], [ %50, %45 ]
  %53 = load i16, ptr %7, align 1
  %54 = zext i16 %53 to i32
  %55 = or i32 %52, %54
  br label %60

56:                                               ; preds = %40
  %57 = load i8, ptr %7, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %8, %58
  br label %60

60:                                               ; preds = %56, %51, %40
  %61 = phi i32 [ %8, %40 ], [ %59, %56 ], [ %55, %51 ]
  %62 = xor i32 %61, %44
  %63 = add i32 %42, %41
  %64 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 5) #3
  %65 = xor i32 %64, %63
  %66 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 16) #3
  %67 = add i32 %62, %43
  %68 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 8) #3
  %69 = xor i32 %68, %67
  %70 = add i32 %69, %66
  %71 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 7) #3
  %72 = xor i32 %71, %70
  %73 = add i32 %67, %65
  %74 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 13) #3
  %75 = xor i32 %73, %74
  %76 = tail call i32 @llvm.fshl.i32(i32 %73, i32 %73, i32 16) #3
  %77 = xor i32 %70, %61
  %78 = xor i32 %76, 255
  %79 = add i32 %77, %75
  %80 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 5) #3
  %81 = xor i32 %79, %80
  %82 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 16) #3
  %83 = add i32 %78, %72
  %84 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 8) #3
  %85 = xor i32 %84, %83
  %86 = add i32 %82, %85
  %87 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 7) #3
  %88 = xor i32 %87, %86
  %89 = add i32 %81, %83
  %90 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 13) #3
  %91 = xor i32 %90, %89
  %92 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 16) #3
  %93 = add i32 %91, %86
  %94 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 5) #3
  %95 = xor i32 %94, %93
  %96 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 16) #3
  %97 = add i32 %92, %88
  %98 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 8) #3
  %99 = xor i32 %98, %97
  %100 = add i32 %96, %99
  %101 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 7) #3
  %102 = xor i32 %101, %100
  %103 = add i32 %95, %97
  %104 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 13) #3
  %105 = xor i32 %104, %103
  %106 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 16) #3
  %107 = add i32 %105, %100
  %108 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 5) #3
  %109 = xor i32 %108, %107
  %110 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 16) #3
  %111 = add i32 %106, %102
  %112 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 8) #3
  %113 = xor i32 %112, %111
  %114 = add i32 %110, %113
  %115 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 7) #3
  %116 = add i32 %109, %111
  %117 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 13) #3
  %118 = xor i32 %117, %116
  %119 = xor i32 %118, %114
  %120 = xor i32 %119, %115
  ret i32 %120
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @hsiphash_1u32(i32 noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = xor i32 %5, 1819895653
  %7 = xor i32 %4, %0
  %8 = xor i32 %7, 1952801890
  %9 = add i32 %5, %4
  %10 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 5) #3
  %11 = xor i32 %9, %10
  %12 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 16) #3
  %13 = add i32 %6, %8
  %14 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 8) #3
  %15 = xor i32 %13, %14
  %16 = add i32 %15, %12
  %17 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7) #3
  %18 = xor i32 %17, %16
  %19 = add i32 %13, %11
  %20 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 13) #3
  %21 = xor i32 %20, %19
  %22 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 16) #3
  %23 = xor i32 %16, %0
  %24 = xor i32 %18, 67108864
  %25 = add i32 %23, %21
  %26 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 5) #3
  %27 = xor i32 %25, %26
  %28 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 16) #3
  %29 = add i32 %24, %22
  %30 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %24, i32 8) #3
  %31 = xor i32 %30, %29
  %32 = add i32 %31, %28
  %33 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 7) #3
  %34 = xor i32 %33, %32
  %35 = add i32 %29, %27
  %36 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 13) #3
  %37 = xor i32 %36, %35
  %38 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 16) #3
  %39 = xor i32 %32, 67108864
  %40 = xor i32 %38, 255
  %41 = add i32 %39, %37
  %42 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 5) #3
  %43 = xor i32 %41, %42
  %44 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 16) #3
  %45 = add i32 %40, %34
  %46 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 8) #3
  %47 = xor i32 %46, %45
  %48 = add i32 %44, %47
  %49 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 7) #3
  %50 = xor i32 %49, %48
  %51 = add i32 %43, %45
  %52 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 13) #3
  %53 = xor i32 %52, %51
  %54 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 16) #3
  %55 = add i32 %53, %48
  %56 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 5) #3
  %57 = xor i32 %56, %55
  %58 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 16) #3
  %59 = add i32 %54, %50
  %60 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 8) #3
  %61 = xor i32 %60, %59
  %62 = add i32 %58, %61
  %63 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 7) #3
  %64 = xor i32 %63, %62
  %65 = add i32 %57, %59
  %66 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 13) #3
  %67 = xor i32 %66, %65
  %68 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 16) #3
  %69 = add i32 %67, %62
  %70 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 5) #3
  %71 = xor i32 %70, %69
  %72 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 16) #3
  %73 = add i32 %68, %64
  %74 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 8) #3
  %75 = xor i32 %74, %73
  %76 = add i32 %72, %75
  %77 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 7) #3
  %78 = add i32 %71, %73
  %79 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 13) #3
  %80 = xor i32 %79, %78
  %81 = xor i32 %80, %76
  %82 = xor i32 %81, %77
  ret i32 %82
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @hsiphash_2u32(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr [2 x i32], ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = xor i32 %6, 1819895653
  %8 = xor i32 %5, %0
  %9 = xor i32 %8, 1952801890
  %10 = add i32 %6, %5
  %11 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 5) #3
  %12 = xor i32 %10, %11
  %13 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 16) #3
  %14 = add i32 %7, %9
  %15 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 8) #3
  %16 = xor i32 %14, %15
  %17 = add i32 %16, %13
  %18 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 7) #3
  %19 = add i32 %14, %12
  %20 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 13) #3
  %21 = xor i32 %20, %19
  %22 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 16) #3
  %23 = xor i32 %17, %0
  %24 = xor i32 %17, %1
  %25 = xor i32 %24, %18
  %26 = add i32 %23, %21
  %27 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 5) #3
  %28 = xor i32 %26, %27
  %29 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 16) #3
  %30 = add i32 %25, %22
  %31 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 8) #3
  %32 = xor i32 %31, %30
  %33 = add i32 %32, %29
  %34 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 7) #3
  %35 = xor i32 %34, %33
  %36 = add i32 %30, %28
  %37 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 13) #3
  %38 = xor i32 %37, %36
  %39 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 16) #3
  %40 = xor i32 %33, %1
  %41 = xor i32 %35, 134217728
  %42 = add i32 %40, %38
  %43 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 5) #3
  %44 = xor i32 %42, %43
  %45 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 16) #3
  %46 = add i32 %41, %39
  %47 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %41, i32 8) #3
  %48 = xor i32 %47, %46
  %49 = add i32 %48, %45
  %50 = tail call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 7) #3
  %51 = xor i32 %50, %49
  %52 = add i32 %46, %44
  %53 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 13) #3
  %54 = xor i32 %53, %52
  %55 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 16) #3
  %56 = xor i32 %49, 134217728
  %57 = xor i32 %55, 255
  %58 = add i32 %56, %54
  %59 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 5) #3
  %60 = xor i32 %58, %59
  %61 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 16) #3
  %62 = add i32 %57, %51
  %63 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 8) #3
  %64 = xor i32 %63, %62
  %65 = add i32 %61, %64
  %66 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 7) #3
  %67 = xor i32 %66, %65
  %68 = add i32 %60, %62
  %69 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 13) #3
  %70 = xor i32 %69, %68
  %71 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 16) #3
  %72 = add i32 %70, %65
  %73 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 5) #3
  %74 = xor i32 %73, %72
  %75 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 16) #3
  %76 = add i32 %71, %67
  %77 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 8) #3
  %78 = xor i32 %77, %76
  %79 = add i32 %75, %78
  %80 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 7) #3
  %81 = xor i32 %80, %79
  %82 = add i32 %74, %76
  %83 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 13) #3
  %84 = xor i32 %83, %82
  %85 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 16) #3
  %86 = add i32 %84, %79
  %87 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 5) #3
  %88 = xor i32 %87, %86
  %89 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 16) #3
  %90 = add i32 %85, %81
  %91 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 8) #3
  %92 = xor i32 %91, %90
  %93 = add i32 %89, %92
  %94 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 7) #3
  %95 = add i32 %88, %90
  %96 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 13) #3
  %97 = xor i32 %96, %95
  %98 = xor i32 %97, %93
  %99 = xor i32 %98, %94
  ret i32 %99
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @hsiphash_3u32(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #1 {
  %5 = getelementptr [2 x i32], ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = xor i32 %7, 1819895653
  %9 = xor i32 %6, %0
  %10 = xor i32 %9, 1952801890
  %11 = add i32 %7, %6
  %12 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 5) #3
  %13 = xor i32 %11, %12
  %14 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 16) #3
  %15 = add i32 %8, %10
  %16 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 8) #3
  %17 = xor i32 %15, %16
  %18 = add i32 %17, %14
  %19 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 7) #3
  %20 = add i32 %15, %13
  %21 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 13) #3
  %22 = xor i32 %21, %20
  %23 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 16) #3
  %24 = xor i32 %18, %0
  %25 = xor i32 %18, %1
  %26 = xor i32 %25, %19
  %27 = add i32 %24, %22
  %28 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 5) #3
  %29 = xor i32 %27, %28
  %30 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 16) #3
  %31 = add i32 %26, %23
  %32 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 8) #3
  %33 = xor i32 %32, %31
  %34 = add i32 %33, %30
  %35 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 7) #3
  %36 = add i32 %31, %29
  %37 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 13) #3
  %38 = xor i32 %37, %36
  %39 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 16) #3
  %40 = xor i32 %34, %1
  %41 = xor i32 %34, %2
  %42 = xor i32 %41, %35
  %43 = add i32 %40, %38
  %44 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 5) #3
  %45 = xor i32 %43, %44
  %46 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 16) #3
  %47 = add i32 %42, %39
  %48 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 8) #3
  %49 = xor i32 %48, %47
  %50 = add i32 %49, %46
  %51 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 7) #3
  %52 = xor i32 %51, %50
  %53 = add i32 %47, %45
  %54 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 13) #3
  %55 = xor i32 %54, %53
  %56 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 16) #3
  %57 = xor i32 %50, %2
  %58 = xor i32 %52, 201326592
  %59 = add i32 %57, %55
  %60 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 5) #3
  %61 = xor i32 %59, %60
  %62 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 16) #3
  %63 = add i32 %58, %56
  %64 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %58, i32 8) #3
  %65 = xor i32 %64, %63
  %66 = add i32 %65, %62
  %67 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 7) #3
  %68 = xor i32 %67, %66
  %69 = add i32 %63, %61
  %70 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 13) #3
  %71 = xor i32 %70, %69
  %72 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 16) #3
  %73 = xor i32 %66, 201326592
  %74 = xor i32 %72, 255
  %75 = add i32 %73, %71
  %76 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 5) #3
  %77 = xor i32 %75, %76
  %78 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 16) #3
  %79 = add i32 %74, %68
  %80 = tail call i32 @llvm.fshl.i32(i32 %68, i32 %68, i32 8) #3
  %81 = xor i32 %80, %79
  %82 = add i32 %78, %81
  %83 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 7) #3
  %84 = xor i32 %83, %82
  %85 = add i32 %77, %79
  %86 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 13) #3
  %87 = xor i32 %86, %85
  %88 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 16) #3
  %89 = add i32 %87, %82
  %90 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 5) #3
  %91 = xor i32 %90, %89
  %92 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 16) #3
  %93 = add i32 %88, %84
  %94 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 8) #3
  %95 = xor i32 %94, %93
  %96 = add i32 %92, %95
  %97 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 7) #3
  %98 = xor i32 %97, %96
  %99 = add i32 %91, %93
  %100 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 13) #3
  %101 = xor i32 %100, %99
  %102 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 16) #3
  %103 = add i32 %101, %96
  %104 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 5) #3
  %105 = xor i32 %104, %103
  %106 = tail call i32 @llvm.fshl.i32(i32 %103, i32 %103, i32 16) #3
  %107 = add i32 %102, %98
  %108 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 8) #3
  %109 = xor i32 %108, %107
  %110 = add i32 %106, %109
  %111 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 7) #3
  %112 = add i32 %105, %107
  %113 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 13) #3
  %114 = xor i32 %113, %112
  %115 = xor i32 %114, %110
  %116 = xor i32 %115, %111
  ret i32 %116
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @hsiphash_4u32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #1 {
  %6 = getelementptr [2 x i32], ptr %4, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %4, align 4
  %9 = xor i32 %8, 1819895653
  %10 = xor i32 %7, %0
  %11 = xor i32 %10, 1952801890
  %12 = add i32 %8, %7
  %13 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 5) #3
  %14 = xor i32 %12, %13
  %15 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 16) #3
  %16 = add i32 %9, %11
  %17 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 8) #3
  %18 = xor i32 %16, %17
  %19 = add i32 %18, %15
  %20 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 7) #3
  %21 = add i32 %16, %14
  %22 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 13) #3
  %23 = xor i32 %22, %21
  %24 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 16) #3
  %25 = xor i32 %19, %0
  %26 = xor i32 %19, %1
  %27 = xor i32 %26, %20
  %28 = add i32 %25, %23
  %29 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 5) #3
  %30 = xor i32 %28, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 16) #3
  %32 = add i32 %27, %24
  %33 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 8) #3
  %34 = xor i32 %33, %32
  %35 = add i32 %34, %31
  %36 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 7) #3
  %37 = add i32 %32, %30
  %38 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 13) #3
  %39 = xor i32 %38, %37
  %40 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 16) #3
  %41 = xor i32 %35, %1
  %42 = xor i32 %35, %2
  %43 = xor i32 %42, %36
  %44 = add i32 %41, %39
  %45 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 5) #3
  %46 = xor i32 %44, %45
  %47 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 16) #3
  %48 = add i32 %43, %40
  %49 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 8) #3
  %50 = xor i32 %49, %48
  %51 = add i32 %50, %47
  %52 = tail call i32 @llvm.fshl.i32(i32 %50, i32 %50, i32 7) #3
  %53 = add i32 %48, %46
  %54 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 13) #3
  %55 = xor i32 %54, %53
  %56 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %53, i32 16) #3
  %57 = xor i32 %51, %2
  %58 = xor i32 %51, %3
  %59 = xor i32 %58, %52
  %60 = add i32 %57, %55
  %61 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 5) #3
  %62 = xor i32 %60, %61
  %63 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 16) #3
  %64 = add i32 %59, %56
  %65 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 8) #3
  %66 = xor i32 %65, %64
  %67 = add i32 %66, %63
  %68 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 7) #3
  %69 = xor i32 %68, %67
  %70 = add i32 %64, %62
  %71 = tail call i32 @llvm.fshl.i32(i32 %62, i32 %62, i32 13) #3
  %72 = xor i32 %71, %70
  %73 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 16) #3
  %74 = xor i32 %67, %3
  %75 = xor i32 %69, 268435456
  %76 = add i32 %74, %72
  %77 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 5) #3
  %78 = xor i32 %76, %77
  %79 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 16) #3
  %80 = add i32 %75, %73
  %81 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %75, i32 8) #3
  %82 = xor i32 %81, %80
  %83 = add i32 %82, %79
  %84 = tail call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 7) #3
  %85 = xor i32 %84, %83
  %86 = add i32 %80, %78
  %87 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 13) #3
  %88 = xor i32 %87, %86
  %89 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 16) #3
  %90 = xor i32 %83, 268435456
  %91 = xor i32 %89, 255
  %92 = add i32 %90, %88
  %93 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 5) #3
  %94 = xor i32 %92, %93
  %95 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 16) #3
  %96 = add i32 %91, %85
  %97 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 8) #3
  %98 = xor i32 %97, %96
  %99 = add i32 %95, %98
  %100 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 7) #3
  %101 = xor i32 %100, %99
  %102 = add i32 %94, %96
  %103 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 13) #3
  %104 = xor i32 %103, %102
  %105 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 16) #3
  %106 = add i32 %104, %99
  %107 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 5) #3
  %108 = xor i32 %107, %106
  %109 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 16) #3
  %110 = add i32 %105, %101
  %111 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 8) #3
  %112 = xor i32 %111, %110
  %113 = add i32 %109, %112
  %114 = tail call i32 @llvm.fshl.i32(i32 %112, i32 %112, i32 7) #3
  %115 = xor i32 %114, %113
  %116 = add i32 %108, %110
  %117 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 13) #3
  %118 = xor i32 %117, %116
  %119 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 16) #3
  %120 = add i32 %118, %113
  %121 = tail call i32 @llvm.fshl.i32(i32 %118, i32 %118, i32 5) #3
  %122 = xor i32 %121, %120
  %123 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 16) #3
  %124 = add i32 %119, %115
  %125 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 8) #3
  %126 = xor i32 %125, %124
  %127 = add i32 %123, %126
  %128 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 7) #3
  %129 = add i32 %122, %124
  %130 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 13) #3
  %131 = xor i32 %130, %129
  %132 = xor i32 %131, %127
  %133 = xor i32 %132, %128
  ret i32 %133
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
