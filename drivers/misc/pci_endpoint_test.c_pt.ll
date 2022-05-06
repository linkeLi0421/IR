; ModuleID = '/llk/IR/drivers/misc/pci_endpoint_test.c_pt.bc'
source_filename = "../drivers/misc/pci_endpoint_test.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_endpoint_test_data = type { i32, i32, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.lock_class_key = type {}
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_endpoint_test = type { ptr, ptr, [6 x ptr], %struct.completion, i32, i32, i32, %struct.mutex, %struct.miscdevice, i32, i32, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.pci_endpoint_test_xfer_param = type { i32, i8 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }

@__param_str_no_msi = internal constant [7 x i8] c"no_msi\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@no_msi = internal global i8 0, align 1
@__param_no_msi = internal constant %struct.kernel_param { ptr @__param_str_no_msi, ptr @__this_module, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @no_msi } }, section "__param", align 4
@__UNIQUE_ID_no_msitype228 = internal constant [21 x i8] c"parmtype=no_msi:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_no_msi229 = internal constant [55 x i8] c"parm=no_msi:Disable MSI interrupt in pci_endpoint_test\00", section ".modinfo", align 1
@__param_str_irq_type = internal constant [9 x i8] c"irq_type\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@irq_type = internal global i32 1, align 4
@__param_irq_type = internal constant %struct.kernel_param { ptr @__param_str_irq_type, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @irq_type } }, section "__param", align 4
@__UNIQUE_ID_irq_typetype230 = internal constant [22 x i8] c"parmtype=irq_type:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_type231 = internal constant [87 x i8] c"parm=irq_type:IRQ mode selection in pci_endpoint_test (0 - Legacy, 1 - MSI, 2 - MSI-X)\00", section ".modinfo", align 1
@pci_endpoint_test_tbl = internal constant [14 x %struct.pci_device_id] [%struct.pci_device_id { i32 4172, i32 46336, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @default_data to i32), i32 0 }, %struct.pci_device_id { i32 4172, i32 46337, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @default_data to i32), i32 0 }, %struct.pci_device_id { i32 6487, i32 33216, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @default_data to i32), i32 0 }, %struct.pci_device_id { i32 6487, i32 32960, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @default_data to i32), i32 0 }, %struct.pci_device_id { i32 5827, i32 60890, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4172, i32 45068, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @am654_data to i32), i32 0 }, %struct.pci_device_id { i32 6418, i32 40, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6418, i32 43, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6418, i32 45, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6418, i32 37, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4172, i32 45069, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @j721e_data to i32), i32 0 }, %struct.pci_device_id { i32 4172, i32 45071, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @j721e_data to i32), i32 0 }, %struct.pci_device_id { i32 4172, i32 45072, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @j721e_data to i32), i32 0 }, %struct.pci_device_id zeroinitializer], align 4
@__UNIQUE_ID_description232 = internal constant [42 x i8] c"description=PCI ENDPOINT TEST HOST DRIVER\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [46 x i8] c"author=Kishon Vijay Abraham I <kishon@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@default_data = internal constant %struct.pci_endpoint_test_data { i32 0, i32 4096, i32 1 }, align 4
@am654_data = internal constant %struct.pci_endpoint_test_data { i32 2, i32 65536, i32 1 }, align 4
@j721e_data = internal constant %struct.pci_endpoint_test_data { i32 0, i32 256, i32 1 }, align 4
@pci_endpoint_test_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @pci_endpoint_test_tbl, ptr @pci_endpoint_test_probe, ptr @pci_endpoint_test_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 4
@.str = private unnamed_addr constant [18 x i8] c"pci_endpoint_test\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"pci-endpoint-test\00", align 1
@pci_endpoint_test_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"&test->mutex\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Cannot set DMA mask\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Cannot enable PCI device\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Cannot obtain PCI resources\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Failed to read BAR%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"drivers/misc/pci_endpoint_test.c\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Cannot perform PCI test without BAR%d\0A\00", align 1
@pci_endpoint_test_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"Unable to get id\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"pci-endpoint-test.%d\00", align 1
@pci_endpoint_test_fops = internal constant %struct.file_operations { ptr @__this_module, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pci_endpoint_test_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"Failed to register device\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Failed to get Legacy interrupt\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Failed to get MSI interrupts\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Failed to get MSI-X interrupts\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Invalid IRQ type selected\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Failed to request IRQ %d for Legacy\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Failed to request IRQ %d for MSI %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"Failed to request IRQ %d for MSI-X %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"Failed to get transfer param\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Invalid IRQ type option\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Failed to allocate address\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"failed to map source buffer address\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.28 = private unnamed_addr constant [40 x i8] c"Failed to allocate destination address\0A\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"Failed to allocate source buffer\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"failed to map destination buffer address\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_irq_type231, ptr @__UNIQUE_ID_irq_typetype230, ptr @__UNIQUE_ID_license234, ptr @__UNIQUE_ID_no_msi229, ptr @__UNIQUE_ID_no_msitype228, ptr @__param_irq_type, ptr @__param_no_msi], section "llvm.metadata"

@__mod_pci__pci_endpoint_test_tbl_device_table = dso_local alias [14 x %struct.pci_device_id], ptr @pci_endpoint_test_tbl

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @pci_endpoint_test_driver, ptr noundef nonnull @__this_module, ptr noundef nonnull @.str) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @pci_unregister_driver(ptr noundef nonnull @pci_endpoint_test_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_endpoint_test_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [24 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 13
  %6 = load i8, ptr %5, align 1
  %7 = add i8 %6, -1
  %8 = icmp ult i8 %7, 2
  br i1 %8, label %144, label %9

9:                                                ; preds = %2
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 132, i32 noundef 3520) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %144, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.pci_endpoint_test, ptr %10, i32 0, i32 9
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.pci_endpoint_test, ptr %10, i32 0, i32 10
  store i32 0, ptr %14, align 4
  store ptr %0, ptr %10, align 4
  %15 = getelementptr inbounds %struct.pci_endpoint_test, ptr %10, i32 0, i32 6
  store i32 -1, ptr %15, align 4
  %16 = load i8, ptr @no_msi, align 1, !range !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i32 0, ptr @irq_type, align 4
  br label %19

19:                                               ; preds = %18, %12
  %20 = getelementptr inbounds %struct.pci_device_id, ptr %1, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = inttoptr i32 %21 to ptr
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %13, align 4
  %26 = getelementptr inbounds %struct.pci_endpoint_test_data, ptr %24, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %14, align 4
  %28 = getelementptr inbounds %struct.pci_endpoint_test_data, ptr %24, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr @irq_type, align 4
  br label %30

30:                                               ; preds = %23, %19
  %31 = phi i32 [ %25, %23 ], [ 0, %19 ]
  %32 = getelementptr inbounds %struct.pci_endpoint_test, ptr %10, i32 0, i32 3
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.pci_endpoint_test, ptr %10, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %33, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #11
  %34 = getelementptr inbounds %struct.pci_endpoint_test, ptr %10, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %34, ptr noundef nonnull @.str.2, ptr noundef nonnull @pci_endpoint_test_probe.__key) #11
  %35 = tail call i32 @dma_set_mask(ptr noundef %4, i64 noundef 281474976710655) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = tail call i32 @dma_set_mask(ptr noundef %4, i64 noundef 4294967295) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #12
  br label %144

