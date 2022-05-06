; ModuleID = '/llk/IR/drivers/iommu/exynos-iommu.c_pt.bc'
source_filename = "../drivers/iommu/exynos-iommu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysmmu_fault_info = type { i32, i16, ptr, i32 }
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
%struct.sysmmu_drvdata = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, ptr, %struct.list_head, %struct.list_head, i32, i32, %struct.iommu_device }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.exynos_iommu_domain = type { %struct.list_head, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.iommu_domain }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.exynos_iommu_owner = type { %struct.list_head, ptr, %struct.mutex }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }

@__initcall__kmod_exynos_iommu__229_1373_exynos_iommu_init1 = internal global ptr @exynos_iommu_init, section ".initcall1.init", align 4
@sysmmu_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos-sysmmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [22 x i8] c"exynos-iommu-lv2table\00", align 1
@lv2table_kmem_cache = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"\013%s: Failed to create kmem cache\0A\00", align 1
@__func__.exynos_iommu_init = private unnamed_addr constant [18 x i8] c"exynos_iommu_init\00", align 1
@exynos_sysmmu_driver = internal global %struct.platform_driver { ptr @exynos_sysmmu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @sysmmu_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysmmu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, section ".ref.data", align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"\013%s: Failed to register driver\0A\00", align 1
@zero_lv2_table = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"\013%s: Failed to allocate zero level2 page table\0A\00", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@exynos_iommu_ops = internal constant %struct.iommu_ops { ptr null, ptr @exynos_iommu_domain_alloc, ptr @exynos_iommu_domain_free, ptr @exynos_iommu_attach_device, ptr @exynos_iommu_detach_device, ptr @exynos_iommu_map, ptr null, ptr @exynos_iommu_unmap, ptr null, ptr null, ptr null, ptr null, ptr @exynos_iommu_iova_to_phys, ptr @exynos_iommu_probe_device, ptr @exynos_iommu_release_device, ptr null, ptr @generic_device_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_iommu_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1118208, ptr null }, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"\013%s: Failed to register exynos-iommu driver.\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"exynos-sysmmu\00", align 1
@sysmmu_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_sysmmu_suspend, ptr @exynos_sysmmu_resume, ptr null }, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Unabled to register handler of irq %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"sysmmu\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to get device clock(s)!\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@PG_ENT_SHIFT = internal unnamed_addr global i16 -1, align 2
@SYSMMU_LV1_PROT = internal constant [4 x i32] [i32 0, i32 33792, i32 1024, i32 1024], align 4
@LV1_PROT = internal unnamed_addr global ptr null, align 4
@SYSMMU_LV2_PROT = internal constant [4 x i32] [i32 0, i32 528, i32 16, i32 16], align 4
@LV2_PROT = internal unnamed_addr global ptr null, align 4
@SYSMMU_V5_LV1_PROT = internal constant [4 x i32] [i32 0, i32 16, i32 32, i32 48], align 4
@SYSMMU_V5_LV2_PROT = internal constant [4 x i32] [i32 0, i32 4, i32 8, i32 12], align 4
@dma_dev = internal unnamed_addr global ptr null, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"drivers/iommu/exynos-iommu.c\00", align 1
@sysmmu_faults = internal unnamed_addr constant [8 x %struct.sysmmu_fault_info] [%struct.sysmmu_fault_info { i32 0, i16 36, ptr @.str.13, i32 0 }, %struct.sysmmu_fault_info { i32 1, i16 44, ptr @.str.14, i32 0 }, %struct.sysmmu_fault_info { i32 2, i16 40, ptr @.str.15, i32 1 }, %struct.sysmmu_fault_info { i32 3, i16 48, ptr @.str.16, i32 0 }, %struct.sysmmu_fault_info { i32 4, i16 44, ptr @.str.17, i32 0 }, %struct.sysmmu_fault_info { i32 5, i16 44, ptr @.str.18, i32 0 }, %struct.sysmmu_fault_info { i32 6, i16 40, ptr @.str.19, i32 1 }, %struct.sysmmu_fault_info { i32 7, i16 40, ptr @.str.20, i32 1 }], align 4
@sysmmu_v5_faults = internal unnamed_addr constant [10 x %struct.sysmmu_fault_info] [%struct.sysmmu_fault_info { i32 0, i16 112, ptr @.str.21, i32 0 }, %struct.sysmmu_fault_info { i32 1, i16 112, ptr @.str.22, i32 0 }, %struct.sysmmu_fault_info { i32 2, i16 112, ptr @.str.14, i32 0 }, %struct.sysmmu_fault_info { i32 3, i16 112, ptr @.str.18, i32 0 }, %struct.sysmmu_fault_info { i32 4, i16 112, ptr @.str.17, i32 0 }, %struct.sysmmu_fault_info { i32 16, i16 128, ptr @.str.23, i32 1 }, %struct.sysmmu_fault_info { i32 17, i16 128, ptr @.str.24, i32 1 }, %struct.sysmmu_fault_info { i32 18, i16 128, ptr @.str.15, i32 1 }, %struct.sysmmu_fault_info { i32 19, i16 128, ptr @.str.20, i32 1 }, %struct.sysmmu_fault_info { i32 20, i16 128, ptr @.str.19, i32 1 }], align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"PAGE\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"AR MULTI-HIT\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"AW MULTI-HIT\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"BUS ERROR\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"AR SECURITY PROTECTION\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"AR ACCESS PROTECTION\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"AW SECURITY PROTECTION\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"AW ACCESS PROTECTION\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"AR PTW\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"AR PAGE\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"AW PTW\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"AW PAGE\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"%s: %s FAULT occurred at %#x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.28 = private unnamed_addr constant [42 x i8] c"\013%s: Failed(%d) to map %#zx bytes @ %#x\0A\00", align 1
@__func__.exynos_iommu_map = private unnamed_addr constant [17 x i8] c"exynos_iommu_map\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"Trying mapping on 1MiB@%#08x that is mapped\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"Trying mapping on %#08x mapped with 1MiB page\00", align 1
@.str.31 = private unnamed_addr constant [63 x i8] c"\013%s: Failed: size(%#zx) @ %#x is smaller than page size %#zx\0A\00", align 1
@__func__.exynos_iommu_unmap = private unnamed_addr constant [19 x i8] c"exynos_iommu_unmap\00", align 1
@exynos_iommu_of_xlate.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"&owner->rpm_lock\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_exynos_iommu__229_1373_exynos_iommu_init1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos_iommu_init() #0 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @sysmmu_of_match, ptr noundef null) #7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %0
  tail call void @of_node_put(ptr noundef nonnull %1) #7
  %4 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 1024, i32 noundef 1024, i32 noundef 0, ptr noundef null) #7
  store ptr %4, ptr @lv2table_kmem_cache, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.exynos_iommu_init) #8
  br label %31

8:                                                ; preds = %3
  %9 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_sysmmu_driver, ptr noundef null) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.exynos_iommu_init) #8
  br label %28

13:                                               ; preds = %8
  %14 = load ptr, ptr @lv2table_kmem_cache, align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %14, i32 noundef 3520) #7
  store ptr %15, ptr @zero_lv2_table, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.exynos_iommu_init) #8
  br label %26

19:                                               ; preds = %13
  %20 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @exynos_iommu_ops) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.exynos_iommu_init) #8
  %24 = load ptr, ptr @lv2table_kmem_cache, align 4
  %25 = load ptr, ptr @zero_lv2_table, align 4
  tail call void @kmem_cache_free(ptr noundef %24, ptr noundef %25) #7
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i32 [ -12, %17 ], [ %20, %22 ]
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_sysmmu_driver) #7
  br label %28

28:                                               ; preds = %26, %11
  %29 = phi i32 [ %9, %11 ], [ %27, %26 ]
  %30 = load ptr, ptr @lv2table_kmem_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %30) #7
  br label %31

31:                                               ; preds = %28, %19, %6, %0
  %32 = phi i32 [ %29, %28 ], [ -12, %6 ], [ 0, %0 ], [ 0, %19 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_set_iommu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_sysmmu_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 88, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %98, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %7 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %3, i32 0, i32 3
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %7 to i32
  br label %98

12:                                               ; preds = %5
  %13 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %98, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ %20, %19 ], [ %17, %15 ]
  %23 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %13, ptr noundef nonnull @exynos_sysmmu_irq, ptr noundef null, i32 noundef 0, ptr noundef %22, ptr noundef nonnull %3) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %13) #8
  br label %98

26:                                               ; preds = %21
  %27 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.7) #7
  %28 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %3, i32 0, i32 4
  store ptr %27, ptr %28, align 4
  %29 = icmp eq ptr %27, inttoptr (i32 -2 to ptr)
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store ptr null, ptr %28, align 4
  br label %34

31:                                               ; preds = %26
  %32 = ptrtoint ptr %27 to i32
  %33 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %98, label %34

34:                                               ; preds = %31, %30
  %35 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.8) #7
  %36 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %3, i32 0, i32 5
  store ptr %35, ptr %36, align 4
  %37 = icmp eq ptr %35, inttoptr (i32 -2 to ptr)
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store ptr null, ptr %36, align 4
  br label %42

39:                                               ; preds = %34
  %40 = ptrtoint ptr %35 to i32
  %41 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %98, label %42

