; ModuleID = '/llk/IR/drivers/clk/mediatek/clk-mtk.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mtk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_alloc_clk_data:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_alloc_clk_data\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_alloc_clk_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_register_fixed_clks:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_register_fixed_clks\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_register_fixed_clks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_register_factors:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_register_factors\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_register_factors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_register_gates:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_register_gates\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_register_gates:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_clk_register_composites:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_clk_register_composites\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_clk_register_composites:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.mtk_fixed_clk = type { i32, ptr, ptr, i32 }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.mtk_composite = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.mtk_clk_divider = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mtk_clk_desc = type { ptr, i32 }

@__kstrtab_mtk_alloc_clk_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_alloc_clk_data = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_alloc_clk_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_alloc_clk_data to i32), ptr @__kstrtab_mtk_alloc_clk_data, ptr @__kstrtabns_mtk_alloc_clk_data }, section "___ksymtab_gpl+mtk_alloc_clk_data", align 4
@.str = private unnamed_addr constant [34 x i8] c"\013Failed to register clk %s: %ld\0A\00", align 1
@__kstrtab_mtk_clk_register_fixed_clks = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_register_fixed_clks = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_register_fixed_clks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_register_fixed_clks to i32), ptr @__kstrtab_mtk_clk_register_fixed_clks, ptr @__kstrtabns_mtk_clk_register_fixed_clks }, section "___ksymtab_gpl+mtk_clk_register_fixed_clks", align 4
@__kstrtab_mtk_clk_register_factors = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_register_factors = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_register_factors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_register_factors to i32), ptr @__kstrtab_mtk_clk_register_factors, ptr @__kstrtabns_mtk_clk_register_factors }, section "___ksymtab_gpl+mtk_clk_register_factors", align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"\013Cannot find regmap for %pOF: %ld\0A\00", align 1
@__kstrtab_mtk_clk_register_gates = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_register_gates = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_register_gates = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_register_gates to i32), ptr @__kstrtab_mtk_clk_register_gates, ptr @__kstrtabns_mtk_clk_register_gates }, section "___ksymtab_gpl+mtk_clk_register_gates", align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@__kstrtab_mtk_clk_register_composites = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_clk_register_composites = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_clk_register_composites = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_clk_register_composites to i32), ptr @__kstrtab_mtk_clk_register_composites, ptr @__kstrtabns_mtk_clk_register_composites }, section "___ksymtab_gpl+mtk_clk_register_composites", align 4
@__UNIQUE_ID_file166 = internal constant [42 x i8] c"clk_mtk.file=drivers/clk/mediatek/clk-mtk\00", section ".modinfo", align 1
@__UNIQUE_ID_license167 = internal constant [20 x i8] c"clk_mtk.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_file166, ptr @__UNIQUE_ID_license167, ptr @__ksymtab_mtk_alloc_clk_data, ptr @__ksymtab_mtk_clk_register_composites, ptr @__ksymtab_mtk_clk_register_factors, ptr @__ksymtab_mtk_clk_register_fixed_clks, ptr @__ksymtab_mtk_clk_register_gates], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mtk_alloc_clk_data(i32 noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4) #8
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %5
  store ptr null, ptr %3, align 8
  br label %24

9:                                                ; preds = %5
  %10 = extractvalue { i32, i1 } %6, 0
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #9
  store ptr %11, ptr %3, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.clk_onecell_data, ptr %3, i32 0, i32 1
  store i32 %0, ptr %14, align 4
  %15 = icmp eq i32 %0, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  store ptr inttoptr (i32 -2 to ptr), ptr %11, align 64
  %17 = icmp eq i32 %0, 1
  br i1 %17, label %25, label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ %22, %18 ], [ 1, %16 ]
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr ptr, ptr %20, i32 %19
  store ptr inttoptr (i32 -2 to ptr), ptr %21, align 4
  %22 = add nuw i32 %19, 1
  %23 = icmp eq i32 %22, %0
  br i1 %23, label %25, label %18

24:                                               ; preds = %9, %8
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %25

