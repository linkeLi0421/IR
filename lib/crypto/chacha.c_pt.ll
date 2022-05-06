; ModuleID = '/llk/IR/lib/crypto/chacha.c_pt.bc'
source_filename = "../lib/crypto/chacha.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_chacha_block_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22chacha_block_generic\22\09\09\09\09\09"
module asm "__kstrtabns_chacha_block_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hchacha_block_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22hchacha_block_generic\22\09\09\09\09\09"
module asm "__kstrtabns_hchacha_block_generic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_chacha_block_generic = external dso_local constant [0 x i8], align 1
@__kstrtabns_chacha_block_generic = external dso_local constant [0 x i8], align 1
@__ksymtab_chacha_block_generic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @chacha_block_generic to i32), ptr @__kstrtab_chacha_block_generic, ptr @__kstrtabns_chacha_block_generic }, section "___ksymtab+chacha_block_generic", align 4
@__kstrtab_hchacha_block_generic = external dso_local constant [0 x i8], align 1
@__kstrtabns_hchacha_block_generic = external dso_local constant [0 x i8], align 1
@__ksymtab_hchacha_block_generic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hchacha_block_generic to i32), ptr @__kstrtab_hchacha_block_generic, ptr @__kstrtabns_hchacha_block_generic }, section "___ksymtab+hchacha_block_generic", align 4
@chacha_permute.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"lib/crypto/chacha.c\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_chacha_block_generic, ptr @__ksymtab_hchacha_block_generic], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @chacha_block_generic(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef align 4 dereferenceable(64) %0, i32 64, i1 false)
  call fastcc void @chacha_permute(ptr noundef nonnull %4, i32 noundef %2)
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  %7 = add i32 %6, %5
  store i32 %7, ptr %1, align 1
  %8 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i32, ptr %0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %9
  %13 = getelementptr i8, ptr %1, i32 4
  store i32 %12, ptr %13, align 1
  %14 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i32, ptr %0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  %19 = getelementptr i8, ptr %1, i32 8
  store i32 %18, ptr %19, align 1
  %20 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i32, ptr %0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = getelementptr i8, ptr %1, i32 12
  store i32 %24, ptr %25, align 1
  %26 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i32, ptr %0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %27
  %31 = getelementptr i8, ptr %1, i32 16
  store i32 %30, ptr %31, align 1
  %32 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i32, ptr %0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %33
  %37 = getelementptr i8, ptr %1, i32 20
  store i32 %36, ptr %37, align 1
  %38 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i32, ptr %0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  %43 = getelementptr i8, ptr %1, i32 24
  store i32 %42, ptr %43, align 1
  %44 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i32, ptr %0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %45
  %49 = getelementptr i8, ptr %1, i32 28
  store i32 %48, ptr %49, align 1
  %50 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i32, ptr %0, i32 8
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %51
  %55 = getelementptr i8, ptr %1, i32 32
  store i32 %54, ptr %55, align 1
  %56 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 9
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i32, ptr %0, i32 9
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %57
  %61 = getelementptr i8, ptr %1, i32 36
  store i32 %60, ptr %61, align 1
  %62 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 10
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i32, ptr %0, i32 10
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %63
  %67 = getelementptr i8, ptr %1, i32 40
  store i32 %66, ptr %67, align 1
  %68 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 11
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i32, ptr %0, i32 11
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, %69
  %73 = getelementptr i8, ptr %1, i32 44
  store i32 %72, ptr %73, align 1
  %74 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 12
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i32, ptr %0, i32 12
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, %75
  %79 = getelementptr i8, ptr %1, i32 48
  store i32 %78, ptr %79, align 1
  %80 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 13
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i32, ptr %0, i32 13
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, %81
  %85 = getelementptr i8, ptr %1, i32 52
  store i32 %84, ptr %85, align 1
  %86 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 14
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr i32, ptr %0, i32 14
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, %87
  %91 = getelementptr i8, ptr %1, i32 56
  store i32 %90, ptr %91, align 1
  %92 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 15
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr i32, ptr %0, i32 15
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, %93
  %97 = getelementptr i8, ptr %1, i32 60
  store i32 %96, ptr %97, align 1
  %98 = load i32, ptr %76, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %76, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @chacha_permute(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i1, ptr @chacha_permute.__already_done, align 1
  %4 = freeze i1 %3
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  switch i32 %1, label %6 [
    i32 20, label %9
    i32 12, label %9
  ]

6:                                                ; preds = %5
  store i1 true, ptr @chacha_permute.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 21, i32 noundef 9, ptr noundef null) #5
  br label %7

