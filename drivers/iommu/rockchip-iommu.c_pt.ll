; ModuleID = '/llk/IR/drivers/iommu/rockchip-iommu.c_pt.bc'
source_filename = "../drivers/iommu/rockchip-iommu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.rk_iommu_ops = type { ptr, ptr, ptr, ptr, ptr, i64 }
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
%struct.rk_iommu = type { ptr, ptr, i32, i32, ptr, i32, i8, %struct.iommu_device, %struct.list_head, ptr, ptr }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.rk_iommu_domain = type { %struct.list_head, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.iommu_domain }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.rk_iommudata = type { ptr, ptr }

@__initcall__kmod_rockchip_iommu__227_1415_rk_iommu_init4 = internal global ptr @rk_iommu_init, section ".initcall4.init", align 4
@rk_iommu_driver = internal global %struct.platform_driver { ptr @rk_iommu_probe, ptr null, ptr @rk_iommu_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rk_iommu_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk_iommu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"rk_iommu\00", align 1
@rk_iommu_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,iommu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @iommu_data_ops_v1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-iommu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @iommu_data_ops_v2 }, %struct.of_device_id zeroinitializer], align 4
@rk_iommu_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk_iommu_suspend, ptr @rk_iommu_resume, ptr null }, align 4
@rk_ops = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"drivers/iommu/rockchip-iommu.c\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"rockchip,disable-mmu-reset\00", align 1
@rk_iommu_clocks = internal unnamed_addr constant [2 x ptr] [ptr @.str.3, ptr @.str.4], align 4
@rk_iommu_ops = internal constant %struct.iommu_ops { ptr null, ptr @rk_iommu_domain_alloc, ptr @rk_iommu_domain_free, ptr @rk_iommu_attach_device, ptr @rk_iommu_detach_device, ptr @rk_iommu_map, ptr null, ptr @rk_iommu_unmap, ptr null, ptr null, ptr null, ptr null, ptr @rk_iommu_iova_to_phys, ptr @rk_iommu_probe_device, ptr @rk_iommu_release_device, ptr null, ptr @rk_iommu_device_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk_iommu_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 8384512, ptr null }, align 4
@dma_dev = internal unnamed_addr global ptr null, align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"DMA map error for DT\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rk_iommu_attach_device.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Enable stall request timed out, status: %#08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"Error during raw reset. MMU_DTE_ADDR is not functioning\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"FORCE_RESET command timed out\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Enable paging request timed out, status: %#08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Disable stall request timed out, status: %#08x\0A\00", align 1
@rk_iommu_detach_device.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"Disable paging request timed out, status: %#08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"DMA mapping error while allocating page table\0A\00", align 1
@.str.15 = private unnamed_addr constant [72 x i8] c"\013iova: %pad already mapped to %pa cannot remap to phys: %pa prot: %#x\0A\00", align 1
@rk_iommu_zap_iova.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rk_iommu_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Page fault at %pad of type %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"Page fault while iommu not attached to domain?\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"BUS_ERROR occurred at %pad\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"unexpected int_status: %#08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [67 x i8] c"iova = %pad: dte_index: %#03x pte_index: %#03x page_offset: %#03x\0A\00", align 1
@.str.23 = private unnamed_addr constant [91 x i8] c"mmu_dte_addr: %pa dte@%pa: %#08x valid: %u pte@%pa: %#08x valid: %u page@%pa flags: %#03x\0A\00", align 1
@iommu_data_ops_v1 = internal global %struct.rk_iommu_ops { ptr @rk_dte_pt_address, ptr @rk_mk_dte, ptr @rk_mk_pte, ptr @rk_dte_addr_phys, ptr @rk_dma_addr_dte, i64 4294967295 }, align 8
@iommu_data_ops_v2 = internal global %struct.rk_iommu_ops { ptr @rk_dte_pt_address_v2, ptr @rk_mk_dte_v2, ptr @rk_mk_pte_v2, ptr @rk_dte_addr_phys_v2, ptr @rk_dma_addr_dte_v2, i64 1099511627775 }, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_rockchip_iommu__227_1415_rk_iommu_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rk_iommu_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rk_iommu_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_iommu_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 64, i32 noundef 3520) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %158, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  store ptr %2, ptr %5, align 4
  %9 = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = tail call ptr @of_device_get_match_data(ptr noundef %2) #11
  %11 = load ptr, ptr @rk_ops, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store ptr %10, ptr @rk_ops, align 4
  br label %17

14:                                               ; preds = %7
  %15 = icmp eq ptr %11, %10
  br i1 %15, label %17, label %16, !prof !8

16:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1228, i32 noundef 9, ptr noundef null) #11
  br label %158

17:                                               ; preds = %14, %13
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #11
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %20, label %22, !prof !9

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 1
  store ptr null, ptr %21, align 4
  br label %158

22:                                               ; preds = %17
  %23 = extractvalue { i32, i1 } %18, 0
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %23, i32 noundef 3520) #11
  %25 = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %158, label %27

27:                                               ; preds = %22
  %28 = icmp eq i32 %4, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %44, %27
  %30 = phi i32 [ %45, %44 ], [ 0, %27 ]
  %31 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %30) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef nonnull %31) #11
  %35 = load ptr, ptr %25, align 4
  %36 = getelementptr ptr, ptr %35, i32 %30
  store ptr %34, ptr %36, align 4
  %37 = load ptr, ptr %25, align 4
  %38 = getelementptr ptr, ptr %37, i32 %30
  %39 = load ptr, ptr %38, align 4
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, ptr %9, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 4
  br label %44

44:                                               ; preds = %41, %33, %29
  %45 = add nuw nsw i32 %30, 1
  %46 = icmp eq i32 %45, %4
  br i1 %46, label %47, label %29

47:                                               ; preds = %44, %27
  %48 = load i32, ptr %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load ptr, ptr %25, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = ptrtoint ptr %52 to i32
  br label %158

54:                                               ; preds = %47
  %55 = tail call i32 @platform_irq_count(ptr noundef %0) #11
  %56 = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 3
  store i32 %55, ptr %56, align 4
  %57 = icmp slt i32 %55, 0
  br i1 %57, label %158, label %58

58:                                               ; preds = %54
  %59 = tail call zeroext i1 @device_property_present(ptr noundef %2, ptr noundef nonnull @.str.2) #11
  %60 = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 6
  %61 = zext i1 %59 to i8
  store i8 %61, ptr %60, align 4
  %62 = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 5
  store i32 2, ptr %62, align 4
  %63 = load ptr, ptr %5, align 4
  %64 = tail call noalias ptr @devm_kmalloc(ptr noundef %63, i32 noundef 16, i32 noundef 3520) #11
  %65 = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 4
  store ptr %64, ptr %65, align 4
  %66 = icmp eq ptr %64, null
  br i1 %66, label %158, label %67

67:                                               ; preds = %58
  %68 = load i32, ptr %62, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  store ptr @.str.3, ptr %64, align 4
  %71 = load i32, ptr %62, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %82

73:                                               ; preds = %73, %70
  %74 = phi i32 [ %79, %73 ], [ 1, %70 ]
  %75 = load ptr, ptr %65, align 4
  %76 = getelementptr [2 x ptr], ptr @rk_iommu_clocks, i32 0, i32 %74
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr %struct.clk_bulk_data, ptr %75, i32 %74
  store ptr %77, ptr %78, align 4
  %79 = add nuw nsw i32 %74, 1
  %80 = load i32, ptr %62, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %73, label %82

82:                                               ; preds = %73, %70
  %83 = phi i32 [ %71, %70 ], [ %80, %73 ]
  %84 = load ptr, ptr %65, align 4
  br label %85

85:                                               ; preds = %82, %67
  %86 = phi ptr [ %64, %67 ], [ %84, %82 ]
  %87 = phi i32 [ %68, %67 ], [ %83, %82 ]
  %88 = load ptr, ptr %5, align 4
  %89 = tail call i32 @devm_clk_bulk_get(ptr noundef %88, i32 noundef %87, ptr noundef %86) #11
  switch i32 %89, label %158 [
    i32 -2, label %92
    i32 0, label %90
  ]

90:                                               ; preds = %85
  %91 = load i32, ptr %62, align 4
  br label %93

92:                                               ; preds = %85
  store i32 0, ptr %62, align 4
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = load ptr, ptr %65, align 4
  %96 = tail call i32 @clk_bulk_prepare(i32 noundef %94, ptr noundef %95) #11
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %158

