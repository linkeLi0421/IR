; ModuleID = '/llk/IR/drivers/irqchip/irq-mst-intc.c_pt.bc'
source_filename = "../drivers/irqchip/irq-mst-intc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mst_intc_chip_data = type { %struct.raw_spinlock, i32, i32, ptr, i8, %struct.list_head, [4 x i16] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_irq_mst_intc__170_173_mst_irq_pm_init7 = internal global ptr @mst_irq_pm_init, section ".initcall7.init", align 4
@__of_table_mst_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mstar,mst-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mst_intc_of_init }, section "__irqchip_of_table", align 4
@mst_irq_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @mst_irq_suspend, ptr @mst_irq_resume, ptr null }, align 4
@mst_intc_list = internal global %struct.list_head { ptr @mst_intc_list, ptr @mst_intc_list }, align 4
@.str = private unnamed_addr constant [40 x i8] c"\013mst-intc: interrupt-parent not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"mstar,irqs-map-range\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"mstar,intc-no-eoi\00", align 1
@mst_intc_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mst_intc_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @mst_intc_domain_translate }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@mst_intc_chip = internal global %struct.irq_chip { ptr null, ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mst_intc_mask_irq, ptr null, ptr @mst_intc_unmask_irq, ptr @mst_intc_eoi_irq, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @mst_irq_chip_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_get_parent_state, ptr @irq_chip_set_parent_state, ptr @irq_chip_set_vcpu_affinity_parent, ptr null, ptr null, ptr null, ptr null, i32 21 }, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"mst-intc\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_irq_mst_intc__170_173_mst_irq_pm_init7, ptr @__of_table_mst_intc], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mst_irq_pm_init() #0 section ".init.text" {
  tail call void @register_syscore_ops(ptr noundef nonnull @mst_irq_syscore_ops) #9
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mst_intc_of_init(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = icmp eq ptr %1, null
  %8 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %9 = select i1 %7, ptr null, ptr %8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #9
  %10 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %10, i8 0, i64 68, i1 false) #9
  store ptr %9, ptr %4, align 4
  %11 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  %14 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %14, i8 0, i64 68, i1 false) #9
  store ptr %9, ptr %3, align 4
  %15 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %57

19:                                               ; preds = %13, %2
  %20 = phi ptr [ %15, %13 ], [ %11, %2 ]
  %21 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef nonnull %5) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull %6) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %23
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %28 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 36) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %57, label %30

30:                                               ; preds = %26
  %31 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #9
  %32 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %28, i32 0, i32 3
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @kfree(ptr noundef nonnull %28) #9
  br label %57

35:                                               ; preds = %30
  %36 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef null) #9
  %37 = icmp ne ptr %36, null
  %38 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %28, i32 0, i32 4
  %39 = zext i1 %37 to i8
  store i8 %39, ptr %38, align 8
  store i32 0, ptr %28, align 8
  %40 = load i32, ptr %5, align 4
  %41 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %28, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %6, align 4
  %43 = sub i32 %42, %40
  %44 = add i32 %43, 1
  %45 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %28, i32 0, i32 2
  store i32 %44, ptr %45, align 8
  %46 = icmp eq ptr %0, null
  %47 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %48 = select i1 %46, ptr null, ptr %47
  %49 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %20, i32 noundef 0, i32 noundef %44, ptr noundef %48, ptr noundef nonnull @mst_intc_domain_ops, ptr noundef nonnull %28) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %35
  %52 = load ptr, ptr %32, align 4
  call void @iounmap(ptr noundef %52) #9
  call void @kfree(ptr noundef nonnull %28) #9
  br label %57

53:                                               ; preds = %35
  %54 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %28, i32 0, i32 5
  store volatile ptr %54, ptr %54, align 4
  %55 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %28, i32 0, i32 5, i32 1
  %56 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mst_intc_list, i32 0, i32 1), align 4
  store ptr %54, ptr getelementptr inbounds (%struct.list_head, ptr @mst_intc_list, i32 0, i32 1), align 4
  store ptr @mst_intc_list, ptr %54, align 4
  store ptr %56, ptr %55, align 8
  store volatile ptr %54, ptr %56, align 4
  br label %57