41:                                               ; preds = %37, %30
  %42 = phi i64 [ 281474976710655, %30 ], [ 4294967295, %37 ]
  %43 = tail call i32 @dma_set_coherent_mask(ptr noundef %4, i64 noundef %42) #11
  %44 = tail call i32 @pci_enable_device(ptr noundef %0) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #12
  br label %144

47:                                               ; preds = %41
  %48 = tail call i32 @pci_request_regions(ptr noundef %0, ptr noundef nonnull @.str.1) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #12
  br label %142

51:                                               ; preds = %47
  tail call void @pci_set_master(ptr noundef %0) #11
  %52 = load i32, ptr @irq_type, align 4
  %53 = tail call fastcc zeroext i1 @pci_endpoint_test_alloc_irq_vectors(ptr noundef nonnull %10, i32 noundef %52)
  br i1 %53, label %54, label %139

54:                                               ; preds = %68, %51
  %55 = phi i32 [ %69, %68 ], [ 0, %51 ]
  %56 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %55, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 512
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %54
  %61 = tail call ptr @pci_ioremap_bar(ptr noundef %0, i32 noundef %55) #11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %55) #12
  %64 = icmp eq i32 %55, %31
  br i1 %64, label %65, label %66, !prof !10

65:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 825, i32 noundef 9, ptr noundef null) #11
  br label %66

66:                                               ; preds = %65, %63, %60
  %67 = getelementptr %struct.pci_endpoint_test, ptr %10, i32 0, i32 2, i32 %55
  store ptr %61, ptr %67, align 4
  br label %68

68:                                               ; preds = %66, %54
  %69 = add nuw nsw i32 %55, 1
  %70 = icmp eq i32 %69, 6
  br i1 %70, label %71, label %54

71:                                               ; preds = %68
  %72 = getelementptr %struct.pci_endpoint_test, ptr %10, i32 0, i32 2, i32 %31
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.pci_endpoint_test, ptr %10, i32 0, i32 1
  store ptr %73, ptr %74, align 4
  %75 = icmp eq ptr %73, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %31) #12
  br label %108

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  store ptr %10, ptr %78, align 8
  %79 = tail call i32 @ida_alloc_range(ptr noundef nonnull @pci_endpoint_test_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #11
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #12
  br label %108

82:                                               ; preds = %77
  %83 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 24, ptr noundef nonnull @.str.10, i32 noundef %79)
  %84 = call noalias ptr @kstrdup(ptr noundef nonnull %3, i32 noundef 3264) #11
  %85 = getelementptr inbounds %struct.pci_endpoint_test, ptr %10, i32 0, i32 11
  store ptr %84, ptr %85, align 4
  %86 = icmp eq ptr %84, null
  br i1 %86, label %106, label %87

87:                                               ; preds = %82
  %88 = call fastcc zeroext i1 @pci_endpoint_test_request_irq(ptr noundef nonnull %10)
  br i1 %88, label %89, label %103

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.pci_endpoint_test, ptr %10, i32 0, i32 8
  store i32 255, ptr %90, align 4
  %91 = call noalias ptr @kstrdup(ptr noundef nonnull %3, i32 noundef 3264) #11
  %92 = getelementptr inbounds %struct.pci_endpoint_test, ptr %10, i32 0, i32 8, i32 1
  store ptr %91, ptr %92, align 4
  %93 = icmp eq ptr %91, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.pci_endpoint_test, ptr %10, i32 0, i32 8, i32 4
  store ptr %4, ptr %95, align 4
  %96 = getelementptr inbounds %struct.pci_endpoint_test, ptr %10, i32 0, i32 8, i32 2
  store ptr @pci_endpoint_test_fops, ptr %96, align 4
  %97 = call i32 @misc_register(ptr noundef %90) #11
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %144, label %99

99:                                               ; preds = %94
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11) #12
  %100 = load ptr, ptr %92, align 4
  call void @kfree(ptr noundef %100) #11
  br label %101

101:                                              ; preds = %99, %89
  %102 = phi i32 [ %97, %99 ], [ -12, %89 ]
  call fastcc void @pci_endpoint_test_release_irq(ptr noundef nonnull %10)
  br label %103

103:                                              ; preds = %101, %87
  %104 = phi i32 [ %102, %101 ], [ -22, %87 ]
  %105 = load ptr, ptr %85, align 4
  call void @kfree(ptr noundef %105) #11
  br label %106

106:                                              ; preds = %103, %82
  %107 = phi i32 [ %104, %103 ], [ -12, %82 ]
  call void @ida_free(ptr noundef nonnull @pci_endpoint_test_ida, i32 noundef %79) #11
  br label %108

108:                                              ; preds = %106, %81, %76
  %109 = phi i32 [ %79, %81 ], [ %107, %106 ], [ -12, %76 ]
  %110 = getelementptr %struct.pci_endpoint_test, ptr %10, i32 0, i32 2, i32 0
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %111) #11
  br label %114

114:                                              ; preds = %113, %108
  %115 = getelementptr %struct.pci_endpoint_test, ptr %10, i32 0, i32 2, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %116) #11
  br label %119

119:                                              ; preds = %118, %114
  %120 = getelementptr %struct.pci_endpoint_test, ptr %10, i32 0, i32 2, i32 2
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %121) #11
  br label %124

124:                                              ; preds = %123, %119
  %125 = getelementptr %struct.pci_endpoint_test, ptr %10, i32 0, i32 2, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %126) #11
  br label %129

129:                                              ; preds = %128, %124
  %130 = getelementptr %struct.pci_endpoint_test, ptr %10, i32 0, i32 2, i32 4
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %131) #11
  br label %134