98:                                               ; preds = %93
  %99 = tail call ptr @iommu_group_alloc() #11
  %100 = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 10
  store ptr %99, ptr %100, align 4
  %101 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = ptrtoint ptr %99 to i32
  br label %154

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.rk_iommu, ptr %5, i32 0, i32 7
  %106 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load ptr, ptr %2, align 4
  br label %111

111:                                              ; preds = %109, %104
  %112 = phi ptr [ %110, %109 ], [ %107, %104 ]
  %113 = tail call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef %105, ptr noundef %2, ptr noundef null, ptr noundef %112) #11
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %151

115:                                              ; preds = %111
  %116 = tail call i32 @iommu_device_register(ptr noundef %105, ptr noundef nonnull @rk_iommu_ops, ptr noundef %2) #11
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %149

118:                                              ; preds = %115
  %119 = load ptr, ptr @dma_dev, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store ptr %2, ptr @dma_dev, align 4
  br label %122

122:                                              ; preds = %121, %118
  %123 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @rk_iommu_ops) #11
  tail call void @pm_runtime_enable(ptr noundef %2) #11
  %124 = load i32, ptr %56, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %130, label %145

126:                                              ; preds = %140
  %127 = add nuw nsw i32 %131, 1
  %128 = load i32, ptr %56, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %126, %122
  %131 = phi i32 [ %127, %126 ], [ 0, %122 ]
  %132 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef %131) #11
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %158, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %5, align 4
  %136 = load ptr, ptr %106, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load ptr, ptr %2, align 4
  br label %140

140:                                              ; preds = %138, %134
  %141 = phi ptr [ %139, %138 ], [ %136, %134 ]
  %142 = tail call i32 @devm_request_threaded_irq(ptr noundef %135, i32 noundef %132, ptr noundef nonnull @rk_iommu_irq, ptr noundef null, i32 noundef 128, ptr noundef %141, ptr noundef nonnull %5) #11
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %126, label %144

144:                                              ; preds = %140
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #11
  br label %149

145:                                              ; preds = %126, %122
  %146 = load ptr, ptr @rk_ops, align 4
  %147 = getelementptr inbounds %struct.rk_iommu_ops, ptr %146, i32 0, i32 5
  %148 = load i64, ptr %147, align 8
  tail call fastcc void @dma_set_mask_and_coherent(ptr noundef %2, i64 noundef %148)
  br label %158

149:                                              ; preds = %144, %115
  %150 = phi i32 [ %116, %115 ], [ %142, %144 ]
  tail call void @iommu_device_sysfs_remove(ptr noundef %105) #11
  br label %151

151:                                              ; preds = %149, %111
  %152 = phi i32 [ %113, %111 ], [ %150, %149 ]
  %153 = load ptr, ptr %100, align 4
  tail call void @iommu_group_put(ptr noundef %153) #11
  br label %154

154:                                              ; preds = %151, %102
  %155 = phi i32 [ %103, %102 ], [ %152, %151 ]
  %156 = load i32, ptr %62, align 4
  %157 = load ptr, ptr %65, align 4
  tail call void @clk_bulk_unprepare(i32 noundef %156, ptr noundef %157) #11
  br label %158

158:                                              ; preds = %154, %145, %130, %93, %85, %58, %54, %50, %22, %20, %16, %1
  %159 = phi i32 [ -22, %16 ], [ %53, %50 ], [ %155, %154 ], [ 0, %145 ], [ -12, %1 ], [ -12, %22 ], [ %55, %54 ], [ -12, %58 ], [ %89, %85 ], [ %96, %93 ], [ -12, %20 ], [ %132, %130 ]
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_iommu_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rk_iommu, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %11, %7 ], [ 0, %1 ]
  %9 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef %8) #11
  %10 = load ptr, ptr %3, align 4
  tail call void @devm_free_irq(ptr noundef %10, i32 noundef %9, ptr noundef %3) #11
  %11 = add nuw nsw i32 %8, 1
  %12 = load i32, ptr %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %7, label %14

14:                                               ; preds = %7, %1
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %16 = tail call i32 @pm_runtime_force_suspend(ptr noundef %15) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_set_iommu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_iommu_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4, !annotation !10
  %9 = load ptr, ptr %1, align 4
  %10 = tail call i32 @pm_runtime_get_if_active(ptr noundef %9, i1 noundef zeroext false) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %150, label %12

12:                                               ; preds = %2
  %13 = icmp slt i32 %10, 0
  %14 = load i1, ptr @rk_iommu_irq.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %12
  store i1 true, ptr @rk_iommu_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 619, i32 noundef 9, ptr noundef null) #11
  br label %18

18:                                               ; preds = %17, %12
  br i1 %13, label %150, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.rk_iommu, ptr %1, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rk_iommu, ptr %1, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @clk_bulk_enable(i32 noundef %21, ptr noundef %23) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33, !prof !8

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.rk_iommu, ptr %1, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %142

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.rk_iommu, ptr %1, i32 0, i32 1
  %32 = getelementptr inbounds %struct.rk_iommu, ptr %1, i32 0, i32 9
  br label %34

33:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 622, i32 noundef 9, ptr noundef null) #11
  br label %146

34:                                               ; preds = %137, %30
  %35 = phi i32 [ 0, %30 ], [ %139, %137 ]
  %36 = phi i32 [ 0, %30 ], [ %138, %137 ]
  %37 = load ptr, ptr %31, align 4
  %38 = getelementptr ptr, ptr %37, i32 %35
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 32
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %137, label %43

43:                                               ; preds = %34
  %44 = load ptr, ptr %31, align 4
  %45 = getelementptr ptr, ptr %44, i32 %35
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 12
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  store i32 %48, ptr %8, align 4
  %49 = and i32 %41, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %123, label %51

51:                                               ; preds = %43
  %52 = load ptr, ptr %31, align 4
  %53 = getelementptr ptr, ptr %52, i32 %35
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %57 = and i32 %56, 32
  %58 = icmp eq i32 %57, 0
  %59 = load ptr, ptr %1, align 4
  %60 = select i1 %58, ptr @.str.18, ptr @.str.17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.16, ptr noundef nonnull %8, ptr noundef nonnull %60) #12
  %61 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %61, ptr %3, align 4
  %62 = load ptr, ptr %31, align 4
  %63 = getelementptr ptr, ptr %62, i32 %35
  %64 = load ptr, ptr %63, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4
  %65 = lshr i32 %61, 22
  %66 = lshr i32 %61, 12
  %67 = and i32 %66, 1023
  %68 = and i32 %61, 4095
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %70 = load ptr, ptr @rk_ops, align 4
  %71 = getelementptr inbounds %struct.rk_iommu_ops, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 %72(i32 noundef %69) #11
  store i32 %73, ptr %4, align 4
  %74 = shl nuw nsw i32 %65, 2
  %75 = add i32 %73, %74
  store i32 %75, ptr %5, align 4
  %76 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %75, i32 -2130706432, i32 8454144) #13, !srcloc !13
  %77 = inttoptr i32 %76 to ptr
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %51
  %82 = load ptr, ptr @rk_ops, align 4
  %83 = load ptr, ptr %82, align 8
  %84 = call i32 %83(i32 noundef %78) #11
  %85 = shl nuw nsw i32 %67, 2
  %86 = add i32 %84, %85
  store i32 %86, ptr %6, align 4
  %87 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %86, i32 -2130706432, i32 8454144) #13, !srcloc !13
  %88 = inttoptr i32 %87 to ptr
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %81
  %93 = load ptr, ptr @rk_ops, align 4
  %94 = load ptr, ptr %93, align 8
  %95 = call i32 %94(i32 noundef %89) #11
  %96 = add i32 %95, %68
  store i32 %96, ptr %7, align 4
  %97 = and i32 %89, 510
  br label %98

98:                                               ; preds = %92, %81, %51
  %99 = phi i32 [ %89, %92 ], [ %89, %81 ], [ 0, %51 ]
  %100 = phi i32 [ %97, %92 ], [ 0, %81 ], [ 0, %51 ]
  %101 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.22, ptr noundef nonnull %3, i32 noundef %65, i32 noundef %67, i32 noundef %68) #12
  %102 = load ptr, ptr %1, align 4
  %103 = and i32 %99, 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.23, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %78, i32 noundef %79, ptr noundef nonnull %6, i32 noundef %99, i32 noundef %103, ptr noundef nonnull %7, i32 noundef %100) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %104 = load ptr, ptr %32, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %98
  %107 = xor i1 %58, true
  %108 = zext i1 %107 to i32
  %109 = load ptr, ptr %1, align 4
  %110 = load i32, ptr %8, align 4
  %111 = call i32 @report_iommu_fault(ptr noundef nonnull %104, ptr noundef %109, i32 noundef %110, i32 noundef %108) #11
  br label %114