57:                                               ; preds = %53, %51, %34, %26, %23, %19, %17
  %58 = phi i32 [ 0, %53 ], [ -12, %51 ], [ -12, %34 ], [ -22, %17 ], [ -22, %23 ], [ -22, %19 ], [ -12, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mst_irq_suspend() #2 {
  %1 = load ptr, ptr @mst_intc_list, align 4
  %2 = icmp eq ptr %1, @mst_intc_list
  br i1 %2, label %27, label %3

3:                                                ; preds = %24, %0
  %4 = phi ptr [ %25, %24 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -20
  %6 = getelementptr i8, ptr %4, i32 -8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = getelementptr i8, ptr %4, i32 -12
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 15
  %12 = icmp ult i32 %11, 16
  br i1 %12, label %24, label %13

13:                                               ; preds = %13, %3
  %14 = phi i32 [ %19, %13 ], [ 0, %3 ]
  %15 = shl i32 %14, 2
  %16 = getelementptr i8, ptr %8, i32 %15
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %16) #9, !srcloc !9
  %18 = getelementptr %struct.mst_intc_chip_data, ptr %5, i32 0, i32 6, i32 %14
  store i16 %17, ptr %18, align 2
  %19 = add nuw nsw i32 %14, 1
  %20 = load i32, ptr %9, align 4
  %21 = add i32 %20, 15
  %22 = lshr i32 %21, 4
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %13, label %24

24:                                               ; preds = %13, %3
  %25 = load ptr, ptr %4, align 4
  %26 = icmp eq ptr %25, @mst_intc_list
  br i1 %26, label %27, label %3

27:                                               ; preds = %24, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mst_irq_resume() #2 {
  %1 = load ptr, ptr @mst_intc_list, align 4
  %2 = icmp eq ptr %1, @mst_intc_list
  br i1 %2, label %27, label %3

3:                                                ; preds = %24, %0
  %4 = phi ptr [ %25, %24 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -20
  %6 = getelementptr i8, ptr %4, i32 -8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = getelementptr i8, ptr %4, i32 -12
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 15
  %12 = icmp ult i32 %11, 16
  br i1 %12, label %24, label %13

13:                                               ; preds = %13, %3
  %14 = phi i32 [ %19, %13 ], [ 0, %3 ]
  %15 = getelementptr %struct.mst_intc_chip_data, ptr %5, i32 0, i32 6, i32 %14
  %16 = load i16, ptr %15, align 2
  %17 = shl i32 %14, 2
  %18 = getelementptr i8, ptr %8, i32 %17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %16) #9, !srcloc !10
  %19 = add nuw nsw i32 %14, 1
  %20 = load i32, ptr %9, align 4
  %21 = add i32 %20, 15
  %22 = lshr i32 %21, 4
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %13, label %24

24:                                               ; preds = %13, %3
  %25 = load ptr, ptr %4, align 4
  %26 = icmp eq ptr %25, @mst_intc_list
  br i1 %26, label %27, label %3

27:                                               ; preds = %24, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mst_intc_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %41

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %1, i32 noundef %17, ptr noundef nonnull @mst_intc_chip, ptr noundef %7) #9
  %21 = icmp eq i32 %2, 1
  br i1 %21, label %30, label %22

22:                                               ; preds = %22, %19
  %23 = phi i32 [ %28, %22 ], [ 1, %19 ]
  %24 = load ptr, ptr %6, align 4
  %25 = add i32 %23, %1
  %26 = add i32 %23, %17
  %27 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %25, i32 noundef %26, ptr noundef nonnull @mst_intc_chip, ptr noundef %24) #9
  %28 = add nuw i32 %23, 1
  %29 = icmp eq i32 %28, %2
  br i1 %29, label %30, label %22

30:                                               ; preds = %22, %19, %15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, ptr noundef align 4 dereferenceable(72) %3, i32 72, i1 false)
  %31 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.irq_domain, ptr %32, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %5, align 4
  %35 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %7, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %17
  %38 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 2
  store i32 4, ptr %39, align 4
  %40 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #9
  br label %41

