; ModuleID = '/llk/IR/drivers/clk/clk-divider.c_pt.bc'
source_filename = "../drivers/clk/clk-divider.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_divider_recalc_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22divider_recalc_rate\22\09\09\09\09\09"
module asm "__kstrtabns_divider_recalc_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_divider_determine_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22divider_determine_rate\22\09\09\09\09\09"
module asm "__kstrtabns_divider_determine_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_divider_ro_determine_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22divider_ro_determine_rate\22\09\09\09\09\09"
module asm "__kstrtabns_divider_ro_determine_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_divider_round_rate_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22divider_round_rate_parent\22\09\09\09\09\09"
module asm "__kstrtabns_divider_round_rate_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_divider_ro_round_rate_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22divider_ro_round_rate_parent\22\09\09\09\09\09"
module asm "__kstrtabns_divider_ro_round_rate_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_divider_get_val:\09\09\09\09\09"
module asm "\09.asciz \09\22divider_get_val\22\09\09\09\09\09"
module asm "__kstrtabns_divider_get_val:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_divider_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_divider_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_divider_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_divider_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_divider_ro_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_divider_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clk_hw_register_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22__clk_hw_register_divider\22\09\09\09\09\09"
module asm "__kstrtabns___clk_hw_register_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_register_divider_table:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_register_divider_table\22\09\09\09\09\09"
module asm "__kstrtabns_clk_register_divider_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_unregister_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_unregister_divider\22\09\09\09\09\09"
module asm "__kstrtabns_clk_unregister_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_unregister_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_unregister_divider\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_unregister_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_clk_hw_register_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_clk_hw_register_divider\22\09\09\09\09\09"
module asm "__kstrtabns___devm_clk_hw_register_divider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@.str = private unnamed_addr constant [26 x i8] c"drivers/clk/clk-divider.c\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\0A\00", align 1
@__kstrtab_divider_recalc_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_divider_recalc_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_divider_recalc_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @divider_recalc_rate to i32), ptr @__kstrtab_divider_recalc_rate, ptr @__kstrtabns_divider_recalc_rate }, section "___ksymtab_gpl+divider_recalc_rate", align 4
@__kstrtab_divider_determine_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_divider_determine_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_divider_determine_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @divider_determine_rate to i32), ptr @__kstrtab_divider_determine_rate, ptr @__kstrtabns_divider_determine_rate }, section "___ksymtab_gpl+divider_determine_rate", align 4
@__kstrtab_divider_ro_determine_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_divider_ro_determine_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_divider_ro_determine_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @divider_ro_determine_rate to i32), ptr @__kstrtab_divider_ro_determine_rate, ptr @__kstrtabns_divider_ro_determine_rate }, section "___ksymtab_gpl+divider_ro_determine_rate", align 4
@__kstrtab_divider_round_rate_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_divider_round_rate_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_divider_round_rate_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @divider_round_rate_parent to i32), ptr @__kstrtab_divider_round_rate_parent, ptr @__kstrtabns_divider_round_rate_parent }, section "___ksymtab_gpl+divider_round_rate_parent", align 4
@__kstrtab_divider_ro_round_rate_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_divider_ro_round_rate_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_divider_ro_round_rate_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @divider_ro_round_rate_parent to i32), ptr @__kstrtab_divider_ro_round_rate_parent, ptr @__kstrtabns_divider_ro_round_rate_parent }, section "___ksymtab_gpl+divider_ro_round_rate_parent", align 4
@__kstrtab_divider_get_val = external dso_local constant [0 x i8], align 1
@__kstrtabns_divider_get_val = external dso_local constant [0 x i8], align 1
@__ksymtab_divider_get_val = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @divider_get_val to i32), ptr @__kstrtab_divider_get_val, ptr @__kstrtabns_divider_get_val }, section "___ksymtab_gpl+divider_get_val", align 4
@clk_divider_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_divider_recalc_rate, ptr @clk_divider_round_rate, ptr @clk_divider_determine_rate, ptr null, ptr null, ptr @clk_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_divider_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_divider_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_divider_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_divider_ops to i32), ptr @__kstrtab_clk_divider_ops, ptr @__kstrtabns_clk_divider_ops }, section "___ksymtab_gpl+clk_divider_ops", align 4
@clk_divider_ro_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_divider_recalc_rate, ptr @clk_divider_round_rate, ptr @clk_divider_determine_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_divider_ro_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_divider_ro_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_divider_ro_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_divider_ro_ops to i32), ptr @__kstrtab_clk_divider_ro_ops, ptr @__kstrtabns_clk_divider_ro_ops }, section "___ksymtab_gpl+clk_divider_ro_ops", align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"\014divider value exceeds LOWORD field\0A\00", align 1
@__kstrtab___clk_hw_register_divider = external dso_local constant [0 x i8], align 1
@__kstrtabns___clk_hw_register_divider = external dso_local constant [0 x i8], align 1
@__ksymtab___clk_hw_register_divider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clk_hw_register_divider to i32), ptr @__kstrtab___clk_hw_register_divider, ptr @__kstrtabns___clk_hw_register_divider }, section "___ksymtab_gpl+__clk_hw_register_divider", align 4
@__kstrtab_clk_register_divider_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_register_divider_table = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_register_divider_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_register_divider_table to i32), ptr @__kstrtab_clk_register_divider_table, ptr @__kstrtabns_clk_register_divider_table }, section "___ksymtab_gpl+clk_register_divider_table", align 4
@__kstrtab_clk_unregister_divider = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_unregister_divider = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_unregister_divider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_unregister_divider to i32), ptr @__kstrtab_clk_unregister_divider, ptr @__kstrtabns_clk_unregister_divider }, section "___ksymtab_gpl+clk_unregister_divider", align 4
@__kstrtab_clk_hw_unregister_divider = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_unregister_divider = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_unregister_divider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_unregister_divider to i32), ptr @__kstrtab_clk_hw_unregister_divider, ptr @__kstrtabns_clk_hw_unregister_divider }, section "___ksymtab_gpl+clk_hw_unregister_divider", align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"devm_clk_hw_release_divider\00", align 1
@__kstrtab___devm_clk_hw_register_divider = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_clk_hw_register_divider = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_clk_hw_register_divider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_clk_hw_register_divider to i32), ptr @__kstrtab___devm_clk_hw_register_divider, ptr @__kstrtabns___devm_clk_hw_register_divider }, section "___ksymtab_gpl+__devm_clk_hw_register_divider", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab___clk_hw_register_divider, ptr @__ksymtab___devm_clk_hw_register_divider, ptr @__ksymtab_clk_divider_ops, ptr @__ksymtab_clk_divider_ro_ops, ptr @__ksymtab_clk_hw_unregister_divider, ptr @__ksymtab_clk_register_divider_table, ptr @__ksymtab_clk_unregister_divider, ptr @__ksymtab_divider_determine_rate, ptr @__ksymtab_divider_get_val, ptr @__ksymtab_divider_recalc_rate, ptr @__ksymtab_divider_ro_determine_rate, ptr @__ksymtab_divider_ro_round_rate_parent, ptr @__ksymtab_divider_round_rate_parent], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @divider_recalc_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = and i32 %4, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %6
  %10 = and i32 %4, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = shl nuw i32 1, %2
  br label %50