42:                                               ; preds = %39, %38
  %43 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.9) #7
  %44 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %3, i32 0, i32 6
  store ptr %43, ptr %44, align 4
  %45 = icmp eq ptr %43, inttoptr (i32 -2 to ptr)
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store ptr null, ptr %44, align 4
  br label %50

47:                                               ; preds = %42
  %48 = ptrtoint ptr %43 to i32
  %49 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %98, label %50

50:                                               ; preds = %47, %46
  %51 = phi ptr [ %43, %47 ], [ null, %46 ]
  %52 = load ptr, ptr %28, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load ptr, ptr %36, align 4
  %56 = icmp eq ptr %55, null
  %57 = icmp eq ptr %51, null
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #8
  br label %98

60:                                               ; preds = %54, %50
  %61 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.11) #7
  %62 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %3, i32 0, i32 7
  store ptr %61, ptr %62, align 4
  %63 = icmp eq ptr %61, inttoptr (i32 -2 to ptr)
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store ptr null, ptr %62, align 4
  br label %68

65:                                               ; preds = %60
  %66 = ptrtoint ptr %61 to i32
  %67 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %98, label %68

68:                                               ; preds = %65, %64
  store ptr %2, ptr %3, align 4
  %69 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %3, i32 0, i32 8
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %3, i32 0, i32 15
  %71 = load ptr, ptr %16, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load ptr, ptr %2, align 4
  br label %75

75:                                               ; preds = %73, %68
  %76 = phi ptr [ %74, %73 ], [ %71, %68 ]
  %77 = tail call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef %70, ptr noundef %2, ptr noundef null, ptr noundef %76) #7
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %75
  %80 = tail call i32 @iommu_device_register(ptr noundef %70, ptr noundef nonnull @exynos_iommu_ops, ptr noundef %2) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %83, align 8
  tail call fastcc void @__sysmmu_get_version(ptr noundef nonnull %3)
  %84 = load i16, ptr @PG_ENT_SHIFT, align 2
  %85 = icmp slt i16 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %3, i32 0, i32 14
  %88 = load i32, ptr %87, align 4
  %89 = icmp ult i32 %88, 640
  %90 = select i1 %89, i16 0, i16 4
  %91 = select i1 %89, ptr @SYSMMU_LV1_PROT, ptr @SYSMMU_V5_LV1_PROT
  %92 = select i1 %89, ptr @SYSMMU_LV2_PROT, ptr @SYSMMU_V5_LV2_PROT
  store i16 %90, ptr @PG_ENT_SHIFT, align 2
  store ptr %91, ptr @LV1_PROT, align 4
  store ptr %92, ptr @LV2_PROT, align 4
  br label %93

93:                                               ; preds = %86, %82
  %94 = load ptr, ptr @dma_dev, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store ptr %2, ptr @dma_dev, align 4
  br label %97

97:                                               ; preds = %96, %93
  tail call void @pm_runtime_enable(ptr noundef %2) #7
  br label %98

98:                                               ; preds = %97, %79, %75, %65, %59, %47, %39, %31, %25, %12, %10, %1
  %99 = phi i32 [ %11, %10 ], [ %23, %25 ], [ 0, %97 ], [ -38, %59 ], [ -12, %1 ], [ %13, %12 ], [ %77, %75 ], [ %80, %79 ], [ %32, %31 ], [ %40, %39 ], [ %48, %47 ], [ %66, %65 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_sysmmu_irq(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %1, i32 0, i32 9
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 412, i32 noundef 9, ptr noundef null) #7
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %1, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 640
  %11 = select i1 %10, i32 24, i32 96
  %12 = select i1 %10, i32 8, i32 10
  %13 = select i1 %10, ptr @sysmmu_faults, ptr @sysmmu_v5_faults
  %14 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %14) #7
  %15 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %1, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_enable(ptr noundef %16) #7
  %18 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %1, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %11
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %22 = tail call i32 @llvm.cttz.i32(i32 %21, i1 false) #7, !range !12
  br label %23

23:                                               ; preds = %28, %7
  %24 = phi ptr [ %13, %7 ], [ %30, %28 ]
  %25 = phi i32 [ 0, %7 ], [ %29, %28 ]
  %26 = load i32, ptr %24, align 4
  %27 = icmp eq i32 %26, %22
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = add nuw nsw i32 %25, 1
  %30 = getelementptr %struct.sysmmu_fault_info, ptr %24, i32 1
  %31 = icmp eq i32 %29, %12
  br i1 %31, label %34, label %23

32:                                               ; preds = %23
  %33 = icmp eq i32 %25, %12
  br i1 %33, label %34, label %35, !prof !9

34:                                               ; preds = %32, %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/exynos-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 435, 0\0A.popsection", ""() #7, !srcloc !13
  unreachable

35:                                               ; preds = %32
  %36 = load ptr, ptr %18, align 4
  %37 = getelementptr inbounds %struct.sysmmu_fault_info, ptr %24, i32 0, i32 1
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %36, i32 %39
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %42 = load ptr, ptr %1, align 4
  %43 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 4
  br label %50

50:                                               ; preds = %48, %35
  %51 = phi ptr [ %49, %48 ], [ %46, %35 ]
  %52 = getelementptr inbounds %struct.sysmmu_fault_info, ptr %24, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.25, ptr noundef %51, ptr noundef %53, i32 noundef %41) #8
  %54 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %1, i32 0, i32 13
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %55, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %57 = inttoptr i32 %56 to ptr
  %58 = lshr i32 %41, 20
  %59 = getelementptr i32, ptr %57, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr @zero_lv2_table, align 4
  %62 = ptrtoint ptr %61 to i32
  %63 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %62, i32 -2130706432, i32 8454144) #9, !srcloc !16
  %64 = load i16, ptr @PG_ENT_SHIFT, align 2
  %65 = zext i16 %64 to i32
  %66 = lshr i32 %63, %65
  %67 = or i32 %66, 1
  %68 = icmp ne i32 %60, %67
  %69 = and i32 %60, 3
  %70 = icmp eq i32 %69, 1
  %71 = and i1 %70, %68
  br i1 %71, label %72, label %76

72:                                               ; preds = %50
  %73 = and i32 %60, -64
  %74 = shl i32 %73, %65
  %75 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %74, i32 -2130706432, i32 8454144) #9, !srcloc !15
  br label %76

76:                                               ; preds = %72, %50
  %77 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %1, i32 0, i32 10
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.exynos_iommu_domain, ptr %78, i32 0, i32 5
  %82 = load ptr, ptr %43, align 4
  %83 = getelementptr inbounds %struct.sysmmu_fault_info, ptr %24, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = tail call i32 @report_iommu_fault(ptr noundef %81, ptr noundef %82, i32 noundef %41, i32 noundef %84) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87, !prof !17

87:                                               ; preds = %80, %76
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/exynos-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 445, 0\0A.popsection", ""() #7, !srcloc !18
  unreachable

88:                                               ; preds = %80
  %89 = select i1 %10, i32 28, i32 100
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %90 = shl nuw i32 1, %22
  %91 = load ptr, ptr %18, align 4
  %92 = getelementptr i8, ptr %91, i32 %89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %93 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 5) #7, !srcloc !20
  %94 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %94) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %95 = load i16, ptr %14, align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__sysmmu_get_version(ptr nocapture noundef %0) unnamed_addr #3 {
  tail call fastcc void @__sysmmu_enable_clocks(ptr noundef %0)
  %2 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 52
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %6 = icmp eq i32 %5, -2147483647
  %7 = lshr i32 %5, 21
  %8 = select i1 %6, i32 128, i32 %7
  %9 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 14
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  %12 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  %14 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  %16 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #7
  tail call void @clk_unprepare(ptr noundef %17) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @report_iommu_fault(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__sysmmu_enable_clocks(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %10

10:                                               ; preds = %9, %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/exynos-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 351, 0\0A.popsection", ""() #7, !srcloc !27
  unreachable

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = tail call i32 @clk_enable(ptr noundef %13) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %20

20:                                               ; preds = %19, %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/exynos-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 352, 0\0A.popsection", ""() #7, !srcloc !28
  unreachable

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @clk_prepare(ptr noundef %23) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = tail call i32 @clk_enable(ptr noundef %23) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  tail call void @clk_unprepare(ptr noundef %23) #7
  br label %30

30:                                               ; preds = %29, %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/exynos-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 353, 0\0A.popsection", ""() #7, !srcloc !29
  unreachable

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @clk_prepare(ptr noundef %33) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = tail call i32 @clk_enable(ptr noundef %33) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  tail call void @clk_unprepare(ptr noundef %33) #7
  br label %40

40:                                               ; preds = %39, %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/exynos-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 354, 0\0A.popsection", ""() #7, !srcloc !30
  unreachable

41:                                               ; preds = %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_sysmmu_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 35
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dev_iommu, ptr %9, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  %16 = getelementptr inbounds %struct.exynos_iommu_owner, ptr %15, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %16) #7
  %17 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %3, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call fastcc void @__sysmmu_disable(ptr noundef %3)
  br label %21

21:                                               ; preds = %20, %14
  tail call void @mutex_unlock(ptr noundef %16) #7
  br label %22

22:                                               ; preds = %21, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_sysmmu_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 35
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dev_iommu, ptr %9, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  %16 = getelementptr inbounds %struct.exynos_iommu_owner, ptr %15, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %16) #7
  %17 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %3, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call fastcc void @__sysmmu_enable(ptr noundef %3)
  br label %21