134:                                              ; preds = %133, %129
  %135 = getelementptr %struct.pci_endpoint_test, ptr %10, i32 0, i32 2, i32 5
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %136) #11
  br label %139

139:                                              ; preds = %138, %134, %51
  %140 = phi i32 [ -22, %51 ], [ %109, %138 ], [ %109, %134 ]
  %141 = load ptr, ptr %10, align 4
  call void @pci_free_irq_vectors(ptr noundef %141) #11
  store i32 -1, ptr %15, align 4
  call void @pci_release_regions(ptr noundef %0) #11
  br label %142

142:                                              ; preds = %139, %50
  %143 = phi i32 [ %48, %50 ], [ %140, %139 ]
  call void @pci_disable_device(ptr noundef %0) #11
  br label %144

144:                                              ; preds = %142, %94, %46, %40, %9, %2
  %145 = phi i32 [ -22, %40 ], [ %44, %46 ], [ %143, %142 ], [ -19, %2 ], [ -12, %9 ], [ 0, %94 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_endpoint_test_remove(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pci_endpoint_test, ptr %4, i32 0, i32 8, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef nonnull %2)
  %8 = icmp ne i32 %7, 1
  %9 = load i32, ptr %2, align 4
  %10 = icmp slt i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %64, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.pci_endpoint_test, ptr %4, i32 0, i32 8
  call void @misc_deregister(ptr noundef %13) #11
  %14 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %14) #11
  %15 = getelementptr inbounds %struct.pci_endpoint_test, ptr %4, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  call void @kfree(ptr noundef %16) #11
  %17 = load i32, ptr %2, align 4
  call void @ida_free(ptr noundef nonnull @pci_endpoint_test_ida, i32 noundef %17) #11
  %18 = getelementptr %struct.pci_endpoint_test, ptr %4, i32 0, i32 2, i32 0
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %19) #11
  br label %22

22:                                               ; preds = %21, %12
  %23 = getelementptr %struct.pci_endpoint_test, ptr %4, i32 0, i32 2, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %24) #11
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr %struct.pci_endpoint_test, ptr %4, i32 0, i32 2, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %29) #11
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr %struct.pci_endpoint_test, ptr %4, i32 0, i32 2, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %34) #11
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr %struct.pci_endpoint_test, ptr %4, i32 0, i32 2, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %39) #11
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr %struct.pci_endpoint_test, ptr %4, i32 0, i32 2, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  call void @pci_iounmap(ptr noundef %0, ptr noundef nonnull %44) #11
  br label %47

47:                                               ; preds = %46, %42
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %50 = getelementptr inbounds %struct.pci_endpoint_test, ptr %4, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %53, %47
  %54 = phi i32 [ %56, %53 ], [ 0, %47 ]
  %55 = call i32 @pci_irq_vector(ptr noundef %48, i32 noundef %54) #11
  call void @devm_free_irq(ptr noundef %49, i32 noundef %55, ptr noundef %4) #11
  %56 = add nuw nsw i32 %54, 1
  %57 = load i32, ptr %50, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %53, label %59

59:                                               ; preds = %53
  %60 = load ptr, ptr %4, align 4
  br label %61

61:                                               ; preds = %59, %47
  %62 = phi ptr [ %60, %59 ], [ %48, %47 ]
  store i32 0, ptr %50, align 4
  call void @pci_free_irq_vectors(ptr noundef %62) #11
  %63 = getelementptr inbounds %struct.pci_endpoint_test, ptr %4, i32 0, i32 6
  store i32 -1, ptr %63, align 4
  call void @pci_release_regions(ptr noundef %0) #11
  call void @pci_disable_device(ptr noundef %0) #11
  br label %64

64:                                               ; preds = %61, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pci_endpoint_test_alloc_irq_vectors(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  switch i32 %1, label %14 [
    i32 0, label %5
    i32 1, label %8
    i32 2, label %11
  ]

5:                                                ; preds = %2
  %6 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %3, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %14, label %17

8:                                                ; preds = %2
  %9 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %3, i32 noundef 1, i32 noundef 32, i32 noundef 2, ptr noundef null) #11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %17

11:                                               ; preds = %2
  %12 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %3, i32 noundef 1, i32 noundef 2048, i32 noundef 4, ptr noundef null) #11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %8, %5, %2
  %15 = phi ptr [ @.str.13, %5 ], [ @.str.14, %8 ], [ @.str.15, %11 ], [ @.str.16, %2 ]
  %16 = phi i32 [ %6, %5 ], [ %9, %8 ], [ %12, %11 ], [ -1, %2 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %15) #12
  br label %17

17:                                               ; preds = %14, %11, %8, %5
  %18 = phi i32 [ %12, %11 ], [ %9, %8 ], [ %6, %5 ], [ %16, %14 ]
  %19 = icmp sgt i32 %18, -1
  %20 = tail call i32 @llvm.smax.i32(i32 %18, i32 0)
  %21 = getelementptr inbounds %struct.pci_endpoint_test, ptr %0, i32 0, i32 6
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.pci_endpoint_test, ptr %0, i32 0, i32 5
  store i32 %20, ptr %22, align 4
  ret i1 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pci_endpoint_test_request_irq(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %4 = getelementptr inbounds %struct.pci_endpoint_test, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_endpoint_test, ptr %0, i32 0, i32 11
  br label %9

9:                                                ; preds = %15, %7
  %10 = phi i32 [ 0, %7 ], [ %16, %15 ]
  %11 = tail call i32 @pci_irq_vector(ptr noundef %2, i32 noundef %10) #11
  %12 = load ptr, ptr %8, align 4
  %13 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %11, ptr noundef nonnull @pci_endpoint_test_irqhandler, ptr noundef null, i32 noundef 128, ptr noundef %12, ptr noundef %0) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = add nuw nsw i32 %10, 1
  %17 = load i32, ptr %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %9, label %29

19:                                               ; preds = %9
  %20 = load i32, ptr @irq_type, align 4
  switch i32 %20, label %29 [
    i32 0, label %21
    i32 1, label %23
    i32 2, label %26
  ]

21:                                               ; preds = %19
  %22 = tail call i32 @pci_irq_vector(ptr noundef %2, i32 noundef %10) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %22) #12
  br label %29

23:                                               ; preds = %19
  %24 = tail call i32 @pci_irq_vector(ptr noundef %2, i32 noundef %10) #11
  %25 = add nuw nsw i32 %10, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %24, i32 noundef %25) #12
  br label %29

