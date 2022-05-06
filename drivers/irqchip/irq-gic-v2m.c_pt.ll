; ModuleID = '/llk/IR/drivers/irqchip/irq-gic-v2m.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic-v2m.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.v2m_data = type { %struct.list_head, ptr, %struct.resource, ptr, i32, i32, i32, ptr, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.msi_msg = type { %union.anon.61, %union.anon.62, %union.anon.63 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i32 }

@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@gicv2m_device_id = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,gic-v2m-frame\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [15 x i8] c"msi-controller\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\013GICv2m: Failed to allocate v2m resource.\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"arm,msi-base-spi\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"arm,msi-num-spis\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"\016GICv2m: DT overriding V2M MSI_TYPER (base:%u, num:%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\013GICv2m: Failed to map GICv2m resource\0A\00", align 1
@v2m_nodes = internal global %struct.list_head { ptr @v2m_nodes, ptr @v2m_nodes }, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"\016GICv2m: range%pR, SPI[%d:%d]\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"\013GICv2m: Invalid MSI base SPI (base:%u)\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"\013GICv2m: Number of SPIs (%u) exceed maximum (%u)\0A\00", align 1
@gicv2m_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gicv2m_irq_domain_alloc, ptr @gicv2m_irq_domain_free, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"\013GICv2m: Failed to create GICv2m domain\0A\00", align 1
@gicv2m_msi_domain_info = internal global %struct.msi_domain_info { i32 15, ptr null, ptr @gicv2m_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gicv2m_pmsi_domain_info = internal global %struct.msi_domain_info { i32 3, ptr @gicv2m_pmsi_ops, ptr @gicv2m_pmsi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"\013GICv2m: Failed to create MSI domains\0A\00", align 1
@v2m_lock = internal global %struct.spinlock zeroinitializer, align 4
@gicv2m_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.11, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gicv2m_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@irqchip_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"GICv2m\00", align 1
@gicv2m_msi_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gicv2m_mask_msi_irq, ptr null, ptr @gicv2m_unmask_msi_irq, ptr @irq_chip_eoi_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@gicv2m_pmsi_ops = internal global %struct.msi_domain_ops zeroinitializer, align 4
@gicv2m_pmsi_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"pMSI\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @gicv2m_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @of_fwnode_ops
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @gicv2m_of_init(ptr noundef nonnull %0, ptr noundef %1) #10
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi i32 [ %11, %10 ], [ -22, %6 ], [ -22, %2 ]
  ret i32 %13
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @gicv2m_of_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource, align 4
  %6 = icmp eq ptr %0, null
  %7 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @of_fwnode_ops
  %13 = getelementptr i8, ptr %0, i32 -12
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi ptr [ null, %2 ], [ %14, %9 ]
  %17 = tail call ptr @of_find_matching_node_and_match(ptr noundef %16, ptr noundef nonnull @gicv2m_device_id, ptr noundef null) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %47, %15
  %20 = phi ptr [ %48, %47 ], [ %17, %15 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %21 = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str, ptr noundef null) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %19
  %24 = call i32 @of_address_to_resource(ptr noundef nonnull %20, i32 noundef 0, ptr noundef nonnull %5) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %45

28:                                               ; preds = %23
  %29 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %20, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #11
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %20, ptr noundef nonnull @.str.3, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #11
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, ptr %3, align 4
  %36 = load i32, ptr %4, align 4
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %35, i32 noundef %36) #12
  br label %38

38:                                               ; preds = %34, %31, %28
  %39 = getelementptr inbounds %struct.device_node, ptr %20, i32 0, i32 3
  %40 = load i32, ptr %3, align 4
  %41 = load i32, ptr %4, align 4
  %42 = call fastcc i32 @gicv2m_init_one(ptr noundef %39, i32 noundef %40, i32 noundef %41, ptr noundef nonnull %5) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  call void @of_node_put(ptr noundef nonnull %20) #11
  br label %45

45:                                               ; preds = %44, %26
  %46 = phi i32 [ %42, %44 ], [ %24, %26 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %77

47:                                               ; preds = %38, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %48 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %20, ptr noundef nonnull @gicv2m_device_id, ptr noundef null) #11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %19

50:                                               ; preds = %47, %15
  %51 = load volatile ptr, ptr @v2m_nodes, align 4
  %52 = icmp eq ptr %51, @v2m_nodes
  %53 = icmp eq ptr %51, null
  %54 = or i1 %52, %53
  br i1 %54, label %113, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.v2m_data, ptr %51, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = call ptr @__irq_domain_add(ptr noundef %57, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @gicv2m_domain_ops, ptr noundef nonnull %51) #11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %77

62:                                               ; preds = %55
  call void @irq_domain_update_bus_token(ptr noundef nonnull %58, i32 noundef 5) #11
  %63 = getelementptr inbounds %struct.irq_domain, ptr %58, i32 0, i32 9
  store ptr %1, ptr %63, align 4
  %64 = load ptr, ptr %56, align 4
  %65 = call ptr @pci_msi_create_irq_domain(ptr noundef %64, ptr noundef nonnull @gicv2m_msi_domain_info, ptr noundef nonnull %58) #11
  %66 = load ptr, ptr %56, align 4
  %67 = call ptr @platform_msi_create_irq_domain(ptr noundef %66, ptr noundef nonnull @gicv2m_pmsi_domain_info, ptr noundef nonnull %58) #11
  %68 = icmp ne ptr %65, null
  %69 = icmp ne ptr %67, null
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %113, label %71

71:                                               ; preds = %62
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br i1 %69, label %73, label %74

73:                                               ; preds = %71
  call void @irq_domain_remove(ptr noundef nonnull %67) #11
  br label %74

74:                                               ; preds = %73, %71
  br i1 %68, label %75, label %76

75:                                               ; preds = %74
  call void @irq_domain_remove(ptr noundef nonnull %65) #11
  br label %76

76:                                               ; preds = %75, %74
  call void @irq_domain_remove(ptr noundef nonnull %58) #11
  br label %77

77:                                               ; preds = %76, %60, %45
  %78 = phi i32 [ -12, %60 ], [ -12, %76 ], [ %46, %45 ]
  %79 = load ptr, ptr @v2m_nodes, align 4
  %80 = icmp eq ptr %79, @v2m_nodes
  br i1 %80, label %113, label %81

81:                                               ; preds = %111, %77
  %82 = phi ptr [ %83, %111 ], [ %79, %77 ]
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %85, ptr %86, align 4
  store volatile ptr %83, ptr %85, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %82, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %84, align 4
  %87 = getelementptr inbounds %struct.v2m_data, ptr %82, i32 0, i32 7
  %88 = load ptr, ptr %87, align 4
  call void @bitmap_free(ptr noundef %88) #11
  %89 = getelementptr inbounds %struct.v2m_data, ptr %82, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  call void @iounmap(ptr noundef %90) #11
  %91 = getelementptr inbounds %struct.v2m_data, ptr %82, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  %94 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  %95 = or i1 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %81
  %97 = getelementptr inbounds %struct.fwnode_handle, ptr %92, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, @of_fwnode_ops
  %100 = getelementptr i8, ptr %92, i32 -12
  %101 = select i1 %99, ptr %100, ptr null
  br label %102

102:                                              ; preds = %96, %81
  %103 = phi ptr [ null, %81 ], [ %101, %96 ]
  call void @of_node_put(ptr noundef %103) #11
  %104 = load ptr, ptr %91, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.fwnode_handle, ptr %104, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, @irqchip_fwnode_ops
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  call void @irq_domain_free_fwnode(ptr noundef nonnull %104) #11
  br label %111

111:                                              ; preds = %110, %106, %102
  call void @kfree(ptr noundef %82) #11
  %112 = icmp eq ptr %83, @v2m_nodes
  br i1 %112, label %113, label %81

113:                                              ; preds = %111, %77, %62, %50
  %114 = phi i32 [ 0, %50 ], [ 0, %62 ], [ %78, %77 ], [ %78, %111 ]
  ret i32 %114
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @gicv2m_init_one(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 section ".init.text" {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 68) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %91, label %8

8:                                                ; preds = %4
  store volatile ptr %6, ptr %6, align 8
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %9, align 4
  %10 = getelementptr inbounds %struct.v2m_data, ptr %6, i32 0, i32 1
  store ptr %0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.v2m_data, ptr %6, i32 0, i32 8
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.v2m_data, ptr %6, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %12, ptr noundef align 4 dereferenceable(32) %3, i32 32, i1 false)
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v2m_data, ptr %6, i32 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = sub i32 1, %13
  %17 = add i32 %16, %15
  %18 = tail call ptr @ioremap(i32 noundef %13, i32 noundef %17) #11
  %19 = getelementptr inbounds %struct.v2m_data, ptr %6, i32 0, i32 3
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %8
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %89

23:                                               ; preds = %8
  %24 = icmp ne i32 %1, 0
  %25 = icmp ne i32 %2, 0
  %26 = and i1 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.v2m_data, ptr %6, i32 0, i32 4
  store i32 %1, ptr %28, align 8
  br label %40

29:                                               ; preds = %23
  %30 = load i32, ptr %11, align 8
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %86

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %18, i32 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !9
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 1023
  %38 = getelementptr inbounds %struct.v2m_data, ptr %6, i32 0, i32 4
  store i32 %37, ptr %38, align 8
  %39 = and i32 %35, 1023
  br label %40

40:                                               ; preds = %33, %27
  %41 = phi i32 [ %39, %33 ], [ %2, %27 ]
  %42 = phi i32 [ %37, %33 ], [ %1, %27 ]
  %43 = getelementptr inbounds %struct.v2m_data, ptr %6, i32 0, i32 5
  store i32 %41, ptr %43, align 4
  %44 = getelementptr inbounds %struct.v2m_data, ptr %6, i32 0, i32 4
  %45 = getelementptr inbounds %struct.v2m_data, ptr %6, i32 0, i32 5
  %46 = icmp ult i32 %42, 32
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %42) #12
  br label %86

49:                                               ; preds = %40
  %50 = icmp eq i32 %41, 0
  %51 = add i32 %41, %42
  %52 = icmp ugt i32 %51, 1019
  %53 = or i1 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %41, i32 noundef 988) #12
  br label %86