41:                                               ; preds = %30, %11, %4
  %42 = phi i32 [ %40, %30 ], [ -22, %4 ], [ -22, %11 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mst_intc_domain_translate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #8 {
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %1, align 4
  %8 = icmp eq ptr %7, null
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  br i1 %10, label %33, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.fwnode_handle, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, @of_fwnode_ops
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %6, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  store i32 %25, ptr %2, align 4
  %30 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 15
  store i32 %32, ptr %3, align 4
  br label %33

33:                                               ; preds = %29, %23, %19, %15, %11, %4
  %34 = phi i32 [ 0, %29 ], [ -22, %15 ], [ -22, %19 ], [ -22, %23 ], [ -22, %11 ], [ -22, %4 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mst_intc_mask_irq(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = and i32 %3, 15
  %7 = shl nuw nsw i32 1, %6
  %8 = lshr i32 %3, 2
  %9 = and i32 %8, 1073741820
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %11 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %5, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %9
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #9, !srcloc !9
  %15 = trunc i32 %7 to i16
  %16 = or i16 %14, %15
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr i8, ptr %17, i32 %9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %16) #9, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %10) #9
  tail call void @irq_chip_mask_parent(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mst_intc_unmask_irq(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = and i32 %3, 15
  %7 = shl nuw nsw i32 1, %6
  %8 = lshr i32 %3, 2
  %9 = and i32 %8, 1073741820
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %11 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %5, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %9
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #9, !srcloc !9
  %15 = trunc i32 %7 to i16
  %16 = xor i16 %15, -1
  %17 = and i16 %14, %16
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 %9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 %17) #9, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %10) #9
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mst_intc_eoi_irq(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %3, i32 0, i32 4
  %5 = load i8, ptr %4, align 4, !range !11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 15
  %11 = shl nuw nsw i32 1, %10
  %12 = lshr i32 %9, 2
  %13 = and i32 %12, 1073741820
  %14 = add nuw nsw i32 %13, 32
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %16 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %14
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #9, !srcloc !9
  %20 = trunc i32 %11 to i16
  %21 = or i16 %19, %20
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr i8, ptr %22, i32 %14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %23, i16 %21) #9, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %15) #9
  br label %24

24:                                               ; preds = %7, %1
  tail call void @irq_chip_eoi_parent(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mst_irq_chip_set_type(ptr noundef %0, i32 noundef %1) #2 {
  switch i32 %1, label %44 [
    i32 8, label %3
    i32 2, label %3
    i32 4, label %22
    i32 1, label %22
  ]

3:                                                ; preds = %2, %2
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = and i32 %5, 15
  %9 = shl nuw nsw i32 1, %8
  %10 = lshr i32 %5, 2
  %11 = and i32 %10, 1073741820
  %12 = add nuw nsw i32 %11, 16
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  %14 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %12
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %16) #9, !srcloc !9
  %18 = trunc i32 %9 to i16
  %19 = or i16 %17, %18
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr i8, ptr %20, i32 %12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %19) #9, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %13) #9
  br label %42

22:                                               ; preds = %2, %2
  %23 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = and i32 %24, 15
  %28 = shl nuw nsw i32 1, %27
  %29 = lshr i32 %24, 2
  %30 = and i32 %29, 1073741820
  %31 = add nuw nsw i32 %30, 16
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #9
  %33 = getelementptr inbounds %struct.mst_intc_chip_data, ptr %26, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 %31
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %35) #9, !srcloc !9
  %37 = trunc i32 %28 to i16
  %38 = xor i16 %37, -1
  %39 = and i16 %36, %38
  %40 = load ptr, ptr %33, align 4
  %41 = getelementptr i8, ptr %40, i32 %31
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %41, i16 %39) #9, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %32) #9
  br label %42

42:                                               ; preds = %22, %3
  %43 = tail call i32 @irq_chip_set_type_parent(ptr noundef %0, i32 noundef 4) #9
  br label %44

44:                                               ; preds = %42, %2
  %45 = phi i32 [ %43, %42 ], [ -22, %2 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_get_parent_state(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_parent_state(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_vcpu_affinity_parent(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{i64 3055153}
!10 = !{i64 3054953}
!11 = !{i8 0, i8 2}
