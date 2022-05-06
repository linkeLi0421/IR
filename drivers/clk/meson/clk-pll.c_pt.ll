; ModuleID = '/llk/IR/drivers/clk/meson/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/meson/clk-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_clk_pcie_pll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_clk_pcie_pll_ops\22\09\09\09\09\09"
module asm "__kstrtabns_meson_clk_pcie_pll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_clk_pll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_clk_pll_ops\22\09\09\09\09\09"
module asm "__kstrtabns_meson_clk_pll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_clk_pll_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_clk_pll_ro_ops\22\09\09\09\09\09"
module asm "__kstrtabns_meson_clk_pll_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_regmap = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.meson_clk_pll_data = type { %struct.parm, %struct.parm, %struct.parm, %struct.parm, %struct.parm, %struct.parm, ptr, i32, ptr, ptr, i8 }
%struct.parm = type { i16, i8, i8 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.pll_mult_range = type { i32, i32 }
%struct.pll_params_table = type { i32, i32 }

@meson_clk_pcie_pll_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @meson_clk_pcie_pll_enable, ptr @meson_clk_pll_disable, ptr @meson_clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @meson_clk_pll_recalc_rate, ptr null, ptr @meson_clk_pll_determine_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_meson_clk_pcie_pll_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_clk_pcie_pll_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_clk_pcie_pll_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_clk_pcie_pll_ops to i32), ptr @__kstrtab_meson_clk_pcie_pll_ops, ptr @__kstrtabns_meson_clk_pcie_pll_ops }, section "___ksymtab_gpl+meson_clk_pcie_pll_ops", align 4
@meson_clk_pll_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @meson_clk_pll_enable, ptr @meson_clk_pll_disable, ptr @meson_clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @meson_clk_pll_recalc_rate, ptr null, ptr @meson_clk_pll_determine_rate, ptr null, ptr null, ptr @meson_clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_clk_pll_init, ptr null, ptr null }, align 4
@__kstrtab_meson_clk_pll_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_clk_pll_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_clk_pll_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_clk_pll_ops to i32), ptr @__kstrtab_meson_clk_pll_ops, ptr @__kstrtabns_meson_clk_pll_ops }, section "___ksymtab_gpl+meson_clk_pll_ops", align 4
@meson_clk_pll_ro_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @meson_clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_meson_clk_pll_ro_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_clk_pll_ro_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_clk_pll_ro_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_clk_pll_ro_ops to i32), ptr @__kstrtab_meson_clk_pll_ro_ops, ptr @__kstrtabns_meson_clk_pll_ro_ops }, section "___ksymtab_gpl+meson_clk_pll_ro_ops", align 4
@__UNIQUE_ID_description156 = internal constant [39 x i8] c"clk_pll.description=Amlogic PLL driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author157 = internal constant [49 x i8] c"clk_pll.author=Carlo Caione <carlo@endlessm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author158 = internal constant [52 x i8] c"clk_pll.author=Jerome Brunet <jbrunet@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file159 = internal constant [39 x i8] c"clk_pll.file=drivers/clk/meson/clk-pll\00", section ".modinfo", align 1
@__UNIQUE_ID_license160 = internal constant [23 x i8] c"clk_pll.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [56 x i8] c"\014%s: pll did not lock, trying to restore old rate %lu\0A\00", align 1
@__func__.meson_clk_pll_set_rate = private unnamed_addr constant [23 x i8] c"meson_clk_pll_set_rate\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author157, ptr @__UNIQUE_ID_author158, ptr @__UNIQUE_ID_description156, ptr @__UNIQUE_ID_file159, ptr @__UNIQUE_ID_license160, ptr @__ksymtab_meson_clk_pcie_pll_ops, ptr @__ksymtab_meson_clk_pll_ops, ptr @__ksymtab_meson_clk_pll_ro_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_clk_pcie_pll_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = tail call i32 @meson_clk_pll_init(ptr noundef %0)
  %4 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %5, i32 0, i32 4
  %8 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %5, i32 0, i32 4, i32 1
  %9 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %5, i32 0, i32 4, i32 2
  br label %10

