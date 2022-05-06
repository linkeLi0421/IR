; ModuleID = '/llk/IR/drivers/dma/owl-dma.c_pt.bc'
source_filename = "../drivers/dma/owl-dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.owl_dma = type { %struct.dma_device, ptr, ptr, %struct.spinlock, ptr, i32, i32, ptr, i32, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.owl_dma_pchan = type { i32, ptr, ptr }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.owl_dma_vchan = type { %struct.virt_dma_chan, ptr, ptr, %struct.dma_slave_config, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.owl_dma_txd = type { %struct.virt_dma_desc, %struct.list_head, i8 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.owl_dma_lli = type { [9 x i32], i32, %struct.list_head }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_owl_dma__231_1267_owl_dma_init4 = internal global ptr @owl_dma_init, section ".initcall4.init", align 4
@owl_dma_driver = internal global %struct.platform_driver { ptr @owl_dma_probe, ptr @owl_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @owl_dma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_owl_dma_exit = internal global ptr @owl_dma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [51 x i8] c"owl_dma.author=David Liu <liuwei@actions-semi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [72 x i8] c"owl_dma.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [53 x i8] c"owl_dma.description=Actions Semi Owl SoCs DMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [33 x i8] c"owl_dma.file=drivers/dma/owl-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [20 x i8] c"owl_dma.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"dma-owl\00", align 1
@owl_dma_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s500-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s700-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s900-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"can't get dma-channels\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"dma-requests\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"can't get dma-requests\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"dma-channels %d, dma-requests %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"unable to get clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"unable to request IRQ\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"unable to allocate DMA descriptor pool\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"failed to register DMA engine device\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"of_dma_controller_register failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"failed to allocate lli\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.13 = private unnamed_addr constant [42 x i8] c"frame length exceeds max supported length\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"failed to allocate lli\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"failed to config lli\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"terminating pchan %d that still has pending irq\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"no vchan attached on pchan %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_owl_dma_exit, ptr @__initcall__kmod_owl_dma__231_1267_owl_dma_init4, ptr @owl_dma_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_dma_init() #0 {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @owl_dma_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @owl_dma_exit() #1 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @owl_dma_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_dma_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 292, i32 noundef 3520) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %158, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #10
  %11 = getelementptr inbounds %struct.owl_dma, ptr %7, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = ptrtoint ptr %10 to i32
  br label %158

15:                                               ; preds = %9
  %16 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #10
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #11
  br label %158

19:                                               ; preds = %15
  %20 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #10
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #11
  br label %158

23:                                               ; preds = %19
  %24 = load i32, ptr %2, align 4
  %25 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %24, i32 noundef %25) #11
  %26 = call ptr @of_device_get_match_data(ptr noundef %4) #10
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr inbounds %struct.owl_dma, ptr %7, i32 0, i32 10
  store i32 %27, ptr %28, align 4
  %29 = load i32, ptr %2, align 4
  %30 = getelementptr inbounds %struct.owl_dma, ptr %7, i32 0, i32 6
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr %3, align 4
  %32 = getelementptr inbounds %struct.owl_dma, ptr %7, i32 0, i32 8
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  store i64 4294967295, ptr %33, align 8
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %34, align 8
  %35 = getelementptr inbounds %struct.owl_dma, ptr %7, i32 0, i32 3
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 6
  call void @_set_bit(i32 noundef 0, ptr noundef %36) #10
  call void @_set_bit(i32 noundef 11, ptr noundef %36) #10
  call void @_set_bit(i32 noundef 12, ptr noundef %36) #10
  %37 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  store ptr %4, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 29
  store ptr @owl_dma_free_chan_resources, ptr %38, align 4
  %39 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 49
  store ptr @owl_dma_tx_status, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 50
  store ptr @owl_dma_issue_pending, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 30
  store ptr @owl_dma_prep_memcpy, ptr %41, align 4
  %42 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 39
  store ptr @owl_dma_prep_slave_sg, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 40
  store ptr @owl_prep_dma_cyclic, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 44
  store ptr @owl_dma_config, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 45
  store ptr @owl_dma_pause, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 46
  store ptr @owl_dma_resume, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  store ptr @owl_dma_terminate_all, ptr %47, align 4
  %48 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 19
  store i32 16, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 20
  store i32 16, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 21
  store i32 1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 26
  store i32 2, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 3
  store volatile ptr %52, ptr %52, align 4
  %53 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 3, i32 1
  store ptr %52, ptr %53, align 4
  %54 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #10
  %55 = getelementptr inbounds %struct.owl_dma, ptr %7, i32 0, i32 2
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %60

57:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #11
  %58 = load ptr, ptr %55, align 4
  %59 = ptrtoint ptr %58 to i32
  br label %158

60:                                               ; preds = %23
  %61 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %62 = getelementptr inbounds %struct.owl_dma, ptr %7, i32 0, i32 5
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load ptr, ptr %4, align 4
  br label %68

68:                                               ; preds = %66, %60
  %69 = phi ptr [ %67, %66 ], [ %64, %60 ]
  %70 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %61, ptr noundef nonnull @owl_dma_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %69, ptr noundef nonnull %7) #10
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #11
  br label %158

73:                                               ; preds = %68
  %74 = load i32, ptr %30, align 4
  %75 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %74, i32 12) #10
  %76 = extractvalue { i32, i1 } %75, 1
  br i1 %76, label %77, label %79, !prof !9

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.owl_dma, ptr %7, i32 0, i32 7
  store ptr null, ptr %78, align 4
  br label %158

79:                                               ; preds = %73
  %80 = extractvalue { i32, i1 } %75, 0
  %81 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %80, i32 noundef 3520) #10
  %82 = getelementptr inbounds %struct.owl_dma, ptr %7, i32 0, i32 7
  store ptr %81, ptr %82, align 4
  %83 = icmp eq ptr %81, null
  br i1 %83, label %158, label %84

84:                                               ; preds = %79
  %85 = load i32, ptr %30, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %84
  store i32 0, ptr %81, align 4
  %88 = load ptr, ptr %11, align 4
  %89 = getelementptr i8, ptr %88, i32 256
  %90 = getelementptr %struct.owl_dma_pchan, ptr %81, i32 0, i32 1
  store ptr %89, ptr %90, align 4
  %91 = load i32, ptr %30, align 4
  %92 = icmp ugt i32 %91, 1
  br i1 %92, label %93, label %105

93:                                               ; preds = %93, %87
  %94 = phi i32 [ %102, %93 ], [ 1, %87 ]
  %95 = load ptr, ptr %82, align 4
  %96 = getelementptr %struct.owl_dma_pchan, ptr %95, i32 %94
  store i32 %94, ptr %96, align 4
  %97 = load ptr, ptr %11, align 4
  %98 = shl i32 %94, 8
  %99 = add i32 %98, 256
  %100 = getelementptr i8, ptr %97, i32 %99
  %101 = getelementptr %struct.owl_dma_pchan, ptr %95, i32 %94, i32 1
  store ptr %100, ptr %101, align 4
  %102 = add nuw i32 %94, 1
  %103 = load i32, ptr %30, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %93, label %105

