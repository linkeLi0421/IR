; ModuleID = '/llk/IR/sound/soc/codecs/rl6231.c_pt.bc'
source_filename = "../sound/soc/codecs/rl6231.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rl6231_get_pre_div:\09\09\09\09\09"
module asm "\09.asciz \09\22rl6231_get_pre_div\22\09\09\09\09\09"
module asm "__kstrtabns_rl6231_get_pre_div:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rl6231_calc_dmic_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22rl6231_calc_dmic_clk\22\09\09\09\09\09"
module asm "__kstrtabns_rl6231_calc_dmic_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rl6231_pll_calc:\09\09\09\09\09"
module asm "\09.asciz \09\22rl6231_pll_calc\22\09\09\09\09\09"
module asm "__kstrtabns_rl6231_pll_calc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rl6231_get_clk_info:\09\09\09\09\09"
module asm "\09.asciz \09\22rl6231_get_clk_info\22\09\09\09\09\09"
module asm "__kstrtabns_rl6231_get_clk_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pll_calc_map = type { i32, i32, i32, i32, i32, i8, i8 }
%struct.rl6231_pll_code = type { i8, i8, i32, i32, i32 }

@__kstrtab_rl6231_get_pre_div = external dso_local constant [0 x i8], align 1
@__kstrtabns_rl6231_get_pre_div = external dso_local constant [0 x i8], align 1
@__ksymtab_rl6231_get_pre_div = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rl6231_get_pre_div to i32), ptr @__kstrtab_rl6231_get_pre_div, ptr @__kstrtabns_rl6231_get_pre_div }, section "___ksymtab_gpl+rl6231_get_pre_div", align 4
@.str = private unnamed_addr constant [33 x i8] c"\014Base clock rate %d is too low\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\014Base clock rate %d is too high\0A\00", align 1
@__kstrtab_rl6231_calc_dmic_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_rl6231_calc_dmic_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_rl6231_calc_dmic_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rl6231_calc_dmic_clk to i32), ptr @__kstrtab_rl6231_calc_dmic_clk, ptr @__kstrtabns_rl6231_calc_dmic_clk }, section "___ksymtab_gpl+rl6231_calc_dmic_clk", align 4
@pll_preset_table = internal unnamed_addr constant [5 x %struct.pll_calc_map] [%struct.pll_calc_map { i32 19200000, i32 4096000, i32 23, i32 14, i32 1, i8 0, i8 0 }, %struct.pll_calc_map { i32 19200000, i32 24576000, i32 3, i32 30, i32 3, i8 0, i8 0 }, %struct.pll_calc_map { i32 48000000, i32 3840000, i32 23, i32 2, i32 0, i8 0, i8 0 }, %struct.pll_calc_map { i32 3840000, i32 24576000, i32 3, i32 30, i32 0, i8 1, i8 0 }, %struct.pll_calc_map { i32 3840000, i32 22579200, i32 3, i32 5, i32 0, i8 1, i8 0 }], align 4
@__kstrtab_rl6231_pll_calc = external dso_local constant [0 x i8], align 1
@__kstrtabns_rl6231_pll_calc = external dso_local constant [0 x i8], align 1
@__ksymtab_rl6231_pll_calc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rl6231_pll_calc to i32), ptr @__kstrtab_rl6231_pll_calc, ptr @__kstrtabns_rl6231_pll_calc }, section "___ksymtab_gpl+rl6231_pll_calc", align 4
@__kstrtab_rl6231_get_clk_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_rl6231_get_clk_info = external dso_local constant [0 x i8], align 1
@__ksymtab_rl6231_get_clk_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rl6231_get_clk_info to i32), ptr @__kstrtab_rl6231_get_clk_info, ptr @__kstrtabns_rl6231_get_clk_info }, section "___ksymtab_gpl+rl6231_get_clk_info", align 4
@__UNIQUE_ID_description154 = internal constant [47 x i8] c"description=RL6231 class device shared support\00", section ".modinfo", align 1
@__UNIQUE_ID_author155 = internal constant [43 x i8] c"author=Oder Chiou <oder_chiou@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license156 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author155, ptr @__UNIQUE_ID_description154, ptr @__UNIQUE_ID_license156, ptr @__ksymtab_rl6231_calc_dmic_clk, ptr @__ksymtab_rl6231_get_clk_info, ptr @__ksymtab_rl6231_get_pre_div, ptr @__ksymtab_rl6231_pll_calc], section "llvm.metadata"
@switch.table.rl6231_get_pre_div = private unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rl6231_get_pre_div(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = call i32 @regmap_read(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #8
  %6 = load i32, ptr %4, align 4
  %7 = ashr i32 %6, %2
  %8 = and i32 %7, 7
  %9 = getelementptr inbounds [8 x i32], ptr @switch.table.rl6231_get_pre_div, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rl6231_calc_dmic_clk(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 2000000
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = icmp ugt i32 %0, 3072000
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = icmp ugt i32 %0, 6144000
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = icmp ugt i32 %0, 12288000
  br i1 %8, label %9, label %12

9:                                                ; preds = %7, %1
  %10 = phi ptr [ @.str, %1 ], [ @.str.1, %7 ]
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %10, i32 noundef %0) #9
  br label %12

12:                                               ; preds = %9, %7, %5, %3
  %13 = phi i32 [ 0, %3 ], [ 2, %5 ], [ 4, %7 ], [ -22, %9 ]
  ret i32 %13
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local i32 @rl6231_pll_calc(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = sub i32 %1, %0
  %5 = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %6 = add i32 %0, -50000001
  %7 = icmp ult i32 %6, -49744001
  br i1 %7, label %128, label %8

8:                                                ; preds = %3
  switch i32 %0, label %25 [
    i32 19200000, label %9
    i32 48000000, label %22
    i32 3840000, label %24
  ]

9:                                                ; preds = %8
  switch i32 %1, label %25 [
    i32 4096000, label %12
    i32 24576000, label %10
  ]

10:                                               ; preds = %9
  br label %12

11:                                               ; preds = %24
  br label %12

12:                                               ; preds = %24, %22, %11, %10, %9
  %13 = phi i32 [ 0, %9 ], [ 2, %22 ], [ 3, %24 ], [ 1, %10 ], [ 4, %11 ]
  %14 = getelementptr [5 x %struct.pll_calc_map], ptr @pll_preset_table, i32 0, i32 %13, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr [5 x %struct.pll_calc_map], ptr @pll_preset_table, i32 0, i32 %13, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [5 x %struct.pll_calc_map], ptr @pll_preset_table, i32 0, i32 %13, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %13, -3
  %21 = icmp ult i32 %20, 2
  br label %115

22:                                               ; preds = %8
  %23 = icmp eq i32 %1, 3840000
  br i1 %23, label %12, label %25

24:                                               ; preds = %8
  switch i32 %1, label %25 [
    i32 24576000, label %12
    i32 22579200, label %11
  ]

25:                                               ; preds = %24, %22, %9, %8
  %26 = udiv i32 80000000, %1
  %27 = add nsw i32 %26, -2
  %28 = udiv i32 150000000, %1
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 33)
  %30 = add nsw i32 %29, -2
  %31 = icmp ult i32 %1, 2352942
  %32 = select i1 %31, i32 31, i32 %30
  %33 = select i1 %31, i32 31, i32 %27
  %34 = tail call i32 @gcd(i32 noundef %0, i32 noundef %1) #10
  %35 = icmp ult i32 %0, 8405025
  br i1 %35, label %48, label %36

36:                                               ; preds = %25
  %37 = udiv i32 %0, 8405024
  %38 = mul i32 %37, 8405024
  %39 = sub i32 %0, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = add nuw nsw i32 %37, %41
  br label %43

43:                                               ; preds = %43, %36
  %44 = phi i32 [ %42, %36 ], [ %47, %43 ]
  %45 = urem i32 %34, %44
  %46 = icmp eq i32 %45, 0
  %47 = add i32 %44, 1
  br i1 %46, label %48, label %43

48:                                               ; preds = %43, %25
  %49 = phi i32 [ 1, %25 ], [ %44, %43 ]
  %50 = udiv i32 %0, %49
  %51 = udiv i32 %1, %49
  %52 = tail call i32 @llvm.smax.i32(i32 %33, i32 -1)
  %53 = icmp sgt i32 %52, %32
  br i1 %53, label %115, label %54

54:                                               ; preds = %112, %48
  %55 = phi i32 [ %106, %112 ], [ %33, %48 ]
  %56 = phi i1 [ %105, %112 ], [ false, %48 ]
  %57 = phi i32 [ %113, %112 ], [ %52, %48 ]
  %58 = phi i32 [ %104, %112 ], [ %5, %48 ]
  %59 = phi i32 [ %103, %112 ], [ 0, %48 ]
  %60 = phi i32 [ %102, %112 ], [ 0, %48 ]
  %61 = add nsw i32 %57, 2
  %62 = mul i32 %61, %51
  br label %63

63:                                               ; preds = %109, %54
  %64 = phi i32 [ %55, %54 ], [ %106, %109 ]
  %65 = phi i32 [ 0, %54 ], [ %110, %109 ]
  %66 = phi i1 [ %56, %54 ], [ %105, %109 ]
  %67 = phi i32 [ %58, %54 ], [ %104, %109 ]
  %68 = phi i32 [ %59, %54 ], [ %103, %109 ]
  %69 = phi i32 [ %60, %54 ], [ %102, %109 ]
  %70 = add nuw nsw i32 %65, 2
  %71 = mul i32 %70, %50
  %72 = icmp eq i32 %71, %62
  br i1 %72, label %115, label %73

73:                                               ; preds = %63
  %74 = udiv i32 %71, %61
  %75 = sub i32 %51, %74
  %76 = tail call i32 @llvm.abs.i32(i32 %75, i1 false)
  %77 = icmp ult i32 %76, %67
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = icmp eq i32 %51, %74
  br i1 %79, label %115, label %80

80:                                               ; preds = %78, %73
  %81 = phi i32 [ %57, %78 ], [ %64, %73 ]
  %82 = phi i1 [ true, %78 ], [ %66, %73 ]
  %83 = phi i32 [ %76, %78 ], [ %67, %73 ]
  %84 = phi i32 [ 0, %78 ], [ %68, %73 ]
  %85 = phi i32 [ %65, %78 ], [ %69, %73 ]
  br label %86

86:                                               ; preds = %101, %80
  %87 = phi i32 [ %106, %101 ], [ %81, %80 ]
  %88 = phi i1 [ %105, %101 ], [ %82, %80 ]
  %89 = phi i32 [ %104, %101 ], [ %83, %80 ]
  %90 = phi i32 [ %107, %101 ], [ 0, %80 ]
  %91 = phi i32 [ %103, %101 ], [ %84, %80 ]
  %92 = phi i32 [ %102, %101 ], [ %85, %80 ]
  %93 = add nuw nsw i32 %90, 2
  %94 = mul i32 %93, %61
  %95 = udiv i32 %71, %94
  %96 = sub i32 %51, %95
  %97 = tail call i32 @llvm.abs.i32(i32 %96, i1 false)
  %98 = icmp ult i32 %97, %89
  br i1 %98, label %99, label %101

99:                                               ; preds = %86
  %100 = icmp eq i32 %51, %95
  br i1 %100, label %115, label %101

101:                                              ; preds = %99, %86
  %102 = phi i32 [ %92, %86 ], [ %65, %99 ]
  %103 = phi i32 [ %91, %86 ], [ %90, %99 ]
  %104 = phi i32 [ %89, %86 ], [ %97, %99 ]
  %105 = phi i1 [ %88, %86 ], [ false, %99 ]
  %106 = phi i32 [ %87, %86 ], [ %57, %99 ]
  %107 = add nuw nsw i32 %90, 1
  %108 = icmp eq i32 %107, 16
  br i1 %108, label %109, label %86

109:                                              ; preds = %101
  %110 = add nuw nsw i32 %65, 1
  %111 = icmp eq i32 %110, 512
  br i1 %111, label %112, label %63

112:                                              ; preds = %109
  %113 = add nsw i32 %57, 1
  %114 = icmp eq i32 %57, %32
  br i1 %114, label %115, label %54

115:                                              ; preds = %112, %99, %78, %63, %48, %12
  %116 = phi i32 [ %19, %12 ], [ 0, %48 ], [ %65, %99 ], [ %65, %78 ], [ %65, %63 ], [ %102, %112 ]
  %117 = phi i32 [ %17, %12 ], [ 0, %48 ], [ %90, %99 ], [ %68, %63 ], [ 0, %78 ], [ %103, %112 ]
  %118 = phi i1 [ %21, %12 ], [ false, %48 ], [ false, %99 ], [ true, %78 ], [ true, %63 ], [ %105, %112 ]
  %119 = phi i32 [ %15, %12 ], [ %33, %48 ], [ %57, %99 ], [ %57, %78 ], [ %57, %63 ], [ %106, %112 ]
  %120 = icmp eq i32 %119, -1
  %121 = select i1 %120, i32 0, i32 %119
  %122 = zext i1 %118 to i8
  store i8 %122, ptr %2, align 4
  %123 = getelementptr inbounds %struct.rl6231_pll_code, ptr %2, i32 0, i32 1
  %124 = zext i1 %120 to i8
  store i8 %124, ptr %123, align 1
  %125 = getelementptr inbounds %struct.rl6231_pll_code, ptr %2, i32 0, i32 2
  store i32 %117, ptr %125, align 4
  %126 = getelementptr inbounds %struct.rl6231_pll_code, ptr %2, i32 0, i32 3
  store i32 %116, ptr %126, align 4
  %127 = getelementptr inbounds %struct.rl6231_pll_code, ptr %2, i32 0, i32 4
  store i32 %121, ptr %127, align 4
  br label %128

128:                                              ; preds = %115, %3
  %129 = phi i32 [ 0, %115 ], [ -22, %3 ]
  ret i32 %129
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i32 @rl6231_get_clk_info(i32 noundef %0, i32 noundef %1) #6 {
  %3 = icmp slt i32 %0, 1
  %4 = icmp slt i32 %1, 1
  %5 = or i1 %3, %4
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = shl i32 %1, 8
  %8 = icmp eq i32 %7, %0
  br i1 %8, label %31, label %9

9:                                                ; preds = %6
  %10 = shl i32 %1, 9
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %31, label %12

12:                                               ; preds = %9
  %13 = mul i32 %1, 768
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = shl i32 %1, 10
  %17 = icmp eq i32 %16, %0
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = mul i32 %1, 1536
  %20 = icmp eq i32 %19, %0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = shl i32 %1, 11
  %23 = icmp eq i32 %22, %0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = mul i32 %1, 3072
  %26 = icmp eq i32 %25, %0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = shl i32 %1, 12
  %29 = icmp eq i32 %28, %0
  %30 = select i1 %29, i32 7, i32 -22
  br label %31

31:                                               ; preds = %27, %24, %21, %18, %15, %12, %9, %6, %2
  %32 = phi i32 [ -22, %2 ], [ 0, %6 ], [ 1, %9 ], [ 2, %12 ], [ 3, %15 ], [ 4, %18 ], [ 5, %21 ], [ 6, %24 ], [ %30, %27 ]
  ret i32 %32
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

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