10:                                               ; preds = %29, %1
  %11 = phi i32 [ 24000000, %1 ], [ %30, %29 ]
  %12 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %13 = load i16, ptr %7, align 2
  %14 = zext i16 %13 to i32
  %15 = call i32 @regmap_read(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %2) #5
  %16 = load i32, ptr %2, align 4
  %17 = load i8, ptr %8, align 2
  %18 = zext i8 %17 to i32
  %19 = shl nsw i32 -1, %18
  %20 = load i8, ptr %9, align 1
  %21 = zext i8 %20 to i32
  %22 = add nuw nsw i32 %18, %21
  %23 = sub nsw i32 32, %22
  %24 = lshr i32 -1, %23
  %25 = and i32 %19, %16
  %26 = and i32 %25, %24
  %27 = lshr i32 %26, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %10
  %30 = add nsw i32 %11, -1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %10

32:                                               ; preds = %29, %10
  %33 = phi i32 [ -5, %29 ], [ 0, %10 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_clk_pll_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %3, i32 0, i32 5
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %3, i32 0, i32 5, i32 1
  %10 = load i8, ptr %9, align 2
  %11 = zext i8 %10 to i32
  %12 = shl nsw i32 -1, %11
  %13 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %3, i32 0, i32 5, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %11, %15
  %17 = sub nsw i32 32, %16
  %18 = lshr i32 -1, %17
  %19 = and i32 %18, %12
  %20 = shl nuw i32 1, %11
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %8, i32 noundef %19, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %22 = load ptr, ptr %4, align 4
  %23 = load i16, ptr %3, align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.parm, ptr %3, i32 0, i32 1
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = shl nsw i32 -1, %27
  %29 = getelementptr inbounds %struct.parm, ptr %3, i32 0, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = add nuw nsw i32 %27, %31
  %33 = sub nsw i32 32, %32
  %34 = lshr i32 -1, %33
  %35 = and i32 %34, %28
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %24, i32 noundef %35, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_clk_pll_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %6, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = call i32 @regmap_read(ptr noundef %8, i32 noundef %11, ptr noundef nonnull %4) #5
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %6, i32 0, i32 5, i32 1
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = shl nsw i32 -1, %16
  %18 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %6, i32 0, i32 5, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = add nuw nsw i32 %16, %20
  %22 = sub nsw i32 32, %21
  %23 = lshr i32 -1, %22
  %24 = and i32 %17, %13
  %25 = and i32 %24, %23
  %26 = lshr i32 %25, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %1
  %29 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %30 = load i16, ptr %6, align 2
  %31 = zext i16 %30 to i32
  %32 = call i32 @regmap_read(ptr noundef %29, i32 noundef %31, ptr noundef nonnull %3) #5
  %33 = load i32, ptr %3, align 4
  %34 = getelementptr inbounds %struct.parm, ptr %6, i32 0, i32 1
  %35 = load i8, ptr %34, align 2
  %36 = zext i8 %35 to i32
  %37 = shl nsw i32 -1, %36
  %38 = getelementptr inbounds %struct.parm, ptr %6, i32 0, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add nuw nsw i32 %36, %40
  %42 = sub nsw i32 32, %41
  %43 = lshr i32 -1, %42
  %44 = and i32 %37, %33
  %45 = and i32 %44, %43
  %46 = lshr i32 %45, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %28
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %6, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = call i32 @regmap_read(ptr noundef %49, i32 noundef %52, ptr noundef nonnull %2) #5
  %54 = load i32, ptr %2, align 4
  %55 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %6, i32 0, i32 4, i32 1
  %56 = load i8, ptr %55, align 2
  %57 = zext i8 %56 to i32
  %58 = shl nsw i32 -1, %57
  %59 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %6, i32 0, i32 4, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = add nuw nsw i32 %57, %61
  %63 = sub nsw i32 32, %62
  %64 = lshr i32 -1, %63
  %65 = and i32 %58, %54
  %66 = and i32 %65, %64
  %67 = lshr i32 %66, %57
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  br label %70

70:                                               ; preds = %48, %28, %1
  %71 = phi i32 [ 0, %28 ], [ 0, %1 ], [ %69, %48 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_clk_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %7, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = call i32 @regmap_read(ptr noundef %9, i32 noundef %12, ptr noundef nonnull %5) #5
  %14 = load i32, ptr %5, align 4
  %15 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %7, i32 0, i32 2, i32 1
  %16 = load i8, ptr %15, align 2
  %17 = zext i8 %16 to i32
  %18 = shl nsw i32 -1, %17
  %19 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %7, i32 0, i32 2, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = add nuw nsw i32 %17, %21
  %23 = sub nsw i32 32, %22
  %24 = lshr i32 -1, %23
  %25 = and i32 %18, %14
  %26 = and i32 %25, %24
  %27 = lshr i32 %26, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %112, label %29

29:                                               ; preds = %2
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %7, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = call i32 @regmap_read(ptr noundef %30, i32 noundef %33, ptr noundef nonnull %4) #5
  %35 = load i32, ptr %4, align 4
  %36 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %7, i32 0, i32 1, i32 1
  %37 = load i8, ptr %36, align 2
  %38 = zext i8 %37 to i32
  %39 = shl nsw i32 -1, %38
  %40 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %7, i32 0, i32 1, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %38, %42
  %44 = sub nsw i32 32, %43
  %45 = lshr i32 -1, %44
  %46 = and i32 %39, %35
  %47 = and i32 %46, %45
  %48 = lshr i32 %47, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %49 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %7, i32 0, i32 3, i32 2
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %29
  %53 = zext i32 %1 to i64
  %54 = zext i32 %48 to i64
  %55 = mul nuw i64 %54, %53
  br label %99

56:                                               ; preds = %29
  %57 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %7, i32 0, i32 3
  %58 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %59 = load i16, ptr %57, align 2
  %60 = zext i16 %59 to i32
  %61 = call i32 @regmap_read(ptr noundef %58, i32 noundef %60, ptr noundef nonnull %3) #5
  %62 = load i32, ptr %3, align 4
  %63 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %7, i32 0, i32 3, i32 1
  %64 = load i8, ptr %63, align 2
  %65 = zext i8 %64 to i32
  %66 = shl nsw i32 -1, %65
  %67 = load i8, ptr %49, align 1
  %68 = zext i8 %67 to i32
  %69 = add nuw nsw i32 %65, %68
  %70 = sub nsw i32 32, %69
  %71 = lshr i32 -1, %70
  %72 = and i32 %66, %62
  %73 = and i32 %72, %71
  %74 = lshr i32 %73, %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %75 = zext i32 %1 to i64
  %76 = zext i32 %48 to i64
  %77 = mul nuw i64 %76, %75
  %78 = icmp eq i32 %74, 0
  %79 = icmp eq i8 %67, 0
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %99, label %81

81:                                               ; preds = %56
  %82 = zext i32 %74 to i64
  %83 = mul nuw i64 %82, %75
  %84 = shl nuw i32 1, %68
  %85 = sext i32 %84 to i64
  %86 = add i64 %83, -1
  %87 = add i64 %86, %85
  %88 = icmp ult i64 %87, 4294967296
  br i1 %88, label %89, label %93, !prof !9

89:                                               ; preds = %81
  %90 = trunc i64 %87 to i32
  %91 = lshr i32 %90, %68
  %92 = zext i32 %91 to i64
  br label %96

93:                                               ; preds = %81
  %94 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %84, i64 %87) #6, !srcloc !10
  %95 = extractvalue { i64, i64 } %94, 1
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi i64 [ %92, %89 ], [ %95, %93 ]
  %98 = add i64 %97, %77
  br label %99

99:                                               ; preds = %96, %56, %52
  %100 = phi i64 [ %98, %96 ], [ %77, %56 ], [ %55, %52 ]
  %101 = zext i32 %27 to i64
  %102 = add nsw i64 %101, -1
  %103 = add i64 %100, %102
  %104 = icmp ult i64 %103, 4294967296
  br i1 %104, label %105, label %108, !prof !9

105:                                              ; preds = %99
  %106 = trunc i64 %103 to i32
  %107 = udiv i32 %106, %27
  br label %112

108:                                              ; preds = %99
  %109 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %27, i64 %103) #6, !srcloc !10
  %110 = extractvalue { i64, i64 } %109, 1
  %111 = trunc i64 %110 to i32
  br label %112

