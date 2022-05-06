; ModuleID = '/llk/IR/drivers/clk/clk-gate.c_pt.bc'
source_filename = "../drivers/clk/clk-gate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_gate_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_gate_is_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_clk_gate_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_gate_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_gate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clk_hw_register_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22__clk_hw_register_gate\22\09\09\09\09\09"
module asm "__kstrtabns___clk_hw_register_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_register_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_register_gate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_register_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_unregister_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_unregister_gate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_unregister_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_unregister_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_unregister_gate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_unregister_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_clk_hw_register_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_clk_hw_register_gate\22\09\09\09\09\09"
module asm "__kstrtabns___devm_clk_hw_register_gate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__kstrtab_clk_gate_is_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_gate_is_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_gate_is_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_gate_is_enabled to i32), ptr @__kstrtab_clk_gate_is_enabled, ptr @__kstrtabns_clk_gate_is_enabled }, section "___ksymtab_gpl+clk_gate_is_enabled", align 4
@clk_gate_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_gate_enable, ptr @clk_gate_disable, ptr @clk_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_gate_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_gate_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_gate_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_gate_ops to i32), ptr @__kstrtab_clk_gate_ops, ptr @__kstrtabns_clk_gate_ops }, section "___ksymtab_gpl+clk_gate_ops", align 4
@.str = private unnamed_addr constant [33 x i8] c"\013gate bit exceeds LOWORD field\0A\00", align 1
@__kstrtab___clk_hw_register_gate = external dso_local constant [0 x i8], align 1
@__kstrtabns___clk_hw_register_gate = external dso_local constant [0 x i8], align 1
@__ksymtab___clk_hw_register_gate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clk_hw_register_gate to i32), ptr @__kstrtab___clk_hw_register_gate, ptr @__kstrtabns___clk_hw_register_gate }, section "___ksymtab_gpl+__clk_hw_register_gate", align 4
@__kstrtab_clk_register_gate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_register_gate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_register_gate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_register_gate to i32), ptr @__kstrtab_clk_register_gate, ptr @__kstrtabns_clk_register_gate }, section "___ksymtab_gpl+clk_register_gate", align 4
@__kstrtab_clk_unregister_gate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_unregister_gate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_unregister_gate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_unregister_gate to i32), ptr @__kstrtab_clk_unregister_gate, ptr @__kstrtabns_clk_unregister_gate }, section "___ksymtab_gpl+clk_unregister_gate", align 4
@__kstrtab_clk_hw_unregister_gate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_unregister_gate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_unregister_gate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_unregister_gate to i32), ptr @__kstrtab_clk_hw_unregister_gate, ptr @__kstrtabns_clk_hw_unregister_gate }, section "___ksymtab_gpl+clk_hw_unregister_gate", align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"devm_clk_hw_release_gate\00", align 1
@__kstrtab___devm_clk_hw_register_gate = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_clk_hw_register_gate = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_clk_hw_register_gate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_clk_hw_register_gate to i32), ptr @__kstrtab___devm_clk_hw_register_gate, ptr @__kstrtabns___devm_clk_hw_register_gate }, section "___ksymtab_gpl+__devm_clk_hw_register_gate", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab___clk_hw_register_gate, ptr @__ksymtab___devm_clk_hw_register_gate, ptr @__ksymtab_clk_gate_is_enabled, ptr @__ksymtab_clk_gate_ops, ptr @__ksymtab_clk_hw_unregister_gate, ptr @__ksymtab_clk_register_gate, ptr @__ksymtab_clk_unregister_gate], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_gate_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 4
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6
  br i1 %5, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !8
  br label %12

11:                                               ; preds = %1
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ %8, %11 ]
  %14 = load i8, ptr %2, align 1
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 2
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 1, %19
  %21 = select i1 %16, i32 0, i32 %20
  %22 = xor i32 %13, %21
  %23 = lshr i32 %22, %19
  %24 = and i32 %23, 1
  ret i32 %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_gate_enable(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @clk_gate_endisable(ptr noundef %0, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_gate_disable(ptr nocapture noundef readonly %0) #0 {
  tail call fastcc void @clk_gate_endisable(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__clk_hw_register_gate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i8 noundef zeroext %8, i8 noundef zeroext %9, ptr noundef %10) #0 {
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.clk_init_data, align 4
  store ptr %3, ptr %12, align 4
  store ptr %4, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %14) #6
  %15 = getelementptr inbounds i8, ptr %14, i32 20
  store i32 0, ptr %15, align 4
  %16 = and i8 %9, 2
  %17 = icmp ne i8 %16, 0
  %18 = icmp ugt i8 %8, 15
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %60

22:                                               ; preds = %11
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 24) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %60, label %26

