; ModuleID = '/llk/IR/drivers/pci/endpoint/functions/pci-epf-test.c_pt.bc'
source_filename = "../drivers/pci/endpoint/functions/pci-epf-test.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_epf_driver = type { ptr, ptr, %struct.device_driver, ptr, ptr, %struct.list_head, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.pci_epf_ops = type { ptr, ptr, ptr }
%struct.pci_epf_device_id = type { [20 x i8], i32 }
%struct.pci_epf_header = type { i16, i16, i8, i8, i8, i8, i8, i16, i16, i32 }
%struct.lock_class_key = type {}
%struct.pci_epf = type { %struct.device, ptr, ptr, [6 x %struct.pci_epf_bar], i8, i16, i8, i8, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, %struct.mutex, ptr, %struct.list_head, [6 x %struct.pci_epf_bar], i8, ptr, i32, i32, i32, %struct.list_head }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_epf_bar = type { i32, ptr, i32, i32, i32 }
%struct.pci_epf_test = type { [6 x ptr], ptr, i32, i32, %struct.delayed_work, ptr, %struct.completion, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.pci_epf_test_reg = type <{ i32, i32, i32, i64, i64, i32, i32, i32, i32, i32 }>
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.pci_epc_features = type { i8, i8, i8, [6 x i64], i32 }
%struct.pci_epc = type { %struct.device, %struct.list_head, ptr, ptr, ptr, i32, i8, ptr, ptr, %struct.mutex, i32, %struct.atomic_notifier_head }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@__UNIQUE_ID_description230 = internal constant [32 x i8] c"description=PCI EPF TEST DRIVER\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [46 x i8] c"author=Kishon Vijay Abraham I <kishon@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"kpcitest\00", align 1
@kpcitest_workqueue = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"\013Failed to allocate the kpcitest work queue\0A\00", align 1
@test_driver = internal global %struct.pci_epf_driver { ptr @pci_epf_test_probe, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ops, ptr @__this_module, %struct.list_head zeroinitializer, ptr @pci_epf_test_ids }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.2 = private unnamed_addr constant [49 x i8] c"\013Failed to register pci epf test driver --> %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"pci_epf_test\00", align 1
@ops = internal global %struct.pci_epf_ops { ptr @pci_epf_test_bind, ptr @pci_epf_test_unbind, ptr null }, align 4
@pci_epf_test_ids = internal constant [2 x %struct.pci_epf_device_id] [%struct.pci_epf_device_id { [20 x i8] c"pci_epf_test\00\00\00\00\00\00\00\00", i32 0 }, %struct.pci_epf_device_id zeroinitializer], align 4
@test_header = internal global %struct.pci_epf_header { i16 -1, i16 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i16 0, i16 0, i32 1 }, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to detect IRQ type\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to allocate address\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to map address\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Cannot transfer data using DMA\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Failed to map source buffer addr\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Data transfer failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = private unnamed_addr constant [28 x i8] c"Invalid DMA memcpy channel\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Failed to prepare DMA memcpy\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Failed to do DMA tx_submit %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"DMA wait_for_completion_timeout\0A\00", align 1
@.str.17 = private unnamed_addr constant [77 x i8] c"\016\0A%s => Size: %llu bytes\09 DMA: %s\09 Time: %llu.%09u seconds\09Rate: %llu KB/s\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Failed to raise IRQ, unknown type\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Failed to map destination buffer addr\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Failed to allocate source address\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"Failed to map source address\0A\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"Failed to allocate destination address\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"Failed to map destination address\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@pci_epf_test_bind.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"drivers/pci/endpoint/functions/pci-epf-test.c\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"epc_features not implemented\0A\00", align 1
@bar_size = internal unnamed_addr global [6 x i32] [i32 512, i32 512, i32 1024, i32 16384, i32 131072, i32 1048576], align 4
@.str.30 = private unnamed_addr constant [36 x i8] c"Failed to allocated register space\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"Failed to allocate space for BAR%d\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"Configuration header write failed\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"MSI configuration failed\0A\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"MSI-X configuration failed\0A\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"Failed to set BAR%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"Failed to get DMA channel\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"Invalid EPF test notifier event\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_license232], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 0) #9
  store ptr %1, ptr @kpcitest_workqueue, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %11

5:                                                ; preds = %0
  %6 = tail call i32 @__pci_epf_register_driver(ptr noundef nonnull @test_driver, ptr noundef nonnull @__this_module) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @kpcitest_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %9) #9
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %6) #10
  br label %11

11:                                               ; preds = %8, %5, %3
  %12 = phi i32 [ %6, %8 ], [ -12, %3 ], [ 0, %5 ]
  ret i32 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  %1 = load ptr, ptr @kpcitest_workqueue, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @destroy_workqueue(ptr noundef nonnull %1) #9
  br label %4

4:                                                ; preds = %3, %0
  tail call void @pci_epf_unregister_driver(ptr noundef nonnull @test_driver) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_epf_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_test_probe(ptr noundef %0) #4 {
  %2 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 108, i32 noundef 3520) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 2
  store ptr @test_header, ptr %5, align 4
  %6 = getelementptr inbounds %struct.pci_epf_test, ptr %2, i32 0, i32 1
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.pci_epf_test, ptr %2, i32 0, i32 4
  store i32 -32, ptr %7, align 4
  %8 = getelementptr inbounds %struct.pci_epf_test, ptr %2, i32 0, i32 4, i32 0, i32 1
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.pci_epf_test, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.pci_epf_test, ptr %2, i32 0, i32 4, i32 0, i32 2
  store ptr @pci_epf_test_cmd_handler, ptr %10, align 4
  %11 = getelementptr inbounds %struct.pci_epf_test, ptr %2, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %11, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #9
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %2, ptr %12, align 8
  br label %13

13:                                               ; preds = %4, %1
  %14 = phi i32 [ 0, %4 ], [ -12, %1 ]
  ret i32 %14
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_epf_test_cmd_handler(ptr noundef %0) #4 {
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec64, align 8
  %10 = alloca %struct.timespec64, align 8
  %11 = alloca %struct.timespec64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timespec64, align 8
  %14 = alloca %struct.timespec64, align 8
  %15 = getelementptr i8, ptr %0, i32 -36
  %16 = getelementptr i8, ptr %0, i32 -12
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.pci_epf, ptr %17, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %0, i32 -8
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr [6 x ptr], ptr %15, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %565, label %27

27:                                               ; preds = %1
  store i32 0, ptr %24, align 1
  %28 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %23, i32 0, i32 2
  store i32 0, ptr %28, align 1
  %29 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %23, i32 0, i32 7
  %30 = load i32, ptr %29, align 1
  %31 = icmp ugt i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.4) #10
  br label %565

33:                                               ; preds = %27
  %34 = and i32 %25, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  store i32 64, ptr %28, align 1
  %37 = getelementptr inbounds %struct.pci_epf, ptr %17, i32 0, i32 6
  %38 = load i8, ptr %37, align 4
  %39 = getelementptr inbounds %struct.pci_epf, ptr %17, i32 0, i32 7
  %40 = load i8, ptr %39, align 1
  %41 = tail call i32 @pci_epc_raise_irq(ptr noundef %19, i8 noundef zeroext %38, i8 noundef zeroext %40, i32 noundef 1, i16 noundef zeroext 0) #9
  br label %565

42:                                               ; preds = %33
  %43 = and i32 %25, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %207, label %45

45:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  store i32 0, ptr %12, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i32 16, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i32 16, i1 false) #9, !annotation !8
  %46 = load ptr, ptr %16, align 4
  %47 = getelementptr inbounds %struct.pci_epf, ptr %46, i32 0, i32 8
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load i32, ptr %20, align 4
  %52 = getelementptr [6 x ptr], ptr %15, i32 0, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %53, i32 0, i32 5
  %55 = load i32, ptr %54, align 1
  %56 = call ptr @pci_epc_mem_alloc_addr(ptr noundef %48, ptr noundef nonnull %12, i32 noundef %55) #9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.5) #10
  %59 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %53, i32 0, i32 2
  store i32 256, ptr %59, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  br label %198

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.pci_epf, ptr %46, i32 0, i32 6
  %62 = load i8, ptr %61, align 4
  %63 = getelementptr inbounds %struct.pci_epf, ptr %46, i32 0, i32 7
  %64 = load i8, ptr %63, align 1
  %65 = load i32, ptr %12, align 4
  %66 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %53, i32 0, i32 4
  %67 = load i64, ptr %66, align 1
  %68 = load i32, ptr %54, align 1
  %69 = call i32 @pci_epc_map_addr(ptr noundef %48, i8 noundef zeroext %62, i8 noundef zeroext %64, i32 noundef %65, i64 noundef %67, i32 noundef %68) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %60
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.6) #10
  %72 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %53, i32 0, i32 2
  store i32 256, ptr %72, align 1
  br label %192

73:                                               ; preds = %60
  %74 = load i32, ptr %54, align 1
  %75 = call noalias align 64 ptr @__kmalloc(i32 noundef %74, i32 noundef 3520) #11
  %76 = icmp eq ptr %75, null
  br i1 %76, label %187, label %77

77:                                               ; preds = %73
  %78 = load i32, ptr %54, align 1
  call void @get_random_bytes(ptr noundef nonnull %75, i32 noundef %78) #9
  %79 = load i32, ptr %54, align 1
  %80 = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %75, i32 noundef %79) #12
  %81 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %53, i32 0, i32 6
  store i32 %80, ptr %81, align 1
  %82 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %53, i32 0, i32 9
  %83 = load i32, ptr %82, align 1
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %124, label %86

86:                                               ; preds = %77
  %87 = getelementptr i8, ptr %0, i32 64
  %88 = load i8, ptr %87, align 4, !range !9
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.7) #10
  br label %187

91:                                               ; preds = %86
  %92 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %75) #9
  %93 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %94 = xor i1 %93, true
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %105, !prof !10

96:                                               ; preds = %91
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %97 = call ptr @dev_driver_string(ptr noundef %50) #9
  %98 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load ptr, ptr %50, align 4
  br label %103

103:                                              ; preds = %101, %96
  %104 = phi ptr [ %102, %101 ], [ %99, %96 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %97, ptr noundef %104) #9
  br label %105

105:                                              ; preds = %103, %91
  br i1 %92, label %115, label %106

106:                                              ; preds = %105
  %107 = load ptr, ptr @mem_map, align 4
  %108 = ptrtoint ptr %75 to i32
  %109 = add i32 %108, 1073741824
  %110 = lshr i32 %109, 12
  %111 = getelementptr %struct.page, ptr %107, i32 %110
  %112 = and i32 %108, 4032
  %113 = call i32 @dma_map_page_attrs(ptr noundef %50, ptr noundef %111, i32 noundef %112, i32 noundef %79, i32 noundef 1, i32 noundef 0) #9
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %106, %105
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.8) #10
  br label %185

116:                                              ; preds = %106
  call void @ktime_get_ts64(ptr noundef nonnull %13) #9
  %117 = load i32, ptr %12, align 4
  %118 = load i32, ptr %54, align 1
  %119 = call fastcc i32 @pci_epf_test_data_transfer(ptr noundef %15, i32 noundef %117, i32 noundef %113, i32 noundef %118) #9
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.9) #10
  br label %122

122:                                              ; preds = %121, %116
  call void @ktime_get_ts64(ptr noundef nonnull %14) #9
  %123 = load i32, ptr %54, align 1
  call void @dma_unmap_page_attrs(ptr noundef %50, i32 noundef %113, i32 noundef %123, i32 noundef 1, i32 noundef 0) #9
  br label %126

124:                                              ; preds = %77
  call void @ktime_get_ts64(ptr noundef nonnull %13) #9
  %125 = load i32, ptr %54, align 1
  call void @mmiocpy(ptr noundef nonnull %56, ptr noundef nonnull %75, i32 noundef %125) #9
  call void @ktime_get_ts64(ptr noundef nonnull %14) #9
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %119, %122 ], [ 0, %124 ]
  %128 = load i32, ptr %54, align 1
  %129 = zext i32 %128 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9
  %130 = load i64, ptr %14, align 8
  %131 = getelementptr inbounds [2 x i64], ptr %14, i32 0, i32 1
  %132 = load i64, ptr %131, align 8
  %133 = load i64, ptr %13, align 8
  %134 = getelementptr inbounds [2 x i64], ptr %13, i32 0, i32 1
  %135 = load i64, ptr %134, align 8
  %136 = trunc i64 %132 to i32
  %137 = trunc i64 %135 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i32 16, i1 false) #9, !alias.scope !11, !annotation !8
  %138 = sub i64 %130, %133
  %139 = sub i32 %136, %137
  %140 = sext i32 %139 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %11, i64 noundef %138, i64 noundef %140) #9
  %141 = load i64, ptr %11, align 8
  %142 = getelementptr inbounds i8, ptr %11, i32 8
  %143 = load i32, ptr %142, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9
  %144 = icmp sgt i64 %141, 9223372035
  br i1 %144, label %147, label %145

145:                                              ; preds = %126
  %146 = icmp slt i64 %141, -9223372035
  br i1 %146, label %147, label %150

147:                                              ; preds = %145, %126
  %148 = phi i64 [ -9223372036854775808, %145 ], [ 9223372036854775807, %126 ]
  %149 = mul nuw nsw i64 %129, 1000000000
  br label %156

150:                                              ; preds = %145
  %151 = mul nsw i64 %141, 1000000000
  %152 = sext i32 %143 to i64
  %153 = add i64 %151, %152
  %154 = mul nuw nsw i64 %129, 1000000000
  %155 = icmp ugt i64 %153, 4294967295
  br i1 %155, label %156, label %165

156:                                              ; preds = %150, %147
  %157 = phi i64 [ %153, %150 ], [ %148, %147 ]
  %158 = phi i64 [ %154, %150 ], [ %149, %147 ]
  br label %159

159:                                              ; preds = %159, %156
  %160 = phi i64 [ %163, %159 ], [ %157, %156 ]
  %161 = phi i64 [ %162, %159 ], [ %158, %156 ]
  %162 = lshr i64 %161, 1
  %163 = lshr i64 %160, 1
  %164 = icmp ugt i64 %160, 8589934591
  br i1 %164, label %159, label %165

165:                                              ; preds = %159, %150
  %166 = phi i64 [ %154, %150 ], [ %162, %159 ]
  %167 = phi i64 [ %153, %150 ], [ %163, %159 ]
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %184, label %169

169:                                              ; preds = %165
  %170 = trunc i64 %167 to i32
  %171 = icmp ult i64 %166, 4294967296
  br i1 %171, label %172, label %176, !prof !14

172:                                              ; preds = %169
  %173 = trunc i64 %166 to i32
  %174 = udiv i32 %173, %170
  %175 = zext i32 %174 to i64
  br label %179

176:                                              ; preds = %169
  %177 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %170, i64 %166) #13, !srcloc !15
  %178 = extractvalue { i64, i64 } %177, 1
  br label %179

179:                                              ; preds = %176, %172
  %180 = phi i64 [ %175, %172 ], [ %178, %176 ]
  %181 = select i1 %85, ptr @.str.19, ptr @.str.18
  %182 = lshr i64 %180, 10
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.10, i64 noundef %129, ptr noundef nonnull %181, i64 noundef %141, i32 noundef %143, i64 noundef %182) #10
  br label %184

184:                                              ; preds = %179, %165
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  br label %185

185:                                              ; preds = %184, %115
  %186 = phi i32 [ -12, %115 ], [ %127, %184 ]
  call void @kfree(ptr noundef nonnull %75) #9
  br label %187

187:                                              ; preds = %185, %90, %73
  %188 = phi i32 [ %186, %185 ], [ -22, %90 ], [ -12, %73 ]
  %189 = load i8, ptr %61, align 4
  %190 = load i8, ptr %63, align 1
  %191 = load i32, ptr %12, align 4
  call void @pci_epc_unmap_addr(ptr noundef %48, i8 noundef zeroext %189, i8 noundef zeroext %190, i32 noundef %191) #9
  br label %192