112:                                              ; preds = %108, %105, %2
  %113 = phi i32 [ 0, %2 ], [ %107, %105 ], [ %111, %108 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_clk_pll_determine_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = call fastcc i32 @meson_clk_get_pll_settings(i32 noundef %7, i32 noundef %9, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %111

12:                                               ; preds = %2
  %13 = load i32, ptr %8, align 4
  %14 = load i32, ptr %3, align 4
  %15 = load i32, ptr %4, align 4
  %16 = zext i32 %13 to i64
  %17 = zext i32 %14 to i64
  %18 = mul nuw i64 %17, %16
  %19 = zext i32 %15 to i64
  %20 = add nsw i64 %19, -1
  %21 = add i64 %20, %18
  %22 = icmp ult i64 %21, 4294967296
  br i1 %22, label %23, label %26, !prof !9

23:                                               ; preds = %12
  %24 = trunc i64 %21 to i32
  %25 = udiv i32 %24, %15
  br label %30

26:                                               ; preds = %12
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %21) #6, !srcloc !10
  %28 = extractvalue { i64, i64 } %27, 1
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i32 [ %25, %23 ], [ %29, %26 ]
  %32 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %6, i32 0, i32 3, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %109, label %35

35:                                               ; preds = %30
  %36 = load i32, ptr %1, align 4
  %37 = icmp eq i32 %36, %31
  br i1 %37, label %109, label %38

38:                                               ; preds = %35
  %39 = zext i8 %33 to i32
  %40 = shl nuw i32 1, %39
  %41 = mul i32 %14, %13
  %42 = udiv i32 %41, %15
  %43 = icmp ugt i32 %42, %36
  br i1 %43, label %99, label %44

44:                                               ; preds = %38
  %45 = zext i32 %36 to i64
  %46 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %6, i32 0, i32 10
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  %50 = zext i32 %40 to i64
  %51 = mul nuw i64 %50, %19
  %52 = mul i64 %51, %45
  br i1 %49, label %65, label %53

53:                                               ; preds = %44
  %54 = lshr i32 %13, 1
  %55 = zext i32 %54 to i64
  %56 = add i64 %52, %55
  %57 = icmp ult i64 %56, 4294967296
  br i1 %57, label %58, label %61, !prof !9

58:                                               ; preds = %53
  %59 = trunc i64 %56 to i32
  %60 = udiv i32 %59, %13
  br label %74

61:                                               ; preds = %53
  %62 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %56) #6, !srcloc !10
  %63 = extractvalue { i64, i64 } %62, 1
  %64 = trunc i64 %63 to i32
  br label %74

