; ModuleID = '/llk/IR/drivers/clk/clk-mux.c_pt.bc'
source_filename = "../drivers/clk/clk-mux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_mux_val_to_index:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_mux_val_to_index\22\09\09\09\09\09"
module asm "__kstrtabns_clk_mux_val_to_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_mux_index_to_val:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_mux_index_to_val\22\09\09\09\09\09"
module asm "__kstrtabns_clk_mux_index_to_val:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_mux_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_mux_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_mux_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_mux_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_mux_ro_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_mux_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clk_hw_register_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22__clk_hw_register_mux\22\09\09\09\09\09"
module asm "__kstrtabns___clk_hw_register_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_clk_hw_register_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_clk_hw_register_mux\22\09\09\09\09\09"
module asm "__kstrtabns___devm_clk_hw_register_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_register_mux_table:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_register_mux_table\22\09\09\09\09\09"
module asm "__kstrtabns_clk_register_mux_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_unregister_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_unregister_mux\22\09\09\09\09\09"
module asm "__kstrtabns_clk_unregister_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_unregister_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_unregister_mux\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_unregister_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__kstrtab_clk_mux_val_to_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_mux_val_to_index = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_mux_val_to_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_mux_val_to_index to i32), ptr @__kstrtab_clk_mux_val_to_index, ptr @__kstrtabns_clk_mux_val_to_index }, section "___ksymtab_gpl+clk_mux_val_to_index", align 4
@__kstrtab_clk_mux_index_to_val = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_mux_index_to_val = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_mux_index_to_val = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_mux_index_to_val to i32), ptr @__kstrtab_clk_mux_index_to_val, ptr @__kstrtabns_clk_mux_index_to_val }, section "___ksymtab_gpl+clk_mux_index_to_val", align 4
@clk_mux_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_mux_determine_rate, ptr @clk_mux_set_parent, ptr @clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_mux_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_mux_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_mux_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_mux_ops to i32), ptr @__kstrtab_clk_mux_ops, ptr @__kstrtabns_clk_mux_ops }, section "___ksymtab_gpl+clk_mux_ops", align 4
@clk_mux_ro_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_mux_ro_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_mux_ro_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_mux_ro_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_mux_ro_ops to i32), ptr @__kstrtab_clk_mux_ro_ops, ptr @__kstrtabns_clk_mux_ro_ops }, section "___ksymtab_gpl+clk_mux_ro_ops", align 4
@.str = private unnamed_addr constant [34 x i8] c"\013mux value exceeds LOWORD field\0A\00", align 1
@__kstrtab___clk_hw_register_mux = external dso_local constant [0 x i8], align 1
@__kstrtabns___clk_hw_register_mux = external dso_local constant [0 x i8], align 1
@__ksymtab___clk_hw_register_mux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clk_hw_register_mux to i32), ptr @__kstrtab___clk_hw_register_mux, ptr @__kstrtabns___clk_hw_register_mux }, section "___ksymtab_gpl+__clk_hw_register_mux", align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"devm_clk_hw_release_mux\00", align 1
@__kstrtab___devm_clk_hw_register_mux = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_clk_hw_register_mux = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_clk_hw_register_mux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_clk_hw_register_mux to i32), ptr @__kstrtab___devm_clk_hw_register_mux, ptr @__kstrtabns___devm_clk_hw_register_mux }, section "___ksymtab_gpl+__devm_clk_hw_register_mux", align 4
@__kstrtab_clk_register_mux_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_register_mux_table = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_register_mux_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_register_mux_table to i32), ptr @__kstrtab_clk_register_mux_table, ptr @__kstrtabns_clk_register_mux_table }, section "___ksymtab_gpl+clk_register_mux_table", align 4
@__kstrtab_clk_unregister_mux = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_unregister_mux = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_unregister_mux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_unregister_mux to i32), ptr @__kstrtab_clk_unregister_mux, ptr @__kstrtabns_clk_unregister_mux }, section "___ksymtab_gpl+clk_unregister_mux", align 4
@__kstrtab_clk_hw_unregister_mux = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_unregister_mux = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_unregister_mux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_unregister_mux to i32), ptr @__kstrtab_clk_hw_unregister_mux, ptr @__kstrtabns_clk_hw_unregister_mux }, section "___ksymtab_gpl+clk_hw_unregister_mux", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab___clk_hw_register_mux, ptr @__ksymtab___devm_clk_hw_register_mux, ptr @__ksymtab_clk_hw_unregister_mux, ptr @__ksymtab_clk_mux_index_to_val, ptr @__ksymtab_clk_mux_ops, ptr @__ksymtab_clk_mux_ro_ops, ptr @__ksymtab_clk_mux_val_to_index, ptr @__ksymtab_clk_register_mux_table, ptr @__ksymtab_clk_unregister_mux], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_mux_val_to_index(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #7
  %6 = icmp eq ptr %1, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %14, %7
  %10 = phi i32 [ %15, %14 ], [ 0, %7 ]
  %11 = getelementptr i32, ptr %1, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %3
  br i1 %13, label %30, label %14

14:                                               ; preds = %9
  %15 = add nuw nsw i32 %10, 1
  %16 = icmp eq i32 %15, %5
  br i1 %16, label %30, label %9

17:                                               ; preds = %4
  %18 = icmp eq i32 %3, 0
  %19 = and i32 %2, 2
  %20 = icmp eq i32 %19, 0
  %21 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true), !range !8
  %22 = select i1 %20, i32 %3, i32 %21
  %23 = select i1 %18, i32 0, i32 %22
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %2, 1
  %26 = sub i32 %23, %25
  %27 = select i1 %24, i32 0, i32 %26
  %28 = icmp ult i32 %27, %5
  %29 = select i1 %28, i32 %27, i32 -22
  br label %30