21:                                               ; preds = %20, %14
  tail call void @mutex_unlock(ptr noundef %16) #7
  br label %22

22:                                               ; preds = %21, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__sysmmu_disable(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_enable(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 8
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !31
  tail call void @arm_heavy_mb() #7
  %7 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #7, !srcloc !20
  %11 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 9
  store i8 0, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  %12 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  %14 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  %16 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #7
  tail call void @clk_unprepare(ptr noundef %17) #7
  %18 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %18) #7
  tail call void @clk_unprepare(ptr noundef %18) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__sysmmu_enable(ptr noundef %0) unnamed_addr #3 {
  tail call fastcc void @__sysmmu_enable_clocks(ptr noundef %0)
  %2 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 8
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %4 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 7) #7, !srcloc !20
  %6 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 386
  %9 = icmp eq i32 %7, 386
  %10 = select i1 %9, i32 5244805, i32 17827716
  %11 = select i1 %8, i32 1925, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #7, !srcloc !20
  %14 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %6, align 4
  %17 = icmp ult i32 %16, 640
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %15) #7, !srcloc !20
  br label %25

21:                                               ; preds = %1
  %22 = lshr i32 %15, 12
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #7, !srcloc !20
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i32, ptr %6, align 4
  %27 = icmp ult i32 %26, 640
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  %28 = load ptr, ptr %4, align 4
  br i1 %27, label %29, label %31

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 1) #7, !srcloc !20
  br label %33

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 1) #7, !srcloc !20
  br label %33

33:                                               ; preds = %31, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %34 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 5) #7, !srcloc !20
  %35 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 9
  store i8 1, ptr %35, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #7
  %36 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  tail call void @clk_disable(ptr noundef %37) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @exynos_iommu_domain_alloc(i32 noundef %0) #3 {
  %2 = load i16, ptr @PG_ENT_SHIFT, align 2
  %3 = icmp slt i16 %2, 0
  %4 = load ptr, ptr @dma_dev, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %3, i1 true, i1 %5, !prof !9
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/exynos-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 735, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

8:                                                ; preds = %1
  %9 = and i32 %0, -3
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %88

11:                                               ; preds = %8
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 60) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %88, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 2) #7
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.exynos_iommu_domain, ptr %13, i32 0, i32 1
  store ptr %17, ptr %18, align 8
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %87, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef 1) #7
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.exynos_iommu_domain, ptr %13, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %85, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr @zero_lv2_table, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %27, i32 -2130706432, i32 8454144) #9, !srcloc !16
  %29 = load i16, ptr @PG_ENT_SHIFT, align 2
  %30 = zext i16 %29 to i32
  %31 = lshr i32 %28, %30
  %32 = or i32 %31, 1
  store i32 %32, ptr %17, align 4
  br label %33

33:                                               ; preds = %33, %25
  %34 = phi i32 [ 1, %25 ], [ %37, %33 ]
  %35 = load ptr, ptr %18, align 8
  %36 = getelementptr i32, ptr %35, i32 %34
  store i32 %32, ptr %36, align 4
  %37 = add nuw nsw i32 %34, 1
  %38 = icmp eq i32 %37, 4096
  br i1 %38, label %39, label %33

39:                                               ; preds = %33
  %40 = load ptr, ptr @dma_dev, align 4
  %41 = load ptr, ptr %18, align 8
  %42 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %41) #7
  %43 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %55, !prof !9

46:                                               ; preds = %39
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %47 = tail call ptr @dev_driver_string(ptr noundef %40) #7
  %48 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load ptr, ptr %40, align 4
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi ptr [ %52, %51 ], [ %49, %46 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %47, ptr noundef %54) #7
  br label %55

55:                                               ; preds = %53, %39
  br i1 %42, label %66, label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr @mem_map, align 4
  %58 = ptrtoint ptr %41 to i32
  %59 = add i32 %58, 1073741824
  %60 = lshr i32 %59, 12
  %61 = getelementptr %struct.page, ptr %57, i32 %60
  %62 = and i32 %58, 4095
  %63 = tail call i32 @dma_map_page_attrs(ptr noundef %40, ptr noundef %61, i32 noundef %62, i32 noundef 16384, i32 noundef 1, i32 noundef 0) #7
  %64 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %58, i32 -2130706432, i32 8454144) #9, !srcloc !16
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %71, label %70, !prof !17

66:                                               ; preds = %55
  %67 = ptrtoint ptr %41 to i32
  %68 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %67, i32 -2130706432, i32 8454144) #9, !srcloc !16
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %81, label %70, !prof !17

70:                                               ; preds = %66, %56
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/exynos-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 759, 0\0A.popsection", ""() #7, !srcloc !37
  unreachable

71:                                               ; preds = %56
  %72 = icmp eq i32 %63, -1
  br i1 %72, label %81, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.exynos_iommu_domain, ptr %13, i32 0, i32 3
  store i32 0, ptr %74, align 8
  %75 = getelementptr inbounds %struct.exynos_iommu_domain, ptr %13, i32 0, i32 4
  store i32 0, ptr %75, align 4
  store volatile ptr %13, ptr %13, align 8
  %76 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %13, ptr %76, align 4
  %77 = getelementptr inbounds %struct.exynos_iommu_domain, ptr %13, i32 0, i32 5
  %78 = getelementptr inbounds %struct.exynos_iommu_domain, ptr %13, i32 0, i32 5, i32 5
  store i32 0, ptr %78, align 4
  %79 = getelementptr inbounds %struct.exynos_iommu_domain, ptr %13, i32 0, i32 5, i32 5, i32 1
  store i32 -1, ptr %79, align 8
  %80 = getelementptr inbounds %struct.exynos_iommu_domain, ptr %13, i32 0, i32 5, i32 5, i32 2
  store i8 1, ptr %80, align 4
  br label %88

81:                                               ; preds = %71, %66
  %82 = phi i32 [ %58, %71 ], [ %67, %66 ]
  %83 = load ptr, ptr %23, align 4
  %84 = ptrtoint ptr %83 to i32
  tail call void @free_pages(i32 noundef %84, i32 noundef 1) #7
  br label %85

85:                                               ; preds = %81, %20
  %86 = phi i32 [ %82, %81 ], [ %16, %20 ]
  tail call void @free_pages(i32 noundef %86, i32 noundef 2) #7
  br label %87

87:                                               ; preds = %85, %15
  tail call void @kfree(ptr noundef nonnull %13) #7
  br label %88

88:                                               ; preds = %87, %73, %11, %8
  %89 = phi ptr [ null, %87 ], [ %77, %73 ], [ null, %8 ], [ null, %11 ]
  ret ptr %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_iommu_domain_free(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %6, label %5, !prof !17

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 789, i32 noundef 9, ptr noundef null) #7
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #7
  %9 = load ptr, ptr %2, align 4
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %25, label %11

11:                                               ; preds = %11, %6
  %12 = phi ptr [ %14, %11 ], [ %9, %6 ]
  %13 = getelementptr i8, ptr %12, i32 -44
  %14 = load ptr, ptr %12, align 4
  %15 = getelementptr i8, ptr %12, i32 -12
  tail call void @_raw_spin_lock(ptr noundef %15) #7
  tail call fastcc void @__sysmmu_disable(ptr noundef %13)
  %16 = getelementptr i8, ptr %12, i32 16
  store i32 0, ptr %16, align 4
  %17 = getelementptr i8, ptr %12, i32 -4
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %22 = load i16, ptr %15, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  %24 = icmp eq ptr %14, %2
  br i1 %24, label %25, label %11

25:                                               ; preds = %11, %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #7
  %26 = load ptr, ptr @dma_dev, align 4
  %27 = getelementptr i8, ptr %0, i32 -16
  %28 = load ptr, ptr %27, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %29, i32 -2130706432, i32 8454144) #9, !srcloc !16
  tail call void @dma_unmap_page_attrs(ptr noundef %26, i32 noundef %30, i32 noundef 16384, i32 noundef 1, i32 noundef 0) #7
  %31 = load ptr, ptr @zero_lv2_table, align 4
  br label %32

32:                                               ; preds = %56, %25
  %33 = phi ptr [ %31, %25 ], [ %57, %56 ]
  %34 = phi i32 [ 0, %25 ], [ %58, %56 ]
  %35 = load ptr, ptr %27, align 4
  %36 = getelementptr i32, ptr %35, i32 %34
  %37 = load i32, ptr %36, align 4
  %38 = ptrtoint ptr %33 to i32
  %39 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %38, i32 -2130706432, i32 8454144) #9, !srcloc !16
  %40 = load i16, ptr @PG_ENT_SHIFT, align 2
  %41 = sext i16 %40 to i32
  %42 = lshr i32 %39, %41
  %43 = or i32 %42, 1
  %44 = icmp ne i32 %37, %43
  %45 = and i32 %37, 3
  %46 = icmp eq i32 %45, 1
  %47 = and i1 %46, %44
  br i1 %47, label %48, label %56