105:                                              ; preds = %93, %87, %84
  %106 = load i32, ptr %32, align 4
  %107 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %106, i32 200) #10
  %108 = extractvalue { i32, i1 } %107, 1
  br i1 %108, label %109, label %111, !prof !9

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.owl_dma, ptr %7, i32 0, i32 9
  store ptr null, ptr %110, align 4
  br label %158

111:                                              ; preds = %105
  %112 = extractvalue { i32, i1 } %107, 0
  %113 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %112, i32 noundef 3520) #10
  %114 = getelementptr inbounds %struct.owl_dma, ptr %7, i32 0, i32 9
  store ptr %113, ptr %114, align 4
  %115 = icmp eq ptr %113, null
  br i1 %115, label %158, label %116

116:                                              ; preds = %111
  %117 = load i32, ptr %32, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %131, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.virt_dma_chan, ptr %113, i32 0, i32 2
  store ptr @owl_dma_desc_free, ptr %120, align 4
  call void @vchan_init(ptr noundef nonnull %113, ptr noundef nonnull %7) #10
  %121 = load i32, ptr %32, align 4
  %122 = icmp ugt i32 %121, 1
  br i1 %122, label %123, label %131

123:                                              ; preds = %123, %119
  %124 = phi i32 [ %128, %123 ], [ 1, %119 ]
  %125 = load ptr, ptr %114, align 4
  %126 = getelementptr %struct.owl_dma_vchan, ptr %125, i32 %124
  %127 = getelementptr inbounds %struct.virt_dma_chan, ptr %126, i32 0, i32 2
  store ptr @owl_dma_desc_free, ptr %127, align 4
  call void @vchan_init(ptr noundef %126, ptr noundef nonnull %7) #10
  %128 = add nuw i32 %124, 1
  %129 = load i32, ptr %32, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %123, label %131

131:                                              ; preds = %123, %119, %116
  %132 = load ptr, ptr %37, align 4
  %133 = getelementptr inbounds %struct.device, ptr %132, i32 0, i32 3
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load ptr, ptr %132, align 4
  br label %138

138:                                              ; preds = %136, %131
  %139 = phi ptr [ %137, %136 ], [ %134, %131 ]
  %140 = call ptr @dma_pool_create(ptr noundef %139, ptr noundef %132, i32 noundef 48, i32 noundef 4, i32 noundef 0) #10
  %141 = getelementptr inbounds %struct.owl_dma, ptr %7, i32 0, i32 4
  store ptr %140, ptr %141, align 4
  %142 = icmp eq ptr %140, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #11
  br label %158

144:                                              ; preds = %138
  %145 = load ptr, ptr %55, align 4
  call fastcc void @clk_prepare_enable(ptr noundef %145)
  %146 = call i32 @dma_async_device_register(ptr noundef nonnull %7) #10
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #11
  br label %154

149:                                              ; preds = %144
  %150 = load ptr, ptr %5, align 8
  %151 = call i32 @of_dma_controller_register(ptr noundef %150, ptr noundef nonnull @owl_dma_of_xlate, ptr noundef nonnull %7) #10
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %149
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10) #11
  call void @dma_async_device_unregister(ptr noundef nonnull %7) #10
  br label %154

154:                                              ; preds = %153, %148
  %155 = phi i32 [ %146, %148 ], [ %151, %153 ]
  %156 = load ptr, ptr %55, align 4
  call void @clk_disable(ptr noundef %156) #10
  call void @clk_unprepare(ptr noundef %156) #10
  %157 = load ptr, ptr %141, align 4
  call void @dma_pool_destroy(ptr noundef %157) #10
  br label %158