14:                                               ; preds = %9
  %15 = and i32 %4, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = icmp eq i32 %2, 0
  %19 = and i32 %5, 255
  %20 = shl nuw i32 1, %19
  %21 = select i1 %18, i32 %20, i32 %2
  br label %50

22:                                               ; preds = %14
  %23 = icmp eq ptr %3, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.clk_div_table, ptr %3, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %3, align 4
  %30 = icmp eq i32 %29, %2
  br i1 %30, label %50, label %31

31:                                               ; preds = %36, %28
  %32 = phi ptr [ %37, %36 ], [ %3, %28 ]
  %33 = getelementptr %struct.clk_div_table, ptr %32, i32 1, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = getelementptr %struct.clk_div_table, ptr %32, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %2
  br i1 %39, label %50, label %31

40:                                               ; preds = %22
  %41 = add i32 %2, 1
  br label %42

42:                                               ; preds = %40, %6
  %43 = phi i32 [ %41, %40 ], [ %2, %6 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42, %31, %24
  %46 = and i32 %4, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %64, !prof !8

48:                                               ; preds = %45
  %49 = tail call ptr @clk_hw_get_name(ptr noundef %0) #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %49) #7
  br label %64

50:                                               ; preds = %42, %36, %28, %17, %12
  %51 = phi i32 [ %43, %42 ], [ %26, %28 ], [ %21, %17 ], [ %13, %12 ], [ %34, %36 ]
  %52 = zext i32 %1 to i64
  %53 = zext i32 %51 to i64
  %54 = add nsw i64 %53, -1
  %55 = add nsw i64 %54, %52
  %56 = icmp ult i64 %55, 4294967296
  br i1 %56, label %57, label %60, !prof !9

57:                                               ; preds = %50
  %58 = trunc i64 %55 to i32
  %59 = udiv i32 %58, %51
  br label %64

60:                                               ; preds = %50
  %61 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %51, i64 %55) #8, !srcloc !10
  %62 = extractvalue { i64, i64 } %61, 1
  %63 = trunc i64 %62 to i32
  br label %64

64:                                               ; preds = %60, %57, %48, %45
  %65 = phi i32 [ %1, %48 ], [ %1, %45 ], [ %59, %57 ], [ %63, %60 ]
  ret i32 %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @divider_determine_rate(ptr noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %1, align 4
  %9 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, 0
  %12 = select i1 %11, i32 1, i32 %8
  %13 = and i32 %4, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = zext i8 %3 to i32
  %17 = shl nsw i32 -1, %16
  %18 = xor i32 %17, -1
  br label %52

19:                                               ; preds = %5
  %20 = and i32 %4, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = zext i8 %3 to i32
  %24 = shl nsw i32 -1, %23
  %25 = xor i32 %24, -1
  %26 = shl nuw i32 1, %25
  br label %52

27:                                               ; preds = %19
  %28 = icmp eq ptr %2, null
  %29 = zext i8 %3 to i32
  br i1 %28, label %50, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.clk_div_table, ptr %2, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %44, %30
  %35 = phi i32 [ %48, %44 ], [ %32, %30 ]
  %36 = phi ptr [ %46, %44 ], [ %2, %30 ]
  %37 = phi i32 [ %45, %44 ], [ 0, %30 ]
  %38 = icmp ugt i32 %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, ptr %36, align 4
  %41 = lshr i32 %40, %29
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 %35, i32 %37
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i32 [ %37, %34 ], [ %43, %39 ]
  %46 = getelementptr %struct.clk_div_table, ptr %36, i32 1
  %47 = getelementptr %struct.clk_div_table, ptr %36, i32 1, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %34

50:                                               ; preds = %27
  %51 = shl nuw i32 1, %29
  br label %52

52:                                               ; preds = %50, %44, %30, %22, %15
  %53 = phi i32 [ %18, %15 ], [ %26, %22 ], [ %51, %50 ], [ 0, %30 ], [ %45, %44 ]
  %54 = tail call i32 @clk_hw_get_flags(ptr noundef %0) #7
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %220

57:                                               ; preds = %52
  %58 = load i32, ptr %9, align 4
  %59 = and i32 %4, 16
  %60 = icmp eq i32 %59, 0
  %61 = zext i32 %58 to i64
  %62 = zext i32 %12 to i64
  br i1 %60, label %168, label %63

63:                                               ; preds = %57
  %64 = add nsw i64 %61, -1
  %65 = add nsw i64 %64, %62
  %66 = icmp ult i64 %65, 4294967296
  br i1 %66, label %67, label %70, !prof !9

67:                                               ; preds = %63
  %68 = trunc i64 %65 to i32
  %69 = udiv i32 %68, %12
  br label %74

70:                                               ; preds = %63
  %71 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %65) #8, !srcloc !10
  %72 = extractvalue { i64, i64 } %71, 1
  %73 = trunc i64 %72 to i32
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i32 [ %69, %67 ], [ %73, %70 ]
  %76 = udiv i32 %58, %12
  %77 = and i32 %4, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %74
  %80 = add i32 %75, -1
  %81 = icmp eq i32 %80, 0
  %82 = tail call i32 @llvm.ctlz.i32(i32 %80, i1 false) #7, !range !11
  %83 = sub nuw nsw i32 32, %82
  %84 = shl nuw i32 1, %83
  %85 = select i1 %81, i32 1, i32 %84
  %86 = tail call i32 @llvm.ctlz.i32(i32 %76, i1 false) #7, !range !11
  %87 = lshr i32 -2147483648, %86
  br label %137