30:                                               ; preds = %17, %14, %9, %7
  %31 = phi i32 [ %29, %17 ], [ -22, %7 ], [ -22, %14 ], [ %10, %9 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @clk_mux_index_to_val(ptr noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #4 {
  %4 = zext i8 %2 to i32
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr i32, ptr %0, i32 %4
  %8 = load i32, ptr %7, align 4
  br label %16

9:                                                ; preds = %3
  %10 = and i32 %1, 2
  %11 = icmp eq i32 %10, 0
  %12 = shl nuw i32 1, %4
  %13 = select i1 %11, i32 %4, i32 %12
  %14 = and i32 %1, 1
  %15 = add i32 %13, %14
  br label %16

16:                                               ; preds = %9, %6
  %17 = phi i32 [ %8, %6 ], [ %15, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_mux_determine_rate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 5
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = tail call i32 @clk_mux_determine_rate_flags(ptr noundef %0, ptr noundef %1, i32 noundef %5) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_mux_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 5
  %6 = zext i8 %1 to i32
  %7 = icmp eq ptr %4, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr i32, ptr %4, i32 %6
  %10 = load i32, ptr %9, align 4
  br label %20

11:                                               ; preds = %2
  %12 = load i8, ptr %5, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = shl nuw i32 1, %6
  %17 = select i1 %15, i32 %6, i32 %16
  %18 = and i32 %13, 1
  %19 = add i32 %17, %18
  br label %20

20:                                               ; preds = %11, %8
  %21 = phi i32 [ %10, %8 ], [ %19, %11 ]
  %22 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %23) #7
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi i32 [ %26, %25 ], [ 0, %20 ]
  %29 = load i8, ptr %5, align 1
  %30 = and i8 %29, 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 4
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %37, 16
  %39 = shl i32 %34, %38
  br label %60

40:                                               ; preds = %27
  %41 = and i8 %29, 32
  %42 = icmp eq i8 %41, 0
  %43 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7
  br i1 %42, label %48, label %46

46:                                               ; preds = %40
  %47 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  br label %49

48:                                               ; preds = %40
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ %45, %48 ]
  %51 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 4
  %54 = load i8, ptr %53, align 4
  %55 = zext i8 %54 to i32
  %56 = shl i32 %52, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %50, %57
  %59 = load i8, ptr %5, align 1
  br label %60

60:                                               ; preds = %49, %32
  %61 = phi i32 [ %55, %49 ], [ %37, %32 ]
  %62 = phi i8 [ %59, %49 ], [ %29, %32 ]
  %63 = phi i32 [ %58, %49 ], [ %39, %32 ]
  %64 = shl i32 %21, %61
  %65 = or i32 %64, %63
  %66 = and i8 %62, 32
  %67 = icmp eq i8 %66, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %67, label %72, label %68

68:                                               ; preds = %60
  %69 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  %70 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #7, !srcloc !11
  br label %75

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %65) #7, !srcloc !11
  br label %75