26:                                               ; preds = %19
  %27 = tail call i32 @pci_irq_vector(ptr noundef %2, i32 noundef %10) #11
  %28 = add nuw nsw i32 %10, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %27, i32 noundef %28) #12
  br label %29

29:                                               ; preds = %26, %23, %21, %19, %15, %1
  %30 = phi i1 [ false, %21 ], [ false, %23 ], [ false, %26 ], [ false, %19 ], [ true, %1 ], [ true, %15 ]
  ret i1 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_endpoint_test_release_irq(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %4 = getelementptr inbounds %struct.pci_endpoint_test, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %10, %7 ], [ 0, %1 ]
  %9 = tail call i32 @pci_irq_vector(ptr noundef %2, i32 noundef %8) #11
  tail call void @devm_free_irq(ptr noundef %3, i32 noundef %9, ptr noundef %0) #11
  %10 = add nuw nsw i32 %8, 1
  %11 = load i32, ptr %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %7, label %13

13:                                               ; preds = %7, %1
  store i32 0, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_endpoint_test_irqhandler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.pci_endpoint_test, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.pci_endpoint_test, ptr %1, i32 0, i32 4
  store i32 %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.pci_endpoint_test, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %11) #11
  %12 = and i32 %6, -65
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i32 [ %12, %9 ], [ %6, %2 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #11, !srcloc !14
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_endpoint_test_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.pci_endpoint_test_xfer_param, align 8
  %5 = alloca %struct.pci_endpoint_test_xfer_param, align 8
  %6 = alloca %struct.pci_endpoint_test_xfer_param, align 8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 -80
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 -20
  tail call void @mutex_lock(ptr noundef %11) #11
  switch i32 %1, label %506 [
    i32 20481, label %12
    i32 20482, label %56
    i32 1074024451, label %68
    i32 1074024455, label %68
    i32 1074024452, label %91
    i32 1074024453, label %199
    i32 1074024454, label %304
    i32 1074024456, label %457
    i32 20489, label %487
    i32 20496, label %489
  ]

12:                                               ; preds = %3
  %13 = icmp ugt i32 %2, 5
  br i1 %13, label %506, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 8
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, -20468
  %18 = icmp eq i32 %2, 0
  %19 = and i1 %18, %17
  br i1 %19, label %506, label %20

20:                                               ; preds = %14
  %21 = getelementptr %struct.pci_endpoint_test, ptr %9, i32 0, i32 2, i32 %2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %506, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr %struct.pci_dev, ptr %25, i32 0, i32 47, i32 %2, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr %struct.pci_dev, ptr %25, i32 0, i32 47, i32 %2
  %31 = load i32, ptr %30, align 8
  %32 = add i32 %27, 1
  %33 = sub i32 %32, %31
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i32 [ %33, %29 ], [ 0, %24 ]
  %36 = getelementptr i8, ptr %8, i32 40
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %2
  %39 = select i1 %38, i32 4, i32 %35
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %506

41:                                               ; preds = %41, %34
  %42 = phi i32 [ %45, %41 ], [ 0, %34 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  %43 = load ptr, ptr %21, align 4
  %44 = getelementptr i8, ptr %43, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 -1600085856) #11, !srcloc !14
  %45 = add i32 %42, 4
  %46 = icmp slt i32 %45, %39
  br i1 %46, label %41, label %50

47:                                               ; preds = %50
  %48 = add i32 %51, 4
  %49 = icmp slt i32 %48, %39
  br i1 %49, label %50, label %506

50:                                               ; preds = %47, %41
  %51 = phi i32 [ %48, %47 ], [ 0, %41 ]
  %52 = load ptr, ptr %21, align 4
  %53 = getelementptr i8, ptr %52, i32 %51
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !16
  %55 = icmp eq i32 %54, -1600085856
  br i1 %55, label %47, label %506

56:                                               ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %57 = getelementptr i8, ptr %8, i32 -76
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #11, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %60 = load ptr, ptr %57, align 4
  %61 = getelementptr i8, ptr %60, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #11, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %62 = load ptr, ptr %57, align 4
  %63 = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 1) #11, !srcloc !14
  %64 = getelementptr i8, ptr %8, i32 -48
  %65 = tail call i32 @wait_for_completion_timeout(ptr noundef %64, i32 noundef 100) #11
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i32
  br label %506

68:                                               ; preds = %3, %3
  %69 = icmp eq i32 %1, 1074024455
  %70 = load ptr, ptr %9, align 4
  %71 = select i1 %69, i32 2, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %72 = getelementptr i8, ptr %8, i32 -76
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %71) #11, !srcloc !14
  %75 = and i32 %2, 65535
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %76 = load ptr, ptr %72, align 4
  %77 = getelementptr i8, ptr %76, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #11, !srcloc !14
  %78 = select i1 %69, i32 4, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %79 = load ptr, ptr %72, align 4
  %80 = getelementptr i8, ptr %79, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #11, !srcloc !14
  %81 = getelementptr i8, ptr %8, i32 -48
  %82 = tail call i32 @wait_for_completion_timeout(ptr noundef %81, i32 noundef 100) #11
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %506, label %84

84:                                               ; preds = %68
  %85 = add nsw i32 %75, -1
  %86 = tail call i32 @pci_irq_vector(ptr noundef %70, i32 noundef %85) #11
  %87 = getelementptr i8, ptr %8, i32 -32
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %86, %88
  %90 = zext i1 %89 to i32
  br label %506

91:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store i64 0, ptr %6, align 8, !annotation !8
  %92 = load ptr, ptr %9, align 4
  %93 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  %94 = getelementptr i8, ptr %8, i32 44
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr i8, ptr %8, i32 -24
  %97 = load i32, ptr %96, align 4
  %98 = inttoptr i32 %2 to ptr
  %99 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %98, i32 8, i32 -1090519040) #13, !srcloc !17
  %100 = extractvalue { i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %110, !prof !18

102:                                              ; preds = %91
  %103 = tail call ptr @llvm.thread.pointer() #11
  %104 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 3
  %105 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %104) #14, !srcloc !19
  %106 = and i32 %105, -13
  %107 = or i32 %106, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %107) #11, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %108 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %98, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %105) #11, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110, !prof !18

110:                                              ; preds = %102, %91
  %111 = phi i32 [ %108, %102 ], [ 8, %91 ]
  %112 = sub i32 8, %111
  %113 = getelementptr i8, ptr %6, i32 %112
  call void @llvm.memset.p0.i32(ptr align 1 %113, i8 0, i32 %111, i1 false) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.20) #12
  br label %196