88:                                               ; preds = %74
  %89 = icmp eq ptr %2, null
  br i1 %89, label %137, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.clk_div_table, ptr %2, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %137, label %94

94:                                               ; preds = %99, %90
  %95 = phi i32 [ %108, %99 ], [ %92, %90 ]
  %96 = phi i32 [ %105, %99 ], [ 2147483647, %90 ]
  %97 = phi ptr [ %106, %99 ], [ %2, %90 ]
  %98 = icmp eq i32 %95, %75
  br i1 %98, label %110, label %99

99:                                               ; preds = %94
  %100 = icmp ult i32 %95, %75
  %101 = sub i32 %95, %75
  %102 = sub i32 %96, %75
  %103 = icmp ult i32 %101, %102
  %104 = select i1 %103, i32 %95, i32 %96
  %105 = select i1 %100, i32 %96, i32 %104
  %106 = getelementptr %struct.clk_div_table, ptr %97, i32 1
  %107 = getelementptr %struct.clk_div_table, ptr %97, i32 1, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %94

110:                                              ; preds = %99, %94
  %111 = phi i32 [ %105, %99 ], [ %75, %94 ]
  br label %112

112:                                              ; preds = %112, %110
  %113 = phi i32 [ %119, %112 ], [ %92, %110 ]
  %114 = phi ptr [ %117, %112 ], [ %2, %110 ]
  %115 = phi i32 [ %116, %112 ], [ -1, %110 ]
  %116 = tail call i32 @llvm.umin.i32(i32 %113, i32 %115) #7
  %117 = getelementptr %struct.clk_div_table, ptr %114, i32 1
  %118 = getelementptr %struct.clk_div_table, ptr %114, i32 1, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %112

121:                                              ; preds = %126, %112
  %122 = phi i32 [ %135, %126 ], [ %92, %112 ]
  %123 = phi i32 [ %132, %126 ], [ %116, %112 ]
  %124 = phi ptr [ %133, %126 ], [ %2, %112 ]
  %125 = icmp eq i32 %76, %122
  br i1 %125, label %137, label %126

126:                                              ; preds = %121
  %127 = icmp ult i32 %76, %122
  %128 = sub i32 %76, %122
  %129 = sub i32 %76, %123
  %130 = icmp ult i32 %128, %129
  %131 = select i1 %130, i32 %122, i32 %123
  %132 = select i1 %127, i32 %123, i32 %131
  %133 = getelementptr %struct.clk_div_table, ptr %124, i32 1
  %134 = getelementptr %struct.clk_div_table, ptr %124, i32 1, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %121

137:                                              ; preds = %126, %121, %90, %88, %79
  %138 = phi i32 [ %87, %79 ], [ %76, %88 ], [ -1, %90 ], [ %132, %126 ], [ %76, %121 ]
  %139 = phi i32 [ %85, %79 ], [ %75, %88 ], [ 2147483647, %90 ], [ %111, %121 ], [ %111, %126 ]
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %64, %140
  %142 = icmp ult i64 %141, 4294967296
  br i1 %142, label %143, label %146, !prof !9

143:                                              ; preds = %137
  %144 = trunc i64 %141 to i32
  %145 = udiv i32 %144, %139
  br label %150

146:                                              ; preds = %137
  %147 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %139, i64 %141) #8, !srcloc !10
  %148 = extractvalue { i64, i64 } %147, 1
  %149 = trunc i64 %148 to i32
  br label %150

150:                                              ; preds = %146, %143
  %151 = phi i32 [ %145, %143 ], [ %149, %146 ]
  %152 = sext i32 %138 to i64
  %153 = add nsw i64 %64, %152
  %154 = icmp ult i64 %153, 4294967296
  br i1 %154, label %155, label %158, !prof !9

155:                                              ; preds = %150
  %156 = trunc i64 %153 to i32
  %157 = udiv i32 %156, %138
  br label %162

158:                                              ; preds = %150
  %159 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %138, i64 %153) #8, !srcloc !10
  %160 = extractvalue { i64, i64 } %159, 1
  %161 = trunc i64 %160 to i32
  br label %162

162:                                              ; preds = %158, %155
  %163 = phi i32 [ %157, %155 ], [ %161, %158 ]
  %164 = sub i32 %12, %151
  %165 = sub i32 %163, %12
  %166 = icmp ugt i32 %164, %165
  %167 = select i1 %166, i32 %138, i32 %139
  br label %213

168:                                              ; preds = %57
  %169 = add nsw i64 %62, -1
  %170 = add nsw i64 %169, %61
  %171 = icmp ult i64 %170, 4294967296
  br i1 %171, label %172, label %175, !prof !9

172:                                              ; preds = %168
  %173 = trunc i64 %170 to i32
  %174 = udiv i32 %173, %12
  br label %179

175:                                              ; preds = %168
  %176 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %170) #8, !srcloc !10
  %177 = extractvalue { i64, i64 } %176, 1
  %178 = trunc i64 %177 to i32
  br label %179

179:                                              ; preds = %175, %172
  %180 = phi i32 [ %174, %172 ], [ %178, %175 ]
  %181 = and i32 %4, 2
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %179
  %184 = add i32 %180, -1
  %185 = icmp eq i32 %184, 0
  %186 = tail call i32 @llvm.ctlz.i32(i32 %184, i1 false) #7, !range !11
  %187 = sub nuw nsw i32 32, %186
  %188 = shl nuw i32 1, %187
  %189 = select i1 %185, i32 1, i32 %188
  br label %190