65:                                               ; preds = %44
  %66 = icmp ult i64 %52, 4294967296
  br i1 %66, label %67, label %70, !prof !9

67:                                               ; preds = %65
  %68 = trunc i64 %52 to i32
  %69 = udiv i32 %68, %13
  br label %74

70:                                               ; preds = %65
  %71 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %52) #6, !srcloc !10
  %72 = extractvalue { i64, i64 } %71, 1
  %73 = trunc i64 %72 to i32
  br label %74

74:                                               ; preds = %70, %67, %61, %58
  %75 = phi i32 [ %60, %58 ], [ %64, %61 ], [ %69, %67 ], [ %73, %70 ]
  %76 = shl i32 %14, %39
  %77 = sub i32 %75, %76
  %78 = add i32 %40, -1
  %79 = tail call i32 @llvm.umin.i32(i32 %77, i32 %78) #5
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %74
  %82 = zext i32 %79 to i64
  %83 = mul nuw i64 %82, %16
  %84 = sext i32 %40 to i64
  %85 = add nsw i64 %84, -1
  %86 = add i64 %85, %83
  %87 = icmp ult i64 %86, 4294967296
  br i1 %87, label %88, label %92, !prof !9

88:                                               ; preds = %81
  %89 = trunc i64 %86 to i32
  %90 = lshr i32 %89, %39
  %91 = zext i32 %90 to i64
  br label %95

92:                                               ; preds = %81
  %93 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %40, i64 %86) #6, !srcloc !10
  %94 = extractvalue { i64, i64 } %93, 1
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i64 [ %91, %88 ], [ %94, %92 ]
  %97 = add i64 %96, %18
  %98 = add i64 %97, %20
  br label %99

99:                                               ; preds = %95, %74, %38
  %100 = phi i64 [ %21, %38 ], [ %98, %95 ], [ %21, %74 ]
  %101 = icmp ult i64 %100, 4294967296
  br i1 %101, label %102, label %105, !prof !9

102:                                              ; preds = %99
  %103 = trunc i64 %100 to i32
  %104 = udiv i32 %103, %15
  br label %109

105:                                              ; preds = %99
  %106 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %100) #6, !srcloc !10
  %107 = extractvalue { i64, i64 } %106, 1
  %108 = trunc i64 %107 to i32
  br label %109

109:                                              ; preds = %105, %102, %35, %30
  %110 = phi i32 [ %31, %35 ], [ %31, %30 ], [ %104, %102 ], [ %108, %105 ]
  store i32 %110, ptr %1, align 4
  br label %111