48:                                               ; preds = %32
  %49 = and i32 %37, -64
  %50 = shl i32 %49, %41
  %51 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %51, i32 noundef %50, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #7
  %52 = load ptr, ptr @lv2table_kmem_cache, align 4
  %53 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %50, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %54 = inttoptr i32 %53 to ptr
  tail call void @kmem_cache_free(ptr noundef %52, ptr noundef %54) #7
  %55 = load ptr, ptr @zero_lv2_table, align 4
  br label %56

56:                                               ; preds = %48, %32
  %57 = phi ptr [ %33, %32 ], [ %55, %48 ]
  %58 = add nuw nsw i32 %34, 1
  %59 = icmp eq i32 %58, 4096
  br i1 %59, label %60, label %32

60:                                               ; preds = %56
  %61 = load ptr, ptr %27, align 4
  %62 = ptrtoint ptr %61 to i32
  tail call void @free_pages(i32 noundef %62, i32 noundef 2) #7
  %63 = getelementptr i8, ptr %0, i32 -12
  %64 = load ptr, ptr %63, align 4
  %65 = ptrtoint ptr %64 to i32
  tail call void @free_pages(i32 noundef %65, i32 noundef 1) #7
  tail call void @kfree(ptr noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_iommu_attach_device(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 35
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %10, i32 -2130706432, i32 8454144) #9, !srcloc !16
  br label %71

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dev_iommu, ptr %5, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %0, i32 -16
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %17, i32 -2130706432, i32 8454144) #9, !srcloc !16
  %19 = icmp eq ptr %14, null
  br i1 %19, label %71, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.exynos_iommu_owner, ptr %14, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @exynos_iommu_detach_device(ptr noundef nonnull %22, ptr noundef %1)
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.exynos_iommu_owner, ptr %14, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %26) #7
  %27 = getelementptr i8, ptr %0, i32 -8
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #7
  %29 = load ptr, ptr %14, align 4
  %30 = icmp eq ptr %29, %14
  br i1 %30, label %45, label %31

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %0, i32 -20
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi ptr [ %29, %31 ], [ %43, %33 ]
  %35 = getelementptr i8, ptr %34, i32 -20
  tail call void @_raw_spin_lock(ptr noundef %35) #7
  %36 = getelementptr i8, ptr %34, i32 8
  store i32 %18, ptr %36, align 4
  %37 = getelementptr i8, ptr %34, i32 -12
  store ptr %3, ptr %37, align 4
  %38 = getelementptr i8, ptr %34, i32 -8
  %39 = load ptr, ptr %32, align 4
  store ptr %38, ptr %32, align 4
  store ptr %3, ptr %38, align 4
  %40 = getelementptr i8, ptr %34, i32 -4
  store ptr %39, ptr %40, align 4
  store volatile ptr %38, ptr %39, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %41 = load i16, ptr %35, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  %43 = load ptr, ptr %34, align 4
  %44 = icmp eq ptr %43, %14
  br i1 %44, label %45, label %33

45:                                               ; preds = %33, %25
  store ptr %0, ptr %21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #7
  %46 = load ptr, ptr %14, align 4
  %47 = icmp eq ptr %46, %14
  br i1 %47, label %70, label %48

48:                                               ; preds = %65, %45
  %49 = phi ptr [ %68, %65 ], [ %46, %45 ]
  %50 = getelementptr i8, ptr %49, i32 -52
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #7, !srcloc !38
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #7, !srcloc !39
  %54 = load ptr, ptr %50, align 4
  %55 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 11, i32 18
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 11, i32 15
  %60 = load i16, ptr %59, align 8
  %61 = and i16 %60, 7
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58, %48
  tail call fastcc void @__sysmmu_enable(ptr noundef %50)
  %64 = load ptr, ptr %50, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = phi ptr [ %64, %63 ], [ %54, %58 ]
  %67 = tail call i32 @__pm_runtime_idle(ptr noundef %66, i32 noundef 5) #7
  %68 = load ptr, ptr %49, align 4
  %69 = icmp eq ptr %68, %14
  br i1 %69, label %70, label %48

70:                                               ; preds = %65, %45
  tail call void @mutex_unlock(ptr noundef %26) #7
  br label %71

71:                                               ; preds = %70, %12, %7
  %72 = phi i32 [ 0, %70 ], [ -19, %12 ], [ -19, %7 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_iommu_detach_device(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 35
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %10, i32 -2130706432, i32 8454144) #9, !srcloc !16
  br label %69

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dev_iommu, ptr %5, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %0, i32 -16
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %17, i32 -2130706432, i32 8454144) #9, !srcloc !16
  %19 = icmp eq ptr %14, null
  br i1 %19, label %69, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.exynos_iommu_owner, ptr %14, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %69

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.exynos_iommu_owner, ptr %14, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %25) #7
  %26 = load ptr, ptr %14, align 4
  %27 = icmp eq ptr %26, %14
  br i1 %27, label %50, label %28

28:                                               ; preds = %45, %24
  %29 = phi ptr [ %48, %45 ], [ %26, %24 ]
  %30 = getelementptr i8, ptr %29, i32 -52
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #7, !srcloc !38
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #7, !srcloc !39
  %34 = load ptr, ptr %30, align 4
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 11, i32 18
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 11, i32 15
  %40 = load i16, ptr %39, align 8
  %41 = and i16 %40, 7
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38, %28
  tail call fastcc void @__sysmmu_disable(ptr noundef %30)
  %44 = load ptr, ptr %30, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi ptr [ %44, %43 ], [ %34, %38 ]
  %47 = tail call i32 @__pm_runtime_idle(ptr noundef %46, i32 noundef 5) #7
  %48 = load ptr, ptr %29, align 4
  %49 = icmp eq ptr %48, %14
  br i1 %49, label %50, label %28

50:                                               ; preds = %45, %24
  %51 = getelementptr i8, ptr %0, i32 -8
  %52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %51) #7
  %53 = load ptr, ptr %3, align 4
  %54 = icmp eq ptr %53, %3
  br i1 %54, label %68, label %55

55:                                               ; preds = %55, %50
  %56 = phi ptr [ %57, %55 ], [ %53, %50 ]
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %56, i32 -12
  tail call void @_raw_spin_lock(ptr noundef %58) #7
  %59 = getelementptr i8, ptr %56, i32 16
  store i32 0, ptr %59, align 4
  %60 = getelementptr i8, ptr %56, i32 -4
  store ptr null, ptr %60, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %56, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %62, ptr %64, align 4
  store volatile ptr %63, ptr %62, align 4
  store volatile ptr %56, ptr %56, align 4
  store ptr %56, ptr %61, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %65 = load i16, ptr %58, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %58, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  %67 = icmp eq ptr %57, %3
  br i1 %67, label %68, label %55

68:                                               ; preds = %55, %50
  store ptr null, ptr %21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %52) #7
  tail call void @mutex_unlock(ptr noundef %25) #7
  br label %69

69:                                               ; preds = %68, %20, %12, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_iommu_map(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #3 {
  %7 = getelementptr i8, ptr %0, i32 -24
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/exynos-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1069, 0\0A.popsection", ""() #7, !srcloc !40
  unreachable

12:                                               ; preds = %6
  %13 = and i32 %4, 3
  %14 = getelementptr i8, ptr %0, i32 -4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #7
  %16 = load ptr, ptr %8, align 4
  %17 = lshr i32 %1, 20
  %18 = getelementptr i32, ptr %16, i32 %17
  %19 = icmp eq i32 %3, 1048576
  %20 = getelementptr i8, ptr %0, i32 -12
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i16, ptr %21, i32 %17
  %23 = load i32, ptr %18, align 4
  %24 = and i32 %23, 3
  %25 = icmp eq i32 %24, 2
  br i1 %19, label %26, label %78

26:                                               ; preds = %12
  br i1 %25, label %27, label %28

27:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 967, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %1) #7
  br label %332

28:                                               ; preds = %26
  %29 = load ptr, ptr @zero_lv2_table, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %30, i32 -2130706432, i32 8454144) #9, !srcloc !16
  %32 = load i16, ptr @PG_ENT_SHIFT, align 2
  %33 = zext i16 %32 to i32
  %34 = lshr i32 %31, %33
  %35 = or i32 %34, 1
  %36 = icmp ne i32 %23, %35
  %37 = icmp eq i32 %24, 1
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %51

39:                                               ; preds = %28
  %40 = load i16, ptr %22, align 2
  %41 = icmp eq i16 %40, 256
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 974, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %1) #7
  br label %332

43:                                               ; preds = %39
  %44 = load ptr, ptr @lv2table_kmem_cache, align 4
  %45 = and i32 %23, -64
  %46 = shl i32 %45, %33
  %47 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %46, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %48 = inttoptr i32 %47 to ptr
  tail call void @kmem_cache_free(ptr noundef %44, ptr noundef %48) #7
  store i16 0, ptr %22, align 2
  %49 = load i16, ptr @PG_ENT_SHIFT, align 2
  %50 = zext i16 %49 to i32
  br label %51