192:                                              ; preds = %187, %71
  %193 = phi i32 [ 1, %71 ], [ %188, %187 ]
  %194 = load i32, ptr %12, align 4
  %195 = load i32, ptr %54, align 1
  call void @pci_epc_mem_free_addr(ptr noundef %48, i32 noundef %194, ptr noundef nonnull %56, i32 noundef %195) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  %196 = icmp eq i32 %193, 0
  %197 = select i1 %196, i32 4, i32 8
  br label %198

198:                                              ; preds = %192, %58
  %199 = phi i32 [ 8, %58 ], [ %197, %192 ]
  %200 = load i32, ptr %28, align 1
  %201 = or i32 %200, %199
  store i32 %201, ptr %28, align 1
  %202 = load i32, ptr %29, align 1
  %203 = trunc i32 %202 to i8
  %204 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %23, i32 0, i32 8
  %205 = load i32, ptr %204, align 1
  %206 = trunc i32 %205 to i16
  call fastcc void @pci_epf_test_raise_irq(ptr noundef %15, i8 noundef zeroext %203, i16 noundef zeroext %206)
  br label %565

207:                                              ; preds = %42
  %208 = and i32 %25, 8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %375, label %210

210:                                              ; preds = %207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i32 16, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i32 16, i1 false) #9, !annotation !8
  %211 = load ptr, ptr %16, align 4
  %212 = getelementptr inbounds %struct.pci_epf, ptr %211, i32 0, i32 8
  %213 = load ptr, ptr %212, align 8
  %214 = getelementptr inbounds %struct.device, ptr %213, i32 0, i32 1
  %215 = load ptr, ptr %214, align 4
  %216 = load i32, ptr %20, align 4
  %217 = getelementptr [6 x ptr], ptr %15, i32 0, i32 %216
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %218, i32 0, i32 5
  %220 = load i32, ptr %219, align 1
  %221 = call ptr @pci_epc_mem_alloc_addr(ptr noundef %213, ptr noundef nonnull %8, i32 noundef %220) #9
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %210
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %211, ptr noundef nonnull @.str.5) #10
  %224 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %218, i32 0, i32 2
  store i32 128, ptr %224, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  br label %365

225:                                              ; preds = %210
  %226 = getelementptr inbounds %struct.pci_epf, ptr %211, i32 0, i32 6
  %227 = load i8, ptr %226, align 4
  %228 = getelementptr inbounds %struct.pci_epf, ptr %211, i32 0, i32 7
  %229 = load i8, ptr %228, align 1
  %230 = load i32, ptr %8, align 4
  %231 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %218, i32 0, i32 3
  %232 = load i64, ptr %231, align 1
  %233 = load i32, ptr %219, align 1
  %234 = call i32 @pci_epc_map_addr(ptr noundef %213, i8 noundef zeroext %227, i8 noundef zeroext %229, i32 noundef %230, i64 noundef %232, i32 noundef %233) #9
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %225
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %211, ptr noundef nonnull @.str.6) #10
  %237 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %218, i32 0, i32 2
  store i32 128, ptr %237, align 1
  br label %360

238:                                              ; preds = %225
  %239 = load i32, ptr %219, align 1
  %240 = call noalias align 64 ptr @__kmalloc(i32 noundef %239, i32 noundef 3520) #11
  %241 = icmp eq ptr %240, null
  br i1 %241, label %355, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %218, i32 0, i32 9
  %244 = load i32, ptr %243, align 1
  %245 = and i32 %244, 1
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %286, label %247

247:                                              ; preds = %242
  %248 = getelementptr i8, ptr %0, i32 64
  %249 = load i8, ptr %248, align 4, !range !9
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %247
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %211, ptr noundef nonnull @.str.7) #10
  br label %353

252:                                              ; preds = %247
  %253 = load i32, ptr %219, align 1
  %254 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %240) #9
  %255 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %256 = xor i1 %255, true
  %257 = select i1 %254, i1 %256, i1 false
  br i1 %257, label %258, label %267, !prof !10

258:                                              ; preds = %252
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %259 = call ptr @dev_driver_string(ptr noundef %215) #9
  %260 = getelementptr inbounds %struct.device, ptr %215, i32 0, i32 3
  %261 = load ptr, ptr %260, align 4
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %265

263:                                              ; preds = %258
  %264 = load ptr, ptr %215, align 4
  br label %265

265:                                              ; preds = %263, %258
  %266 = phi ptr [ %264, %263 ], [ %261, %258 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %259, ptr noundef %266) #9
  br label %267

267:                                              ; preds = %265, %252
  br i1 %254, label %277, label %268

268:                                              ; preds = %267
  %269 = load ptr, ptr @mem_map, align 4
  %270 = ptrtoint ptr %240 to i32
  %271 = add i32 %270, 1073741824
  %272 = lshr i32 %271, 12
  %273 = getelementptr %struct.page, ptr %269, i32 %272
  %274 = and i32 %270, 4032
  %275 = call i32 @dma_map_page_attrs(ptr noundef %215, ptr noundef %273, i32 noundef %274, i32 noundef %253, i32 noundef 2, i32 noundef 0) #9
  %276 = icmp eq i32 %275, -1
  br i1 %276, label %277, label %278

277:                                              ; preds = %268, %267
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %211, ptr noundef nonnull @.str.21) #10
  br label %353

278:                                              ; preds = %268
  call void @ktime_get_ts64(ptr noundef nonnull %9) #9
  %279 = load i32, ptr %8, align 4
  %280 = load i32, ptr %219, align 1
  %281 = call fastcc i32 @pci_epf_test_data_transfer(ptr noundef %15, i32 noundef %275, i32 noundef %279, i32 noundef %280) #9
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %278
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %211, ptr noundef nonnull @.str.9) #10
  br label %284

284:                                              ; preds = %283, %278
  call void @ktime_get_ts64(ptr noundef nonnull %10) #9
  %285 = load i32, ptr %219, align 1
  call void @dma_unmap_page_attrs(ptr noundef %215, i32 noundef %275, i32 noundef %285, i32 noundef 2, i32 noundef 0) #9
  br label %288

286:                                              ; preds = %242
  call void @ktime_get_ts64(ptr noundef nonnull %9) #9
  %287 = load i32, ptr %219, align 1
  call void @mmiocpy(ptr noundef nonnull %240, ptr noundef nonnull %221, i32 noundef %287) #9
  call void @ktime_get_ts64(ptr noundef nonnull %10) #9
  br label %288

288:                                              ; preds = %286, %284
  %289 = phi i32 [ %281, %284 ], [ 0, %286 ]
  %290 = load i32, ptr %219, align 1
  %291 = zext i32 %290 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  %292 = load i64, ptr %10, align 8
  %293 = getelementptr inbounds [2 x i64], ptr %10, i32 0, i32 1
  %294 = load i64, ptr %293, align 8
  %295 = load i64, ptr %9, align 8
  %296 = getelementptr inbounds [2 x i64], ptr %9, i32 0, i32 1
  %297 = load i64, ptr %296, align 8
  %298 = trunc i64 %294 to i32
  %299 = trunc i64 %297 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #9, !alias.scope !16, !annotation !8
  %300 = sub i64 %292, %295
  %301 = sub i32 %298, %299
  %302 = sext i32 %301 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %7, i64 noundef %300, i64 noundef %302) #9
  %303 = load i64, ptr %7, align 8
  %304 = getelementptr inbounds i8, ptr %7, i32 8
  %305 = load i32, ptr %304, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  %306 = icmp sgt i64 %303, 9223372035
  br i1 %306, label %309, label %307

307:                                              ; preds = %288
  %308 = icmp slt i64 %303, -9223372035
  br i1 %308, label %309, label %312

309:                                              ; preds = %307, %288
  %310 = phi i64 [ -9223372036854775808, %307 ], [ 9223372036854775807, %288 ]
  %311 = mul nuw nsw i64 %291, 1000000000
  br label %318

312:                                              ; preds = %307
  %313 = mul nsw i64 %303, 1000000000
  %314 = sext i32 %305 to i64
  %315 = add i64 %313, %314
  %316 = mul nuw nsw i64 %291, 1000000000
  %317 = icmp ugt i64 %315, 4294967295
  br i1 %317, label %318, label %327

