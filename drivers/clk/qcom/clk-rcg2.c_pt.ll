; ModuleID = '/llk/IR/drivers/clk/qcom/clk-rcg2.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-rcg2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_rcg2_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_rcg2_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_rcg2_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_rcg2_floor_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_rcg2_floor_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_rcg2_floor_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_edp_pixel_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_edp_pixel_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_edp_pixel_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_byte_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_byte_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_byte_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_byte2_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_byte2_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_byte2_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_pixel_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_pixel_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_pixel_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_gfx3d_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_gfx3d_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_gfx3d_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_rcg2_shared_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_rcg2_shared_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_rcg2_shared_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_cc_register_rcg_dfs:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_cc_register_rcg_dfs\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_cc_register_rcg_dfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_dp_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_dp_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_dp_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.frac_entry = type { i32, i32 }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.parent_map = type { i8, i8 }
%struct.clk_duty = type { i32, i32 }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.clk_rcg_dfs_data = type { ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_rcg2 = type { i32, i8, i8, i8, ptr, ptr, %struct.clk_regmap, i8 }

@clk_rcg2_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg2_is_enabled, ptr null, ptr null, ptr null, ptr @clk_rcg2_recalc_rate, ptr null, ptr @clk_rcg2_determine_rate, ptr @clk_rcg2_set_parent, ptr @clk_rcg2_get_parent, ptr @clk_rcg2_set_rate, ptr @clk_rcg2_set_rate_and_parent, ptr null, ptr null, ptr null, ptr @clk_rcg2_get_duty_cycle, ptr @clk_rcg2_set_duty_cycle, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_rcg2_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_rcg2_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_rcg2_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_rcg2_ops to i32), ptr @__kstrtab_clk_rcg2_ops, ptr @__kstrtabns_clk_rcg2_ops }, section "___ksymtab_gpl+clk_rcg2_ops", align 4
@clk_rcg2_floor_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg2_is_enabled, ptr null, ptr null, ptr null, ptr @clk_rcg2_recalc_rate, ptr null, ptr @clk_rcg2_determine_floor_rate, ptr @clk_rcg2_set_parent, ptr @clk_rcg2_get_parent, ptr @clk_rcg2_set_floor_rate, ptr @clk_rcg2_set_floor_rate_and_parent, ptr null, ptr null, ptr null, ptr @clk_rcg2_get_duty_cycle, ptr @clk_rcg2_set_duty_cycle, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_rcg2_floor_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_rcg2_floor_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_rcg2_floor_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_rcg2_floor_ops to i32), ptr @__kstrtab_clk_rcg2_floor_ops, ptr @__kstrtabns_clk_rcg2_floor_ops }, section "___ksymtab_gpl+clk_rcg2_floor_ops", align 4
@clk_edp_pixel_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg2_is_enabled, ptr null, ptr null, ptr null, ptr @clk_rcg2_recalc_rate, ptr null, ptr @clk_edp_pixel_determine_rate, ptr @clk_rcg2_set_parent, ptr @clk_rcg2_get_parent, ptr @clk_edp_pixel_set_rate, ptr @clk_edp_pixel_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_edp_pixel_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_edp_pixel_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_edp_pixel_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_edp_pixel_ops to i32), ptr @__kstrtab_clk_edp_pixel_ops, ptr @__kstrtabns_clk_edp_pixel_ops }, section "___ksymtab_gpl+clk_edp_pixel_ops", align 4
@clk_byte_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg2_is_enabled, ptr null, ptr null, ptr null, ptr @clk_rcg2_recalc_rate, ptr null, ptr @clk_byte_determine_rate, ptr @clk_rcg2_set_parent, ptr @clk_rcg2_get_parent, ptr @clk_byte_set_rate, ptr @clk_byte_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_byte_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_byte_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_byte_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_byte_ops to i32), ptr @__kstrtab_clk_byte_ops, ptr @__kstrtabns_clk_byte_ops }, section "___ksymtab_gpl+clk_byte_ops", align 4
@clk_byte2_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg2_is_enabled, ptr null, ptr null, ptr null, ptr @clk_rcg2_recalc_rate, ptr null, ptr @clk_byte2_determine_rate, ptr @clk_rcg2_set_parent, ptr @clk_rcg2_get_parent, ptr @clk_byte2_set_rate, ptr @clk_byte2_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_byte2_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_byte2_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_byte2_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_byte2_ops to i32), ptr @__kstrtab_clk_byte2_ops, ptr @__kstrtabns_clk_byte2_ops }, section "___ksymtab_gpl+clk_byte2_ops", align 4
@clk_pixel_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg2_is_enabled, ptr null, ptr null, ptr null, ptr @clk_rcg2_recalc_rate, ptr null, ptr @clk_pixel_determine_rate, ptr @clk_rcg2_set_parent, ptr @clk_rcg2_get_parent, ptr @clk_pixel_set_rate, ptr @clk_pixel_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_pixel_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_pixel_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_pixel_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_pixel_ops to i32), ptr @__kstrtab_clk_pixel_ops, ptr @__kstrtabns_clk_pixel_ops }, section "___ksymtab_gpl+clk_pixel_ops", align 4
@clk_gfx3d_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg2_is_enabled, ptr null, ptr null, ptr null, ptr @clk_rcg2_recalc_rate, ptr null, ptr @clk_gfx3d_determine_rate, ptr @clk_rcg2_set_parent, ptr @clk_rcg2_get_parent, ptr @clk_gfx3d_set_rate, ptr @clk_gfx3d_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_gfx3d_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_gfx3d_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_gfx3d_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_gfx3d_ops to i32), ptr @__kstrtab_clk_gfx3d_ops, ptr @__kstrtabns_clk_gfx3d_ops }, section "___ksymtab_gpl+clk_gfx3d_ops", align 4
@clk_rcg2_shared_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg2_shared_enable, ptr @clk_rcg2_shared_disable, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg2_recalc_rate, ptr null, ptr @clk_rcg2_determine_rate, ptr @clk_rcg2_set_parent, ptr @clk_rcg2_get_parent, ptr @clk_rcg2_shared_set_rate, ptr @clk_rcg2_shared_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_rcg2_shared_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_rcg2_shared_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_rcg2_shared_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_rcg2_shared_ops to i32), ptr @__kstrtab_clk_rcg2_shared_ops, ptr @__kstrtabns_clk_rcg2_shared_ops }, section "___ksymtab_gpl+clk_rcg2_shared_ops", align 4
@__kstrtab_qcom_cc_register_rcg_dfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_cc_register_rcg_dfs = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_cc_register_rcg_dfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_cc_register_rcg_dfs to i32), ptr @__kstrtab_qcom_cc_register_rcg_dfs, ptr @__kstrtabns_qcom_cc_register_rcg_dfs }, section "___ksymtab_gpl+qcom_cc_register_rcg_dfs", align 4
@clk_dp_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg2_is_enabled, ptr null, ptr null, ptr null, ptr @clk_rcg2_recalc_rate, ptr null, ptr @clk_rcg2_dp_determine_rate, ptr @clk_rcg2_set_parent, ptr @clk_rcg2_get_parent, ptr @clk_rcg2_dp_set_rate, ptr @clk_rcg2_dp_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_dp_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_dp_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_dp_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_dp_ops to i32), ptr @__kstrtab_clk_dp_ops, ptr @__kstrtabns_clk_dp_ops }, section "___ksymtab_gpl+clk_dp_ops", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [28 x i8] c"drivers/clk/qcom/clk-rcg2.c\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: rcg didn't update its configuration.\00", align 1
@frac_table_810m = internal unnamed_addr constant [8 x %struct.frac_entry] [%struct.frac_entry { i32 31, i32 211 }, %struct.frac_entry { i32 32, i32 199 }, %struct.frac_entry { i32 63, i32 307 }, %struct.frac_entry { i32 11, i32 60 }, %struct.frac_entry { i32 50, i32 263 }, %struct.frac_entry { i32 31, i32 120 }, %struct.frac_entry { i32 119, i32 359 }, %struct.frac_entry zeroinitializer], align 4
@frac_table_675m = internal unnamed_addr constant [8 x %struct.frac_entry] [%struct.frac_entry { i32 52, i32 295 }, %struct.frac_entry { i32 11, i32 57 }, %struct.frac_entry { i32 63, i32 307 }, %struct.frac_entry { i32 11, i32 50 }, %struct.frac_entry { i32 47, i32 206 }, %struct.frac_entry { i32 31, i32 100 }, %struct.frac_entry { i32 107, i32 269 }, %struct.frac_entry zeroinitializer], align 4
@frac_table_pixel = internal unnamed_addr constant [5 x %struct.frac_entry] [%struct.frac_entry { i32 3, i32 8 }, %struct.frac_entry { i32 2, i32 9 }, %struct.frac_entry { i32 4, i32 9 }, %struct.frac_entry { i32 1, i32 1 }, %struct.frac_entry zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"\013%s: RCG did not turn on\0A\00", align 1
@clk_rcg2_dfs_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg2_is_enabled, ptr null, ptr null, ptr null, ptr @clk_rcg2_dfs_recalc_rate, ptr null, ptr @clk_rcg2_dfs_determine_rate, ptr null, ptr @clk_rcg2_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"\013Failed to update DFS tables for %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_clk_byte2_ops, ptr @__ksymtab_clk_byte_ops, ptr @__ksymtab_clk_dp_ops, ptr @__ksymtab_clk_edp_pixel_ops, ptr @__ksymtab_clk_gfx3d_ops, ptr @__ksymtab_clk_pixel_ops, ptr @__ksymtab_clk_rcg2_floor_ops, ptr @__ksymtab_clk_rcg2_ops, ptr @__ksymtab_clk_rcg2_shared_ops, ptr @__ksymtab_qcom_cc_register_rcg_dfs], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = call i32 @regmap_read(ptr noundef %5, i32 noundef %6, ptr noundef nonnull %2) #9
  %8 = icmp eq i32 %7, 0
  %9 = load i32, ptr %2, align 4
  %10 = xor i32 %9, -1
  %11 = lshr i32 %10, 31
  %12 = select i1 %8, i32 %11, i32 %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = getelementptr i8, ptr %0, i32 28
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = add i32 %9, 4
  %14 = add i32 %13, %12
  %15 = call i32 @regmap_read(ptr noundef %8, i32 noundef %14, ptr noundef nonnull %3) #9
  %16 = getelementptr i8, ptr %0, i32 -12
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, ptr %3, align 4
  br label %49

21:                                               ; preds = %2
  %22 = zext i8 %17 to i32
  %23 = shl nsw i32 -1, %22
  %24 = xor i32 %23, -1
  %25 = load ptr, ptr %7, align 4
  %26 = load i32, ptr %6, align 4
  %27 = load i8, ptr %10, align 4
  %28 = zext i8 %27 to i32
  %29 = add i32 %26, 8
  %30 = add i32 %29, %28
  %31 = call i32 @regmap_read(ptr noundef %25, i32 noundef %30, ptr noundef nonnull %4) #9
  %32 = load i32, ptr %4, align 4
  %33 = and i32 %32, %24
  store i32 %33, ptr %4, align 4
  %34 = load ptr, ptr %7, align 4
  %35 = load i32, ptr %6, align 4
  %36 = load i8, ptr %10, align 4
  %37 = zext i8 %36 to i32
  %38 = add i32 %35, 12
  %39 = add i32 %38, %37
  %40 = call i32 @regmap_read(ptr noundef %34, i32 noundef %39, ptr noundef nonnull %5) #9
  %41 = load i32, ptr %5, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %42, %24
  %44 = load i32, ptr %4, align 4
  %45 = add i32 %44, %43
  %46 = load i32, ptr %3, align 4
  %47 = lshr i32 %46, 12
  %48 = and i32 %47, 3
  br label %49

49:                                               ; preds = %21, %19
  %50 = phi i32 [ %45, %21 ], [ 0, %19 ]
  %51 = phi i32 [ %44, %21 ], [ 0, %19 ]
  %52 = phi i32 [ %46, %21 ], [ %20, %19 ]
  %53 = phi i32 [ %48, %21 ], [ 0, %19 ]
  %54 = getelementptr i8, ptr %0, i32 -11
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nsw i32 -1, %56
  %58 = xor i32 %57, -1
  %59 = and i32 %52, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %49
  %62 = shl i32 %1, 1
  %63 = add i32 %59, 1
  %64 = udiv i32 %62, %63
  br label %65

65:                                               ; preds = %61, %49
  %66 = phi i32 [ %64, %61 ], [ %1, %49 ]
  %67 = icmp eq i32 %53, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %65
  %69 = zext i32 %66 to i64
  %70 = zext i32 %51 to i64
  %71 = mul nuw i64 %69, %70
  %72 = icmp ult i64 %71, 4294967296
  br i1 %72, label %73, label %76, !prof !9

73:                                               ; preds = %68
  %74 = trunc i64 %71 to i32
  %75 = udiv i32 %74, %50
  br label %80

76:                                               ; preds = %68
  %77 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %50, i64 %71) #10, !srcloc !10
  %78 = extractvalue { i64, i64 } %77, 1
  %79 = trunc i64 %78 to i32
  br label %80

