; ModuleID = '/llk/IR/drivers/irqchip/irq-alpine-msi.c_pt.bc'
source_filename = "../drivers/irqchip/irq-alpine-msi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.alpine_msix_data = type { %struct.spinlock, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.msi_msg = type { %union.anon.61, %union.anon.62, %union.anon.63 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i32 }

@__of_table_alpine_msix = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"al,alpine-msix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @alpine_msix_init }, section "__irqchip_of_table", align 4
@.str = private unnamed_addr constant [47 x i8] c"\013irq_alpine_msi: Failed to allocate resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"al,msi-base-spi\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\013irq_alpine_msi: Unable to parse MSI base\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"al,msi-num-spis\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\013irq_alpine_msi: Unable to parse MSI numbers\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"\013irq_alpine_msi: Failed to find the GIC node\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"\013irq_alpine_msi: Failed to find the GIC domain\0A\00", align 1
@alpine_msix_middle_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @alpine_msix_middle_domain_alloc, ptr @alpine_msix_middle_domain_free, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [59 x i8] c"\013irq_alpine_msi: Failed to create the MSIX middle domain\0A\00", align 1
@alpine_msix_domain_info = internal global %struct.msi_domain_info { i32 11, ptr null, ptr @alpine_msix_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [47 x i8] c"\013irq_alpine_msi: Failed to create MSI domain\0A\00", align 1
@middle_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @alpine_msix_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"alpine_msix_middle\00", align 1
@alpine_msix_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @alpine_msix_mask_msi_irq, ptr null, ptr @alpine_msix_unmask_msi_irq, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"MSIx\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_alpine_msix], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alpine_msix_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 20) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %71, label %9

9:                                                ; preds = %2
  store i32 0, ptr %7, align 8
  %10 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %69

14:                                               ; preds = %9
  %15 = load i32, ptr %5, align 4
  %16 = and i32 %15, -1048576
  %17 = getelementptr inbounds %struct.alpine_msix_data, ptr %7, i32 0, i32 1
  %18 = or i32 %16, 65536
  store i32 %18, ptr %17, align 4
  %19 = getelementptr inbounds %struct.alpine_msix_data, ptr %7, i32 0, i32 2
  %20 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %19, i32 noundef 1, i32 noundef 0) #7
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %69

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.alpine_msix_data, ptr %7, i32 0, i32 3
  %26 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %25, i32 noundef 1, i32 noundef 0) #7
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %69

30:                                               ; preds = %24
  %31 = load i32, ptr %25, align 4
  %32 = call ptr @bitmap_zalloc(i32 noundef %31, i32 noundef 3264) #7
  %33 = getelementptr inbounds %struct.alpine_msix_data, ptr %7, i32 0, i32 4
  store ptr %32, ptr %33, align 8
  %34 = icmp eq ptr %32, null
  br i1 %34, label %69, label %35

35:                                               ; preds = %30
  %36 = call ptr @of_irq_find_parent(ptr noundef %0) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %66

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.device_node, ptr %36, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #7
  %42 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %42, i8 0, i64 68, i1 false) #7
  store ptr %41, ptr %4, align 4
  %43 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #7
  %46 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %46, i8 0, i64 68, i1 false) #7
  store ptr %41, ptr %3, align 4
  %47 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %66

51:                                               ; preds = %45, %40
  %52 = phi ptr [ %47, %45 ], [ %43, %40 ]
  %53 = call ptr @__irq_domain_add(ptr noundef null, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @alpine_msix_middle_domain_ops, ptr noundef nonnull %7) #7
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %66

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.irq_domain, ptr %53, i32 0, i32 9
  store ptr %52, ptr %58, align 4
  %59 = icmp eq ptr %0, null
  %60 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %61 = select i1 %59, ptr null, ptr %60
  %62 = call ptr @pci_msi_create_irq_domain(ptr noundef %61, ptr noundef nonnull @alpine_msix_domain_info, ptr noundef nonnull %53) #7
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  call void @irq_domain_remove(ptr noundef nonnull %53) #7
  br label %66

66:                                               ; preds = %64, %55, %49, %38
  %67 = phi i32 [ -19, %38 ], [ -6, %49 ], [ -12, %55 ], [ -12, %64 ]
  %68 = load ptr, ptr %33, align 8
  call void @bitmap_free(ptr noundef %68) #7
  br label %69

69:                                               ; preds = %66, %30, %28, %22, %12
  %70 = phi i32 [ %10, %12 ], [ -22, %22 ], [ -22, %28 ], [ %67, %66 ], [ -12, %30 ]
  call void @kfree(ptr noundef nonnull %7) #7
  br label %71