190:                                              ; preds = %183, %179
  %191 = phi i32 [ %189, %183 ], [ %180, %179 ]
  %192 = icmp eq ptr %2, null
  br i1 %192, label %213, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.clk_div_table, ptr %2, i32 0, i32 1
  %195 = load i32, ptr %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %217, label %197

197:                                              ; preds = %202, %193
  %198 = phi i32 [ %211, %202 ], [ %195, %193 ]
  %199 = phi i32 [ %208, %202 ], [ 2147483647, %193 ]
  %200 = phi ptr [ %209, %202 ], [ %2, %193 ]
  %201 = icmp eq i32 %198, %191
  br i1 %201, label %213, label %202

202:                                              ; preds = %197
  %203 = icmp ult i32 %198, %191
  %204 = sub i32 %198, %191
  %205 = sub i32 %199, %191
  %206 = icmp ult i32 %204, %205
  %207 = select i1 %206, i32 %198, i32 %199
  %208 = select i1 %203, i32 %199, i32 %207
  %209 = getelementptr %struct.clk_div_table, ptr %200, i32 1
  %210 = getelementptr %struct.clk_div_table, ptr %200, i32 1, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %197

213:                                              ; preds = %202, %197, %190, %162
  %214 = phi i32 [ %167, %162 ], [ %191, %190 ], [ %208, %202 ], [ %191, %197 ]
  %215 = icmp eq i32 %214, 0
  %216 = select i1 %215, i32 1, i32 %214
  br label %217

217:                                              ; preds = %213, %193
  %218 = phi i32 [ 2147483647, %193 ], [ %216, %213 ]
  %219 = tail call i32 @llvm.umin.i32(i32 %218, i32 %53) #7
  br label %363

220:                                              ; preds = %52
  %221 = udiv i32 -1, %12
  %222 = tail call i32 @llvm.umin.i32(i32 %221, i32 %53) #7
  %223 = and i32 %4, 2
  %224 = icmp eq i32 %223, 0
  %225 = icmp ne ptr %2, null
  %226 = and i1 %225, %224
  br i1 %226, label %227, label %245

227:                                              ; preds = %220
  %228 = getelementptr inbounds %struct.clk_div_table, ptr %2, i32 0, i32 1
  %229 = load i32, ptr %228, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %245, label %231

231:                                              ; preds = %236, %227
  %232 = phi i32 [ %243, %236 ], [ %229, %227 ]
  %233 = phi i32 [ %240, %236 ], [ 2147483647, %227 ]
  %234 = phi ptr [ %241, %236 ], [ %2, %227 ]
  %235 = icmp eq i32 %232, 1
  br i1 %235, label %245, label %236

236:                                              ; preds = %231
  %237 = add i32 %232, -1
  %238 = add i32 %233, -1
  %239 = icmp ult i32 %237, %238
  %240 = select i1 %239, i32 %232, i32 %233
  %241 = getelementptr %struct.clk_div_table, ptr %234, i32 1
  %242 = getelementptr %struct.clk_div_table, ptr %234, i32 1, i32 1
  %243 = load i32, ptr %242, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %231

245:                                              ; preds = %236, %231, %227, %220
  %246 = phi i32 [ 2147483647, %227 ], [ 1, %220 ], [ 1, %231 ], [ %240, %236 ]
  %247 = icmp ugt i32 %246, %222
  br i1 %247, label %324, label %248

248:                                              ; preds = %245
  %249 = and i32 %4, 16
  %250 = icmp eq i32 %249, 0
  %251 = icmp eq ptr %2, null
  %252 = getelementptr inbounds %struct.clk_div_table, ptr %2, i32 0, i32 1
  br label %253

253:                                              ; preds = %317, %248
  %254 = phi i32 [ %246, %248 ], [ %318, %317 ]
  %255 = phi i32 [ 0, %248 ], [ %290, %317 ]
  %256 = phi i32 [ 0, %248 ], [ %289, %317 ]
  %257 = mul i32 %254, %12
  %258 = icmp eq i32 %257, %10
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  store i32 %10, ptr %9, align 4
  br label %363

260:                                              ; preds = %253
  %261 = tail call i32 @clk_hw_round_rate(ptr noundef %7, i32 noundef %257) #7
  %262 = zext i32 %261 to i64
  %263 = sext i32 %254 to i64
  %264 = add nsw i64 %263, -1
  %265 = add nsw i64 %264, %262
  %266 = icmp eq i32 %254, 0
  %267 = icmp ult i64 %265, 4294967296
  br i1 %267, label %268, label %271, !prof !9

268:                                              ; preds = %260
  %269 = trunc i64 %265 to i32
  %270 = udiv i32 %269, %254
  br label %275

271:                                              ; preds = %260
  %272 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %254, i64 %265) #8, !srcloc !10
  %273 = extractvalue { i64, i64 } %272, 1
  %274 = trunc i64 %273 to i32
  br label %275

275:                                              ; preds = %271, %268
  %276 = phi i32 [ %270, %268 ], [ %274, %271 ]
  br i1 %250, label %283, label %277

277:                                              ; preds = %275
  %278 = sub i32 %12, %276
  %279 = tail call i32 @llvm.abs.i32(i32 %278, i1 false) #7
  %280 = sub i32 %12, %256
  %281 = tail call i32 @llvm.abs.i32(i32 %280, i1 false) #7
  %282 = icmp slt i32 %279, %281
  br i1 %282, label %287, label %288

283:                                              ; preds = %275
  %284 = icmp uge i32 %12, %276
  %285 = icmp ugt i32 %276, %256
  %286 = and i1 %284, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %283, %277
  store i32 %261, ptr %9, align 4
  br label %288

288:                                              ; preds = %287, %283, %277
  %289 = phi i32 [ %276, %287 ], [ %256, %283 ], [ %256, %277 ]
  %290 = phi i32 [ %254, %287 ], [ %255, %283 ], [ %255, %277 ]
  %291 = add i32 %254, 1
  br i1 %224, label %297, label %292