80:                                               ; preds = %76, %73, %65
  %81 = phi i32 [ %66, %65 ], [ %75, %73 ], [ %79, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @_freq_tbl_determine_rate(ptr noundef %0, ptr noundef %4, ptr noundef %1, i32 noundef 1)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_set_parent(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = zext i8 %1 to i32
  %7 = getelementptr %struct.parent_map, ptr %5, i32 %6, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %3, align 4
  %14 = getelementptr i8, ptr %0, i32 28
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = add i32 %13, 4
  %18 = add i32 %17, %16
  %19 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %18, i32 noundef 1792, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = tail call fastcc i32 @update_config(ptr noundef %3)
  br label %23

23:                                               ; preds = %21, %2
  %24 = phi i32 [ %22, %21 ], [ %19, %2 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_rcg2_get_parent(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = getelementptr i8, ptr %0, i32 28
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = add i32 %7, 4
  %12 = add i32 %11, %10
  %13 = call i32 @regmap_read(ptr noundef %6, i32 noundef %12, ptr noundef nonnull %2) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load i32, ptr %2, align 4
  %17 = lshr i32 %16, 8
  %18 = and i32 %17, 7
  store i32 %18, ptr %2, align 4
  %19 = icmp sgt i32 %4, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %0, i32 -8
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %31, %20
  %24 = phi i32 [ 0, %20 ], [ %32, %31 ]
  %25 = getelementptr %struct.parent_map, ptr %22, i32 %24, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %18, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = trunc i32 %24 to i8
  br label %34

31:                                               ; preds = %23
  %32 = add nuw nsw i32 %24, 1
  %33 = icmp eq i32 %32, %4
  br i1 %33, label %34, label %23

34:                                               ; preds = %31, %29, %15, %1
  %35 = phi i8 [ %30, %29 ], [ 0, %1 ], [ 0, %15 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i8 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @qcom_find_freq(ptr noundef %6, i32 noundef %1) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @__clk_rcg2_configure(ptr noundef %4, ptr noundef nonnull %7) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @update_config(ptr noundef %4) #9
  br label %14

14:                                               ; preds = %12, %9, %3
  %15 = phi i32 [ -22, %3 ], [ %13, %12 ], [ %10, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @qcom_find_freq(ptr noundef %7, i32 noundef %1) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @__clk_rcg2_configure(ptr noundef %5, ptr noundef nonnull %8) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @update_config(ptr noundef %5) #9
  br label %15

15:                                               ; preds = %13, %10, %4
  %16 = phi i32 [ -22, %4 ], [ %14, %13 ], [ %11, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_get_duty_cycle(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr i8, ptr %0, i32 -12
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %54, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 -16
  %11 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %10, align 4
  %14 = getelementptr i8, ptr %0, i32 28
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = add i32 %13, 16
  %18 = add i32 %17, %16
  %19 = call i32 @regmap_read(ptr noundef %12, i32 noundef %18, ptr noundef nonnull %5) #9
  %20 = load ptr, ptr %11, align 4
  %21 = load i32, ptr %10, align 4
  %22 = load i8, ptr %14, align 4
  %23 = zext i8 %22 to i32
  %24 = add i32 %21, 8
  %25 = add i32 %24, %23
  %26 = call i32 @regmap_read(ptr noundef %20, i32 noundef %25, ptr noundef nonnull %4) #9
  %27 = load ptr, ptr %11, align 4
  %28 = load i32, ptr %10, align 4
  %29 = load i8, ptr %14, align 4
  %30 = zext i8 %29 to i32
  %31 = add i32 %28, 12
  %32 = add i32 %31, %30
  %33 = call i32 @regmap_read(ptr noundef %27, i32 noundef %32, ptr noundef nonnull %3) #9
  %34 = load i32, ptr %5, align 4
  %35 = icmp ne i32 %34, 0
  %36 = load i32, ptr %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %35, i1 true, i1 %37
  %39 = load i32, ptr %3, align 4
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %9
  %43 = load i8, ptr %6, align 4
  %44 = zext i8 %43 to i32
  %45 = shl nsw i32 -1, %44
  %46 = xor i32 %45, -1
  %47 = xor i32 %34, -1
  %48 = and i32 %46, %47
  %49 = add i32 %48, 1
  %50 = lshr i32 %49, 1
  %51 = xor i32 %39, -1
  %52 = add i32 %36, %51
  %53 = and i32 %52, %46
  br label %54

54:                                               ; preds = %42, %9, %2
  %55 = phi i32 [ %50, %42 ], [ 1, %2 ], [ 1, %9 ]
  %56 = phi i32 [ %53, %42 ], [ 2, %2 ], [ 2, %9 ]
  store i32 %55, ptr %1, align 4
  %57 = getelementptr inbounds %struct.clk_duty, ptr %1, i32 0, i32 1
  store i32 %56, ptr %57, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_set_duty_cycle(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = getelementptr i8, ptr %0, i32 -12
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %64, label %9

9:                                                ; preds = %2
  %10 = zext i8 %7 to i32
  %11 = shl nsw i32 -1, %10
  %12 = xor i32 %11, -1
  %13 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %5, align 4
  %16 = getelementptr i8, ptr %0, i32 28
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = add i32 %15, 12
  %20 = add i32 %19, %18
  %21 = call i32 @regmap_read(ptr noundef %14, i32 noundef %20, ptr noundef nonnull %3) #9
  %22 = load ptr, ptr %13, align 4
  %23 = load i32, ptr %5, align 4
  %24 = load i8, ptr %16, align 4
  %25 = zext i8 %24 to i32
  %26 = add i32 %23, 8
  %27 = add i32 %26, %25
  %28 = call i32 @regmap_read(ptr noundef %22, i32 noundef %27, ptr noundef nonnull %4) #9
  %29 = load i32, ptr %3, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, ptr %4, align 4
  %32 = add i32 %31, %30
  %33 = and i32 %32, %12
  %34 = load i32, ptr %1, align 4
  %35 = mul i32 %34, 100
  %36 = getelementptr inbounds %struct.clk_duty, ptr %1, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = udiv i32 %35, %37
  %39 = shl i32 %33, 1
  %40 = mul i32 %39, %38
  %41 = add i32 %40, 50
  %42 = udiv i32 %41, 100
  %43 = call i32 @llvm.umin.i32(i32 %42, i32 %12)
  %44 = lshr i32 %43, 1
  %45 = sub i32 %33, %31
  %46 = icmp ugt i32 %44, %45
  %47 = shl i32 %45, 1
  %48 = lshr i32 %31, 1
  %49 = icmp ult i32 %44, %48
  %50 = select i1 %49, i32 %31, i32 %43
  %51 = select i1 %46, i32 %47, i32 %50
  %52 = xor i32 %51, -1
  %53 = and i32 %52, %12
  %54 = load ptr, ptr %13, align 4
  %55 = load i32, ptr %5, align 4
  %56 = load i8, ptr %16, align 4
  %57 = zext i8 %56 to i32
  %58 = add i32 %55, 16
  %59 = add i32 %58, %57
  %60 = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef %59, i32 noundef %12, i32 noundef %53, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %9
  %63 = call fastcc i32 @update_config(ptr noundef %5)
  br label %64

64:                                               ; preds = %62, %9, %2
  %65 = phi i32 [ %63, %62 ], [ -22, %2 ], [ %60, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_determine_floor_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @_freq_tbl_determine_rate(ptr noundef %0, ptr noundef %4, ptr noundef %1, i32 noundef 0)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_set_floor_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @qcom_find_freq_floor(ptr noundef %6, i32 noundef %1) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @__clk_rcg2_configure(ptr noundef %4, ptr noundef nonnull %7) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @update_config(ptr noundef %4) #9
  br label %14

14:                                               ; preds = %12, %9, %3
  %15 = phi i32 [ -22, %3 ], [ %13, %12 ], [ %10, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_set_floor_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @qcom_find_freq_floor(ptr noundef %7, i32 noundef %1) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @__clk_rcg2_configure(ptr noundef %5, ptr noundef nonnull %8) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @update_config(ptr noundef %5) #9
  br label %15

15:                                               ; preds = %13, %10, %4
  %16 = phi i32 [ -22, %4 ], [ %14, %13 ], [ %11, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_edp_pixel_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -11
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nsw i32 -1, %10
  %12 = xor i32 %11, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %13 = getelementptr i8, ptr %0, i32 -8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.freq_tbl, ptr %7, i32 0, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = tail call i32 @qcom_find_src_index(ptr noundef %0, ptr noundef %14, i8 noundef zeroext %16) #9
  %18 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %17) #9
  %19 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %18, ptr %19, align 4
  %20 = tail call i32 @clk_hw_get_rate(ptr noundef %18) #9
  %21 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  %22 = icmp eq i32 %20, 810000000
  %23 = select i1 %22, ptr @frac_table_810m, ptr @frac_table_675m
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %81, label %26

26:                                               ; preds = %77, %2
  %27 = phi i32 [ %79, %77 ], [ %24, %2 ]
  %28 = phi ptr [ %78, %77 ], [ %23, %2 ]
  %29 = load i32, ptr %1, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.frac_entry, ptr %28, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul nsw i64 %33, %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %35 = call i64 @div_s64_rem(i64 noundef %34, i32 noundef %27, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %36 = load i32, ptr %21, align 4
  %37 = zext i32 %36 to i64
  %38 = add i64 %35, -100000
  %39 = icmp sgt i64 %38, %37
  %40 = add i64 %35, 100000
  %41 = icmp slt i64 %40, %37
  %42 = or i1 %39, %41
  br i1 %42, label %77, label %43

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.frac_entry, ptr %28, i32 0, i32 1
  %45 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %5, align 4
  %48 = add i32 %47, 4
  %49 = call i32 @regmap_read(ptr noundef %46, i32 noundef %48, ptr noundef nonnull %4) #9
  %50 = load i32, ptr %4, align 4
  %51 = and i32 %50, %12
  %52 = load i32, ptr %21, align 4
  %53 = load i32, ptr %28, align 4
  %54 = load i32, ptr %44, align 4
  %55 = icmp eq i32 %54, 0
  %56 = icmp eq i32 %51, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %43
  %58 = shl i32 %52, 1
  %59 = add i32 %51, 1
  %60 = udiv i32 %58, %59
  br label %61

61:                                               ; preds = %57, %43
  %62 = phi i32 [ %60, %57 ], [ %52, %43 ]
  br i1 %55, label %75, label %63

63:                                               ; preds = %61
  %64 = zext i32 %62 to i64
  %65 = zext i32 %53 to i64
  %66 = mul nuw i64 %64, %65
  %67 = icmp ult i64 %66, 4294967296
  br i1 %67, label %68, label %71, !prof !9

68:                                               ; preds = %63
  %69 = trunc i64 %66 to i32
  %70 = udiv i32 %69, %54
  br label %75

71:                                               ; preds = %63
  %72 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %54, i64 %66) #10, !srcloc !10
  %73 = extractvalue { i64, i64 } %72, 1
  %74 = trunc i64 %73 to i32
  br label %75

75:                                               ; preds = %71, %68, %61
  %76 = phi i32 [ %62, %61 ], [ %70, %68 ], [ %74, %71 ]
  store i32 %76, ptr %1, align 4
  br label %81

77:                                               ; preds = %26
  %78 = getelementptr %struct.frac_entry, ptr %28, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %26

81:                                               ; preds = %77, %75, %2
  %82 = phi i32 [ 0, %75 ], [ -22, %2 ], [ -22, %77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_edp_pixel_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.freq_tbl, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = load ptr, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef align 4 dereferenceable(12) %9, i32 12, i1 false)
  %10 = zext i32 %2 to i64
  %11 = getelementptr i8, ptr %0, i32 -11
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nsw i32 -1, %13
  %15 = xor i32 %14, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  %16 = icmp eq i32 %2, 810000000
  %17 = select i1 %16, ptr @frac_table_810m, ptr @frac_table_675m
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %3
  %21 = zext i32 %1 to i64
  br label %22

22:                                               ; preds = %56, %20
  %23 = phi i32 [ %18, %20 ], [ %58, %56 ]
  %24 = phi ptr [ %17, %20 ], [ %57, %56 ]
  %25 = getelementptr inbounds %struct.frac_entry, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %29 = call i64 @div_s64_rem(i64 noundef %28, i32 noundef %23, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %30 = add i64 %29, -100000
  %31 = icmp sgt i64 %30, %10
  %32 = add i64 %29, 100000
  %33 = icmp slt i64 %32, %10
  %34 = or i1 %31, %33
  br i1 %34, label %56, label %35

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.frac_entry, ptr %24, i32 0, i32 1
  %37 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %7, align 4
  %40 = add i32 %39, 4
  %41 = call i32 @regmap_read(ptr noundef %38, i32 noundef %40, ptr noundef nonnull %6) #9
  %42 = load i32, ptr %6, align 4
  %43 = getelementptr inbounds %struct.freq_tbl, ptr %5, i32 0, i32 2
  %44 = and i32 %42, %15
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %43, align 1
  %46 = load i32, ptr %24, align 4
  %47 = trunc i32 %46 to i16
  %48 = getelementptr inbounds %struct.freq_tbl, ptr %5, i32 0, i32 3
  store i16 %47, ptr %48, align 2
  %49 = load i32, ptr %36, align 4
  %50 = trunc i32 %49 to i16
  %51 = getelementptr inbounds %struct.freq_tbl, ptr %5, i32 0, i32 4
  store i16 %50, ptr %51, align 4
  %52 = call fastcc i32 @__clk_rcg2_configure(ptr noundef %7, ptr noundef nonnull %5) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %35
  %55 = call fastcc i32 @update_config(ptr noundef %7) #9
  br label %60

56:                                               ; preds = %22
  %57 = getelementptr %struct.frac_entry, ptr %24, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %22

60:                                               ; preds = %56, %54, %35, %3
  %61 = phi i32 [ %55, %54 ], [ %52, %35 ], [ -22, %3 ], [ -22, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_edp_pixel_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = tail call i32 @clk_edp_pixel_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_byte_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = tail call i32 @qcom_find_src_index(ptr noundef %0, ptr noundef %6, i8 noundef zeroext %8) #9
  %10 = load i32, ptr %1, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %0, i32 -11
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nsw i32 -1, %15
  %17 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %9) #9
  %18 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %17, ptr %18, align 4
  %19 = load i32, ptr %1, align 4
  %20 = tail call i32 @clk_hw_round_rate(ptr noundef %17, i32 noundef %19) #9
  %21 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  %22 = shl i32 %20, 1
  %23 = load i32, ptr %1, align 4
  %24 = add i32 %22, -1
  %25 = add i32 %24, %23
  %26 = udiv i32 %25, %23
  %27 = sub i32 0, %26
  %28 = tail call i32 @llvm.umax.i32(i32 %16, i32 %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %33, label %30

30:                                               ; preds = %12
  %31 = sub i32 0, %28
  %32 = udiv i32 %22, %31
  br label %33

33:                                               ; preds = %30, %12
  %34 = phi i32 [ %32, %30 ], [ %20, %12 ]
  store i32 %34, ptr %1, align 4
  br label %35

35:                                               ; preds = %33, %2
  %36 = phi i32 [ 0, %33 ], [ -22, %2 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_byte_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.freq_tbl, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef align 4 dereferenceable(12) %7, i32 12, i1 false)
  %8 = getelementptr i8, ptr %0, i32 -11
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nsw i32 -1, %10
  %12 = shl i32 %2, 1
  %13 = add i32 %1, -1
  %14 = add i32 %13, %12
  %15 = udiv i32 %14, %1
  %16 = sub i32 0, %15
  %17 = tail call i32 @llvm.umax.i32(i32 %11, i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = xor i8 %18, -1
  %20 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 2
  store i8 %19, ptr %20, align 1
  %21 = call fastcc i32 @__clk_rcg2_configure(ptr noundef %5, ptr noundef nonnull %4) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = tail call fastcc i32 @update_config(ptr noundef %5) #9
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi i32 [ %24, %23 ], [ %21, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_byte_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = alloca %struct.freq_tbl, align 4
  %6 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef align 4 dereferenceable(12) %8, i32 12, i1 false) #9
  %9 = getelementptr i8, ptr %0, i32 -11
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nsw i32 -1, %11
  %13 = shl i32 %2, 1
  %14 = add i32 %1, -1
  %15 = add i32 %14, %13
  %16 = udiv i32 %15, %1
  %17 = sub i32 0, %16
  %18 = tail call i32 @llvm.umax.i32(i32 %12, i32 %17) #9
  %19 = trunc i32 %18 to i8
  %20 = xor i8 %19, -1
  %21 = getelementptr inbounds %struct.freq_tbl, ptr %5, i32 0, i32 2
  store i8 %20, ptr %21, align 1
  %22 = call fastcc i32 @__clk_rcg2_configure(ptr noundef %6, ptr noundef nonnull %5) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = tail call fastcc i32 @update_config(ptr noundef %6) #9
  br label %26

26:                                               ; preds = %24, %4
  %27 = phi i32 [ %25, %24 ], [ %22, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_byte2_determine_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -11
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nsw i32 -1, %8
  %10 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_hw_round_rate(ptr noundef %11, i32 noundef %3) #9
  %13 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %12, ptr %13, align 4
  %14 = shl i32 %12, 1
  %15 = add i32 %3, -1
  %16 = add i32 %15, %14
  %17 = udiv i32 %16, %3
  %18 = sub i32 0, %17
  %19 = tail call i32 @llvm.umax.i32(i32 %9, i32 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = sub i32 0, %19
  %23 = udiv i32 %14, %22
  br label %24

24:                                               ; preds = %21, %5
  %25 = phi i32 [ %23, %21 ], [ %12, %5 ]
  store i32 %25, ptr %1, align 4
  br label %26

26:                                               ; preds = %24, %2
  %27 = phi i32 [ 0, %24 ], [ -22, %2 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_byte2_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.freq_tbl, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false)
  %7 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #9
  %8 = getelementptr i8, ptr %0, i32 -11
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nsw i32 -1, %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %12 = shl i32 %2, 1
  %13 = add i32 %1, -1
  %14 = add i32 %13, %12
  %15 = udiv i32 %14, %1
  %16 = sub i32 0, %15
  %17 = tail call i32 @llvm.umax.i32(i32 %11, i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = xor i8 %18, -1
  %20 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 2
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %6, align 4
  %24 = add i32 %23, 4
  %25 = call i32 @regmap_read(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %5) #9
  %26 = load i32, ptr %5, align 4
  %27 = lshr i32 %26, 8
  %28 = and i32 %27, 7
  store i32 %28, ptr %5, align 4
  %29 = icmp sgt i32 %7, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %3
  %31 = getelementptr i8, ptr %0, i32 -8
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %47, %30
  %34 = phi i32 [ 0, %30 ], [ %48, %47 ]
  %35 = getelementptr %struct.parent_map, ptr %32, i32 %34, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %28, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = getelementptr %struct.parent_map, ptr %32, i32 %34
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 1
  store i8 %41, ptr %42, align 4
  %43 = call fastcc i32 @__clk_rcg2_configure(ptr noundef %6, ptr noundef nonnull %4) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = call fastcc i32 @update_config(ptr noundef %6) #9
  br label %50

47:                                               ; preds = %33
  %48 = add nuw nsw i32 %34, 1
  %49 = icmp eq i32 %48, %7
  br i1 %49, label %50, label %33

50:                                               ; preds = %47, %45, %39, %3
  %51 = phi i32 [ %46, %45 ], [ %43, %39 ], [ -22, %3 ], [ -22, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_byte2_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = tail call i32 @clk_byte2_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pixel_determine_rate(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %1, align 4
  %5 = shl i32 %4, 3
  %6 = udiv i32 %5, 3
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i32 @clk_hw_round_rate(ptr noundef %7, i32 noundef %6) #9
  %9 = add nsw i32 %6, -100000
  %10 = icmp ult i32 %8, %9
  %11 = add nuw nsw i32 %6, 100000
  %12 = icmp ugt i32 %8, %11
  %13 = or i1 %10, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %45, %34, %23, %2
  %15 = phi ptr [ @frac_table_pixel, %2 ], [ getelementptr inbounds ([5 x %struct.frac_entry], ptr @frac_table_pixel, i32 0, i32 1), %23 ], [ getelementptr inbounds ([5 x %struct.frac_entry], ptr @frac_table_pixel, i32 0, i32 2), %34 ], [ getelementptr inbounds ([5 x %struct.frac_entry], ptr @frac_table_pixel, i32 0, i32 3), %45 ]
  %16 = phi i32 [ %8, %2 ], [ %28, %23 ], [ %39, %34 ], [ %48, %45 ]
  %17 = getelementptr inbounds %struct.frac_entry, ptr %15, i32 0, i32 1
  %18 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %16, ptr %18, align 4
  %19 = load i32, ptr %15, align 4
  %20 = mul i32 %19, %16
  %21 = load i32, ptr %17, align 4
  %22 = udiv i32 %20, %21
  store i32 %22, ptr %1, align 4
  br label %54

23:                                               ; preds = %2
  %24 = load i32, ptr %1, align 4
  %25 = mul i32 %24, 9
  %26 = lshr i32 %25, 1
  %27 = load ptr, ptr %3, align 4
  %28 = tail call i32 @clk_hw_round_rate(ptr noundef %27, i32 noundef %26) #9
  %29 = add nsw i32 %26, -100000
  %30 = icmp ult i32 %28, %29
  %31 = add nuw i32 %26, 100000
  %32 = icmp ugt i32 %28, %31
  %33 = or i1 %30, %32
  br i1 %33, label %34, label %14

34:                                               ; preds = %23
  %35 = load i32, ptr %1, align 4
  %36 = mul i32 %35, 9
  %37 = lshr i32 %36, 2
  %38 = load ptr, ptr %3, align 4
  %39 = tail call i32 @clk_hw_round_rate(ptr noundef %38, i32 noundef %37) #9
  %40 = add nsw i32 %37, -100000
  %41 = icmp ult i32 %39, %40
  %42 = add nuw nsw i32 %37, 100000
  %43 = icmp ugt i32 %39, %42
  %44 = or i1 %41, %43
  br i1 %44, label %45, label %14

45:                                               ; preds = %34
  %46 = load i32, ptr %1, align 4
  %47 = load ptr, ptr %3, align 4
  %48 = tail call i32 @clk_hw_round_rate(ptr noundef %47, i32 noundef %46) #9
  %49 = add i32 %46, -100000
  %50 = icmp ult i32 %48, %49
  %51 = add i32 %46, 100000
  %52 = icmp ugt i32 %48, %51
  %53 = or i1 %50, %52
  br i1 %53, label %54, label %14

54:                                               ; preds = %45, %14
  %55 = phi i32 [ 0, %14 ], [ -22, %45 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pixel_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.freq_tbl, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false)
  %8 = getelementptr i8, ptr %0, i32 -11
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nsw i32 -1, %10
  %12 = xor i32 %11, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  %13 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #9
  %14 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %7, align 4
  %17 = add i32 %16, 4
  %18 = call i32 @regmap_read(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %6) #9
  %19 = load i32, ptr %6, align 4
  %20 = lshr i32 %19, 8
  %21 = and i32 %20, 7
  store i32 %21, ptr %6, align 4
  %22 = icmp sgt i32 %13, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %3
  %24 = getelementptr i8, ptr %0, i32 -8
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %36, %23
  %27 = phi i32 [ 0, %23 ], [ %37, %36 ]
  %28 = getelementptr %struct.parent_map, ptr %25, i32 %27, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %21, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = getelementptr %struct.parent_map, ptr %25, i32 %27
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 1
  store i8 %34, ptr %35, align 4
  br label %39

36:                                               ; preds = %26
  %37 = add nuw nsw i32 %27, 1
  %38 = icmp eq i32 %37, %13
  br i1 %38, label %39, label %26

39:                                               ; preds = %36, %32, %3
  %40 = shl i32 %1, 3
  %41 = udiv i32 %40, 3
  %42 = add nsw i32 %41, -100000
  %43 = icmp ugt i32 %42, %2
  %44 = add nuw nsw i32 %41, 100000
  %45 = icmp ult i32 %44, %2
  %46 = or i1 %43, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %83, %76, %68, %39
  %48 = phi ptr [ @frac_table_pixel, %39 ], [ getelementptr inbounds ([5 x %struct.frac_entry], ptr @frac_table_pixel, i32 0, i32 1), %68 ], [ getelementptr inbounds ([5 x %struct.frac_entry], ptr @frac_table_pixel, i32 0, i32 2), %76 ], [ getelementptr inbounds ([5 x %struct.frac_entry], ptr @frac_table_pixel, i32 0, i32 3), %83 ]
  %49 = getelementptr inbounds %struct.frac_entry, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %14, align 4
  %51 = load i32, ptr %7, align 4
  %52 = add i32 %51, 4
  %53 = call i32 @regmap_read(ptr noundef %50, i32 noundef %52, ptr noundef nonnull %5) #9
  %54 = load i32, ptr %5, align 4
  %55 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 2
  %56 = and i32 %54, %12
  %57 = trunc i32 %56 to i8
  store i8 %57, ptr %55, align 1
  %58 = load i32, ptr %48, align 4
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 3
  store i16 %59, ptr %60, align 2
  %61 = load i32, ptr %49, align 4
  %62 = trunc i32 %61 to i16
  %63 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 4
  store i16 %62, ptr %63, align 4
  %64 = call fastcc i32 @__clk_rcg2_configure(ptr noundef %7, ptr noundef nonnull %4) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %47
  %67 = call fastcc i32 @update_config(ptr noundef %7) #9
  br label %89

68:                                               ; preds = %39
  %69 = mul i32 %1, 9
  %70 = lshr i32 %69, 1
  %71 = add nsw i32 %70, -100000
  %72 = icmp ugt i32 %71, %2
  %73 = add nuw i32 %70, 100000
  %74 = icmp ult i32 %73, %2
  %75 = or i1 %72, %74
  br i1 %75, label %76, label %47

76:                                               ; preds = %68
  %77 = lshr i32 %69, 2
  %78 = add nsw i32 %77, -100000
  %79 = icmp ugt i32 %78, %2
  %80 = add nuw nsw i32 %77, 100000
  %81 = icmp ult i32 %80, %2
  %82 = or i1 %79, %81
  br i1 %82, label %83, label %47

83:                                               ; preds = %76
  %84 = add i32 %1, -100000
  %85 = icmp ugt i32 %84, %2
  %86 = add i32 %1, 100000
  %87 = icmp ult i32 %86, %2
  %88 = or i1 %85, %87
  br i1 %88, label %89, label %47

89:                                               ; preds = %83, %66, %47
  %90 = phi i32 [ %67, %66 ], [ %64, %47 ], [ -22, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pixel_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = tail call i32 @clk_pixel_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_gfx3d_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.clk_rate_request, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 16, i1 false)
  %5 = getelementptr i8, ptr %0, i32 -20
  %6 = load i8, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr ptr, ptr %8, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr ptr, ptr %8, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %9, null
  %15 = icmp eq ptr %11, null
  %16 = select i1 %14, i1 true, i1 %15
  %17 = icmp eq ptr %13, null
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %19, label %20, !prof !11

19:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 826, i32 noundef 9, ptr noundef null) #9
  br label %57

20:                                               ; preds = %2
  %21 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef 0) #9
  %22 = load i32, ptr %1, align 4
  %23 = tail call i32 @clk_hw_get_rate(ptr noundef %21) #9
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %21, ptr %26, align 4
  br label %57

27:                                               ; preds = %20
  %28 = icmp eq i8 %6, 0
  %29 = select i1 %28, i8 1, i8 %6
  %30 = load i32, ptr %1, align 4
  %31 = zext i8 %29 to i32
  %32 = mul i32 %30, %31
  store i32 %32, ptr %3, align 4
  %33 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %9) #9
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %32, ptr %36, align 4
  store i32 %32, ptr %1, align 4
  %37 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %9, ptr %37, align 4
  br label %57

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %9
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %13) #9
  %44 = icmp eq i32 %43, %32
  %45 = select i1 %44, ptr %13, ptr %11
  br label %49

46:                                               ; preds = %38
  %47 = icmp eq ptr %40, %13
  %48 = select i1 %47, ptr %11, ptr %13
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi ptr [ %45, %42 ], [ %48, %46 ]
  store ptr %50, ptr %39, align 4
  %51 = call i32 @__clk_determine_rate(ptr noundef nonnull %50, ptr noundef nonnull %3) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, ptr %3, align 4
  %55 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %54, ptr %55, align 4
  %56 = udiv i32 %54, %31
  store i32 %56, ptr %1, align 4
  br label %57

57:                                               ; preds = %53, %49, %35, %25, %19
  %58 = phi i32 [ -22, %19 ], [ 0, %25 ], [ 0, %35 ], [ 0, %53 ], [ %51, %49 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  ret i32 %58
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @clk_gfx3d_set_rate(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #1 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_gfx3d_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -20
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = load ptr, ptr %7, align 4
  %9 = zext i8 %3 to i32
  %10 = getelementptr %struct.parent_map, ptr %8, i32 %9, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = load i8, ptr %5, align 4
  %15 = icmp ugt i8 %14, 1
  %16 = zext i8 %14 to i32
  %17 = shl nuw nsw i32 %16, 1
  %18 = add nsw i32 %17, -1
  %19 = select i1 %15, i32 %18, i32 0
  %20 = or i32 %19, %13
  %21 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %6, align 4
  %24 = add i32 %23, 4
  %25 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef %24, i32 noundef %20) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = tail call fastcc i32 @update_config(ptr noundef %6)
  br label %29

29:                                               ; preds = %27, %4
  %30 = phi i32 [ %28, %27 ], [ %25, %4 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_shared_enable(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @clk_rcg2_set_force_enable(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = tail call fastcc i32 @update_config(ptr noundef %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %5, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %11, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i32 [ %12, %8 ], [ %2, %1 ], [ %6, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_rcg2_shared_disable(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = add i32 %6, 4
  %8 = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %2) #9
  %9 = call fastcc i32 @clk_rcg2_set_force_enable(ptr noundef %0)
  %10 = load ptr, ptr %4, align 4
  %11 = load i32, ptr %3, align 4
  %12 = add i32 %11, 4
  %13 = getelementptr i8, ptr %0, i32 -10
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = call i32 @regmap_write(ptr noundef %10, i32 noundef %12, i32 noundef %16) #9
  %18 = call fastcc i32 @update_config(ptr noundef %3)
  %19 = load ptr, ptr %4, align 4
  %20 = load i32, ptr %3, align 4
  %21 = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %20, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %22 = load ptr, ptr %4, align 4
  %23 = load i32, ptr %3, align 4
  %24 = add i32 %23, 4
  %25 = load i32, ptr %2, align 4
  %26 = call i32 @regmap_write(ptr noundef %22, i32 noundef %24, i32 noundef %25) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_shared_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @qcom_find_freq(ptr noundef %6, i32 noundef %1) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call zeroext i1 @__clk_is_enabled(ptr noundef %11) #9
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @__clk_rcg2_configure(ptr noundef %4, ptr noundef nonnull %7)
  br label %29

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @clk_rcg2_set_force_enable(ptr noundef %0) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = tail call fastcc i32 @__clk_rcg2_configure(ptr noundef %4, ptr noundef nonnull %7) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = tail call fastcc i32 @update_config(ptr noundef %4) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %4, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %27, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %29

29:                                               ; preds = %24, %21, %18, %15, %13, %3
  %30 = phi i32 [ %14, %13 ], [ -22, %3 ], [ %28, %24 ], [ %16, %15 ], [ %22, %21 ], [ %19, %18 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_shared_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = tail call i32 @clk_rcg2_shared_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @qcom_cc_register_rcg_dfs(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %27, %3
  %7 = phi i32 [ %28, %27 ], [ 0, %3 ]
  %8 = getelementptr %struct.clk_rcg_dfs_data, ptr %1, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.clk_rcg_dfs_data, ptr %1, i32 %7, i32 1
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %12 = load i32, ptr %9, align 4
  %13 = add i32 %12, 20
  %14 = call i32 @regmap_read(ptr noundef %0, i32 noundef %13, ptr noundef nonnull %4) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %6
  %17 = load i32, ptr %4, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, 64
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %11, i32 0, i32 1
  store ptr @clk_rcg2_dfs_ops, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_rcg2, ptr %9, i32 0, i32 5
  store ptr null, ptr %25, align 4
  br label %27

26:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %30

27:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %28 = add nuw i32 %7, 1
  %29 = icmp eq i32 %28, %2
  br i1 %29, label %30, label %6

30:                                               ; preds = %27, %26, %3
  %31 = phi i32 [ -22, %26 ], [ 0, %3 ], [ 0, %27 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_dp_determine_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr i8, ptr %0, i32 -12
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = sub nsw i32 32, %10
  %12 = lshr i32 -1, %11
  call void @rational_best_approximation(i32 noundef %6, i32 noundef %7, i32 noundef %12, i32 noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %13 = load i32, ptr %3, align 4
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, ptr %5, align 4
  %20 = mul i32 %19, %13
  %21 = udiv i32 %20, %15
  store i32 %21, ptr %1, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi i32 [ 0, %18 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_dp_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.freq_tbl, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false)
  %9 = getelementptr i8, ptr %0, i32 -11
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nsw i32 -1, %11
  %13 = xor i32 %12, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %14 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  %15 = getelementptr i8, ptr %0, i32 -12
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = sub nsw i32 32, %17
  %19 = lshr i32 -1, %18
  call void @rational_best_approximation(i32 noundef %2, i32 noundef %1, i32 noundef %19, i32 noundef %19, ptr noundef nonnull %7, ptr noundef nonnull %6) #9
  %20 = load i32, ptr %6, align 4
  %21 = icmp ne i32 %20, 0
  %22 = load i32, ptr %7, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %68

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %8, align 4
  %29 = add i32 %28, 4
  %30 = call i32 @regmap_read(ptr noundef %27, i32 noundef %29, ptr noundef nonnull %5) #9
  %31 = load i32, ptr %5, align 4
  %32 = lshr i32 %31, 8
  %33 = and i32 %32, 7
  store i32 %33, ptr %5, align 4
  %34 = icmp sgt i32 %14, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %25
  %36 = getelementptr i8, ptr %0, i32 -8
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %48, %35
  %39 = phi i32 [ 0, %35 ], [ %49, %48 ]
  %40 = getelementptr %struct.parent_map, ptr %37, i32 %39, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %33, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = getelementptr %struct.parent_map, ptr %37, i32 %39
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 1
  store i8 %46, ptr %47, align 4
  br label %51

48:                                               ; preds = %38
  %49 = add nuw nsw i32 %39, 1
  %50 = icmp eq i32 %49, %14
  br i1 %50, label %51, label %38

51:                                               ; preds = %48, %44, %25
  %52 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 2
  %53 = and i32 %31, %13
  %54 = trunc i32 %53 to i8
  store i8 %54, ptr %52, align 1
  %55 = load i32, ptr %6, align 4
  %56 = load i32, ptr %7, align 4
  %57 = icmp eq i32 %55, %56
  %58 = trunc i32 %55 to i16
  %59 = trunc i32 %56 to i16
  %60 = select i1 %57, i16 0, i16 %58
  %61 = select i1 %57, i16 0, i16 %59
  %62 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 3
  store i16 %60, ptr %62, align 2
  %63 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 4
  store i16 %61, ptr %63, align 4
  %64 = call fastcc i32 @__clk_rcg2_configure(ptr noundef %8, ptr noundef nonnull %4) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = call fastcc i32 @update_config(ptr noundef %8) #9
  br label %68

68:                                               ; preds = %66, %51, %3
  %69 = phi i32 [ -22, %3 ], [ %67, %66 ], [ %64, %51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_dp_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = tail call i32 @clk_rcg2_dp_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_freq_tbl_determine_rate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %2, align 4
  switch i32 %3, label %69 [
    i32 0, label %6
    i32 1, label %8
  ]

6:                                                ; preds = %4
  %7 = tail call ptr @qcom_find_freq_floor(ptr noundef %1, i32 noundef %5) #9
  br label %10

8:                                                ; preds = %4
  %9 = tail call ptr @qcom_find_freq(ptr noundef %1, i32 noundef %5) #9
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %69, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %0, i32 -8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.freq_tbl, ptr %11, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = tail call i32 @qcom_find_src_index(ptr noundef %0, ptr noundef %15, i8 noundef zeroext %17) #9
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %69, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @clk_hw_get_flags(ptr noundef %0) #9
  %22 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %18) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %69, label %24

24:                                               ; preds = %20
  %25 = and i32 %21, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %62, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %11, align 4
  %29 = getelementptr inbounds %struct.freq_tbl, ptr %11, i32 0, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = icmp eq i32 %28, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = load i32, ptr %2, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %28, %32 ], [ %35, %34 ]
  %38 = lshr i32 %37, 1
  %39 = zext i8 %30 to i32
  %40 = add nuw nsw i32 %39, 1
  %41 = mul i32 %38, %40
  br label %42

42:                                               ; preds = %36, %27
  %43 = phi i32 [ %41, %36 ], [ %28, %27 ]
  %44 = getelementptr inbounds %struct.freq_tbl, ptr %11, i32 0, i32 4
  %45 = load i16, ptr %44, align 4
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %42
  %48 = zext i32 %43 to i64
  %49 = zext i16 %45 to i64
  %50 = mul nuw nsw i64 %49, %48
  %51 = getelementptr inbounds %struct.freq_tbl, ptr %11, i32 0, i32 3
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp ult i64 %50, 4294967296
  br i1 %54, label %55, label %58, !prof !9

55:                                               ; preds = %47
  %56 = trunc i64 %50 to i32
  %57 = udiv i32 %56, %53
  br label %64

58:                                               ; preds = %47
  %59 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %53, i64 %50) #10, !srcloc !10
  %60 = extractvalue { i64, i64 } %59, 1
  %61 = trunc i64 %60 to i32
  br label %64

62:                                               ; preds = %24
  %63 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %22) #9
  br label %64

64:                                               ; preds = %62, %58, %55, %42
  %65 = phi i32 [ %43, %42 ], [ %63, %62 ], [ %57, %55 ], [ %61, %58 ]
  %66 = getelementptr inbounds %struct.clk_rate_request, ptr %2, i32 0, i32 4
  store ptr %22, ptr %66, align 4
  %67 = getelementptr inbounds %struct.clk_rate_request, ptr %2, i32 0, i32 3
  store i32 %65, ptr %67, align 4
  %68 = load i32, ptr %11, align 4
  store i32 %68, ptr %2, align 4
  br label %69

69:                                               ; preds = %64, %20, %13, %10, %4
  %70 = phi i32 [ 0, %64 ], [ -22, %4 ], [ -22, %10 ], [ %18, %13 ], [ -22, %20 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_find_freq_floor(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_find_freq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_find_src_index(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @update_config(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_rcg2, ptr %0, i32 0, i32 6
  %4 = tail call ptr @clk_hw_get_name(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.clk_rcg2, ptr %0, i32 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %0, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %7, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %20, %1
  %11 = phi i32 [ %22, %20 ], [ 500, %1 ]
  %12 = load ptr, ptr %5, align 4
  %13 = load i32, ptr %0, align 4
  %14 = call i32 @regmap_read(ptr noundef %12, i32 noundef %13, ptr noundef nonnull %2) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load i32, ptr %2, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748) #9
  %22 = add nsw i32 %11, -1
  %23 = icmp ugt i32 %11, 1
  br i1 %23, label %10, label %24

24:                                               ; preds = %20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %4) #9
  br label %25

25:                                               ; preds = %24, %16, %10, %1
  %26 = phi i32 [ -16, %24 ], [ %8, %1 ], [ 0, %16 ], [ %14, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__clk_rcg2_configure(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.clk_rcg2, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.clk_rcg2, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.freq_tbl, ptr %1, i32 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = tail call i32 @qcom_find_src_index(ptr noundef %3, ptr noundef %5, i8 noundef zeroext %7) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %103, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.clk_rcg2, ptr %0, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %65, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.freq_tbl, ptr %1, i32 0, i32 4
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %65, label %19

19:                                               ; preds = %15
  %20 = shl nsw i32 -1, %13
  %21 = xor i32 %20, -1
  %22 = getelementptr inbounds %struct.clk_rcg2, ptr %0, i32 0, i32 6, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %0, align 4
  %25 = getelementptr inbounds %struct.clk_rcg2, ptr %0, i32 0, i32 7
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i32
  %28 = add i32 %24, 8
  %29 = add i32 %28, %27
  %30 = getelementptr inbounds %struct.freq_tbl, ptr %1, i32 0, i32 3
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %29, i32 noundef %21, i32 noundef %32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %103

35:                                               ; preds = %19
  %36 = load ptr, ptr %22, align 4
  %37 = load i32, ptr %0, align 4
  %38 = load i8, ptr %25, align 4
  %39 = zext i8 %38 to i32
  %40 = add i32 %37, 12
  %41 = add i32 %40, %39
  %42 = load i16, ptr %16, align 4
  %43 = zext i16 %42 to i32
  %44 = load i16, ptr %30, align 2
  %45 = zext i16 %44 to i32
  %46 = xor i32 %43, -1
  %47 = add nsw i32 %45, %46
  %48 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %41, i32 noundef %21, i32 noundef %47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %103

50:                                               ; preds = %35
  %51 = load ptr, ptr %22, align 4
  %52 = load i32, ptr %0, align 4
  %53 = load i8, ptr %25, align 4
  %54 = zext i8 %53 to i32
  %55 = add i32 %52, 16
  %56 = add i32 %55, %54
  %57 = load i16, ptr %16, align 4
  %58 = zext i16 %57 to i32
  %59 = xor i32 %58, -1
  %60 = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef %56, i32 noundef %21, i32 noundef %59, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %103

62:                                               ; preds = %50
  %63 = load i8, ptr %11, align 4
  %64 = icmp eq i8 %63, 0
  br label %65

65:                                               ; preds = %62, %15, %10
  %66 = phi i1 [ %64, %62 ], [ false, %15 ], [ true, %10 ]
  %67 = getelementptr inbounds %struct.clk_rcg2, ptr %0, i32 0, i32 2
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl nsw i32 -1, %69
  %71 = xor i32 %70, -1
  %72 = or i32 %71, 1062656
  %73 = getelementptr inbounds %struct.freq_tbl, ptr %1, i32 0, i32 2
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load ptr, ptr %4, align 4
  %77 = getelementptr %struct.parent_map, ptr %76, i32 %8, i32 1
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 8
  %81 = or i32 %80, %75
  br i1 %66, label %92, label %82

82:                                               ; preds = %65
  %83 = getelementptr inbounds %struct.freq_tbl, ptr %1, i32 0, i32 4
  %84 = load i16, ptr %83, align 4
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.freq_tbl, ptr %1, i32 0, i32 3
  %88 = load i16, ptr %87, align 2
  %89 = icmp eq i16 %88, %84
  %90 = or i32 %81, 8192
  %91 = select i1 %89, i32 %81, i32 %90
  br label %92

92:                                               ; preds = %86, %82, %65
  %93 = phi i32 [ %81, %82 ], [ %81, %65 ], [ %91, %86 ]
  %94 = getelementptr inbounds %struct.clk_rcg2, ptr %0, i32 0, i32 6, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = load i32, ptr %0, align 4
  %97 = getelementptr inbounds %struct.clk_rcg2, ptr %0, i32 0, i32 7
  %98 = load i8, ptr %97, align 4
  %99 = zext i8 %98 to i32
  %100 = add i32 %96, 4
  %101 = add i32 %100, %99
  %102 = tail call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef %101, i32 noundef %72, i32 noundef %93, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %103

103:                                              ; preds = %92, %50, %35, %19, %2
  %104 = phi i32 [ %102, %92 ], [ %8, %2 ], [ %33, %19 ], [ %48, %35 ], [ %60, %50 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_determine_rate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_rcg2_set_force_enable(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = tail call ptr @clk_hw_get_name(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %7, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %21, %1
  %11 = phi i32 [ %23, %21 ], [ 500, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %12 = load ptr, ptr %5, align 4
  %13 = load i32, ptr %3, align 4
  %14 = call i32 @regmap_read(ptr noundef %12, i32 noundef %13, ptr noundef nonnull %2) #9
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %2, align 4
  %17 = xor i32 %16, -1
  %18 = lshr i32 %17, 31
  %19 = select i1 %15, i32 %18, i32 %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %10
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748) #9
  %23 = add nsw i32 %11, -1
  %24 = icmp ugt i32 %11, 1
  br i1 %24, label %10, label %25

25:                                               ; preds = %21
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %4) #11
  br label %27

27:                                               ; preds = %25, %10, %1
  %28 = phi i32 [ -110, %25 ], [ %8, %1 ], [ 0, %10 ]
  ret i32 %28
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__clk_is_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_dfs_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %7, align 4
  %11 = add i32 %10, 20
  %12 = call i32 @regmap_read(ptr noundef %9, i32 noundef %11, ptr noundef nonnull %3) #9
  %13 = load i32, ptr %3, align 4
  %14 = lshr i32 %13, 1
  %15 = and i32 %14, 15
  store i32 %15, ptr %3, align 4
  %16 = getelementptr i8, ptr %0, i32 -4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = getelementptr %struct.freq_tbl, ptr %17, i32 %15
  %21 = load i32, ptr %20, align 4
  br label %85

22:                                               ; preds = %2
  %23 = load ptr, ptr %8, align 4
  %24 = load i32, ptr %7, align 4
  %25 = shl nuw nsw i32 %15, 2
  %26 = add nuw nsw i32 %25, 28
  %27 = add i32 %26, %24
  %28 = call i32 @regmap_read(ptr noundef %23, i32 noundef %27, ptr noundef nonnull %4) #9
  %29 = getelementptr i8, ptr %0, i32 -11
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nsw i32 -1, %31
  %33 = xor i32 %32, -1
  %34 = load i32, ptr %4, align 4
  %35 = and i32 %34, %33
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 1, i32 %35
  %38 = and i32 %34, 12288
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %22
  %41 = shl i32 %1, 1
  %42 = add i32 %37, 1
  %43 = udiv i32 %41, %42
  br label %85

44:                                               ; preds = %22
  %45 = getelementptr i8, ptr %0, i32 -12
  %46 = load i8, ptr %45, align 4
  %47 = zext i8 %46 to i32
  %48 = shl nsw i32 -1, %47
  %49 = xor i32 %48, -1
  %50 = load ptr, ptr %8, align 4
  %51 = load i32, ptr %7, align 4
  %52 = load i32, ptr %3, align 4
  %53 = shl i32 %52, 2
  %54 = add i32 %51, 92
  %55 = add i32 %54, %53
  %56 = call i32 @regmap_read(ptr noundef %50, i32 noundef %55, ptr noundef nonnull %5) #9
  %57 = load i32, ptr %5, align 4
  %58 = and i32 %57, %49
  store i32 %58, ptr %5, align 4
  %59 = load ptr, ptr %8, align 4
  %60 = load i32, ptr %7, align 4
  %61 = load i32, ptr %3, align 4
  %62 = shl i32 %61, 2
  %63 = add i32 %60, 156
  %64 = add i32 %63, %62
  %65 = call i32 @regmap_read(ptr noundef %59, i32 noundef %64, ptr noundef nonnull %6) #9
  %66 = load i32, ptr %6, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %67, %49
  %69 = load i32, ptr %5, align 4
  %70 = add i32 %69, %68
  %71 = shl i32 %1, 1
  %72 = add i32 %37, 1
  %73 = udiv i32 %71, %72
  %74 = zext i32 %73 to i64
  %75 = zext i32 %69 to i64
  %76 = mul nuw nsw i64 %74, %75
  %77 = icmp ult i64 %76, 4294967296
  br i1 %77, label %78, label %81, !prof !9

78:                                               ; preds = %44
  %79 = trunc i64 %76 to i32
  %80 = udiv i32 %79, %70
  br label %85

81:                                               ; preds = %44
  %82 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %70, i64 %76) #10, !srcloc !10
  %83 = extractvalue { i64, i64 } %82, 1
  %84 = trunc i64 %83 to i32
  br label %85

85:                                               ; preds = %81, %78, %40, %19
  %86 = phi i32 [ %21, %19 ], [ %80, %78 ], [ %84, %81 ], [ %43, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg2_dfs_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %131

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 -16
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 108) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %126, label %13

13:                                               ; preds = %8
  store ptr %11, ptr %5, align 4
  %14 = getelementptr i8, ptr %0, i32 12
  %15 = getelementptr i8, ptr %0, i32 -11
  %16 = getelementptr i8, ptr %0, i32 -8
  %17 = getelementptr i8, ptr %0, i32 -12
  br label %18

18:                                               ; preds = %122, %13
  %19 = phi i32 [ 0, %13 ], [ %124, %122 ]
  %20 = getelementptr %struct.freq_tbl, ptr %11, i32 %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %21 = load ptr, ptr %14, align 4
  %22 = load i32, ptr %9, align 4
  %23 = shl i32 %19, 2
  %24 = add nuw nsw i32 %23, 28
  %25 = add i32 %24, %22
  %26 = call i32 @regmap_read(ptr noundef %21, i32 noundef %25, ptr noundef nonnull %4) #9
  %27 = load i8, ptr %15, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nsw i32 -1, %28
  %30 = xor i32 %29, -1
  %31 = getelementptr %struct.freq_tbl, ptr %11, i32 %19, i32 2
  store i8 1, ptr %31, align 1
  %32 = load i32, ptr %4, align 4
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %18
  %36 = trunc i32 %33 to i8
  store i8 %36, ptr %31, align 1
  br label %37

37:                                               ; preds = %35, %18
  %38 = lshr i32 %32, 8
  %39 = and i32 %38, 7
  %40 = call i32 @clk_hw_get_num_parents(ptr noundef %0) #9
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = getelementptr %struct.freq_tbl, ptr %11, i32 %19, i32 1
  br label %44

44:                                               ; preds = %57, %42
  %45 = phi i32 [ 0, %42 ], [ %59, %57 ]
  %46 = phi i32 [ 0, %42 ], [ %58, %57 ]
  %47 = load ptr, ptr %16, align 4
  %48 = getelementptr %struct.parent_map, ptr %47, i32 %45, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %39, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = getelementptr %struct.parent_map, ptr %47, i32 %45
  %54 = load i8, ptr %53, align 1
  store i8 %54, ptr %43, align 4
  %55 = call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %45) #9
  %56 = call i32 @clk_hw_get_rate(ptr noundef %55) #9
  br label %57

57:                                               ; preds = %52, %44
  %58 = phi i32 [ %56, %52 ], [ %46, %44 ]
  %59 = add nuw nsw i32 %45, 1
  %60 = icmp eq i32 %59, %40
  br i1 %60, label %61, label %44

61:                                               ; preds = %57, %37
  %62 = phi i32 [ 0, %37 ], [ %58, %57 ]
  %63 = load i32, ptr %4, align 4
  %64 = and i32 %63, 12288
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = getelementptr %struct.freq_tbl, ptr %11, i32 %19, i32 3
  %68 = load i16, ptr %67, align 2
  %69 = getelementptr %struct.freq_tbl, ptr %11, i32 %19, i32 4
  %70 = load i16, ptr %69, align 4
  br label %97

71:                                               ; preds = %61
  %72 = load i8, ptr %17, align 4
  %73 = zext i8 %72 to i32
  %74 = shl nsw i32 -1, %73
  %75 = xor i32 %74, -1
  %76 = load ptr, ptr %14, align 4
  %77 = load i32, ptr %9, align 4
  %78 = add nuw nsw i32 %23, 92
  %79 = add i32 %78, %77
  %80 = call i32 @regmap_read(ptr noundef %76, i32 noundef %79, ptr noundef nonnull %3) #9
  %81 = load i32, ptr %3, align 4
  %82 = and i32 %81, %75
  store i32 %82, ptr %3, align 4
  %83 = trunc i32 %82 to i16
  %84 = getelementptr %struct.freq_tbl, ptr %11, i32 %19, i32 3
  store i16 %83, ptr %84, align 2
  %85 = load ptr, ptr %14, align 4
  %86 = load i32, ptr %9, align 4
  %87 = add nuw nsw i32 %23, 156
  %88 = add i32 %87, %86
  %89 = call i32 @regmap_read(ptr noundef %85, i32 noundef %88, ptr noundef nonnull %3) #9
  %90 = load i32, ptr %3, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %91, %75
  %93 = load i16, ptr %84, align 2
  %94 = trunc i32 %92 to i16
  %95 = add i16 %93, %94
  %96 = getelementptr %struct.freq_tbl, ptr %11, i32 %19, i32 4
  store i16 %95, ptr %96, align 4
  br label %97

97:                                               ; preds = %71, %66
  %98 = phi i16 [ %70, %66 ], [ %95, %71 ]
  %99 = phi i16 [ %68, %66 ], [ %93, %71 ]
  %100 = zext i16 %98 to i32
  %101 = load i8, ptr %31, align 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %97
  %104 = zext i8 %101 to i32
  %105 = shl i32 %62, 1
  %106 = add nuw nsw i32 %104, 1
  %107 = udiv i32 %105, %106
  br label %108

108:                                              ; preds = %103, %97
  %109 = phi i32 [ %107, %103 ], [ %62, %97 ]
  br i1 %65, label %122, label %110

110:                                              ; preds = %108
  %111 = zext i32 %109 to i64
  %112 = zext i16 %99 to i64
  %113 = mul nuw nsw i64 %111, %112
  %114 = icmp ult i64 %113, 4294967296
  br i1 %114, label %115, label %118, !prof !9

115:                                              ; preds = %110
  %116 = trunc i64 %113 to i32
  %117 = udiv i32 %116, %100
  br label %122

118:                                              ; preds = %110
  %119 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %100, i64 %113) #10, !srcloc !10
  %120 = extractvalue { i64, i64 } %119, 1
  %121 = trunc i64 %120 to i32
  br label %122

122:                                              ; preds = %118, %115, %108
  %123 = phi i32 [ %109, %108 ], [ %117, %115 ], [ %121, %118 ]
  store i32 %123, ptr %20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %124 = add nuw nsw i32 %19, 1
  %125 = icmp eq i32 %124, 8
  br i1 %125, label %129, label %18

126:                                              ; preds = %8
  %127 = tail call ptr @clk_hw_get_name(ptr noundef %0) #9
  %128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %127) #11
  br label %134

129:                                              ; preds = %122
  %130 = load ptr, ptr %5, align 4
  br label %131

131:                                              ; preds = %129, %2
  %132 = phi ptr [ %130, %129 ], [ %6, %2 ]
  %133 = call fastcc i32 @_freq_tbl_determine_rate(ptr noundef %0, ptr noundef %132, ptr noundef %1, i32 noundef 1) #9
  br label %134

134:                                              ; preds = %131, %126
  %135 = phi i32 [ %133, %131 ], [ -12, %126 ]
  ret i32 %135
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!10 = !{i64 2148355685, i64 2148355965, i64 2148356299, i64 2148356633}
!11 = !{!"branch_weights", i32 1, i32 2000}