318:                                              ; preds = %312, %309
  %319 = phi i64 [ %315, %312 ], [ %310, %309 ]
  %320 = phi i64 [ %316, %312 ], [ %311, %309 ]
  br label %321

321:                                              ; preds = %321, %318
  %322 = phi i64 [ %325, %321 ], [ %319, %318 ]
  %323 = phi i64 [ %324, %321 ], [ %320, %318 ]
  %324 = lshr i64 %323, 1
  %325 = lshr i64 %322, 1
  %326 = icmp ugt i64 %322, 8589934591
  br i1 %326, label %321, label %327

327:                                              ; preds = %321, %312
  %328 = phi i64 [ %316, %312 ], [ %324, %321 ]
  %329 = phi i64 [ %315, %312 ], [ %325, %321 ]
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %346, label %331

331:                                              ; preds = %327
  %332 = trunc i64 %329 to i32
  %333 = icmp ult i64 %328, 4294967296
  br i1 %333, label %334, label %338, !prof !14

334:                                              ; preds = %331
  %335 = trunc i64 %328 to i32
  %336 = udiv i32 %335, %332
  %337 = zext i32 %336 to i64
  br label %341

338:                                              ; preds = %331
  %339 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %332, i64 %328) #13, !srcloc !15
  %340 = extractvalue { i64, i64 } %339, 1
  br label %341

341:                                              ; preds = %338, %334
  %342 = phi i64 [ %337, %334 ], [ %340, %338 ]
  %343 = select i1 %246, ptr @.str.19, ptr @.str.18
  %344 = lshr i64 %342, 10
  %345 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.22, i64 noundef %291, ptr noundef nonnull %343, i64 noundef %303, i32 noundef %305, i64 noundef %344) #10
  br label %346

346:                                              ; preds = %341, %327
  %347 = load i32, ptr %219, align 1
  %348 = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %240, i32 noundef %347) #12
  %349 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %218, i32 0, i32 6
  %350 = load i32, ptr %349, align 1
  %351 = icmp eq i32 %348, %350
  %352 = select i1 %351, i32 %289, i32 -5
  br label %353

353:                                              ; preds = %346, %277, %251
  %354 = phi i32 [ -12, %277 ], [ -22, %251 ], [ %352, %346 ]
  call void @kfree(ptr noundef nonnull %240) #9
  br label %355

355:                                              ; preds = %353, %238
  %356 = phi i32 [ %354, %353 ], [ -12, %238 ]
  %357 = load i8, ptr %226, align 4
  %358 = load i8, ptr %228, align 1
  %359 = load i32, ptr %8, align 4
  call void @pci_epc_unmap_addr(ptr noundef %213, i8 noundef zeroext %357, i8 noundef zeroext %358, i32 noundef %359) #9
  br label %360

360:                                              ; preds = %355, %236
  %361 = phi i32 [ 1, %236 ], [ %356, %355 ]
  %362 = load i32, ptr %8, align 4
  %363 = load i32, ptr %219, align 1
  call void @pci_epc_mem_free_addr(ptr noundef %213, i32 noundef %362, ptr noundef nonnull %221, i32 noundef %363) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  %364 = icmp eq i32 %361, 0
  br i1 %364, label %366, label %365

365:                                              ; preds = %360, %223
  br label %366

366:                                              ; preds = %365, %360
  %367 = phi i32 [ 2, %365 ], [ 1, %360 ]
  %368 = load i32, ptr %28, align 1
  %369 = or i32 %368, %367
  store i32 %369, ptr %28, align 1
  %370 = load i32, ptr %29, align 1
  %371 = trunc i32 %370 to i8
  %372 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %23, i32 0, i32 8
  %373 = load i32, ptr %372, align 1
  %374 = trunc i32 %373 to i16
  call fastcc void @pci_epf_test_raise_irq(ptr noundef %15, i8 noundef zeroext %371, i16 noundef zeroext %374)
  br label %565

375:                                              ; preds = %207
  %376 = and i32 %25, 32
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %527, label %378

378:                                              ; preds = %375
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #9, !annotation !8
  %379 = load ptr, ptr %16, align 4
  %380 = getelementptr inbounds %struct.pci_epf, ptr %379, i32 0, i32 8
  %381 = load ptr, ptr %380, align 8
  %382 = load i32, ptr %20, align 4
  %383 = getelementptr [6 x ptr], ptr %15, i32 0, i32 %382
  %384 = load ptr, ptr %383, align 4
  %385 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %384, i32 0, i32 5
  %386 = load i32, ptr %385, align 1
  %387 = call ptr @pci_epc_mem_alloc_addr(ptr noundef %381, ptr noundef nonnull %3, i32 noundef %386) #9
  %388 = icmp eq ptr %387, null
  br i1 %388, label %389, label %391

389:                                              ; preds = %378
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %379, ptr noundef nonnull @.str.23) #10
  %390 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %384, i32 0, i32 2
  store i32 128, ptr %390, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %517

391:                                              ; preds = %378
  %392 = getelementptr inbounds %struct.pci_epf, ptr %379, i32 0, i32 6
  %393 = load i8, ptr %392, align 4
  %394 = getelementptr inbounds %struct.pci_epf, ptr %379, i32 0, i32 7
  %395 = load i8, ptr %394, align 1
  %396 = load i32, ptr %3, align 4
  %397 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %384, i32 0, i32 3
  %398 = load i64, ptr %397, align 1
  %399 = load i32, ptr %385, align 1
  %400 = call i32 @pci_epc_map_addr(ptr noundef %381, i8 noundef zeroext %393, i8 noundef zeroext %395, i32 noundef %396, i64 noundef %398, i32 noundef %399) #9
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %391
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %379, ptr noundef nonnull @.str.24) #10
  %403 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %384, i32 0, i32 2
  store i32 128, ptr %403, align 1
  br label %512

404:                                              ; preds = %391
  %405 = load i32, ptr %385, align 1
  %406 = call ptr @pci_epc_mem_alloc_addr(ptr noundef %381, ptr noundef nonnull %4, i32 noundef %405) #9
  %407 = icmp eq ptr %406, null
  br i1 %407, label %408, label %410

408:                                              ; preds = %404
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %379, ptr noundef nonnull @.str.25) #10
  %409 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %384, i32 0, i32 2
  store i32 256, ptr %409, align 1
  br label %507

410:                                              ; preds = %404
  %411 = load i8, ptr %392, align 4
  %412 = load i8, ptr %394, align 1
  %413 = load i32, ptr %4, align 4
  %414 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %384, i32 0, i32 4
  %415 = load i64, ptr %414, align 1
  %416 = load i32, ptr %385, align 1
  %417 = call i32 @pci_epc_map_addr(ptr noundef %381, i8 noundef zeroext %411, i8 noundef zeroext %412, i32 noundef %413, i64 noundef %415, i32 noundef %416) #9
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %421, label %419

419:                                              ; preds = %410
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %379, ptr noundef nonnull @.str.26) #10
  %420 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %384, i32 0, i32 2
  store i32 256, ptr %420, align 1
  br label %503

421:                                              ; preds = %410
  call void @ktime_get_ts64(ptr noundef nonnull %5) #9
  %422 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %384, i32 0, i32 9
  %423 = load i32, ptr %422, align 1
  %424 = and i32 %423, 1
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %438, label %426

426:                                              ; preds = %421
  %427 = getelementptr i8, ptr %0, i32 64
  %428 = load i8, ptr %427, align 4, !range !9
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %426
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %379, ptr noundef nonnull @.str.7) #10
  br label %498

431:                                              ; preds = %426
  %432 = load i32, ptr %4, align 4
  %433 = load i32, ptr %3, align 4
  %434 = load i32, ptr %385, align 1
  %435 = call fastcc i32 @pci_epf_test_data_transfer(ptr noundef %15, i32 noundef %432, i32 noundef %433, i32 noundef %434) #9
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %440, label %437

437:                                              ; preds = %431
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %379, ptr noundef nonnull @.str.9) #10
  br label %440

