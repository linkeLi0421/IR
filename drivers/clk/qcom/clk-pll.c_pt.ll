; ModuleID = '/llk/IR/drivers/clk/qcom/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_pll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_pll_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_pll_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_pll_vote_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_pll_vote_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_pll_vote_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_pll_configure_sr:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_pll_configure_sr\22\09\09\09\09\09"
module asm "__kstrtabns_clk_pll_configure_sr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_pll_configure_sr_hpm_lp:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_pll_configure_sr_hpm_lp\22\09\09\09\09\09"
module asm "__kstrtabns_clk_pll_configure_sr_hpm_lp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_pll_sr2_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_pll_sr2_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_pll_sr2_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.pll_freq_tbl = type { i32, i16, i16, i16, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.clk_pll = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, ptr, %struct.clk_regmap }
%struct.pll_config = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@clk_pll_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_enable, ptr @clk_pll_disable, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr null, ptr @clk_pll_determine_rate, ptr null, ptr null, ptr @clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_pll_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_pll_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_pll_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_pll_ops to i32), ptr @__kstrtab_clk_pll_ops, ptr @__kstrtabns_clk_pll_ops }, section "___ksymtab_gpl+clk_pll_ops", align 4
@clk_pll_vote_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_vote_enable, ptr @clk_disable_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_pll_vote_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_pll_vote_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_pll_vote_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_pll_vote_ops to i32), ptr @__kstrtab_clk_pll_vote_ops, ptr @__kstrtabns_clk_pll_vote_ops }, section "___ksymtab_gpl+clk_pll_vote_ops", align 4
@__kstrtab_clk_pll_configure_sr = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_pll_configure_sr = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_pll_configure_sr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_pll_configure_sr to i32), ptr @__kstrtab_clk_pll_configure_sr, ptr @__kstrtabns_clk_pll_configure_sr }, section "___ksymtab_gpl+clk_pll_configure_sr", align 4
@__kstrtab_clk_pll_configure_sr_hpm_lp = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_pll_configure_sr_hpm_lp = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_pll_configure_sr_hpm_lp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_pll_configure_sr_hpm_lp to i32), ptr @__kstrtab_clk_pll_configure_sr_hpm_lp, ptr @__kstrtabns_clk_pll_configure_sr_hpm_lp }, section "___ksymtab_gpl+clk_pll_configure_sr_hpm_lp", align 4
@clk_pll_sr2_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_sr2_enable, ptr @clk_pll_disable, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr null, ptr @clk_pll_determine_rate, ptr null, ptr null, ptr @clk_pll_sr2_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_pll_sr2_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_pll_sr2_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_pll_sr2_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_pll_sr2_ops to i32), ptr @__kstrtab_clk_pll_sr2_ops, ptr @__kstrtabns_clk_pll_sr2_ops }, section "___ksymtab_gpl+clk_pll_sr2_ops", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [27 x i8] c"drivers/clk/qcom/clk-pll.c\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%s didn't enable after voting for it!\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_clk_pll_configure_sr, ptr @__ksymtab_clk_pll_configure_sr_hpm_lp, ptr @__ksymtab_clk_pll_ops, ptr @__ksymtab_clk_pll_sr2_ops, ptr @__ksymtab_clk_pll_vote_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load i32, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %2) #3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load i32, ptr %2, align 4
  %11 = and i32 %10, 7
  %12 = icmp ne i32 %11, 7
  %13 = and i32 %10, 1048576
  %14 = icmp eq i32 %13, 0
  %15 = and i1 %12, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %9
  %17 = load ptr, ptr %3, align 4
  %18 = load i32, ptr %5, align 4
  %19 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %18, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 2147480) #3
  %23 = load ptr, ptr %3, align 4
  %24 = load i32, ptr %5, align 4
  %25 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %24, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 10737400) #3
  %29 = load ptr, ptr %3, align 4
  %30 = load i32, ptr %5, align 4
  %31 = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %30, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %32

32:                                               ; preds = %27, %21, %16, %9, %1
  %33 = phi i32 [ %31, %27 ], [ %7, %1 ], [ 0, %9 ], [ %19, %16 ], [ %25, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_pll_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load i32, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %2) #3
  %8 = load i32, ptr %2, align 4
  %9 = and i32 %8, 1048576
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4
  %13 = load i32, ptr %5, align 4
  %14 = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %13, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %15

15:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  store i32 0, ptr %6, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %7, align 4
  %11 = call i32 @regmap_read(ptr noundef %9, i32 noundef %10, ptr noundef nonnull %3) #3
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr i8, ptr %0, i32 -28
  %14 = load i32, ptr %13, align 4
  %15 = call i32 @regmap_read(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %4) #3
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr i8, ptr %0, i32 -24
  %18 = load i32, ptr %17, align 4
  %19 = call i32 @regmap_read(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %5) #3
  %20 = load i32, ptr %3, align 4
  %21 = and i32 %20, 1023
  store i32 %21, ptr %3, align 4
  %22 = load i32, ptr %4, align 4
  %23 = and i32 %22, 524287
  store i32 %23, ptr %4, align 4
  %24 = load i32, ptr %5, align 4
  %25 = and i32 %24, 524287
  store i32 %25, ptr %5, align 4
  %26 = mul i32 %21, %1
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %2
  %29 = zext i32 %1 to i64
  %30 = zext i32 %23 to i64
  %31 = mul nuw nsw i64 %30, %29
  %32 = icmp ult i64 %31, 4294967296
  br i1 %32, label %33, label %36, !prof !9

33:                                               ; preds = %28
  %34 = trunc i64 %31 to i32
  %35 = udiv i32 %34, %25
  br label %40

36:                                               ; preds = %28
  %37 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %25, i64 %31) #4, !srcloc !10
  %38 = extractvalue { i64, i64 } %37, 1
  %39 = trunc i64 %38 to i32
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i32 [ %35, %33 ], [ %39, %36 ]
  %42 = add i32 %41, %26
  br label %43

43:                                               ; preds = %40, %2
  %44 = phi i32 [ %42, %40 ], [ %26, %2 ]
  %45 = getelementptr i8, ptr %0, i32 -7
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %8, align 4
  %50 = getelementptr i8, ptr %0, i32 -20
  %51 = load i32, ptr %50, align 4
  %52 = call i32 @regmap_read(ptr noundef %49, i32 noundef %51, ptr noundef nonnull %6) #3
  %53 = getelementptr i8, ptr %0, i32 -6
  %54 = load i8, ptr %53, align 2
  %55 = zext i8 %54 to i32
  %56 = load i32, ptr %6, align 4
  %57 = lshr i32 %56, %55
  %58 = load i8, ptr %45, align 1
  %59 = zext i8 %58 to i32
  %60 = shl nsw i32 -1, %59
  %61 = xor i32 %60, -1
  %62 = and i32 %57, %61
  %63 = add i32 %62, 1
  %64 = udiv i32 %44, %63
  br label %65