112:                                              ; preds = %98
  %113 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.19) #12
  br label %114

114:                                              ; preds = %112, %106
  %115 = load ptr, ptr %31, align 4
  %116 = getelementptr ptr, ptr %115, i32 %35
  %117 = load ptr, ptr %116, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  call void @arm_heavy_mb() #11
  %118 = getelementptr i8, ptr %117, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 4) #11, !srcloc !15
  %119 = load ptr, ptr %31, align 4
  %120 = getelementptr ptr, ptr %119, i32 %35
  %121 = load ptr, ptr %120, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  call void @arm_heavy_mb() #11
  %122 = getelementptr i8, ptr %121, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 5) #11, !srcloc !15
  br label %123

123:                                              ; preds = %114, %43
  %124 = and i32 %41, 2
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.20, ptr noundef nonnull %8) #12
  br label %128

128:                                              ; preds = %126, %123
  %129 = icmp ult i32 %41, 4
  br i1 %129, label %132, label %130

130:                                              ; preds = %128
  %131 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.21, i32 noundef %41) #12
  br label %132

132:                                              ; preds = %130, %128
  %133 = load ptr, ptr %31, align 4
  %134 = getelementptr ptr, ptr %133, i32 %35
  %135 = load ptr, ptr %134, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  call void @arm_heavy_mb() #11
  %136 = getelementptr i8, ptr %135, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %41) #11, !srcloc !15
  br label %137

137:                                              ; preds = %132, %34
  %138 = phi i32 [ %36, %34 ], [ 1, %132 ]
  %139 = add nuw nsw i32 %35, 1
  %140 = load i32, ptr %27, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %34, label %142

142:                                              ; preds = %137, %26
  %143 = phi i32 [ 0, %26 ], [ %138, %137 ]
  %144 = load i32, ptr %20, align 4
  %145 = load ptr, ptr %22, align 4
  call void @clk_bulk_disable(i32 noundef %144, ptr noundef %145) #11
  br label %146

146:                                              ; preds = %142, %33
  %147 = phi i32 [ %143, %142 ], [ 0, %33 ]
  %148 = load ptr, ptr %1, align 4
  %149 = call i32 @__pm_runtime_idle(ptr noundef %148, i32 noundef 5) #11
  br label %150

150:                                              ; preds = %146, %18, %2
  %151 = phi i32 [ %147, %146 ], [ 0, %18 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  ret i32 %151
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dma_set_mask_and_coherent(ptr noundef %0, i64 noundef %1) unnamed_addr #4 {
  %3 = tail call i32 @dma_set_mask(ptr noundef %0, i64 noundef %1) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @dma_set_coherent_mask(ptr noundef %0, i64 noundef %1) #11
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_sysfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_group_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rk_iommu_domain_alloc(i32 noundef %0) #2 {
  %2 = and i32 %0, -3
  %3 = icmp ne i32 %2, 1
  %4 = load ptr, ptr @dma_dev, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %54, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 60) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %54, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @get_zeroed_page(i32 noundef 3268) #11
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.rk_iommu_domain, ptr %9, i32 0, i32 1
  store ptr %13, ptr %14, align 8
  %15 = icmp eq i32 %12, 0
  br i1 %15, label %53, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @dma_dev, align 4
  %18 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %13) #11
  %19 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %31, !prof !9

22:                                               ; preds = %16
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %23 = tail call ptr @dev_driver_string(ptr noundef %17) #11
  %24 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load ptr, ptr %17, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = phi ptr [ %28, %27 ], [ %25, %22 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %23, ptr noundef %30) #11
  br label %31

31:                                               ; preds = %29, %16
  br i1 %18, label %32, label %34

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.rk_iommu_domain, ptr %9, i32 0, i32 2
  store i32 -1, ptr %33, align 4
  br label %43

34:                                               ; preds = %31
  %35 = load ptr, ptr @mem_map, align 4
  %36 = add i32 %12, 1073741824
  %37 = lshr i32 %36, 12
  %38 = getelementptr %struct.page, ptr %35, i32 %37
  %39 = and i32 %12, 4095
  %40 = tail call i32 @dma_map_page_attrs(ptr noundef %17, ptr noundef %38, i32 noundef %39, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #11
  %41 = getelementptr inbounds %struct.rk_iommu_domain, ptr %9, i32 0, i32 2
  store i32 %40, ptr %41, align 4
  %42 = icmp eq i32 %40, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %34, %32
  %44 = load ptr, ptr @dma_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.5) #12
  tail call void @free_pages(i32 noundef %12, i32 noundef 0) #11
  br label %53

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.rk_iommu_domain, ptr %9, i32 0, i32 3
  store i32 0, ptr %46, align 8
  %47 = getelementptr inbounds %struct.rk_iommu_domain, ptr %9, i32 0, i32 4
  store i32 0, ptr %47, align 4
  store volatile ptr %9, ptr %9, align 8
  %48 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %9, ptr %48, align 4
  %49 = getelementptr inbounds %struct.rk_iommu_domain, ptr %9, i32 0, i32 5
  %50 = getelementptr inbounds %struct.rk_iommu_domain, ptr %9, i32 0, i32 5, i32 5
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.rk_iommu_domain, ptr %9, i32 0, i32 5, i32 5, i32 1
  store i32 -1, ptr %51, align 8
  %52 = getelementptr inbounds %struct.rk_iommu_domain, ptr %9, i32 0, i32 5, i32 5, i32 2
  store i8 1, ptr %52, align 4
  br label %54

53:                                               ; preds = %43, %11
  tail call void @kfree(ptr noundef nonnull %9) #11
  br label %54

54:                                               ; preds = %53, %45, %7, %1
  %55 = phi ptr [ null, %53 ], [ %49, %45 ], [ null, %1 ], [ null, %7 ]
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_iommu_domain_free(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1115, i32 noundef 9, ptr noundef null) #11
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr i8, ptr %0, i32 -16
  br label %8

8:                                                ; preds = %21, %6
  %9 = phi i32 [ 0, %6 ], [ %22, %21 ]
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i32, ptr %10, i32 %9
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr @rk_ops, align 4
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 %17(i32 noundef %12) #11
  %19 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %18, i32 -2130706432, i32 8454144) #13, !srcloc !13
  %20 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %20, i32 noundef %18, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #11
  tail call void @free_pages(i32 noundef %19, i32 noundef 0) #11
  br label %21

21:                                               ; preds = %15, %8
  %22 = add nuw nsw i32 %9, 1
  %23 = icmp eq i32 %22, 1024
  br i1 %23, label %24, label %8