114:                                              ; preds = %102
  %115 = load i32, ptr %6, align 8
  %116 = xor i32 %95, -1
  %117 = icmp ugt i32 %115, %116
  br i1 %117, label %196, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.pci_endpoint_test_xfer_param, ptr %6, i32 0, i32 1
  %120 = load i8, ptr %119, align 4
  %121 = and i8 %120, 1
  %122 = zext i8 %121 to i32
  %123 = icmp ugt i32 %97, 2
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.21) #12
  br label %196

125:                                              ; preds = %118
  %126 = add i32 %115, %95
  %127 = call noalias align 64 ptr @__kmalloc(i32 noundef %126, i32 noundef 3520) #15
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.22) #12
  br label %196

130:                                              ; preds = %125
  call void @get_random_bytes(ptr noundef nonnull %127, i32 noundef %126) #11
  %131 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %127) #11
  %132 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %133 = xor i1 %132, true
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %144, !prof !10

135:                                              ; preds = %130
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %136 = call ptr @dev_driver_string(ptr noundef %93) #11
  %137 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44, i32 3
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load ptr, ptr %93, align 4
  br label %142

142:                                              ; preds = %140, %135
  %143 = phi ptr [ %141, %140 ], [ %138, %135 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %136, ptr noundef %143) #11
  br label %144

144:                                              ; preds = %142, %130
  br i1 %131, label %154, label %145

145:                                              ; preds = %144
  %146 = load ptr, ptr @mem_map, align 4
  %147 = ptrtoint ptr %127 to i32
  %148 = add i32 %147, 1073741824
  %149 = lshr i32 %148, 12
  %150 = getelementptr %struct.page, ptr %146, i32 %149
  %151 = and i32 %147, 4032
  %152 = call i32 @dma_map_page_attrs(ptr noundef %93, ptr noundef %150, i32 noundef %151, i32 noundef %126, i32 noundef 1, i32 noundef 0) #11
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %155

154:                                              ; preds = %145, %144
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.23) #12
  br label %194

155:                                              ; preds = %145
  %156 = icmp eq i32 %95, 0
  br i1 %156, label %167, label %157

157:                                              ; preds = %155
  %158 = add i32 %95, -1
  %159 = and i32 %152, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = add i32 %152, %158
  %163 = sub i32 0, %95
  %164 = and i32 %162, %163
  %165 = sub i32 %164, %152
  %166 = getelementptr i8, ptr %127, i32 %165
  br label %167

167:                                              ; preds = %161, %157, %155
  %168 = phi ptr [ %166, %161 ], [ %127, %157 ], [ %127, %155 ]
  %169 = phi i32 [ %164, %161 ], [ %152, %157 ], [ %152, %155 ]
  %170 = call i32 @crc32_le(i32 noundef -1, ptr noundef %168, i32 noundef %115) #16
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %171 = getelementptr i8, ptr %8, i32 -76
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr i8, ptr %172, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %170) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %174 = load ptr, ptr %171, align 4
  %175 = getelementptr i8, ptr %174, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %169) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %176 = load ptr, ptr %171, align 4
  %177 = getelementptr i8, ptr %176, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 0) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %178 = load ptr, ptr %171, align 4
  %179 = getelementptr i8, ptr %178, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %115) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %180 = load ptr, ptr %171, align 4
  %181 = getelementptr i8, ptr %180, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %122) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %182 = load ptr, ptr %171, align 4
  %183 = getelementptr i8, ptr %182, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %97) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %184 = load ptr, ptr %171, align 4
  %185 = getelementptr i8, ptr %184, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 1) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %186 = load ptr, ptr %171, align 4
  %187 = getelementptr i8, ptr %186, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 8) #11, !srcloc !14
  %188 = getelementptr i8, ptr %8, i32 -48
  call void @wait_for_completion(ptr noundef %188) #11
  %189 = load ptr, ptr %171, align 4
  %190 = getelementptr i8, ptr %189, i32 8
  %191 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %192 = and i32 %191, 1
  %193 = icmp ne i32 %192, 0
  call void @dma_unmap_page_attrs(ptr noundef %93, i32 noundef %152, i32 noundef %126, i32 noundef 1, i32 noundef 0) #11
  br label %194

194:                                              ; preds = %167, %154
  %195 = phi i1 [ false, %154 ], [ %193, %167 ]
  call void @kfree(ptr noundef nonnull %127) #11
  br label %196

196:                                              ; preds = %194, %129, %124, %114, %110
  %197 = phi i1 [ false, %110 ], [ false, %114 ], [ false, %124 ], [ %195, %194 ], [ false, %129 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  %198 = zext i1 %197 to i32
  br label %506

199:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store i64 0, ptr %5, align 8, !annotation !8
  %200 = load ptr, ptr %9, align 4
  %201 = getelementptr inbounds %struct.pci_dev, ptr %200, i32 0, i32 44
  %202 = getelementptr i8, ptr %8, i32 44
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr i8, ptr %8, i32 -24
  %205 = load i32, ptr %204, align 4
  %206 = inttoptr i32 %2 to ptr
  %207 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %206, i32 8, i32 -1090519040) #13, !srcloc !17
  %208 = extractvalue { i32, i32 } %207, 0
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %218, !prof !18

210:                                              ; preds = %199
  %211 = tail call ptr @llvm.thread.pointer() #11
  %212 = getelementptr inbounds %struct.thread_info, ptr %211, i32 0, i32 3
  %213 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %212) #14, !srcloc !19
  %214 = and i32 %213, -13
  %215 = or i32 %214, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %215) #11, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %216 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %206, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %213) #11, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %222, label %218, !prof !18

218:                                              ; preds = %210, %199
  %219 = phi i32 [ %216, %210 ], [ 8, %199 ]
  %220 = sub i32 8, %219
  %221 = getelementptr i8, ptr %5, i32 %220
  call void @llvm.memset.p0.i32(ptr align 1 %221, i8 0, i32 %219, i1 false) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.20) #12
  br label %301

222:                                              ; preds = %210
  %223 = load i32, ptr %5, align 8
  %224 = xor i32 %203, -1
  %225 = icmp ugt i32 %223, %224
  br i1 %225, label %301, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.pci_endpoint_test_xfer_param, ptr %5, i32 0, i32 1
  %228 = load i8, ptr %227, align 4
  %229 = and i8 %228, 1
  %230 = zext i8 %229 to i32
  %231 = icmp ugt i32 %205, 2
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.21) #12
  br label %301