65:                                               ; preds = %48, %43
  %66 = phi i32 [ %64, %48 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_determine_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq ptr %4, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %14, %7
  %11 = phi i32 [ %16, %14 ], [ %8, %7 ]
  %12 = phi ptr [ %15, %14 ], [ %4, %7 ]
  %13 = icmp ult i32 %11, %5
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr %struct.pll_freq_tbl, ptr %12, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %10

18:                                               ; preds = %10
  %19 = icmp eq ptr %12, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %18, %14, %7, %2
  %21 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @clk_pll_recalc_rate(ptr noundef %0, i32 noundef %22)
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi i32 [ %23, %20 ], [ %11, %18 ]
  store i32 %25, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %73, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %8, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %73, label %13

13:                                               ; preds = %17, %10
  %14 = phi i32 [ %19, %17 ], [ %11, %10 ]
  %15 = phi ptr [ %18, %17 ], [ %8, %10 ]
  %16 = icmp ult i32 %14, %1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr %struct.pll_freq_tbl, ptr %15, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %73, label %13

21:                                               ; preds = %13
  %22 = icmp eq ptr %15, null
  br i1 %22, label %73, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %0, i32 -16
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @regmap_read(ptr noundef %25, i32 noundef %27, ptr noundef nonnull %5) #3
  %29 = load i32, ptr %5, align 4
  %30 = and i32 %29, 7
  %31 = icmp eq i32 %30, 7
  br i1 %31, label %32, label %44

32:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !8
  %33 = load ptr, ptr %24, align 4
  %34 = load i32, ptr %26, align 4
  %35 = call i32 @regmap_read(ptr noundef %33, i32 noundef %34, ptr noundef nonnull %4) #3
  %36 = load i32, ptr %4, align 4
  %37 = and i32 %36, 1048576
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load ptr, ptr %24, align 4
  %41 = load i32, ptr %26, align 4
  %42 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef %41, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %43

43:                                               ; preds = %39, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  br label %44

44:                                               ; preds = %43, %23
  %45 = load ptr, ptr %24, align 4
  %46 = load i32, ptr %6, align 4
  %47 = getelementptr inbounds %struct.pll_freq_tbl, ptr %15, i32 0, i32 1
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef %46, i32 noundef 1023, i32 noundef %49, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %51 = load ptr, ptr %24, align 4
  %52 = getelementptr i8, ptr %0, i32 -28
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.pll_freq_tbl, ptr %15, i32 0, i32 2
  %55 = load i16, ptr %54, align 2
  %56 = zext i16 %55 to i32
  %57 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef %53, i32 noundef 524287, i32 noundef %56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %58 = load ptr, ptr %24, align 4
  %59 = getelementptr i8, ptr %0, i32 -24
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.pll_freq_tbl, ptr %15, i32 0, i32 3
  %62 = load i16, ptr %61, align 4
  %63 = zext i16 %62 to i32
  %64 = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef %60, i32 noundef 524287, i32 noundef %63, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %65 = load ptr, ptr %24, align 4
  %66 = getelementptr i8, ptr %0, i32 -20
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.pll_freq_tbl, ptr %15, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = call i32 @regmap_write(ptr noundef %65, i32 noundef %67, i32 noundef %69) #3
  br i1 %31, label %71, label %73

71:                                               ; preds = %44
  %72 = call i32 @clk_pll_enable(ptr noundef %0)
  br label %73

73:                                               ; preds = %71, %44, %21, %17, %10, %3
  %74 = phi i32 [ -22, %21 ], [ 0, %71 ], [ 0, %44 ], [ -22, %3 ], [ -22, %10 ], [ -22, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_vote_enable(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #3
  %4 = tail call i32 @clk_enable_regmap(ptr noundef %0) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = tail call ptr @clk_hw_get_name(ptr noundef %3) #3
  %8 = getelementptr i8, ptr %3, i32 12
  %9 = getelementptr i8, ptr %3, i32 -12
  %10 = getelementptr i8, ptr %3, i32 -8
  br label %11

11:                                               ; preds = %24, %6
  %12 = phi i32 [ 200, %6 ], [ %26, %24 ]
  %13 = load ptr, ptr %8, align 4
  %14 = load i32, ptr %9, align 4
  %15 = call i32 @regmap_read(ptr noundef %13, i32 noundef %14, ptr noundef nonnull %2) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load i32, ptr %2, align 4
  %19 = load i8, ptr %10, align 4
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748) #3
  %26 = add nsw i32 %12, -1
  %27 = icmp ugt i32 %12, 1
  br i1 %27, label %11, label %28

28:                                               ; preds = %24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %7) #3
  br label %29

29:                                               ; preds = %28, %17, %11
  %30 = phi i32 [ -110, %28 ], [ %15, %11 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  br label %31

31:                                               ; preds = %29, %1
  %32 = phi i32 [ %30, %29 ], [ %4, %1 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_pll_configure_sr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i1 noundef zeroext %3) #0 {
  %5 = load i32, ptr %0, align 4
  %6 = load i16, ptr %2, align 4
  %7 = zext i16 %6 to i32
  %8 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %5, i32 noundef %7) #3
  %9 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %10, i32 noundef %12) #3
  %14 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %15, i32 noundef %17) #3
  %19 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %28, %26
  %32 = or i32 %30, %31
  %33 = or i32 %32, %20
  %34 = or i32 %33, %22
  %35 = or i32 %34, %24
  %36 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %32, %37
  %43 = or i32 %42, %39
  %44 = or i32 %43, %41
  %45 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %46, i32 noundef %44, i32 noundef %35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br i1 %3, label %48, label %51

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  tail call void @qcom_pll_set_fsm_mode(ptr noundef %1, i32 noundef %50, i8 noundef zeroext 1, i8 noundef zeroext 8) #3
  br label %51

51:                                               ; preds = %48, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_pll_set_fsm_mode(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_pll_configure_sr_hpm_lp(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i1 noundef zeroext %3) #0 {
  %5 = load i32, ptr %0, align 4
  %6 = load i16, ptr %2, align 4
  %7 = zext i16 %6 to i32
  %8 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %5, i32 noundef %7) #3
  %9 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %10, i32 noundef %12) #3
  %14 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %15, i32 noundef %17) #3
  %19 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %28, %26
  %32 = or i32 %30, %31
  %33 = or i32 %32, %20
  %34 = or i32 %33, %22
  %35 = or i32 %34, %24
  %36 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.pll_config, ptr %2, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %32, %37
  %43 = or i32 %42, %39
  %44 = or i32 %43, %41
  %45 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %46, i32 noundef %44, i32 noundef %35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br i1 %3, label %48, label %51

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.clk_pll, ptr %0, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  tail call void @qcom_pll_set_fsm_mode(ptr noundef %1, i32 noundef %50, i8 noundef zeroext 1, i8 noundef zeroext 0) #3
  br label %51