51:                                               ; preds = %43, %28
  %52 = phi i32 [ %50, %43 ], [ %33, %28 ]
  %53 = lshr i32 %2, %52
  %54 = load ptr, ptr @LV1_PROT, align 4
  %55 = getelementptr i32, ptr %54, i32 %13
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %53, %56
  %58 = or i32 %57, 2
  %59 = load ptr, ptr @dma_dev, align 4
  %60 = ptrtoint ptr %18 to i32
  %61 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %60, i32 -2130706432, i32 8454144) #9, !srcloc !16
  tail call void @dma_sync_single_for_cpu(ptr noundef %59, i32 noundef %61, i32 noundef 4, i32 noundef 1) #7
  store i32 %58, ptr %18, align 4
  %62 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %62, i32 noundef %61, i32 noundef 4, i32 noundef 1) #7
  %63 = getelementptr i8, ptr %0, i32 -8
  tail call void @_raw_spin_lock(ptr noundef %63) #7
  %64 = load i32, ptr %18, align 4
  %65 = and i32 %64, 3
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %75

67:                                               ; preds = %51
  %68 = load ptr, ptr %7, align 4
  %69 = icmp eq ptr %68, %7
  br i1 %69, label %75, label %70

70:                                               ; preds = %70, %67
  %71 = phi ptr [ %73, %70 ], [ %68, %67 ]
  %72 = getelementptr i8, ptr %71, i32 -44
  tail call fastcc void @sysmmu_tlb_invalidate_flpdcache(ptr noundef %72, i32 noundef %1) #7
  %73 = load ptr, ptr %71, align 4
  %74 = icmp eq ptr %73, %7
  br i1 %74, label %75, label %70

75:                                               ; preds = %70, %67, %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %76 = load i16, ptr %63, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %63, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  br label %335

78:                                               ; preds = %12
  br i1 %25, label %79, label %80

79:                                               ; preds = %78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 907, i32 noundef 9, ptr noundef nonnull @.str.30, i32 noundef %1) #7
  br label %327

80:                                               ; preds = %78
  %81 = load ptr, ptr @zero_lv2_table, align 4
  %82 = ptrtoint ptr %81 to i32
  %83 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %82, i32 -2130706432, i32 8454144) #9, !srcloc !16
  %84 = load i16, ptr @PG_ENT_SHIFT, align 2
  %85 = zext i16 %84 to i32
  %86 = lshr i32 %83, %85
  %87 = or i32 %86, 1
  %88 = icmp eq i32 %23, %87
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  switch i32 %24, label %147 [
    i32 0, label %90
    i32 3, label %90
  ]

90:                                               ; preds = %89, %89, %80
  %91 = load ptr, ptr @lv2table_kmem_cache, align 4
  %92 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %91, i32 noundef 2848) #7
  %93 = ptrtoint ptr %92 to i32
  %94 = and i32 %93, 1016
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96, !prof !17

96:                                               ; preds = %90
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/exynos-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 917, 0\0A.popsection", ""() #7, !srcloc !41
  unreachable

97:                                               ; preds = %90
  %98 = icmp eq ptr %92, null
  br i1 %98, label %327, label %99

99:                                               ; preds = %97
  %100 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %93, i32 -2130706432, i32 8454144) #9, !srcloc !16
  %101 = load i16, ptr @PG_ENT_SHIFT, align 2
  %102 = zext i16 %101 to i32
  %103 = lshr i32 %100, %102
  %104 = or i32 %103, 1
  %105 = load ptr, ptr @dma_dev, align 4
  %106 = ptrtoint ptr %18 to i32
  %107 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %106, i32 -2130706432, i32 8454144) #9, !srcloc !16
  tail call void @dma_sync_single_for_cpu(ptr noundef %105, i32 noundef %107, i32 noundef 4, i32 noundef 1) #7
  store i32 %104, ptr %18, align 4
  %108 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %108, i32 noundef %107, i32 noundef 4, i32 noundef 1) #7
  store i16 256, ptr %22, align 2
  %109 = load ptr, ptr @dma_dev, align 4
  %110 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %92) #7
  %111 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %112 = xor i1 %111, true
  %113 = select i1 %110, i1 %112, i1 false
  br i1 %113, label %114, label %123, !prof !9

114:                                              ; preds = %99
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %115 = tail call ptr @dev_driver_string(ptr noundef %109) #7
  %116 = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load ptr, ptr %109, align 4
  br label %121

121:                                              ; preds = %119, %114
  %122 = phi ptr [ %120, %119 ], [ %117, %114 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %115, ptr noundef %122) #7
  br label %123

123:                                              ; preds = %121, %99
  br i1 %110, label %132, label %124

124:                                              ; preds = %123
  %125 = load ptr, ptr @mem_map, align 4
  %126 = add i32 %93, 1073741824
  %127 = lshr i32 %126, 12
  %128 = getelementptr %struct.page, ptr %125, i32 %127
  %129 = and i32 %93, 4088
  %130 = tail call i32 @dma_map_page_attrs(ptr noundef %109, ptr noundef %128, i32 noundef %129, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #7
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %134

132:                                              ; preds = %124, %123
  %133 = load ptr, ptr @lv2table_kmem_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %133, ptr noundef nonnull %92) #7
  br label %327

134:                                              ; preds = %124
  br i1 %88, label %135, label %147

135:                                              ; preds = %134
  %136 = getelementptr i8, ptr %0, i32 -8
  tail call void @_raw_spin_lock(ptr noundef %136) #7
  %137 = load ptr, ptr %7, align 4
  %138 = icmp eq ptr %137, %7
  br i1 %138, label %144, label %139

139:                                              ; preds = %139, %135
  %140 = phi ptr [ %142, %139 ], [ %137, %135 ]
  %141 = getelementptr i8, ptr %140, i32 -44
  tail call fastcc void @sysmmu_tlb_invalidate_flpdcache(ptr noundef %141, i32 noundef %1) #7
  %142 = load ptr, ptr %140, align 4
  %143 = icmp eq ptr %142, %7
  br i1 %143, label %144, label %139

144:                                              ; preds = %139, %135
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %145 = load i16, ptr %136, align 4
  %146 = add i16 %145, 1
  store i16 %146, ptr %136, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  br label %147

147:                                              ; preds = %144, %134, %89
  %148 = load i32, ptr %18, align 4
  %149 = and i32 %148, -64
  %150 = load i16, ptr @PG_ENT_SHIFT, align 2
  %151 = zext i16 %150 to i32
  %152 = shl i32 %149, %151
  %153 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %152, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %154 = inttoptr i32 %153 to ptr
  %155 = lshr i32 %1, 12
  %156 = and i32 %155, 255
  %157 = getelementptr i32, ptr %154, i32 %156
  %158 = icmp ugt ptr %157, inttoptr (i32 -4096 to ptr)
  br i1 %158, label %330, label %159

159:                                              ; preds = %147
  %160 = load ptr, ptr %20, align 4
  %161 = getelementptr i16, ptr %160, i32 %17
  %162 = icmp eq i32 %3, 4096
  br i1 %162, label %163, label %181

163:                                              ; preds = %159
  %164 = load i32, ptr %157, align 4
  %165 = and i32 %164, 3
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %168, label %167, !prof !17

167:                                              ; preds = %163
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1003, i32 noundef 9, ptr noundef null) #7
  br label %332

168:                                              ; preds = %163
  %169 = lshr i32 %2, %151
  %170 = load ptr, ptr @LV2_PROT, align 4
  %171 = getelementptr i32, ptr %170, i32 %13
  %172 = load i32, ptr %171, align 4
  %173 = or i32 %169, %172
  %174 = or i32 %173, 2
  %175 = load ptr, ptr @dma_dev, align 4
  %176 = ptrtoint ptr %157 to i32
  %177 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %176, i32 -2130706432, i32 8454144) #9, !srcloc !16
  tail call void @dma_sync_single_for_cpu(ptr noundef %175, i32 noundef %177, i32 noundef 4, i32 noundef 1) #7
  store i32 %174, ptr %157, align 4
  %178 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %178, i32 noundef %177, i32 noundef 4, i32 noundef 1) #7
  %179 = load i16, ptr %161, align 2
  %180 = add i16 %179, -1
  store i16 %180, ptr %161, align 2
  br label %335

181:                                              ; preds = %159
  %182 = ptrtoint ptr %157 to i32
  %183 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %182, i32 -2130706432, i32 8454144) #9, !srcloc !16
  %184 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %184, i32 noundef %183, i32 noundef 64, i32 noundef 1) #7
  %185 = load i16, ptr @PG_ENT_SHIFT, align 2
  %186 = zext i16 %185 to i32
  %187 = lshr i32 %2, %186
  %188 = load ptr, ptr @LV2_PROT, align 4
  %189 = getelementptr i32, ptr %188, i32 %13
  %190 = load i32, ptr %157, align 4
  %191 = and i32 %190, 3
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %200, label %193, !prof !17

193:                                              ; preds = %181
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  br label %332