438:                                              ; preds = %421
  %439 = load i32, ptr %385, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %406, ptr nonnull align 1 %387, i32 %439, i1 false) #9
  br label %440

440:                                              ; preds = %438, %437, %431
  %441 = phi i32 [ %435, %437 ], [ 0, %431 ], [ 0, %438 ]
  call void @ktime_get_ts64(ptr noundef nonnull %6) #9
  %442 = load i32, ptr %385, align 1
  %443 = zext i32 %442 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  %444 = load i64, ptr %6, align 8
  %445 = getelementptr inbounds [2 x i64], ptr %6, i32 0, i32 1
  %446 = load i64, ptr %445, align 8
  %447 = load i64, ptr %5, align 8
  %448 = getelementptr inbounds [2 x i64], ptr %5, i32 0, i32 1
  %449 = load i64, ptr %448, align 8
  %450 = trunc i64 %446 to i32
  %451 = trunc i64 %449 to i32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false) #9, !alias.scope !19, !annotation !8
  %452 = sub i64 %444, %447
  %453 = sub i32 %450, %451
  %454 = sext i32 %453 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %2, i64 noundef %452, i64 noundef %454) #9
  %455 = load i64, ptr %2, align 8
  %456 = getelementptr inbounds i8, ptr %2, i32 8
  %457 = load i32, ptr %456, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  %458 = icmp sgt i64 %455, 9223372035
  br i1 %458, label %461, label %459

459:                                              ; preds = %440
  %460 = icmp slt i64 %455, -9223372035
  br i1 %460, label %461, label %464

461:                                              ; preds = %459, %440
  %462 = phi i64 [ -9223372036854775808, %459 ], [ 9223372036854775807, %440 ]
  %463 = mul nuw nsw i64 %443, 1000000000
  br label %470

464:                                              ; preds = %459
  %465 = mul nsw i64 %455, 1000000000
  %466 = sext i32 %457 to i64
  %467 = add i64 %465, %466
  %468 = mul nuw nsw i64 %443, 1000000000
  %469 = icmp ugt i64 %467, 4294967295
  br i1 %469, label %470, label %479

470:                                              ; preds = %464, %461
  %471 = phi i64 [ %467, %464 ], [ %462, %461 ]
  %472 = phi i64 [ %468, %464 ], [ %463, %461 ]
  br label %473

473:                                              ; preds = %473, %470
  %474 = phi i64 [ %477, %473 ], [ %471, %470 ]
  %475 = phi i64 [ %476, %473 ], [ %472, %470 ]
  %476 = lshr i64 %475, 1
  %477 = lshr i64 %474, 1
  %478 = icmp ugt i64 %474, 8589934591
  br i1 %478, label %473, label %479

479:                                              ; preds = %473, %464
  %480 = phi i64 [ %468, %464 ], [ %476, %473 ]
  %481 = phi i64 [ %467, %464 ], [ %477, %473 ]
  %482 = icmp eq i64 %481, 0
  br i1 %482, label %498, label %483

483:                                              ; preds = %479
  %484 = trunc i64 %481 to i32
  %485 = icmp ult i64 %480, 4294967296
  br i1 %485, label %486, label %490, !prof !14

486:                                              ; preds = %483
  %487 = trunc i64 %480 to i32
  %488 = udiv i32 %487, %484
  %489 = zext i32 %488 to i64
  br label %493

490:                                              ; preds = %483
  %491 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %484, i64 %480) #13, !srcloc !15
  %492 = extractvalue { i64, i64 } %491, 1
  br label %493

493:                                              ; preds = %490, %486
  %494 = phi i64 [ %489, %486 ], [ %492, %490 ]
  %495 = select i1 %425, ptr @.str.19, ptr @.str.18
  %496 = lshr i64 %494, 10
  %497 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.27, i64 noundef %443, ptr noundef nonnull %495, i64 noundef %455, i32 noundef %457, i64 noundef %496) #10
  br label %498

498:                                              ; preds = %493, %479, %430
  %499 = phi i32 [ -22, %430 ], [ %441, %479 ], [ %441, %493 ]
  %500 = load i8, ptr %392, align 4
  %501 = load i8, ptr %394, align 1
  %502 = load i32, ptr %4, align 4
  call void @pci_epc_unmap_addr(ptr noundef %381, i8 noundef zeroext %500, i8 noundef zeroext %501, i32 noundef %502) #9
  br label %503

503:                                              ; preds = %498, %419
  %504 = phi i32 [ %417, %419 ], [ %499, %498 ]
  %505 = load i32, ptr %4, align 4
  %506 = load i32, ptr %385, align 1
  call void @pci_epc_mem_free_addr(ptr noundef %381, i32 noundef %505, ptr noundef nonnull %406, i32 noundef %506) #9
  br label %507

507:                                              ; preds = %503, %408
  %508 = phi i32 [ %504, %503 ], [ -12, %408 ]
  %509 = load i8, ptr %392, align 4
  %510 = load i8, ptr %394, align 1
  %511 = load i32, ptr %3, align 4
  call void @pci_epc_unmap_addr(ptr noundef %381, i8 noundef zeroext %509, i8 noundef zeroext %510, i32 noundef %511) #9
  br label %512

512:                                              ; preds = %507, %402
  %513 = phi i32 [ 1, %402 ], [ %508, %507 ]
  %514 = load i32, ptr %3, align 4
  %515 = load i32, ptr %385, align 1
  call void @pci_epc_mem_free_addr(ptr noundef %381, i32 noundef %514, ptr noundef nonnull %387, i32 noundef %515) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %516 = icmp eq i32 %513, 0
  br i1 %516, label %518, label %517

517:                                              ; preds = %512, %389
  br label %518

518:                                              ; preds = %517, %512
  %519 = phi i32 [ 32, %517 ], [ 16, %512 ]
  %520 = load i32, ptr %28, align 1
  %521 = or i32 %520, %519
  store i32 %521, ptr %28, align 1
  %522 = load i32, ptr %29, align 1
  %523 = trunc i32 %522 to i8
  %524 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %23, i32 0, i32 8
  %525 = load i32, ptr %524, align 1
  %526 = trunc i32 %525 to i16
  call fastcc void @pci_epf_test_raise_irq(ptr noundef %15, i8 noundef zeroext %523, i16 noundef zeroext %526)
  br label %565

527:                                              ; preds = %375
  %528 = and i32 %25, 2
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %546, label %530

530:                                              ; preds = %527
  %531 = getelementptr inbounds %struct.pci_epf, ptr %17, i32 0, i32 6
  %532 = load i8, ptr %531, align 4
  %533 = getelementptr inbounds %struct.pci_epf, ptr %17, i32 0, i32 7
  %534 = load i8, ptr %533, align 1
  %535 = tail call i32 @pci_epc_get_msi(ptr noundef %19, i8 noundef zeroext %532, i8 noundef zeroext %534) #9
  %536 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %23, i32 0, i32 8
  %537 = load i32, ptr %536, align 1
  %538 = icmp ugt i32 %537, %535
  %539 = icmp slt i32 %535, 1
  %540 = or i1 %539, %538
  br i1 %540, label %565, label %541

541:                                              ; preds = %530
  store i32 64, ptr %28, align 1
  %542 = load i8, ptr %531, align 4
  %543 = load i8, ptr %533, align 1
  %544 = trunc i32 %537 to i16
  %545 = tail call i32 @pci_epc_raise_irq(ptr noundef %19, i8 noundef zeroext %542, i8 noundef zeroext %543, i32 noundef 2, i16 noundef zeroext %544) #9
  br label %565

546:                                              ; preds = %527
  %547 = and i32 %25, 4
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %565, label %549

549:                                              ; preds = %546
  %550 = getelementptr inbounds %struct.pci_epf, ptr %17, i32 0, i32 6
  %551 = load i8, ptr %550, align 4
  %552 = getelementptr inbounds %struct.pci_epf, ptr %17, i32 0, i32 7
  %553 = load i8, ptr %552, align 1
  %554 = tail call i32 @pci_epc_get_msix(ptr noundef %19, i8 noundef zeroext %551, i8 noundef zeroext %553) #9
  %555 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %23, i32 0, i32 8
  %556 = load i32, ptr %555, align 1
  %557 = icmp ugt i32 %556, %554
  %558 = icmp slt i32 %554, 1
  %559 = or i1 %558, %557
  br i1 %559, label %565, label %560