233:                                              ; preds = %226
  %234 = add i32 %223, %203
  %235 = call noalias align 64 ptr @__kmalloc(i32 noundef %234, i32 noundef 3520) #15
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.28) #12
  br label %301

238:                                              ; preds = %233
  %239 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %235) #11
  %240 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %241 = xor i1 %240, true
  %242 = select i1 %239, i1 %241, i1 false
  br i1 %242, label %243, label %252, !prof !10

243:                                              ; preds = %238
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %244 = call ptr @dev_driver_string(ptr noundef %201) #11
  %245 = getelementptr inbounds %struct.pci_dev, ptr %200, i32 0, i32 44, i32 3
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = load ptr, ptr %201, align 4
  br label %250

250:                                              ; preds = %248, %243
  %251 = phi ptr [ %249, %248 ], [ %246, %243 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %244, ptr noundef %251) #11
  br label %252

252:                                              ; preds = %250, %238
  br i1 %239, label %262, label %253

253:                                              ; preds = %252
  %254 = load ptr, ptr @mem_map, align 4
  %255 = ptrtoint ptr %235 to i32
  %256 = add i32 %255, 1073741824
  %257 = lshr i32 %256, 12
  %258 = getelementptr %struct.page, ptr %254, i32 %257
  %259 = and i32 %255, 4032
  %260 = call i32 @dma_map_page_attrs(ptr noundef %201, ptr noundef %258, i32 noundef %259, i32 noundef %234, i32 noundef 2, i32 noundef 0) #11
  %261 = icmp eq i32 %260, -1
  br i1 %261, label %262, label %263

262:                                              ; preds = %253, %252
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.23) #12
  br label %299

263:                                              ; preds = %253
  %264 = icmp eq i32 %203, 0
  br i1 %264, label %275, label %265

265:                                              ; preds = %263
  %266 = add i32 %203, -1
  %267 = and i32 %260, %266
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %275, label %269

269:                                              ; preds = %265
  %270 = add i32 %260, %266
  %271 = sub i32 0, %203
  %272 = and i32 %270, %271
  %273 = sub i32 %272, %260
  %274 = getelementptr i8, ptr %235, i32 %273
  br label %275

275:                                              ; preds = %269, %265, %263
  %276 = phi ptr [ %274, %269 ], [ %235, %265 ], [ %235, %263 ]
  %277 = phi i32 [ %272, %269 ], [ %260, %265 ], [ %260, %263 ]
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %278 = getelementptr i8, ptr %8, i32 -76
  %279 = load ptr, ptr %278, align 4
  %280 = getelementptr i8, ptr %279, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 %277) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %281 = load ptr, ptr %278, align 4
  %282 = getelementptr i8, ptr %281, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 0) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %283 = load ptr, ptr %278, align 4
  %284 = getelementptr i8, ptr %283, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 %223) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %285 = load ptr, ptr %278, align 4
  %286 = getelementptr i8, ptr %285, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %286, i32 %230) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %287 = load ptr, ptr %278, align 4
  %288 = getelementptr i8, ptr %287, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 %205) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %289 = load ptr, ptr %278, align 4
  %290 = getelementptr i8, ptr %289, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 1) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %291 = load ptr, ptr %278, align 4
  %292 = getelementptr i8, ptr %291, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %292, i32 16) #11, !srcloc !14
  %293 = getelementptr i8, ptr %8, i32 -48
  call void @wait_for_completion(ptr noundef %293) #11
  call void @dma_unmap_page_attrs(ptr noundef %201, i32 noundef %260, i32 noundef %234, i32 noundef 2, i32 noundef 0) #11
  %294 = call i32 @crc32_le(i32 noundef -1, ptr noundef %276, i32 noundef %223) #16
  %295 = load ptr, ptr %278, align 4
  %296 = getelementptr i8, ptr %295, i32 32
  %297 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %296) #11, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %298 = icmp eq i32 %294, %297
  br label %299

299:                                              ; preds = %275, %262
  %300 = phi i1 [ false, %262 ], [ %298, %275 ]
  call void @kfree(ptr noundef nonnull %235) #11
  br label %301

301:                                              ; preds = %299, %237, %232, %222, %218
  %302 = phi i1 [ false, %218 ], [ false, %222 ], [ false, %232 ], [ %300, %299 ], [ false, %237 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %303 = zext i1 %302 to i32
  br label %506

304:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store i64 0, ptr %4, align 8, !annotation !8
  %305 = load ptr, ptr %9, align 4
  %306 = getelementptr inbounds %struct.pci_dev, ptr %305, i32 0, i32 44
  %307 = getelementptr i8, ptr %8, i32 44
  %308 = load i32, ptr %307, align 4
  %309 = getelementptr i8, ptr %8, i32 -24
  %310 = load i32, ptr %309, align 4
  %311 = inttoptr i32 %2 to ptr
  %312 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %311, i32 8, i32 -1090519040) #13, !srcloc !17
  %313 = extractvalue { i32, i32 } %312, 0
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %323, !prof !18

315:                                              ; preds = %304
  %316 = tail call ptr @llvm.thread.pointer() #11
  %317 = getelementptr inbounds %struct.thread_info, ptr %316, i32 0, i32 3
  %318 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %317) #14, !srcloc !19
  %319 = and i32 %318, -13
  %320 = or i32 %319, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %320) #11, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %321 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %311, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %318) #11, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !21
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %327, label %323, !prof !18

323:                                              ; preds = %315, %304
  %324 = phi i32 [ %321, %315 ], [ 8, %304 ]
  %325 = sub i32 8, %324
  %326 = getelementptr i8, ptr %4, i32 %325
  call void @llvm.memset.p0.i32(ptr align 1 %326, i8 0, i32 %324, i1 false) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %306, ptr noundef nonnull @.str.20) #12
  br label %454

327:                                              ; preds = %315
  %328 = load i32, ptr %4, align 8
  %329 = xor i32 %308, -1
  %330 = icmp ugt i32 %328, %329
  br i1 %330, label %454, label %331

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.pci_endpoint_test_xfer_param, ptr %4, i32 0, i32 1
  %333 = load i8, ptr %332, align 4
  %334 = and i8 %333, 1
  %335 = zext i8 %334 to i32
  %336 = icmp ugt i32 %310, 2
  br i1 %336, label %337, label %338

