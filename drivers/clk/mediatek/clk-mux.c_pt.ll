; ModuleID = '/llk/IR/drivers/clk/mediatek/clk-mux.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mux_clr_set_upd_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mux_clr_set_upd_ops\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mux_clr_set_upd_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mux_gate_clr_set_upd_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mux_gate_clr_set_upd_ops\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mux_gate_clr_set_upd_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_register_muxes:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_register_muxes\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_register_muxes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mtk_clk_mux = type { %struct.clk_hw, ptr, ptr, ptr, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.mtk_mux = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@mtk_mux_clr_set_upd_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_clk_mux_set_parent_setclr_lock, ptr @mtk_clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_mtk_mux_clr_set_upd_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mux_clr_set_upd_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mux_clr_set_upd_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mux_clr_set_upd_ops to i32), ptr @__kstrtab_mtk_mux_clr_set_upd_ops, ptr @__kstrtabns_mtk_mux_clr_set_upd_ops }, section "___ksymtab_gpl+mtk_mux_clr_set_upd_ops", align 4
@mtk_mux_gate_clr_set_upd_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mtk_clk_mux_enable_setclr, ptr @mtk_clk_mux_disable_setclr, ptr @mtk_clk_mux_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_clk_mux_set_parent_setclr_lock, ptr @mtk_clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_mtk_mux_gate_clr_set_upd_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mux_gate_clr_set_upd_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mux_gate_clr_set_upd_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mux_gate_clr_set_upd_ops to i32), ptr @__kstrtab_mtk_mux_gate_clr_set_upd_ops, ptr @__kstrtabns_mtk_mux_gate_clr_set_upd_ops }, section "___ksymtab_gpl+mtk_mux_gate_clr_set_upd_ops", align 4
@.str = private unnamed_addr constant [36 x i8] c"\013Cannot find regmap for %pOF: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\013Failed to register clk %s: %ld\0A\00", align 1
@__kstrtab_mtk_clk_register_muxes = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_register_muxes = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_register_muxes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_register_muxes to i32), ptr @__kstrtab_mtk_clk_register_muxes, ptr @__kstrtabns_mtk_clk_register_muxes }, section "___ksymtab_gpl+mtk_clk_register_muxes", align 4
@__UNIQUE_ID_file166 = internal constant [42 x i8] c"clk_mux.file=drivers/clk/mediatek/clk-mux\00", section ".modinfo", align 1
@__UNIQUE_ID_license167 = internal constant [20 x i8] c"clk_mux.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file166, ptr @__UNIQUE_ID_license167, ptr @__ksymtab_mtk_clk_register_muxes, ptr @__ksymtab_mtk_mux_clr_set_upd_ops, ptr @__ksymtab_mtk_mux_gate_clr_set_upd_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_clk_mux_set_parent_setclr_lock(ptr nocapture noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.mtk_clk_mux, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_mux, ptr %5, i32 0, i32 9
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = sub nsw i32 32, %8
  %10 = lshr i32 -1, %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.mtk_clk_mux, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %12) #6
  %16 = load ptr, ptr %4, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi ptr [ %16, %14 ], [ %5, %2 ]
  %19 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %20 = getelementptr inbounds %struct.mtk_clk_mux, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mtk_mux, ptr %18, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = call i32 @regmap_read(ptr noundef %21, i32 noundef %23, ptr noundef nonnull %3) #6
  %25 = load i32, ptr %3, align 4
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr inbounds %struct.mtk_mux, ptr %26, i32 0, i32 8
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = shl i32 %10, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %25, %31
  %33 = zext i8 %1 to i32
  %34 = shl i32 %33, %29
  %35 = or i32 %32, %34
  %36 = icmp eq i32 %35, %25
  br i1 %36, label %63, label %37

37:                                               ; preds = %17
  %38 = load ptr, ptr %20, align 4
  %39 = getelementptr inbounds %struct.mtk_mux, ptr %26, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = call i32 @regmap_write(ptr noundef %38, i32 noundef %40, i32 noundef %30) #6
  %42 = load ptr, ptr %20, align 4
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr inbounds %struct.mtk_mux, ptr %43, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.mtk_mux, ptr %43, i32 0, i32 8
  %47 = load i8, ptr %46, align 4
  %48 = zext i8 %47 to i32
  %49 = shl i32 %33, %48
  %50 = call i32 @regmap_write(ptr noundef %42, i32 noundef %45, i32 noundef %49) #6
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr inbounds %struct.mtk_mux, ptr %51, i32 0, i32 11
  %53 = load i8, ptr %52, align 1
  %54 = icmp sgt i8 %53, -1
  br i1 %54, label %55, label %63

55:                                               ; preds = %37
  %56 = load ptr, ptr %20, align 4
  %57 = getelementptr inbounds %struct.mtk_mux, ptr %51, i32 0, i32 7
  %58 = load i32, ptr %57, align 4
  %59 = zext i8 %53 to i32
  %60 = shl nuw i32 1, %59
  %61 = call i32 @regmap_write(ptr noundef %56, i32 noundef %58, i32 noundef %60) #6
  %62 = getelementptr inbounds %struct.mtk_clk_mux, ptr %0, i32 0, i32 4
  store i8 1, ptr %62, align 4
  br label %63

63:                                               ; preds = %55, %37, %17
  %64 = load ptr, ptr %11, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %64, i32 noundef %19) #6
  br label %67

