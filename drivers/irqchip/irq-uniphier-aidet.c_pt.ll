; ModuleID = '/llk/IR/drivers/irqchip/irq-uniphier-aidet.c_pt.bc'
source_filename = "../drivers/irqchip/irq-uniphier-aidet.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.uniphier_aidet_priv = type { ptr, ptr, %struct.spinlock, [8 x i32] }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_irq_uniphier_aidet__166_251_uniphier_aidet_driver_init6 = internal global ptr @uniphier_aidet_driver_init, section ".initcall6.init", align 4
@uniphier_aidet_driver = internal global %struct.platform_driver { ptr @uniphier_aidet_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_aidet_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_aidet_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [15 x i8] c"uniphier-aidet\00", align 1
@uniphier_aidet_match = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld4-aidet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-aidet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-sld8-aidet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-aidet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-aidet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld11-aidet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-aidet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-aidet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@uniphier_aidet_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_aidet_suspend, ptr @uniphier_aidet_resume, ptr @uniphier_aidet_suspend, ptr @uniphier_aidet_resume, ptr @uniphier_aidet_suspend, ptr @uniphier_aidet_resume, ptr null, ptr null, ptr null }, align 4
@uniphier_aidet_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_aidet_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @uniphier_aidet_domain_translate }, align 4
@uniphier_aidet_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr null, ptr @uniphier_aidet_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"AIDET\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"drivers/irqchip/irq-uniphier-aidet.c\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_irq_uniphier_aidet__166_251_uniphier_aidet_driver_init6], section "llvm.metadata"
@switch.table.uniphier_aidet_domain_alloc = private unnamed_addr constant [8 x i32] [i32 1, i32 1, i32 1, i32 4, i32 1, i32 1, i32 1, i32 4], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_aidet_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_aidet_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_aidet_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.irq_fwspec, align 4
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_irq_find_parent(ptr noundef %6) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #5
  %11 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %11, i8 0, i64 68, i1 false) #5
  store ptr %10, ptr %3, align 4
  %12 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call void @of_node_put(ptr noundef nonnull %7) #5
  br label %19

15:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #5
  %16 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %16, i8 0, i64 68, i1 false) #5
  store ptr %10, ptr %2, align 4
  %17 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %2, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #5
  call void @of_node_put(ptr noundef nonnull %7) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %15, %14
  %20 = phi ptr [ %12, %14 ], [ %17, %15 ]
  %21 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 44, i32 noundef 3520) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %25 = getelementptr inbounds %struct.uniphier_aidet_priv, ptr %21, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = ptrtoint ptr %24 to i32
  br label %39

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.uniphier_aidet_priv, ptr %21, i32 0, i32 2
  store i32 0, ptr %30, align 4
  %31 = load ptr, ptr %5, align 8
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %struct.device_node, ptr %31, i32 0, i32 3
  %34 = select i1 %32, ptr null, ptr %33
  %35 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %20, i32 noundef 0, i32 noundef 256, ptr noundef %34, ptr noundef nonnull @uniphier_aidet_domain_ops, ptr noundef nonnull %21) #5
  store ptr %35, ptr %21, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %21, ptr %38, align 8
  br label %39

39:                                               ; preds = %37, %29, %27, %19, %15, %1
  %40 = phi i32 [ %28, %27 ], [ 0, %37 ], [ -6, %1 ], [ -517, %15 ], [ -12, %19 ], [ -12, %29 ]
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_aidet_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #5
  %6 = getelementptr inbounds i8, ptr %5, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 52, i1 false), !annotation !8
  %7 = icmp eq i32 %2, 1
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 99, i32 noundef 9, ptr noundef null) #5
  br label %45

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 15
  %19 = add nsw i32 %18, -1
  %20 = icmp ult i32 %19, 8
  br i1 %20, label %21, label %45

21:                                               ; preds = %13
  %22 = trunc i32 %19 to i8
  %23 = lshr i8 -117, %22
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds [8 x i32], ptr @switch.table.uniphier_aidet_domain_alloc, i32 0, i32 %19
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %15, 255
  br i1 %29, label %45, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %1, i32 noundef %15, ptr noundef nonnull @uniphier_aidet_irq_chip, ptr noundef %32) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.irq_domain, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  store ptr %39, ptr %5, align 4
  %40 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  store i32 3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  store i32 %15, ptr %42, align 4
  %43 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 2
  store i32 %28, ptr %43, align 4
  %44 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef nonnull %5) #5
  br label %45

45:                                               ; preds = %35, %30, %26, %21, %13, %12, %4
  %46 = phi i32 [ %44, %35 ], [ -22, %4 ], [ -22, %12 ], [ -22, %13 ], [ -6, %26 ], [ %33, %30 ], [ -22, %21 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #5
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_aidet_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 99, i32 noundef 9, ptr noundef null) #5
  br label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  %12 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 15
  store i32 %14, ptr %3, align 4
  br label %15

15:                                               ; preds = %9, %8
  %16 = phi i32 [ -22, %8 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_aidet_irq_set_type(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  switch i32 %1, label %37 [
    i32 1, label %12
    i32 4, label %12
    i32 2, label %6
    i32 8, label %5
  ]

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %2
  %7 = phi i32 [ 4, %5 ], [ 1, %2 ]
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 31
  %11 = shl nuw i32 1, %10
  br label %17

12:                                               ; preds = %2, %2
  %13 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 31
  %16 = shl nuw i32 1, %15
  br label %17

17:                                               ; preds = %12, %6
  %18 = phi i32 [ %16, %12 ], [ %11, %6 ]
  %19 = phi i32 [ %14, %12 ], [ %9, %6 ]
  %20 = phi i32 [ %1, %12 ], [ %7, %6 ]
  %21 = phi i32 [ 0, %12 ], [ %11, %6 ]
  %22 = lshr i32 %19, 3
  %23 = and i32 %22, 536870908
  %24 = add nuw nsw i32 %23, 4
  %25 = getelementptr inbounds %struct.uniphier_aidet_priv, ptr %4, i32 0, i32 2
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #5
  %27 = getelementptr inbounds %struct.uniphier_aidet_priv, ptr %4, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 %24
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !10
  %31 = xor i32 %18, -1
  %32 = and i32 %30, %31
  %33 = or i32 %32, %21
  %34 = load ptr, ptr %27, align 4
  %35 = getelementptr i8, ptr %34, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #5
  %36 = tail call i32 @irq_chip_set_type_parent(ptr noundef %0, i32 noundef %20) #5
  br label %37

37:                                               ; preds = %17, %2
  %38 = phi i32 [ %36, %17 ], [ -22, %2 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_aidet_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !10
  %8 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 0
  store i32 %7, ptr %8, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !10
  %12 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 1
  store i32 %11, ptr %12, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !10
  %16 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 2
  store i32 %15, ptr %16, align 4
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !10
  %20 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 3
  store i32 %19, ptr %20, align 4
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !10
  %24 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 4
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !10
  %28 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 5
  store i32 %27, ptr %28, align 4
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i8, ptr %29, i32 28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !10
  %32 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 6
  store i32 %31, ptr %32, align 4
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !10
  %36 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 7
  store i32 %35, ptr %36, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_aidet_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 1
  %5 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !11
  %9 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !11
  %13 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !11
  %17 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #5, !srcloc !11
  %21 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #5, !srcloc !11
  %25 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #5, !srcloc !11
  %29 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #5, !srcloc !11
  %33 = getelementptr %struct.uniphier_aidet_priv, ptr %3, i32 0, i32 3, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i8, ptr %35, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #5, !srcloc !11
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2462342}
!11 = !{i64 2461924}