25:                                               ; preds = %24, %18, %16, %13, %1
  %26 = phi ptr [ null, %24 ], [ null, %1 ], [ %3, %13 ], [ %3, %16 ], [ %3, %18 ]
  ret ptr %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_free_clk_data(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %4) #8
  tail call void @kfree(ptr noundef nonnull %0) #8
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_clk_register_fixed_clks(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2) #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %39

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br label %7

7:                                                ; preds = %36, %5
  %8 = phi i32 [ 0, %5 ], [ %37, %36 ]
  %9 = getelementptr %struct.mtk_fixed_clk, ptr %0, i32 %8
  br i1 %6, label %18, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %2, align 4
  %12 = load i32, ptr %9, align 4
  %13 = getelementptr ptr, ptr %11, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %10, %7
  %19 = getelementptr %struct.mtk_fixed_clk, ptr %0, i32 %8, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.mtk_fixed_clk, ptr %0, i32 %8, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.mtk_fixed_clk, ptr %0, i32 %8, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef %20, ptr noundef %22, i32 noundef 0, i32 noundef %24) #8
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load ptr, ptr %19, align 4
  %29 = ptrtoint ptr %25 to i32
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %28, i32 noundef %29) #10
  br label %36

31:                                               ; preds = %18
  br i1 %6, label %36, label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %2, align 4
  %34 = load i32, ptr %9, align 4
  %35 = getelementptr ptr, ptr %33, i32 %34
  store ptr %25, ptr %35, align 4
  br label %36

36:                                               ; preds = %32, %31, %27, %10
  %37 = add nuw nsw i32 %8, 1
  %38 = icmp eq i32 %37, %1
  br i1 %38, label %39, label %7

39:                                               ; preds = %36, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_clk_register_factors(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2) #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %41

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br label %7

7:                                                ; preds = %38, %5
  %8 = phi i32 [ 0, %5 ], [ %39, %38 ]
  %9 = getelementptr %struct.mtk_fixed_factor, ptr %0, i32 %8
  br i1 %6, label %18, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %2, align 4
  %12 = load i32, ptr %9, align 4
  %13 = getelementptr ptr, ptr %11, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %10, %7
  %19 = getelementptr %struct.mtk_fixed_factor, ptr %0, i32 %8, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.mtk_fixed_factor, ptr %0, i32 %8, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.mtk_fixed_factor, ptr %0, i32 %8, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.mtk_fixed_factor, ptr %0, i32 %8, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %20, ptr noundef %22, i32 noundef 4, i32 noundef %24, i32 noundef %26) #8
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load ptr, ptr %19, align 4
  %31 = ptrtoint ptr %27 to i32
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %30, i32 noundef %31) #10
  br label %38

33:                                               ; preds = %18
  br i1 %6, label %38, label %34

34:                                               ; preds = %33
  %35 = load ptr, ptr %2, align 4
  %36 = load i32, ptr %9, align 4
  %37 = getelementptr ptr, ptr %35, i32 %36
  store ptr %27, ptr %37, align 4
  br label %38

38:                                               ; preds = %34, %33, %29, %10
  %39 = add nuw nsw i32 %8, 1
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %41, label %7

41:                                               ; preds = %38, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_clk_register_gates_with_dev(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %57, label %7

7:                                                ; preds = %5
  %8 = tail call ptr @device_node_to_regmap(ptr noundef %0) #8
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = icmp sgt i32 %2, 0
  br i1 %11, label %15, label %57

12:                                               ; preds = %7
  %13 = ptrtoint ptr %8 to i32
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0, i32 noundef %13) #10
  br label %57

15:                                               ; preds = %54, %10
  %16 = phi i32 [ %55, %54 ], [ 0, %10 ]
  %17 = getelementptr %struct.mtk_gate, ptr %1, i32 %16
  %18 = load ptr, ptr %3, align 4
  %19 = load i32, ptr %17, align 4
  %20 = getelementptr ptr, ptr %18, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %15
  %26 = getelementptr %struct.mtk_gate, ptr %1, i32 %16, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.mtk_gate, ptr %1, i32 %16, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr %struct.mtk_gate, ptr %1, i32 %16, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mtk_gate_regs, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mtk_gate_regs, ptr %31, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %31, align 4
  %37 = getelementptr %struct.mtk_gate, ptr %1, i32 %16, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = trunc i32 %38 to i8
  %40 = getelementptr %struct.mtk_gate, ptr %1, i32 %16, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr %struct.mtk_gate, ptr %1, i32 %16, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = tail call ptr @mtk_clk_register_gate(ptr noundef %27, ptr noundef %29, ptr noundef %8, i32 noundef %33, i32 noundef %35, i32 noundef %36, i8 noundef zeroext %39, ptr noundef %41, i32 noundef %43, ptr noundef %4) #8
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %50