24:                                               ; preds = %21
  %25 = load ptr, ptr @dma_dev, align 4
  %26 = getelementptr i8, ptr %0, i32 -12
  %27 = load i32, ptr %26, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %25, i32 noundef %27, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #11
  %28 = load ptr, ptr %7, align 4
  %29 = ptrtoint ptr %28 to i32
  tail call void @free_pages(i32 noundef %29, i32 noundef 0) #11
  tail call void @kfree(ptr noundef %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_iommu_attach_device(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 35
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dev_iommu, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %47, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rk_iommudata, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %47, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rk_iommu, ptr %13, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %47, label %19

19:                                               ; preds = %15
  %20 = icmp eq ptr %17, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void @rk_iommu_detach_device(ptr noundef nonnull %17, ptr noundef %1)
  br label %22

22:                                               ; preds = %21, %19
  store ptr %0, ptr %16, align 4
  %23 = getelementptr i8, ptr %0, i32 -8
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #11
  %25 = getelementptr inbounds %struct.rk_iommu, ptr %13, i32 0, i32 8
  %26 = getelementptr i8, ptr %0, i32 -20
  %27 = load ptr, ptr %26, align 4
  store ptr %25, ptr %26, align 4
  store ptr %3, ptr %25, align 4
  %28 = getelementptr inbounds %struct.rk_iommu, ptr %13, i32 0, i32 8, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %25, ptr %27, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #11
  %29 = load ptr, ptr %13, align 4
  %30 = tail call i32 @pm_runtime_get_if_active(ptr noundef %29, i1 noundef zeroext false) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %22
  %33 = icmp slt i32 %30, 0
  %34 = load i1, ptr @rk_iommu_attach_device.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !9

37:                                               ; preds = %32
  store i1 true, ptr @rk_iommu_attach_device.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1050, i32 noundef 9, ptr noundef null) #11
  br label %38

38:                                               ; preds = %37, %32
  br i1 %33, label %47, label %39

39:                                               ; preds = %38
  %40 = tail call fastcc i32 @rk_iommu_enable(ptr noundef nonnull %13)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %16, align 4
  tail call void @rk_iommu_detach_device(ptr noundef %43, ptr noundef %1)
  br label %44

44:                                               ; preds = %42, %39
  %45 = load ptr, ptr %13, align 4
  %46 = tail call i32 @__pm_runtime_idle(ptr noundef %45, i32 noundef 5) #11
  br label %47

47:                                               ; preds = %44, %38, %22, %15, %11, %7, %2
  %48 = phi i32 [ %40, %44 ], [ 0, %11 ], [ 0, %15 ], [ 0, %38 ], [ 0, %22 ], [ 0, %7 ], [ 0, %2 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_iommu_detach_device(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 35
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dev_iommu, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rk_iommudata, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rk_iommu, ptr %12, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  store ptr null, ptr %15, align 4
  %19 = getelementptr i8, ptr %0, i32 -8
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #11
  %21 = getelementptr inbounds %struct.rk_iommu, ptr %12, i32 0, i32 8
  %22 = getelementptr inbounds %struct.rk_iommu, ptr %12, i32 0, i32 8, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store volatile ptr %21, ptr %21, align 4
  store ptr %21, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #11
  %26 = load ptr, ptr %12, align 4
  %27 = tail call i32 @pm_runtime_get_if_active(ptr noundef %26, i1 noundef zeroext false) #11
  %28 = icmp slt i32 %27, 0
  %29 = load i1, ptr @rk_iommu_detach_device.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %18
  store i1 true, ptr @rk_iommu_detach_device.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1011, i32 noundef 9, ptr noundef null) #11
  br label %38

33:                                               ; preds = %18
  %34 = icmp sgt i32 %27, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  tail call fastcc void @rk_iommu_disable(ptr noundef nonnull %12)
  %36 = load ptr, ptr %12, align 4
  %37 = tail call i32 @__pm_runtime_idle(ptr noundef %36, i32 noundef 5) #11
  br label %38

38:                                               ; preds = %35, %33, %32, %14, %10, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_iommu_map(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr i8, ptr %0, i32 -24
  %14 = getelementptr i8, ptr %0, i32 -4
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12)
  %16 = load volatile i32, ptr %14, align 4
  store volatile i32 %16, ptr %12, align 4
  %17 = lshr i32 %16, 16
  %18 = and i32 %16, 65535
  %19 = icmp eq i32 %18, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12)
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/rockchip-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 752, 0\0A.popsection", ""() #11, !srcloc !17
  unreachable

21:                                               ; preds = %6
  %22 = lshr i32 %1, 22
  %23 = getelementptr i8, ptr %0, i32 -16
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i32, ptr %24, i32 %22
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %21
  %30 = tail call i32 @get_zeroed_page(i32 noundef 2596) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %77, label %32

32:                                               ; preds = %29
  %33 = inttoptr i32 %30 to ptr
  %34 = load ptr, ptr @dma_dev, align 4
  %35 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %33) #11
  %36 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %48, !prof !9

39:                                               ; preds = %32
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %40 = tail call ptr @dev_driver_string(ptr noundef %34) #11
  %41 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load ptr, ptr %34, align 4
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi ptr [ %45, %44 ], [ %42, %39 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %40, ptr noundef %47) #11
  br label %48

48:                                               ; preds = %46, %32
  br i1 %35, label %57, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr @mem_map, align 4
  %51 = add i32 %30, 1073741824
  %52 = lshr i32 %51, 12
  %53 = getelementptr %struct.page, ptr %50, i32 %52
  %54 = and i32 %30, 4095
  %55 = tail call i32 @dma_map_page_attrs(ptr noundef %34, ptr noundef %53, i32 noundef %54, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #11
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %49, %48
  %58 = load ptr, ptr @dma_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.14) #12
  tail call void @free_pages(i32 noundef %30, i32 noundef 0) #11
  br label %77

59:                                               ; preds = %49
  %60 = load ptr, ptr @rk_ops, align 4
  %61 = getelementptr inbounds %struct.rk_iommu_ops, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %62(i32 noundef %55) #11
  store i32 %63, ptr %25, align 4
  %64 = getelementptr i8, ptr %0, i32 -12
  %65 = load i32, ptr %64, align 4
  %66 = shl nuw nsw i32 %22, 2
  %67 = add i32 %65, %66
  %68 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %68, i32 noundef %67, i32 noundef 4, i32 noundef 1) #11
  br label %69

69:                                               ; preds = %59, %21
  %70 = phi i32 [ %26, %21 ], [ %63, %59 ]
  %71 = load ptr, ptr @rk_ops, align 4
  %72 = load ptr, ptr %71, align 8
  %73 = tail call i32 %72(i32 noundef %70) #11
  %74 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %73, i32 -2130706432, i32 8454144) #13, !srcloc !13
  %75 = inttoptr i32 %74 to ptr
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %80

77:                                               ; preds = %69, %57, %29
  %78 = phi ptr [ %75, %69 ], [ inttoptr (i32 -12 to ptr), %57 ], [ inttoptr (i32 -12 to ptr), %29 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #11
  %79 = ptrtoint ptr %78 to i32
  br label %158

80:                                               ; preds = %69
  %81 = load ptr, ptr %23, align 4
  %82 = getelementptr i32, ptr %81, i32 %22
  %83 = load i32, ptr %82, align 4
  %84 = lshr i32 %1, 12
  %85 = and i32 %84, 1023
  %86 = getelementptr i32, ptr %75, i32 %85
  %87 = load ptr, ptr @rk_ops, align 4
  %88 = load ptr, ptr %87, align 8
  %89 = tail call i32 %88(i32 noundef %83) #11
  %90 = shl nuw nsw i32 %85, 2
  %91 = add i32 %89, %90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10)
  %92 = lshr i32 %3, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  %93 = load volatile i32, ptr %14, align 4
  store volatile i32 %93, ptr %8, align 4
  %94 = lshr i32 %93, 16
  %95 = and i32 %93, 65535
  %96 = icmp eq i32 %95, %94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  br i1 %96, label %101, label %97, !prof !9

97:                                               ; preds = %80
  %98 = icmp ult i32 %3, 4096
  br i1 %98, label %117, label %99

99:                                               ; preds = %97
  %100 = tail call i32 @llvm.umax.i32(i32 %92, i32 1) #11
  br label %102

101:                                              ; preds = %80
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/rockchip-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 811, 0\0A.popsection", ""() #11, !srcloc !18
  unreachable

102:                                              ; preds = %109, %99
  %103 = phi i32 [ %115, %109 ], [ 0, %99 ]
  %104 = phi i32 [ %114, %109 ], [ %2, %99 ]
  %105 = getelementptr i32, ptr %86, i32 %103
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %102
  %110 = load ptr, ptr @rk_ops, align 4
  %111 = getelementptr inbounds %struct.rk_iommu_ops, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 8
  %113 = tail call i32 %112(i32 noundef %104, i32 noundef %4) #11
  store i32 %113, ptr %105, align 4
  %114 = add i32 %104, 4096
  %115 = add nuw nsw i32 %103, 1
  %116 = icmp eq i32 %115, %100
  br i1 %116, label %117, label %102

117:                                              ; preds = %109, %97
  %118 = shl nuw nsw i32 %92, 2
  %119 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %119, i32 noundef %91, i32 noundef %118, i32 noundef 1) #11
  tail call fastcc void @rk_iommu_zap_iova(ptr noundef %13, i32 noundef %1, i32 noundef 4096) #11
  %120 = icmp ugt i32 %3, 4096
  br i1 %120, label %121, label %156

121:                                              ; preds = %117
  %122 = add i32 %1, -4096
  %123 = add i32 %122, %3
  tail call fastcc void @rk_iommu_zap_iova(ptr noundef %13, i32 noundef %123, i32 noundef 4096) #11
  br label %156

124:                                              ; preds = %102
  store i32 %104, ptr %10, align 4
  %125 = shl i32 %103, 12
  %126 = and i32 %103, 1048575
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  %127 = load volatile i32, ptr %14, align 4
  store volatile i32 %127, ptr %7, align 4
  %128 = lshr i32 %127, 16
  %129 = and i32 %127, 65535
  %130 = icmp eq i32 %129, %128
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  br i1 %130, label %135, label %131, !prof !9