111:                                              ; preds = %109, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_clk_pll_enable(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call zeroext i1 @clk_hw_is_enabled(ptr noundef %0) #5
  br i1 %5, label %80, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %4, i32 0, i32 5
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %4, i32 0, i32 5, i32 1
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = shl nsw i32 -1, %14
  %16 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %4, i32 0, i32 5, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = add nuw nsw i32 %14, %18
  %20 = sub nsw i32 32, %19
  %21 = lshr i32 -1, %20
  %22 = and i32 %21, %15
  %23 = shl nuw i32 1, %14
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %11, i32 noundef %22, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %25 = load ptr, ptr %7, align 4
  %26 = load i16, ptr %4, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.parm, ptr %4, i32 0, i32 1
  %29 = load i8, ptr %28, align 2
  %30 = zext i8 %29 to i32
  %31 = shl nsw i32 -1, %30
  %32 = getelementptr inbounds %struct.parm, ptr %4, i32 0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = add nuw nsw i32 %30, %34
  %36 = sub nsw i32 32, %35
  %37 = lshr i32 -1, %36
  %38 = and i32 %37, %31
  %39 = shl nuw i32 1, %30
  %40 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %27, i32 noundef %38, i32 noundef %39, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %41 = load ptr, ptr %7, align 4
  %42 = load i16, ptr %9, align 2
  %43 = zext i16 %42 to i32
  %44 = load i8, ptr %12, align 2
  %45 = zext i8 %44 to i32
  %46 = shl nsw i32 -1, %45
  %47 = load i8, ptr %16, align 1
  %48 = zext i8 %47 to i32
  %49 = add nuw nsw i32 %45, %48
  %50 = sub nsw i32 32, %49
  %51 = lshr i32 -1, %50
  %52 = and i32 %51, %46
  %53 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %43, i32 noundef %52, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %54 = load ptr, ptr %3, align 4
  %55 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %54, i32 0, i32 4, i32 1
  %57 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %54, i32 0, i32 4, i32 2
  br label %58

58:                                               ; preds = %77, %6
  %59 = phi i32 [ 24000000, %6 ], [ %78, %77 ]
  %60 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %61 = load i16, ptr %55, align 2
  %62 = zext i16 %61 to i32
  %63 = call i32 @regmap_read(ptr noundef %60, i32 noundef %62, ptr noundef nonnull %2) #5
  %64 = load i32, ptr %2, align 4
  %65 = load i8, ptr %56, align 2
  %66 = zext i8 %65 to i32
  %67 = shl nsw i32 -1, %66
  %68 = load i8, ptr %57, align 1
  %69 = zext i8 %68 to i32
  %70 = add nuw nsw i32 %66, %69
  %71 = sub nsw i32 32, %70
  %72 = lshr i32 -1, %71
  %73 = and i32 %67, %64
  %74 = and i32 %73, %72
  %75 = lshr i32 %74, %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %58
  %78 = add nsw i32 %59, -1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %58

80:                                               ; preds = %77, %58, %1
  %81 = phi i32 [ 0, %1 ], [ 0, %58 ], [ -5, %77 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_clk_pll_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 0, ptr %6, align 4, !annotation !8
  %9 = icmp eq i32 %2, 0
  %10 = icmp eq i32 %1, 0
  %11 = or i1 %10, %9
  br i1 %11, label %177, label %12

12:                                               ; preds = %3
  %13 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #5
  %14 = call fastcc i32 @meson_clk_get_pll_settings(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %8)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %177

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %19 = load i16, ptr %8, align 2
  %20 = zext i16 %19 to i32
  %21 = call i32 @regmap_read(ptr noundef %18, i32 noundef %20, ptr noundef nonnull %4) #5
  %22 = load i32, ptr %4, align 4
  %23 = getelementptr inbounds %struct.parm, ptr %8, i32 0, i32 1
  %24 = load i8, ptr %23, align 2
  %25 = zext i8 %24 to i32
  %26 = shl nsw i32 -1, %25
  %27 = getelementptr inbounds %struct.parm, ptr %8, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %25, %29
  %31 = sub nsw i32 32, %30
  %32 = lshr i32 -1, %31
  %33 = and i32 %26, %22
  %34 = and i32 %33, %32
  %35 = lshr i32 %34, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %71, label %37

37:                                               ; preds = %16
  %38 = load ptr, ptr %7, align 4
  %39 = load ptr, ptr %17, align 4
  %40 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %38, i32 0, i32 5
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %38, i32 0, i32 5, i32 1
  %44 = load i8, ptr %43, align 2
  %45 = zext i8 %44 to i32
  %46 = shl nsw i32 -1, %45
  %47 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %38, i32 0, i32 5, i32 2
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = add nuw nsw i32 %45, %49
  %51 = sub nsw i32 32, %50
  %52 = lshr i32 -1, %51
  %53 = and i32 %52, %46
  %54 = shl nuw i32 1, %45
  %55 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef %42, i32 noundef %53, i32 noundef %54, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %56 = load ptr, ptr %17, align 4
  %57 = load i16, ptr %38, align 2
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds %struct.parm, ptr %38, i32 0, i32 1
  %60 = load i8, ptr %59, align 2
  %61 = zext i8 %60 to i32
  %62 = shl nsw i32 -1, %61
  %63 = getelementptr inbounds %struct.parm, ptr %38, i32 0, i32 2
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = add nuw nsw i32 %61, %65
  %67 = sub nsw i32 32, %66
  %68 = lshr i32 -1, %67
  %69 = and i32 %68, %62
  %70 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef %58, i32 noundef %69, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %71

71:                                               ; preds = %37, %16
  %72 = load ptr, ptr %17, align 4
  %73 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %8, i32 0, i32 2
  %74 = load i32, ptr %6, align 4
  %75 = load i16, ptr %73, align 2
  %76 = zext i16 %75 to i32
  %77 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %8, i32 0, i32 2, i32 1
  %78 = load i8, ptr %77, align 2
  %79 = zext i8 %78 to i32
  %80 = shl nsw i32 -1, %79
  %81 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %8, i32 0, i32 2, i32 2
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = add nuw nsw i32 %79, %83
  %85 = sub nsw i32 32, %84
  %86 = lshr i32 -1, %85
  %87 = and i32 %86, %80
  %88 = shl i32 %74, %79
  %89 = call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef %76, i32 noundef %87, i32 noundef %88, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %90 = load ptr, ptr %17, align 4
  %91 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %8, i32 0, i32 1
  %92 = load i32, ptr %5, align 4
  %93 = load i16, ptr %91, align 2
  %94 = zext i16 %93 to i32
  %95 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %8, i32 0, i32 1, i32 1
  %96 = load i8, ptr %95, align 2
  %97 = zext i8 %96 to i32
  %98 = shl nsw i32 -1, %97
  %99 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %8, i32 0, i32 1, i32 2
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = add nuw nsw i32 %97, %101
  %103 = sub nsw i32 32, %102
  %104 = lshr i32 -1, %103
  %105 = and i32 %104, %98
  %106 = shl i32 %92, %97
  %107 = call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef %94, i32 noundef %105, i32 noundef %106, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %108 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %8, i32 0, i32 3, i32 2
  %109 = load i8, ptr %108, align 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %170, label %111

111:                                              ; preds = %71
  %112 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %8, i32 0, i32 3
  %113 = zext i8 %109 to i32
  %114 = shl nuw i32 1, %113
  %115 = mul i32 %92, %2
  %116 = udiv i32 %115, %74
  %117 = icmp ugt i32 %116, %1
  br i1 %117, label %155, label %118

118:                                              ; preds = %111
  %119 = zext i32 %74 to i64
  %120 = zext i32 %1 to i64
  %121 = mul nuw i64 %119, %120
  %122 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %8, i32 0, i32 10
  %123 = load i8, ptr %122, align 4
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  %126 = zext i32 %114 to i64
  %127 = mul i64 %121, %126
  br i1 %125, label %140, label %128

128:                                              ; preds = %118
  %129 = lshr i32 %2, 1
  %130 = zext i32 %129 to i64
  %131 = add i64 %127, %130
  %132 = icmp ult i64 %131, 4294967296
  br i1 %132, label %133, label %136, !prof !9

133:                                              ; preds = %128
  %134 = trunc i64 %131 to i32
  %135 = udiv i32 %134, %2
  br label %149

136:                                              ; preds = %128
  %137 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %131) #6, !srcloc !10
  %138 = extractvalue { i64, i64 } %137, 1
  %139 = trunc i64 %138 to i32
  br label %149

140:                                              ; preds = %118
  %141 = icmp ult i64 %127, 4294967296
  br i1 %141, label %142, label %145, !prof !9

142:                                              ; preds = %140
  %143 = trunc i64 %127 to i32
  %144 = udiv i32 %143, %2
  br label %149

145:                                              ; preds = %140
  %146 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %127) #6, !srcloc !10
  %147 = extractvalue { i64, i64 } %146, 1
  %148 = trunc i64 %147 to i32
  br label %149