46:                                               ; preds = %25
  %47 = load ptr, ptr %26, align 4
  %48 = ptrtoint ptr %44 to i32
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %47, i32 noundef %48) #10
  br label %54

50:                                               ; preds = %25
  %51 = load ptr, ptr %3, align 4
  %52 = load i32, ptr %17, align 4
  %53 = getelementptr ptr, ptr %51, i32 %52
  store ptr %44, ptr %53, align 4
  br label %54

54:                                               ; preds = %50, %46, %15
  %55 = add nuw nsw i32 %16, 1
  %56 = icmp eq i32 %55, %2
  br i1 %56, label %57, label %15

57:                                               ; preds = %54, %12, %10, %5
  %58 = phi i32 [ %13, %12 ], [ -12, %5 ], [ 0, %10 ], [ 0, %54 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_clk_register_gates(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 @mtk_clk_register_gates_with_dev(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mtk_clk_register_composite(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.mtk_composite, ptr %0, i32 0, i32 8
  %6 = load i8, ptr %5, align 4
  %7 = icmp sgt i8 %6, -1
  br i1 %7, label %8, label %34

8:                                                ; preds = %3
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 32) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %92, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mtk_composite, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %1, i32 %14
  %16 = getelementptr inbounds %struct.clk_mux, ptr %10, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mtk_composite, ptr %0, i32 0, i32 9
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nsw i32 -1, %19
  %21 = xor i32 %20, -1
  %22 = getelementptr inbounds %struct.clk_mux, ptr %10, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  %23 = load i8, ptr %5, align 4
  %24 = getelementptr inbounds %struct.clk_mux, ptr %10, i32 0, i32 4
  store i8 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.clk_mux, ptr %10, i32 0, i32 6
  store ptr %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mtk_composite, ptr %0, i32 0, i32 13
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds %struct.clk_mux, ptr %10, i32 0, i32 5
  store i8 %27, ptr %28, align 1
  %29 = getelementptr inbounds %struct.mtk_composite, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mtk_composite, ptr %0, i32 0, i32 14
  %32 = load i8, ptr %31, align 2
  %33 = sext i8 %32 to i32
  br label %37

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.mtk_composite, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  store ptr %36, ptr %4, align 4
  br label %37

37:                                               ; preds = %34, %12
  %38 = phi ptr [ %10, %12 ], [ null, %34 ]
  %39 = phi ptr [ @clk_mux_ops, %12 ], [ null, %34 ]
  %40 = phi ptr [ %30, %12 ], [ %4, %34 ]
  %41 = phi i32 [ %33, %12 ], [ 1, %34 ]
  %42 = getelementptr inbounds %struct.mtk_composite, ptr %0, i32 0, i32 10
  %43 = load i8, ptr %42, align 2
  %44 = icmp sgt i8 %43, -1
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 24) #7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %88, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.mtk_composite, ptr %0, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr i8, ptr %1, i32 %51
  %53 = getelementptr inbounds %struct.clk_gate, ptr %47, i32 0, i32 1
  store ptr %52, ptr %53, align 4
  %54 = load i8, ptr %42, align 2
  %55 = getelementptr inbounds %struct.clk_gate, ptr %47, i32 0, i32 2
  store i8 %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.clk_gate, ptr %47, i32 0, i32 3
  store i8 1, ptr %56, align 1
  %57 = getelementptr inbounds %struct.clk_gate, ptr %47, i32 0, i32 4
  store ptr %2, ptr %57, align 4
  br label %58

58:                                               ; preds = %49, %37
  %59 = phi ptr [ %47, %49 ], [ null, %37 ]
  %60 = phi ptr [ @clk_gate_ops, %49 ], [ null, %37 ]
  %61 = getelementptr inbounds %struct.mtk_composite, ptr %0, i32 0, i32 11
  %62 = load i8, ptr %61, align 1
  %63 = icmp sgt i8 %62, -1
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 28) #7
  %67 = icmp eq ptr %66, null
  br i1 %67, label %88, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.mtk_composite, ptr %0, i32 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i8, ptr %1, i32 %70
  %72 = getelementptr inbounds %struct.clk_divider, ptr %66, i32 0, i32 1
  store ptr %71, ptr %72, align 4
  %73 = load i8, ptr %61, align 1
  %74 = getelementptr inbounds %struct.clk_divider, ptr %66, i32 0, i32 2
  store i8 %73, ptr %74, align 8
  %75 = getelementptr inbounds %struct.mtk_composite, ptr %0, i32 0, i32 12
  %76 = load i8, ptr %75, align 4
  %77 = getelementptr inbounds %struct.clk_divider, ptr %66, i32 0, i32 3
  store i8 %76, ptr %77, align 1
  %78 = getelementptr inbounds %struct.clk_divider, ptr %66, i32 0, i32 6
  store ptr %2, ptr %78, align 8
  br label %79

79:                                               ; preds = %68, %58
  %80 = phi ptr [ %66, %68 ], [ null, %58 ]
  %81 = phi ptr [ @clk_divider_ops, %68 ], [ null, %58 ]
  %82 = getelementptr inbounds %struct.mtk_composite, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.mtk_composite, ptr %0, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %83, ptr noundef %40, i32 noundef %41, ptr noundef %38, ptr noundef %39, ptr noundef %80, ptr noundef %81, ptr noundef %59, ptr noundef %60, i32 noundef %85) #8
  %87 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %88, label %92