131:                                              ; preds = %124
  %132 = icmp eq i32 %125, 0
  br i1 %132, label %146, label %133

133:                                              ; preds = %131
  %134 = tail call i32 @llvm.umax.i32(i32 %126, i32 1) #11
  br label %136

135:                                              ; preds = %124
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/rockchip-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 788, 0\0A.popsection", ""() #11, !srcloc !19
  unreachable

136:                                              ; preds = %142, %133
  %137 = phi i32 [ %144, %142 ], [ 0, %133 ]
  %138 = getelementptr i32, ptr %86, i32 %137
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %136
  %143 = and i32 %139, -2
  store i32 %143, ptr %138, align 4
  %144 = add nuw nsw i32 %137, 1
  %145 = icmp eq i32 %144, %134
  br i1 %145, label %146, label %136

146:                                              ; preds = %142, %136, %131
  %147 = phi i32 [ 0, %131 ], [ %137, %136 ], [ %134, %142 ]
  %148 = shl i32 %147, 2
  %149 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %149, i32 noundef %91, i32 noundef %148, i32 noundef 1) #11
  %150 = add i32 %125, %1
  store i32 %150, ptr %9, align 4
  %151 = load ptr, ptr @rk_ops, align 4
  %152 = load ptr, ptr %151, align 8
  %153 = load i32, ptr %105, align 4
  %154 = tail call i32 %152(i32 noundef %153) #11
  store i32 %154, ptr %11, align 4
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef %4) #12
  br label %156

156:                                              ; preds = %146, %121, %117
  %157 = phi i32 [ -98, %146 ], [ 0, %117 ], [ 0, %121 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #11
  br label %158

158:                                              ; preds = %156, %77
  %159 = phi i32 [ %79, %77 ], [ %157, %156 ]
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_iommu_unmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -24
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #11
  %9 = getelementptr i8, ptr %0, i32 -16
  %10 = load ptr, ptr %9, align 4
  %11 = lshr i32 %1, 22
  %12 = getelementptr i32, ptr %10, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #11
  br label %53

17:                                               ; preds = %4
  %18 = load ptr, ptr @rk_ops, align 4
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 %19(i32 noundef %13) #11
  %21 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %20, i32 -2130706432, i32 8454144) #13, !srcloc !13
  %22 = inttoptr i32 %21 to ptr
  %23 = lshr i32 %1, 12
  %24 = and i32 %23, 1023
  %25 = getelementptr i32, ptr %22, i32 %24
  %26 = shl nuw nsw i32 %24, 2
  %27 = add i32 %20, %26
  %28 = lshr i32 %2, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %29 = load volatile i32, ptr %7, align 4
  store volatile i32 %29, ptr %5, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %29, 65535
  %32 = icmp eq i32 %31, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br i1 %32, label %37, label %33, !prof !9

33:                                               ; preds = %17
  %34 = icmp ult i32 %2, 4096
  br i1 %34, label %48, label %35

35:                                               ; preds = %33
  %36 = tail call i32 @llvm.umax.i32(i32 %28, i32 1) #11
  br label %38

37:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/rockchip-iommu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 788, 0\0A.popsection", ""() #11, !srcloc !19
  unreachable

38:                                               ; preds = %44, %35
  %39 = phi i32 [ %46, %44 ], [ 0, %35 ]
  %40 = getelementptr i32, ptr %25, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = and i32 %41, -2
  store i32 %45, ptr %40, align 4
  %46 = add nuw nsw i32 %39, 1
  %47 = icmp eq i32 %46, %36
  br i1 %47, label %48, label %38

48:                                               ; preds = %44, %38, %33
  %49 = phi i32 [ 0, %33 ], [ %36, %44 ], [ %39, %38 ]
  %50 = shl i32 %49, 2
  %51 = load ptr, ptr @dma_dev, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %51, i32 noundef %27, i32 noundef %50, i32 noundef 1) #11
  %52 = shl i32 %49, 12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #11
  tail call fastcc void @rk_iommu_zap_iova(ptr noundef %6, i32 noundef %1, i32 noundef %52)
  br label %53

