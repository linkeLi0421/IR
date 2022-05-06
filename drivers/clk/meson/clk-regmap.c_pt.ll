; ModuleID = '/llk/IR/drivers/clk/meson/clk-regmap.c_pt.bc'
source_filename = "../drivers/clk/meson/clk-regmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_gate_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_gate_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_gate_ro_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_gate_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_divider_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_divider_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_divider_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_divider_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_divider_ro_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_divider_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_mux_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_mux_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_mux_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_mux_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_mux_ro_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_mux_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_regmap = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_regmap_gate_data = type { i32, i8, i8 }
%struct.clk_regmap_div_data = type { i32, i8, i8, i8, ptr }
%struct.clk_regmap_mux_data = type { i32, ptr, i32, i8, i8 }

@clk_regmap_gate_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_regmap_gate_enable, ptr @clk_regmap_gate_disable, ptr @clk_regmap_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_regmap_gate_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_gate_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_gate_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_gate_ops to i32), ptr @__kstrtab_clk_regmap_gate_ops, ptr @__kstrtabns_clk_regmap_gate_ops }, section "___ksymtab_gpl+clk_regmap_gate_ops", align 4
@clk_regmap_gate_ro_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_regmap_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_regmap_gate_ro_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_gate_ro_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_gate_ro_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_gate_ro_ops to i32), ptr @__kstrtab_clk_regmap_gate_ro_ops, ptr @__kstrtabns_clk_regmap_gate_ro_ops }, section "___ksymtab_gpl+clk_regmap_gate_ro_ops", align 4
@clk_regmap_divider_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_regmap_div_recalc_rate, ptr null, ptr @clk_regmap_div_determine_rate, ptr null, ptr null, ptr @clk_regmap_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_regmap_divider_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_divider_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_divider_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_divider_ops to i32), ptr @__kstrtab_clk_regmap_divider_ops, ptr @__kstrtabns_clk_regmap_divider_ops }, section "___ksymtab_gpl+clk_regmap_divider_ops", align 4
@clk_regmap_divider_ro_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_regmap_div_recalc_rate, ptr null, ptr @clk_regmap_div_determine_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_regmap_divider_ro_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_divider_ro_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_divider_ro_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_divider_ro_ops to i32), ptr @__kstrtab_clk_regmap_divider_ro_ops, ptr @__kstrtabns_clk_regmap_divider_ro_ops }, section "___ksymtab_gpl+clk_regmap_divider_ro_ops", align 4
@clk_regmap_mux_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_regmap_mux_determine_rate, ptr @clk_regmap_mux_set_parent, ptr @clk_regmap_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_regmap_mux_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_mux_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_mux_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_mux_ops to i32), ptr @__kstrtab_clk_regmap_mux_ops, ptr @__kstrtabns_clk_regmap_mux_ops }, section "___ksymtab_gpl+clk_regmap_mux_ops", align 4
@clk_regmap_mux_ro_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_regmap_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_regmap_mux_ro_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_mux_ro_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_mux_ro_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_mux_ro_ops to i32), ptr @__kstrtab_clk_regmap_mux_ro_ops, ptr @__kstrtabns_clk_regmap_mux_ro_ops }, section "___ksymtab_gpl+clk_regmap_mux_ro_ops", align 4
@__UNIQUE_ID_description154 = internal constant [58 x i8] c"clk_regmap.description=Amlogic regmap backed clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author155 = internal constant [55 x i8] c"clk_regmap.author=Jerome Brunet <jbrunet@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file156 = internal constant [45 x i8] c"clk_regmap.file=drivers/clk/meson/clk-regmap\00", section ".modinfo", align 1
@__UNIQUE_ID_license157 = internal constant [26 x i8] c"clk_regmap.license=GPL v2\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author155, ptr @__UNIQUE_ID_description154, ptr @__UNIQUE_ID_file156, ptr @__UNIQUE_ID_license157, ptr @__ksymtab_clk_regmap_divider_ops, ptr @__ksymtab_clk_regmap_divider_ro_ops, ptr @__ksymtab_clk_regmap_gate_ops, ptr @__ksymtab_clk_regmap_gate_ro_ops, ptr @__ksymtab_clk_regmap_mux_ops, ptr @__ksymtab_clk_regmap_mux_ro_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_regmap_gate_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_regmap_gate_data, ptr %3, i32 0, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 1
  %7 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %3, align 4
  %10 = getelementptr inbounds %struct.clk_regmap_gate_data, ptr %3, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 1, %12
  %14 = icmp eq i8 %6, 0
  %15 = select i1 %14, i32 %13, i32 0
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %9, i32 noundef %13, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_regmap_gate_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_regmap_gate_data, ptr %3, i32 0, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 1
  %7 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %3, align 4
  %10 = getelementptr inbounds %struct.clk_regmap_gate_data, ptr %3, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 1, %12
  %14 = icmp eq i8 %6, 0
  %15 = select i1 %14, i32 0, i32 %13
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %9, i32 noundef %13, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_regmap_gate_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = call i32 @regmap_read(ptr noundef %6, i32 noundef %7, ptr noundef nonnull %2) #3
  %9 = getelementptr inbounds %struct.clk_regmap_gate_data, ptr %4, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.clk_regmap_gate_data, ptr %4, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  br i1 %12, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, ptr %2, align 4
  %17 = zext i8 %14 to i32
  %18 = shl nuw i32 1, %17
  br label %24