560:                                              ; preds = %549
  store i32 64, ptr %28, align 1
  %561 = load i8, ptr %550, align 4
  %562 = load i8, ptr %552, align 1
  %563 = trunc i32 %556 to i16
  %564 = tail call i32 @pci_epc_raise_irq(ptr noundef %19, i8 noundef zeroext %561, i8 noundef zeroext %562, i32 noundef 3, i16 noundef zeroext %563) #9
  br label %565

565:                                              ; preds = %560, %549, %546, %541, %530, %518, %366, %198, %36, %32, %1
  %566 = load ptr, ptr @kpcitest_workqueue, align 4
  %567 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %566, ptr noundef %0, i32 noundef 1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_raise_irq(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_epf_test_raise_irq(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.pci_epf_test, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_epf, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_epf_test, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [6 x ptr], ptr %0, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 1
  %14 = or i32 %13, 64
  store i32 %14, ptr %12, align 1
  switch i8 %1, label %33 [
    i8 0, label %15
    i8 1, label %21
    i8 2, label %27
  ]

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.pci_epf, ptr %5, i32 0, i32 6
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr inbounds %struct.pci_epf, ptr %5, i32 0, i32 7
  %19 = load i8, ptr %18, align 1
  %20 = tail call i32 @pci_epc_raise_irq(ptr noundef %7, i8 noundef zeroext %17, i8 noundef zeroext %19, i32 noundef 1, i16 noundef zeroext 0) #9
  br label %34

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.pci_epf, ptr %5, i32 0, i32 6
  %23 = load i8, ptr %22, align 4
  %24 = getelementptr inbounds %struct.pci_epf, ptr %5, i32 0, i32 7
  %25 = load i8, ptr %24, align 1
  %26 = tail call i32 @pci_epc_raise_irq(ptr noundef %7, i8 noundef zeroext %23, i8 noundef zeroext %25, i32 noundef 2, i16 noundef zeroext %2) #9
  br label %34

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.pci_epf, ptr %5, i32 0, i32 6
  %29 = load i8, ptr %28, align 4
  %30 = getelementptr inbounds %struct.pci_epf, ptr %5, i32 0, i32 7
  %31 = load i8, ptr %30, align 1
  %32 = tail call i32 @pci_epc_raise_irq(ptr noundef %7, i8 noundef zeroext %29, i8 noundef zeroext %31, i32 noundef 3, i16 noundef zeroext %2) #9
  br label %34

33:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.20) #10
  br label %34

34:                                               ; preds = %33, %27, %21, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_get_msi(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_get_msix(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epc_mem_alloc_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_map_addr(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_epf_test_data_transfer(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.pci_epf_test, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pci_epf_test, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %6, null
  %10 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.13) #10
  br label %54

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 30
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call ptr %18(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 3) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %16, %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.14) #10
  br label %54

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %21, i32 0, i32 6
  store ptr @pci_epf_test_dma_callback, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %21, i32 0, i32 8
  store ptr %0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %21, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef nonnull %21) #9
  %30 = getelementptr inbounds %struct.pci_epf_test, ptr %0, i32 0, i32 6
  store i32 0, ptr %30, align 4
  %31 = icmp sgt i32 %29, -1
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef %29) #10
  br label %54

33:                                               ; preds = %24
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 50
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef nonnull %6) #9
  %37 = tail call i32 @wait_for_completion_interruptible(ptr noundef %30) #9
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 47
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = tail call i32 %42(ptr noundef nonnull %6) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load ptr, ptr %6, align 4
  %49 = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 48
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void %50(ptr noundef nonnull %6) #9
  br label %53

53:                                               ; preds = %52, %47, %44, %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.16) #10
  br label %54

54:                                               ; preds = %53, %33, %32, %23, %12
  %55 = phi i32 [ -22, %12 ], [ -5, %32 ], [ -110, %53 ], [ -5, %23 ], [ 0, %33 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_unmap_addr(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_mem_free_addr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_epf_test_dma_callback(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.pci_epf_test, ptr %0, i32 0, i32 6
  tail call void @complete(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_test_bind(ptr noundef %0) #4 {
  %2 = alloca %struct.dma_cap_mask_t, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @pci_epf_test_bind.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %1
  store i1 true, ptr @pci_epf_test_bind.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 842, i32 noundef 9, ptr noundef null) #9
  br label %12

12:                                               ; preds = %11, %1
  br i1 %7, label %212, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 7
  %17 = load i8, ptr %16, align 1
  %18 = tail call ptr @pci_epc_get_features(ptr noundef nonnull %6, i8 noundef zeroext %15, i8 noundef zeroext %17) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.29) #10
  br label %212

21:                                               ; preds = %13
  %22 = load i8, ptr %18, align 8
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  %25 = and i8 %22, 2
  %26 = icmp eq i8 %25, 0
  %27 = tail call i32 @pci_epc_get_first_free_bar(ptr noundef nonnull %18) #9
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %212, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.pci_epc_features, ptr %18, i32 0, i32 2
  %31 = load i8, ptr %30, align 2
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = getelementptr %struct.pci_epf, ptr %0, i32 0, i32 3, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 4
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = getelementptr %struct.pci_epc_features, ptr %18, i32 0, i32 3, i32 0
  %40 = load i64, ptr %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = trunc i64 %40 to i32
  store i32 %43, ptr @bar_size, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i8, ptr %30, align 2
  %46 = and i8 %45, 2
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr %struct.pci_epf, ptr %0, i32 0, i32 3, i32 1, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %50, 4
  store i32 %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = getelementptr %struct.pci_epc_features, ptr %18, i32 0, i32 3, i32 1
  %54 = load i64, ptr %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = trunc i64 %54 to i32
  store i32 %57, ptr getelementptr inbounds ([6 x i32], ptr @bar_size, i32 0, i32 1), align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i8, ptr %30, align 2
  %60 = and i8 %59, 4
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr %struct.pci_epf, ptr %0, i32 0, i32 3, i32 2, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %64, 4
  store i32 %65, ptr %63, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = getelementptr %struct.pci_epc_features, ptr %18, i32 0, i32 3, i32 2
  %68 = load i64, ptr %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = trunc i64 %68 to i32
  store i32 %71, ptr getelementptr inbounds ([6 x i32], ptr @bar_size, i32 0, i32 2), align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i8, ptr %30, align 2
  %74 = and i8 %73, 8
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr %struct.pci_epf, ptr %0, i32 0, i32 3, i32 3, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = or i32 %78, 4
  store i32 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = getelementptr %struct.pci_epc_features, ptr %18, i32 0, i32 3, i32 3
  %82 = load i64, ptr %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = trunc i64 %82 to i32
  store i32 %85, ptr getelementptr inbounds ([6 x i32], ptr @bar_size, i32 0, i32 3), align 4
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i8, ptr %30, align 2
  %88 = and i8 %87, 16
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = getelementptr %struct.pci_epf, ptr %0, i32 0, i32 3, i32 4, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %92, 4
  store i32 %93, ptr %91, align 4
  br label %94

94:                                               ; preds = %90, %86
  %95 = getelementptr %struct.pci_epc_features, ptr %18, i32 0, i32 3, i32 4
  %96 = load i64, ptr %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = trunc i64 %96 to i32
  store i32 %99, ptr getelementptr inbounds ([6 x i32], ptr @bar_size, i32 0, i32 4), align 4
  br label %100

100:                                              ; preds = %98, %94
  %101 = load i8, ptr %30, align 2
  %102 = and i8 %101, 32
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = getelementptr %struct.pci_epf, ptr %0, i32 0, i32 3, i32 5, i32 4
  %106 = load i32, ptr %105, align 4
  %107 = or i32 %106, 4
  store i32 %107, ptr %105, align 4
  br label %108

108:                                              ; preds = %104, %100
  %109 = getelementptr %struct.pci_epc_features, ptr %18, i32 0, i32 3, i32 5
  %110 = load i64, ptr %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = trunc i64 %110 to i32
  store i32 %113, ptr getelementptr inbounds ([6 x i32], ptr @bar_size, i32 0, i32 5), align 4
  br label %114

114:                                              ; preds = %112, %108
  %115 = getelementptr inbounds %struct.pci_epf_test, ptr %4, i32 0, i32 2
  store i32 %27, ptr %115, align 4
  %116 = getelementptr inbounds %struct.pci_epf_test, ptr %4, i32 0, i32 8
  store ptr %18, ptr %116, align 4
  %117 = load ptr, ptr %3, align 8
  %118 = getelementptr inbounds %struct.pci_epf_test, ptr %117, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.pci_epf_test, ptr %117, i32 0, i32 8
  %121 = load ptr, ptr %120, align 4
  %122 = load i8, ptr %121, align 8
  %123 = and i8 %122, 8
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %114
  %126 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 5
  %127 = load i16, ptr %126, align 2
  %128 = zext i16 %127 to i32
  %129 = shl nuw nsw i32 %128, 4
  %130 = getelementptr inbounds %struct.pci_epf_test, ptr %117, i32 0, i32 3
  store i32 128, ptr %130, align 4
  %131 = load i16, ptr %126, align 2
  %132 = zext i16 %131 to i32
  %133 = add nuw nsw i32 %132, 7
  %134 = lshr i32 %133, 3
  %135 = add nuw nsw i32 %134, 7
  %136 = and i32 %135, 32760
  %137 = add nuw nsw i32 %129, 128
  %138 = add nuw nsw i32 %137, %136
  br label %139

139:                                              ; preds = %125, %114
  %140 = phi i32 [ %138, %125 ], [ 128, %114 ]
  %141 = getelementptr %struct.pci_epc_features, ptr %121, i32 0, i32 3, i32 %119
  %142 = load i64, ptr %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = getelementptr [6 x i32], ptr @bar_size, i32 0, i32 %119
  %146 = load i32, ptr %145, align 4
  %147 = icmp ugt i32 %140, %146
  br i1 %147, label %212, label %148

148:                                              ; preds = %144, %139
  %149 = phi i32 [ %140, %139 ], [ %146, %144 ]
  %150 = getelementptr inbounds %struct.pci_epc_features, ptr %121, i32 0, i32 4
  %151 = load i32, ptr %150, align 8
  %152 = tail call ptr @pci_epf_alloc_space(ptr noundef %0, i32 noundef %149, i32 noundef %119, i32 noundef %151, i32 noundef 0) #9
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.30) #10
  br label %212

155:                                              ; preds = %148
  %156 = getelementptr [6 x ptr], ptr %117, i32 0, i32 %119
  store ptr %152, ptr %156, align 4
  %157 = getelementptr inbounds %struct.pci_epc_features, ptr %121, i32 0, i32 1
  br label %158

158:                                              ; preds = %181, %155
  %159 = phi i32 [ 0, %155 ], [ %182, %181 ]
  %160 = getelementptr %struct.pci_epf, ptr %0, i32 0, i32 3, i32 %159, i32 4
  %161 = load i32, ptr %160, align 4
  %162 = and i32 %161, 4
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i32 1, i32 2
  %165 = icmp eq i32 %159, %119
  br i1 %165, label %181, label %166

166:                                              ; preds = %158
  %167 = load i8, ptr %157, align 1
  %168 = zext i8 %167 to i32
  %169 = shl nuw nsw i32 1, %159
  %170 = and i32 %169, %168
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %166
  %173 = getelementptr [6 x i32], ptr @bar_size, i32 0, i32 %159
  %174 = load i32, ptr %173, align 4
  %175 = load i32, ptr %150, align 8
  %176 = tail call ptr @pci_epf_alloc_space(ptr noundef %0, i32 noundef %174, i32 noundef %159, i32 noundef %175, i32 noundef 0) #9
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %159) #10
  br label %179

