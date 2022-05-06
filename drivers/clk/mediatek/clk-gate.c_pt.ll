; ModuleID = '/llk/IR/drivers/clk/mediatek/clk-gate.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-gate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_gate_ops_setclr:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_gate_ops_setclr\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_gate_ops_setclr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_gate_ops_setclr_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_gate_ops_setclr_inv\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_gate_ops_setclr_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_gate_ops_no_setclr:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_gate_ops_no_setclr\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_gate_ops_no_setclr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_gate_ops_no_setclr_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_gate_ops_no_setclr_inv\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_gate_ops_no_setclr_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_register_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_register_gate\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_register_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mtk_clk_gate = type { %struct.clk_hw, ptr, i32, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@mtk_clk_gate_ops_setclr = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mtk_cg_enable, ptr @mtk_cg_disable, ptr @mtk_cg_bit_is_cleared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_mtk_clk_gate_ops_setclr = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_gate_ops_setclr = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_gate_ops_setclr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_gate_ops_setclr to i32), ptr @__kstrtab_mtk_clk_gate_ops_setclr, ptr @__kstrtabns_mtk_clk_gate_ops_setclr }, section "___ksymtab_gpl+mtk_clk_gate_ops_setclr", align 4
@mtk_clk_gate_ops_setclr_inv = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mtk_cg_enable_inv, ptr @mtk_cg_disable_inv, ptr @mtk_cg_bit_is_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_mtk_clk_gate_ops_setclr_inv = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_gate_ops_setclr_inv = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_gate_ops_setclr_inv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_gate_ops_setclr_inv to i32), ptr @__kstrtab_mtk_clk_gate_ops_setclr_inv, ptr @__kstrtabns_mtk_clk_gate_ops_setclr_inv }, section "___ksymtab_gpl+mtk_clk_gate_ops_setclr_inv", align 4
@mtk_clk_gate_ops_no_setclr = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mtk_cg_enable_no_setclr, ptr @mtk_cg_disable_no_setclr, ptr @mtk_cg_bit_is_cleared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_mtk_clk_gate_ops_no_setclr = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_gate_ops_no_setclr = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_gate_ops_no_setclr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_gate_ops_no_setclr to i32), ptr @__kstrtab_mtk_clk_gate_ops_no_setclr, ptr @__kstrtabns_mtk_clk_gate_ops_no_setclr }, section "___ksymtab_gpl+mtk_clk_gate_ops_no_setclr", align 4
@mtk_clk_gate_ops_no_setclr_inv = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mtk_cg_enable_inv_no_setclr, ptr @mtk_cg_disable_inv_no_setclr, ptr @mtk_cg_bit_is_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_mtk_clk_gate_ops_no_setclr_inv = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_gate_ops_no_setclr_inv = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_gate_ops_no_setclr_inv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_gate_ops_no_setclr_inv to i32), ptr @__kstrtab_mtk_clk_gate_ops_no_setclr_inv, ptr @__kstrtabns_mtk_clk_gate_ops_no_setclr_inv }, section "___ksymtab_gpl+mtk_clk_gate_ops_no_setclr_inv", align 4
@__kstrtab_mtk_clk_register_gate = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_register_gate = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_register_gate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_register_gate to i32), ptr @__kstrtab_mtk_clk_register_gate, ptr @__kstrtabns_mtk_clk_register_gate }, section "___ksymtab_gpl+mtk_clk_register_gate", align 4
@__UNIQUE_ID_file166 = internal constant [44 x i8] c"clk_gate.file=drivers/clk/mediatek/clk-gate\00", section ".modinfo", align 1
@__UNIQUE_ID_license167 = internal constant [21 x i8] c"clk_gate.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_file166, ptr @__UNIQUE_ID_license167, ptr @__ksymtab_mtk_clk_gate_ops_no_setclr, ptr @__ksymtab_mtk_clk_gate_ops_no_setclr_inv, ptr @__ksymtab_mtk_clk_gate_ops_setclr, ptr @__ksymtab_mtk_clk_gate_ops_setclr_inv, ptr @__ksymtab_mtk_clk_register_gate], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cg_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %5, i32 noundef %9) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_cg_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %5, i32 noundef %9) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cg_bit_is_cleared(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %2) #5
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 5
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %12 = xor i32 %8, -1
  %13 = lshr i32 %12, %11
  %14 = and i32 %13, 1
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cg_enable_inv(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %5, i32 noundef %9) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_cg_disable_inv(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %5, i32 noundef %9) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cg_bit_is_set(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %2) #5
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 5
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %12 = lshr i32 %8, %11
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cg_enable_no_setclr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %9, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_cg_disable_no_setclr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %9, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_cg_enable_inv_no_setclr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %9, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_cg_disable_inv_no_setclr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mtk_clk_gate, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %9, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mtk_clk_register_gate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #0 {
  %11 = alloca ptr, align 4
  %12 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %12) #5
  %13 = getelementptr inbounds i8, ptr %12, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %13, i8 0, i32 12, i1 false)
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 32) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %10
  store ptr %0, ptr %12, align 4
  %18 = or i32 %8, 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 6
  store i32 %18, ptr %19, align 4
  %20 = icmp eq ptr %1, null
  %21 = select i1 %20, ptr null, ptr %11
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp ne ptr %1, null
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 5
  store i8 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %12, i32 0, i32 1
  store ptr %7, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mtk_clk_gate, ptr %15, i32 0, i32 1
  store ptr %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mtk_clk_gate, ptr %15, i32 0, i32 2
  store i32 %3, ptr %28, align 8
  %29 = getelementptr inbounds %struct.mtk_clk_gate, ptr %15, i32 0, i32 3
  store i32 %4, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mtk_clk_gate, ptr %15, i32 0, i32 4
  store i32 %5, ptr %30, align 8
  %31 = getelementptr inbounds %struct.mtk_clk_gate, ptr %15, i32 0, i32 5
  store i8 %6, ptr %31, align 4
  %32 = getelementptr inbounds %struct.clk_hw, ptr %15, i32 0, i32 2
  store ptr %12, ptr %32, align 8
  %33 = call ptr @clk_register(ptr noundef %9, ptr noundef nonnull %15) #5
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  call void @kfree(ptr noundef nonnull %15) #5
  br label %36

36:                                               ; preds = %35, %17, %10
  %37 = phi ptr [ %33, %35 ], [ %33, %17 ], [ inttoptr (i32 -12 to ptr), %10 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %12) #5
  ret ptr %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