158:                                              ; preds = %154, %149, %143, %111, %109, %79, %77, %72, %57, %22, %18, %13, %1
  %159 = phi i32 [ %14, %13 ], [ %16, %18 ], [ %20, %22 ], [ %59, %57 ], [ %70, %72 ], [ %155, %154 ], [ -12, %143 ], [ -12, %1 ], [ -12, %79 ], [ -12, %111 ], [ 0, %149 ], [ -12, %77 ], [ -12, %109 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_dma_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  tail call void @of_dma_controller_free(ptr noundef %5) #10
  tail call void @dma_async_device_unregister(ptr noundef %3) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  %6 = getelementptr inbounds %struct.owl_dma, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #10, !srcloc !11
  %9 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.owl_dma, ptr %3, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  tail call void @devm_free_irq(ptr noundef %10, i32 noundef %12, ptr noundef %3) #10
  %13 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %24, label %16

16:                                               ; preds = %16, %1
  %17 = phi ptr [ %18, %16 ], [ %14, %1 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %18, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  %22 = getelementptr i8, ptr %17, i32 32
  tail call void @tasklet_kill(ptr noundef %22) #10
  %23 = icmp eq ptr %18, %13
  br i1 %23, label %24, label %16

24:                                               ; preds = %16, %1
  %25 = getelementptr inbounds %struct.owl_dma, ptr %3, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %26) #10
  tail call void @clk_unprepare(ptr noundef %26) #10
  %27 = getelementptr inbounds %struct.owl_dma, ptr %3, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  tail call void @dma_pool_destroy(ptr noundef %28) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_dma_free_chan_resources(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %10, ptr %13, align 4
  store ptr %7, ptr %10, align 4
  store ptr %2, ptr %12, align 4
  store ptr %12, ptr %3, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %11, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %19, ptr %22, align 4
  store ptr %16, ptr %19, align 4
  store ptr %2, ptr %21, align 4
  store ptr %21, ptr %3, align 4
  store volatile ptr %15, ptr %15, align 4
  store ptr %15, ptr %20, align 4
  br label %23

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %28, ptr %31, align 4
  store ptr %25, ptr %28, align 4
  store ptr %2, ptr %30, align 4
  store ptr %30, ptr %3, align 4
  store volatile ptr %24, ptr %24, align 4
  store ptr %24, ptr %29, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %37, ptr %40, align 4
  store ptr %34, ptr %37, align 4
  store ptr %2, ptr %39, align 4
  store ptr %39, ptr %3, align 4
  store volatile ptr %33, ptr %33, align 4
  store ptr %33, ptr %38, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %3, align 4
  %47 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %46, ptr %49, align 4
  store ptr %43, ptr %46, align 4
  store ptr %2, ptr %48, align 4
  store ptr %48, ptr %3, align 4
  store volatile ptr %42, ptr %42, align 4
  store ptr %42, ptr %47, align 4
  br label %50

50:                                               ; preds = %45, %41
  %51 = load ptr, ptr %2, align 8
  %52 = icmp eq ptr %51, %2
  br i1 %52, label %60, label %53

53:                                               ; preds = %53, %50
  %54 = phi ptr [ %58, %53 ], [ %51, %50 ]
  %55 = getelementptr i8, ptr %54, i32 -64
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, -65
  store i32 %57, ptr %55, align 4
  %58 = load ptr, ptr %54, align 4
  %59 = icmp eq ptr %58, %2
  br i1 %59, label %60, label %53

60:                                               ; preds = %53, %50
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_dma_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %8 = icmp eq ptr %2, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  store i32 %7, ptr %2, align 4
  %10 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = icmp sgt i32 %7, %5
  %15 = icmp sge i32 %7, %1
  %16 = icmp slt i32 %5, %1
  br i1 %14, label %21, label %17

17:                                               ; preds = %13
  %18 = or i1 %16, %15
  %19 = or i1 %18, %8
  %20 = xor i1 %18, true
  br i1 %19, label %88, label %25

21:                                               ; preds = %13
  %22 = and i1 %16, %15
  %23 = or i1 %22, %8
  %24 = xor i1 %22, true
  br i1 %23, label %88, label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #10
  %28 = tail call ptr @vchan_find_desc(ptr noundef %0, i32 noundef %1) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.owl_dma_txd, ptr %28, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %85, label %34

34:                                               ; preds = %34, %30
  %35 = phi ptr [ %41, %34 ], [ %32, %30 ]
  %36 = phi i32 [ %40, %34 ], [ 0, %30 ]
  %37 = getelementptr i8, ptr %35, i32 -28
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1048575
  %40 = add i32 %39, %36
  %41 = load ptr, ptr %35, align 4
  %42 = icmp eq ptr %41, %31
  br i1 %42, label %85, label %34

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp ne ptr %45, null
  %49 = icmp ne ptr %47, null
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %85

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.owl_dma_pchan, ptr %45, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 24
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %56 = load ptr, ptr %52, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %58 = and i32 %57, 1073741824
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %85, label %60

60:                                               ; preds = %51
  %61 = load ptr, ptr %52, align 4
  %62 = getelementptr i8, ptr %61, i32 56
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %64 = getelementptr inbounds %struct.owl_dma_txd, ptr %47, i32 0, i32 1
  br label %65

65:                                               ; preds = %69, %60
  %66 = phi ptr [ %64, %60 ], [ %67, %69 ]
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %64
  br i1 %68, label %85, label %69

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %67, i32 -4
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, %63
  br i1 %72, label %73, label %65

73:                                               ; preds = %69
  %74 = load ptr, ptr %64, align 4
  %75 = icmp eq ptr %74, %64
  br i1 %75, label %85, label %76

76:                                               ; preds = %76, %73
  %77 = phi ptr [ %83, %76 ], [ %74, %73 ]
  %78 = phi i32 [ %82, %76 ], [ %55, %73 ]
  %79 = getelementptr i8, ptr %77, i32 -28
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 1048575
  %82 = add i32 %81, %78
  %83 = load ptr, ptr %77, align 4
  %84 = icmp eq ptr %83, %64
  br i1 %84, label %85, label %76

85:                                               ; preds = %76, %73, %65, %51, %43, %34, %30
  %86 = phi i32 [ 0, %43 ], [ %55, %51 ], [ %55, %73 ], [ 0, %30 ], [ %82, %76 ], [ %55, %65 ], [ %40, %34 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #10
  %87 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %86, ptr %87, align 4
  br label %88

88:                                               ; preds = %85, %21, %17
  %89 = phi i1 [ true, %85 ], [ %20, %17 ], [ %24, %21 ]
  %90 = zext i1 %89 to i32
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_dma_issue_pending(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %6 = load volatile ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %10, ptr %13, align 4
  store ptr %6, ptr %10, align 4
  store ptr %5, ptr %12, align 4
  store ptr %12, ptr %9, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %11, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = load volatile ptr, ptr %5, align 4
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %45, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.owl_dma, ptr %22, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.owl_dma, ptr %22, i32 0, i32 7
  %28 = getelementptr inbounds %struct.owl_dma, ptr %22, i32 0, i32 3
  br label %29

29:                                               ; preds = %37, %26
  %30 = phi i32 [ 0, %26 ], [ %38, %37 ]
  %31 = load ptr, ptr %27, align 4
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #10
  %33 = getelementptr %struct.owl_dma_pchan, ptr %31, i32 %30, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store ptr %0, ptr %33, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %32) #10
  br label %41

37:                                               ; preds = %29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %32) #10
  %38 = add nuw i32 %30, 1
  %39 = load i32, ptr %23, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %29, label %41

41:                                               ; preds = %37, %36
  %42 = getelementptr %struct.owl_dma_pchan, ptr %31, i32 %30
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store ptr %42, ptr %18, align 4
  tail call fastcc void @owl_dma_start_next_txd(ptr noundef %0) #10
  br label %45

45:                                               ; preds = %44, %41, %21, %17, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @owl_dma_prep_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %92, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2304, i32 noundef 88) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %92, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.owl_dma_txd, ptr %11, i32 0, i32 1
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.owl_dma_txd, ptr %11, i32 0, i32 1, i32 1
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.owl_dma, ptr %7, i32 0, i32 4
  %17 = getelementptr inbounds %struct.owl_dma_txd, ptr %11, i32 0, i32 2
  br label %18

18:                                               ; preds = %58, %13
  %19 = phi i32 [ 0, %13 ], [ %59, %58 ]
  %20 = phi ptr [ null, %13 ], [ %22, %58 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  %21 = load ptr, ptr %16, align 4
  %22 = call ptr @dma_pool_alloc(ptr noundef %21, i32 noundef 2048, ptr noundef nonnull %6) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %74, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.owl_dma_lli, ptr %22, i32 0, i32 2
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.owl_dma_lli, ptr %22, i32 0, i32 2, i32 1
  store ptr %25, ptr %26, align 4
  %27 = load i32, ptr %6, align 4
  %28 = getelementptr inbounds %struct.owl_dma_lli, ptr %22, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %29 = sub i32 %3, %19
  %30 = call i32 @llvm.umin.i32(i32 %29, i32 1048575)
  %31 = add i32 %19, %2
  %32 = add i32 %19, %1
  %33 = load i8, ptr %17, align 4, !range !15
  %34 = icmp eq i8 %33, 0
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr [9 x i32], ptr %22, i32 0, i32 6
  store i32 5898560, ptr %36, align 4
  %37 = select i1 %34, i32 524288, i32 262144
  store i32 0, ptr %22, align 4
  %38 = getelementptr [9 x i32], ptr %22, i32 0, i32 1
  store i32 %31, ptr %38, align 4
  %39 = getelementptr [9 x i32], ptr %22, i32 0, i32 2
  store i32 %32, ptr %39, align 4
  %40 = getelementptr [9 x i32], ptr %22, i32 0, i32 4
  store i32 0, ptr %40, align 4
  %41 = getelementptr [9 x i32], ptr %22, i32 0, i32 5
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.owl_dma, ptr %35, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 1
  %45 = or i32 %30, 1048576
  %46 = select i1 %44, i32 %30, i32 %45
  %47 = zext i1 %44 to i32
  %48 = or i32 %37, %47
  %49 = getelementptr [9 x i32], ptr %22, i32 0, i32 3
  store i32 %46, ptr %49, align 4
  %50 = getelementptr [9 x i32], ptr %22, i32 0, i32 7
  store i32 %48, ptr %50, align 4
  %51 = load ptr, ptr %15, align 8
  store ptr %25, ptr %15, align 8
  store ptr %14, ptr %25, align 4
  store ptr %51, ptr %26, align 4
  store volatile ptr %25, ptr %51, align 4
  %52 = icmp eq ptr %20, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %24
  %54 = load i32, ptr %28, align 4
  store i32 %54, ptr %20, align 4
  %55 = getelementptr [9 x i32], ptr %20, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %56, 1073741824
  store i32 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %53, %24
  %59 = add i32 %30, %19
  %60 = icmp ult i32 %59, %3
  br i1 %60, label %18, label %61

61:                                               ; preds = %58
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %11, ptr noundef %0) #10
  %62 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 1
  store i32 %4, ptr %62, align 4
  %63 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %63, align 8
  %64 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %64, align 4
  %65 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 1
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 1, i32 1
  store i32 0, ptr %66, align 8
  %67 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %68 = call i32 @_raw_spin_lock_irqsave(ptr noundef %67) #10
  %69 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 2
  %70 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %71 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %72 = load ptr, ptr %71, align 4
  store ptr %69, ptr %71, align 4
  store ptr %70, ptr %69, align 4
  %73 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 2, i32 1
  store ptr %72, ptr %73, align 8
  store volatile ptr %69, ptr %72, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %67, i32 noundef %68) #10
  br label %92

74:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %75 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.dma_chan_dev, ptr %76, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.11) #11
  %78 = load ptr, ptr %14, align 4
  %79 = icmp eq ptr %78, %14
  br i1 %79, label %91, label %80

80:                                               ; preds = %80, %74
  %81 = phi ptr [ %83, %80 ], [ %78, %74 ]
  %82 = getelementptr i8, ptr %81, i32 -40
  %83 = load ptr, ptr %81, align 4
  %84 = getelementptr i8, ptr %81, i32 4
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %85, ptr %86, align 4
  store volatile ptr %83, ptr %85, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %81, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %84, align 4
  %87 = load ptr, ptr %16, align 4
  %88 = getelementptr i8, ptr %81, i32 -4
  %89 = load i32, ptr %88, align 4
  call void @dma_pool_free(ptr noundef %87, ptr noundef %82, i32 noundef %89) #10
  %90 = icmp eq ptr %83, %14
  br i1 %90, label %91, label %80

91:                                               ; preds = %80, %74
  call void @kfree(ptr noundef nonnull %11) #10
  br label %92

92:                                               ; preds = %91, %61, %9, %5
  %93 = phi ptr [ null, %91 ], [ %11, %61 ], [ null, %5 ], [ null, %9 ]
  ret ptr %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @owl_dma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #0 {
  %7 = alloca i32, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2304, i32 noundef 88) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %149, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.owl_dma_txd, ptr %10, i32 0, i32 1
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.owl_dma_txd, ptr %10, i32 0, i32 1, i32 1
  store ptr %13, ptr %14, align 8
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %121, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.owl_dma, ptr %8, i32 0, i32 4
  %18 = icmp eq i32 %3, 1
  %19 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 3, i32 1
  %20 = getelementptr inbounds %struct.owl_dma_txd, ptr %10, i32 0, i32 2
  %21 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 4
  %22 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 3, i32 3
  %23 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 3, i32 2
  %24 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 3, i32 4
  br label %25

25:                                               ; preds = %117, %16
  %26 = phi i32 [ 0, %16 ], [ %118, %117 ]
  %27 = phi ptr [ %1, %16 ], [ %119, %117 ]
  %28 = phi ptr [ null, %16 ], [ %39, %117 ]
  %29 = getelementptr inbounds %struct.scatterlist, ptr %27, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.scatterlist, ptr %27, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp ugt i32 %32, 1048575
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.13) #11
  br label %134

37:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !8
  %38 = load ptr, ptr %17, align 4
  %39 = call ptr @dma_pool_alloc(ptr noundef %38, i32 noundef 2048, ptr noundef nonnull %7) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %42 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dma_chan_dev, ptr %43, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.14) #11
  br label %134

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.owl_dma_lli, ptr %39, i32 0, i32 2
  store volatile ptr %46, ptr %46, align 4
  %47 = getelementptr inbounds %struct.owl_dma_lli, ptr %39, i32 0, i32 2, i32 1
  store ptr %46, ptr %47, align 4
  %48 = load i32, ptr %7, align 4
  %49 = getelementptr inbounds %struct.owl_dma_lli, ptr %39, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br i1 %18, label %50, label %61

50:                                               ; preds = %45
  %51 = load i32, ptr %23, align 4
  %52 = load i8, ptr %20, align 4, !range !15
  %53 = load ptr, ptr %0, align 4
  %54 = load i8, ptr %21, align 4
  %55 = and i8 %54, 63
  %56 = zext i8 %55 to i32
  %57 = load i32, ptr %24, align 4
  %58 = icmp eq i32 %57, 1
  %59 = select i1 %58, i32 268501504, i32 66048
  %60 = or i32 %59, %56
  br label %73

61:                                               ; preds = %45
  %62 = load i32, ptr %19, align 4
  %63 = load i8, ptr %20, align 4, !range !15
  %64 = load ptr, ptr %0, align 4
  switch i32 %3, label %108 [
    i32 0, label %73
    i32 2, label %65
  ]

65:                                               ; preds = %61
  %66 = load i8, ptr %21, align 4
  %67 = and i8 %66, 63
  %68 = zext i8 %67 to i32
  %69 = load i32, ptr %22, align 4
  %70 = icmp eq i32 %69, 1
  %71 = select i1 %70, i32 268699648, i32 264192
  %72 = or i32 %71, %68
  br label %73

