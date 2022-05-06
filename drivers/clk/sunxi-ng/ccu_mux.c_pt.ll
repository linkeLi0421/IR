; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu_mux.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_mux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_mux_helper_apply_prediv:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_mux_helper_apply_prediv\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_mux_helper_apply_prediv:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_mux_helper_determine_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_mux_helper_determine_rate\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_mux_helper_determine_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_mux_helper_get_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_mux_helper_get_parent\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_mux_helper_get_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_mux_helper_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_mux_helper_set_parent\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_mux_helper_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_mux_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_mux_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_mux_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_mux_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_mux_notifier_register\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_mux_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_mux_internal = type { i8, i8, ptr, ptr, i8, ptr, i8 }
%struct.ccu_mux_fixed_prediv = type { i8, i16 }
%struct.ccu_mux_var_prediv = type { i8, i8, i8 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.ccu_mux_nb = type { %struct.notifier_block, ptr, ptr, i32, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__kstrtab_ccu_mux_helper_apply_prediv = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_mux_helper_apply_prediv = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_mux_helper_apply_prediv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_mux_helper_apply_prediv to i32), ptr @__kstrtab_ccu_mux_helper_apply_prediv, ptr @__kstrtabns_ccu_mux_helper_apply_prediv }, section "___ksymtab_gpl+ccu_mux_helper_apply_prediv", align 4
@__kstrtab_ccu_mux_helper_determine_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_mux_helper_determine_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_mux_helper_determine_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_mux_helper_determine_rate to i32), ptr @__kstrtab_ccu_mux_helper_determine_rate, ptr @__kstrtabns_ccu_mux_helper_determine_rate }, section "___ksymtab_gpl+ccu_mux_helper_determine_rate", align 4
@__kstrtab_ccu_mux_helper_get_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_mux_helper_get_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_mux_helper_get_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_mux_helper_get_parent to i32), ptr @__kstrtab_ccu_mux_helper_get_parent, ptr @__kstrtabns_ccu_mux_helper_get_parent }, section "___ksymtab_gpl+ccu_mux_helper_get_parent", align 4
@__kstrtab_ccu_mux_helper_set_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_mux_helper_set_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_mux_helper_set_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_mux_helper_set_parent to i32), ptr @__kstrtab_ccu_mux_helper_set_parent, ptr @__kstrtabns_ccu_mux_helper_set_parent }, section "___ksymtab_gpl+ccu_mux_helper_set_parent", align 4
@ccu_mux_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @ccu_mux_enable, ptr @ccu_mux_disable, ptr @ccu_mux_is_enabled, ptr null, ptr null, ptr null, ptr @ccu_mux_recalc_rate, ptr null, ptr @__clk_mux_determine_rate, ptr @ccu_mux_set_parent, ptr @ccu_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ccu_mux_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_mux_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_mux_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_mux_ops to i32), ptr @__kstrtab_ccu_mux_ops, ptr @__kstrtabns_ccu_mux_ops }, section "___ksymtab_gpl+ccu_mux_ops", align 4
@__kstrtab_ccu_mux_notifier_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_mux_notifier_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_mux_notifier_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_mux_notifier_register to i32), ptr @__kstrtab_ccu_mux_notifier_register, ptr @__kstrtabns_ccu_mux_notifier_register }, section "___ksymtab_gpl+ccu_mux_notifier_register", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_ccu_mux_helper_apply_prediv, ptr @__ksymtab_ccu_mux_helper_determine_rate, ptr @__ksymtab_ccu_mux_helper_get_parent, ptr @__ksymtab_ccu_mux_helper_set_parent, ptr @__ksymtab_ccu_mux_notifier_register, ptr @__ksymtab_ccu_mux_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ccu_mux_helper_apply_prediv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc zeroext i16 @ccu_mux_get_prediv(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %6 = zext i16 %5 to i32
  %7 = udiv i32 %3, %6
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @ccu_mux_get_prediv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %97, label %8

8:                                                ; preds = %3
  %9 = and i32 %5, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = trunc i32 %13 to i16
  br label %97

15:                                               ; preds = %8
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 1
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %16, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %22 = icmp slt i32 %2, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load i8, ptr %1, align 4
  %25 = zext i8 %24 to i32
  %26 = lshr i32 %21, %25
  %27 = getelementptr inbounds %struct.ccu_mux_internal, ptr %1, i32 0, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nsw i32 -1, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %26, %31
  br label %33

33:                                               ; preds = %23, %15
  %34 = phi i32 [ %32, %23 ], [ %2, %15 ]
  %35 = load i32, ptr %4, align 4
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ccu_mux_internal, ptr %1, i32 0, i32 4
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = icmp eq i8 %40, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ccu_mux_internal, ptr %1, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  br label %46

46:                                               ; preds = %56, %43
  %47 = phi i32 [ 0, %43 ], [ %58, %56 ]
  %48 = phi i16 [ 1, %43 ], [ %57, %56 ]
  %49 = getelementptr %struct.ccu_mux_fixed_prediv, ptr %45, i32 %47
  %50 = load i8, ptr %49, align 2
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %34, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = getelementptr %struct.ccu_mux_fixed_prediv, ptr %45, i32 %47, i32 1
  %55 = load i16, ptr %54, align 2
  br label %56

56:                                               ; preds = %53, %46
  %57 = phi i16 [ %55, %53 ], [ %48, %46 ]
  %58 = add nuw nsw i32 %47, 1
  %59 = icmp eq i32 %58, %41
  br i1 %59, label %60, label %46

60:                                               ; preds = %56, %38, %33
  %61 = phi i16 [ 1, %33 ], [ 1, %38 ], [ %57, %56 ]
  %62 = and i32 %35, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %97, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ccu_mux_internal, ptr %1, i32 0, i32 6
  %66 = load i8, ptr %65, align 4
  %67 = zext i8 %66 to i32
  %68 = icmp eq i8 %66, 0
  br i1 %68, label %97, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.ccu_mux_internal, ptr %1, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  br label %72

72:                                               ; preds = %93, %69
  %73 = phi i32 [ 0, %69 ], [ %95, %93 ]
  %74 = phi i16 [ %61, %69 ], [ %94, %93 ]
  %75 = getelementptr %struct.ccu_mux_var_prediv, ptr %71, i32 %73
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %34, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %72
  %80 = getelementptr %struct.ccu_mux_var_prediv, ptr %71, i32 %73, i32 1
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = lshr i32 %21, %82
  %84 = getelementptr %struct.ccu_mux_var_prediv, ptr %71, i32 %73, i32 2
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl nsw i32 -1, %86
  %88 = xor i32 %87, -1
  %89 = and i32 %83, %88
  %90 = trunc i32 %89 to i16
  %91 = and i16 %90, 255
  %92 = add nuw nsw i16 %91, 1
  br label %93

93:                                               ; preds = %79, %72
  %94 = phi i16 [ %92, %79 ], [ %74, %72 ]
  %95 = add nuw nsw i32 %73, 1
  %96 = icmp eq i32 %95, %67
  br i1 %96, label %97, label %72

97:                                               ; preds = %93, %64, %60, %11, %3
  %98 = phi i16 [ %14, %11 ], [ 1, %3 ], [ %61, %60 ], [ %61, %64 ], [ %94, %93 ]
  ret i16 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ccu_mux_helper_determine_rate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 6
  %9 = tail call i32 @clk_hw_get_flags(ptr noundef %8) #3
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = call i32 @clk_hw_get_num_parents(ptr noundef %8) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %70, label %27

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  %16 = tail call ptr @clk_hw_get_parent(ptr noundef %8) #3
  %17 = tail call i32 @clk_hw_get_rate(ptr noundef %16) #3
  %18 = tail call fastcc zeroext i16 @ccu_mux_get_prediv(ptr noundef %0, ptr noundef %1, i32 noundef -1) #3
  %19 = zext i16 %18 to i32
  %20 = udiv i32 %17, %19
  store i32 %20, ptr %6, align 4
  %21 = load i32, ptr %2, align 4
  %22 = call i32 %3(ptr noundef %1, ptr noundef %16, ptr noundef nonnull %6, i32 noundef %21, ptr noundef %4) #3
  %23 = load i32, ptr %6, align 4
  %24 = call fastcc zeroext i16 @ccu_mux_get_prediv(ptr noundef %0, ptr noundef %1, i32 noundef -1) #3
  %25 = zext i16 %24 to i32
  %26 = mul i32 %23, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  br label %64

27:                                               ; preds = %55, %12
  %28 = phi i32 [ %59, %55 ], [ 0, %12 ]
  %29 = phi ptr [ %58, %55 ], [ null, %12 ]
  %30 = phi i32 [ %57, %55 ], [ 0, %12 ]
  %31 = phi i32 [ %56, %55 ], [ 0, %12 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  store i32 0, ptr %7, align 4, !annotation !10
  %32 = call ptr @clk_hw_get_parent_by_index(ptr noundef %8, i32 noundef %28) #3
  %33 = icmp eq ptr %32, null
  br i1 %33, label %55, label %34

34:                                               ; preds = %27
  %35 = call i32 @clk_hw_get_rate(ptr noundef nonnull %32) #3
  %36 = call fastcc zeroext i16 @ccu_mux_get_prediv(ptr noundef %0, ptr noundef %1, i32 noundef %28) #3
  %37 = zext i16 %36 to i32
  %38 = udiv i32 %35, %37
  store i32 %38, ptr %7, align 4
  %39 = load i32, ptr %2, align 4
  %40 = call i32 %3(ptr noundef %1, ptr noundef nonnull %32, ptr noundef nonnull %7, i32 noundef %39, ptr noundef %4) #3
  %41 = load i32, ptr %7, align 4
  %42 = call fastcc zeroext i16 @ccu_mux_get_prediv(ptr noundef %0, ptr noundef %1, i32 noundef %28) #3
  %43 = zext i16 %42 to i32
  %44 = mul i32 %41, %43
  %45 = load i32, ptr %2, align 4
  %46 = icmp eq i32 %45, %40
  br i1 %46, label %54, label %47

47:                                               ; preds = %34
  %48 = sub i32 %45, %40
  %49 = sub i32 %45, %30
  %50 = icmp ult i32 %48, %49
  %51 = select i1 %50, i32 %44, i32 %31
  %52 = select i1 %50, i32 %40, i32 %30
  %53 = select i1 %50, ptr %32, ptr %29
  br label %55

54:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  br label %64

55:                                               ; preds = %47, %27
  %56 = phi i32 [ %31, %27 ], [ %51, %47 ]
  %57 = phi i32 [ %30, %27 ], [ %52, %47 ]
  %58 = phi ptr [ %29, %27 ], [ %53, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  %59 = add nuw i32 %28, 1
  %60 = call i32 @clk_hw_get_num_parents(ptr noundef %8) #3
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %27, label %62

62:                                               ; preds = %55
  %63 = icmp eq i32 %57, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %62, %54, %15
  %65 = phi i32 [ %26, %15 ], [ %44, %54 ], [ %56, %62 ]
  %66 = phi i32 [ %22, %15 ], [ %40, %54 ], [ %57, %62 ]
  %67 = phi ptr [ %16, %15 ], [ %32, %54 ], [ %58, %62 ]
  %68 = getelementptr inbounds %struct.clk_rate_request, ptr %2, i32 0, i32 4
  store ptr %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.clk_rate_request, ptr %2, i32 0, i32 3
  store i32 %65, ptr %69, align 4
  store i32 %66, ptr %2, align 4
  br label %70

70:                                               ; preds = %64, %62, %12
  %71 = phi i32 [ 0, %64 ], [ -22, %62 ], [ -22, %12 ]
  ret i32 %71
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @ccu_mux_helper_get_parent(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %9 = load i8, ptr %1, align 4
  %10 = zext i8 %9 to i32
  %11 = lshr i32 %8, %10
  %12 = getelementptr inbounds %struct.ccu_mux_internal, ptr %1, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nsw i32 -1, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %11, %16
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.ccu_mux_internal, ptr %1, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 6
  %24 = tail call i32 @clk_hw_get_num_parents(ptr noundef %23) #3
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load ptr, ptr %19, align 4
  br label %28

28:                                               ; preds = %35, %26
  %29 = phi i32 [ 0, %26 ], [ %36, %35 ]
  %30 = getelementptr i8, ptr %27, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, %18
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = trunc i32 %29 to i8
  br label %38

35:                                               ; preds = %28
  %36 = add nuw nsw i32 %29, 1
  %37 = icmp eq i32 %36, %24
  br i1 %37, label %38, label %28

38:                                               ; preds = %35, %33, %22, %2
  %39 = phi i8 [ %34, %33 ], [ %18, %2 ], [ %18, %22 ], [ %18, %35 ]
  ret i8 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ccu_mux_helper_set_parent(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.ccu_mux_internal, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = zext i8 %2 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = load i8, ptr %9, align 1
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i8 [ %10, %7 ], [ %2, %3 ]
  %13 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #3
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 1
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %16, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %22 = load i8, ptr %1, align 4
  %23 = zext i8 %22 to i32
  %24 = shl nsw i32 -1, %23
  %25 = getelementptr inbounds %struct.ccu_mux_internal, ptr %1, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = add nuw nsw i32 %23, %27
  %29 = sub nsw i32 32, %28
  %30 = lshr i32 -1, %29
  %31 = and i32 %30, %24
  %32 = xor i32 %31, -1
  %33 = and i32 %21, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %34 = zext i8 %12 to i32
  %35 = load i8, ptr %1, align 4
  %36 = zext i8 %35 to i32
  %37 = shl i32 %34, %36
  %38 = or i32 %33, %37
  %39 = load ptr, ptr %0, align 4
  %40 = load i16, ptr %17, align 4
  %41 = zext i16 %40 to i32
  %42 = getelementptr i8, ptr %39, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %38) #3, !srcloc !14
  %43 = load ptr, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %15) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mux_enable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @ccu_gate_helper_enable(ptr noundef %3, i32 noundef %4) #3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ccu_mux_disable(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %3, i32 noundef %4) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mux_is_enabled(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @ccu_gate_helper_is_enabled(ptr noundef %3, i32 noundef %4) #3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mux_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = getelementptr i8, ptr %0, i32 -44
  %5 = tail call fastcc zeroext i16 @ccu_mux_get_prediv(ptr noundef %3, ptr noundef %4, i32 noundef -1) #3
  %6 = zext i16 %5 to i32
  %7 = udiv i32 %1, %6
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mux_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -40
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = zext i8 %1 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = load i8, ptr %8, align 1
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i8 [ %9, %6 ], [ %1, %2 ]
  %12 = getelementptr i8, ptr %0, i32 -44
  %13 = getelementptr i8, ptr %0, i32 -20
  %14 = getelementptr i8, ptr %0, i32 -4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #3
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr i8, ptr %0, i32 -16
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %17, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %23 = load i8, ptr %12, align 4
  %24 = zext i8 %23 to i32
  %25 = shl nsw i32 -1, %24
  %26 = getelementptr i8, ptr %0, i32 -43
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = add nuw nsw i32 %24, %28
  %30 = sub nsw i32 32, %29
  %31 = lshr i32 -1, %30
  %32 = and i32 %31, %25
  %33 = xor i32 %32, -1
  %34 = and i32 %22, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %35 = zext i8 %11 to i32
  %36 = load i8, ptr %12, align 4
  %37 = zext i8 %36 to i32
  %38 = shl i32 %35, %37
  %39 = or i32 %34, %38
  %40 = load ptr, ptr %13, align 4
  %41 = load i16, ptr %18, align 4
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %40, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %39) #3, !srcloc !14
  %44 = load ptr, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %44, i32 noundef %16) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @ccu_mux_get_parent(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -44
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %10 = load i8, ptr %3, align 4
  %11 = zext i8 %10 to i32
  %12 = lshr i32 %9, %11
  %13 = getelementptr i8, ptr %0, i32 -43
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nsw i32 -1, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %12, %17
  %19 = trunc i32 %18 to i8
  %20 = getelementptr i8, ptr %0, i32 -40
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %1
  %24 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #3
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load ptr, ptr %20, align 4
  br label %28

28:                                               ; preds = %35, %26
  %29 = phi i32 [ 0, %26 ], [ %36, %35 ]
  %30 = getelementptr i8, ptr %27, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, %19
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = trunc i32 %29 to i8
  br label %38

35:                                               ; preds = %28
  %36 = add nuw nsw i32 %29, 1
  %37 = icmp eq i32 %36, %24
  br i1 %37, label %38, label %28

38:                                               ; preds = %35, %33, %23, %1
  %39 = phi i8 [ %34, %33 ], [ %19, %1 ], [ %19, %23 ], [ %19, %35 ]
  ret i8 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ccu_mux_notifier_register(ptr noundef %0, ptr noundef %1) #0 {
  store ptr @ccu_mux_notifier_cb, ptr %1, align 4
  %3 = tail call i32 @clk_notifier_register(ptr noundef %0, ptr noundef %1) #3
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_mux_notifier_cb(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  switch i32 %1, label %140 [
    i32 1, label %4
    i32 2, label %90
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.ccu_mux_nb, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ccu_mux_nb, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.ccu_common, ptr %6, i32 0, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %15 = load i8, ptr %8, align 4
  %16 = zext i8 %15 to i32
  %17 = lshr i32 %14, %16
  %18 = getelementptr inbounds %struct.ccu_mux_internal, ptr %8, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nsw i32 -1, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %17, %22
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.ccu_mux_internal, ptr %8, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.ccu_common, ptr %6, i32 0, i32 6
  %30 = tail call i32 @clk_hw_get_num_parents(ptr noundef %29) #3
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load ptr, ptr %25, align 4
  br label %34

34:                                               ; preds = %41, %32
  %35 = phi i32 [ 0, %32 ], [ %42, %41 ]
  %36 = getelementptr i8, ptr %33, i32 %35
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, %24
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = trunc i32 %35 to i8
  br label %44

41:                                               ; preds = %34
  %42 = add nuw nsw i32 %35, 1
  %43 = icmp eq i32 %42, %30
  br i1 %43, label %44, label %34

44:                                               ; preds = %41, %39, %28, %4
  %45 = phi i8 [ %40, %39 ], [ %24, %4 ], [ %24, %28 ], [ %24, %41 ]
  %46 = getelementptr inbounds %struct.ccu_mux_nb, ptr %0, i32 0, i32 5
  store i8 %45, ptr %46, align 1
  %47 = load ptr, ptr %5, align 4
  %48 = load ptr, ptr %7, align 4
  %49 = getelementptr inbounds %struct.ccu_mux_nb, ptr %0, i32 0, i32 4
  %50 = load i8, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ccu_mux_internal, ptr %48, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %44
  %55 = zext i8 %50 to i32
  %56 = getelementptr i8, ptr %52, i32 %55
  %57 = load i8, ptr %56, align 1
  br label %58

58:                                               ; preds = %54, %44
  %59 = phi i8 [ %57, %54 ], [ %50, %44 ]
  %60 = getelementptr inbounds %struct.ccu_common, ptr %47, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %61) #3
  %63 = load ptr, ptr %47, align 4
  %64 = getelementptr inbounds %struct.ccu_common, ptr %47, i32 0, i32 1
  %65 = load i16, ptr %64, align 4
  %66 = zext i16 %65 to i32
  %67 = getelementptr i8, ptr %63, i32 %66
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %69 = load i8, ptr %48, align 4
  %70 = zext i8 %69 to i32
  %71 = shl nsw i32 -1, %70
  %72 = getelementptr inbounds %struct.ccu_mux_internal, ptr %48, i32 0, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = add nuw nsw i32 %70, %74
  %76 = sub nsw i32 32, %75
  %77 = lshr i32 -1, %76
  %78 = and i32 %77, %71
  %79 = xor i32 %78, -1
  %80 = and i32 %68, %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %81 = zext i8 %59 to i32
  %82 = load i8, ptr %48, align 4
  %83 = zext i8 %82 to i32
  %84 = shl i32 %81, %83
  %85 = or i32 %80, %84
  %86 = load ptr, ptr %47, align 4
  %87 = load i16, ptr %64, align 4
  %88 = zext i16 %87 to i32
  %89 = getelementptr i8, ptr %86, i32 %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %85) #3, !srcloc !14
  br label %136

90:                                               ; preds = %3
  %91 = getelementptr inbounds %struct.ccu_mux_nb, ptr %0, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.ccu_mux_nb, ptr %0, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.ccu_mux_nb, ptr %0, i32 0, i32 5
  %96 = load i8, ptr %95, align 1
  %97 = getelementptr inbounds %struct.ccu_mux_internal, ptr %94, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %90
  %101 = zext i8 %96 to i32
  %102 = getelementptr i8, ptr %98, i32 %101
  %103 = load i8, ptr %102, align 1
  br label %104

104:                                              ; preds = %100, %90
  %105 = phi i8 [ %103, %100 ], [ %96, %90 ]
  %106 = getelementptr inbounds %struct.ccu_common, ptr %92, i32 0, i32 5
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %107) #3
  %109 = load ptr, ptr %92, align 4
  %110 = getelementptr inbounds %struct.ccu_common, ptr %92, i32 0, i32 1
  %111 = load i16, ptr %110, align 4
  %112 = zext i16 %111 to i32
  %113 = getelementptr i8, ptr %109, i32 %112
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %115 = load i8, ptr %94, align 4
  %116 = zext i8 %115 to i32
  %117 = shl nsw i32 -1, %116
  %118 = getelementptr inbounds %struct.ccu_mux_internal, ptr %94, i32 0, i32 1
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = add nuw nsw i32 %116, %120
  %122 = sub nsw i32 32, %121
  %123 = lshr i32 -1, %122
  %124 = and i32 %123, %117
  %125 = xor i32 %124, -1
  %126 = and i32 %114, %125
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %127 = zext i8 %105 to i32
  %128 = load i8, ptr %94, align 4
  %129 = zext i8 %128 to i32
  %130 = shl i32 %127, %129
  %131 = or i32 %126, %130
  %132 = load ptr, ptr %92, align 4
  %133 = load i16, ptr %110, align 4
  %134 = zext i16 %133 to i32
  %135 = getelementptr i8, ptr %132, i32 %134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %131) #3, !srcloc !14
  br label %136

136:                                              ; preds = %104, %58
  %137 = phi ptr [ %106, %104 ], [ %60, %58 ]
  %138 = phi i32 [ %108, %104 ], [ %62, %58 ]
  %139 = load ptr, ptr %137, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %139, i32 noundef %138) #3
  br label %140

140:                                              ; preds = %136, %3
  %141 = getelementptr inbounds %struct.ccu_mux_nb, ptr %0, i32 0, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %143(i32 noundef %142) #3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

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
!8 = !{i64 3401506}
!9 = !{i64 2150972621}
!10 = !{!"auto-init"}
!11 = !{i64 2150980254}
!12 = !{i64 2150982389}
!13 = !{i64 2150983522}
!14 = !{i64 3401088}