26:                                               ; preds = %22
  store ptr %2, ptr %14, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %14, i32 0, i32 1
  store ptr @clk_gate_ops, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %14, i32 0, i32 6
  store i32 %6, ptr %28, align 4
  %29 = icmp eq ptr %3, null
  %30 = select i1 %29, ptr null, ptr %12
  %31 = getelementptr inbounds %struct.clk_init_data, ptr %14, i32 0, i32 2
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %4, null
  %33 = select i1 %32, ptr null, ptr %13
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %14, i32 0, i32 4
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_init_data, ptr %14, i32 0, i32 3
  store ptr %5, ptr %35, align 4
  %36 = icmp ne ptr %3, null
  %37 = icmp ne ptr %4, null
  %38 = or i1 %36, %37
  %39 = icmp ne ptr %5, null
  %40 = or i1 %39, %38
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.clk_init_data, ptr %14, i32 0, i32 5
  store i8 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.clk_gate, ptr %24, i32 0, i32 1
  store ptr %7, ptr %43, align 4
  %44 = getelementptr inbounds %struct.clk_gate, ptr %24, i32 0, i32 2
  store i8 %8, ptr %44, align 8
  %45 = getelementptr inbounds %struct.clk_gate, ptr %24, i32 0, i32 3
  store i8 %9, ptr %45, align 1
  %46 = getelementptr inbounds %struct.clk_gate, ptr %24, i32 0, i32 4
  store ptr %10, ptr %46, align 4
  %47 = getelementptr inbounds %struct.clk_hw, ptr %24, i32 0, i32 2
  store ptr %14, ptr %47, align 8
  %48 = icmp eq ptr %0, null
  %49 = icmp ne ptr %1, null
  %50 = and i1 %48, %49
  br i1 %50, label %53, label %51

51:                                               ; preds = %26
  %52 = call i32 @clk_hw_register(ptr noundef %0, ptr noundef nonnull %24) #6
  br label %55

53:                                               ; preds = %26
  %54 = call i32 @of_clk_hw_register(ptr noundef nonnull %1, ptr noundef nonnull %24) #6
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %54, %53 ], [ %52, %51 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  call void @kfree(ptr noundef nonnull %24) #6
  %59 = inttoptr i32 %56 to ptr
  br label %60

60:                                               ; preds = %58, %55, %22, %20
  %61 = phi ptr [ inttoptr (i32 -22 to ptr), %20 ], [ %59, %58 ], [ %24, %55 ], [ inttoptr (i32 -12 to ptr), %22 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %14) #6
  ret ptr %61
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_register_gate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef %7) #0 {
  %9 = tail call ptr @__clk_hw_register_gate(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr noundef %7)
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.clk_hw, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %13, %11 ], [ %9, %8 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_unregister_gate(ptr noundef %0) #0 {
  %2 = tail call ptr @__clk_get_hw(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @clk_unregister(ptr noundef %0) #6
  tail call void @kfree(ptr noundef nonnull %2) #6
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_hw_unregister_gate(ptr noundef %0) #0 {
  tail call void @clk_hw_unregister(ptr noundef %0) #6
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_clk_hw_register_gate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i8 noundef zeroext %8, i8 noundef zeroext %9, ptr noundef %10) #0 {
  %12 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_hw_release_gate, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @__clk_hw_register_gate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i8 noundef zeroext %8, i8 noundef zeroext %9, ptr noundef %10)
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store ptr %15, ptr %12, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %12) #6
  br label %19

18:                                               ; preds = %14
  tail call void @devres_free(ptr noundef nonnull %12) #6
  br label %19

19:                                               ; preds = %18, %17, %11
  %20 = phi ptr [ %15, %18 ], [ %15, %17 ], [ inttoptr (i32 -12 to ptr), %11 ]
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_clk_hw_release_gate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @clk_hw_unregister(ptr noundef %3) #6
  tail call void @kfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_gate_endisable(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 1
  %6 = zext i8 %5 to i32
  %7 = xor i32 %6, %1
  %8 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %9) #6
  %13 = load i8, ptr %3, align 1
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i8 [ %13, %11 ], [ %4, %2 ]
  %16 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %17 = and i8 %15, 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 2
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %7, 0
  %24 = select i1 %23, i32 65536, i32 65537
  %25 = shl i32 %24, %22
  br label %47

26:                                               ; preds = %14
  %27 = and i8 %15, 4
  %28 = icmp eq i8 %27, 0
  %29 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6
  br i1 %28, label %34, label %32

32:                                               ; preds = %26
  %33 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !8
  br label %35

34:                                               ; preds = %26
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ %31, %34 ]
  %37 = icmp eq i32 %7, 0
  %38 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 2
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = shl nuw i32 1, %40
  br i1 %37, label %44, label %42

42:                                               ; preds = %35
  %43 = or i32 %41, %36
  br label %47

44:                                               ; preds = %35
  %45 = xor i32 %41, -1
  %46 = and i32 %36, %45
  br label %47

47:                                               ; preds = %44, %42, %19
  %48 = phi i32 [ %43, %42 ], [ %46, %44 ], [ %25, %19 ]
  %49 = load i8, ptr %3, align 1
  %50 = and i8 %49, 4
  %51 = icmp eq i8 %50, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = tail call i32 @llvm.bswap.i32(i32 %48) #6
  %54 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #6, !srcloc !10
  br label %59

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %48) #6, !srcloc !10
  br label %59

59:                                               ; preds = %56, %52
  %60 = load ptr, ptr %8, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %60, i32 noundef %16) #6
  br label %63

63:                                               ; preds = %62, %59
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2151447812}
!9 = !{i64 2151448122}
!10 = !{i64 3897782}