73:                                               ; preds = %65, %61, %50
  %74 = phi ptr [ %64, %61 ], [ %53, %50 ], [ %64, %65 ]
  %75 = phi i8 [ %63, %61 ], [ %52, %50 ], [ %63, %65 ]
  %76 = phi i32 [ %30, %61 ], [ %51, %50 ], [ %30, %65 ]
  %77 = phi i32 [ %62, %61 ], [ %30, %50 ], [ %62, %65 ]
  %78 = phi i32 [ 330240, %61 ], [ %60, %50 ], [ %72, %65 ]
  %79 = icmp eq i8 %75, 0
  %80 = and i32 %78, -268435456
  %81 = shl i32 %78, 4
  %82 = and i32 %81, 267386880
  %83 = shl i32 %78, 8
  %84 = and i32 %83, 983040
  %85 = shl i32 %78, 10
  %86 = and i32 %85, 64512
  %87 = or i32 %80, %82
  %88 = or i32 %87, %84
  %89 = or i32 %88, %86
  %90 = or i32 %89, 320
  %91 = getelementptr [9 x i32], ptr %39, i32 0, i32 6
  store i32 %90, ptr %91, align 4
  %92 = select i1 %79, i32 524288, i32 262144
  store i32 0, ptr %39, align 4
  %93 = getelementptr [9 x i32], ptr %39, i32 0, i32 1
  store i32 %77, ptr %93, align 4
  %94 = getelementptr [9 x i32], ptr %39, i32 0, i32 2
  store i32 %76, ptr %94, align 4
  %95 = getelementptr [9 x i32], ptr %39, i32 0, i32 4
  store i32 0, ptr %95, align 4
  %96 = getelementptr [9 x i32], ptr %39, i32 0, i32 5
  store i32 0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.owl_dma, ptr %74, i32 0, i32 10
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 1
  %100 = or i32 %32, 1048576
  %101 = select i1 %99, i32 %32, i32 %100
  %102 = zext i1 %99 to i32
  %103 = or i32 %92, %102
  %104 = getelementptr [9 x i32], ptr %39, i32 0, i32 3
  store i32 %101, ptr %104, align 4
  %105 = getelementptr [9 x i32], ptr %39, i32 0, i32 7
  store i32 %103, ptr %105, align 4
  %106 = load ptr, ptr %14, align 8
  store ptr %46, ptr %14, align 8
  store ptr %13, ptr %46, align 4
  store ptr %106, ptr %47, align 4
  store volatile ptr %46, ptr %106, align 4
  %107 = icmp eq ptr %28, null
  br i1 %107, label %117, label %112

108:                                              ; preds = %61
  %109 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.dma_chan_dev, ptr %110, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.15) #11
  br label %134

112:                                              ; preds = %73
  %113 = load i32, ptr %49, align 4
  store i32 %113, ptr %28, align 4
  %114 = getelementptr [9 x i32], ptr %28, i32 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = or i32 %115, 1073741824
  store i32 %116, ptr %114, align 4
  br label %117

117:                                              ; preds = %112, %73
  %118 = add nuw i32 %26, 1
  %119 = call ptr @sg_next(ptr noundef %27) #10
  %120 = icmp eq i32 %118, %2
  br i1 %120, label %121, label %25

121:                                              ; preds = %117, %12
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %10, ptr noundef %0) #10
  %122 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %10, i32 0, i32 1
  store i32 %4, ptr %122, align 4
  %123 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %10, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %123, align 8
  %124 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %10, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %124, align 4
  %125 = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 1
  store i32 0, ptr %125, align 4
  %126 = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 1, i32 1
  store i32 0, ptr %126, align 8
  %127 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %128 = call i32 @_raw_spin_lock_irqsave(ptr noundef %127) #10
  %129 = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 2
  %130 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %131 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %132 = load ptr, ptr %131, align 4
  store ptr %129, ptr %131, align 4
  store ptr %130, ptr %129, align 4
  %133 = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 2, i32 1
  store ptr %132, ptr %133, align 8
  store volatile ptr %129, ptr %132, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %127, i32 noundef %128) #10
  br label %149

134:                                              ; preds = %108, %41, %34
  %135 = load ptr, ptr %13, align 4
  %136 = icmp eq ptr %135, %13
  br i1 %136, label %148, label %137

137:                                              ; preds = %137, %134
  %138 = phi ptr [ %140, %137 ], [ %135, %134 ]
  %139 = getelementptr i8, ptr %138, i32 -40
  %140 = load ptr, ptr %138, align 4
  %141 = getelementptr i8, ptr %138, i32 4
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  store ptr %142, ptr %143, align 4
  store volatile ptr %140, ptr %142, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %138, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %141, align 4
  %144 = load ptr, ptr %17, align 4
  %145 = getelementptr i8, ptr %138, i32 -4
  %146 = load i32, ptr %145, align 4
  call void @dma_pool_free(ptr noundef %144, ptr noundef %139, i32 noundef %146) #10
  %147 = icmp eq ptr %140, %13
  br i1 %147, label %148, label %137

148:                                              ; preds = %137, %134
  call void @kfree(ptr noundef nonnull %10) #10
  br label %149

149:                                              ; preds = %148, %121, %6
  %150 = phi ptr [ null, %148 ], [ %10, %121 ], [ null, %6 ]
  ret ptr %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @owl_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = udiv i32 %2, %3
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2304, i32 noundef 88) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %146, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.owl_dma_txd, ptr %11, i32 0, i32 1
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.owl_dma_txd, ptr %11, i32 0, i32 1, i32 1
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.owl_dma_txd, ptr %11, i32 0, i32 2
  store i8 1, ptr %16, align 4
  %17 = icmp ugt i32 %3, %2
  br i1 %17, label %114, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.owl_dma, ptr %8, i32 0, i32 4
  %20 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 3, i32 1
  %21 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 4
  %22 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 3, i32 3
  %23 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 3, i32 2
  %24 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 3, i32 4
  %25 = or i32 %3, 1048576
  %26 = call i32 @llvm.umax.i32(i32 %9, i32 1)
  br label %27