292:                                              ; preds = %288
  %293 = tail call i32 @llvm.ctlz.i32(i32 %254, i1 false) #7, !range !11
  %294 = sub nuw nsw i32 32, %293
  %295 = shl nuw i32 1, %294
  %296 = select i1 %266, i32 1, i32 %295
  br label %317

297:                                              ; preds = %288
  br i1 %251, label %317, label %298

298:                                              ; preds = %297
  %299 = load i32, ptr %252, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %317, label %301

301:                                              ; preds = %306, %298
  %302 = phi i32 [ %315, %306 ], [ %299, %298 ]
  %303 = phi i32 [ %312, %306 ], [ 2147483647, %298 ]
  %304 = phi ptr [ %313, %306 ], [ %2, %298 ]
  %305 = icmp eq i32 %302, %291
  br i1 %305, label %317, label %306

306:                                              ; preds = %301
  %307 = icmp ult i32 %302, %291
  %308 = sub i32 %302, %291
  %309 = sub i32 %303, %291
  %310 = icmp ult i32 %308, %309
  %311 = select i1 %310, i32 %302, i32 %303
  %312 = select i1 %307, i32 %303, i32 %311
  %313 = getelementptr %struct.clk_div_table, ptr %304, i32 1
  %314 = getelementptr %struct.clk_div_table, ptr %304, i32 1, i32 1
  %315 = load i32, ptr %314, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %301

317:                                              ; preds = %306, %301, %298, %297, %292
  %318 = phi i32 [ %296, %292 ], [ %291, %297 ], [ 2147483647, %298 ], [ %291, %301 ], [ %312, %306 ]
  %319 = icmp ugt i32 %318, %222
  br i1 %319, label %320, label %253

320:                                              ; preds = %317
  %321 = icmp eq i32 %290, 0
  br i1 %321, label %324, label %322

322:                                              ; preds = %320
  %323 = load i32, ptr %9, align 4
  br label %363

324:                                              ; preds = %320, %245
  br i1 %14, label %329, label %325

325:                                              ; preds = %324
  %326 = zext i8 %3 to i32
  %327 = shl nsw i32 -1, %326
  %328 = xor i32 %327, -1
  br label %360

329:                                              ; preds = %324
  br i1 %224, label %335, label %330

330:                                              ; preds = %329
  %331 = zext i8 %3 to i32
  %332 = shl nsw i32 -1, %331
  %333 = xor i32 %332, -1
  %334 = shl nuw i32 1, %333
  br label %360

335:                                              ; preds = %329
  %336 = icmp eq ptr %2, null
  %337 = zext i8 %3 to i32
  br i1 %336, label %358, label %338

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.clk_div_table, ptr %2, i32 0, i32 1
  %340 = load i32, ptr %339, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %360, label %342

342:                                              ; preds = %352, %338
  %343 = phi i32 [ %356, %352 ], [ %340, %338 ]
  %344 = phi ptr [ %354, %352 ], [ %2, %338 ]
  %345 = phi i32 [ %353, %352 ], [ 0, %338 ]
  %346 = icmp ugt i32 %343, %345
  br i1 %346, label %347, label %352

347:                                              ; preds = %342
  %348 = load i32, ptr %344, align 4
  %349 = lshr i32 %348, %337
  %350 = icmp eq i32 %349, 0
  %351 = select i1 %350, i32 %343, i32 %345
  br label %352

352:                                              ; preds = %347, %342
  %353 = phi i32 [ %345, %342 ], [ %351, %347 ]
  %354 = getelementptr %struct.clk_div_table, ptr %344, i32 1
  %355 = getelementptr %struct.clk_div_table, ptr %344, i32 1, i32 1
  %356 = load i32, ptr %355, align 4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %360, label %342

358:                                              ; preds = %335
  %359 = shl nuw i32 1, %337
  br label %360

360:                                              ; preds = %358, %352, %338, %330, %325
  %361 = phi i32 [ %328, %325 ], [ %334, %330 ], [ %359, %358 ], [ 0, %338 ], [ %353, %352 ]
  %362 = tail call i32 @clk_hw_round_rate(ptr noundef %7, i32 noundef 1) #7
  store i32 %362, ptr %9, align 4
  br label %363

363:                                              ; preds = %360, %322, %259, %217
  %364 = phi i32 [ %10, %259 ], [ %58, %217 ], [ %323, %322 ], [ %362, %360 ]
  %365 = phi i32 [ %254, %259 ], [ %219, %217 ], [ %290, %322 ], [ %361, %360 ]
  %366 = zext i32 %364 to i64
  %367 = sext i32 %365 to i64
  %368 = add nsw i64 %367, -1
  %369 = add nsw i64 %368, %366
  %370 = icmp ult i64 %369, 4294967296
  br i1 %370, label %371, label %374, !prof !9

371:                                              ; preds = %363
  %372 = trunc i64 %369 to i32
  %373 = udiv i32 %372, %365
  br label %378

374:                                              ; preds = %363
  %375 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %365, i64 %369) #8, !srcloc !10
  %376 = extractvalue { i64, i64 } %375, 1
  %377 = trunc i64 %376 to i32
  br label %378