67:                                               ; preds = %66, %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @mtk_clk_mux_get_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.mtk_clk_mux, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mtk_mux, ptr %4, i32 0, i32 9
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = sub nsw i32 32, %7
  %9 = lshr i32 -1, %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.mtk_clk_mux, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mtk_mux, ptr %4, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = call i32 @regmap_read(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %2) #6
  %15 = load i32, ptr %2, align 4
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.mtk_mux, ptr %16, i32 0, i32 8
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = lshr i32 %15, %19
  %21 = and i32 %20, %9
  %22 = trunc i32 %21 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i8 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_clk_mux_enable_setclr(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_clk_mux, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #6
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.mtk_clk_mux, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mtk_clk_mux, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mtk_mux, ptr %12, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mtk_mux, ptr %12, i32 0, i32 10
  %16 = load i8, ptr %15, align 2
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 1, %17
  %19 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %14, i32 noundef %18) #6
  %20 = getelementptr inbounds %struct.mtk_clk_mux, ptr %0, i32 0, i32 4
  %21 = load i8, ptr %20, align 4, !range !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %7
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr inbounds %struct.mtk_mux, ptr %24, i32 0, i32 11
  %26 = load i8, ptr %25, align 1
  %27 = icmp sgt i8 %26, -1
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr inbounds %struct.mtk_mux, ptr %24, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = zext i8 %26 to i32
  %33 = shl nuw i32 1, %32
  %34 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %31, i32 noundef %33) #6
  store i8 0, ptr %20, align 4
  br label %35

35:                                               ; preds = %28, %23, %7
  %36 = load ptr, ptr %2, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %36, i32 noundef %8) #6
  br label %39

39:                                               ; preds = %38, %35
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_clk_mux_disable_setclr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_clk_mux, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_clk_mux, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_mux, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtk_mux, ptr %5, i32 0, i32 10
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 1, %10
  %12 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %7, i32 noundef %11) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_clk_mux_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.mtk_clk_mux, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mtk_clk_mux, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_mux, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %2) #6
  %10 = load i32, ptr %2, align 4
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.mtk_mux, ptr %11, i32 0, i32 10
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = xor i32 %10, -1
  %16 = lshr i32 %15, %14
  %17 = and i32 %16, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_clk_register_muxes(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca %struct.clk_init_data, align 4
  %7 = tail call ptr @device_node_to_regmap(ptr noundef %2) #6
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %67

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8, ptr %6, i32 12
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  br label %20

17:                                               ; preds = %5
  %18 = ptrtoint ptr %7 to i32
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %2, i32 noundef %18) #7
  br label %67

20:                                               ; preds = %64, %11
  %21 = phi i32 [ 0, %11 ], [ %65, %64 ]
  %22 = getelementptr %struct.mtk_mux, ptr %0, i32 %21
  %23 = load ptr, ptr %4, align 4
  %24 = load i32, ptr %22, align 4
  %25 = getelementptr ptr, ptr %23, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %12, i8 0, i32 12, i1 false) #6
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 28) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #6
  br label %54

35:                                               ; preds = %30
  %36 = getelementptr %struct.mtk_mux, ptr %0, i32 %21, i32 1
  %37 = load ptr, ptr %36, align 4
  store ptr %37, ptr %6, align 4
  %38 = getelementptr %struct.mtk_mux, ptr %0, i32 %21, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, 4
  store i32 %40, ptr %13, align 4
  %41 = getelementptr %struct.mtk_mux, ptr %0, i32 %21, i32 2
  %42 = load ptr, ptr %41, align 4
  store ptr %42, ptr %14, align 4
  %43 = getelementptr %struct.mtk_mux, ptr %0, i32 %21, i32 13
  %44 = load i8, ptr %43, align 4
  store i8 %44, ptr %15, align 4
  %45 = getelementptr %struct.mtk_mux, ptr %0, i32 %21, i32 12
  %46 = load ptr, ptr %45, align 4
  store ptr %46, ptr %16, align 4
  %47 = getelementptr inbounds %struct.mtk_clk_mux, ptr %32, i32 0, i32 1
  store ptr %7, ptr %47, align 4
  %48 = getelementptr inbounds %struct.mtk_clk_mux, ptr %32, i32 0, i32 2
  store ptr %22, ptr %48, align 8
  %49 = getelementptr inbounds %struct.mtk_clk_mux, ptr %32, i32 0, i32 3
  store ptr %3, ptr %49, align 4
  %50 = getelementptr inbounds %struct.clk_hw, ptr %32, i32 0, i32 2
  store ptr %6, ptr %50, align 8
  %51 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %32) #6
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %60

53:                                               ; preds = %35
  call void @kfree(ptr noundef nonnull %32) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #6
  br label %54

54:                                               ; preds = %53, %34
  %55 = phi ptr [ inttoptr (i32 -12 to ptr), %34 ], [ %51, %53 ]
  %56 = getelementptr %struct.mtk_mux, ptr %0, i32 %21, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = ptrtoint ptr %55 to i32
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %57, i32 noundef %58) #7
  br label %64

60:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #6
  %61 = load ptr, ptr %4, align 4
  %62 = load i32, ptr %22, align 4
  %63 = getelementptr ptr, ptr %61, i32 %62
  store ptr %51, ptr %63, align 4
  br label %64

64:                                               ; preds = %60, %54, %20
  %65 = add nuw nsw i32 %21, 1
  %66 = icmp eq i32 %65, %1
  br i1 %66, label %67, label %20

67:                                               ; preds = %64, %17, %9
  %68 = phi i32 [ %18, %17 ], [ 0, %9 ], [ 0, %64 ]
  ret i32 %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