56:                                               ; preds = %49
  %57 = load i32, ptr %11, align 8
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load ptr, ptr %19, align 4
  %62 = getelementptr i8, ptr %61, i32 4044
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #11, !srcloc !9
  switch i32 %63, label %74 [
    i32 100663664, label %64
    i32 319, label %68
  ]

64:                                               ; preds = %60
  %65 = load i32, ptr %11, align 8
  %66 = or i32 %65, 1
  store i32 %66, ptr %11, align 8
  %67 = load i32, ptr %44, align 8
  br label %71

68:                                               ; preds = %60
  %69 = load i32, ptr %11, align 8
  %70 = or i32 %69, 1
  store i32 %70, ptr %11, align 8
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi i32 [ %67, %64 ], [ 32, %68 ]
  %73 = getelementptr inbounds %struct.v2m_data, ptr %6, i32 0, i32 6
  store i32 %72, ptr %73, align 8
  br label %74

74:                                               ; preds = %71, %60, %56
  %75 = load i32, ptr %45, align 4
  %76 = tail call ptr @bitmap_zalloc(i32 noundef %75, i32 noundef 3264) #11
  %77 = getelementptr inbounds %struct.v2m_data, ptr %6, i32 0, i32 7
  store ptr %76, ptr %77, align 4
  %78 = icmp eq ptr %76, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @v2m_nodes, i32 0, i32 1), align 4
  store ptr %6, ptr getelementptr inbounds (%struct.list_head, ptr @v2m_nodes, i32 0, i32 1), align 4
  store ptr @v2m_nodes, ptr %6, align 8
  store ptr %80, ptr %9, align 4
  store volatile ptr %6, ptr %80, align 4
  %81 = load i32, ptr %44, align 8
  %82 = load i32, ptr %45, align 4
  %83 = add i32 %81, -1
  %84 = add i32 %83, %82
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %3, i32 noundef %81, i32 noundef %84) #12
  br label %91