378:                                              ; preds = %374, %371
  %379 = phi i32 [ %373, %371 ], [ %377, %374 ]
  store i32 %379, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @divider_ro_determine_rate(ptr noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = and i32 %4, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %6
  %10 = and i32 %4, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = shl nuw i32 1, %5
  br label %42

14:                                               ; preds = %9
  %15 = and i32 %4, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = icmp eq i32 %5, 0
  %19 = zext i8 %3 to i32
  %20 = shl nuw i32 1, %19
  %21 = select i1 %18, i32 %20, i32 %5
  br label %42

22:                                               ; preds = %14
  %23 = icmp eq ptr %2, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.clk_div_table, ptr %2, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %2, align 4
  %30 = icmp eq i32 %29, %5
  br i1 %30, label %42, label %31

31:                                               ; preds = %36, %28
  %32 = phi ptr [ %37, %36 ], [ %2, %28 ]
  %33 = getelementptr %struct.clk_div_table, ptr %32, i32 1, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = getelementptr %struct.clk_div_table, ptr %32, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %5
  br i1 %39, label %42, label %31

40:                                               ; preds = %22
  %41 = add i32 %5, 1
  br label %42

42:                                               ; preds = %40, %36, %31, %28, %24, %17, %12, %6
  %43 = phi i32 [ %13, %12 ], [ %21, %17 ], [ %41, %40 ], [ %5, %6 ], [ 0, %24 ], [ %26, %28 ], [ %34, %36 ], [ 0, %31 ]
  %44 = tail call i32 @clk_hw_get_flags(ptr noundef %0) #7
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  br label %59

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %75, label %54

54:                                               ; preds = %50
  %55 = load i32, ptr %1, align 4
  %56 = mul i32 %55, %43
  %57 = tail call i32 @clk_hw_round_rate(ptr noundef nonnull %52, i32 noundef %56) #7
  %58 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %57, ptr %58, align 4
  br label %59

59:                                               ; preds = %54, %47
  %60 = phi i32 [ %49, %47 ], [ %57, %54 ]
  %61 = zext i32 %60 to i64
  %62 = sext i32 %43 to i64
  %63 = add nsw i64 %62, -1
  %64 = add nsw i64 %63, %61
  %65 = icmp ult i64 %64, 4294967296
  br i1 %65, label %66, label %69, !prof !9

66:                                               ; preds = %59
  %67 = trunc i64 %64 to i32
  %68 = udiv i32 %67, %43
  br label %73

69:                                               ; preds = %59
  %70 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %43, i64 %64) #8, !srcloc !10
  %71 = extractvalue { i64, i64 } %70, 1
  %72 = trunc i64 %71 to i32
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i32 [ %68, %66 ], [ %72, %69 ]
  store i32 %74, ptr %1, align 4
  br label %75