51:                                               ; preds = %48, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_sr2_enable(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr %struct.clk_regmap, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %5, i32 noundef %7, ptr noundef nonnull %3) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %1
  %11 = load ptr, ptr %4, align 4
  %12 = load i32, ptr %6, align 4
  %13 = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %12, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 2147480) #3
  %17 = load ptr, ptr %4, align 4
  %18 = load i32, ptr %6, align 4
  %19 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %18, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  %22 = call ptr @clk_hw_get_name(ptr noundef %0) #3
  %23 = getelementptr i8, ptr %0, i32 -12
  %24 = getelementptr i8, ptr %0, i32 -8
  br label %25

25:                                               ; preds = %38, %21
  %26 = phi i32 [ 200, %21 ], [ %40, %38 ]
  %27 = load ptr, ptr %4, align 4
  %28 = load i32, ptr %23, align 4
  %29 = call i32 @regmap_read(ptr noundef %27, i32 noundef %28, ptr noundef nonnull %2) #3
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load i32, ptr %2, align 4
  %33 = load i8, ptr %24, align 4
  %34 = zext i8 %33 to i32
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748) #3
  %40 = add nsw i32 %26, -1
  %41 = icmp ugt i32 %26, 1
  br i1 %41, label %25, label %42

42:                                               ; preds = %38
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %22) #3
  br label %43

43:                                               ; preds = %42, %25
  %44 = phi i32 [ -110, %42 ], [ %29, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  br label %49

45:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  %46 = load ptr, ptr %4, align 4
  %47 = load i32, ptr %6, align 4
  %48 = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef %47, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %49

49:                                               ; preds = %45, %43, %15, %10, %1
  %50 = phi i32 [ %48, %45 ], [ %8, %1 ], [ %13, %10 ], [ %19, %15 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_sr2_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %67, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %8, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %67, label %13

13:                                               ; preds = %17, %10
  %14 = phi i32 [ %19, %17 ], [ %11, %10 ]
  %15 = phi ptr [ %18, %17 ], [ %8, %10 ]
  %16 = icmp ult i32 %14, %1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr %struct.pll_freq_tbl, ptr %15, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %67, label %13

21:                                               ; preds = %13
  %22 = icmp eq ptr %15, null
  br i1 %22, label %67, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %0, i32 -16
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @regmap_read(ptr noundef %25, i32 noundef %27, ptr noundef nonnull %5) #3
  %29 = load i32, ptr %5, align 4
  %30 = and i32 %29, 7
  %31 = icmp eq i32 %30, 7
  br i1 %31, label %32, label %44

32:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4, !annotation !8
  %33 = load ptr, ptr %24, align 4
  %34 = load i32, ptr %26, align 4
  %35 = call i32 @regmap_read(ptr noundef %33, i32 noundef %34, ptr noundef nonnull %4) #3
  %36 = load i32, ptr %4, align 4
  %37 = and i32 %36, 1048576
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load ptr, ptr %24, align 4
  %41 = load i32, ptr %26, align 4
  %42 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef %41, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br label %43

43:                                               ; preds = %39, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  br label %44

44:                                               ; preds = %43, %23
  %45 = load ptr, ptr %24, align 4
  %46 = load i32, ptr %6, align 4
  %47 = getelementptr inbounds %struct.pll_freq_tbl, ptr %15, i32 0, i32 1
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef %46, i32 noundef 1023, i32 noundef %49, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %51 = load ptr, ptr %24, align 4
  %52 = getelementptr i8, ptr %0, i32 -28
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.pll_freq_tbl, ptr %15, i32 0, i32 2
  %55 = load i16, ptr %54, align 2
  %56 = zext i16 %55 to i32
  %57 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef %53, i32 noundef 524287, i32 noundef %56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  %58 = load ptr, ptr %24, align 4
  %59 = getelementptr i8, ptr %0, i32 -24
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.pll_freq_tbl, ptr %15, i32 0, i32 3
  %62 = load i16, ptr %61, align 4
  %63 = zext i16 %62 to i32
  %64 = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef %60, i32 noundef 524287, i32 noundef %63, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  br i1 %31, label %65, label %67

65:                                               ; preds = %44
  %66 = call i32 @clk_pll_sr2_enable(ptr noundef %0)
  br label %67

67:                                               ; preds = %65, %44, %21, %17, %10, %3
  %68 = phi i32 [ -22, %21 ], [ 0, %65 ], [ 0, %44 ], [ -22, %3 ], [ -22, %10 ], [ -22, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  ret i32 %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

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
!10 = !{i64 2148331572, i64 2148331852, i64 2148332186, i64 2148332520}