194:                                              ; preds = %312, %304, %296, %288, %280, %272, %264, %256, %248, %240, %232, %224, %216, %208, %200
  %195 = phi i32 [ 15, %312 ], [ 14, %304 ], [ 13, %296 ], [ 12, %288 ], [ 11, %280 ], [ 10, %272 ], [ 9, %264 ], [ 8, %256 ], [ 7, %248 ], [ 6, %240 ], [ 5, %232 ], [ 4, %224 ], [ 3, %216 ], [ 2, %208 ], [ 1, %200 ]
  %196 = phi ptr [ %316, %312 ], [ %308, %304 ], [ %300, %296 ], [ %292, %288 ], [ %284, %280 ], [ %276, %272 ], [ %268, %264 ], [ %260, %256 ], [ %252, %248 ], [ %244, %240 ], [ %236, %232 ], [ %228, %224 ], [ %220, %216 ], [ %212, %208 ], [ %204, %200 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1016, i32 noundef 9, ptr noundef null) #7
  %197 = sub nsw i32 0, %195
  %198 = getelementptr i32, ptr %196, i32 %197
  %199 = shl nuw nsw i32 %195, 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 %198, i8 0, i32 %199, i1 false) #7
  br label %332

200:                                              ; preds = %181
  %201 = load i32, ptr %189, align 4
  %202 = or i32 %187, %201
  %203 = or i32 %202, 1
  store i32 %203, ptr %157, align 4
  %204 = getelementptr i32, ptr %157, i32 1
  %205 = load i32, ptr %204, align 4
  %206 = and i32 %205, 3
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %194, !prof !17

208:                                              ; preds = %200
  %209 = load i32, ptr %189, align 4
  %210 = or i32 %187, %209
  %211 = or i32 %210, 1
  store i32 %211, ptr %204, align 4
  %212 = getelementptr i32, ptr %157, i32 2
  %213 = load i32, ptr %212, align 4
  %214 = and i32 %213, 3
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %194, !prof !17

216:                                              ; preds = %208
  %217 = load i32, ptr %189, align 4
  %218 = or i32 %187, %217
  %219 = or i32 %218, 1
  store i32 %219, ptr %212, align 4
  %220 = getelementptr i32, ptr %157, i32 3
  %221 = load i32, ptr %220, align 4
  %222 = and i32 %221, 3
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %194, !prof !17

224:                                              ; preds = %216
  %225 = load i32, ptr %189, align 4
  %226 = or i32 %187, %225
  %227 = or i32 %226, 1
  store i32 %227, ptr %220, align 4
  %228 = getelementptr i32, ptr %157, i32 4
  %229 = load i32, ptr %228, align 4
  %230 = and i32 %229, 3
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %194, !prof !17

232:                                              ; preds = %224
  %233 = load i32, ptr %189, align 4
  %234 = or i32 %187, %233
  %235 = or i32 %234, 1
  store i32 %235, ptr %228, align 4
  %236 = getelementptr i32, ptr %157, i32 5
  %237 = load i32, ptr %236, align 4
  %238 = and i32 %237, 3
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %194, !prof !17

240:                                              ; preds = %232
  %241 = load i32, ptr %189, align 4
  %242 = or i32 %187, %241
  %243 = or i32 %242, 1
  store i32 %243, ptr %236, align 4
  %244 = getelementptr i32, ptr %157, i32 6
  %245 = load i32, ptr %244, align 4
  %246 = and i32 %245, 3
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %194, !prof !17

248:                                              ; preds = %240
  %249 = load i32, ptr %189, align 4
  %250 = or i32 %187, %249
  %251 = or i32 %250, 1
  store i32 %251, ptr %244, align 4
  %252 = getelementptr i32, ptr %157, i32 7
  %253 = load i32, ptr %252, align 4
  %254 = and i32 %253, 3
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %194, !prof !17

256:                                              ; preds = %248
  %257 = load i32, ptr %189, align 4
  %258 = or i32 %187, %257
  %259 = or i32 %258, 1
  store i32 %259, ptr %252, align 4
  %260 = getelementptr i32, ptr %157, i32 8
  %261 = load i32, ptr %260, align 4
  %262 = and i32 %261, 3
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %194, !prof !17

264:                                              ; preds = %256
  %265 = load i32, ptr %189, align 4
  %266 = or i32 %187, %265
  %267 = or i32 %266, 1
  store i32 %267, ptr %260, align 4
  %268 = getelementptr i32, ptr %157, i32 9
  %269 = load i32, ptr %268, align 4
  %270 = and i32 %269, 3
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %194, !prof !17

272:                                              ; preds = %264
  %273 = load i32, ptr %189, align 4
  %274 = or i32 %187, %273
  %275 = or i32 %274, 1
  store i32 %275, ptr %268, align 4
  %276 = getelementptr i32, ptr %157, i32 10
  %277 = load i32, ptr %276, align 4
  %278 = and i32 %277, 3
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %194, !prof !17

280:                                              ; preds = %272
  %281 = load i32, ptr %189, align 4
  %282 = or i32 %187, %281
  %283 = or i32 %282, 1
  store i32 %283, ptr %276, align 4
  %284 = getelementptr i32, ptr %157, i32 11
  %285 = load i32, ptr %284, align 4
  %286 = and i32 %285, 3
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %194, !prof !17

288:                                              ; preds = %280
  %289 = load i32, ptr %189, align 4
  %290 = or i32 %187, %289
  %291 = or i32 %290, 1
  store i32 %291, ptr %284, align 4
  %292 = getelementptr i32, ptr %157, i32 12
  %293 = load i32, ptr %292, align 4
  %294 = and i32 %293, 3
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %194, !prof !17

296:                                              ; preds = %288
  %297 = load i32, ptr %189, align 4
  %298 = or i32 %187, %297
  %299 = or i32 %298, 1
  store i32 %299, ptr %292, align 4
  %300 = getelementptr i32, ptr %157, i32 13
  %301 = load i32, ptr %300, align 4
  %302 = and i32 %301, 3
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %194, !prof !17

304:                                              ; preds = %296
  %305 = load i32, ptr %189, align 4
  %306 = or i32 %187, %305
  %307 = or i32 %306, 1
  store i32 %307, ptr %300, align 4
  %308 = getelementptr i32, ptr %157, i32 14
  %309 = load i32, ptr %308, align 4
  %310 = and i32 %309, 3
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %194, !prof !17

312:                                              ; preds = %304
  %313 = load i32, ptr %189, align 4
  %314 = or i32 %187, %313
  %315 = or i32 %314, 1
  store i32 %315, ptr %308, align 4
  %316 = getelementptr i32, ptr %157, i32 15
  %317 = load i32, ptr %316, align 4
  %318 = and i32 %317, 3
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %194, !prof !17

320:                                              ; preds = %312
  %321 = load i32, ptr %189, align 4
  %322 = or i32 %187, %321
  %323 = or i32 %322, 1
  store i32 %323, ptr %316, align 4
  %324 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %324, i32 noundef %183, i32 noundef 64, i32 noundef 1) #7
  %325 = load i16, ptr %161, align 2
  %326 = add i16 %325, -16
  store i16 %326, ptr %161, align 2
  br label %335

327:                                              ; preds = %132, %97, %79
  %328 = phi ptr [ inttoptr (i32 -98 to ptr), %79 ], [ inttoptr (i32 -98 to ptr), %132 ], [ inttoptr (i32 -12 to ptr), %97 ]
  %329 = ptrtoint ptr %328 to i32
  br label %332

330:                                              ; preds = %147
  %331 = ptrtoint ptr %157 to i32
  br label %332

332:                                              ; preds = %330, %327, %194, %193, %167, %42, %27
  %333 = phi i32 [ %331, %330 ], [ -98, %27 ], [ -98, %42 ], [ -98, %167 ], [ -98, %193 ], [ -98, %194 ], [ %329, %327 ]
  %334 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.exynos_iommu_map, i32 noundef %333, i32 noundef %3, i32 noundef %1) #8
  br label %335

335:                                              ; preds = %332, %320, %168, %75
  %336 = phi i32 [ %333, %332 ], [ 0, %75 ], [ 0, %320 ], [ 0, %168 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #7
  ret i32 %336
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_iommu_unmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/exynos-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1125, 0\0A.popsection", ""() #7, !srcloc !42
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 -4
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #7
  %13 = load ptr, ptr %6, align 4
  %14 = lshr i32 %1, 20
  %15 = getelementptr i32, ptr %13, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %33

19:                                               ; preds = %10
  %20 = icmp ult i32 %2, 1048576
  br i1 %20, label %135, label %21, !prof !9

21:                                               ; preds = %19
  %22 = load ptr, ptr @zero_lv2_table, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %23, i32 -2130706432, i32 8454144) #9, !srcloc !16
  %25 = load i16, ptr @PG_ENT_SHIFT, align 2
  %26 = zext i16 %25 to i32
  %27 = lshr i32 %24, %26
  %28 = or i32 %27, 1
  %29 = load ptr, ptr @dma_dev, align 4
  %30 = ptrtoint ptr %15 to i32
  %31 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %30, i32 -2130706432, i32 8454144) #9, !srcloc !16
  tail call void @dma_sync_single_for_cpu(ptr noundef %29, i32 noundef %31, i32 noundef 4, i32 noundef 1) #7
  store i32 %28, ptr %15, align 4
  %32 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %32, i32 noundef %31, i32 noundef 4, i32 noundef 1) #7
  br label %81