179:                                              ; preds = %178, %172
  %180 = getelementptr [6 x ptr], ptr %117, i32 0, i32 %159
  store ptr %176, ptr %180, align 4
  br label %181

181:                                              ; preds = %179, %166, %158
  %182 = add nuw nsw i32 %164, %159
  %183 = icmp ult i32 %182, 6
  br i1 %183, label %158, label %184

184:                                              ; preds = %181
  br i1 %26, label %185, label %188

185:                                              ; preds = %184
  %186 = tail call fastcc i32 @pci_epf_test_core_init(ptr noundef %0)
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %212

188:                                              ; preds = %185, %184
  %189 = getelementptr inbounds %struct.pci_epf_test, ptr %4, i32 0, i32 7
  store i8 1, ptr %189, align 4
  %190 = getelementptr inbounds %struct.pci_epf_test, ptr %4, i32 0, i32 1
  %191 = load ptr, ptr %190, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %2) #9
  %192 = call ptr @dma_request_chan_by_mask(ptr noundef nonnull %2) #9
  %193 = icmp ugt ptr %192, inttoptr (i32 -4096 to ptr)
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = icmp eq ptr %192, inttoptr (i32 -517 to ptr)
  br i1 %195, label %196, label %201

196:                                              ; preds = %194
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %202

197:                                              ; preds = %188
  %198 = getelementptr inbounds %struct.pci_epf_test, ptr %4, i32 0, i32 6
  store i32 0, ptr %198, align 4
  %199 = getelementptr inbounds %struct.pci_epf_test, ptr %4, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %199, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #9
  %200 = getelementptr inbounds %struct.pci_epf_test, ptr %4, i32 0, i32 5
  store ptr %192, ptr %200, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %203

201:                                              ; preds = %194
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %191, ptr noundef nonnull @.str.36) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %202

202:                                              ; preds = %201, %196
  store i8 0, ptr %189, align 4
  br label %203

203:                                              ; preds = %202, %197
  br i1 %24, label %208, label %204

204:                                              ; preds = %203
  %205 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 12
  store ptr @pci_epf_test_notifier, ptr %205, align 4
  %206 = getelementptr inbounds %struct.pci_epc, ptr %6, i32 0, i32 11
  %207 = call i32 @atomic_notifier_chain_register(ptr noundef %206, ptr noundef %205) #9
  br label %212

208:                                              ; preds = %203
  %209 = load ptr, ptr @kpcitest_workqueue, align 4
  %210 = getelementptr inbounds %struct.pci_epf_test, ptr %4, i32 0, i32 4
  %211 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %209, ptr noundef %210) #9
  br label %212