86:                                               ; preds = %74, %54, %47, %29
  %87 = phi i32 [ -12, %74 ], [ -22, %29 ], [ -22, %47 ], [ -22, %54 ]
  %88 = load ptr, ptr %19, align 4
  tail call void @iounmap(ptr noundef %88) #11
  br label %89

89:                                               ; preds = %86, %21
  %90 = phi i32 [ %87, %86 ], [ -12, %21 ]
  tail call void @kfree(ptr noundef nonnull %6) #11
  br label %91

91:                                               ; preds = %89, %79, %4
  %92 = phi i32 [ 0, %79 ], [ %90, %89 ], [ -12, %4 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gicv2m_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #8 {
  %5 = alloca %struct.irq_fwspec, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @v2m_lock) #11
  %6 = load ptr, ptr @v2m_nodes, align 4
  %7 = icmp eq ptr %6, @v2m_nodes
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %2, 0
  %10 = add i32 %2, -1
  %11 = icmp eq i32 %10, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 false) #11, !range !10
  %13 = sub nuw nsw i32 32, %12
  %14 = select i1 %11, i32 0, i32 %13
  %15 = select i1 %9, i32 -1, i32 %14
  br label %19

16:                                               ; preds = %19
  %17 = load ptr, ptr %20, align 4
  %18 = icmp eq ptr %17, @v2m_nodes
  br i1 %18, label %27, label %19