27:                                               ; preds = %105, %18
  %28 = phi i32 [ 0, %18 ], [ %106, %105 ]
  %29 = phi i32 [ 0, %18 ], [ %65, %105 ]
  %30 = phi i32 [ 0, %18 ], [ %66, %105 ]
  %31 = phi ptr [ null, %18 ], [ %97, %105 ]
  %32 = phi ptr [ null, %18 ], [ %34, %105 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !8
  %33 = load ptr, ptr %19, align 4
  %34 = call ptr @dma_pool_alloc(ptr noundef %33, i32 noundef 2048, ptr noundef nonnull %7) #10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br label %127

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.owl_dma_lli, ptr %34, i32 0, i32 2
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.owl_dma_lli, ptr %34, i32 0, i32 2, i32 1
  store ptr %38, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = getelementptr inbounds %struct.owl_dma_lli, ptr %34, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  switch i32 %4, label %127 [
    i32 1, label %42
    i32 2, label %53
    i32 0, label %64
  ]

42:                                               ; preds = %37
  %43 = mul i32 %28, %3
  %44 = add i32 %43, %1
  %45 = load i32, ptr %23, align 4
  %46 = load i8, ptr %21, align 4
  %47 = and i8 %46, 63
  %48 = zext i8 %47 to i32
  %49 = load i32, ptr %24, align 4
  %50 = icmp eq i32 %49, 1
  %51 = select i1 %50, i32 268501504, i32 66048
  %52 = or i32 %51, %48
  br label %64

53:                                               ; preds = %37
  %54 = load i32, ptr %20, align 4
  %55 = mul i32 %28, %3
  %56 = add i32 %55, %1
  %57 = load i8, ptr %21, align 4
  %58 = and i8 %57, 63
  %59 = zext i8 %58 to i32
  %60 = load i32, ptr %22, align 4
  %61 = icmp eq i32 %60, 1
  %62 = select i1 %61, i32 268699648, i32 264192
  %63 = or i32 %62, %59
  br label %64

64:                                               ; preds = %53, %42, %37
  %65 = phi i32 [ %45, %42 ], [ %56, %53 ], [ %29, %37 ]
  %66 = phi i32 [ %44, %42 ], [ %54, %53 ], [ %30, %37 ]
  %67 = phi i32 [ %52, %42 ], [ %63, %53 ], [ 330240, %37 ]
  %68 = load i8, ptr %16, align 4, !range !15
  %69 = icmp eq i8 %68, 0
  %70 = load ptr, ptr %0, align 4
  %71 = and i32 %67, -268435456
  %72 = shl i32 %67, 4
  %73 = and i32 %72, 267386880
  %74 = shl i32 %67, 8
  %75 = and i32 %74, 983040
  %76 = shl i32 %67, 10
  %77 = and i32 %76, 64512
  %78 = or i32 %71, %73
  %79 = or i32 %78, %75
  %80 = or i32 %79, %77
  %81 = or i32 %80, 320
  %82 = getelementptr [9 x i32], ptr %34, i32 0, i32 6
  store i32 %81, ptr %82, align 4
  %83 = select i1 %69, i32 524288, i32 262144
  store i32 0, ptr %34, align 4
  %84 = getelementptr [9 x i32], ptr %34, i32 0, i32 1
  store i32 %66, ptr %84, align 4
  %85 = getelementptr [9 x i32], ptr %34, i32 0, i32 2
  store i32 %65, ptr %85, align 4
  %86 = getelementptr [9 x i32], ptr %34, i32 0, i32 4
  store i32 0, ptr %86, align 4
  %87 = getelementptr [9 x i32], ptr %34, i32 0, i32 5
  store i32 0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.owl_dma, ptr %70, i32 0, i32 10
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 1
  %91 = select i1 %90, i32 %3, i32 %25
  %92 = zext i1 %90 to i32
  %93 = or i32 %83, %92
  %94 = getelementptr [9 x i32], ptr %34, i32 0, i32 3
  store i32 %91, ptr %94, align 4
  %95 = getelementptr [9 x i32], ptr %34, i32 0, i32 7
  store i32 %93, ptr %95, align 4
  %96 = icmp eq ptr %31, null
  %97 = select i1 %96, ptr %34, ptr %31
  %98 = load ptr, ptr %15, align 8
  store ptr %38, ptr %15, align 8
  store ptr %14, ptr %38, align 4
  store ptr %98, ptr %39, align 4
  store volatile ptr %38, ptr %98, align 4
  %99 = icmp eq ptr %32, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %64
  %101 = load i32, ptr %41, align 4
  store i32 %101, ptr %32, align 4
  %102 = getelementptr [9 x i32], ptr %32, i32 0, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = or i32 %103, 1073741824
  store i32 %104, ptr %102, align 4
  br label %105

105:                                              ; preds = %100, %64
  %106 = add nuw i32 %28, 1
  %107 = icmp eq i32 %106, %26
  br i1 %107, label %108, label %27

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.owl_dma_lli, ptr %97, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  store i32 %110, ptr %34, align 4
  %111 = getelementptr [9 x i32], ptr %34, i32 0, i32 6
  %112 = load i32, ptr %111, align 4
  %113 = or i32 %112, 1073741824
  store i32 %113, ptr %111, align 4
  br label %114

114:                                              ; preds = %108, %13
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %11, ptr noundef %0) #10
  %115 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 1
  store i32 %5, ptr %115, align 4
  %116 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %116, align 8
  %117 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %117, align 4
  %118 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 1
  store i32 0, ptr %118, align 4
  %119 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 1, i32 1
  store i32 0, ptr %119, align 8
  %120 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %121 = call i32 @_raw_spin_lock_irqsave(ptr noundef %120) #10
  %122 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 2
  %123 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %124 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %125 = load ptr, ptr %124, align 4
  store ptr %122, ptr %124, align 4
  store ptr %123, ptr %122, align 4
  %126 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 2, i32 1
  store ptr %125, ptr %126, align 8
  store volatile ptr %122, ptr %125, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %120, i32 noundef %121) #10
  br label %146

127:                                              ; preds = %37, %36
  %128 = phi ptr [ @.str.14, %36 ], [ @.str.15, %37 ]
  %129 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.dma_chan_dev, ptr %130, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %131, ptr noundef nonnull %128) #11
  %132 = load ptr, ptr %14, align 4
  %133 = icmp eq ptr %132, %14
  br i1 %133, label %145, label %134

134:                                              ; preds = %134, %127
  %135 = phi ptr [ %137, %134 ], [ %132, %127 ]
  %136 = getelementptr i8, ptr %135, i32 -40
  %137 = load ptr, ptr %135, align 4
  %138 = getelementptr i8, ptr %135, i32 4
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  store ptr %139, ptr %140, align 4
  store volatile ptr %137, ptr %139, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %135, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %138, align 4
  %141 = load ptr, ptr %19, align 4
  %142 = getelementptr i8, ptr %135, i32 -4
  %143 = load i32, ptr %142, align 4
  call void @dma_pool_free(ptr noundef %141, ptr noundef %136, i32 noundef %143) #10
  %144 = icmp eq ptr %137, %14
  br i1 %144, label %145, label %134

145:                                              ; preds = %134, %127
  call void @kfree(ptr noundef nonnull %11) #10
  br label %146

