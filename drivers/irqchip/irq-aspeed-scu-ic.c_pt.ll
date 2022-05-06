; ModuleID = '/llk/IR/drivers/irqchip/irq-aspeed-scu-ic.c_pt.bc'
source_filename = "../drivers/irqchip/irq-aspeed-scu-ic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.aspeed_scu_ic = type { i32, i32, i32, i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__of_table_ast2400_scu_ic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-scu-ic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_scu_ic_of_init }, section "__irqchip_of_table", align 4
@__of_table_ast2500_scu_ic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-scu-ic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_scu_ic_of_init }, section "__irqchip_of_table", align 4
@__of_table_ast2600_scu_ic0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-scu-ic0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_ast2600_scu_ic0_of_init }, section "__irqchip_of_table", align 4
@__of_table_ast2600_scu_ic1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-scu-ic1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_ast2600_scu_ic1_of_init }, section "__irqchip_of_table", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@aspeed_scu_ic_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @aspeed_scu_ic_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@aspeed_scu_ic_chip = internal global %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_scu_ic_irq_mask, ptr null, ptr @aspeed_scu_ic_irq_unmask, ptr null, ptr @aspeed_scu_ic_irq_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"aspeed-scu-ic\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__of_table_ast2400_scu_ic, ptr @__of_table_ast2500_scu_ic, ptr @__of_table_ast2600_scu_ic0, ptr @__of_table_ast2600_scu_ic1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @aspeed_scu_ic_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  store i32 127, ptr %4, align 8
  %7 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %4, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %4, i32 0, i32 2
  store i32 7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %4, i32 0, i32 3
  store i32 24, ptr %9, align 4
  %10 = tail call fastcc i32 @aspeed_scu_ic_of_init_common(ptr noundef nonnull %4, ptr noundef %0)
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ -12, %2 ]
  ret i32 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @aspeed_ast2600_scu_ic0_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  store i32 63, ptr %4, align 8
  %7 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %4, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %4, i32 0, i32 2
  store i32 6, ptr %8, align 8
  %9 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %4, i32 0, i32 3
  store i32 1376, ptr %9, align 4
  %10 = tail call fastcc i32 @aspeed_scu_ic_of_init_common(ptr noundef nonnull %4, ptr noundef %0)
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ -12, %2 ]
  ret i32 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @aspeed_ast2600_scu_ic1_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  store i32 48, ptr %4, align 8
  %7 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %4, i32 0, i32 1
  store i32 4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %4, i32 0, i32 2
  store i32 2, ptr %8, align 8
  %9 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %4, i32 0, i32 3
  store i32 1392, ptr %9, align 4
  %10 = tail call fastcc i32 @aspeed_scu_ic_of_init_common(ptr noundef nonnull %4, ptr noundef %0)
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ -12, %2 ]
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_scu_ic_of_init_common(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %4) #7
  %8 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %0, i32 0, i32 4
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %7 to i32
  br label %25

12:                                               ; preds = %6
  %13 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq ptr %1, null
  %19 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %20 = select i1 %18, ptr null, ptr %19
  %21 = tail call ptr @__irq_domain_add(ptr noundef %20, i32 noundef %17, i32 noundef %17, i32 noundef 0, ptr noundef nonnull @aspeed_scu_ic_domain_ops, ptr noundef %0) #7
  %22 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %0, i32 0, i32 5
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  tail call void @irq_set_chained_handler_and_data(i32 noundef %13, ptr noundef nonnull @aspeed_scu_ic_irq_handler, ptr noundef %0) #7
  br label %27

25:                                               ; preds = %15, %12, %10, %2
  %26 = phi i32 [ %11, %10 ], [ -19, %2 ], [ %13, %12 ], [ -12, %15 ]
  tail call void @kfree(ptr noundef %0) #7
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ %26, %25 ], [ 0, %24 ]
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_scu_ic_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %5, align 4
  %9 = shl i32 %8, 16
  %10 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %15(ptr noundef %18) #7
  br label %27

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %21(ptr noundef %22) #7
  %23 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call void %24(ptr noundef %22) #7
  br label %27

27:                                               ; preds = %26, %19, %17, %1
  %28 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %5, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %5, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = call i32 @regmap_read(ptr noundef %29, i32 noundef %31, ptr noundef nonnull %2) #7
  %33 = load i32, ptr %2, align 4
  %34 = load i32, ptr %5, align 4
  %35 = and i32 %34, %33
  %36 = lshr i32 %33, 16
  %37 = and i32 %35, %36
  store i32 %37, ptr %3, align 4
  %38 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %5, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %5, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  %43 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %42, i32 noundef %39) #7
  %44 = icmp ult i32 %43, %42
  br i1 %44, label %45, label %61

45:                                               ; preds = %27
  %46 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %5, i32 0, i32 5
  br label %47

47:                                               ; preds = %47, %45
  %48 = phi i32 [ %43, %45 ], [ %59, %47 ]
  %49 = load ptr, ptr %46, align 4
  %50 = load i32, ptr %38, align 4
  %51 = sub i32 %48, %50
  %52 = call i32 @generic_handle_domain_irq(ptr noundef %49, i32 noundef %51) #7
  %53 = load ptr, ptr %28, align 4
  %54 = load i32, ptr %30, align 4
  %55 = add i32 %48, 16
  %56 = shl nuw i32 1, %55
  %57 = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef %54, i32 noundef %9, i32 noundef %56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %58 = add nuw i32 %48, 1
  %59 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %42, i32 noundef %58) #7
  %60 = icmp ult i32 %59, %42
  br i1 %60, label %47, label %61

61:                                               ; preds = %47, %27
  %62 = load ptr, ptr %10, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 9
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi ptr [ %66, %64 ], [ %62, %61 ]
  %69 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %68(ptr noundef %69) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_scu_ic_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @aspeed_scu_ic_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #7
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_scu_ic_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = shl nuw i32 1, %8
  %10 = load i32, ptr %3, align 4
  %11 = shl i32 %10, 16
  %12 = or i32 %9, %11
  %13 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %3, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %3, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %16, i32 noundef %12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_scu_ic_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = shl nuw i32 1, %8
  %10 = load i32, ptr %3, align 4
  %11 = shl i32 %10, 16
  %12 = or i32 %9, %11
  %13 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %3, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.aspeed_scu_ic, ptr %3, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %16, i32 noundef %12, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_scu_ic_irq_set_affinity(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i1 noundef zeroext %2) #5 {
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }

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