33:                                               ; preds = %10
  %34 = load ptr, ptr @zero_lv2_table, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %35, i32 -2130706432, i32 8454144) #9, !srcloc !16
  %37 = load i16, ptr @PG_ENT_SHIFT, align 2
  %38 = zext i16 %37 to i32
  %39 = lshr i32 %36, %38
  %40 = or i32 %39, 1
  %41 = icmp eq i32 %16, %40
  br i1 %41, label %43, label %42, !prof !9

42:                                               ; preds = %33
  switch i32 %17, label %45 [
    i32 3, label %43
    i32 0, label %43
  ]

43:                                               ; preds = %42, %42, %33
  %44 = tail call i32 @llvm.umin.i32(i32 %2, i32 1048576)
  br label %81

45:                                               ; preds = %42
  %46 = and i32 %16, -64
  %47 = shl i32 %46, %38
  %48 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %47, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %49 = inttoptr i32 %48 to ptr
  %50 = lshr i32 %1, 12
  %51 = and i32 %50, 255
  %52 = getelementptr i32, ptr %49, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 3
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %81, label %56, !prof !9

56:                                               ; preds = %45
  %57 = and i32 %53, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr @dma_dev, align 4
  %61 = ptrtoint ptr %52 to i32
  %62 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %61, i32 -2130706432, i32 8454144) #9, !srcloc !16
  tail call void @dma_sync_single_for_cpu(ptr noundef %60, i32 noundef %62, i32 noundef 4, i32 noundef 1) #7
  store i32 0, ptr %52, align 4
  %63 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %63, i32 noundef %62, i32 noundef 4, i32 noundef 1) #7
  %64 = getelementptr i8, ptr %0, i32 -12
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i16, ptr %65, i32 %14
  %67 = load i16, ptr %66, align 2
  %68 = add i16 %67, 1
  store i16 %68, ptr %66, align 2
  br label %81

69:                                               ; preds = %56
  %70 = icmp ult i32 %2, 65536
  br i1 %70, label %135, label %71, !prof !9

71:                                               ; preds = %69
  %72 = load ptr, ptr @dma_dev, align 4
  %73 = ptrtoint ptr %52 to i32
  %74 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %73, i32 -2130706432, i32 8454144) #9, !srcloc !16
  tail call void @dma_sync_single_for_cpu(ptr noundef %72, i32 noundef %74, i32 noundef 64, i32 noundef 1) #7
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %52, i8 0, i32 64, i1 false)
  %75 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %75, i32 noundef %74, i32 noundef 64, i32 noundef 1) #7
  %76 = getelementptr i8, ptr %0, i32 -12
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i16, ptr %77, i32 %14
  %79 = load i16, ptr %78, align 2
  %80 = add i16 %79, 16
  store i16 %80, ptr %78, align 2
  br label %81

81:                                               ; preds = %71, %59, %45, %43, %21
  %82 = phi i32 [ 1048576, %21 ], [ %44, %43 ], [ 4096, %59 ], [ 65536, %71 ], [ 4096, %45 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #7
  %83 = getelementptr i8, ptr %0, i32 -8
  %84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %83) #7
  %85 = load ptr, ptr %5, align 4
  %86 = icmp eq ptr %85, %5
  br i1 %86, label %134, label %87

87:                                               ; preds = %81
  %88 = lshr i32 %82, 12
  %89 = tail call i32 @llvm.umin.i32(i32 %88, i32 64) #7
  br label %90

90:                                               ; preds = %131, %87
  %91 = phi ptr [ %85, %87 ], [ %132, %131 ]
  %92 = getelementptr i8, ptr %91, i32 -44
  %93 = getelementptr i8, ptr %91, i32 -12
  %94 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %93) #7
  %95 = getelementptr i8, ptr %91, i32 -8
  %96 = load i8, ptr %95, align 4, !range !8
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %131, label %98

98:                                               ; preds = %90
  %99 = getelementptr i8, ptr %91, i32 -16
  %100 = load ptr, ptr %99, align 4
  %101 = tail call i32 @clk_enable(ptr noundef %100) #7
  %102 = getelementptr i8, ptr %91, i32 20
  %103 = load i32, ptr %102, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %104 = getelementptr i8, ptr %91, i32 -32
  %105 = load ptr, ptr %104, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 7) #7, !srcloc !20
  br label %106

106:                                              ; preds = %106, %98
  %107 = phi i32 [ 120, %98 ], [ %113, %106 ]
  %108 = load ptr, ptr %104, align 4
  %109 = getelementptr i8, ptr %108, i32 8
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !44
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  %113 = add nsw i32 %107, -1
  %114 = icmp ugt i32 %107, 1
  %115 = select i1 %112, i1 %114, i1 false
  br i1 %115, label %106, label %116

116:                                              ; preds = %106
  %117 = load ptr, ptr %104, align 4
  %118 = getelementptr i8, ptr %117, i32 8
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !45
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %123 = load ptr, ptr %104, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 5) #7, !srcloc !20
  br label %129

124:                                              ; preds = %116
  %125 = and i32 %103, -128
  %126 = icmp eq i32 %125, 256
  %127 = select i1 %126, i32 %89, i32 1
  tail call fastcc void @__sysmmu_tlb_invalidate_entry(ptr noundef %92, i32 noundef %1, i32 noundef %127) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %128 = load ptr, ptr %104, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 5) #7, !srcloc !20
  br label %129

129:                                              ; preds = %124, %122
  %130 = load ptr, ptr %99, align 4
  tail call void @clk_disable(ptr noundef %130) #7
  br label %131

131:                                              ; preds = %129, %90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %93, i32 noundef %94) #7
  %132 = load ptr, ptr %91, align 4
  %133 = icmp eq ptr %132, %5
  br i1 %133, label %134, label %90

134:                                              ; preds = %131, %81
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %83, i32 noundef %84) #7
  br label %139

135:                                              ; preds = %69, %19
  %136 = phi i32 [ 1132, %19 ], [ 1166, %69 ]
  %137 = phi i32 [ 1048576, %19 ], [ 65536, %69 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef %136, i32 noundef 9, ptr noundef null) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #7
  %138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.exynos_iommu_unmap, i32 noundef %2, i32 noundef %1, i32 noundef %137) #8
  br label %139

139:                                              ; preds = %135, %134
  %140 = phi i32 [ 0, %135 ], [ %82, %134 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_iommu_iova_to_phys(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load ptr, ptr %5, align 4
  %7 = lshr i32 %1, 20
  %8 = getelementptr i32, ptr %6, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i16, ptr @PG_ENT_SHIFT, align 2
  %14 = zext i16 %13 to i32
  %15 = shl i32 %9, %14
  %16 = and i32 %15, -1048576
  %17 = and i32 %1, 1048575
  %18 = or i32 %16, %17
  br label %54

19:                                               ; preds = %2
  %20 = load ptr, ptr @zero_lv2_table, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %21, i32 -2130706432, i32 8454144) #9, !srcloc !16
  %23 = load i16, ptr @PG_ENT_SHIFT, align 2
  %24 = zext i16 %23 to i32
  %25 = lshr i32 %22, %24
  %26 = or i32 %25, 1
  %27 = icmp ne i32 %9, %26
  %28 = icmp eq i32 %10, 1
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %54

30:                                               ; preds = %19
  %31 = and i32 %9, -64
  %32 = shl i32 %31, %24
  %33 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %32, i32 -2130706432, i32 8454144) #9, !srcloc !15
  %34 = inttoptr i32 %33 to ptr
  %35 = lshr i32 %1, 12
  %36 = and i32 %35, 255
  %37 = getelementptr i32, ptr %34, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 3
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = shl i32 %38, %24
  %43 = and i32 %42, -65536
  %44 = and i32 %1, 65535
  %45 = or i32 %43, %44
  br label %54

46:                                               ; preds = %30
  %47 = and i32 %38, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = shl i32 %38, %24
  %51 = and i32 %50, -4096
  %52 = and i32 %1, 4095
  %53 = or i32 %51, %52
  br label %54