75:                                               ; preds = %73, %50
  %76 = phi i32 [ 0, %73 ], [ -22, %50 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @divider_round_rate_parent(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %6) #0 {
  %8 = alloca %struct.clk_rate_request, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #7
  store i32 %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.clk_rate_request, ptr %8, i32 0, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.clk_rate_request, ptr %8, i32 0, i32 2
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.clk_rate_request, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %3, align 4
  store i32 %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.clk_rate_request, ptr %8, i32 0, i32 4
  store ptr %1, ptr %13, align 4
  %14 = call i32 @divider_determine_rate(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %6)
  %15 = load i32, ptr %11, align 4
  store i32 %15, ptr %3, align 4
  %16 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #7
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @divider_ro_round_rate_parent(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca %struct.clk_rate_request, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #7
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.clk_rate_request, ptr %9, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.clk_rate_request, ptr %9, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.clk_rate_request, ptr %9, i32 0, i32 3
  %13 = load i32, ptr %3, align 4
  store i32 %13, ptr %12, align 4
  %14 = getelementptr inbounds %struct.clk_rate_request, ptr %9, i32 0, i32 4
  store ptr %1, ptr %14, align 4
  %15 = call i32 @divider_ro_determine_rate(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load i32, ptr %12, align 4
  store i32 %18, ptr %3, align 4
  %19 = load i32, ptr %9, align 4
  br label %20

20:                                               ; preds = %17, %8
  %21 = phi i32 [ %19, %17 ], [ %15, %8 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #7
  ret i32 %21
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @divider_get_val(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3, i32 noundef %4) #3 {
  %6 = zext i32 %1 to i64
  %7 = zext i32 %0 to i64
  %8 = add nsw i64 %7, -1
  %9 = add nsw i64 %8, %6
  %10 = icmp ult i64 %9, 4294967296
  br i1 %10, label %11, label %14, !prof !9

11:                                               ; preds = %5
  %12 = trunc i64 %9 to i32
  %13 = udiv i32 %12, %0
  br label %18

14:                                               ; preds = %5
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %0, i64 %9) #8, !srcloc !10
  %16 = extractvalue { i64, i64 } %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %13, %11 ], [ %17, %14 ]
  %20 = and i32 %4, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @llvm.ctpop.i32(i32 %19) #7, !range !11
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %42, label %81

25:                                               ; preds = %18
  %26 = icmp eq ptr %2, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %27, %25
  %28 = phi ptr [ %34, %27 ], [ %2, %25 ]
  %29 = getelementptr inbounds %struct.clk_div_table, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  %32 = icmp eq i32 %30, %19
  %33 = or i1 %31, %32
  %34 = getelementptr %struct.clk_div_table, ptr %28, i32 1
  br i1 %33, label %35, label %27

35:                                               ; preds = %27
  br i1 %31, label %81, label %36

36:                                               ; preds = %35
  %37 = and i32 %4, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %75

39:                                               ; preds = %25
  %40 = and i32 %4, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %75

42:                                               ; preds = %22
  %43 = and i32 %4, 1
  %44 = icmp eq i32 %43, 0
  %45 = tail call i32 @llvm.cttz.i32(i32 %19, i1 false) #7, !range !11
  %46 = select i1 %44, i32 %45, i32 %19
  br label %75

47:                                               ; preds = %36
  %48 = and i32 %4, 64
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %53

50:                                               ; preds = %39
  %51 = and i32 %4, 64
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %50, %47
  %54 = zext i8 %3 to i32
  %55 = shl nuw i32 1, %54
  %56 = icmp eq i32 %55, %19
  %57 = select i1 %56, i32 0, i32 %19
  br label %75

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.clk_div_table, ptr %2, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %68, %58
  %63 = phi i32 [ %71, %68 ], [ %60, %58 ]
  %64 = phi ptr [ %69, %68 ], [ %2, %58 ]
  %65 = icmp eq i32 %63, %19
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, ptr %64, align 4
  br label %75

68:                                               ; preds = %62
  %69 = getelementptr %struct.clk_div_table, ptr %64, i32 1
  %70 = getelementptr %struct.clk_div_table, ptr %64, i32 1, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %62

73:                                               ; preds = %50
  %74 = add i32 %19, -1
  br label %75

75:                                               ; preds = %73, %68, %66, %58, %53, %42, %39, %36
  %76 = phi i32 [ %57, %53 ], [ %74, %73 ], [ %19, %36 ], [ %67, %66 ], [ 0, %58 ], [ %19, %39 ], [ %46, %42 ], [ 0, %68 ]
  %77 = zext i8 %3 to i32
  %78 = shl nsw i32 -1, %77
  %79 = xor i32 %78, -1
  %80 = tail call i32 @llvm.umin.i32(i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %75, %35, %22
  %82 = phi i32 [ %80, %75 ], [ -22, %35 ], [ -22, %22 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_divider_recalc_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 2
  %5 = icmp sgt i8 %4, -1
  %6 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7
  br i1 %5, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %12

11:                                               ; preds = %2
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ %8, %11 ]
  %14 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = lshr i32 %13, %16
  %18 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nsw i32 -1, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %17, %22
  %24 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = load i8, ptr %3, align 2
  %27 = zext i8 %26 to i32
  %28 = tail call i32 @divider_recalc_rate(ptr noundef %0, i32 noundef %1, i32 noundef %23, ptr noundef %25, i32 noundef %27, i32 noundef %20)
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_divider_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.clk_rate_request, align 4
  %5 = alloca %struct.clk_rate_request, align 4
  %6 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %48, label %11

11:                                               ; preds = %3
  %12 = icmp sgt i8 %7, -1
  %13 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #7
  br i1 %12, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %19

18:                                               ; preds = %11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ %15, %18 ]
  %21 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 2
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = lshr i32 %20, %23
  %25 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nsw i32 -1, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %24, %29
  %31 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = load i8, ptr %6, align 2
  %34 = zext i8 %33 to i32
  %35 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #7
  store i32 %1, ptr %5, align 4
  %36 = getelementptr inbounds %struct.clk_rate_request, ptr %5, i32 0, i32 1
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.clk_rate_request, ptr %5, i32 0, i32 2
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.clk_rate_request, ptr %5, i32 0, i32 3
  %39 = load i32, ptr %2, align 4
  store i32 %39, ptr %38, align 4
  %40 = getelementptr inbounds %struct.clk_rate_request, ptr %5, i32 0, i32 4
  store ptr %35, ptr %40, align 4
  %41 = call i32 @divider_ro_determine_rate(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %32, i8 noundef zeroext %26, i32 noundef %34, i32 noundef %30) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %19
  %44 = load i32, ptr %38, align 4
  store i32 %44, ptr %2, align 4
  %45 = load i32, ptr %5, align 4
  br label %46

46:                                               ; preds = %43, %19
  %47 = phi i32 [ %45, %43 ], [ %41, %19 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #7
  br label %62

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %52 = load i8, ptr %51, align 1
  %53 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #7
  store i32 %1, ptr %4, align 4
  %54 = getelementptr inbounds %struct.clk_rate_request, ptr %4, i32 0, i32 1
  store i32 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.clk_rate_request, ptr %4, i32 0, i32 2
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.clk_rate_request, ptr %4, i32 0, i32 3
  %57 = load i32, ptr %2, align 4
  store i32 %57, ptr %56, align 4
  %58 = getelementptr inbounds %struct.clk_rate_request, ptr %4, i32 0, i32 4
  store ptr %53, ptr %58, align 4
  %59 = call i32 @divider_determine_rate(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %50, i8 noundef zeroext %52, i32 noundef %8) #7
  %60 = load i32, ptr %56, align 4
  store i32 %60, ptr %2, align 4
  %61 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #7
  br label %62

62:                                               ; preds = %48, %46
  %63 = phi i32 [ %47, %46 ], [ %61, %48 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_divider_determine_rate(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = icmp sgt i8 %4, -1
  %10 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7
  br i1 %9, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %16

15:                                               ; preds = %8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ %12, %15 ]
  %18 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = lshr i32 %17, %20
  %22 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nsw i32 -1, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %21, %26
  %28 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = load i8, ptr %3, align 2
  %31 = zext i8 %30 to i32
  %32 = tail call i32 @divider_ro_determine_rate(ptr noundef %0, ptr noundef %1, ptr noundef %29, i8 noundef zeroext %23, i32 noundef %31, i32 noundef %27)
  br label %39

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %37 = load i8, ptr %36, align 1
  %38 = tail call i32 @divider_determine_rate(ptr noundef %0, ptr noundef %1, ptr noundef %35, i8 noundef zeroext %37, i32 noundef %5)
  br label %39

39:                                               ; preds = %33, %16
  %40 = phi i32 [ %32, %16 ], [ 0, %33 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_divider_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 4
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @divider_get_val(i32 noundef %1, i32 noundef %2, ptr noundef %5, i8 noundef zeroext %7, i32 noundef %10)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %74, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %15) #7
  %19 = load i8, ptr %8, align 2
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i8 [ %19, %17 ], [ %9, %13 ]
  %22 = phi i32 [ %18, %17 ], [ 0, %13 ]
  %23 = and i8 %21, 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load i8, ptr %6, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nsw i32 -1, %27
  %29 = xor i32 %28, -1
  %30 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 2
  %31 = load i8, ptr %30, align 4
  %32 = zext i8 %31 to i32
  %33 = add nuw nsw i32 %32, 16
  %34 = shl i32 %29, %33
  br label %56

35:                                               ; preds = %20
  %36 = icmp sgt i8 %21, -1
  %37 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7
  br i1 %36, label %42, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %43

42:                                               ; preds = %35
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ %39, %42 ]
  %45 = load i8, ptr %6, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nsw i32 -1, %46
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 2
  %50 = load i8, ptr %49, align 4
  %51 = zext i8 %50 to i32
  %52 = shl i32 %48, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %44, %53
  %55 = load i8, ptr %8, align 2
  br label %56

56:                                               ; preds = %43, %25
  %57 = phi i32 [ %51, %43 ], [ %32, %25 ]
  %58 = phi i8 [ %55, %43 ], [ %21, %25 ]
  %59 = phi i32 [ %54, %43 ], [ %34, %25 ]
  %60 = shl i32 %11, %57
  %61 = or i32 %60, %59
  %62 = icmp sgt i8 %58, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  %65 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #7, !srcloc !14
  br label %70

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.clk_divider, ptr %0, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %61) #7, !srcloc !14
  br label %70

70:                                               ; preds = %67, %63
  %71 = load ptr, ptr %14, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %71, i32 noundef %22) #7
  br label %74

74:                                               ; preds = %73, %70, %3
  %75 = phi i32 [ %11, %3 ], [ 0, %70 ], [ 0, %73 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__clk_hw_register_divider(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i8 noundef zeroext %8, i8 noundef zeroext %9, i8 noundef zeroext %10, ptr noundef %11, ptr noundef %12) #0 {
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca %struct.clk_init_data, align 4
  store ptr %3, ptr %14, align 4
  store ptr %4, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %16) #7
  %17 = getelementptr inbounds i8, ptr %16, i32 20
  store i32 0, ptr %17, align 4
  %18 = zext i8 %10 to i32
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %13
  %22 = zext i8 %9 to i32
  %23 = zext i8 %8 to i32
  %24 = add nuw nsw i32 %22, %23
  %25 = icmp ugt i32 %24, 16
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %63

28:                                               ; preds = %21, %13
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 28) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %63, label %32