7:                                                ; preds = %6, %2
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %158

9:                                                ; preds = %7, %5, %5
  %10 = getelementptr i32, ptr %0, i32 4
  %11 = getelementptr i32, ptr %0, i32 12
  %12 = getelementptr i32, ptr %0, i32 5
  %13 = getelementptr i32, ptr %0, i32 1
  %14 = getelementptr i32, ptr %0, i32 13
  %15 = getelementptr i32, ptr %0, i32 6
  %16 = getelementptr i32, ptr %0, i32 2
  %17 = getelementptr i32, ptr %0, i32 14
  %18 = getelementptr i32, ptr %0, i32 7
  %19 = getelementptr i32, ptr %0, i32 3
  %20 = getelementptr i32, ptr %0, i32 15
  %21 = getelementptr i32, ptr %0, i32 8
  %22 = getelementptr i32, ptr %0, i32 9
  %23 = getelementptr i32, ptr %0, i32 10
  %24 = getelementptr i32, ptr %0, i32 11
  %25 = load i32, ptr %10, align 4
  %26 = load i32, ptr %0, align 4
  %27 = load i32, ptr %11, align 4
  %28 = load i32, ptr %12, align 4
  %29 = load i32, ptr %13, align 4
  %30 = load i32, ptr %14, align 4
  %31 = load i32, ptr %15, align 4
  %32 = load i32, ptr %16, align 4
  %33 = load i32, ptr %17, align 4
  %34 = load i32, ptr %18, align 4
  %35 = load i32, ptr %19, align 4
  %36 = load i32, ptr %20, align 4
  %37 = load i32, ptr %21, align 4
  %38 = load i32, ptr %22, align 4
  %39 = load i32, ptr %23, align 4
  %40 = load i32, ptr %24, align 4
  br label %41

