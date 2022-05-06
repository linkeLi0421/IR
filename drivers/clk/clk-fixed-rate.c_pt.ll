; ModuleID = '/llk/IR/drivers/clk/clk-fixed-rate.c_pt.bc'
source_filename = "../drivers/clk/clk-fixed-rate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_fixed_rate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_fixed_rate_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_fixed_rate_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clk_hw_register_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22__clk_hw_register_fixed_rate\22\09\09\09\09\09"
module asm "__kstrtabns___clk_hw_register_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_register_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_register_fixed_rate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_register_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_unregister_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_unregister_fixed_rate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_unregister_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_unregister_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_unregister_fixed_rate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_unregister_fixed_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_fixed_rate = type { %struct.clk_hw, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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

@clk_fixed_rate_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_fixed_rate_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_fixed_rate_recalc_accuracy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_fixed_rate_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_fixed_rate_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_fixed_rate_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_fixed_rate_ops to i32), ptr @__kstrtab_clk_fixed_rate_ops, ptr @__kstrtabns_clk_fixed_rate_ops }, section "___ksymtab_gpl+clk_fixed_rate_ops", align 4
@__kstrtab___clk_hw_register_fixed_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns___clk_hw_register_fixed_rate = external dso_local constant [0 x i8], align 1
@__ksymtab___clk_hw_register_fixed_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clk_hw_register_fixed_rate to i32), ptr @__kstrtab___clk_hw_register_fixed_rate, ptr @__kstrtabns___clk_hw_register_fixed_rate }, section "___ksymtab_gpl+__clk_hw_register_fixed_rate", align 4
@__kstrtab_clk_register_fixed_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_register_fixed_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_register_fixed_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_register_fixed_rate to i32), ptr @__kstrtab_clk_register_fixed_rate, ptr @__kstrtabns_clk_register_fixed_rate }, section "___ksymtab_gpl+clk_register_fixed_rate", align 4
@__kstrtab_clk_unregister_fixed_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_unregister_fixed_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_unregister_fixed_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_unregister_fixed_rate to i32), ptr @__kstrtab_clk_unregister_fixed_rate, ptr @__kstrtabns_clk_unregister_fixed_rate }, section "___ksymtab_gpl+clk_unregister_fixed_rate", align 4
@__kstrtab_clk_hw_unregister_fixed_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_unregister_fixed_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_unregister_fixed_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_unregister_fixed_rate to i32), ptr @__kstrtab_clk_hw_unregister_fixed_rate, ptr @__kstrtabns_clk_hw_unregister_fixed_rate }, section "___ksymtab_gpl+clk_hw_unregister_fixed_rate", align 4
@__of_table_fixed_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_fixed_clk_setup }, section "__clk_of_table", align 4
@__initcall__kmod_clk_fixed_rate__166_219_of_fixed_clk_driver_init6 = internal global ptr @of_fixed_clk_driver_init, section ".initcall6.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"clock-accuracy\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@of_fixed_clk_driver = internal global %struct.platform_driver { ptr @of_fixed_clk_probe, ptr @of_fixed_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_fixed_clk_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"of_fixed_clk\00", align 1
@of_fixed_clk_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__initcall__kmod_clk_fixed_rate__166_219_of_fixed_clk_driver_init6, ptr @__ksymtab___clk_hw_register_fixed_rate, ptr @__ksymtab_clk_fixed_rate_ops, ptr @__ksymtab_clk_hw_unregister_fixed_rate, ptr @__ksymtab_clk_register_fixed_rate, ptr @__ksymtab_clk_unregister_fixed_rate, ptr @__of_table_fixed_clk], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_fixed_rate_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_fixed_rate, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_fixed_rate_recalc_accuracy(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_fixed_rate, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.clk_fixed_rate, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ %1, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #1 {
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca %struct.clk_init_data, align 4
  store ptr %3, ptr %11, align 4
  store ptr %4, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %13) #7
  %14 = getelementptr inbounds i8, ptr %13, i32 20
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 24) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18

18:                                               ; preds = %10
  store ptr %2, ptr %13, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 1
  store ptr @clk_fixed_rate_ops, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 6
  store i32 %6, ptr %20, align 4
  %21 = icmp eq ptr %3, null
  %22 = select i1 %21, ptr null, ptr %11
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %4, null
  %25 = select i1 %24, ptr null, ptr %12
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 4
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 3
  store ptr %5, ptr %27, align 4
  %28 = icmp ne ptr %3, null
  %29 = icmp ne ptr %4, null
  %30 = or i1 %28, %29
  %31 = icmp ne ptr %5, null
  %32 = or i1 %31, %30
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %13, i32 0, i32 5
  store i8 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_fixed_rate, ptr %16, i32 0, i32 3
  store i32 %9, ptr %35, align 4
  %36 = getelementptr inbounds %struct.clk_fixed_rate, ptr %16, i32 0, i32 1
  store i32 %7, ptr %36, align 4
  %37 = getelementptr inbounds %struct.clk_fixed_rate, ptr %16, i32 0, i32 2
  store i32 %8, ptr %37, align 8
  %38 = getelementptr inbounds %struct.clk_hw, ptr %16, i32 0, i32 2
  store ptr %13, ptr %38, align 8
  %39 = icmp eq ptr %0, null
  %40 = icmp ne ptr %1, null
  %41 = and i1 %39, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %18
  %43 = call i32 @clk_hw_register(ptr noundef %0, ptr noundef nonnull %16) #7
  br label %46