337:                                              ; preds = %331
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %306, ptr noundef nonnull @.str.21) #12
  br label %454

338:                                              ; preds = %331
  %339 = add i32 %328, %308
  %340 = call noalias align 64 ptr @__kmalloc(i32 noundef %339, i32 noundef 3520) #15
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %306, ptr noundef nonnull @.str.29) #12
  br label %454

343:                                              ; preds = %338
  call void @get_random_bytes(ptr noundef nonnull %340, i32 noundef %339) #11
  %344 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %340) #11
  %345 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %346 = xor i1 %345, true
  %347 = select i1 %344, i1 %346, i1 false
  br i1 %347, label %348, label %357, !prof !10

348:                                              ; preds = %343
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %349 = call ptr @dev_driver_string(ptr noundef %306) #11
  %350 = getelementptr inbounds %struct.pci_dev, ptr %305, i32 0, i32 44, i32 3
  %351 = load ptr, ptr %350, align 4
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %355

353:                                              ; preds = %348
  %354 = load ptr, ptr %306, align 4
  br label %355

355:                                              ; preds = %353, %348
  %356 = phi ptr [ %354, %353 ], [ %351, %348 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %349, ptr noundef %356) #11
  br label %357

357:                                              ; preds = %355, %343
  br i1 %344, label %367, label %358

358:                                              ; preds = %357
  %359 = load ptr, ptr @mem_map, align 4
  %360 = ptrtoint ptr %340 to i32
  %361 = add i32 %360, 1073741824
  %362 = lshr i32 %361, 12
  %363 = getelementptr %struct.page, ptr %359, i32 %362
  %364 = and i32 %360, 4032
  %365 = call i32 @dma_map_page_attrs(ptr noundef %306, ptr noundef %363, i32 noundef %364, i32 noundef %339, i32 noundef 1, i32 noundef 0) #11
  %366 = icmp eq i32 %365, -1
  br i1 %366, label %367, label %368

367:                                              ; preds = %358, %357
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %306, ptr noundef nonnull @.str.23) #12
  br label %452

368:                                              ; preds = %358
  %369 = icmp eq i32 %308, 0
  br i1 %369, label %380, label %370

370:                                              ; preds = %368
  %371 = add i32 %308, -1
  %372 = and i32 %365, %371
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %380, label %374

374:                                              ; preds = %370
  %375 = add i32 %365, %371
  %376 = sub i32 0, %308
  %377 = and i32 %375, %376
  %378 = sub i32 %377, %365
  %379 = getelementptr i8, ptr %340, i32 %378
  br label %380

380:                                              ; preds = %374, %370, %368
  %381 = phi ptr [ %379, %374 ], [ %340, %370 ], [ %340, %368 ]
  %382 = phi i32 [ %377, %374 ], [ %365, %370 ], [ %365, %368 ]
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %383 = getelementptr i8, ptr %8, i32 -76
  %384 = load ptr, ptr %383, align 4
  %385 = getelementptr i8, ptr %384, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %385, i32 %382) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %386 = load ptr, ptr %383, align 4
  %387 = getelementptr i8, ptr %386, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %387, i32 0) #11, !srcloc !14
  %388 = call i32 @crc32_le(i32 noundef -1, ptr noundef %381, i32 noundef %328) #16
  %389 = call noalias align 64 ptr @__kmalloc(i32 noundef %339, i32 noundef 3520) #15
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %392

391:                                              ; preds = %380
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %306, ptr noundef nonnull @.str.28) #12
  br label %450

392:                                              ; preds = %380
  %393 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %389) #11
  %394 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %395 = xor i1 %394, true
  %396 = select i1 %393, i1 %395, i1 false
  br i1 %396, label %397, label %406, !prof !10

397:                                              ; preds = %392
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %398 = call ptr @dev_driver_string(ptr noundef %306) #11
  %399 = getelementptr inbounds %struct.pci_dev, ptr %305, i32 0, i32 44, i32 3
  %400 = load ptr, ptr %399, align 4
  %401 = icmp eq ptr %400, null
  br i1 %401, label %402, label %404

402:                                              ; preds = %397
  %403 = load ptr, ptr %306, align 4
  br label %404

404:                                              ; preds = %402, %397
  %405 = phi ptr [ %403, %402 ], [ %400, %397 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %398, ptr noundef %405) #11
  br label %406

406:                                              ; preds = %404, %392
  br i1 %393, label %416, label %407

407:                                              ; preds = %406
  %408 = load ptr, ptr @mem_map, align 4
  %409 = ptrtoint ptr %389 to i32
  %410 = add i32 %409, 1073741824
  %411 = lshr i32 %410, 12
  %412 = getelementptr %struct.page, ptr %408, i32 %411
  %413 = and i32 %409, 4032
  %414 = call i32 @dma_map_page_attrs(ptr noundef %306, ptr noundef %412, i32 noundef %413, i32 noundef %339, i32 noundef 2, i32 noundef 0) #11
  %415 = icmp eq i32 %414, -1
  br i1 %415, label %416, label %417

416:                                              ; preds = %407, %406
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %306, ptr noundef nonnull @.str.30) #12
  br label %448

417:                                              ; preds = %407
  br i1 %369, label %428, label %418

418:                                              ; preds = %417
  %419 = add i32 %308, -1
  %420 = and i32 %414, %419
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %428, label %422

422:                                              ; preds = %418
  %423 = add i32 %414, %419
  %424 = sub i32 0, %308
  %425 = and i32 %423, %424
  %426 = sub i32 %425, %414
  %427 = getelementptr i8, ptr %389, i32 %426
  br label %428

428:                                              ; preds = %422, %418, %417
  %429 = phi ptr [ %427, %422 ], [ %389, %418 ], [ %389, %417 ]
  %430 = phi i32 [ %425, %422 ], [ %414, %418 ], [ %414, %417 ]
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %431 = load ptr, ptr %383, align 4
  %432 = getelementptr i8, ptr %431, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %432, i32 %430) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %433 = load ptr, ptr %383, align 4
  %434 = getelementptr i8, ptr %433, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %434, i32 0) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %435 = load ptr, ptr %383, align 4
  %436 = getelementptr i8, ptr %435, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %436, i32 %328) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %437 = load ptr, ptr %383, align 4
  %438 = getelementptr i8, ptr %437, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %438, i32 %335) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %439 = load ptr, ptr %383, align 4
  %440 = getelementptr i8, ptr %439, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %440, i32 %310) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %441 = load ptr, ptr %383, align 4
  %442 = getelementptr i8, ptr %441, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %442, i32 1) #11, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  call void @arm_heavy_mb() #11
  %443 = load ptr, ptr %383, align 4
  %444 = getelementptr i8, ptr %443, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %444, i32 32) #11, !srcloc !14
  %445 = getelementptr i8, ptr %8, i32 -48
  call void @wait_for_completion(ptr noundef %445) #11
  call void @dma_unmap_page_attrs(ptr noundef %306, i32 noundef %414, i32 noundef %339, i32 noundef 2, i32 noundef 0) #11
  %446 = call i32 @crc32_le(i32 noundef -1, ptr noundef %429, i32 noundef %328) #16
  %447 = icmp eq i32 %446, %388
  br label %448