212:                                              ; preds = %208, %204, %185, %154, %144, %21, %20, %12
  %213 = phi i32 [ -95, %20 ], [ -22, %12 ], [ -22, %21 ], [ %186, %185 ], [ 0, %208 ], [ 0, %204 ], [ -12, %154 ], [ -12, %144 ]
  ret i32 %213
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_epf_test_unbind(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pci_epf_test, ptr %3, i32 0, i32 4
  %7 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.pci_epf_test, ptr %3, i32 0, i32 7
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.pci_epf_test, ptr %3, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  tail call void @dma_release_channel(ptr noundef %13) #9
  store ptr null, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %1
  tail call void @pci_epc_stop(ptr noundef %5) #9
  %15 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %3, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.pci_epf, ptr %0, i32 0, i32 3, i32 0
  %21 = load i8, ptr %15, align 4
  %22 = load i8, ptr %16, align 1
  tail call void @pci_epc_clear_bar(ptr noundef %5, i8 noundef zeroext %21, i8 noundef zeroext %22, ptr noundef %20) #9
  %23 = load ptr, ptr %3, align 4
  tail call void @pci_epf_free_space(ptr noundef %0, ptr noundef %23, i32 noundef 0, i32 noundef 0) #9
  br label %24

24:                                               ; preds = %19, %14
  %25 = getelementptr [6 x ptr], ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr %struct.pci_epf, ptr %0, i32 0, i32 3, i32 1
  %30 = load i8, ptr %15, align 4
  %31 = load i8, ptr %16, align 1
  tail call void @pci_epc_clear_bar(ptr noundef %5, i8 noundef zeroext %30, i8 noundef zeroext %31, ptr noundef %29) #9
  %32 = load ptr, ptr %25, align 4
  tail call void @pci_epf_free_space(ptr noundef %0, ptr noundef %32, i32 noundef 1, i32 noundef 0) #9
  br label %33

33:                                               ; preds = %28, %24
  %34 = getelementptr [6 x ptr], ptr %3, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr %struct.pci_epf, ptr %0, i32 0, i32 3, i32 2
  %39 = load i8, ptr %15, align 4
  %40 = load i8, ptr %16, align 1
  tail call void @pci_epc_clear_bar(ptr noundef %5, i8 noundef zeroext %39, i8 noundef zeroext %40, ptr noundef %38) #9
  %41 = load ptr, ptr %34, align 4
  tail call void @pci_epf_free_space(ptr noundef %0, ptr noundef %41, i32 noundef 2, i32 noundef 0) #9
  br label %42

42:                                               ; preds = %37, %33
  %43 = getelementptr [6 x ptr], ptr %3, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr %struct.pci_epf, ptr %0, i32 0, i32 3, i32 3
  %48 = load i8, ptr %15, align 4
  %49 = load i8, ptr %16, align 1
  tail call void @pci_epc_clear_bar(ptr noundef %5, i8 noundef zeroext %48, i8 noundef zeroext %49, ptr noundef %47) #9
  %50 = load ptr, ptr %43, align 4
  tail call void @pci_epf_free_space(ptr noundef %0, ptr noundef %50, i32 noundef 3, i32 noundef 0) #9
  br label %51

51:                                               ; preds = %46, %42
  %52 = getelementptr [6 x ptr], ptr %3, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = getelementptr %struct.pci_epf, ptr %0, i32 0, i32 3, i32 4
  %57 = load i8, ptr %15, align 4
  %58 = load i8, ptr %16, align 1
  tail call void @pci_epc_clear_bar(ptr noundef %5, i8 noundef zeroext %57, i8 noundef zeroext %58, ptr noundef %56) #9
  %59 = load ptr, ptr %52, align 4
  tail call void @pci_epf_free_space(ptr noundef %0, ptr noundef %59, i32 noundef 4, i32 noundef 0) #9
  br label %60

60:                                               ; preds = %55, %51
  %61 = getelementptr [6 x ptr], ptr %3, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = getelementptr %struct.pci_epf, ptr %0, i32 0, i32 3, i32 5
  %66 = load i8, ptr %15, align 4
  %67 = load i8, ptr %16, align 1
  tail call void @pci_epc_clear_bar(ptr noundef %5, i8 noundef zeroext %66, i8 noundef zeroext %67, ptr noundef %65) #9
  %68 = load ptr, ptr %61, align 4
  tail call void @pci_epf_free_space(ptr noundef %0, ptr noundef %68, i32 noundef 5, i32 noundef 0) #9
  br label %69

69:                                               ; preds = %64, %60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epc_get_features(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_get_first_free_bar(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_epf_test_core_init(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 6
  %9 = load i8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 7
  %11 = load i8, ptr %10, align 1
  %12 = tail call ptr @pci_epc_get_features(ptr noundef %7, i8 noundef zeroext %9, i8 noundef zeroext %11) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load i8, ptr %12, align 8
  %16 = and i8 %15, 8
  %17 = icmp ne i8 %16, 0
  %18 = and i8 %15, 4
  %19 = icmp ne i8 %18, 0
  br label %20

20:                                               ; preds = %14, %1
  %21 = phi i1 [ %17, %14 ], [ false, %1 ]
  %22 = phi i1 [ %19, %14 ], [ true, %1 ]
  %23 = load i8, ptr %10, align 1
  %24 = icmp ult i8 %23, 2
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i8, ptr %8, align 4
  %27 = tail call i32 @pci_epc_write_header(ptr noundef %7, i8 noundef zeroext %26, i8 noundef zeroext %23, ptr noundef %5) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %82

29:                                               ; preds = %25, %20
  %30 = load ptr, ptr %6, align 8
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct.pci_epf_test, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.pci_epf_test, ptr %31, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.pci_epc_features, ptr %35, i32 0, i32 1
  br label %37

37:                                               ; preds = %59, %29
  %38 = phi i32 [ 0, %29 ], [ %60, %59 ]
  %39 = getelementptr %struct.pci_epf, ptr %0, i32 0, i32 3, i32 %38, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 1, i32 2
  %44 = load i8, ptr %36, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 1, %38
  %47 = and i32 %46, %45
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %37
  %50 = getelementptr %struct.pci_epf, ptr %0, i32 0, i32 3, i32 %38
  %51 = load i8, ptr %8, align 4
  %52 = load i8, ptr %10, align 1
  %53 = tail call i32 @pci_epc_set_bar(ptr noundef %30, i8 noundef zeroext %51, i8 noundef zeroext %52, ptr noundef %50) #9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = getelementptr [6 x ptr], ptr %31, i32 0, i32 %38
  %57 = load ptr, ptr %56, align 4
  tail call void @pci_epf_free_space(ptr noundef %0, ptr noundef %57, i32 noundef %38, i32 noundef 0) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %38) #10
  %58 = icmp eq i32 %38, %33
  br i1 %58, label %85, label %59

59:                                               ; preds = %55, %49, %37
  %60 = add nuw nsw i32 %43, %38
  %61 = icmp ult i32 %60, 6
  br i1 %61, label %37, label %62

62:                                               ; preds = %59
  br i1 %22, label %63, label %70

63:                                               ; preds = %62
  %64 = load i8, ptr %8, align 4
  %65 = load i8, ptr %10, align 1
  %66 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 4
  %67 = load i8, ptr %66, align 8
  %68 = tail call i32 @pci_epc_set_msi(ptr noundef %7, i8 noundef zeroext %64, i8 noundef zeroext %65, i8 noundef zeroext %67) #9
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %63, %62
  br i1 %21, label %71, label %85

71:                                               ; preds = %70
  %72 = load i8, ptr %8, align 4
  %73 = load i8, ptr %10, align 1
  %74 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 5
  %75 = load i16, ptr %74, align 2
  %76 = getelementptr inbounds %struct.pci_epf_test, ptr %3, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.pci_epf_test, ptr %3, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = tail call i32 @pci_epc_set_msix(ptr noundef %7, i8 noundef zeroext %72, i8 noundef zeroext %73, i16 noundef zeroext %75, i32 noundef %77, i32 noundef %79) #9
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %71, %63, %25
  %83 = phi ptr [ @.str.32, %25 ], [ @.str.33, %63 ], [ @.str.34, %71 ]
  %84 = phi i32 [ %27, %25 ], [ %68, %63 ], [ %80, %71 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %83) #10
  br label %85

85:                                               ; preds = %82, %71, %70, %55
  %86 = phi i32 [ 0, %71 ], [ 0, %70 ], [ %84, %82 ], [ %53, %55 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_test_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -628
  switch i32 %1, label %14 [
    i32 0, label %5
    i32 1, label %8
  ]

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @pci_epf_test_core_init(ptr noundef %4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %16

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -564
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr @kpcitest_workqueue, align 4
  %12 = getelementptr inbounds %struct.pci_epf_test, ptr %10, i32 0, i32 4
  %13 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %12, i32 noundef 1) #9
  br label %15

14:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.38) #10
  br label %16

15:                                               ; preds = %8, %5
  br label %16

16:                                               ; preds = %15, %14, %5
  %17 = phi i32 [ 32770, %14 ], [ 1, %15 ], [ 32770, %5 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epf_alloc_space(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_write_header(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_set_msi(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_set_msix(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_set_bar(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epf_free_space(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan_by_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_clear_bar(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epf_unregister_driver(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind readnone }

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
!11 = !{!12}
!12 = distinct !{!12, !13, !"timespec64_sub: argument 0"}
!13 = distinct !{!13, !"timespec64_sub"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2147714558, i64 2147714838, i64 2147715172, i64 2147715506}
!16 = !{!17}
!17 = distinct !{!17, !18, !"timespec64_sub: argument 0"}
!18 = distinct !{!18, !"timespec64_sub"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"timespec64_sub: argument 0"}
!21 = distinct !{!21, !"timespec64_sub"}