41:                                               ; preds = %41, %9
  %42 = phi i32 [ %40, %9 ], [ %146, %41 ]
  %43 = phi i32 [ %39, %9 ], [ %143, %41 ]
  %44 = phi i32 [ %38, %9 ], [ %152, %41 ]
  %45 = phi i32 [ %37, %9 ], [ %149, %41 ]
  %46 = phi i32 [ %36, %9 ], [ %133, %41 ]
  %47 = phi i32 [ %35, %9 ], [ %140, %41 ]
  %48 = phi i32 [ %34, %9 ], [ %151, %41 ]
  %49 = phi i32 [ %33, %9 ], [ %142, %41 ]
  %50 = phi i32 [ %32, %9 ], [ %137, %41 ]
  %51 = phi i32 [ %31, %9 ], [ %148, %41 ]
  %52 = phi i32 [ %30, %9 ], [ %139, %41 ]
  %53 = phi i32 [ %29, %9 ], [ %134, %41 ]
  %54 = phi i32 [ %28, %9 ], [ %145, %41 ]
  %55 = phi i32 [ %27, %9 ], [ %136, %41 ]
  %56 = phi i32 [ %26, %9 ], [ %131, %41 ]
  %57 = phi i32 [ %25, %9 ], [ %154, %41 ]
  %58 = phi i32 [ 0, %9 ], [ %155, %41 ]
  %59 = add i32 %56, %57
  %60 = xor i32 %55, %59
  %61 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 16) #5
  %62 = add i32 %53, %54
  %63 = xor i32 %52, %62
  %64 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 16) #5
  %65 = add i32 %50, %51
  %66 = xor i32 %49, %65
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 16) #5
  %68 = add i32 %47, %48
  %69 = xor i32 %46, %68
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 16) #5
  %71 = add i32 %45, %61
  %72 = xor i32 %71, %57
  %73 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 12) #5
  %74 = add i32 %44, %64
  %75 = xor i32 %74, %54
  %76 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 12) #5
  %77 = add i32 %43, %67
  %78 = xor i32 %77, %51
  %79 = tail call i32 @llvm.fshl.i32(i32 %78, i32 %78, i32 12) #5
  %80 = add i32 %42, %70
  %81 = xor i32 %80, %48
  %82 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 12) #5
  %83 = add i32 %73, %59
  %84 = xor i32 %83, %61
  %85 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 8) #5
  %86 = add i32 %76, %62
  %87 = xor i32 %86, %64
  %88 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 8) #5
  %89 = add i32 %79, %65
  %90 = xor i32 %89, %67
  %91 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 8) #5
  %92 = add i32 %82, %68
  %93 = xor i32 %92, %70
  %94 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 8) #5
  %95 = add i32 %85, %71
  %96 = xor i32 %95, %73
  %97 = tail call i32 @llvm.fshl.i32(i32 %96, i32 %96, i32 7) #5
  %98 = add i32 %88, %74
  %99 = xor i32 %98, %76
  %100 = tail call i32 @llvm.fshl.i32(i32 %99, i32 %99, i32 7) #5
  %101 = add i32 %91, %77
  %102 = xor i32 %101, %79
  %103 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 7) #5
  %104 = add i32 %94, %80
  %105 = xor i32 %104, %82
  %106 = tail call i32 @llvm.fshl.i32(i32 %105, i32 %105, i32 7) #5
  %107 = add i32 %100, %83
  %108 = xor i32 %94, %107
  %109 = tail call i32 @llvm.fshl.i32(i32 %108, i32 %108, i32 16) #5
  %110 = add i32 %103, %86
  %111 = xor i32 %110, %85
  %112 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 16) #5
  %113 = add i32 %106, %89
  %114 = xor i32 %113, %88
  %115 = tail call i32 @llvm.fshl.i32(i32 %114, i32 %114, i32 16) #5
  %116 = add i32 %92, %97
  %117 = xor i32 %116, %91
  %118 = tail call i32 @llvm.fshl.i32(i32 %117, i32 %117, i32 16) #5
  %119 = add i32 %109, %101
  %120 = xor i32 %119, %100
  %121 = tail call i32 @llvm.fshl.i32(i32 %120, i32 %120, i32 12) #5
  %122 = add i32 %112, %104
  %123 = xor i32 %122, %103
  %124 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 12) #5
  %125 = add i32 %115, %95
  %126 = xor i32 %125, %106
  %127 = tail call i32 @llvm.fshl.i32(i32 %126, i32 %126, i32 12) #5
  %128 = add i32 %118, %98
  %129 = xor i32 %128, %97
  %130 = tail call i32 @llvm.fshl.i32(i32 %129, i32 %129, i32 12) #5
  %131 = add i32 %121, %107
  %132 = xor i32 %131, %109
  %133 = tail call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 8) #5
  %134 = add i32 %124, %110
  %135 = xor i32 %134, %112
  %136 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 8) #5
  %137 = add i32 %127, %113
  %138 = xor i32 %137, %115
  %139 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 8) #5
  %140 = add i32 %130, %116
  %141 = xor i32 %140, %118
  %142 = tail call i32 @llvm.fshl.i32(i32 %141, i32 %141, i32 8) #5
  %143 = add i32 %133, %119
  %144 = xor i32 %143, %121
  %145 = tail call i32 @llvm.fshl.i32(i32 %144, i32 %144, i32 7) #5
  %146 = add i32 %136, %122
  %147 = xor i32 %146, %124
  %148 = tail call i32 @llvm.fshl.i32(i32 %147, i32 %147, i32 7) #5
  %149 = add i32 %139, %125
  %150 = xor i32 %149, %127
  %151 = tail call i32 @llvm.fshl.i32(i32 %150, i32 %150, i32 7) #5
  %152 = add i32 %142, %128
  %153 = xor i32 %152, %130
  %154 = tail call i32 @llvm.fshl.i32(i32 %153, i32 %153, i32 7) #5
  %155 = add i32 %58, 2
  %156 = icmp slt i32 %155, %1
  br i1 %156, label %41, label %157

157:                                              ; preds = %41
  store i32 %154, ptr %10, align 4
  store i32 %131, ptr %0, align 4
  store i32 %136, ptr %11, align 4
  store i32 %145, ptr %12, align 4
  store i32 %134, ptr %13, align 4
  store i32 %139, ptr %14, align 4
  store i32 %148, ptr %15, align 4
  store i32 %137, ptr %16, align 4
  store i32 %142, ptr %17, align 4
  store i32 %151, ptr %18, align 4
  store i32 %140, ptr %19, align 4
  store i32 %133, ptr %20, align 4
  store i32 %149, ptr %21, align 4
  store i32 %152, ptr %22, align 4
  store i32 %143, ptr %23, align 4
  store i32 %146, ptr %24, align 4
  br label %158

158:                                              ; preds = %157, %7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hchacha_block_generic(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef align 4 dereferenceable(64) %0, i32 64, i1 false)
  call fastcc void @chacha_permute(ptr noundef nonnull %4, i32 noundef %2)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %5 = getelementptr i32, ptr %1, i32 4
  %6 = getelementptr inbounds [16 x i32], ptr %4, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