53:                                               ; preds = %48, %16
  %54 = phi i32 [ %52, %48 ], [ 0, %16 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_iommu_iova_to_phys(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load ptr, ptr %5, align 4
  %7 = lshr i32 %1, 22
  %8 = getelementptr i32, ptr %6, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr @rk_ops, align 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 %14(i32 noundef %9) #11
  %16 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %15, i32 -2130706432, i32 8454144) #13, !srcloc !13
  %17 = inttoptr i32 %16 to ptr
  %18 = lshr i32 %1, 12
  %19 = and i32 %18, 1023
  %20 = getelementptr i32, ptr %17, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %12
  %25 = load ptr, ptr @rk_ops, align 4
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 %26(i32 noundef %21) #11
  %28 = and i32 %1, 4095
  %29 = add i32 %27, %28
  br label %30

30:                                               ; preds = %24, %12, %2
  %31 = phi i32 [ %29, %24 ], [ 0, %12 ], [ 0, %2 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rk_iommu_probe_device(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dev_iommu, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rk_iommudata, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @device_link_add(ptr noundef %0, ptr noundef %12, i32 noundef 5) #11
  store ptr %13, ptr %7, align 4
  %14 = getelementptr inbounds %struct.rk_iommu, ptr %11, i32 0, i32 7
  br label %15

15:                                               ; preds = %9, %5, %1
  %16 = phi ptr [ %14, %9 ], [ inttoptr (i32 -19 to ptr), %5 ], [ inttoptr (i32 -19 to ptr), %1 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk_iommu_release_device(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dev_iommu, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  %10 = load ptr, ptr %9, align 4
  tail call void @device_link_del(ptr noundef %10) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rk_iommu_device_group(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dev_iommu, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rk_iommudata, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi ptr [ %11, %9 ], [ null, %5 ], [ null, %1 ]
  %14 = getelementptr inbounds %struct.rk_iommu, ptr %13, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @iommu_group_ref_get(ptr noundef %15) #11
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_iommu_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr @dma_dev, align 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 4
  %8 = tail call ptr @of_find_device_by_node(ptr noundef %7) #11
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rk_iommudata, ptr %4, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dev_iommu, ptr %13, i32 0, i32 5
  store ptr %4, ptr %14, align 4
  tail call void @platform_device_put(ptr noundef %8) #11
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rk_iommu_enable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_bulk_enable(i32 noundef %5, ptr noundef %7) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %224

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @rk_iommu_enable_stall(ptr noundef %0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %220

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 4, !range !20
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  br i1 %16, label %19, label %100

19:                                               ; preds = %13
  %20 = icmp sgt i32 %18, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 1
  br label %27

23:                                               ; preds = %27
  %24 = add nuw nsw i32 %28, 1
  %25 = load i32, ptr %17, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23, %21
  %28 = phi i32 [ 0, %21 ], [ %24, %23 ]
  %29 = load ptr, ptr @rk_ops, align 4
  %30 = load ptr, ptr %29, align 8
  %31 = tail call i32 %30(i32 noundef -889275714) #11
  %32 = load ptr, ptr %22, align 4
  %33 = getelementptr ptr, ptr %32, i32 %28
  %34 = load ptr, ptr %33, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #11, !srcloc !15
  %35 = load ptr, ptr %22, align 4
  %36 = getelementptr ptr, ptr %35, i32 %28
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %39 = icmp eq i32 %31, %38
  br i1 %39, label %23, label %96

40:                                               ; preds = %23
  %41 = icmp sgt i32 %25, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %42, %40
  %43 = phi i32 [ %48, %42 ], [ 0, %40 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !21
  tail call void @arm_heavy_mb() #11
  %44 = load ptr, ptr %22, align 4
  %45 = getelementptr ptr, ptr %44, i32 %43
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 6) #11, !srcloc !15
  %48 = add nuw nsw i32 %43, 1
  %49 = load i32, ptr %17, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %42, label %51

51:                                               ; preds = %42, %40, %19
  %52 = tail call i64 @ktime_get() #11
  %53 = add i64 %52, 1000000
  %54 = load i32, ptr %17, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %218

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 1
  br label %58

58:                                               ; preds = %70, %56
  %59 = phi i32 [ 0, %56 ], [ %71, %70 ]
  %60 = phi i1 [ true, %56 ], [ %72, %70 ]
  %61 = load ptr, ptr %57, align 4
  %62 = getelementptr ptr, ptr %61, i32 %59
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %65 = icmp eq i32 %64, 0
  %66 = and i1 %60, %65
  %67 = add nuw nsw i32 %59, 1
  %68 = load i32, ptr %17, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %92, %58
  %71 = phi i32 [ %67, %58 ], [ 0, %92 ]
  %72 = phi i1 [ %66, %58 ], [ true, %92 ]
  br label %58

73:                                               ; preds = %58
  br i1 %66, label %100, label %74

74:                                               ; preds = %73
  %75 = tail call i64 @ktime_get() #11
  %76 = icmp sgt i64 %75, %53
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load i32, ptr %17, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %218

80:                                               ; preds = %80, %77
  %81 = phi i32 [ %89, %80 ], [ 0, %77 ]
  %82 = phi i1 [ %88, %80 ], [ true, %77 ]
  %83 = load ptr, ptr %57, align 4
  %84 = getelementptr ptr, ptr %83, i32 %81
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %87 = icmp eq i32 %86, 0
  %88 = and i1 %82, %87
  %89 = add nuw nsw i32 %81, 1
  %90 = load i32, ptr %17, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %80, label %95

92:                                               ; preds = %74
  tail call void @usleep_range_state(i32 noundef 25001, i32 noundef 100000, i32 noundef 2) #11
  %93 = load i32, ptr %17, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %70, label %218

95:                                               ; preds = %80
  br i1 %88, label %100, label %96

96:                                               ; preds = %95, %27
  %97 = phi ptr [ @.str.10, %95 ], [ @.str.9, %27 ]
  %98 = phi i32 [ -110, %95 ], [ -14, %27 ]
  %99 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull %97) #12
  br label %218

100:                                              ; preds = %95, %73, %13
  %101 = phi i32 [ %90, %95 ], [ %18, %13 ], [ %68, %73 ]
  %102 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 2
  %103 = icmp sgt i32 %101, 0
  br i1 %103, label %104, label %218

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 1
  %106 = getelementptr i8, ptr %3, i32 -12
  br label %107

107:                                              ; preds = %107, %104
  %108 = phi i32 [ 0, %104 ], [ %125, %107 ]
  %109 = load ptr, ptr %105, align 4
  %110 = getelementptr ptr, ptr %109, i32 %108
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr @rk_ops, align 4
  %113 = getelementptr inbounds %struct.rk_iommu_ops, ptr %112, i32 0, i32 4
  %114 = load ptr, ptr %113, align 8
  %115 = load i32, ptr %106, align 4
  %116 = tail call i32 %114(i32 noundef %115) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %116) #11, !srcloc !15
  %117 = load ptr, ptr %105, align 4
  %118 = getelementptr ptr, ptr %117, i32 %108
  %119 = load ptr, ptr %118, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !14
  tail call void @arm_heavy_mb() #11
  %120 = getelementptr i8, ptr %119, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 4) #11, !srcloc !15
  %121 = load ptr, ptr %105, align 4
  %122 = getelementptr ptr, ptr %121, i32 %108
  %123 = load ptr, ptr %122, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  tail call void @arm_heavy_mb() #11
  %124 = getelementptr i8, ptr %123, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 3) #11, !srcloc !15
  %125 = add nuw nsw i32 %108, 1
  %126 = load i32, ptr %102, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %107, label %128

128:                                              ; preds = %107
  %129 = icmp sgt i32 %126, 0
  br i1 %129, label %130, label %218

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 1
  br label %132

132:                                              ; preds = %132, %130
  %133 = phi i32 [ 0, %130 ], [ %143, %132 ]
  %134 = phi i1 [ true, %130 ], [ %142, %132 ]
  %135 = load ptr, ptr %131, align 4
  %136 = getelementptr ptr, ptr %135, i32 %133
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr i8, ptr %137, i32 4
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %140 = zext i1 %134 to i32
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = add nuw nsw i32 %133, 1
  %144 = load i32, ptr %102, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %132, label %146

146:                                              ; preds = %132
  br i1 %142, label %218, label %147

147:                                              ; preds = %146
  %148 = icmp sgt i32 %144, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %149, %147
  %150 = phi i32 [ %155, %149 ], [ 0, %147 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !21
  tail call void @arm_heavy_mb() #11
  %151 = load ptr, ptr %131, align 4
  %152 = getelementptr ptr, ptr %151, i32 %150
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr i8, ptr %153, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 0) #11, !srcloc !15
  %155 = add nuw nsw i32 %150, 1
  %156 = load i32, ptr %102, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %149, label %158

158:                                              ; preds = %149, %147
  %159 = tail call i64 @ktime_get() #11
  %160 = add i64 %159, 1000000
  %161 = load i32, ptr %102, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %218

163:                                              ; preds = %177, %158
  %164 = phi i32 [ %178, %177 ], [ 0, %158 ]
  %165 = phi i1 [ %179, %177 ], [ true, %158 ]
  %166 = load ptr, ptr %131, align 4
  %167 = getelementptr ptr, ptr %166, i32 %164
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr i8, ptr %168, i32 4
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %171 = zext i1 %165 to i32
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  %174 = add nuw nsw i32 %164, 1
  %175 = load i32, ptr %102, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %201, %163
  %178 = phi i32 [ %174, %163 ], [ 0, %201 ]
  %179 = phi i1 [ %173, %163 ], [ true, %201 ]
  br label %163

180:                                              ; preds = %163
  br i1 %173, label %218, label %181

181:                                              ; preds = %180
  %182 = tail call i64 @ktime_get() #11
  %183 = icmp sgt i64 %182, %160
  br i1 %183, label %184, label %201

184:                                              ; preds = %181
  %185 = load i32, ptr %102, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %218

187:                                              ; preds = %187, %184
  %188 = phi i32 [ %198, %187 ], [ 0, %184 ]
  %189 = phi i1 [ %197, %187 ], [ true, %184 ]
  %190 = load ptr, ptr %131, align 4
  %191 = getelementptr ptr, ptr %190, i32 %188
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr i8, ptr %192, i32 4
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %195 = zext i1 %189 to i32
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  %198 = add nuw nsw i32 %188, 1
  %199 = load i32, ptr %102, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %187, label %204

201:                                              ; preds = %181
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #11
  %202 = load i32, ptr %102, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %177, label %218

204:                                              ; preds = %187
  br i1 %197, label %218, label %205

205:                                              ; preds = %204
  %206 = icmp sgt i32 %199, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %207, %205
  %208 = phi i32 [ %215, %207 ], [ 0, %205 ]
  %209 = load ptr, ptr %0, align 4
  %210 = load ptr, ptr %131, align 4
  %211 = getelementptr ptr, ptr %210, i32 %208
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr i8, ptr %212, i32 4
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.11, i32 noundef %214) #12
  %215 = add nuw nsw i32 %208, 1
  %216 = load i32, ptr %102, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %207, label %218

218:                                              ; preds = %207, %205, %204, %201, %184, %180, %158, %146, %128, %100, %96, %92, %77, %51
  %219 = phi i32 [ %98, %96 ], [ 0, %146 ], [ 0, %128 ], [ 0, %204 ], [ 0, %184 ], [ -110, %205 ], [ 0, %158 ], [ 0, %100 ], [ 0, %51 ], [ 0, %77 ], [ -110, %207 ], [ 0, %180 ], [ 0, %201 ], [ 0, %92 ]
  tail call fastcc void @rk_iommu_disable_stall(ptr noundef %0)
  br label %220

220:                                              ; preds = %218, %10
  %221 = phi i32 [ %11, %10 ], [ %219, %218 ]
  %222 = load i32, ptr %4, align 4
  %223 = load ptr, ptr %6, align 4
  tail call void @clk_bulk_disable(i32 noundef %222, ptr noundef %223) #11
  br label %224

224:                                              ; preds = %220, %1
  %225 = phi i32 [ %221, %220 ], [ %8, %1 ]
  ret i32 %225
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rk_iommu_enable_stall(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %113

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %19, %7 ]
  %9 = phi i1 [ true, %5 ], [ %18, %7 ]
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr ptr, ptr %10, i32 %8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %15 = lshr i32 %14, 2
  %16 = zext i1 %9 to i32
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = add nuw nsw i32 %8, 1
  %20 = load i32, ptr %2, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %7, label %22

22:                                               ; preds = %7
  br i1 %18, label %113, label %23

23:                                               ; preds = %22
  %24 = icmp sgt i32 %20, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %25, %23
  %26 = phi i32 [ %36, %25 ], [ 0, %23 ]
  %27 = phi i1 [ %35, %25 ], [ true, %23 ]
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr ptr, ptr %28, i32 %26
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %33 = zext i1 %27 to i32
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = add nuw nsw i32 %26, 1
  %37 = load i32, ptr %2, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %25, label %39

39:                                               ; preds = %25
  br i1 %35, label %40, label %113

40:                                               ; preds = %39
  %41 = icmp sgt i32 %37, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %42, %40
  %43 = phi i32 [ %48, %42 ], [ 0, %40 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !21
  tail call void @arm_heavy_mb() #11
  %44 = load ptr, ptr %6, align 4
  %45 = getelementptr ptr, ptr %44, i32 %43
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 2) #11, !srcloc !15
  %48 = add nuw nsw i32 %43, 1
  %49 = load i32, ptr %2, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %42, label %51

51:                                               ; preds = %42, %40, %23
  %52 = tail call i64 @ktime_get() #11
  %53 = add i64 %52, 1000000
  %54 = load i32, ptr %2, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %113

56:                                               ; preds = %71, %51
  %57 = phi i32 [ %72, %71 ], [ 0, %51 ]
  %58 = phi i1 [ %73, %71 ], [ true, %51 ]
  %59 = load ptr, ptr %6, align 4
  %60 = getelementptr ptr, ptr %59, i32 %57
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %64 = lshr i32 %63, 2
  %65 = zext i1 %58 to i32
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = add nuw nsw i32 %57, 1
  %69 = load i32, ptr %2, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %96, %56
  %72 = phi i32 [ %68, %56 ], [ 0, %96 ]
  %73 = phi i1 [ %67, %56 ], [ true, %96 ]
  br label %56

74:                                               ; preds = %56
  br i1 %67, label %113, label %75

75:                                               ; preds = %74
  %76 = tail call i64 @ktime_get() #11
  %77 = icmp sgt i64 %76, %53
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load i32, ptr %2, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %113

81:                                               ; preds = %81, %78
  %82 = phi i32 [ %93, %81 ], [ 0, %78 ]
  %83 = phi i1 [ %92, %81 ], [ true, %78 ]
  %84 = load ptr, ptr %6, align 4
  %85 = getelementptr ptr, ptr %84, i32 %82
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i8, ptr %86, i32 4
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %89 = lshr i32 %88, 2
  %90 = zext i1 %83 to i32
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = add nuw nsw i32 %82, 1
  %94 = load i32, ptr %2, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %81, label %99

96:                                               ; preds = %75
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #11
  %97 = load i32, ptr %2, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %71, label %113

99:                                               ; preds = %81
  br i1 %92, label %113, label %100

100:                                              ; preds = %99
  %101 = icmp sgt i32 %94, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %102, %100
  %103 = phi i32 [ %110, %102 ], [ 0, %100 ]
  %104 = load ptr, ptr %0, align 4
  %105 = load ptr, ptr %6, align 4
  %106 = getelementptr ptr, ptr %105, i32 %103
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 4
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.8, i32 noundef %109) #12
  %110 = add nuw nsw i32 %103, 1
  %111 = load i32, ptr %2, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %102, label %113

113:                                              ; preds = %102, %100, %99, %96, %78, %74, %51, %39, %22, %1
  %114 = phi i32 [ 0, %22 ], [ 0, %39 ], [ 0, %1 ], [ 0, %99 ], [ 0, %78 ], [ -110, %100 ], [ 0, %51 ], [ -110, %102 ], [ 0, %96 ], [ 0, %74 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rk_iommu_disable_stall(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %19, %7 ]
  %9 = phi i1 [ true, %5 ], [ %18, %7 ]
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr ptr, ptr %10, i32 %8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %15 = lshr i32 %14, 2
  %16 = zext i1 %9 to i32
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = add nuw nsw i32 %8, 1
  %20 = load i32, ptr %2, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %7, label %22

22:                                               ; preds = %7
  br i1 %18, label %23, label %93

23:                                               ; preds = %22
  %24 = icmp sgt i32 %20, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %25, %23
  %26 = phi i32 [ %31, %25 ], [ 0, %23 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !21
  tail call void @arm_heavy_mb() #11
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr ptr, ptr %27, i32 %26
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 3) #11, !srcloc !15
  %31 = add nuw nsw i32 %26, 1
  %32 = load i32, ptr %2, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %25, label %34

34:                                               ; preds = %25, %23, %1
  %35 = tail call i64 @ktime_get() #11
  %36 = add i64 %35, 1000000
  %37 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 1
  br label %38

38:                                               ; preds = %78, %34
  %39 = load i32, ptr %2, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %41, %38
  %42 = phi i32 [ %53, %41 ], [ 0, %38 ]
  %43 = phi i1 [ %52, %41 ], [ true, %38 ]
  %44 = load ptr, ptr %37, align 4
  %45 = getelementptr ptr, ptr %44, i32 %42
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %49 = lshr i32 %48, 2
  %50 = zext i1 %43 to i32
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = add nuw nsw i32 %42, 1
  %54 = load i32, ptr %2, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %41, label %56

56:                                               ; preds = %41
  br i1 %52, label %57, label %93

57:                                               ; preds = %56, %38
  %58 = tail call i64 @ktime_get() #11
  %59 = icmp sgt i64 %58, %36
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load i32, ptr %2, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %93

63:                                               ; preds = %63, %60
  %64 = phi i32 [ %75, %63 ], [ 0, %60 ]
  %65 = phi i1 [ %74, %63 ], [ true, %60 ]
  %66 = load ptr, ptr %37, align 4
  %67 = getelementptr ptr, ptr %66, i32 %64
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %71 = lshr i32 %70, 2
  %72 = zext i1 %65 to i32
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = add nuw nsw i32 %64, 1
  %76 = load i32, ptr %2, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %63, label %79

78:                                               ; preds = %57
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #11
  br label %38

79:                                               ; preds = %63
  %80 = icmp sgt i32 %76, 0
  %81 = select i1 %74, i1 %80, i1 false
  br i1 %81, label %82, label %93

82:                                               ; preds = %82, %79
  %83 = phi i32 [ %90, %82 ], [ 0, %79 ]
  %84 = load ptr, ptr %0, align 4
  %85 = load ptr, ptr %37, align 4
  %86 = getelementptr ptr, ptr %85, i32 %83
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.12, i32 noundef %89) #12
  %90 = add nuw nsw i32 %83, 1
  %91 = load i32, ptr %2, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %82, label %93

93:                                               ; preds = %82, %79, %60, %56, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rk_iommu_disable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_bulk_enable(i32 noundef %3, ptr noundef %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 939, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %1
  %10 = tail call fastcc i32 @rk_iommu_enable_stall(ptr noundef %0)
  %11 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 1
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ 0, %14 ], [ %27, %16 ]
  %18 = phi i1 [ true, %14 ], [ %26, %16 ]
  %19 = load ptr, ptr %15, align 4
  %20 = getelementptr ptr, ptr %19, i32 %17
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %24 = zext i1 %18 to i32
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = add nuw nsw i32 %17, 1
  %28 = load i32, ptr %11, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %16, label %30

30:                                               ; preds = %16
  br i1 %26, label %31, label %99

31:                                               ; preds = %30
  %32 = icmp sgt i32 %28, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %33, %31
  %34 = phi i32 [ %39, %33 ], [ 0, %31 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !21
  tail call void @arm_heavy_mb() #11
  %35 = load ptr, ptr %15, align 4
  %36 = getelementptr ptr, ptr %35, i32 %34
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 1) #11, !srcloc !15
  %39 = add nuw nsw i32 %34, 1
  %40 = load i32, ptr %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %33, label %42

42:                                               ; preds = %33, %31, %9
  %43 = tail call i64 @ktime_get() #11
  %44 = add i64 %43, 1000000
  %45 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 1
  br label %46

46:                                               ; preds = %84, %42
  %47 = load i32, ptr %11, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %49, %46
  %50 = phi i32 [ %60, %49 ], [ 0, %46 ]
  %51 = phi i1 [ %59, %49 ], [ true, %46 ]
  %52 = load ptr, ptr %45, align 4
  %53 = getelementptr ptr, ptr %52, i32 %50
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %57 = zext i1 %51 to i32
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = add nuw nsw i32 %50, 1
  %61 = load i32, ptr %11, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %49, label %63

63:                                               ; preds = %49
  br i1 %59, label %64, label %99

64:                                               ; preds = %63, %46
  %65 = tail call i64 @ktime_get() #11
  %66 = icmp sgt i64 %65, %44
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load i32, ptr %11, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %116

70:                                               ; preds = %70, %67
  %71 = phi i32 [ %81, %70 ], [ 0, %67 ]
  %72 = phi i1 [ %80, %70 ], [ true, %67 ]
  %73 = load ptr, ptr %45, align 4
  %74 = getelementptr ptr, ptr %73, i32 %71
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %78 = zext i1 %72 to i32
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = add nuw nsw i32 %71, 1
  %82 = load i32, ptr %11, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %70, label %85

84:                                               ; preds = %64
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #11
  br label %46

85:                                               ; preds = %70
  %86 = icmp sgt i32 %82, 0
  %87 = select i1 %80, i1 %86, i1 false
  br i1 %87, label %88, label %99

88:                                               ; preds = %88, %85
  %89 = phi i32 [ %96, %88 ], [ 0, %85 ]
  %90 = load ptr, ptr %0, align 4
  %91 = load ptr, ptr %45, align 4
  %92 = getelementptr ptr, ptr %91, i32 %89
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.13, i32 noundef %95) #12
  %96 = add nuw nsw i32 %89, 1
  %97 = load i32, ptr %11, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %88, label %99