146:                                              ; preds = %145, %114, %6
  %147 = phi ptr [ null, %145 ], [ %11, %114 ], [ null, %6 ]
  ret ptr %147
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @owl_dma_config(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %11, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi i32 [ 0, %10 ], [ -22, %6 ], [ -22, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_dma_pause(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %6 = getelementptr inbounds %struct.owl_dma_pchan, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 40) #10, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_dma_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #10
  %12 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %13 = getelementptr inbounds %struct.owl_dma_pchan, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 40) #10, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #10
  br label %15

15:                                               ; preds = %9, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_dma_terminate_all(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store ptr %2, ptr %2, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  call fastcc void @owl_dma_phy_free(ptr noundef %3, ptr noundef %0)
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.owl_dma_txd, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %13, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.owl_dma, ptr %22, i32 0, i32 4
  br label %24

24:                                               ; preds = %24, %19
  %25 = phi ptr [ %17, %19 ], [ %27, %24 ]
  %26 = getelementptr i8, ptr %25, i32 -40
  %27 = load ptr, ptr %25, align 4
  %28 = getelementptr i8, ptr %25, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %27, ptr %29, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %28, align 4
  %31 = load ptr, ptr %23, align 4
  %32 = getelementptr i8, ptr %25, i32 -4
  %33 = load i32, ptr %32, align 4
  call void @dma_pool_free(ptr noundef %31, ptr noundef %26, i32 noundef %33) #10
  %34 = icmp eq ptr %27, %16
  br i1 %34, label %35, label %24

35:                                               ; preds = %24, %15
  call void @kfree(ptr noundef nonnull %13) #10
  store ptr null, ptr %12, align 4
  br label %36

36:                                               ; preds = %35, %11
  %37 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %41, ptr %44, align 4
  store ptr %38, ptr %41, align 4
  store ptr %2, ptr %43, align 4
  store ptr %43, ptr %4, align 4
  store volatile ptr %37, ptr %37, align 4
  store ptr %37, ptr %42, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %50, ptr %53, align 4
  store ptr %47, ptr %50, align 4
  store ptr %2, ptr %52, align 4
  store ptr %52, ptr %4, align 4
  store volatile ptr %46, ptr %46, align 4
  store ptr %46, ptr %51, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %56 = load volatile ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %59, ptr %62, align 4
  store ptr %56, ptr %59, align 4
  store ptr %2, ptr %61, align 4
  store ptr %61, ptr %4, align 4
  store volatile ptr %55, ptr %55, align 4
  store ptr %55, ptr %60, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %4, align 4
  %69 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  store ptr %68, ptr %71, align 4
  store ptr %65, ptr %68, align 4
  store ptr %2, ptr %70, align 4
  store ptr %70, ptr %4, align 4
  store volatile ptr %64, ptr %64, align 4
  store ptr %64, ptr %69, align 4
  br label %72

72:                                               ; preds = %67, %63
  %73 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %74 = load volatile ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %4, align 4
  %78 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %77, ptr %80, align 4
  store ptr %74, ptr %77, align 4
  store ptr %2, ptr %79, align 4
  store ptr %79, ptr %4, align 4
  store volatile ptr %73, ptr %73, align 4
  store ptr %73, ptr %78, align 4
  br label %81

81:                                               ; preds = %76, %72
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_dma_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !17
  store i32 %7, ptr %3, align 4
  %8 = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %9, i32 noundef 0) #10
  %11 = load i32, ptr %8, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 7
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ %10, %13 ], [ %26, %15 ]
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr %struct.owl_dma_pchan, ptr %17, i32 %16, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 68
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #10, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  call void @arm_heavy_mb() #10
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr i8, ptr %22, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 255) #10, !srcloc !11
  %24 = load i32, ptr %8, align 4
  %25 = add nuw i32 %16, 1
  %26 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %24, i32 noundef %25) #10
  %27 = load i32, ptr %8, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %15, label %29

29:                                               ; preds = %15, %2
  %30 = load i32, ptr %3, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  call void @arm_heavy_mb() #10
  %31 = load ptr, ptr %5, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #10, !srcloc !11
  %32 = load i32, ptr %8, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 7
  br label %36

36:                                               ; preds = %64, %34
  %37 = phi i32 [ 0, %34 ], [ %65, %64 ]
  %38 = load ptr, ptr %35, align 4
  %39 = getelementptr %struct.owl_dma_pchan, ptr %38, i32 %37, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 64
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #10, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %43 = load ptr, ptr %39, align 4
  %44 = getelementptr i8, ptr %43, i32 68
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #10, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %46 = and i32 %45, %42
  %47 = load ptr, ptr %5, align 4
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #10, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !17
  %49 = load ptr, ptr %5, align 4
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #10, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !17
  %51 = icmp eq i32 %46, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %36
  %53 = shl nuw i32 1, %37
  %54 = and i32 %50, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load ptr, ptr %39, align 4
  %58 = getelementptr i8, ptr %57, i32 68
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #10, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  call void @arm_heavy_mb() #10
  %60 = load ptr, ptr %39, align 4
  %61 = getelementptr i8, ptr %60, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 255) #10, !srcloc !11
  %62 = load i32, ptr %3, align 4
  %63 = or i32 %62, %53
  store i32 %63, ptr %3, align 4
  br label %64

64:                                               ; preds = %56, %52, %36
  %65 = add nuw i32 %37, 1
  %66 = load i32, ptr %8, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %36, label %68

68:                                               ; preds = %64, %29
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %69 = load i16, ptr %4, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %71 = load i32, ptr %8, align 4
  %72 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %71, i32 noundef 0) #10
  %73 = load i32, ptr %8, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %129

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.owl_dma, ptr %1, i32 0, i32 7
  %77 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  br label %78

78:                                               ; preds = %123, %75
  %79 = phi i32 [ %72, %75 ], [ %126, %123 ]
  %80 = load ptr, ptr %76, align 4
  %81 = getelementptr %struct.owl_dma_pchan, ptr %80, i32 %79, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = getelementptr %struct.owl_dma_pchan, ptr %80, i32 %79
  %86 = load ptr, ptr %77, align 4
  %87 = load i32, ptr %85, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.17, i32 noundef %87) #11
  br label %123

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.virt_dma_chan, ptr %82, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %89) #10
  %90 = getelementptr inbounds %struct.owl_dma_vchan, ptr %82, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %120, label %93

93:                                               ; preds = %88
  store ptr null, ptr %90, align 4
  %94 = load i32, ptr %91, align 4
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %97, !prof !9

96:                                               ; preds = %93
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !24
  unreachable

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %91, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.dma_chan, ptr %99, i32 0, i32 3
  store i32 %94, ptr %100, align 4
  store i32 0, ptr %91, align 4
  %101 = getelementptr inbounds %struct.virt_dma_desc, ptr %91, i32 0, i32 2
  %102 = getelementptr inbounds %struct.virt_dma_chan, ptr %99, i32 0, i32 7
  %103 = getelementptr inbounds %struct.virt_dma_chan, ptr %99, i32 0, i32 7, i32 1
  %104 = load ptr, ptr %103, align 4
  store ptr %101, ptr %103, align 4
  store ptr %102, ptr %101, align 4
  %105 = getelementptr inbounds %struct.virt_dma_desc, ptr %91, i32 0, i32 2, i32 1
  store ptr %104, ptr %105, align 4
  store volatile ptr %101, ptr %104, align 4
  %106 = getelementptr inbounds %struct.virt_dma_chan, ptr %99, i32 0, i32 1, i32 1
  %107 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %106) #10
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = getelementptr inbounds %struct.virt_dma_chan, ptr %99, i32 0, i32 1
  call void @__tasklet_schedule(ptr noundef %110) #10
  br label %111