44:                                               ; preds = %18
  %45 = call i32 @of_clk_hw_register(ptr noundef nonnull %1, ptr noundef nonnull %16) #7
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %45, %44 ], [ %43, %42 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  call void @kfree(ptr noundef nonnull %16) #7
  %50 = inttoptr i32 %47 to ptr
  br label %51

51:                                               ; preds = %49, %46, %10
  %52 = phi ptr [ %50, %49 ], [ %16, %46 ], [ inttoptr (i32 -12 to ptr), %10 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %13) #7
  ret ptr %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_register_fixed_rate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store ptr %2, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #7
  %8 = getelementptr inbounds i8, ptr %7, i32 20
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 24) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br label %37

13:                                               ; preds = %5
  store ptr %1, ptr %7, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  store ptr @clk_fixed_rate_ops, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 6
  store i32 %3, ptr %15, align 4
  %16 = icmp eq ptr %2, null
  %17 = select i1 %16, ptr null, ptr %6
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 2
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 4
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 3
  store ptr null, ptr %20, align 4
  %21 = icmp ne ptr %2, null
  %22 = zext i1 %21 to i8
  store i8 %22, ptr %8, align 4
  %23 = getelementptr inbounds %struct.clk_fixed_rate, ptr %10, i32 0, i32 3
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_fixed_rate, ptr %10, i32 0, i32 1
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_fixed_rate, ptr %10, i32 0, i32 2
  store i32 0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.clk_hw, ptr %10, i32 0, i32 2
  store ptr %7, ptr %26, align 8
  %27 = call i32 @clk_hw_register(ptr noundef %0, ptr noundef nonnull %10) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %13
  call void @kfree(ptr noundef nonnull %10) #7
  %30 = inttoptr i32 %27 to ptr
  br label %31

31:                                               ; preds = %29, %13
  %32 = phi ptr [ %30, %29 ], [ %10, %13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.clk_hw, ptr %32, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %31, %12
  %38 = phi ptr [ %36, %34 ], [ inttoptr (i32 -12 to ptr), %12 ], [ %32, %31 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_unregister_fixed_rate(ptr noundef %0) #1 {
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
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_hw_unregister_fixed_rate(ptr noundef %0) #1 {
  tail call void @clk_hw_unregister(ptr noundef %0) #7
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @of_fixed_clk_setup(ptr noundef %0) #4 section ".init.text" {
  %2 = tail call fastcc ptr @_of_fixed_clk_setup(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @_of_fixed_clk_setup(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %6 = load ptr, ptr %0, align 4
  store ptr %6, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4
  %7 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #7
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  %10 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #7
  %11 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #7
  %12 = load ptr, ptr %3, align 4
  %13 = load i32, ptr %4, align 4
  %14 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #7
  %15 = getelementptr inbounds i8, ptr %2, i32 20
  store i32 0, ptr %15, align 4
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 24) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #7
  br label %40

20:                                               ; preds = %9
  store ptr %12, ptr %2, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @clk_fixed_rate_ops, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  %24 = getelementptr inbounds %struct.clk_fixed_rate, ptr %17, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(13) %23, i8 0, i64 13, i1 false)
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_fixed_rate, ptr %17, i32 0, i32 1
  store i32 %13, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_fixed_rate, ptr %17, i32 0, i32 2
  store i32 %14, ptr %26, align 8
  %27 = getelementptr inbounds %struct.clk_hw, ptr %17, i32 0, i32 2
  store ptr %2, ptr %27, align 8
  %28 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %17) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  call void @kfree(ptr noundef nonnull %17) #7
  %31 = inttoptr i32 %28 to ptr
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi ptr [ %31, %30 ], [ %17, %20 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #7
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %33) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  call void @clk_hw_unregister(ptr noundef %33) #7
  call void @kfree(ptr noundef %33) #7
  %39 = inttoptr i32 %36 to ptr
  br label %40

40:                                               ; preds = %38, %35, %32, %19, %1
  %41 = phi ptr [ %39, %38 ], [ %33, %32 ], [ %33, %35 ], [ inttoptr (i32 -5 to ptr), %1 ], [ inttoptr (i32 -12 to ptr), %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret ptr %41
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @of_fixed_clk_driver_init() #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @of_fixed_clk_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_fixed_clk_probe(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc ptr @_of_fixed_clk_setup(ptr noundef %3)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i32
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %9, align 8
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ 0, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_fixed_clk_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  tail call void @of_clk_del_provider(ptr noundef %5) #7
  tail call void @clk_hw_unregister(ptr noundef %3) #7
  tail call void @kfree(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
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