149:                                              ; preds = %145, %142, %136, %133
  %150 = phi i32 [ %135, %133 ], [ %139, %136 ], [ %144, %142 ], [ %148, %145 ]
  %151 = shl i32 %92, %113
  %152 = sub i32 %150, %151
  %153 = add i32 %114, -1
  %154 = call i32 @llvm.umin.i32(i32 %152, i32 %153) #5
  br label %155

155:                                              ; preds = %149, %111
  %156 = phi i32 [ %154, %149 ], [ 0, %111 ]
  %157 = load ptr, ptr %17, align 4
  %158 = load i16, ptr %112, align 2
  %159 = zext i16 %158 to i32
  %160 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %8, i32 0, i32 3, i32 1
  %161 = load i8, ptr %160, align 2
  %162 = zext i8 %161 to i32
  %163 = shl nsw i32 -1, %162
  %164 = add nuw nsw i32 %162, %113
  %165 = sub nsw i32 32, %164
  %166 = lshr i32 -1, %165
  %167 = and i32 %166, %163
  %168 = shl i32 %156, %162
  %169 = call i32 @regmap_update_bits_base(ptr noundef %157, i32 noundef %159, i32 noundef %167, i32 noundef %168, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %170

170:                                              ; preds = %155, %71
  br i1 %36, label %177, label %171

171:                                              ; preds = %170
  %172 = call i32 @meson_clk_pll_enable(ptr noundef %0)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.meson_clk_pll_set_rate, i32 noundef %13) #7
  %176 = call i32 @meson_clk_pll_set_rate(ptr noundef %0, i32 noundef %13, i32 noundef %2)
  br label %177