99:                                               ; preds = %88, %85, %63, %30
  %100 = phi i32 [ %28, %30 ], [ %82, %85 ], [ %97, %88 ], [ %61, %63 ]
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.rk_iommu, ptr %0, i32 0, i32 1
  br label %104

104:                                              ; preds = %104, %102
  %105 = phi i32 [ 0, %102 ], [ %113, %104 ]
  %106 = load ptr, ptr %103, align 4
  %107 = getelementptr ptr, ptr %106, i32 %105
  %108 = load ptr, ptr %107, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  tail call void @arm_heavy_mb() #11
  %109 = getelementptr i8, ptr %108, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 0) #11, !srcloc !15
  %110 = load ptr, ptr %103, align 4
  %111 = getelementptr ptr, ptr %110, i32 %105
  %112 = load ptr, ptr %111, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 0) #11, !srcloc !15
  %113 = add nuw nsw i32 %105, 1
  %114 = load i32, ptr %11, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %104, label %116

116:                                              ; preds = %104, %99, %67
  tail call fastcc void @rk_iommu_disable_stall(ptr noundef %0)
  %117 = load i32, ptr %2, align 4
  %118 = load ptr, ptr %4, align 4
  tail call void @clk_bulk_disable(i32 noundef %117, ptr noundef %118) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rk_iommu_zap_iova(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.rk_iommu_domain, ptr %0, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %62, label %8

8:                                                ; preds = %3
  %9 = add i32 %2, %1
  %10 = icmp ugt i32 %9, %1
  br label %11

11:                                               ; preds = %59, %8
  %12 = phi ptr [ %6, %8 ], [ %60, %59 ]
  %13 = getelementptr i8, ptr %12, i32 -48
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @pm_runtime_get_if_active(ptr noundef %14, i1 noundef zeroext false) #11
  %16 = icmp slt i32 %15, 0
  %17 = load i1, ptr @rk_iommu_zap_iova.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %11
  store i1 true, ptr @rk_iommu_zap_iova.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 722, i32 noundef 9, ptr noundef null) #11
  br label %59