71:                                               ; preds = %69, %57, %2
  %72 = phi i32 [ %70, %69 ], [ -12, %2 ], [ 0, %57 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  ret i32 %72
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alpine_msix_middle_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_lock(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.alpine_msix_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.alpine_msix_data, ptr %7, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %9, i32 noundef %11, i32 noundef 0, i32 noundef %2, i32 noundef 0, i32 noundef 0) #7
  %13 = load i32, ptr %10, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %16 = load i16, ptr %7, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %71

18:                                               ; preds = %4
  %19 = load ptr, ptr %8, align 4
  tail call void @__bitmap_set(ptr noundef %19, i32 noundef %12, i32 noundef %2) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %20 = load i16, ptr %7, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %22 = getelementptr inbounds %struct.alpine_msix_data, ptr %7, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %71, label %26

26:                                               ; preds = %18
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %71, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds i8, ptr %5, i32 20
  %30 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %31 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  %32 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  %33 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  %34 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 2
  br label %35

35:                                               ; preds = %52, %28
  %36 = phi i32 [ 0, %28 ], [ %61, %52 ]
  %37 = add i32 %36, %1
  %38 = add i32 %36, %24
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %29, i8 0, i32 52, i1 false) #7, !annotation !8
  %39 = load ptr, ptr %30, align 4
  %40 = getelementptr inbounds %struct.irq_domain, ptr %39, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  %44 = or i1 %42, %43
  br i1 %44, label %63, label %45

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.fwnode_handle, ptr %41, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, @of_fwnode_ops
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  store ptr %41, ptr %5, align 4
  store i32 3, ptr %31, align 4
  store i32 0, ptr %32, align 4
  store i32 %38, ptr %33, align 4
  store i32 1, ptr %34, align 4
  %50 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %37, i32 noundef 1, ptr noundef nonnull %5) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load ptr, ptr %30, align 4
  %54 = call ptr @irq_domain_get_irq_data(ptr noundef %53, i32 noundef %37) #7
  %55 = getelementptr inbounds %struct.irq_data, ptr %54, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.irq_chip, ptr %56, i32 0, i32 13
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 %58(ptr noundef %54, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #7
  %60 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %37, i32 noundef %38, ptr noundef nonnull @middle_irq_chip, ptr noundef %7) #7
  %61 = add nuw i32 %36, 1
  %62 = icmp eq i32 %61, %2
  br i1 %62, label %71, label %35

63:                                               ; preds = %49, %45, %35
  %64 = phi i32 [ -22, %35 ], [ %50, %49 ], [ -22, %45 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #7
  %65 = add i32 %36, -1
  call void @irq_domain_free_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %65) #7
  %66 = load i32, ptr %22, align 4
  %67 = sub i32 %24, %66
  call void @_raw_spin_lock(ptr noundef %7) #7
  %68 = load ptr, ptr %8, align 4
  call void @__bitmap_clear(ptr noundef %68, i32 noundef %67, i32 noundef %2) #7
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %69 = load i16, ptr %7, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %71

71:                                               ; preds = %63, %52, %26, %18, %15
  %72 = phi i32 [ %64, %63 ], [ %24, %18 ], [ -28, %15 ], [ 0, %26 ], [ 0, %52 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alpine_msix_middle_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #7
  %5 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  tail call void @irq_domain_free_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7
  %7 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.alpine_msix_data, ptr %6, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  tail call void @_raw_spin_lock(ptr noundef %6) #7
  %12 = getelementptr inbounds %struct.alpine_msix_data, ptr %6, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void @__bitmap_clear(ptr noundef %13, i32 noundef %11, i32 noundef %2) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %14 = load i16, ptr %6, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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
define internal void @alpine_msix_compose_msi_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.alpine_msix_data, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 3
  %10 = or i32 %9, %6
  %11 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  store i32 0, ptr %11, align 4
  store i32 %10, ptr %1, align 4
  %12 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  store i32 0, ptr %12, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alpine_msix_mask_msi_irq(ptr noundef %0) #0 {
  tail call void @pci_msi_mask_irq(ptr noundef %0) #7
  tail call void @irq_chip_mask_parent(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @alpine_msix_unmask_msi_irq(ptr noundef %0) #0 {
  tail call void @pci_msi_unmask_irq(ptr noundef %0) #7
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
!9 = !{i64 2149117778}
!10 = !{i64 2149113602}
!11 = !{i64 2149113677, i64 2149113704, i64 2149113751, i64 2149113773, i64 2149113801, i64 2149113821}
!12 = !{i64 2149140781}