19:                                               ; preds = %1
  %20 = zext i8 %14 to i32
  %21 = shl nuw i32 1, %20
  %22 = load i32, ptr %2, align 4
  %23 = xor i32 %21, %22
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i32 [ %18, %15 ], [ %21, %19 ]
  %26 = phi i32 [ %16, %15 ], [ %23, %19 ]
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_regmap_div_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %5, align 4
  %9 = call i32 @regmap_read(ptr noundef %7, i32 noundef %8, ptr noundef nonnull %3) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %5, i32 0, i32 1
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = load i32, ptr %3, align 4
  %16 = lshr i32 %15, %14
  %17 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %5, i32 0, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nsw i32 -1, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %16, %21
  store i32 %22, ptr %3, align 4
  %23 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %5, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %5, i32 0, i32 3
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = call i32 @divider_recalc_rate(ptr noundef %0, i32 noundef %1, i32 noundef %22, ptr noundef %24, i32 noundef %27, i32 noundef %19) #3
  br label %29

29:                                               ; preds = %11, %2
  %30 = phi i32 [ %28, %11 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_regmap_div_determine_rate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %5, align 4
  %15 = call i32 @regmap_read(ptr noundef %13, i32 noundef %14, ptr noundef nonnull %3) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %5, i32 0, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = load i32, ptr %3, align 4
  %22 = lshr i32 %21, %20
  %23 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %5, i32 0, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nsw i32 -1, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %22, %27
  store i32 %28, ptr %3, align 4
  %29 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %5, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = load i8, ptr %6, align 2
  %32 = zext i8 %31 to i32
  %33 = call i32 @divider_ro_determine_rate(ptr noundef %0, ptr noundef %1, ptr noundef %30, i8 noundef zeroext %24, i32 noundef %32, i32 noundef %28) #3
  br label %40

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %5, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %5, i32 0, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = tail call i32 @divider_determine_rate(ptr noundef %0, ptr noundef %1, ptr noundef %36, i8 noundef zeroext %38, i32 noundef %8) #3
  br label %40

40:                                               ; preds = %34, %17, %11
  %41 = phi i32 [ %33, %17 ], [ %39, %34 ], [ %15, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_regmap_div_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %5, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %5, i32 0, i32 3
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = tail call i32 @divider_get_val(i32 noundef %1, i32 noundef %2, ptr noundef %7, i8 noundef zeroext %9, i32 noundef %12) #3
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.clk_regmap_div_data, ptr %5, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = shl i32 %13, %18
  %20 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %5, align 4
  %23 = load i8, ptr %8, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nsw i32 -1, %24
  %26 = xor i32 %25, -1
  %27 = shl i32 %26, %18
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %22, i32 noundef %27, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %29

29:                                               ; preds = %15, %3
  %30 = phi i32 [ %28, %15 ], [ %13, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_regmap_mux_determine_rate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %4, i32 0, i32 4
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = tail call i32 @clk_mux_determine_rate_flags(ptr noundef %0, ptr noundef %1, i32 noundef %7) #3
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_regmap_mux_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %4, i32 0, i32 4
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @clk_mux_index_to_val(ptr noundef %6, i32 noundef %9, i8 noundef zeroext %1) #3
  %11 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %4, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %4, i32 0, i32 3
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = shl i32 %15, %18
  %20 = shl i32 %10, %18
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %13, i32 noundef %19, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_regmap_mux_get_parent(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = call i32 @regmap_read(ptr noundef %6, i32 noundef %7, ptr noundef nonnull %2) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %4, i32 0, i32 3
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = load i32, ptr %2, align 4
  %15 = lshr i32 %14, %13
  %16 = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %4, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, %15
  store i32 %18, ptr %2, align 4
  %19 = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %4, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.clk_regmap_mux_data, ptr %4, i32 0, i32 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = call i32 @clk_mux_val_to_index(ptr noundef %0, ptr noundef %20, i32 noundef %23, i32 noundef %18) #3
  br label %25

25:                                               ; preds = %10, %1
  %26 = phi i32 [ %24, %10 ], [ %8, %1 ]
  %27 = trunc i32 %26 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret i8 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_ro_determine_rate(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_determine_rate(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_determine_rate_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_index_to_val(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_val_to_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