88:                                               ; preds = %79, %64, %45
  %89 = phi ptr [ null, %45 ], [ %59, %64 ], [ %59, %79 ]
  %90 = phi ptr [ null, %45 ], [ null, %64 ], [ %80, %79 ]
  %91 = phi ptr [ inttoptr (i32 -12 to ptr), %45 ], [ inttoptr (i32 -12 to ptr), %64 ], [ %86, %79 ]
  call void @kfree(ptr noundef %90) #8
  call void @kfree(ptr noundef %89) #8
  call void @kfree(ptr noundef %38) #8
  br label %92

92:                                               ; preds = %88, %79, %8
  %93 = phi ptr [ %91, %88 ], [ %86, %79 ], [ inttoptr (i32 -12 to ptr), %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret ptr %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_clk_register_composites(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4) #0 {
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %5
  %8 = icmp eq ptr %4, null
  br label %9

9:                                                ; preds = %36, %7
  %10 = phi i32 [ 0, %7 ], [ %37, %36 ]
  %11 = getelementptr %struct.mtk_composite, ptr %0, i32 %10
  br i1 %8, label %20, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 4
  %14 = load i32, ptr %11, align 4
  %15 = getelementptr ptr, ptr %13, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %19 = or i1 %17, %18
  br i1 %19, label %23, label %36

20:                                               ; preds = %9
  %21 = tail call ptr @mtk_clk_register_composite(ptr noundef %11, ptr noundef %2, ptr noundef %3)
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %26, label %36

23:                                               ; preds = %12
  %24 = tail call ptr @mtk_clk_register_composite(ptr noundef %11, ptr noundef %2, ptr noundef %3)
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %32

26:                                               ; preds = %23, %20
  %27 = phi ptr [ %24, %23 ], [ %21, %20 ]
  %28 = getelementptr %struct.mtk_composite, ptr %0, i32 %10, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = ptrtoint ptr %27 to i32
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %29, i32 noundef %30) #10
  br label %36

32:                                               ; preds = %23
  %33 = load ptr, ptr %4, align 4
  %34 = load i32, ptr %11, align 4
  %35 = getelementptr ptr, ptr %33, i32 %34
  store ptr %24, ptr %35, align 4
  br label %36

36:                                               ; preds = %32, %26, %20, %12
  %37 = add nuw nsw i32 %10, 1
  %38 = icmp eq i32 %37, %1
  br i1 %38, label %39, label %9