54:                                               ; preds = %49, %46, %41, %19, %12
  %55 = phi i32 [ %18, %12 ], [ %45, %41 ], [ %53, %49 ], [ 0, %46 ], [ 0, %19 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @exynos_iommu_probe_device(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dev_iommu, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %22, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %18, %12 ], [ %10, %9 ]
  %14 = getelementptr i8, ptr %13, i32 -52
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @device_link_add(ptr noundef %0, ptr noundef %15, i32 noundef 5) #7
  %17 = getelementptr i8, ptr %13, i32 -44
  store ptr %16, ptr %17, align 4
  %18 = load ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %20, label %12

20:                                               ; preds = %12
  %21 = load ptr, ptr %7, align 4
  br label %22

22:                                               ; preds = %20, %9
  %23 = phi ptr [ %21, %20 ], [ %7, %9 ]
  %24 = getelementptr i8, ptr %23, i32 16
  br label %25

25:                                               ; preds = %22, %5, %1
  %26 = phi ptr [ %24, %22 ], [ inttoptr (i32 -19 to ptr), %5 ], [ inttoptr (i32 -19 to ptr), %1 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_iommu_release_device(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dev_iommu, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.exynos_iommu_owner, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @iommu_group_get(ptr noundef %0) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %10, align 4
  %18 = tail call ptr @iommu_group_default_domain(ptr noundef nonnull %14) #7
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %21, label %20, !prof !17

20:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1262, i32 noundef 9, ptr noundef null) #7
  br label %21

21:                                               ; preds = %20, %16
  %22 = load ptr, ptr %10, align 4
  tail call void @exynos_iommu_detach_device(ptr noundef %22, ptr noundef %0)
  tail call void @iommu_group_put(ptr noundef nonnull %14) #7
  br label %23

23:                                               ; preds = %21, %13, %9
  %24 = load ptr, ptr %7, align 4
  %25 = icmp eq ptr %24, %7
  br i1 %25, label %32, label %26

26:                                               ; preds = %26, %23
  %27 = phi ptr [ %30, %26 ], [ %24, %23 ]
  %28 = getelementptr i8, ptr %27, i32 -44
  %29 = load ptr, ptr %28, align 4
  tail call void @device_link_del(ptr noundef %29) #7
  %30 = load ptr, ptr %27, align 4
  %31 = icmp eq ptr %30, %7
  br i1 %31, label %32, label %26

32:                                               ; preds = %26, %23, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_device_group(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_iommu_of_xlate(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call ptr @of_find_device_by_node(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dev_iommu, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  %13 = icmp eq ptr %4, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void @put_device(ptr noundef %19) #7
  br label %48

20:                                               ; preds = %14
  %21 = icmp eq ptr %12, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %20
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 32) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void @put_device(ptr noundef %27) #7
  br label %48

28:                                               ; preds = %22
  store volatile ptr %24, ptr %24, align 8
  %29 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %24, ptr %29, align 4
  %30 = getelementptr inbounds %struct.exynos_iommu_owner, ptr %24, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %30, ptr noundef nonnull @.str.32, ptr noundef nonnull @exynos_iommu_of_xlate.__key) #7
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.dev_iommu, ptr %31, i32 0, i32 5
  store ptr %24, ptr %32, align 4
  br label %33

33:                                               ; preds = %28, %20
  %34 = phi ptr [ %12, %20 ], [ %24, %28 ]
  br label %35

35:                                               ; preds = %39, %33
  %36 = phi ptr [ %34, %33 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %34
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %37, i32 -52
  %41 = icmp eq ptr %40, %16
  br i1 %41, label %48, label %35

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %16, i32 0, i32 12
  %44 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  store ptr %43, ptr %44, align 4
  store ptr %34, ptr %43, align 4
  %46 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %16, i32 0, i32 12, i32 1
  store ptr %45, ptr %46, align 4
  store volatile ptr %43, ptr %45, align 4
  %47 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %16, i32 0, i32 1
  store ptr %0, ptr %47, align 4
  br label %48

48:                                               ; preds = %42, %39, %26, %18, %11
  %49 = phi i32 [ 0, %42 ], [ -12, %26 ], [ -19, %18 ], [ -19, %11 ], [ 0, %39 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sysmmu_tlb_invalidate_flpdcache(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 8
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 9
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 386
  br i1 %11, label %12, label %51

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_enable(ptr noundef %14) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %16 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 7) #7, !srcloc !20
  br label %18

18:                                               ; preds = %18, %12
  %19 = phi i32 [ 120, %12 ], [ %25, %18 ]
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr i8, ptr %20, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !44
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  %25 = add nsw i32 %19, -1
  %26 = icmp ugt i32 %19, 1
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %18, label %28

28:                                               ; preds = %18
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !45
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %35 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 5) #7, !srcloc !20
  br label %49

36:                                               ; preds = %28
  %37 = load i32, ptr %9, align 4
  %38 = icmp ugt i32 %37, 639
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = and i32 %1, -4096
  %41 = or i32 %40, 1
  %42 = load ptr, ptr %16, align 4
  %43 = getelementptr i8, ptr %42, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #7, !srcloc !20
  br label %47

44:                                               ; preds = %36
  %45 = load ptr, ptr %16, align 4
  %46 = getelementptr i8, ptr %45, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 1) #7, !srcloc !20
  br label %47

47:                                               ; preds = %44, %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %48 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 5) #7, !srcloc !20
  br label %49

49:                                               ; preds = %47, %34
  %50 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %50) #7
  br label %51

51:                                               ; preds = %49, %8, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__sysmmu_tlb_invalidate_entry(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 640
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 3
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ 0, %9 ], [ %19, %11 ]
  %13 = phi i32 [ %1, %9 ], [ %18, %11 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %14 = and i32 %13, -4096
  %15 = or i32 %14, 1
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #7, !srcloc !20
  %18 = add i32 %13, 4096
  %19 = add nuw i32 %12, 1
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %40, label %11

21:                                               ; preds = %3
  %22 = icmp eq i32 %2, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  %23 = and i32 %1, -4096
  br i1 %22, label %24, label %29

24:                                               ; preds = %21
  %25 = or i32 %23, 1
  %26 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #7, !srcloc !20
  br label %40

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.sysmmu_drvdata, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %23) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %33 = shl i32 %2, 12
  %34 = add i32 %23, -4096
  %35 = add i32 %34, %33
  %36 = load ptr, ptr %30, align 4
  %37 = getelementptr i8, ptr %36, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #7, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %38 = load ptr, ptr %30, align 4
  %39 = getelementptr i8, ptr %38, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 1) #7, !srcloc !20
  br label %40

40:                                               ; preds = %29, %24, %11, %7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_default_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_group_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 5022007}
!11 = !{i64 2153132223}
!12 = !{i32 0, i32 33}
!13 = !{i64 2153132536, i64 2153133029, i64 2153132573, i64 2153132629, i64 2153132663, i64 2153132687, i64 2153132728, i64 2153132749, i64 2153132777, i64 2153132811}
!14 = !{i64 2153133630}
!15 = !{i64 2148847579, i64 2148847602, i64 2148847634, i64 2148847666, i64 2148847704, i64 2148847734}
!16 = !{i64 2148846793, i64 2148846816, i64 2148846848, i64 2148846880, i64 2148846918, i64 2148846948}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2153133947, i64 2153134440, i64 2153133984, i64 2153134040, i64 2153134074, i64 2153134098, i64 2153134139, i64 2153134160, i64 2153134188, i64 2153134222}
!19 = !{i64 2153134865}
!20 = !{i64 5021589}
!21 = !{i64 2153117499}
!22 = !{i64 2148916484}
!23 = !{i64 2148912308}
!24 = !{i64 2148912383, i64 2148912410, i64 2148912457, i64 2148912479, i64 2148912507, i64 2148912527}
!25 = !{i64 2148939487}
!26 = !{i64 2153127041}
!27 = !{i64 2153122736, i64 2153123229, i64 2153122773, i64 2153122829, i64 2153122863, i64 2153122887, i64 2153122928, i64 2153122949, i64 2153122977, i64 2153123011}
!28 = !{i64 2153123813, i64 2153124306, i64 2153123850, i64 2153123906, i64 2153123940, i64 2153123964, i64 2153124005, i64 2153124026, i64 2153124054, i64 2153124088}
!29 = !{i64 2153124892, i64 2153125385, i64 2153124929, i64 2153124985, i64 2153125019, i64 2153125043, i64 2153125084, i64 2153125105, i64 2153125133, i64 2153125167}
!30 = !{i64 2153125971, i64 2153126464, i64 2153126008, i64 2153126064, i64 2153126098, i64 2153126122, i64 2153126163, i64 2153126184, i64 2153126212, i64 2153126246}
!31 = !{i64 2153135569}
!32 = !{i64 2153135895}
!33 = !{i64 2153137110}
!34 = !{i64 2153136424}
!35 = !{i64 2153137442}
!36 = !{i64 2153148981, i64 2153149474, i64 2153149018, i64 2153149074, i64 2153149108, i64 2153149132, i64 2153149173, i64 2153149194, i64 2153149222, i64 2153149256}
!37 = !{i64 2153151076, i64 2153151569, i64 2153151113, i64 2153151169, i64 2153151203, i64 2153151227, i64 2153151268, i64 2153151289, i64 2153151317, i64 2153151351}
!38 = !{i64 477932, i64 2147967903, i64 2147967929, i64 2147967976, i64 2147967998, i64 2147968026, i64 2147968046}
!39 = !{i64 2147980115, i64 2147980141, i64 2147980170, i64 2147980204, i64 2147980235, i64 2147980258}
!40 = !{i64 2153195175, i64 2153195669, i64 2153195212, i64 2153195268, i64 2153195302, i64 2153195326, i64 2153195367, i64 2153195388, i64 2153195416, i64 2153195450}
!41 = !{i64 2153183594, i64 2153184087, i64 2153183631, i64 2153183687, i64 2153183721, i64 2153183745, i64 2153183786, i64 2153183807, i64 2153183835, i64 2153183869}
!42 = !{i64 2153201181, i64 2153201675, i64 2153201218, i64 2153201274, i64 2153201308, i64 2153201332, i64 2153201373, i64 2153201394, i64 2153201422, i64 2153201456}
!43 = !{i64 2153117831}
!44 = !{i64 2153118316}
!45 = !{i64 2153118668}
!46 = !{i64 2153119646}
!47 = !{i64 2153121092}
!48 = !{i64 2153121530}