21:                                               ; preds = %11
  %22 = icmp slt i32 %15, 1
  br i1 %22, label %59, label %23

23:                                               ; preds = %21
  %24 = getelementptr i8, ptr %12, i32 -28
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %12, i32 -32
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @clk_bulk_enable(i32 noundef %25, ptr noundef %27) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30, !prof !8

30:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 726, i32 noundef 9, ptr noundef null) #11
  br label %31

31:                                               ; preds = %30, %23
  %32 = getelementptr i8, ptr %12, i32 -40
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %12, i32 -44
  br label %37

37:                                               ; preds = %50, %35
  %38 = phi i32 [ %33, %35 ], [ %51, %50 ]
  %39 = phi i32 [ 0, %35 ], [ %52, %50 ]
  br i1 %10, label %40, label %50

40:                                               ; preds = %40, %37
  %41 = phi i32 [ %46, %40 ], [ %1, %37 ]
  %42 = load ptr, ptr %36, align 4
  %43 = getelementptr ptr, ptr %42, i32 %39
  %44 = load ptr, ptr %43, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  tail call void @arm_heavy_mb() #11
  %45 = getelementptr i8, ptr %44, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %41) #11, !srcloc !15
  %46 = add i32 %41, 4096
  %47 = icmp ult i32 %46, %9
  br i1 %47, label %40, label %48

48:                                               ; preds = %40
  %49 = load i32, ptr %32, align 4
  br label %50

50:                                               ; preds = %48, %37
  %51 = phi i32 [ %49, %48 ], [ %38, %37 ]
  %52 = add nuw nsw i32 %39, 1
  %53 = icmp slt i32 %52, %51
  br i1 %53, label %37, label %54

54:                                               ; preds = %50, %31
  %55 = load i32, ptr %24, align 4
  %56 = load ptr, ptr %26, align 4
  tail call void @clk_bulk_disable(i32 noundef %55, ptr noundef %56) #11
  %57 = load ptr, ptr %13, align 4
  %58 = tail call i32 @__pm_runtime_idle(ptr noundef %57, i32 noundef 5) #11
  br label %59

59:                                               ; preds = %54, %21, %20
  %60 = load ptr, ptr %12, align 4
  %61 = icmp eq ptr %60, %0
  br i1 %61, label %62, label %11

62:                                               ; preds = %59, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_ref_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @report_iommu_fault(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rk_dte_pt_address(i32 noundef %0) #8 {
  %2 = and i32 %0, -4096
  ret i32 %2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rk_mk_dte(i32 noundef %0) #8 {
  %2 = and i32 %0, -4096
  %3 = or i32 %2, 1
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rk_mk_pte(i32 noundef %0, i32 noundef %1) #9 {
  %3 = shl i32 %1, 1
  %4 = and i32 %3, 6
  %5 = and i32 %0, -4096
  %6 = or i32 %5, %4
  %7 = or i32 %6, 1
  ret i32 %7
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rk_dte_addr_phys(i32 noundef returned %0) #8 {
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rk_dma_addr_dte(i32 noundef returned %0) #8 {
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rk_dte_pt_address_v2(i32 noundef %0) #8 {
  %2 = and i32 %0, -4096
  ret i32 %2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rk_mk_dte_v2(i32 noundef %0) #8 {
  %2 = and i32 %0, -4096
  %3 = or i32 %2, 1
  ret i32 %3
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rk_mk_pte_v2(i32 noundef %0, i32 noundef %1) #10 {
  %3 = trunc i32 %1 to i3
  %4 = tail call i3 @llvm.bitreverse.i3(i3 %3)
  %5 = zext i3 %4 to i32
  %6 = and i32 %0, -4096
  %7 = or i32 %6, %5
  %8 = or i32 %7, 1
  ret i32 %8
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rk_dte_addr_phys_v2(i32 noundef %0) #8 {
  %2 = and i32 %0, -4096
  ret i32 %2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rk_dma_addr_dte_v2(i32 noundef %0) #8 {
  %2 = and i32 %0, -4096
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_iommu_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rk_iommu, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call fastcc void @rk_iommu_disable(ptr noundef %3)
  br label %8

8:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_iommu_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rk_iommu, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @rk_iommu_enable(ptr noundef %3)
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i3 @llvm.bitreverse.i3(i3) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
!11 = !{i64 5028419}
!12 = !{i64 2153130493}
!13 = !{i64 2148846243, i64 2148846266, i64 2148846298, i64 2148846330, i64 2148846368, i64 2148846398}
!14 = !{i64 2153131334}
!15 = !{i64 5028001}
!16 = !{i64 2153130676}
!17 = !{i64 2153153714, i64 2153154209, i64 2153153751, i64 2153153807, i64 2153153841, i64 2153153865, i64 2153153906, i64 2153153927, i64 2153153955, i64 2153153989}
!18 = !{i64 2153157555, i64 2153158050, i64 2153157592, i64 2153157648, i64 2153157682, i64 2153157706, i64 2153157747, i64 2153157768, i64 2153157796, i64 2153157830}
!19 = !{i64 2153156155, i64 2153156650, i64 2153156192, i64 2153156248, i64 2153156282, i64 2153156306, i64 2153156347, i64 2153156368, i64 2153156396, i64 2153156430}
!20 = !{i8 0, i8 2}
!21 = !{i64 2153131004}