19:                                               ; preds = %16, %8
  %20 = phi ptr [ %6, %8 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.v2m_data, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.v2m_data, ptr %20, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @bitmap_find_free_region(ptr noundef %22, i32 noundef %24, i32 noundef %15) #11
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %16

27:                                               ; preds = %19, %16, %4
  %28 = phi i32 [ 0, %4 ], [ %25, %19 ], [ %25, %16 ]
  %29 = phi ptr [ null, %4 ], [ null, %16 ], [ %20, %19 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %30 = load i16, ptr @v2m_lock, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr @v2m_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %32 = icmp eq ptr %29, null
  br i1 %32, label %94, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.v2m_data, ptr %29, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %28
  %37 = icmp eq i32 %2, 0
  br i1 %37, label %94, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %40 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  %41 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  %42 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 2
  %43 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  br label %44

44:                                               ; preds = %70, %38
  %45 = phi i32 [ 0, %38 ], [ %79, %70 ]
  %46 = add i32 %45, %1
  %47 = add i32 %45, %36
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #11, !annotation !8
  %48 = load ptr, ptr %39, align 4
  %49 = getelementptr inbounds %struct.irq_domain, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  %53 = or i1 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.fwnode_handle, ptr %50, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, @of_fwnode_ops
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  store ptr %50, ptr %5, align 4
  store i32 3, ptr %40, align 4
  %59 = add i32 %47, -32
  store i32 %59, ptr %41, align 4
  br label %66

60:                                               ; preds = %54, %44
  br i1 %51, label %81, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.fwnode_handle, ptr %50, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, @irqchip_fwnode_ops
  br i1 %64, label %65, label %81

65:                                               ; preds = %61
  store ptr %50, ptr %5, align 4
  store i32 2, ptr %40, align 4
  store i32 %47, ptr %43, align 4
  br label %66

66:                                               ; preds = %65, %58
  %67 = phi ptr [ %41, %65 ], [ %42, %58 ]
  store i32 1, ptr %67, align 4
  %68 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %46, i32 noundef 1, ptr noundef nonnull %5) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load ptr, ptr %39, align 4
  %72 = call ptr @irq_domain_get_irq_data(ptr noundef %71, i32 noundef %46) #11
  %73 = getelementptr inbounds %struct.irq_data, ptr %72, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.irq_chip, ptr %74, i32 0, i32 13
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 %76(ptr noundef %72, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #11
  %78 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %46, i32 noundef %47, ptr noundef nonnull @gicv2m_irq_chip, ptr noundef nonnull %29) #11
  %79 = add nuw i32 %45, 1
  %80 = icmp eq i32 %79, %2
  br i1 %80, label %94, label %44

81:                                               ; preds = %66, %61, %60
  %82 = phi i32 [ -22, %60 ], [ %68, %66 ], [ -22, %61 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #11
  call void @irq_domain_free_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2) #11
  call void @_raw_spin_lock(ptr noundef nonnull @v2m_lock) #11
  %83 = getelementptr inbounds %struct.v2m_data, ptr %29, i32 0, i32 7
  %84 = load ptr, ptr %83, align 4
  %85 = load i32, ptr %34, align 4
  %86 = add i32 %2, -1
  %87 = icmp eq i32 %86, 0
  %88 = call i32 @llvm.ctlz.i32(i32 %86, i1 false) #11, !range !10
  %89 = sub nuw nsw i32 32, %88
  %90 = select i1 %87, i32 0, i32 %89
  %91 = sub i32 %36, %85
  call void @bitmap_release_region(ptr noundef %84, i32 noundef %91, i32 noundef %90) #11
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %92 = load i16, ptr @v2m_lock, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr @v2m_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %94

94:                                               ; preds = %81, %70, %33, %27
  %95 = phi i32 [ %82, %81 ], [ -28, %27 ], [ 0, %33 ], [ 0, %70 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gicv2m_irq_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #11
  %5 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @v2m_lock) #11
  %9 = getelementptr inbounds %struct.v2m_data, ptr %6, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.v2m_data, ptr %6, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = add i32 %2, -1
  %16 = icmp eq i32 %15, 0
  %17 = tail call i32 @llvm.ctlz.i32(i32 %15, i1 false) #11, !range !10
  %18 = sub nuw nsw i32 32, %17
  %19 = select i1 %16, i32 0, i32 %18
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi i32 [ %19, %14 ], [ -1, %3 ]
  %22 = sub i32 %8, %12
  tail call void @bitmap_release_region(ptr noundef %10, i32 noundef %22, i32 noundef %21) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  %23 = load i16, ptr @v2m_lock, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr @v2m_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  tail call void @irq_domain_free_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @gicv2m_compose_msi_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.v2m_data, ptr %4, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.v2m_data, ptr %4, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %6, 3
  %14 = add i32 %13, -256
  %15 = or i32 %12, %14
  %16 = add i32 %12, 64
  %17 = select i1 %10, i32 %16, i32 %15
  %18 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  store i32 0, ptr %18, align 4
  store i32 %17, ptr %1, align 4
  %19 = load i32, ptr %7, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, ptr %5, align 4
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i32 [ %23, %22 ], [ 0, %2 ]
  %26 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = load i32, ptr %7, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.v2m_data, ptr %4, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 %25, %32
  store i32 %33, ptr %26, align 4
  br label %34

34:                                               ; preds = %30, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gicv2m_mask_msi_irq(ptr noundef %0) #8 {
  tail call void @pci_msi_mask_irq(ptr noundef %0) #11
  tail call void @irq_chip_mask_parent(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gicv2m_unmask_msi_irq(ptr noundef %0) #8 {
  tail call void @pci_msi_unmask_irq(ptr noundef %0) #11
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_fwnode(ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!9 = !{i64 4398595}
!10 = !{i32 0, i32 33}
!11 = !{i64 2149122540}
!12 = !{i64 2149118364}
!13 = !{i64 2149118439, i64 2149118466, i64 2149118513, i64 2149118535, i64 2149118563, i64 2149118583}
!14 = !{i64 2149145543}