32:                                               ; preds = %28
  store ptr %2, ptr %16, align 4
  %33 = and i32 %18, 32
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @clk_divider_ops, ptr @clk_divider_ro_ops
  %36 = getelementptr inbounds %struct.clk_init_data, ptr %16, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.clk_init_data, ptr %16, i32 0, i32 6
  store i32 %6, ptr %37, align 4
  %38 = icmp eq ptr %3, null
  %39 = select i1 %38, ptr null, ptr %14
  %40 = getelementptr inbounds %struct.clk_init_data, ptr %16, i32 0, i32 2
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %4, null
  %42 = select i1 %41, ptr null, ptr %15
  %43 = getelementptr inbounds %struct.clk_init_data, ptr %16, i32 0, i32 4
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.clk_init_data, ptr %16, i32 0, i32 3
  store ptr %5, ptr %44, align 4
  %45 = icmp ne ptr %3, null
  %46 = icmp ne ptr %4, null
  %47 = or i1 %45, %46
  %48 = icmp ne ptr %5, null
  %49 = or i1 %48, %47
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.clk_init_data, ptr %16, i32 0, i32 5
  store i8 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.clk_divider, ptr %30, i32 0, i32 1
  store ptr %7, ptr %52, align 4
  %53 = getelementptr inbounds %struct.clk_divider, ptr %30, i32 0, i32 2
  store i8 %8, ptr %53, align 8
  %54 = getelementptr inbounds %struct.clk_divider, ptr %30, i32 0, i32 3
  store i8 %9, ptr %54, align 1
  %55 = getelementptr inbounds %struct.clk_divider, ptr %30, i32 0, i32 4
  store i8 %10, ptr %55, align 2
  %56 = getelementptr inbounds %struct.clk_divider, ptr %30, i32 0, i32 6
  store ptr %12, ptr %56, align 8
  %57 = getelementptr inbounds %struct.clk_hw, ptr %30, i32 0, i32 2
  store ptr %16, ptr %57, align 8
  %58 = getelementptr inbounds %struct.clk_divider, ptr %30, i32 0, i32 5
  store ptr %11, ptr %58, align 4
  %59 = call i32 @clk_hw_register(ptr noundef %0, ptr noundef nonnull %30) #7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %32
  call void @kfree(ptr noundef nonnull %30) #7
  %62 = inttoptr i32 %59 to ptr
  br label %63

63:                                               ; preds = %61, %32, %28, %26
  %64 = phi ptr [ inttoptr (i32 -22 to ptr), %26 ], [ %62, %61 ], [ %30, %32 ], [ inttoptr (i32 -12 to ptr), %28 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %16) #7
  ret ptr %64
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_register_divider_table(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, ptr noundef %8, ptr noundef %9) #0 {
  %11 = tail call ptr @__clk_hw_register_divider(ptr noundef %0, ptr undef, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, ptr noundef %8, ptr noundef %9)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.clk_hw, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi ptr [ %15, %13 ], [ %11, %10 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_unregister_divider(ptr noundef %0) #0 {
  %2 = tail call ptr @__clk_get_hw(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @clk_unregister(ptr noundef %0) #7
  tail call void @kfree(ptr noundef nonnull %2) #7
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_hw_unregister_divider(ptr noundef %0) #0 {
  tail call void @clk_hw_unregister(ptr noundef %0) #7
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_clk_hw_register_divider(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i8 noundef zeroext %8, i8 noundef zeroext %9, i8 noundef zeroext %10, ptr noundef %11, ptr noundef %12) #0 {
  %14 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_hw_release_divider, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.3) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @__clk_hw_register_divider(ptr noundef %0, ptr undef, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i8 noundef zeroext %8, i8 noundef zeroext %9, i8 noundef zeroext %10, ptr noundef %11, ptr noundef %12)
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store ptr %17, ptr %14, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %14) #7
  br label %21

20:                                               ; preds = %16
  tail call void @devres_free(ptr noundef nonnull %14) #7
  br label %21

21:                                               ; preds = %20, %19, %13
  %22 = phi ptr [ %17, %20 ], [ %17, %19 ], [ inttoptr (i32 -12 to ptr), %13 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_clk_hw_release_divider(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @clk_hw_unregister(ptr noundef %3) #7
  tail call void @kfree(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148669025, i64 2148669305, i64 2148669639, i64 2148669973}
!11 = !{i32 0, i32 33}
!12 = !{i64 2151459781}
!13 = !{i64 2151460100}
!14 = !{i64 3909742}