75:                                               ; preds = %72, %68
  %76 = load ptr, ptr %22, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %76, i32 noundef %28) #7
  br label %79

79:                                               ; preds = %78, %75
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_mux_get_parent(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 32
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7
  br i1 %5, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  br label %12

11:                                               ; preds = %1
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ %8, %11 ]
  %14 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 4
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = lshr i32 %13, %16
  %18 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %17, %19
  %21 = getelementptr inbounds %struct.clk_mux, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %2, align 1
  %24 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #7
  %25 = icmp eq ptr %22, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %12
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %33, %26
  %29 = phi i32 [ %34, %33 ], [ 0, %26 ]
  %30 = getelementptr i32, ptr %22, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %20
  br i1 %32, label %50, label %33

33:                                               ; preds = %28
  %34 = add nuw nsw i32 %29, 1
  %35 = icmp eq i32 %34, %24
  br i1 %35, label %50, label %28

36:                                               ; preds = %12
  %37 = zext i8 %23 to i32
  %38 = icmp eq i32 %20, 0
  %39 = and i32 %37, 2
  %40 = icmp eq i32 %39, 0
  %41 = tail call i32 @llvm.cttz.i32(i32 %20, i1 true) #7, !range !8
  %42 = select i1 %40, i32 %20, i32 %41
  %43 = select i1 %38, i32 0, i32 %42
  %44 = icmp eq i32 %43, 0
  %45 = and i32 %37, 1
  %46 = sub i32 %43, %45
  %47 = select i1 %44, i32 0, i32 %46
  %48 = icmp ult i32 %47, %24
  %49 = select i1 %48, i32 %47, i32 -22
  br label %50

50:                                               ; preds = %36, %33, %28, %26
  %51 = phi i32 [ %49, %36 ], [ -22, %26 ], [ %29, %28 ], [ -22, %33 ]
  %52 = trunc i32 %51 to i8
  ret i8 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__clk_hw_register_mux(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i8 noundef zeroext %9, i32 noundef %10, i8 noundef zeroext %11, ptr noundef %12, ptr noundef %13) #0 {
  %15 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %15) #7
  %16 = getelementptr inbounds i8, ptr %15, i32 20
  store i32 0, ptr %16, align 4
  %17 = zext i8 %11 to i32
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %14
  %21 = icmp eq i32 %10, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 false) #7, !range !8
  %23 = tail call i32 @llvm.cttz.i32(i32 %10, i1 true), !range !8
  %24 = add nuw nsw i32 %23, %22
  %25 = sub nsw i32 32, %24
  %26 = and i32 %25, 255
  %27 = select i1 %21, i32 1, i32 %26
  %28 = zext i8 %9 to i32
  %29 = add nuw nsw i32 %27, %28
  %30 = icmp ugt i32 %29, 16
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %66

33:                                               ; preds = %20, %14
  %34 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 32) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %66, label %37