448:                                              ; preds = %428, %416
  %449 = phi i1 [ false, %416 ], [ %447, %428 ]
  call void @kfree(ptr noundef nonnull %389) #11
  br label %450

450:                                              ; preds = %448, %391
  %451 = phi i1 [ %449, %448 ], [ false, %391 ]
  call void @dma_unmap_page_attrs(ptr noundef %306, i32 noundef %365, i32 noundef %339, i32 noundef 1, i32 noundef 0) #11
  br label %452

452:                                              ; preds = %450, %367
  %453 = phi i1 [ false, %367 ], [ %451, %450 ]
  call void @kfree(ptr noundef nonnull %340) #11
  br label %454

454:                                              ; preds = %452, %342, %337, %327, %323
  %455 = phi i1 [ false, %323 ], [ false, %327 ], [ false, %337 ], [ %453, %452 ], [ false, %342 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %456 = zext i1 %455 to i32
  br label %506

457:                                              ; preds = %3
  %458 = icmp ugt i32 %2, 2
  br i1 %458, label %459, label %462

459:                                              ; preds = %457
  %460 = load ptr, ptr %9, align 4
  %461 = getelementptr inbounds %struct.pci_dev, ptr %460, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %461, ptr noundef nonnull @.str.21) #12
  br label %506

462:                                              ; preds = %457
  %463 = getelementptr i8, ptr %8, i32 -24
  %464 = load i32, ptr %463, align 4
  %465 = icmp eq i32 %464, %2
  br i1 %465, label %506, label %466

466:                                              ; preds = %462
  %467 = load ptr, ptr %9, align 4
  %468 = getelementptr inbounds %struct.pci_dev, ptr %467, i32 0, i32 44
  %469 = getelementptr i8, ptr %8, i32 -28
  %470 = load i32, ptr %469, align 4
  %471 = icmp sgt i32 %470, 0
  br i1 %471, label %472, label %480

472:                                              ; preds = %472, %466
  %473 = phi i32 [ %475, %472 ], [ 0, %466 ]
  %474 = tail call i32 @pci_irq_vector(ptr noundef %467, i32 noundef %473) #11
  tail call void @devm_free_irq(ptr noundef %468, i32 noundef %474, ptr noundef %9) #11
  %475 = add nuw nsw i32 %473, 1
  %476 = load i32, ptr %469, align 4
  %477 = icmp slt i32 %475, %476
  br i1 %477, label %472, label %478

478:                                              ; preds = %472
  %479 = load ptr, ptr %9, align 4
  br label %480

480:                                              ; preds = %478, %466
  %481 = phi ptr [ %479, %478 ], [ %467, %466 ]
  store i32 0, ptr %469, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %481) #11
  store i32 -1, ptr %463, align 4
  %482 = tail call fastcc zeroext i1 @pci_endpoint_test_alloc_irq_vectors(ptr noundef %9, i32 noundef %2) #11
  br i1 %482, label %483, label %485

483:                                              ; preds = %480
  %484 = tail call fastcc zeroext i1 @pci_endpoint_test_request_irq(ptr noundef %9) #11
  br i1 %484, label %506, label %485

485:                                              ; preds = %483, %480
  %486 = load ptr, ptr %9, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %486) #11
  store i32 -1, ptr %463, align 4
  br label %506

487:                                              ; preds = %3
  %488 = load i32, ptr @irq_type, align 4
  br label %506

489:                                              ; preds = %3
  %490 = load ptr, ptr %9, align 4
  %491 = getelementptr inbounds %struct.pci_dev, ptr %490, i32 0, i32 44
  %492 = getelementptr i8, ptr %8, i32 -28
  %493 = load i32, ptr %492, align 4
  %494 = icmp sgt i32 %493, 0
  br i1 %494, label %495, label %503

495:                                              ; preds = %495, %489
  %496 = phi i32 [ %498, %495 ], [ 0, %489 ]
  %497 = tail call i32 @pci_irq_vector(ptr noundef %490, i32 noundef %496) #11
  tail call void @devm_free_irq(ptr noundef %491, i32 noundef %497, ptr noundef %9) #11
  %498 = add nuw nsw i32 %496, 1
  %499 = load i32, ptr %492, align 4
  %500 = icmp slt i32 %498, %499
  br i1 %500, label %495, label %501

501:                                              ; preds = %495
  %502 = load ptr, ptr %9, align 4
  br label %503

503:                                              ; preds = %501, %489
  %504 = phi ptr [ %502, %501 ], [ %490, %489 ]
  store i32 0, ptr %492, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %504) #11
  %505 = getelementptr i8, ptr %8, i32 -24
  store i32 -1, ptr %505, align 4
  br label %506

506:                                              ; preds = %503, %487, %485, %483, %462, %459, %454, %301, %196, %84, %68, %56, %50, %47, %34, %20, %14, %12, %3
  %507 = phi i32 [ -22, %3 ], [ 1, %503 ], [ %488, %487 ], [ %456, %454 ], [ %303, %301 ], [ %198, %196 ], [ %67, %56 ], [ -22, %12 ], [ -22, %14 ], [ 0, %20 ], [ 1, %34 ], [ 0, %68 ], [ %90, %84 ], [ 0, %459 ], [ 0, %485 ], [ 1, %462 ], [ 1, %483 ], [ 1, %47 ], [ 0, %50 ]
  call void @mutex_unlock(ptr noundef %11) #11
  ret i32 %507
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readonly willreturn }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 3885309}
!12 = !{i64 2153217910}
!13 = !{i64 2153218268}
!14 = !{i64 3884891}
!15 = !{i64 2153219286}
!16 = !{i64 2153218924}
!17 = !{i64 2150998502, i64 2150998527}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 3494614}
!20 = !{i64 3494811}
!21 = !{i64 2150980090}