177:                                              ; preds = %174, %171, %170, %12, %3
  %178 = phi i32 [ -22, %3 ], [ %14, %12 ], [ 0, %170 ], [ %172, %174 ], [ 0, %171 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  ret i32 %178
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_clk_pll_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %44, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %3, i32 0, i32 5
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %3, i32 0, i32 5, i32 1
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = shl nsw i32 -1, %15
  %17 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %3, i32 0, i32 5, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = add nuw nsw i32 %15, %19
  %21 = sub nsw i32 32, %20
  %22 = lshr i32 -1, %21
  %23 = and i32 %22, %16
  %24 = shl nuw i32 1, %15
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %12, i32 noundef %23, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %3, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %4, align 4
  %30 = tail call i32 @regmap_multi_reg_write(ptr noundef %26, ptr noundef %28, i32 noundef %29) #5
  %31 = load ptr, ptr %8, align 4
  %32 = load i16, ptr %10, align 2
  %33 = zext i16 %32 to i32
  %34 = load i8, ptr %13, align 2
  %35 = zext i8 %34 to i32
  %36 = shl nsw i32 -1, %35
  %37 = load i8, ptr %17, align 1
  %38 = zext i8 %37 to i32
  %39 = add nuw nsw i32 %35, %38
  %40 = sub nsw i32 32, %39
  %41 = lshr i32 -1, %40
  %42 = and i32 %41, %36
  %43 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %33, i32 noundef %42, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %44

44:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_clk_get_pll_settings(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %4, i32 0, i32 8
  %7 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %4, i32 0, i32 9
  %8 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %4, i32 0, i32 2, i32 2
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %4, i32 0, i32 10
  %11 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %4, i32 0, i32 3, i32 2
  %12 = lshr i32 %1, 1
  %13 = zext i32 %12 to i64
  %14 = zext i32 %1 to i64
  %15 = getelementptr inbounds %struct.meson_clk_pll_data, ptr %4, i32 0, i32 1, i32 2
  br label %16

16:                                               ; preds = %119, %5
  %17 = phi i32 [ 0, %5 ], [ %121, %119 ]
  %18 = phi i32 [ 0, %5 ], [ %120, %119 ]
  %19 = load ptr, ptr %7, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %72, label %21

21:                                               ; preds = %16
  %22 = add i32 %17, 1
  %23 = load i8, ptr %8, align 1
  %24 = zext i8 %23 to i32
  %25 = lshr i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %122

27:                                               ; preds = %21
  %28 = icmp eq i32 %17, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %27
  %30 = load i32, ptr %19, align 4
  %31 = mul i32 %30, %1
  %32 = icmp ult i32 %31, %0
  br i1 %32, label %33, label %82

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.pll_mult_range, ptr %19, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = mul i32 %35, %1
  %37 = icmp ugt i32 %36, %0
  br i1 %37, label %38, label %82

38:                                               ; preds = %33, %27
  %39 = zext i32 %22 to i64
  %40 = mul nuw i64 %39, %9
  %41 = load i8, ptr %10, align 4
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %38
  %45 = load i8, ptr %11, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = add nuw i64 %40, %13
  %49 = icmp ult i64 %48, 4294967296
  br i1 %49, label %50, label %53, !prof !9

50:                                               ; preds = %47
  %51 = trunc i64 %48 to i32
  %52 = udiv i32 %51, %1
  br label %66

53:                                               ; preds = %47
  %54 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %48) #6, !srcloc !10
  %55 = extractvalue { i64, i64 } %54, 1
  %56 = trunc i64 %55 to i32
  br label %66

57:                                               ; preds = %44, %38
  %58 = icmp ult i64 %40, 4294967296
  br i1 %58, label %59, label %62, !prof !9

59:                                               ; preds = %57
  %60 = trunc i64 %40 to i32
  %61 = udiv i32 %60, %1
  br label %66

62:                                               ; preds = %57
  %63 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %40) #6, !srcloc !10
  %64 = extractvalue { i64, i64 } %63, 1
  %65 = trunc i64 %64 to i32
  br label %66