37:                                               ; preds = %33
  store ptr %2, ptr %15, align 4
  %38 = and i32 %17, 8
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, ptr @clk_mux_ops, ptr @clk_mux_ro_ops
  %41 = getelementptr inbounds %struct.clk_init_data, ptr %15, i32 0, i32 1
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.clk_init_data, ptr %15, i32 0, i32 6
  store i32 %7, ptr %42, align 4
  %43 = getelementptr inbounds %struct.clk_init_data, ptr %15, i32 0, i32 2
  store ptr %4, ptr %43, align 4
  %44 = getelementptr inbounds %struct.clk_init_data, ptr %15, i32 0, i32 3
  store ptr %6, ptr %44, align 4
  %45 = getelementptr inbounds %struct.clk_init_data, ptr %15, i32 0, i32 4
  store ptr %5, ptr %45, align 4
  %46 = getelementptr inbounds %struct.clk_init_data, ptr %15, i32 0, i32 5
  store i8 %3, ptr %46, align 4
  %47 = getelementptr inbounds %struct.clk_mux, ptr %35, i32 0, i32 1
  store ptr %8, ptr %47, align 4
  %48 = getelementptr inbounds %struct.clk_mux, ptr %35, i32 0, i32 4
  store i8 %9, ptr %48, align 8
  %49 = getelementptr inbounds %struct.clk_mux, ptr %35, i32 0, i32 3
  store i32 %10, ptr %49, align 4
  %50 = getelementptr inbounds %struct.clk_mux, ptr %35, i32 0, i32 5
  store i8 %11, ptr %50, align 1
  %51 = getelementptr inbounds %struct.clk_mux, ptr %35, i32 0, i32 6
  store ptr %13, ptr %51, align 4
  %52 = getelementptr inbounds %struct.clk_mux, ptr %35, i32 0, i32 2
  store ptr %12, ptr %52, align 8
  %53 = getelementptr inbounds %struct.clk_hw, ptr %35, i32 0, i32 2
  store ptr %15, ptr %53, align 8
  %54 = icmp eq ptr %0, null
  %55 = icmp ne ptr %1, null
  %56 = and i1 %54, %55
  br i1 %56, label %59, label %57

57:                                               ; preds = %37
  %58 = call i32 @clk_hw_register(ptr noundef %0, ptr noundef nonnull %35) #7
  br label %61

59:                                               ; preds = %37
  %60 = call i32 @of_clk_hw_register(ptr noundef nonnull %1, ptr noundef nonnull %35) #7
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %60, %59 ], [ %58, %57 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  call void @kfree(ptr noundef nonnull %35) #7
  %65 = inttoptr i32 %62 to ptr
  br label %66

66:                                               ; preds = %64, %61, %33, %31
  %67 = phi ptr [ inttoptr (i32 -22 to ptr), %31 ], [ %65, %64 ], [ %35, %61 ], [ inttoptr (i32 -12 to ptr), %33 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %15) #7
  ret ptr %67
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_clk_hw_register_mux(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i8 noundef zeroext %9, i32 noundef %10, i8 noundef zeroext %11, ptr noundef %12, ptr noundef %13) #0 {
  %15 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_hw_release_mux, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @__clk_hw_register_mux(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i8 noundef zeroext %9, i32 noundef %10, i8 noundef zeroext %11, ptr noundef %12, ptr noundef %13)
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store ptr %18, ptr %15, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %15) #7
  br label %22

21:                                               ; preds = %17
  tail call void @devres_free(ptr noundef nonnull %15) #7
  br label %22

22:                                               ; preds = %21, %20, %14
  %23 = phi ptr [ %18, %21 ], [ %18, %20 ], [ inttoptr (i32 -12 to ptr), %14 ]
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_clk_hw_release_mux(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @clk_hw_unregister(ptr noundef %3) #7
  tail call void @kfree(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_register_mux_table(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4, ptr noundef %5, i8 noundef zeroext %6, i32 noundef %7, i8 noundef zeroext %8, ptr noundef %9, ptr noundef %10) #0 {
  %12 = tail call ptr @__clk_hw_register_mux(ptr noundef %0, ptr noundef null, ptr noundef %1, i8 noundef zeroext %3, ptr noundef %2, ptr noundef null, ptr noundef null, i32 noundef %4, ptr noundef %5, i8 noundef zeroext %6, i32 noundef %7, i8 noundef zeroext %8, ptr noundef %9, ptr noundef %10)
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.clk_hw, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi ptr [ %16, %14 ], [ %12, %11 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_unregister_mux(ptr noundef %0) #0 {
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
define dso_local void @clk_hw_unregister_mux(ptr noundef %0) #0 {
  tail call void @clk_hw_unregister(ptr noundef %0) #7
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_determine_rate_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{i32 0, i32 33}
!9 = !{i64 2151448550}
!10 = !{i64 2151448857}
!11 = !{i64 3898523}