111:                                              ; preds = %109, %97
  %112 = getelementptr inbounds %struct.virt_dma_chan, ptr %82, i32 0, i32 6
  %113 = load volatile ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, %112
  %115 = getelementptr i8, ptr %113, i32 -68
  %116 = icmp eq ptr %115, null
  %117 = or i1 %114, %116
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  call fastcc void @owl_dma_start_next_txd(ptr noundef nonnull %82)
  br label %120

119:                                              ; preds = %111
  call fastcc void @owl_dma_phy_free(ptr noundef %1, ptr noundef nonnull %82)
  br label %120

120:                                              ; preds = %119, %118, %88
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %121 = load i16, ptr %89, align 4
  %122 = add i16 %121, 1
  store i16 %122, ptr %89, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %123

123:                                              ; preds = %120, %84
  %124 = load i32, ptr %8, align 4
  %125 = add nuw i32 %79, 1
  %126 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %124, i32 noundef %125) #10
  %127 = load i32, ptr %8, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %78, label %129

129:                                              ; preds = %123, %68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_dma_desc_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %24, label %6, !prof !9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.owl_dma_txd, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.owl_dma, ptr %4, i32 0, i32 4
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi ptr [ %8, %10 ], [ %15, %12 ]
  %14 = getelementptr i8, ptr %13, i32 -40
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr i8, ptr %13, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %15, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr i8, ptr %13, i32 -4
  %21 = load i32, ptr %20, align 4
  tail call void @dma_pool_free(ptr noundef %19, ptr noundef %14, i32 noundef %21) #10
  %22 = icmp eq ptr %15, %7
  br i1 %22, label %23, label %12

23:                                               ; preds = %12, %6
  tail call void @kfree(ptr noundef nonnull %0) #10
  br label %24

24:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_enable(ptr noundef %0) unnamed_addr #7 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %7, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @owl_dma_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i8
  %8 = and i32 %6, 255
  %9 = getelementptr inbounds %struct.owl_dma, ptr %4, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %8, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @dma_get_any_slave_channel(ptr noundef %4) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.owl_dma_vchan, ptr %13, i32 0, i32 4
  store i8 %7, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %12, %2
  %18 = phi ptr [ %13, %15 ], [ null, %2 ], [ null, %12 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @owl_dma_start_next_txd(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  %6 = getelementptr i8, ptr %4, i32 -68
  %7 = select i1 %5, ptr null, ptr %6
  %8 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2
  %11 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  %15 = getelementptr inbounds %struct.owl_dma_vchan, ptr %0, i32 0, i32 2
  store ptr %7, ptr %15, align 4
  %16 = getelementptr inbounds %struct.owl_dma, ptr %2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 44
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !17
  %20 = load i32, ptr %9, align 4
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %24, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !26
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr i8, ptr %25, i32 44
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !17
  %28 = load i32, ptr %9, align 4
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %24, label %32

32:                                               ; preds = %24, %1
  %33 = getelementptr inbounds %struct.owl_dma_txd, ptr %7, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.owl_dma_txd, ptr %7, i32 0, i32 2
  %36 = load i8, ptr %35, align 4, !range !15
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i32 2, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %39 = getelementptr inbounds %struct.owl_dma_pchan, ptr %9, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 1073741824) #10, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %41 = load ptr, ptr %39, align 4
  %42 = getelementptr i8, ptr %41, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 1280) #10, !srcloc !11
  %43 = getelementptr i8, ptr %34, i32 -4
  %44 = load i32, ptr %43, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %45 = load ptr, ptr %39, align 4
  %46 = getelementptr i8, ptr %45, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #10, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %47 = load ptr, ptr %39, align 4
  %48 = getelementptr i8, ptr %47, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %38) #10, !srcloc !11
  %49 = load ptr, ptr %39, align 4
  %50 = getelementptr i8, ptr %49, i32 68
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  %52 = load ptr, ptr %39, align 4
  %53 = getelementptr i8, ptr %52, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 255) #10, !srcloc !11
  %54 = getelementptr inbounds %struct.owl_dma, ptr %2, i32 0, i32 3
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #10
  %56 = load i32, ptr %9, align 4
  %57 = shl nuw i32 1, %56
  %58 = load ptr, ptr %16, align 4
  %59 = getelementptr i8, ptr %58, i32 16
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !27
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !28
  tail call void @arm_heavy_mb() #10
  %61 = load ptr, ptr %16, align 4
  %62 = getelementptr i8, ptr %61, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %57) #10, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %55) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %63 = load ptr, ptr %39, align 4
  %64 = getelementptr i8, ptr %63, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 1) #10, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @owl_dma_phy_free(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.owl_dma_vchan, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %5 = getelementptr inbounds %struct.owl_dma_pchan, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #10, !srcloc !11
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 68
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 255) #10, !srcloc !11
  %13 = getelementptr inbounds %struct.owl_dma, ptr %0, i32 0, i32 3
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #10
  %15 = load i32, ptr %4, align 4
  %16 = shl nuw i32 1, %15
  %17 = getelementptr inbounds %struct.owl_dma, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !27
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !28
  tail call void @arm_heavy_mb() #10
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %16) #10, !srcloc !11
  %23 = load ptr, ptr %17, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !17
  %25 = load i32, ptr %4, align 4
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.16, i32 noundef %25) #11
  %32 = load i32, ptr %4, align 4
  %33 = shl nuw i32 1, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  %34 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %33) #10, !srcloc !11
  br label %35

35:                                               ; preds = %29, %2
  %36 = getelementptr inbounds %struct.owl_dma_pchan, ptr %4, i32 0, i32 2
  store ptr null, ptr %36, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #10
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!10 = !{i64 2153178933}
!11 = !{i64 5072946}
!12 = !{i64 2153129743}
!13 = !{i64 5073364}
!14 = !{i64 2153178117}
!15 = !{i8 0, i8 2}
!16 = !{i64 2153177652}
!17 = !{i64 2153179386}
!18 = !{i64 2153177152}
!19 = !{i64 2153177337}
!20 = !{i64 2148909651}
!21 = !{i64 2148905475}
!22 = !{i64 2148905550, i64 2148905577, i64 2148905624, i64 2148905646, i64 2148905674, i64 2148905694}
!23 = !{i64 2148932654}
!24 = !{i64 2153128807, i64 2153129294, i64 2153128844, i64 2153128900, i64 2153128934, i64 2153128958, i64 2153128999, i64 2153129020, i64 2153129048, i64 2153129082}
!25 = !{i64 2153200456}
!26 = !{i64 2153200298}
!27 = !{i64 2153178442}
!28 = !{i64 2153178624}