66:                                               ; preds = %62, %59, %53, %50
  %67 = phi i32 [ %52, %50 ], [ %56, %53 ], [ %61, %59 ], [ %65, %62 ]
  %68 = load i8, ptr %15, align 1
  %69 = zext i8 %68 to i32
  %70 = lshr i32 %67, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %82, label %122

72:                                               ; preds = %16
  %73 = load ptr, ptr %6, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %122, label %75

75:                                               ; preds = %72
  %76 = getelementptr %struct.pll_params_table, ptr %73, i32 %17, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %122, label %79

79:                                               ; preds = %75
  %80 = getelementptr %struct.pll_params_table, ptr %73, i32 %17
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %66, %33, %29
  %83 = phi i32 [ %81, %79 ], [ %30, %29 ], [ %35, %33 ], [ %67, %66 ]
  %84 = phi i32 [ %77, %79 ], [ 1, %29 ], [ 1, %33 ], [ %22, %66 ]
  %85 = phi i1 [ true, %79 ], [ false, %29 ], [ false, %33 ], [ true, %66 ]
  %86 = zext i32 %83 to i64
  %87 = mul nuw i64 %86, %14
  %88 = zext i32 %84 to i64
  %89 = add nsw i64 %88, -1
  %90 = add i64 %89, %87
  %91 = icmp ult i64 %90, 4294967296
  br i1 %91, label %92, label %95, !prof !9

92:                                               ; preds = %82
  %93 = trunc i64 %90 to i32
  %94 = udiv i32 %93, %84
  br label %99

95:                                               ; preds = %82
  %96 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %84, i64 %90) #6, !srcloc !10
  %97 = extractvalue { i64, i64 } %96, 1
  %98 = trunc i64 %97 to i32
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi i32 [ %94, %92 ], [ %98, %95 ]
  %101 = load i8, ptr %10, align 4
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %99
  %105 = load i8, ptr %11, align 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = sub i32 %100, %0
  %109 = tail call i32 @llvm.abs.i32(i32 %108, i1 false) #5
  %110 = sub i32 %18, %0
  %111 = tail call i32 @llvm.abs.i32(i32 %110, i1 false) #5
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %117, label %119

113:                                              ; preds = %104, %99
  %114 = icmp ule i32 %100, %0
  %115 = icmp ult i32 %18, %100
  %116 = and i1 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113, %107
  store i32 %83, ptr %2, align 4
  store i32 %84, ptr %3, align 4
  %118 = icmp eq i32 %100, %0
  br i1 %118, label %122, label %119

119:                                              ; preds = %117, %113, %107
  %120 = phi i32 [ %100, %117 ], [ %18, %107 ], [ %18, %113 ]
  %121 = add i32 %17, 1
  br i1 %85, label %16, label %122

122:                                              ; preds = %119, %117, %75, %72, %66, %21
  %123 = phi i32 [ %0, %117 ], [ %120, %119 ], [ %18, %72 ], [ %18, %21 ], [ %18, %66 ], [ %18, %75 ]
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %124, i32 -22, i32 0
  ret i32 %125
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_hw_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148662617, i64 2148662897, i64 2148663231, i64 2148663565}