39:                                               ; preds = %36, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mtk_clk_register_dividers(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %50

7:                                                ; preds = %5
  %8 = icmp eq ptr %4, null
  br label %9

9:                                                ; preds = %47, %7
  %10 = phi i32 [ 0, %7 ], [ %48, %47 ]
  %11 = getelementptr %struct.mtk_clk_divider, ptr %0, i32 %10
  br i1 %8, label %20, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 4
  %14 = load i32, ptr %11, align 4
  %15 = getelementptr ptr, ptr %13, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %12, %9
  %21 = getelementptr %struct.mtk_clk_divider, ptr %0, i32 %10, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.mtk_clk_divider, ptr %0, i32 %10, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr %struct.mtk_clk_divider, ptr %0, i32 %10, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.mtk_clk_divider, ptr %0, i32 %10, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %2, i32 %28
  %30 = getelementptr %struct.mtk_clk_divider, ptr %0, i32 %10, i32 5
  %31 = load i8, ptr %30, align 4
  %32 = getelementptr %struct.mtk_clk_divider, ptr %0, i32 %10, i32 6
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr %struct.mtk_clk_divider, ptr %0, i32 %10, i32 7
  %35 = load i8, ptr %34, align 2
  %36 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %22, ptr noundef %24, i32 noundef %26, ptr noundef %29, i8 noundef zeroext %31, i8 noundef zeroext %33, i8 noundef zeroext %35, ptr noundef null, ptr noundef %3) #8
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %42

38:                                               ; preds = %20
  %39 = load ptr, ptr %21, align 4
  %40 = ptrtoint ptr %36 to i32
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %39, i32 noundef %40) #10
  br label %47

42:                                               ; preds = %20
  br i1 %8, label %47, label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr %4, align 4
  %45 = load i32, ptr %11, align 4
  %46 = getelementptr ptr, ptr %44, i32 %45
  store ptr %36, ptr %46, align 4
  br label %47

47:                                               ; preds = %43, %42, %38, %12
  %48 = add nuw nsw i32 %10, 1
  %49 = icmp eq i32 %48, %1
  br i1 %49, label %50, label %9

50:                                               ; preds = %47, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_clk_simple_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_device_get_match_data(ptr noundef %2) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mtk_clk_desc, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 8) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %7
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #8
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %13
  store ptr null, ptr %11, align 8
  br label %43

17:                                               ; preds = %13
  %18 = extractvalue { i32, i1 } %14, 0
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #9
  store ptr %19, ptr %11, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.clk_onecell_data, ptr %11, i32 0, i32 1
  store i32 %9, ptr %22, align 4
  %23 = icmp eq i32 %9, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  store ptr inttoptr (i32 -2 to ptr), ptr %19, align 64
  %25 = icmp eq i32 %9, 1
  br i1 %25, label %32, label %26

26:                                               ; preds = %26, %24
  %27 = phi i32 [ %30, %26 ], [ 1, %24 ]
  %28 = load ptr, ptr %11, align 8
  %29 = getelementptr ptr, ptr %28, i32 %27
  store ptr inttoptr (i32 -2 to ptr), ptr %29, align 4
  %30 = add nuw i32 %27, 1
  %31 = icmp eq i32 %30, %9
  br i1 %31, label %32, label %26

32:                                               ; preds = %26, %24, %21
  %33 = load ptr, ptr %5, align 4
  %34 = load i32, ptr %8, align 4
  %35 = tail call i32 @mtk_clk_register_gates_with_dev(ptr noundef %4, ptr noundef %33, i32 noundef %34, ptr noundef nonnull %11, ptr noundef null) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = tail call i32 @of_clk_add_provider(ptr noundef %4, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %11) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37, %32
  %41 = phi i32 [ %35, %32 ], [ %38, %37 ]
  %42 = load ptr, ptr %11, align 8
  tail call void @kfree(ptr noundef %42) #8
  br label %43

43:                                               ; preds = %40, %17, %16
  %44 = phi i32 [ %41, %40 ], [ -12, %17 ], [ -12, %16 ]
  tail call void @kfree(ptr noundef nonnull %11) #8
  br label %45

45:                                               ; preds = %43, %37, %7, %1
  %46 = phi i32 [ -22, %1 ], [ 0, %37 ], [ -12, %7 ], [ %44, %43 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

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
!9 = !{!"auto-init"}
