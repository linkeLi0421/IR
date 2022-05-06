; ModuleID = '/llk/IR/drivers/clk/qcom/clk-rcg.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-rcg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_rcg_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_rcg_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_rcg_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_rcg_bypass_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_rcg_bypass_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_rcg_bypass_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_rcg_bypass2_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_rcg_bypass2_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_rcg_bypass2_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_rcg_pixel_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_rcg_pixel_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_rcg_pixel_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_rcg_esc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_rcg_esc_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_rcg_esc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_rcg_lcc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_rcg_lcc_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_rcg_lcc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_dyn_rcg_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_dyn_rcg_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_dyn_rcg_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.frac_entry = type { i32, i32 }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.parent_map = type { i8, i8 }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.mn = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.pre_div = type { i8, i8 }
%struct.src_sel = type { i8, ptr }
%struct.clk_rcg = type { i32, i32, %struct.mn, %struct.pre_div, %struct.src_sel, ptr, %struct.clk_regmap }
%struct.clk_dyn_rcg = type { [2 x i32], [2 x i32], i32, i8, [2 x %struct.mn], [2 x %struct.pre_div], [2 x %struct.src_sel], ptr, %struct.clk_regmap }

@clk_rcg_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_enable_regmap, ptr @clk_disable_regmap, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg_recalc_rate, ptr null, ptr @clk_rcg_determine_rate, ptr @clk_rcg_set_parent, ptr @clk_rcg_get_parent, ptr @clk_rcg_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_rcg_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_rcg_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_rcg_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_rcg_ops to i32), ptr @__kstrtab_clk_rcg_ops, ptr @__kstrtabns_clk_rcg_ops }, section "___ksymtab_gpl+clk_rcg_ops", align 4
@clk_rcg_bypass_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_enable_regmap, ptr @clk_disable_regmap, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg_recalc_rate, ptr null, ptr @clk_rcg_bypass_determine_rate, ptr @clk_rcg_set_parent, ptr @clk_rcg_get_parent, ptr @clk_rcg_bypass_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_rcg_bypass_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_rcg_bypass_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_rcg_bypass_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_rcg_bypass_ops to i32), ptr @__kstrtab_clk_rcg_bypass_ops, ptr @__kstrtabns_clk_rcg_bypass_ops }, section "___ksymtab_gpl+clk_rcg_bypass_ops", align 4
@clk_rcg_bypass2_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_enable_regmap, ptr @clk_disable_regmap, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg_recalc_rate, ptr null, ptr @clk_rcg_bypass2_determine_rate, ptr @clk_rcg_set_parent, ptr @clk_rcg_get_parent, ptr @clk_rcg_bypass2_set_rate, ptr @clk_rcg_bypass2_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_rcg_bypass2_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_rcg_bypass2_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_rcg_bypass2_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_rcg_bypass2_ops to i32), ptr @__kstrtab_clk_rcg_bypass2_ops, ptr @__kstrtabns_clk_rcg_bypass2_ops }, section "___ksymtab_gpl+clk_rcg_bypass2_ops", align 4
@clk_rcg_pixel_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_enable_regmap, ptr @clk_disable_regmap, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg_recalc_rate, ptr null, ptr @clk_rcg_pixel_determine_rate, ptr @clk_rcg_set_parent, ptr @clk_rcg_get_parent, ptr @clk_rcg_pixel_set_rate, ptr @clk_rcg_pixel_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_rcg_pixel_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_rcg_pixel_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_rcg_pixel_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_rcg_pixel_ops to i32), ptr @__kstrtab_clk_rcg_pixel_ops, ptr @__kstrtabns_clk_rcg_pixel_ops }, section "___ksymtab_gpl+clk_rcg_pixel_ops", align 4
@clk_rcg_esc_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_enable_regmap, ptr @clk_disable_regmap, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg_recalc_rate, ptr null, ptr @clk_rcg_esc_determine_rate, ptr @clk_rcg_set_parent, ptr @clk_rcg_get_parent, ptr @clk_rcg_esc_set_rate, ptr @clk_rcg_esc_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_rcg_esc_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_rcg_esc_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_rcg_esc_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_rcg_esc_ops to i32), ptr @__kstrtab_clk_rcg_esc_ops, ptr @__kstrtabns_clk_rcg_esc_ops }, section "___ksymtab_gpl+clk_rcg_esc_ops", align 4
@clk_rcg_lcc_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg_lcc_enable, ptr @clk_rcg_lcc_disable, ptr null, ptr null, ptr null, ptr null, ptr @clk_rcg_recalc_rate, ptr null, ptr @clk_rcg_determine_rate, ptr @clk_rcg_set_parent, ptr @clk_rcg_get_parent, ptr @clk_rcg_lcc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_rcg_lcc_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_rcg_lcc_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_rcg_lcc_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_rcg_lcc_ops to i32), ptr @__kstrtab_clk_rcg_lcc_ops, ptr @__kstrtabns_clk_rcg_lcc_ops }, section "___ksymtab_gpl+clk_rcg_lcc_ops", align 4
@clk_dyn_rcg_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_enable_regmap, ptr @clk_disable_regmap, ptr @clk_is_enabled_regmap, ptr null, ptr null, ptr null, ptr @clk_dyn_rcg_recalc_rate, ptr null, ptr @clk_dyn_rcg_determine_rate, ptr @clk_dyn_rcg_set_parent, ptr @clk_dyn_rcg_get_parent, ptr @clk_dyn_rcg_set_rate, ptr @clk_dyn_rcg_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_dyn_rcg_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_dyn_rcg_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_dyn_rcg_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_dyn_rcg_ops to i32), ptr @__kstrtab_clk_dyn_rcg_ops, ptr @__kstrtabns_clk_dyn_rcg_ops }, section "___ksymtab_gpl+clk_dyn_rcg_ops", align 4
@pixel_table = internal unnamed_addr constant [4 x %struct.frac_entry] [%struct.frac_entry { i32 1, i32 2 }, %struct.frac_entry { i32 1, i32 3 }, %struct.frac_entry { i32 3, i32 16 }, %struct.frac_entry zeroinitializer], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_clk_dyn_rcg_ops, ptr @__ksymtab_clk_rcg_bypass2_ops, ptr @__ksymtab_clk_rcg_bypass_ops, ptr @__ksymtab_clk_rcg_esc_ops, ptr @__ksymtab_clk_rcg_lcc_ops, ptr @__ksymtab_clk_rcg_ops, ptr @__ksymtab_clk_rcg_pixel_ops], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable_regmap(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable_regmap(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = call i32 @regmap_read(ptr noundef %8, i32 noundef %9, ptr noundef nonnull %3) #4
  %11 = getelementptr i8, ptr %0, i32 -17
  %12 = load i32, ptr %3, align 4
  %13 = load i8, ptr %11, align 1
  %14 = zext i8 %13 to i32
  %15 = lshr i32 %12, %14
  %16 = getelementptr i8, ptr %0, i32 -16
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nsw i32 -1, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %15, %20
  %22 = getelementptr i8, ptr %0, i32 -19
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %63, label %25

25:                                               ; preds = %2
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr i8, ptr %0, i32 -28
  %28 = load i32, ptr %27, align 4
  %29 = call i32 @regmap_read(ptr noundef %26, i32 noundef %28, ptr noundef nonnull %4) #4
  %30 = load i32, ptr %4, align 4
  %31 = getelementptr i8, ptr %0, i32 -20
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = lshr i32 %30, %33
  %35 = load i8, ptr %22, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nsw i32 -1, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %34, %38
  %40 = load i32, ptr %3, align 4
  %41 = xor i32 %40, -1
  %42 = getelementptr i8, ptr %0, i32 -21
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = lshr i32 %41, %44
  %46 = and i32 %45, %38
  %47 = add i32 %46, %39
  %48 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %6, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %25
  %53 = load ptr, ptr %7, align 4
  %54 = call i32 @regmap_read(ptr noundef %53, i32 noundef %49, ptr noundef nonnull %5) #4
  %55 = load i32, ptr %5, align 4
  br label %56

56:                                               ; preds = %52, %25
  %57 = phi i32 [ %55, %52 ], [ %40, %25 ]
  %58 = getelementptr i8, ptr %0, i32 -22
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = lshr i32 %57, %60
  %62 = and i32 %61, 3
  br label %63

63:                                               ; preds = %56, %2
  %64 = phi i32 [ %62, %56 ], [ 0, %2 ]
  %65 = phi i32 [ %39, %56 ], [ 0, %2 ]
  %66 = phi i32 [ %47, %56 ], [ 0, %2 ]
  %67 = icmp eq i32 %21, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = add i32 %21, 1
  %70 = udiv i32 %1, %69
  br label %71

71:                                               ; preds = %68, %63
  %72 = phi i32 [ %70, %68 ], [ %1, %63 ]
  %73 = icmp eq i32 %64, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %71
  %75 = zext i32 %72 to i64
  %76 = zext i32 %65 to i64
  %77 = mul nuw i64 %75, %76
  %78 = icmp ult i64 %77, 4294967296
  br i1 %78, label %79, label %82, !prof !9

79:                                               ; preds = %74
  %80 = trunc i64 %77 to i32
  %81 = udiv i32 %80, %66
  br label %86

82:                                               ; preds = %74
  %83 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %66, i64 %77) #5, !srcloc !10
  %84 = extractvalue { i64, i64 } %83, 1
  %85 = trunc i64 %84 to i32
  br label %86

86:                                               ; preds = %82, %79, %71
  %87 = phi i32 [ %72, %71 ], [ %81, %79 ], [ %85, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc i32 @_freq_tbl_determine_rate(ptr noundef %0, ptr noundef %4, ptr noundef %1, ptr noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #1 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = call i32 @regmap_read(ptr noundef %6, i32 noundef %7, ptr noundef nonnull %3) #4
  %9 = getelementptr i8, ptr %0, i32 -12
  %10 = getelementptr i8, ptr %0, i32 -8
  %11 = load ptr, ptr %10, align 4
  %12 = zext i8 %1 to i32
  %13 = getelementptr %struct.parent_map, ptr %11, i32 %12, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = load i32, ptr %3, align 4
  %16 = load i8, ptr %9, align 4
  %17 = zext i8 %16 to i32
  %18 = shl i32 7, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = zext i8 %14 to i32
  %22 = shl i32 %21, %17
  %23 = or i32 %20, %22
  store i32 %23, ptr %3, align 4
  %24 = load ptr, ptr %5, align 4
  %25 = load i32, ptr %4, align 4
  %26 = call i32 @regmap_write(ptr noundef %24, i32 noundef %25, i32 noundef %23) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_rcg_get_parent(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = call i32 @regmap_read(ptr noundef %6, i32 noundef %7, ptr noundef nonnull %2) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -12
  %12 = load i32, ptr %2, align 4
  %13 = load i8, ptr %11, align 4
  %14 = zext i8 %13 to i32
  %15 = lshr i32 %12, %14
  %16 = and i32 %15, 7
  store i32 %16, ptr %2, align 4
  %17 = icmp sgt i32 %4, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %10
  %19 = getelementptr i8, ptr %0, i32 -8
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %29, %18
  %22 = phi i32 [ 0, %18 ], [ %30, %29 ]
  %23 = getelementptr %struct.parent_map, ptr %20, i32 %22, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %16, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = trunc i32 %22 to i8
  br label %32

29:                                               ; preds = %21
  %30 = add nuw nsw i32 %22, 1
  %31 = icmp eq i32 %30, %4
  br i1 %31, label %32, label %21

32:                                               ; preds = %29, %27, %10, %1
  %33 = phi i8 [ %28, %27 ], [ 0, %1 ], [ 0, %10 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret i8 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @qcom_find_freq(ptr noundef %5, i32 noundef %1) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -32
  tail call fastcc void @__clk_rcg_set_rate(ptr noundef %9, ptr noundef nonnull %6)
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ 0, %8 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_bypass_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = tail call i32 @qcom_find_src_index(ptr noundef %0, ptr noundef %6, i8 noundef zeroext %8) #4
  %10 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %9) #4
  %11 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %10, ptr %11, align 4
  %12 = load i32, ptr %1, align 4
  %13 = tail call i32 @clk_hw_round_rate(ptr noundef %10, i32 noundef %12) #4
  %14 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  store i32 %13, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_bypass_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  tail call fastcc void @__clk_rcg_set_rate(ptr noundef %4, ptr noundef %6)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_bypass2_determine_rate(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = tail call i32 @clk_hw_round_rate(ptr noundef %4, i32 noundef %5) #4
  %7 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %6, ptr %7, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_bypass2_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.freq_tbl, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #4
  %8 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %6, align 4
  %11 = call i32 @regmap_read(ptr noundef %9, i32 noundef %10, ptr noundef nonnull %5) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %0, i32 -12
  %15 = load i32, ptr %5, align 4
  %16 = load i8, ptr %14, align 4
  %17 = zext i8 %16 to i32
  %18 = lshr i32 %15, %17
  %19 = and i32 %18, 7
  %20 = getelementptr i8, ptr %0, i32 -17
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = lshr i32 %15, %22
  %24 = getelementptr i8, ptr %0, i32 -16
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nsw i32 -1, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %23, %28
  %30 = trunc i32 %29 to i8
  %31 = add i8 %30, 1
  %32 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 2
  store i8 %31, ptr %32, align 1
  %33 = icmp sgt i32 %7, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %13
  %35 = getelementptr i8, ptr %0, i32 -8
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %47, %34
  %38 = phi i32 [ 0, %34 ], [ %48, %47 ]
  %39 = getelementptr %struct.parent_map, ptr %36, i32 %38, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %19, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = getelementptr %struct.parent_map, ptr %36, i32 %38
  %45 = load i8, ptr %44, align 1
  %46 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 1
  store i8 %45, ptr %46, align 4
  call fastcc void @__clk_rcg_set_rate(ptr noundef %6, ptr noundef nonnull %4)
  br label %50

47:                                               ; preds = %37
  %48 = add nuw nsw i32 %38, 1
  %49 = icmp eq i32 %48, %7
  br i1 %49, label %50, label %37

50:                                               ; preds = %47, %43, %13, %3
  %51 = phi i32 [ 0, %43 ], [ %11, %3 ], [ -22, %13 ], [ -22, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_bypass2_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #1 {
  %5 = tail call i32 @clk_rcg_bypass2_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_pixel_determine_rate(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %1, align 4
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %3, align 4
  %7 = tail call i32 @clk_hw_round_rate(ptr noundef %6, i32 noundef %5) #4
  %8 = add i32 %5, -100000
  %9 = icmp ult i32 %7, %8
  %10 = add i32 %5, 100000
  %11 = icmp ugt i32 %7, %10
  %12 = or i1 %9, %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %32, %22, %2
  %14 = phi ptr [ @pixel_table, %2 ], [ getelementptr inbounds ([4 x %struct.frac_entry], ptr @pixel_table, i32 0, i32 1), %22 ], [ getelementptr inbounds ([4 x %struct.frac_entry], ptr @pixel_table, i32 0, i32 2), %32 ]
  %15 = phi i32 [ %7, %2 ], [ %26, %22 ], [ %37, %32 ]
  %16 = getelementptr inbounds %struct.frac_entry, ptr %14, i32 0, i32 1
  %17 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %15, ptr %17, align 4
  %18 = load i32, ptr %14, align 4
  %19 = mul i32 %18, %15
  %20 = load i32, ptr %16, align 4
  %21 = udiv i32 %19, %20
  store i32 %21, ptr %1, align 4
  br label %43

22:                                               ; preds = %2
  %23 = load i32, ptr %1, align 4
  %24 = mul i32 %23, 3
  %25 = load ptr, ptr %3, align 4
  %26 = tail call i32 @clk_hw_round_rate(ptr noundef %25, i32 noundef %24) #4
  %27 = add i32 %24, -100000
  %28 = icmp ult i32 %26, %27
  %29 = add i32 %24, 100000
  %30 = icmp ugt i32 %26, %29
  %31 = or i1 %28, %30
  br i1 %31, label %32, label %13

32:                                               ; preds = %22
  %33 = load i32, ptr %1, align 4
  %34 = shl i32 %33, 4
  %35 = udiv i32 %34, 3
  %36 = load ptr, ptr %3, align 4
  %37 = tail call i32 @clk_hw_round_rate(ptr noundef %36, i32 noundef %35) #4
  %38 = add nsw i32 %35, -100000
  %39 = icmp ult i32 %37, %38
  %40 = add nuw nsw i32 %35, 100000
  %41 = icmp ugt i32 %37, %40
  %42 = or i1 %39, %41
  br i1 %42, label %43, label %13

43:                                               ; preds = %32, %13
  %44 = phi i32 [ 0, %13 ], [ -22, %32 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_pixel_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.freq_tbl, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #4
  %8 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %6, align 4
  %11 = call i32 @regmap_read(ptr noundef %9, i32 noundef %10, ptr noundef nonnull %5) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %0, i32 -12
  %15 = load i32, ptr %5, align 4
  %16 = load i8, ptr %14, align 4
  %17 = zext i8 %16 to i32
  %18 = lshr i32 %15, %17
  %19 = and i32 %18, 7
  %20 = icmp sgt i32 %7, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %13
  %22 = getelementptr i8, ptr %0, i32 -8
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %34, %21
  %25 = phi i32 [ 0, %21 ], [ %35, %34 ]
  %26 = getelementptr %struct.parent_map, ptr %23, i32 %25, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %19, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = getelementptr %struct.parent_map, ptr %23, i32 %25
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 1
  store i8 %32, ptr %33, align 4
  br label %37

34:                                               ; preds = %24
  %35 = add nuw nsw i32 %25, 1
  %36 = icmp eq i32 %35, %7
  br i1 %36, label %37, label %24

37:                                               ; preds = %34, %30, %13
  %38 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 2
  store i8 1, ptr %38, align 1
  %39 = shl i32 %1, 1
  %40 = add i32 %39, -100000
  %41 = icmp ugt i32 %40, %2
  %42 = add i32 %39, 100000
  %43 = icmp ult i32 %42, %2
  %44 = or i1 %41, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %37
  %46 = mul i32 %1, 3
  %47 = add i32 %46, -100000
  %48 = icmp ugt i32 %47, %2
  %49 = add i32 %46, 100000
  %50 = icmp ult i32 %49, %2
  %51 = or i1 %48, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = shl i32 %1, 4
  %54 = udiv i32 %53, 3
  %55 = add nsw i32 %54, -100000
  %56 = icmp ugt i32 %55, %2
  %57 = add nuw nsw i32 %54, 100000
  %58 = icmp ult i32 %57, %2
  %59 = or i1 %56, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %52, %45, %37
  %61 = phi i16 [ 1, %37 ], [ 1, %45 ], [ 3, %52 ]
  %62 = phi i16 [ 2, %37 ], [ 3, %45 ], [ 16, %52 ]
  %63 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 3
  store i16 %61, ptr %63, align 2
  %64 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 4
  store i16 %62, ptr %64, align 4
  call fastcc void @__clk_rcg_set_rate(ptr noundef %6, ptr noundef nonnull %4)
  br label %65

65:                                               ; preds = %60, %52, %3
  %66 = phi i32 [ 0, %60 ], [ %11, %3 ], [ -22, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_pixel_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #1 {
  %5 = tail call i32 @clk_rcg_pixel_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_esc_determine_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #1 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_hw_get_rate(ptr noundef %11) #4
  %13 = load i32, ptr %1, align 4
  %14 = udiv i32 %12, %13
  %15 = icmp slt i32 %14, 1
  %16 = icmp sgt i32 %14, %9
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %12, ptr %19, align 4
  %20 = udiv i32 %12, %14
  store i32 %20, ptr %1, align 4
  br label %21

21:                                               ; preds = %18, %5, %2
  %22 = phi i32 [ 0, %18 ], [ -22, %2 ], [ -22, %5 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_esc_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.freq_tbl, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false)
  %7 = getelementptr i8, ptr %0, i32 -16
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 1, %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  %11 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #4
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %6, align 4
  %17 = call i32 @regmap_read(ptr noundef %15, i32 noundef %16, ptr noundef nonnull %5) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %0, i32 -12
  %21 = load i32, ptr %5, align 4
  %22 = load i8, ptr %20, align 4
  %23 = zext i8 %22 to i32
  %24 = lshr i32 %21, %23
  %25 = and i32 %24, 7
  store i32 %25, ptr %5, align 4
  %26 = icmp sgt i32 %11, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %19
  %28 = getelementptr i8, ptr %0, i32 -8
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %40, %27
  %31 = phi i32 [ 0, %27 ], [ %41, %40 ]
  %32 = getelementptr %struct.parent_map, ptr %29, i32 %31, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %25, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = getelementptr %struct.parent_map, ptr %29, i32 %31
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 1
  store i8 %38, ptr %39, align 4
  br label %43

40:                                               ; preds = %30
  %41 = add nuw nsw i32 %31, 1
  %42 = icmp eq i32 %41, %11
  br i1 %42, label %43, label %30

43:                                               ; preds = %40, %36, %19
  %44 = udiv i32 %2, %1
  %45 = icmp slt i32 %44, 1
  %46 = icmp sgt i32 %44, %10
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = trunc i32 %44 to i8
  %50 = getelementptr inbounds %struct.freq_tbl, ptr %4, i32 0, i32 2
  store i8 %49, ptr %50, align 1
  call fastcc void @__clk_rcg_set_rate(ptr noundef %6, ptr noundef nonnull %4)
  br label %51

51:                                               ; preds = %48, %43, %13, %3
  %52 = phi i32 [ 0, %48 ], [ -22, %3 ], [ %17, %13 ], [ -22, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_esc_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #1 {
  %5 = tail call i32 @clk_rcg_esc_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_lcc_enable(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %5, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_rcg_lcc_disable(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %5, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rcg_lcc_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @qcom_find_freq(ptr noundef %6, i32 noundef %1) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %4, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %12, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call fastcc void @__clk_rcg_set_rate(ptr noundef %4, ptr noundef nonnull %7)
  %14 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call zeroext i1 @__clk_is_enabled(ptr noundef %15) #4
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load ptr, ptr %10, align 4
  %19 = load i32, ptr %4, align 4
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %19, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %21

21:                                               ; preds = %17, %9, %3
  %22 = phi i32 [ -22, %3 ], [ 0, %17 ], [ 0, %9 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_is_enabled_regmap(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_dyn_rcg_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = getelementptr i8, ptr %0, i32 -25
  %8 = getelementptr i8, ptr %0, i32 -22
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr i8, ptr %0, i32 -27
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 -44
  %17 = load i32, ptr %16, align 4
  %18 = call i32 @regmap_read(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %5) #4
  %19 = load i32, ptr %5, align 4
  %20 = getelementptr i8, ptr %0, i32 -40
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = lshr i32 %19, %22
  %24 = and i32 %23, 1
  %25 = load ptr, ptr %14, align 4
  %26 = getelementptr [2 x i32], ptr %6, i32 0, i32 %24
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @regmap_read(ptr noundef %25, i32 noundef %27, ptr noundef nonnull %3) #4
  br i1 %13, label %67, label %29

29:                                               ; preds = %2
  %30 = getelementptr i8, ptr %0, i32 -39
  %31 = getelementptr [2 x %struct.mn], ptr %30, i32 0, i32 %24
  %32 = load ptr, ptr %14, align 4
  %33 = getelementptr i8, ptr %0, i32 -52
  %34 = getelementptr [2 x i32], ptr %33, i32 0, i32 %24
  %35 = load i32, ptr %34, align 4
  %36 = call i32 @regmap_read(ptr noundef %32, i32 noundef %35, ptr noundef nonnull %4) #4
  %37 = load i32, ptr %4, align 4
  %38 = getelementptr inbounds %struct.mn, ptr %31, i32 0, i32 4
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = lshr i32 %37, %40
  %42 = getelementptr inbounds %struct.mn, ptr %31, i32 0, i32 5
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nsw i32 -1, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %41, %46
  %48 = load i32, ptr %3, align 4
  %49 = xor i32 %48, -1
  %50 = getelementptr inbounds %struct.mn, ptr %31, i32 0, i32 3
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = lshr i32 %49, %52
  %54 = and i32 %53, %46
  %55 = add i32 %54, %47
  %56 = load i32, ptr %6, align 4
  %57 = getelementptr i8, ptr %0, i32 -56
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %56, %58
  %60 = load i32, ptr %5, align 4
  %61 = select i1 %59, i32 %60, i32 %48
  %62 = getelementptr inbounds %struct.mn, ptr %31, i32 0, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = lshr i32 %61, %64
  %66 = and i32 %65, 3
  br label %67

67:                                               ; preds = %29, %2
  %68 = phi i32 [ %47, %29 ], [ 0, %2 ]
  %69 = phi i32 [ %55, %29 ], [ 0, %2 ]
  %70 = phi i32 [ %66, %29 ], [ 0, %2 ]
  br i1 %10, label %87, label %71

71:                                               ; preds = %67
  %72 = getelementptr [2 x %struct.pre_div], ptr %7, i32 0, i32 %24
  %73 = load i32, ptr %3, align 4
  %74 = load i8, ptr %72, align 1
  %75 = zext i8 %74 to i32
  %76 = lshr i32 %73, %75
  %77 = getelementptr inbounds %struct.pre_div, ptr %72, i32 0, i32 1
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl nsw i32 -1, %79
  %81 = xor i32 %80, -1
  %82 = and i32 %76, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %71
  %85 = add i32 %82, 1
  %86 = udiv i32 %1, %85
  br label %87

87:                                               ; preds = %84, %71, %67
  %88 = phi i32 [ %86, %84 ], [ %1, %71 ], [ %1, %67 ]
  %89 = icmp eq i32 %70, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %87
  %91 = zext i32 %88 to i64
  %92 = zext i32 %68 to i64
  %93 = mul nuw i64 %91, %92
  %94 = icmp ult i64 %93, 4294967296
  br i1 %94, label %95, label %98, !prof !9

95:                                               ; preds = %90
  %96 = trunc i64 %93 to i32
  %97 = udiv i32 %96, %69
  br label %102

98:                                               ; preds = %90
  %99 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %69, i64 %93) #5, !srcloc !10
  %100 = extractvalue { i64, i64 } %99, 1
  %101 = trunc i64 %100 to i32
  br label %102

102:                                              ; preds = %98, %95, %87
  %103 = phi i32 [ %88, %87 ], [ %97, %95 ], [ %101, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_dyn_rcg_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -44
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %3) #4
  %9 = load i32, ptr %3, align 4
  %10 = getelementptr i8, ptr %0, i32 -40
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = lshr i32 %9, %12
  %14 = and i32 %13, 1
  %15 = getelementptr i8, ptr %0, i32 -20
  %16 = getelementptr [2 x %struct.src_sel], ptr %15, i32 0, i32 %14
  %17 = getelementptr i8, ptr %0, i32 -4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.src_sel, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = call fastcc i32 @_freq_tbl_determine_rate(ptr noundef %0, ptr noundef %18, ptr noundef %1, ptr noundef %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_dyn_rcg_set_parent(ptr noundef %0, i8 noundef zeroext %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.freq_tbl, align 4
  %7 = getelementptr i8, ptr %0, i32 -60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false)
  %8 = getelementptr i8, ptr %0, i32 -27
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr i8, ptr %0, i32 -25
  %12 = getelementptr i8, ptr %0, i32 -22
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %0, i32 -44
  %18 = load i32, ptr %17, align 4
  %19 = call i32 @regmap_read(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %5) #4
  %20 = load i32, ptr %5, align 4
  %21 = getelementptr i8, ptr %0, i32 -40
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = lshr i32 %20, %23
  %25 = and i32 %24, 1
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr [2 x i32], ptr %7, i32 0, i32 %25
  %28 = load i32, ptr %27, align 4
  %29 = call i32 @regmap_read(ptr noundef %26, i32 noundef %28, ptr noundef nonnull %3) #4
  br i1 %10, label %61, label %30

30:                                               ; preds = %2
  %31 = getelementptr i8, ptr %0, i32 -39
  %32 = load ptr, ptr %15, align 4
  %33 = getelementptr i8, ptr %0, i32 -52
  %34 = getelementptr [2 x i32], ptr %33, i32 0, i32 %25
  %35 = load i32, ptr %34, align 4
  %36 = call i32 @regmap_read(ptr noundef %32, i32 noundef %35, ptr noundef nonnull %4) #4
  %37 = getelementptr [2 x %struct.mn], ptr %31, i32 0, i32 %25
  %38 = load i32, ptr %4, align 4
  %39 = getelementptr inbounds %struct.mn, ptr %37, i32 0, i32 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = lshr i32 %38, %41
  %43 = getelementptr inbounds %struct.mn, ptr %37, i32 0, i32 5
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nsw i32 -1, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %42, %47
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds %struct.freq_tbl, ptr %6, i32 0, i32 3
  store i16 %49, ptr %50, align 2
  %51 = load i32, ptr %3, align 4
  %52 = xor i32 %51, -1
  %53 = getelementptr inbounds %struct.mn, ptr %37, i32 0, i32 3
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = lshr i32 %52, %55
  %57 = and i32 %56, %47
  %58 = add i32 %57, %48
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds %struct.freq_tbl, ptr %6, i32 0, i32 4
  store i16 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %30, %2
  br i1 %14, label %77, label %62

62:                                               ; preds = %61
  %63 = getelementptr [2 x %struct.pre_div], ptr %11, i32 0, i32 %25
  %64 = load i32, ptr %3, align 4
  %65 = load i8, ptr %63, align 1
  %66 = zext i8 %65 to i32
  %67 = lshr i32 %64, %66
  %68 = getelementptr inbounds %struct.pre_div, ptr %63, i32 0, i32 1
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nsw i32 -1, %70
  %72 = xor i32 %71, -1
  %73 = and i32 %67, %72
  %74 = trunc i32 %73 to i8
  %75 = add i8 %74, 1
  %76 = getelementptr inbounds %struct.freq_tbl, ptr %6, i32 0, i32 2
  store i8 %75, ptr %76, align 1
  br label %77

77:                                               ; preds = %62, %61
  %78 = getelementptr i8, ptr %0, i32 -20
  %79 = getelementptr [2 x %struct.src_sel], ptr %78, i32 0, i32 %25
  %80 = getelementptr inbounds %struct.src_sel, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 @qcom_find_src_index(ptr noundef %0, ptr noundef %81, i8 noundef zeroext %1) #4
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds %struct.freq_tbl, ptr %6, i32 0, i32 1
  store i8 %83, ptr %84, align 4
  %85 = call fastcc i32 @configure_bank(ptr noundef %7, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_dyn_rcg_get_parent(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -44
  %8 = load i32, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %3) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 -60
  %13 = load i32, ptr %3, align 4
  %14 = getelementptr i8, ptr %0, i32 -40
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = lshr i32 %13, %16
  %18 = and i32 %17, 1
  %19 = getelementptr i8, ptr %0, i32 -20
  %20 = getelementptr [2 x %struct.src_sel], ptr %19, i32 0, i32 %18
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr [2 x i32], ptr %12, i32 0, i32 %18
  %23 = load i32, ptr %22, align 4
  %24 = call i32 @regmap_read(ptr noundef %21, i32 noundef %23, ptr noundef nonnull %2) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %11
  %27 = load i32, ptr %2, align 4
  %28 = load i8, ptr %20, align 4
  %29 = zext i8 %28 to i32
  %30 = lshr i32 %27, %29
  %31 = and i32 %30, 7
  store i32 %31, ptr %2, align 4
  %32 = icmp sgt i32 %4, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.src_sel, ptr %20, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %44, %33
  %37 = phi i32 [ 0, %33 ], [ %45, %44 ]
  %38 = getelementptr %struct.parent_map, ptr %35, i32 %37, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %31, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = trunc i32 %37 to i8
  br label %47

44:                                               ; preds = %36
  %45 = add nuw nsw i32 %37, 1
  %46 = icmp eq i32 %45, %4
  br i1 %46, label %47, label %36

47:                                               ; preds = %44, %42, %26, %11, %1
  %48 = phi i8 [ %43, %42 ], [ 0, %11 ], [ 0, %1 ], [ 0, %26 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret i8 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_dyn_rcg_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @qcom_find_freq(ptr noundef %5, i32 noundef %1) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -60
  %10 = tail call fastcc i32 @configure_bank(ptr noundef %9, ptr noundef nonnull %6) #4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %10, %8 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_dyn_rcg_set_rate_and_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) #1 {
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @qcom_find_freq(ptr noundef %6, i32 noundef %1) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 -60
  %11 = tail call fastcc i32 @configure_bank(ptr noundef %10, ptr noundef nonnull %7) #4
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi i32 [ %11, %9 ], [ -22, %4 ]
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_freq_tbl_determine_rate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = load i32, ptr %2, align 4
  %6 = tail call ptr @qcom_find_freq(ptr noundef %1, i32 noundef %5) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %48, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.freq_tbl, ptr %6, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = tail call i32 @qcom_find_src_index(ptr noundef %0, ptr noundef %3, i8 noundef zeroext %10) #4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @clk_hw_get_flags(ptr noundef %0) #4
  %15 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %11) #4
  %16 = and i32 %14, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.freq_tbl, ptr %6, i32 0, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = mul i32 %5, %21
  %23 = getelementptr inbounds %struct.freq_tbl, ptr %6, i32 0, i32 4
  %24 = load i16, ptr %23, align 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %18
  %27 = zext i32 %22 to i64
  %28 = zext i16 %24 to i64
  %29 = mul nuw nsw i64 %27, %28
  %30 = getelementptr inbounds %struct.freq_tbl, ptr %6, i32 0, i32 3
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp ult i64 %29, 4294967296
  br i1 %33, label %34, label %37, !prof !9

34:                                               ; preds = %26
  %35 = trunc i64 %29 to i32
  %36 = udiv i32 %35, %32
  br label %43

37:                                               ; preds = %26
  %38 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %32, i64 %29) #5, !srcloc !10
  %39 = extractvalue { i64, i64 } %38, 1
  %40 = trunc i64 %39 to i32
  br label %43

41:                                               ; preds = %13
  %42 = tail call i32 @clk_hw_get_rate(ptr noundef %15) #4
  br label %43

43:                                               ; preds = %41, %37, %34, %18
  %44 = phi i32 [ %22, %18 ], [ %42, %41 ], [ %36, %34 ], [ %40, %37 ]
  %45 = getelementptr inbounds %struct.clk_rate_request, ptr %2, i32 0, i32 4
  store ptr %15, ptr %45, align 4
  %46 = getelementptr inbounds %struct.clk_rate_request, ptr %2, i32 0, i32 3
  store i32 %44, ptr %46, align 4
  %47 = load i32, ptr %6, align 4
  store i32 %47, ptr %2, align 4
  br label %48

48:                                               ; preds = %43, %8, %4
  %49 = phi i32 [ 0, %43 ], [ -22, %4 ], [ %11, %8 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_find_freq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_find_src_index(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__clk_rcg_set_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.clk_rcg, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.clk_rcg, ptr %0, i32 0, i32 2, i32 6
  %8 = load i8, ptr %7, align 2, !range !11
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.clk_rcg, ptr %0, i32 0, i32 6, i32 2
  %11 = select i1 %9, ptr %0, ptr %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.clk_rcg, ptr %0, i32 0, i32 2, i32 5
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %130, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.clk_rcg, ptr %0, i32 0, i32 2, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 1, %19
  %21 = getelementptr inbounds %struct.clk_rcg, ptr %0, i32 0, i32 6, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %12, i32 noundef %20, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.clk_rcg, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = call i32 @regmap_read(ptr noundef %24, i32 noundef %26, ptr noundef nonnull %4) #4
  %28 = getelementptr inbounds %struct.freq_tbl, ptr %1, i32 0, i32 3
  %29 = getelementptr inbounds %struct.freq_tbl, ptr %1, i32 0, i32 4
  %30 = load i16, ptr %29, align 4
  %31 = load i32, ptr %4, align 4
  %32 = load i8, ptr %13, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nsw i32 -1, %33
  %35 = xor i32 %34, -1
  %36 = getelementptr inbounds %struct.clk_rcg, ptr %0, i32 0, i32 2, i32 4
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %35, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %34, %31
  %42 = and i32 %41, %40
  %43 = icmp eq i16 %30, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %16
  %45 = zext i16 %30 to i32
  %46 = load i16, ptr %28, align 2
  %47 = zext i16 %46 to i32
  %48 = shl i32 %47, %38
  %49 = xor i32 %45, -1
  %50 = and i32 %35, %49
  %51 = or i32 %42, %50
  %52 = or i32 %51, %48
  br label %53

53:                                               ; preds = %44, %16
  %54 = phi i32 [ %52, %44 ], [ %42, %16 ]
  store i32 %54, ptr %4, align 4
  %55 = load ptr, ptr %21, align 4
  %56 = load i32, ptr %25, align 4
  %57 = call i32 @regmap_write(ptr noundef %55, i32 noundef %56, i32 noundef %54) #4
  %58 = load ptr, ptr %21, align 4
  %59 = load i32, ptr %0, align 4
  %60 = call i32 @regmap_read(ptr noundef %58, i32 noundef %59, ptr noundef nonnull %3) #4
  %61 = load i32, ptr %10, align 4
  %62 = load i32, ptr %0, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %89, label %64

64:                                               ; preds = %53
  %65 = load ptr, ptr %21, align 4
  %66 = call i32 @regmap_read(ptr noundef %65, i32 noundef %61, ptr noundef nonnull %5) #4
  %67 = load i16, ptr %29, align 4
  %68 = load i32, ptr %5, align 4
  %69 = getelementptr inbounds %struct.clk_rcg, ptr %0, i32 0, i32 2, i32 2
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl i32 3, %71
  %73 = load i8, ptr %6, align 1
  %74 = zext i8 %73 to i32
  %75 = shl nuw i32 1, %74
  %76 = or i32 %75, %72
  %77 = xor i32 %76, -1
  %78 = and i32 %68, %77
  %79 = icmp eq i16 %67, 0
  %80 = shl i32 2, %71
  %81 = or i32 %75, %80
  %82 = select i1 %79, i32 0, i32 %81
  %83 = or i32 %78, %82
  store i32 %83, ptr %5, align 4
  %84 = load ptr, ptr %21, align 4
  %85 = load i32, ptr %10, align 4
  %86 = call i32 @regmap_write(ptr noundef %84, i32 noundef %85, i32 noundef %83) #4
  %87 = load i16, ptr %29, align 4
  %88 = load i32, ptr %3, align 4
  br label %107

89:                                               ; preds = %53
  %90 = load i16, ptr %29, align 4
  %91 = load i32, ptr %3, align 4
  %92 = getelementptr inbounds %struct.clk_rcg, ptr %0, i32 0, i32 2, i32 2
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = shl i32 3, %94
  %96 = load i8, ptr %6, align 1
  %97 = zext i8 %96 to i32
  %98 = shl nuw i32 1, %97
  %99 = or i32 %98, %95
  %100 = xor i32 %99, -1
  %101 = and i32 %91, %100
  %102 = icmp eq i16 %90, 0
  %103 = shl i32 2, %94
  %104 = or i32 %98, %103
  %105 = select i1 %102, i32 0, i32 %104
  %106 = or i32 %101, %105
  br label %107

107:                                              ; preds = %89, %64
  %108 = phi i32 [ %106, %89 ], [ %88, %64 ]
  %109 = phi i16 [ %90, %89 ], [ %87, %64 ]
  %110 = load i8, ptr %13, align 1
  %111 = zext i8 %110 to i32
  %112 = shl nsw i32 -1, %111
  %113 = xor i32 %112, -1
  %114 = getelementptr inbounds %struct.clk_rcg, ptr %0, i32 0, i32 2, i32 3
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %113, %116
  %118 = xor i32 %117, -1
  %119 = and i32 %108, %118
  %120 = icmp eq i16 %109, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %107
  %122 = zext i16 %109 to i32
  %123 = load i16, ptr %28, align 2
  %124 = zext i16 %123 to i32
  %125 = xor i32 %122, -1
  %126 = add nsw i32 %124, %125
  %127 = and i32 %126, %113
  %128 = shl i32 %127, %116
  %129 = or i32 %128, %119
  br label %136

130:                                              ; preds = %2
  %131 = getelementptr inbounds %struct.clk_rcg, ptr %0, i32 0, i32 6, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = load i32, ptr %0, align 4
  %134 = call i32 @regmap_read(ptr noundef %132, i32 noundef %133, ptr noundef nonnull %3) #4
  %135 = load i32, ptr %3, align 4
  br label %136

136:                                              ; preds = %130, %121, %107
  %137 = phi i32 [ %135, %130 ], [ %129, %121 ], [ %119, %107 ]
  %138 = phi i32 [ 0, %130 ], [ %20, %121 ], [ %20, %107 ]
  %139 = getelementptr inbounds %struct.clk_rcg, ptr %0, i32 0, i32 3
  %140 = getelementptr inbounds %struct.freq_tbl, ptr %1, i32 0, i32 2
  %141 = load i8, ptr %140, align 1
  %142 = add i8 %141, -1
  %143 = getelementptr inbounds %struct.clk_rcg, ptr %0, i32 0, i32 3, i32 1
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = shl nsw i32 -1, %145
  %147 = xor i32 %146, -1
  %148 = load i8, ptr %139, align 1
  %149 = zext i8 %148 to i32
  %150 = shl i32 %147, %149
  %151 = xor i32 %150, -1
  %152 = and i32 %137, %151
  %153 = zext i8 %142 to i32
  %154 = shl i32 %153, %149
  %155 = or i32 %152, %154
  store i32 %155, ptr %3, align 4
  %156 = getelementptr inbounds %struct.clk_rcg, ptr %0, i32 0, i32 6, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = load i32, ptr %0, align 4
  %159 = call i32 @regmap_write(ptr noundef %157, i32 noundef %158, i32 noundef %155) #4
  %160 = load ptr, ptr %156, align 4
  %161 = call i32 @regmap_update_bits_base(ptr noundef %160, i32 noundef %12, i32 noundef %138, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__clk_is_enabled(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @configure_bank(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr %struct.clk_dyn_rcg, ptr %0, i32 0, i32 4, i32 1, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr %struct.clk_dyn_rcg, ptr %0, i32 0, i32 5, i32 1, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.clk_dyn_rcg, ptr %0, i32 0, i32 8
  %13 = getelementptr inbounds %struct.clk_dyn_rcg, ptr %0, i32 0, i32 8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @__clk_is_enabled(ptr noundef %14) #4
  %16 = getelementptr inbounds %struct.clk_dyn_rcg, ptr %0, i32 0, i32 8, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.clk_dyn_rcg, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @regmap_read(ptr noundef %17, i32 noundef %19, ptr noundef nonnull %5) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %232

22:                                               ; preds = %2
  %23 = load i32, ptr %5, align 4
  %24 = getelementptr inbounds %struct.clk_dyn_rcg, ptr %0, i32 0, i32 3
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  %27 = lshr i32 %23, %26
  %28 = and i32 %27, 1
  %29 = zext i1 %15 to i32
  %30 = xor i32 %28, %29
  %31 = getelementptr [2 x i32], ptr %0, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %16, align 4
  %34 = call i32 @regmap_read(ptr noundef %33, i32 noundef %32, ptr noundef nonnull %3) #4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %232

36:                                               ; preds = %22
  br i1 %8, label %171, label %37

37:                                               ; preds = %36
  %38 = getelementptr %struct.clk_dyn_rcg, ptr %0, i32 0, i32 4, i32 %30
  %39 = getelementptr %struct.clk_dyn_rcg, ptr %0, i32 0, i32 1, i32 %30
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.clk_dyn_rcg, ptr %0, i32 0, i32 4, i32 %30, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw i32 1, %43
  %45 = load i32, ptr %3, align 4
  %46 = or i32 %44, %45
  store i32 %46, ptr %3, align 4
  %47 = load ptr, ptr %16, align 4
  %48 = call i32 @regmap_write(ptr noundef %47, i32 noundef %32, i32 noundef %46) #4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %232

50:                                               ; preds = %37
  %51 = load ptr, ptr %16, align 4
  %52 = call i32 @regmap_read(ptr noundef %51, i32 noundef %40, ptr noundef nonnull %4) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %232

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.freq_tbl, ptr %1, i32 0, i32 3
  %56 = getelementptr inbounds %struct.freq_tbl, ptr %1, i32 0, i32 4
  %57 = load i16, ptr %56, align 4
  %58 = load i32, ptr %4, align 4
  %59 = getelementptr %struct.clk_dyn_rcg, ptr %0, i32 0, i32 4, i32 %30, i32 5
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nsw i32 -1, %61
  %63 = xor i32 %62, -1
  %64 = getelementptr %struct.clk_dyn_rcg, ptr %0, i32 0, i32 4, i32 %30, i32 4
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl i32 %63, %66
  %68 = xor i32 %67, -1
  %69 = and i32 %62, %58
  %70 = and i32 %69, %68
  %71 = icmp eq i16 %57, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %54
  %73 = zext i16 %57 to i32
  %74 = load i16, ptr %55, align 2
  %75 = zext i16 %74 to i32
  %76 = shl i32 %75, %66
  %77 = xor i32 %73, -1
  %78 = and i32 %63, %77
  %79 = or i32 %70, %78
  %80 = or i32 %79, %76
  br label %81

81:                                               ; preds = %72, %54
  %82 = phi i32 [ %80, %72 ], [ %70, %54 ]
  store i32 %82, ptr %4, align 4
  %83 = load ptr, ptr %16, align 4
  %84 = call i32 @regmap_write(ptr noundef %83, i32 noundef %40, i32 noundef %82) #4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %232

86:                                               ; preds = %81
  %87 = load i16, ptr %56, align 4
  %88 = load i32, ptr %3, align 4
  %89 = load i8, ptr %59, align 1
  %90 = zext i8 %89 to i32
  %91 = shl nsw i32 -1, %90
  %92 = xor i32 %91, -1
  %93 = getelementptr %struct.clk_dyn_rcg, ptr %0, i32 0, i32 4, i32 %30, i32 3
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl i32 %92, %95
  %97 = xor i32 %96, -1
  %98 = and i32 %88, %97
  %99 = icmp eq i16 %87, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %86
  %101 = zext i16 %87 to i32
  %102 = load i16, ptr %55, align 2
  %103 = zext i16 %102 to i32
  %104 = xor i32 %101, -1
  %105 = add nsw i32 %103, %104
  %106 = and i32 %105, %92
  %107 = shl i32 %106, %95
  %108 = or i32 %107, %98
  br label %109

109:                                              ; preds = %100, %86
  %110 = phi i32 [ %108, %100 ], [ %98, %86 ]
  store i32 %110, ptr %3, align 4
  %111 = load ptr, ptr %16, align 4
  %112 = call i32 @regmap_write(ptr noundef %111, i32 noundef %32, i32 noundef %110) #4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %232

114:                                              ; preds = %109
  %115 = load i32, ptr %0, align 4
  %116 = getelementptr [2 x i32], ptr %0, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %115, %117
  %119 = load i16, ptr %56, align 4
  br i1 %118, label %140, label %120

120:                                              ; preds = %114
  %121 = load i32, ptr %3, align 4
  %122 = getelementptr %struct.clk_dyn_rcg, ptr %0, i32 0, i32 4, i32 %30, i32 2
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = shl i32 3, %124
  %126 = load i8, ptr %38, align 1
  %127 = zext i8 %126 to i32
  %128 = shl nuw i32 1, %127
  %129 = or i32 %128, %125
  %130 = xor i32 %129, -1
  %131 = and i32 %121, %130
  %132 = icmp eq i16 %119, 0
  %133 = shl i32 2, %124
  %134 = or i32 %128, %133
  %135 = select i1 %132, i32 0, i32 %134
  %136 = or i32 %131, %135
  store i32 %136, ptr %3, align 4
  %137 = load ptr, ptr %16, align 4
  %138 = call i32 @regmap_write(ptr noundef %137, i32 noundef %32, i32 noundef %136) #4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %161, label %232

140:                                              ; preds = %114
  %141 = load i32, ptr %5, align 4
  %142 = getelementptr %struct.clk_dyn_rcg, ptr %0, i32 0, i32 4, i32 %30, i32 2
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i32
  %145 = shl i32 3, %144
  %146 = load i8, ptr %38, align 1
  %147 = zext i8 %146 to i32
  %148 = shl nuw i32 1, %147
  %149 = or i32 %148, %145
  %150 = xor i32 %149, -1
  %151 = and i32 %141, %150
  %152 = icmp eq i16 %119, 0
  %153 = shl i32 2, %144
  %154 = or i32 %148, %153
  %155 = select i1 %152, i32 0, i32 %154
  %156 = or i32 %151, %155
  store i32 %156, ptr %5, align 4
  %157 = load ptr, ptr %16, align 4
  %158 = load i32, ptr %18, align 4
  %159 = call i32 @regmap_write(ptr noundef %157, i32 noundef %158, i32 noundef %156) #4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %232

161:                                              ; preds = %140, %120
  %162 = load i8, ptr %41, align 1
  %163 = zext i8 %162 to i32
  %164 = shl nuw i32 1, %163
  %165 = xor i32 %164, -1
  %166 = load i32, ptr %3, align 4
  %167 = and i32 %166, %165
  store i32 %167, ptr %3, align 4
  %168 = load ptr, ptr %16, align 4
  %169 = call i32 @regmap_write(ptr noundef %168, i32 noundef %32, i32 noundef %167) #4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %232

171:                                              ; preds = %161, %36
  br i1 %11, label %191, label %172

172:                                              ; preds = %171
  %173 = getelementptr %struct.clk_dyn_rcg, ptr %0, i32 0, i32 5, i32 %30
  %174 = getelementptr inbounds %struct.freq_tbl, ptr %1, i32 0, i32 2
  %175 = load i8, ptr %174, align 1
  %176 = add i8 %175, -1
  %177 = load i32, ptr %3, align 4
  %178 = getelementptr %struct.clk_dyn_rcg, ptr %0, i32 0, i32 5, i32 %30, i32 1
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = shl nsw i32 -1, %180
  %182 = xor i32 %181, -1
  %183 = load i8, ptr %173, align 1
  %184 = zext i8 %183 to i32
  %185 = shl i32 %182, %184
  %186 = xor i32 %185, -1
  %187 = and i32 %177, %186
  %188 = zext i8 %176 to i32
  %189 = shl i32 %188, %184
  %190 = or i32 %187, %189
  store i32 %190, ptr %3, align 4
  br label %191

191:                                              ; preds = %172, %171
  %192 = getelementptr %struct.clk_dyn_rcg, ptr %0, i32 0, i32 6, i32 %30, i32 1
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.freq_tbl, ptr %1, i32 0, i32 1
  %195 = load i8, ptr %194, align 4
  %196 = call i32 @qcom_find_src_index(ptr noundef %12, ptr noundef %193, i8 noundef zeroext %195) #4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %232, label %198

198:                                              ; preds = %191
  %199 = getelementptr %struct.clk_dyn_rcg, ptr %0, i32 0, i32 6, i32 %30
  %200 = load ptr, ptr %192, align 4
  %201 = getelementptr %struct.parent_map, ptr %200, i32 %196, i32 1
  %202 = load i8, ptr %201, align 1
  %203 = load i32, ptr %3, align 4
  %204 = load i8, ptr %199, align 4
  %205 = zext i8 %204 to i32
  %206 = shl i32 7, %205
  %207 = xor i32 %206, -1
  %208 = and i32 %203, %207
  %209 = zext i8 %202 to i32
  %210 = shl i32 %209, %205
  %211 = or i32 %208, %210
  store i32 %211, ptr %3, align 4
  %212 = load ptr, ptr %16, align 4
  %213 = call i32 @regmap_write(ptr noundef %212, i32 noundef %32, i32 noundef %211) #4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %232

215:                                              ; preds = %198
  br i1 %15, label %216, label %231

216:                                              ; preds = %215
  %217 = load ptr, ptr %16, align 4
  %218 = load i32, ptr %18, align 4
  %219 = call i32 @regmap_read(ptr noundef %217, i32 noundef %218, ptr noundef nonnull %5) #4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %216
  %222 = load i8, ptr %24, align 4
  %223 = zext i8 %222 to i32
  %224 = shl nuw i32 1, %223
  %225 = load i32, ptr %5, align 4
  %226 = xor i32 %224, %225
  store i32 %226, ptr %5, align 4
  %227 = load ptr, ptr %16, align 4
  %228 = load i32, ptr %18, align 4
  %229 = call i32 @regmap_write(ptr noundef %227, i32 noundef %228, i32 noundef %226) #4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %221, %215
  br label %232

232:                                              ; preds = %231, %221, %216, %198, %191, %161, %140, %120, %109, %81, %50, %37, %22, %2
  %233 = phi i32 [ 0, %231 ], [ %20, %2 ], [ %34, %22 ], [ %48, %37 ], [ %52, %50 ], [ %84, %81 ], [ %112, %109 ], [ %138, %120 ], [ %159, %140 ], [ %169, %161 ], [ %196, %191 ], [ %213, %198 ], [ %219, %216 ], [ %229, %221 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %233
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

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
!10 = !{i64 2148344778, i64 2148345058, i64 2148345392, i64 2148345726}
!11 = !{i8 0, i8 2}
