; ModuleID = '/llk/IR/drivers/dma/imx-dma.c_pt.bc'
source_filename = "../drivers/dma/imx-dma.c"
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
%struct.imxdma_engine = type { ptr, %struct.dma_device, ptr, ptr, ptr, %struct.spinlock, [2 x %struct.imx_dma_2d_config], [16 x %struct.imxdma_channel], i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.imx_dma_2d_config = type { i16, i16, i16, i32 }
%struct.imxdma_channel = type { i32, %struct.timer_list, ptr, i32, %struct.tasklet_struct, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.dma_chan, %struct.dma_async_tx_descriptor, i32, i32, ptr, i32, i32, i8, i32, i32, %struct.dma_slave_config }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.imxdma_desc = type { %struct.list_head, %struct.dma_async_tx_descriptor, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.imxdma_filter_data = type { ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_imx_dma__230_1251_imxdma_module_init4 = internal global ptr @imxdma_module_init, section ".initcall4.init", align 4
@__UNIQUE_ID_author231 = internal constant [66 x i8] c"imx_dma.author=Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [36 x i8] c"imx_dma.description=i.MX dma driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [33 x i8] c"imx_dma.file=drivers/dma/imx-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [20 x i8] c"imx_dma.license=GPL\00", section ".modinfo", align 1
@imxdma_driver = internal global %struct.platform_driver { ptr null, ptr @imxdma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_dma_of_dev_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"imx-dma\00", align 1
@imx_dma_of_dev_id = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx1-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Can't register IRQ for DMA\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Can't register ERRIRQ for DMA\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Can't register IRQ %d for DMA channel %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"unable to register\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"unable to register of_dma_controller\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.9 = private unnamed_addr constant [37 x i8] c"DMA timeout on channel %d -%s%s%s%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" burst\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" request\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c" transfer\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c" buffer\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"%s: channel: %d couldn't xfer desc\0A\00", align 1
@__func__.imxdma_tasklet = private unnamed_addr constant [15 x i8] c"imxdma_tasklet\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"%s channel: %d bad dma mode\0A\00", align 1
@__func__.imxdma_xfer_desc = private unnamed_addr constant [17 x i8] c"imxdma_xfer_desc\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.17 = private unnamed_addr constant [41 x i8] c"%s: channel: %d couldn't issue DMA xfer\0A\00", align 1
@__func__.imxdma_issue_pending = private unnamed_addr constant [21 x i8] c"imxdma_issue_pending\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__initcall__kmod_imx_dma__230_1251_imxdma_module_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imxdma_module_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @imxdma_driver, ptr noundef nonnull @imxdma_probe, ptr noundef null) #14
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imxdma_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 5108, i32 noundef 3520) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %142, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 4
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #14
  %7 = ptrtoint ptr %6 to i32
  %8 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 8
  store i32 %7, ptr %8, align 4
  %9 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #14
  %10 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %9) #14
  %11 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = ptrtoint ptr %10 to i32
  br label %142

15:                                               ; preds = %5
  %16 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #14
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %142, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #14
  %20 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 4
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = ptrtoint ptr %19 to i32
  br label %142

24:                                               ; preds = %18
  %25 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #14
  %26 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 3
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = ptrtoint ptr %25 to i32
  br label %142

30:                                               ; preds = %24
  %31 = load ptr, ptr %20, align 4
  %32 = tail call i32 @clk_prepare(ptr noundef %31) #14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %142

34:                                               ; preds = %30
  %35 = tail call i32 @clk_enable(ptr noundef %31) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @clk_unprepare(ptr noundef %31) #14
  br label %142

38:                                               ; preds = %34
  %39 = load ptr, ptr %26, align 4
  %40 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %139

42:                                               ; preds = %38
  %43 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 2) #14, !srcloc !8
  %44 = load i32, ptr %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %16, ptr noundef nonnull @dma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.4) #15
  br label %136

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 9
  store i32 %16, ptr %52, align 4
  %53 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #14
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %136, label %55

55:                                               ; preds = %51
  %56 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %53, ptr noundef nonnull @imxdma_err_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.5) #15
  br label %136

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 10
  store i32 %53, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %42
  %63 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 1) #14, !srcloc !8
  %64 = load ptr, ptr %11, align 4
  %65 = getelementptr i8, ptr %64, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 65535) #14, !srcloc !8
  %66 = load ptr, ptr %11, align 4
  %67 = getelementptr i8, ptr %66, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 65535) #14, !srcloc !8
  %68 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 3
  store volatile ptr %68, ptr %68, align 4
  %69 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 3, i32 1
  store ptr %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %70) #14
  tail call void @_set_bit(i32 noundef 12, ptr noundef %70) #14
  tail call void @_set_bit(i32 noundef 0, ptr noundef %70) #14
  tail call void @_set_bit(i32 noundef 13, ptr noundef %70) #14
  %71 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 6, i32 0, i32 3
  store i32 0, ptr %71, align 4
  %72 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 6, i32 1, i32 3
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1
  %74 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 5
  store i32 0, ptr %74, align 4
  br label %75

75:                                               ; preds = %88, %62
  %76 = phi i32 [ 0, %62 ], [ %104, %88 ]
  %77 = load i32, ptr %8, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %75
  %80 = add i32 %76, %16
  %81 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %80, ptr noundef nonnull @dma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %3) #14
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 21
  store i32 %80, ptr %84, align 4
  %85 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 1
  tail call void @init_timer_key(ptr noundef %85, ptr noundef nonnull @imxdma_watchdog, i32 noundef 0, ptr noundef null, ptr noundef null) #14
  br label %88

86:                                               ; preds = %79
  %87 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.6, i32 noundef %80, i32 noundef %76) #15
  br label %136

88:                                               ; preds = %83, %75
  %89 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 2
  store ptr %3, ptr %89, align 4
  %90 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 6
  store volatile ptr %90, ptr %90, align 4
  %91 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 6, i32 1
  store ptr %90, ptr %91, align 4
  %92 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 5
  store volatile ptr %92, ptr %92, align 4
  %93 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 5, i32 1
  store ptr %92, ptr %93, align 4
  %94 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 7
  store volatile ptr %94, ptr %94, align 4
  %95 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 7, i32 1
  store ptr %94, ptr %95, align 4
  %96 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 4
  tail call void @tasklet_setup(ptr noundef %96, ptr noundef nonnull @imxdma_tasklet) #14
  %97 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 12
  store ptr %73, ptr %97, align 4
  %98 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 12, i32 2
  store i32 1, ptr %98, align 4
  %99 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 12, i32 3
  store i32 1, ptr %99, align 4
  %100 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 3
  store i32 %76, ptr %100, align 4
  %101 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 12, i32 8
  %102 = load ptr, ptr %69, align 4
  store ptr %101, ptr %69, align 4
  store ptr %68, ptr %101, align 4
  %103 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %76, i32 12, i32 8, i32 1
  store ptr %102, ptr %103, align 4
  store volatile ptr %101, ptr %102, align 4
  %104 = add nuw nsw i32 %76, 1
  %105 = icmp eq i32 %104, 16
  br i1 %105, label %106, label %75

106:                                              ; preds = %88
  %107 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 15
  store ptr %2, ptr %107, align 4
  %108 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 27
  store ptr @imxdma_alloc_chan_resources, ptr %108, align 4
  %109 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 29
  store ptr @imxdma_free_chan_resources, ptr %109, align 4
  %110 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 49
  store ptr @imxdma_tx_status, ptr %110, align 4
  %111 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 39
  store ptr @imxdma_prep_slave_sg, ptr %111, align 4
  %112 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 40
  store ptr @imxdma_prep_dma_cyclic, ptr %112, align 4
  %113 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 30
  store ptr @imxdma_prep_dma_memcpy, ptr %113, align 4
  %114 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 41
  store ptr @imxdma_prep_dma_interleaved, ptr %114, align 4
  %115 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 44
  store ptr @imxdma_config, ptr %115, align 4
  %116 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 47
  store ptr @imxdma_terminate_all, ptr %116, align 4
  %117 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 50
  store ptr @imxdma_issue_pending, ptr %117, align 4
  %118 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %118, align 8
  %119 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 10
  store i32 2, ptr %119, align 4
  %120 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 20
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %106
  store i32 16777215, ptr %121, align 4
  br label %124

124:                                              ; preds = %123, %106
  %125 = tail call i32 @dma_async_device_register(ptr noundef %73) #14
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #15
  br label %136

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %130 = load ptr, ptr %129, align 8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %142, label %132

132:                                              ; preds = %128
  %133 = tail call i32 @of_dma_controller_register(ptr noundef nonnull %130, ptr noundef nonnull @imxdma_xlate, ptr noundef nonnull %3) #14
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #15
  tail call void @dma_async_device_unregister(ptr noundef %73) #14
  br label %136

136:                                              ; preds = %135, %127, %86, %58, %51, %49
  %137 = phi i32 [ %47, %49 ], [ %56, %58 ], [ %81, %86 ], [ %125, %127 ], [ %133, %135 ], [ %53, %51 ]
  %138 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %138) #14
  tail call void @clk_unprepare(ptr noundef %138) #14
  br label %139

139:                                              ; preds = %136, %38
  %140 = phi i32 [ %40, %38 ], [ %137, %136 ]
  %141 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %141) #14
  tail call void @clk_unprepare(ptr noundef %141) #14
  br label %142

142:                                              ; preds = %139, %132, %128, %37, %30, %28, %22, %15, %13, %1
  %143 = phi i32 [ %14, %13 ], [ %23, %22 ], [ %29, %28 ], [ %140, %139 ], [ -12, %1 ], [ %16, %15 ], [ 0, %132 ], [ 0, %128 ], [ %35, %37 ], [ %32, %30 ]
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imxdma_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  tail call void @disable_irq(i32 noundef %9) #14
  %10 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  tail call void @disable_irq(i32 noundef %11) #14
  br label %12

12:                                               ; preds = %7, %1
  br label %13

13:                                               ; preds = %20, %12
  %14 = phi i32 [ %22, %20 ], [ 0, %12 ]
  %15 = load i32, ptr %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %14, i32 21
  %19 = load i32, ptr %18, align 4
  tail call void @disable_irq(i32 noundef %19) #14
  br label %20

20:                                               ; preds = %17, %13
  %21 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 7, i32 %14, i32 4
  tail call void @tasklet_kill(ptr noundef %21) #14
  %22 = add nuw nsw i32 %14, 1
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %24, label %13

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1
  tail call void @dma_async_device_unregister(ptr noundef %25) #14
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @of_dma_controller_free(ptr noundef nonnull %27) #14
  br label %30

30:                                               ; preds = %29, %24
  %31 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  tail call void @clk_disable(ptr noundef %32) #14
  tail call void @clk_unprepare(ptr noundef %32) #14
  %33 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  tail call void @clk_disable(ptr noundef %34) #14
  tail call void @clk_unprepare(ptr noundef %34) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #14
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @imxdma_err_handler(i32 noundef %0, ptr noundef %1)
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #14, !srcloc !9
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #14, !srcloc !8
  br label %15

15:                                               ; preds = %141, %8
  %16 = phi i32 [ 0, %8 ], [ %142, %141 ]
  %17 = shl nuw nsw i32 1, %16
  %18 = and i32 %17, %12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %141, label %20

20:                                               ; preds = %15
  %21 = getelementptr %struct.imxdma_engine, ptr %1, i32 0, i32 7, i32 %16
  %22 = getelementptr %struct.imxdma_engine, ptr %1, i32 0, i32 7, i32 %16, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.imxdma_engine, ptr %1, i32 0, i32 7, i32 %16, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.imxdma_engine, ptr %23, i32 0, i32 5
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #14
  %28 = getelementptr %struct.imxdma_engine, ptr %1, i32 0, i32 7, i32 %16, i32 7
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #14
  br i1 %30, label %130, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.imxdma_desc, ptr %29, i32 0, i32 13
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %130, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @sg_next(ptr noundef nonnull %33) #14
  store ptr %36, ptr %32, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %119, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.imxdma_desc, ptr %29, i32 0, i32 1, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 -72
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.imxdma_desc, ptr %29, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.scatterlist, ptr %36, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @llvm.umin.i32(i32 %44, i32 %46) #14
  %48 = icmp eq i32 %44, -1
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  %50 = sub i32 %44, %47
  store i32 %50, ptr %43, align 4
  br label %51

51:                                               ; preds = %49, %38
  %52 = getelementptr inbounds %struct.imxdma_desc, ptr %29, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 2
  %55 = getelementptr inbounds %struct.scatterlist, ptr %36, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %40, i32 -68
  %58 = load i32, ptr %57, align 4
  %59 = shl i32 %58, 6
  br i1 %54, label %60, label %65

60:                                               ; preds = %51
  %61 = add i32 %59, 132
  %62 = getelementptr inbounds %struct.imxdma_engine, ptr %42, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %56) #14, !srcloc !8
  br label %70

65:                                               ; preds = %51
  %66 = add i32 %59, 128
  %67 = getelementptr inbounds %struct.imxdma_engine, ptr %42, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %56) #14, !srcloc !8
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, ptr %57, align 4
  %72 = shl i32 %71, 6
  %73 = add i32 %72, 136
  %74 = getelementptr inbounds %struct.imxdma_engine, ptr %42, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %47) #14, !srcloc !8
  %77 = shl i32 %25, 6
  %78 = add i32 %77, 140
  %79 = getelementptr inbounds %struct.imxdma_engine, ptr %23, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 %78
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #14, !srcloc !9
  %83 = load ptr, ptr %22, align 4
  %84 = getelementptr inbounds %struct.imxdma_engine, ptr %83, i32 0, i32 8
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %98

87:                                               ; preds = %70
  %88 = load i32, ptr %21, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %87
  %91 = getelementptr %struct.imxdma_engine, ptr %1, i32 0, i32 7, i32 %16, i32 1
  %92 = load volatile i32, ptr @jiffies, align 64
  %93 = add i32 %92, 50
  %94 = tail call i32 @mod_timer(ptr noundef %91, i32 noundef %93) #14
  %95 = or i32 %82, 16389
  %96 = load ptr, ptr %79, align 4
  %97 = getelementptr i8, ptr %96, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #14, !srcloc !8
  br label %103

98:                                               ; preds = %87, %70
  %99 = and i32 %82, -2
  %100 = load ptr, ptr %79, align 4
  %101 = getelementptr i8, ptr %100, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #14, !srcloc !8
  %102 = or i32 %82, 1
  br label %103

103:                                              ; preds = %98, %90
  %104 = phi i32 [ %95, %90 ], [ %102, %98 ]
  %105 = load ptr, ptr %79, align 4
  %106 = getelementptr i8, ptr %105, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #14, !srcloc !8
  %107 = load volatile ptr, ptr %28, align 4
  %108 = icmp eq ptr %107, %28
  br i1 %108, label %141, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.imxdma_desc, ptr %107, i32 0, i32 7
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %113, label %141

113:                                              ; preds = %109
  %114 = getelementptr %struct.imxdma_engine, ptr %1, i32 0, i32 7, i32 %16, i32 4, i32 1
  %115 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %114) #14
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %113
  %118 = getelementptr %struct.imxdma_engine, ptr %1, i32 0, i32 7, i32 %16, i32 4
  tail call void @__tasklet_schedule(ptr noundef %118) #14
  br label %141

119:                                              ; preds = %35
  %120 = load ptr, ptr %22, align 4
  %121 = getelementptr inbounds %struct.imxdma_engine, ptr %120, i32 0, i32 8
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i32, ptr %21, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = getelementptr %struct.imxdma_engine, ptr %1, i32 0, i32 7, i32 %16, i32 1
  %129 = tail call i32 @del_timer(ptr noundef %128) #14
  br label %141

130:                                              ; preds = %124, %119, %31, %20
  %131 = shl i32 %25, 6
  %132 = add i32 %131, 140
  %133 = getelementptr inbounds %struct.imxdma_engine, ptr %23, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr i8, ptr %134, i32 %132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 0) #14, !srcloc !8
  %136 = getelementptr %struct.imxdma_engine, ptr %1, i32 0, i32 7, i32 %16, i32 4, i32 1
  %137 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %136) #14
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %130
  %140 = getelementptr %struct.imxdma_engine, ptr %1, i32 0, i32 7, i32 %16, i32 4
  tail call void @__tasklet_schedule(ptr noundef %140) #14
  br label %141

141:                                              ; preds = %139, %130, %127, %117, %113, %109, %103, %15
  %142 = add nuw nsw i32 %16, 1
  %143 = icmp eq i32 %142, 16
  br i1 %143, label %144, label %15

144:                                              ; preds = %141
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imxdma_err_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !9
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !9
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #14, !srcloc !9
  %13 = or i32 %12, %9
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #14, !srcloc !9
  %17 = or i32 %13, %16
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr i8, ptr %18, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #14, !srcloc !9
  %21 = or i32 %17, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %98, label %23

23:                                               ; preds = %2
  %24 = and i32 %21, %6
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #14, !srcloc !8
  br label %27

27:                                               ; preds = %95, %23
  %28 = phi i32 [ 0, %23 ], [ %96, %95 ]
  %29 = shl nuw nsw i32 1, %28
  %30 = and i32 %29, %21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %95, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr i8, ptr %33, i32 12
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #14, !srcloc !9
  %36 = and i32 %35, %29
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %29) #14, !srcloc !8
  br label %41

41:                                               ; preds = %38, %32
  %42 = phi i32 [ 1, %38 ], [ 0, %32 ]
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr i8, ptr %43, i32 16
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #14, !srcloc !9
  %46 = and i32 %45, %29
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %29) #14, !srcloc !8
  %51 = or i32 %42, 2
  br label %52

52:                                               ; preds = %48, %41
  %53 = phi i32 [ %51, %48 ], [ %42, %41 ]
  %54 = load ptr, ptr %3, align 4
  %55 = getelementptr i8, ptr %54, i32 20
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #14, !srcloc !9
  %57 = and i32 %56, %29
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %52
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr i8, ptr %60, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %29) #14, !srcloc !8
  %62 = or i32 %53, 4
  br label %63

63:                                               ; preds = %59, %52
  %64 = phi i32 [ %62, %59 ], [ %53, %52 ]
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr i8, ptr %65, i32 24
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #14, !srcloc !9
  %68 = and i32 %67, %29
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr i8, ptr %71, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %29) #14, !srcloc !8
  %73 = or i32 %64, 8
  br label %74

74:                                               ; preds = %70, %63
  %75 = phi i32 [ %73, %70 ], [ %64, %63 ]
  %76 = getelementptr %struct.imxdma_engine, ptr %1, i32 0, i32 7, i32 %28, i32 4, i32 1
  %77 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %76) #14
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = getelementptr %struct.imxdma_engine, ptr %1, i32 0, i32 7, i32 %28, i32 4
  tail call void @__tasklet_schedule(ptr noundef %80) #14
  br label %81

81:                                               ; preds = %79, %74
  %82 = load ptr, ptr %1, align 4
  %83 = and i32 %75, 1
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, ptr @.str.11, ptr @.str.10
  %86 = and i32 %75, 2
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, ptr @.str.11, ptr @.str.12
  %89 = and i32 %75, 4
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, ptr @.str.11, ptr @.str.13
  %92 = and i32 %75, 8
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, ptr @.str.11, ptr @.str.14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %82, ptr noundef nonnull @.str.9, i32 noundef %28, ptr noundef nonnull %85, ptr noundef nonnull %88, ptr noundef nonnull %91, ptr noundef nonnull %94) #15
  br label %95

95:                                               ; preds = %81, %27
  %96 = add nuw nsw i32 %28, 1
  %97 = icmp eq i32 %96, 16
  br i1 %97, label %98, label %27

98:                                               ; preds = %95, %2
  ret i32 1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imxdma_watchdog(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 6
  %7 = add i32 %6, 140
  %8 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #14, !srcloc !8
  %11 = getelementptr i8, ptr %0, i32 32
  %12 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %11) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %0, i32 28
  tail call void @__tasklet_schedule(ptr noundef %15) #14
  br label %16

16:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imxdma_tasklet(ptr noundef %0) #2 {
  %2 = alloca %struct.dmaengine_result, align 8
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.imxdma_engine, ptr %4, i32 0, i32 5
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = getelementptr i8, ptr %0, i32 40
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  br label %74

11:                                               ; preds = %1
  %12 = load volatile ptr, ptr %7, align 4
  %13 = icmp eq ptr %12, %7
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.imxdma_desc, ptr %12, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %61, label %18

18:                                               ; preds = %14, %11
  %19 = getelementptr inbounds %struct.imxdma_desc, ptr %8, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %23, !prof !10

22:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #14, !srcloc !11
  unreachable

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.imxdma_desc, ptr %8, i32 0, i32 1, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dma_chan, ptr %25, i32 0, i32 3
  store i32 %20, ptr %26, align 4
  store i32 0, ptr %19, align 4
  %27 = getelementptr i8, ptr %0, i32 208
  %28 = load i8, ptr %27, align 4, !range !12
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = getelementptr i8, ptr %0, i32 212
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.imxdma_engine, ptr %4, i32 0, i32 6, i32 %32, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -1
  store i32 %35, ptr %33, align 4
  store i8 0, ptr %27, align 4
  br label %36

36:                                               ; preds = %30, %23
  %37 = load ptr, ptr %7, align 4
  %38 = getelementptr i8, ptr %0, i32 24
  %39 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %37, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  %43 = getelementptr i8, ptr %0, i32 28
  %44 = load ptr, ptr %43, align 4
  store ptr %37, ptr %43, align 4
  store ptr %38, ptr %37, align 4
  store ptr %44, ptr %39, align 4
  store volatile ptr %37, ptr %44, align 4
  %45 = getelementptr i8, ptr %0, i32 32
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %61, label %48

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %46, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %50, ptr %52, align 4
  store volatile ptr %51, ptr %50, align 4
  %53 = getelementptr i8, ptr %0, i32 44
  %54 = load ptr, ptr %53, align 4
  store ptr %46, ptr %53, align 4
  store ptr %7, ptr %46, align 4
  store ptr %54, ptr %49, align 4
  store volatile ptr %46, ptr %54, align 4
  %55 = tail call fastcc i32 @imxdma_xfer_desc(ptr noundef %46)
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr i8, ptr %0, i32 -4
  %60 = load i32, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.imxdma_tasklet, i32 noundef %60) #15
  br label %61

61:                                               ; preds = %57, %48, %36, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  %62 = getelementptr inbounds %struct.imxdma_desc, ptr %8, i32 0, i32 1, i32 6
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.imxdma_desc, ptr %8, i32 0, i32 1, i32 7
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.imxdma_desc, ptr %8, i32 0, i32 1, i32 8
  %67 = load ptr, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store i64 0, ptr %2, align 8
  %68 = icmp eq ptr %65, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  call void %65(ptr noundef %67, ptr noundef nonnull %2) #14
  br label %73

70:                                               ; preds = %61
  %71 = icmp eq ptr %63, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %70
  tail call void %63(ptr noundef %67) #14
  br label %73

73:                                               ; preds = %72, %70, %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %74

74:                                               ; preds = %73, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imxdma_alloc_chan_resources(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 4
  %7 = getelementptr i8, ptr %0, i32 128
  store i32 %6, ptr %7, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr i8, ptr %0, i32 -16
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 -40
  %14 = getelementptr i8, ptr %0, i32 -36
  br label %15

15:                                               ; preds = %21, %12
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 120) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, ptr %9, align 4
  br label %31

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.imxdma_desc, ptr %17, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(60) %22, i8 0, i32 60, i1 false)
  tail call void @dma_async_tx_descriptor_init(ptr noundef %22, ptr noundef %0) #14
  %23 = getelementptr inbounds %struct.imxdma_desc, ptr %17, i32 0, i32 1, i32 4
  store ptr @imxdma_tx_submit, ptr %23, align 8
  %24 = getelementptr inbounds %struct.imxdma_desc, ptr %17, i32 0, i32 1, i32 1
  store i32 2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.imxdma_desc, ptr %17, i32 0, i32 2
  store i32 0, ptr %25, align 4
  %26 = load ptr, ptr %14, align 4
  store ptr %17, ptr %14, align 4
  store ptr %13, ptr %17, align 8
  %27 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %17, ptr %26, align 4
  %28 = load i32, ptr %9, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %9, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %15, label %31

31:                                               ; preds = %21, %19, %8
  %32 = phi i32 [ %10, %8 ], [ %20, %19 ], [ %29, %21 ]
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 -12, i32 %32
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imxdma_free_chan_resources(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %0, i32 -68
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.imxdma_engine, ptr %6, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 -96
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 -92
  %18 = tail call i32 @del_timer(ptr noundef %17) #14
  br label %19

19:                                               ; preds = %16, %12, %1
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !13
  %21 = getelementptr inbounds %struct.imxdma_engine, ptr %6, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #14, !srcloc !9
  %25 = shl nuw i32 1, %8
  %26 = or i32 %24, %25
  %27 = load ptr, ptr %21, align 4
  %28 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #14, !srcloc !8
  %29 = shl i32 %8, 6
  %30 = add i32 %29, 140
  %31 = load ptr, ptr %21, align 4
  %32 = getelementptr i8, ptr %31, i32 %30
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #14, !srcloc !9
  %34 = and i32 %33, -2
  %35 = load ptr, ptr %21, align 4
  %36 = getelementptr i8, ptr %35, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #14, !srcloc !8
  %37 = load ptr, ptr %21, align 4
  %38 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %25) #14, !srcloc !8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #14, !srcloc !14
  %39 = getelementptr i8, ptr %0, i32 -24
  %40 = getelementptr i8, ptr %0, i32 -40
  %41 = load volatile ptr, ptr %39, align 4
  %42 = icmp eq ptr %41, %39
  br i1 %42, label %49, label %43

43:                                               ; preds = %19
  %44 = getelementptr i8, ptr %0, i32 -36
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %0, i32 -20
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %45, ptr %48, align 4
  store ptr %41, ptr %45, align 4
  store ptr %40, ptr %47, align 4
  store ptr %47, ptr %44, align 4
  store volatile ptr %39, ptr %39, align 4
  store ptr %39, ptr %46, align 4
  br label %49

49:                                               ; preds = %43, %19
  %50 = getelementptr i8, ptr %0, i32 -32
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %0, i32 -36
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %0, i32 -28
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %55, ptr %58, align 4
  store ptr %51, ptr %55, align 4
  store ptr %40, ptr %57, align 4
  store ptr %57, ptr %54, align 4
  store volatile ptr %50, ptr %50, align 4
  store ptr %50, ptr %56, align 4
  br label %59

59:                                               ; preds = %53, %49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  %60 = load ptr, ptr %40, align 4
  %61 = icmp eq ptr %60, %40
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = getelementptr i8, ptr %0, i32 -16
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi ptr [ %60, %62 ], [ %66, %64 ]
  %66 = load ptr, ptr %65, align 4
  tail call void @kfree(ptr noundef %65) #14
  %67 = load i32, ptr %63, align 4
  %68 = add i32 %67, -1
  store i32 %68, ptr %63, align 4
  %69 = icmp eq ptr %66, %40
  br i1 %69, label %70, label %64

70:                                               ; preds = %64, %59
  store volatile ptr %40, ptr %40, align 4
  %71 = getelementptr i8, ptr %0, i32 -36
  store ptr %40, ptr %71, align 4
  %72 = getelementptr i8, ptr %0, i32 132
  %73 = load ptr, ptr %72, align 4
  tail call void @kfree(ptr noundef %73) #14
  store ptr null, ptr %72, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imxdma_tx_status(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
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
  br i1 %14, label %19, label %17

17:                                               ; preds = %13
  %18 = or i1 %16, %15
  br i1 %18, label %22, label %21

19:                                               ; preds = %13
  %20 = and i1 %16, %15
  br i1 %20, label %22, label %21

21:                                               ; preds = %19, %17
  br label %22

22:                                               ; preds = %21, %19, %17
  %23 = phi i32 [ 1, %21 ], [ 0, %17 ], [ 0, %19 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @imxdma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = getelementptr i8, ptr %0, i32 -96
  %8 = getelementptr i8, ptr %0, i32 -40
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %108, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %0, i32 -24
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.imxdma_desc, ptr %13, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %108, label %19

19:                                               ; preds = %15, %11
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %21, %19
  %22 = phi i32 [ %27, %21 ], [ 0, %19 ]
  %23 = phi i32 [ %28, %21 ], [ 0, %19 ]
  %24 = phi ptr [ %29, %21 ], [ %1, %19 ]
  %25 = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %22
  %28 = add nuw i32 %23, 1
  %29 = tail call ptr @sg_next(ptr noundef %24) #14
  %30 = icmp eq i32 %28, %2
  br i1 %30, label %31, label %21

31:                                               ; preds = %21, %19
  %32 = phi i32 [ 0, %19 ], [ %27, %21 ]
  %33 = getelementptr i8, ptr %0, i32 -72
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq i32 %3, 2
  %36 = select i1 %35, i32 160, i32 164
  %37 = select i1 %35, i32 176, i32 180
  %38 = select i1 %35, i32 168, i32 172
  %39 = getelementptr i8, ptr %0, i32 %36
  %40 = getelementptr i8, ptr %0, i32 %37
  %41 = getelementptr i8, ptr %0, i32 %38
  %42 = load i32, ptr %40, align 4
  %43 = load i32, ptr %39, align 4
  %44 = getelementptr i8, ptr %0, i32 -8
  store i32 %43, ptr %44, align 4
  %45 = getelementptr i8, ptr %0, i32 -4
  store i32 %42, ptr %45, align 4
  %46 = load i32, ptr %41, align 4
  %47 = getelementptr i8, ptr %0, i32 -12
  store i32 %46, ptr %47, align 4
  %48 = icmp eq i32 %46, 2
  %49 = select i1 %48, i32 2080, i32 2048
  %50 = icmp eq i32 %46, 1
  %51 = select i1 %50, i32 2064, i32 %49
  store i32 0, ptr %7, align 4
  %52 = or i32 %51, 8
  %53 = getelementptr i8, ptr %0, i32 136
  store i32 %52, ptr %53, align 4
  %54 = shl nuw nsw i32 %51, 2
  %55 = or i32 %54, 8
  %56 = getelementptr i8, ptr %0, i32 140
  store i32 %55, ptr %56, align 4
  %57 = getelementptr i8, ptr %0, i32 128
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i8, ptr %0, i32 -68
  %60 = load i32, ptr %59, align 4
  %61 = shl i32 %60, 6
  %62 = add i32 %61, 144
  %63 = getelementptr inbounds %struct.imxdma_engine, ptr %34, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %58) #14, !srcloc !8
  %66 = load i32, ptr %45, align 4
  %67 = load i32, ptr %47, align 4
  %68 = mul i32 %67, %66
  %69 = load i32, ptr %59, align 4
  %70 = shl i32 %69, 6
  %71 = add i32 %70, 148
  %72 = load ptr, ptr %63, align 4
  %73 = getelementptr i8, ptr %72, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %68) #14, !srcloc !8
  %74 = load i32, ptr %47, align 4
  switch i32 %74, label %108 [
    i32 4, label %75
    i32 2, label %85
    i32 1, label %95
  ]

75:                                               ; preds = %31
  %76 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 3
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %108

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 3
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %95, label %108

85:                                               ; preds = %31
  %86 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %90, %80, %31
  %96 = getelementptr inbounds %struct.imxdma_desc, ptr %9, i32 0, i32 7
  store i32 2, ptr %96, align 4
  %97 = getelementptr inbounds %struct.imxdma_desc, ptr %9, i32 0, i32 13
  store ptr %1, ptr %97, align 4
  %98 = getelementptr inbounds %struct.imxdma_desc, ptr %9, i32 0, i32 14
  store i32 %2, ptr %98, align 4
  %99 = getelementptr inbounds %struct.imxdma_desc, ptr %9, i32 0, i32 5
  store i32 %32, ptr %99, align 4
  %100 = getelementptr inbounds %struct.imxdma_desc, ptr %9, i32 0, i32 6
  store i32 %3, ptr %100, align 4
  %101 = load i32, ptr %44, align 4
  %102 = getelementptr inbounds %struct.imxdma_desc, ptr %9, i32 0, i32 4
  %103 = getelementptr inbounds %struct.imxdma_desc, ptr %9, i32 0, i32 3
  %104 = select i1 %35, ptr %103, ptr %102
  store i32 %101, ptr %104, align 4
  %105 = getelementptr inbounds %struct.imxdma_desc, ptr %9, i32 0, i32 1
  %106 = getelementptr inbounds %struct.imxdma_desc, ptr %9, i32 0, i32 1, i32 6
  store ptr null, ptr %106, align 4
  %107 = getelementptr inbounds %struct.imxdma_desc, ptr %9, i32 0, i32 1, i32 8
  store ptr null, ptr %107, align 4
  br label %108

108:                                              ; preds = %95, %90, %85, %80, %75, %31, %15, %6
  %109 = phi ptr [ %105, %95 ], [ null, %6 ], [ null, %80 ], [ null, %75 ], [ null, %90 ], [ null, %85 ], [ null, %31 ], [ null, %15 ]
  ret ptr %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @imxdma_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = getelementptr i8, ptr %0, i32 -96
  %8 = udiv i32 %2, %3
  %9 = getelementptr i8, ptr %0, i32 -40
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %117, label %12

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %0, i32 -24
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.imxdma_desc, ptr %14, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %117, label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr i8, ptr %0, i32 132
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #14
  %23 = add i32 %8, 1
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 20) #14
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %26, label %27, !prof !10

26:                                               ; preds = %20
  store ptr null, ptr %21, align 4
  br label %117

27:                                               ; preds = %20
  %28 = extractvalue { i32, i1 } %24, 0
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 2848) #17
  store ptr %29, ptr %21, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %117, label %31

31:                                               ; preds = %27
  tail call void @sg_init_table(ptr noundef nonnull %29, i32 noundef %8) #14
  %32 = icmp ugt i32 %3, %2
  br i1 %32, label %51, label %33

33:                                               ; preds = %31
  %34 = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i32 [ %48, %35 ], [ %1, %33 ]
  %37 = phi i32 [ %49, %35 ], [ 0, %33 ]
  %38 = load ptr, ptr %21, align 4
  %39 = getelementptr %struct.scatterlist, ptr %38, i32 %37
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 3
  store i32 %41, ptr %39, align 4
  %42 = load ptr, ptr %21, align 4
  %43 = getelementptr %struct.scatterlist, ptr %42, i32 %37, i32 1
  store i32 0, ptr %43, align 4
  %44 = load ptr, ptr %21, align 4
  %45 = getelementptr %struct.scatterlist, ptr %44, i32 %37, i32 3
  store i32 %36, ptr %45, align 4
  %46 = load ptr, ptr %21, align 4
  %47 = getelementptr %struct.scatterlist, ptr %46, i32 %37, i32 4
  store i32 %3, ptr %47, align 4
  %48 = add i32 %36, %3
  %49 = add nuw i32 %37, 1
  %50 = icmp eq i32 %49, %34
  br i1 %50, label %51, label %35

51:                                               ; preds = %35, %31
  %52 = load ptr, ptr %21, align 4
  %53 = getelementptr %struct.scatterlist, ptr %52, i32 %8
  %54 = getelementptr %struct.scatterlist, ptr %52, i32 %8, i32 1
  store i32 0, ptr %54, align 4
  %55 = getelementptr %struct.scatterlist, ptr %52, i32 %8, i32 2
  store i32 0, ptr %55, align 4
  %56 = ptrtoint ptr %52 to i32
  %57 = and i32 %56, -4
  %58 = or i32 %57, 1
  store i32 %58, ptr %53, align 4
  %59 = getelementptr inbounds %struct.imxdma_desc, ptr %10, i32 0, i32 7
  store i32 3, ptr %59, align 4
  %60 = load ptr, ptr %21, align 4
  %61 = getelementptr inbounds %struct.imxdma_desc, ptr %10, i32 0, i32 13
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.imxdma_desc, ptr %10, i32 0, i32 14
  store i32 %8, ptr %62, align 4
  %63 = getelementptr inbounds %struct.imxdma_desc, ptr %10, i32 0, i32 5
  store i32 -1, ptr %63, align 4
  %64 = getelementptr inbounds %struct.imxdma_desc, ptr %10, i32 0, i32 6
  store i32 %4, ptr %64, align 4
  %65 = icmp eq i32 %4, 2
  %66 = getelementptr i8, ptr %0, i32 -8
  %67 = load i32, ptr %66, align 4
  br i1 %65, label %68, label %70

68:                                               ; preds = %51
  %69 = getelementptr inbounds %struct.imxdma_desc, ptr %10, i32 0, i32 3
  br label %72

70:                                               ; preds = %51
  %71 = getelementptr inbounds %struct.imxdma_desc, ptr %10, i32 0, i32 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi ptr [ %69, %68 ], [ %71, %70 ]
  %74 = phi i32 [ 160, %68 ], [ 164, %70 ]
  %75 = phi i32 [ 176, %68 ], [ 180, %70 ]
  %76 = phi i32 [ 168, %68 ], [ 172, %70 ]
  store i32 %67, ptr %73, align 4
  %77 = getelementptr inbounds %struct.imxdma_desc, ptr %10, i32 0, i32 1, i32 6
  store ptr null, ptr %77, align 4
  %78 = getelementptr inbounds %struct.imxdma_desc, ptr %10, i32 0, i32 1, i32 8
  store ptr null, ptr %78, align 4
  %79 = getelementptr i8, ptr %0, i32 %74
  %80 = getelementptr i8, ptr %0, i32 %75
  %81 = getelementptr i8, ptr %0, i32 %76
  %82 = getelementptr i8, ptr %0, i32 -72
  %83 = load ptr, ptr %82, align 4
  %84 = load i32, ptr %80, align 4
  %85 = load i32, ptr %79, align 4
  %86 = getelementptr i8, ptr %0, i32 -8
  store i32 %85, ptr %86, align 4
  %87 = getelementptr i8, ptr %0, i32 -4
  store i32 %84, ptr %87, align 4
  %88 = getelementptr inbounds %struct.imxdma_desc, ptr %10, i32 0, i32 1
  %89 = load i32, ptr %81, align 4
  %90 = getelementptr i8, ptr %0, i32 -12
  store i32 %89, ptr %90, align 4
  %91 = icmp eq i32 %89, 2
  %92 = select i1 %91, i32 2080, i32 2048
  %93 = icmp eq i32 %89, 1
  %94 = select i1 %93, i32 2064, i32 %92
  store i32 0, ptr %7, align 4
  %95 = or i32 %94, 8
  %96 = getelementptr i8, ptr %0, i32 136
  store i32 %95, ptr %96, align 4
  %97 = shl nuw nsw i32 %94, 2
  %98 = or i32 %97, 8
  %99 = getelementptr i8, ptr %0, i32 140
  store i32 %98, ptr %99, align 4
  %100 = getelementptr i8, ptr %0, i32 128
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr i8, ptr %0, i32 -68
  %103 = load i32, ptr %102, align 4
  %104 = shl i32 %103, 6
  %105 = add i32 %104, 144
  %106 = getelementptr inbounds %struct.imxdma_engine, ptr %83, i32 0, i32 2
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %101) #14, !srcloc !8
  %109 = load i32, ptr %87, align 4
  %110 = load i32, ptr %90, align 4
  %111 = mul i32 %110, %109
  %112 = load i32, ptr %102, align 4
  %113 = shl i32 %112, 6
  %114 = add i32 %113, 148
  %115 = load ptr, ptr %106, align 4
  %116 = getelementptr i8, ptr %115, i32 %114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %111) #14, !srcloc !8
  br label %117

117:                                              ; preds = %72, %27, %26, %16, %6
  %118 = phi ptr [ %88, %72 ], [ null, %6 ], [ null, %27 ], [ null, %26 ], [ null, %16 ]
  ret ptr %118
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @imxdma_prep_dma_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #7 {
  %6 = getelementptr i8, ptr %0, i32 -40
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 -24
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.imxdma_desc, ptr %11, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %28, label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 7
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 3
  store i32 %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 4
  store i32 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 5
  store i32 %3, ptr %21, align 4
  %22 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 6
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 8
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 9
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 1
  %26 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 1, i32 6
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 1, i32 8
  store ptr null, ptr %27, align 4
  br label %28

28:                                               ; preds = %17, %13, %5
  %29 = phi ptr [ %25, %17 ], [ null, %5 ], [ null, %13 ]
  ret ptr %29
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @imxdma_prep_dma_interleaved(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -40
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %60, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -24
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.imxdma_desc, ptr %9, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %60, label %15

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %60, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 7
  store i32 1, ptr %28, align 4
  %29 = load i32, ptr %1, align 4
  %30 = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 4
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 10
  store i32 %35, ptr %36, align 4
  %37 = load i32, ptr %20, align 4
  %38 = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 11
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %35
  %42 = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 12
  store i32 %41, ptr %42, align 4
  %43 = mul i32 %37, %35
  %44 = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 5
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 6
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 8
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 9
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 5
  %49 = load i8, ptr %48, align 2, !range !12
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i32 0, i32 1024
  store i32 %51, ptr %47, align 4
  %52 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 6
  %53 = load i8, ptr %52, align 1, !range !12
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %27
  store i32 1024, ptr %46, align 4
  br label %56

56:                                               ; preds = %55, %27
  %57 = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 1
  %58 = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 1, i32 6
  store ptr null, ptr %58, align 4
  %59 = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 1, i32 8
  store ptr null, ptr %59, align 4
  br label %60

60:                                               ; preds = %56, %23, %19, %15, %11, %3
  %61 = phi ptr [ %57, %56 ], [ null, %3 ], [ null, %23 ], [ null, %19 ], [ null, %15 ], [ null, %11 ]
  ret ptr %61
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @imxdma_config(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr i8, ptr %0, i32 156
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %3, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imxdma_terminate_all(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -68
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -96
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 -92
  %15 = tail call i32 @del_timer(ptr noundef %14) #14
  br label %16

16:                                               ; preds = %13, %9, %1
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !13
  %18 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #14, !srcloc !9
  %22 = shl nuw i32 1, %5
  %23 = or i32 %21, %22
  %24 = load ptr, ptr %18, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #14, !srcloc !8
  %26 = shl i32 %5, 6
  %27 = add i32 %26, 140
  %28 = load ptr, ptr %18, align 4
  %29 = getelementptr i8, ptr %28, i32 %27
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #14, !srcloc !9
  %31 = and i32 %30, -2
  %32 = load ptr, ptr %18, align 4
  %33 = getelementptr i8, ptr %32, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #14, !srcloc !8
  %34 = load ptr, ptr %18, align 4
  %35 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %22) #14, !srcloc !8
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #14, !srcloc !14
  %36 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 5
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #14
  %38 = getelementptr i8, ptr %0, i32 -24
  %39 = getelementptr i8, ptr %0, i32 -40
  %40 = load volatile ptr, ptr %38, align 4
  %41 = icmp eq ptr %40, %38
  br i1 %41, label %48, label %42

42:                                               ; preds = %16
  %43 = getelementptr i8, ptr %0, i32 -36
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %0, i32 -20
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %44, ptr %47, align 4
  store ptr %40, ptr %44, align 4
  store ptr %39, ptr %46, align 4
  store ptr %46, ptr %43, align 4
  store volatile ptr %38, ptr %38, align 4
  store ptr %38, ptr %45, align 4
  br label %48

48:                                               ; preds = %42, %16
  %49 = getelementptr i8, ptr %0, i32 -32
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %0, i32 -36
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %0, i32 -28
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %54, ptr %57, align 4
  store ptr %50, ptr %54, align 4
  store ptr %39, ptr %56, align 4
  store ptr %56, ptr %53, align 4
  store volatile ptr %49, ptr %49, align 4
  store ptr %49, ptr %55, align 4
  br label %58

58:                                               ; preds = %52, %48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imxdma_issue_pending(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = getelementptr i8, ptr %0, i32 -24
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -32
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @imxdma_xfer_desc(ptr noundef %11)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %0, i32 -68
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.imxdma_issue_pending, i32 noundef %19) #15
  br label %28

20:                                               ; preds = %13
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  %26 = getelementptr i8, ptr %0, i32 -20
  %27 = load ptr, ptr %26, align 4
  store ptr %21, ptr %26, align 4
  store ptr %6, ptr %21, align 4
  store ptr %27, ptr %22, align 4
  store volatile ptr %21, ptr %27, align 4
  br label %28

28:                                               ; preds = %20, %16, %9, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @imxdma_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.imxdma_filter_data, align 8
  %4 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store ptr %7, ptr %3, align 8
  %8 = icmp eq i32 %5, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.imxdma_filter_data, ptr %3, i32 0, i32 1
  %11 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.imxdma_engine, ptr %7, i32 0, i32 1, i32 6
  %14 = call ptr @__dma_request_channel(ptr noundef %13, ptr noundef nonnull @imxdma_filter_fn, ptr noundef nonnull %3, ptr noundef null) #14
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi ptr [ %14, %9 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @imxdma_xfer_desc(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -72
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %310 [
    i32 1, label %8
    i32 0, label %105
    i32 3, label %140
    i32 2, label %140
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 10
  %10 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 11
  %11 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 12
  %12 = getelementptr %struct.imxdma_engine, ptr %5, i32 0, i32 6, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %9, align 4
  br label %56

17:                                               ; preds = %8
  %18 = getelementptr %struct.imxdma_engine, ptr %5, i32 0, i32 6, i32 0
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = load i32, ptr %9, align 4
  %22 = icmp eq i32 %21, %20
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = getelementptr %struct.imxdma_engine, ptr %5, i32 0, i32 6, i32 0, i32 1
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = load i32, ptr %10, align 4
  %28 = icmp eq i32 %27, %26
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = getelementptr %struct.imxdma_engine, ptr %5, i32 0, i32 6, i32 0, i32 2
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = load i32, ptr %11, align 4
  %34 = icmp eq i32 %33, %32
  br i1 %34, label %56, label %35

35:                                               ; preds = %29, %23, %17
  %36 = getelementptr %struct.imxdma_engine, ptr %5, i32 0, i32 6, i32 1, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = getelementptr %struct.imxdma_engine, ptr %5, i32 0, i32 6, i32 1
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = icmp eq i32 %21, %42
  br i1 %43, label %44, label %310

44:                                               ; preds = %39
  %45 = getelementptr %struct.imxdma_engine, ptr %5, i32 0, i32 6, i32 1, i32 1
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = load i32, ptr %10, align 4
  %49 = icmp eq i32 %48, %47
  br i1 %49, label %50, label %310

50:                                               ; preds = %44
  %51 = getelementptr %struct.imxdma_engine, ptr %5, i32 0, i32 6, i32 1, i32 2
  %52 = load i16, ptr %51, align 4
  %53 = zext i16 %52 to i32
  %54 = load i32, ptr %11, align 4
  %55 = icmp eq i32 %54, %53
  br i1 %55, label %56, label %310

56:                                               ; preds = %50, %35, %29, %15
  %57 = phi i32 [ %13, %29 ], [ %13, %15 ], [ %37, %35 ], [ %37, %50 ]
  %58 = phi i32 [ %20, %29 ], [ %16, %15 ], [ %21, %35 ], [ %21, %50 ]
  %59 = phi i1 [ true, %29 ], [ true, %15 ], [ false, %35 ], [ false, %50 ]
  %60 = phi i32 [ 0, %29 ], [ 0, %15 ], [ 1, %35 ], [ 1, %50 ]
  %61 = trunc i32 %58 to i16
  %62 = getelementptr %struct.imxdma_engine, ptr %5, i32 0, i32 6, i32 %60
  store i16 %61, ptr %62, align 4
  %63 = load i32, ptr %10, align 4
  %64 = trunc i32 %63 to i16
  %65 = getelementptr %struct.imxdma_engine, ptr %5, i32 0, i32 6, i32 %60, i32 1
  store i16 %64, ptr %65, align 2
  %66 = load i32, ptr %11, align 4
  %67 = trunc i32 %66 to i16
  %68 = getelementptr %struct.imxdma_engine, ptr %5, i32 0, i32 6, i32 %60, i32 2
  store i16 %67, ptr %68, align 4
  %69 = getelementptr %struct.imxdma_engine, ptr %5, i32 0, i32 6, i32 %60, i32 3
  %70 = add i32 %57, 1
  store i32 %70, ptr %69, align 4
  %71 = getelementptr i8, ptr %3, i32 148
  store i32 %60, ptr %71, align 4
  %72 = getelementptr i8, ptr %3, i32 144
  store i8 1, ptr %72, align 4
  %73 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 9
  %74 = load i32, ptr %73, align 4
  br i1 %59, label %75, label %90

75:                                               ; preds = %56
  %76 = and i32 %74, -257
  store i32 %76, ptr %73, align 4
  %77 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 8
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, -257
  store i32 %79, ptr %77, align 4
  %80 = load i32, ptr %9, align 4
  %81 = getelementptr inbounds %struct.imxdma_engine, ptr %5, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %82, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %80) #14, !srcloc !8
  %84 = load i32, ptr %10, align 4
  %85 = load ptr, ptr %81, align 4
  %86 = getelementptr i8, ptr %85, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #14, !srcloc !8
  %87 = load i32, ptr %11, align 4
  %88 = load ptr, ptr %81, align 4
  %89 = getelementptr i8, ptr %88, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #14, !srcloc !8
  br label %105

90:                                               ; preds = %56
  %91 = or i32 %74, 256
  store i32 %91, ptr %73, align 4
  %92 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 8
  %93 = load i32, ptr %92, align 4
  %94 = or i32 %93, 256
  store i32 %94, ptr %92, align 4
  %95 = load i32, ptr %9, align 4
  %96 = getelementptr inbounds %struct.imxdma_engine, ptr %5, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i8, ptr %97, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %95) #14, !srcloc !8
  %99 = load i32, ptr %10, align 4
  %100 = load ptr, ptr %96, align 4
  %101 = getelementptr i8, ptr %100, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #14, !srcloc !8
  %102 = load i32, ptr %11, align 4
  %103 = load ptr, ptr %96, align 4
  %104 = getelementptr i8, ptr %103, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #14, !srcloc !8
  br label %105

105:                                              ; preds = %90, %75, %1
  %106 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr i8, ptr %3, i32 -68
  %109 = load i32, ptr %108, align 4
  %110 = shl i32 %109, 6
  %111 = add i32 %110, 128
  %112 = getelementptr inbounds %struct.imxdma_engine, ptr %5, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 %111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %107) #14, !srcloc !8
  %115 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = load i32, ptr %108, align 4
  %118 = shl i32 %117, 6
  %119 = add i32 %118, 132
  %120 = load ptr, ptr %112, align 4
  %121 = getelementptr i8, ptr %120, i32 %119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %116) #14, !srcloc !8
  %122 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 9
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 8
  %125 = load i32, ptr %124, align 4
  %126 = shl i32 %125, 2
  %127 = or i32 %126, %123
  %128 = load i32, ptr %108, align 4
  %129 = shl i32 %128, 6
  %130 = add i32 %129, 140
  %131 = load ptr, ptr %112, align 4
  %132 = getelementptr i8, ptr %131, i32 %130
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %127) #14, !srcloc !8
  %133 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 5
  %134 = load i32, ptr %133, align 4
  %135 = load i32, ptr %108, align 4
  %136 = shl i32 %135, 6
  %137 = add i32 %136, 136
  %138 = load ptr, ptr %112, align 4
  %139 = getelementptr i8, ptr %138, i32 %137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %134) #14, !srcloc !8
  br label %220

140:                                              ; preds = %1, %1
  %141 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 6
  %142 = load i32, ptr %141, align 4
  switch i32 %142, label %177 [
    i32 2, label %143
    i32 1, label %160
  ]

143:                                              ; preds = %140
  %144 = getelementptr i8, ptr %3, i32 -8
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr i8, ptr %3, i32 -68
  %147 = load i32, ptr %146, align 4
  %148 = shl i32 %147, 6
  %149 = add i32 %148, 128
  %150 = getelementptr inbounds %struct.imxdma_engine, ptr %5, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr i8, ptr %151, i32 %149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %145) #14, !srcloc !8
  %153 = getelementptr i8, ptr %3, i32 136
  %154 = load i32, ptr %153, align 4
  %155 = load i32, ptr %146, align 4
  %156 = shl i32 %155, 6
  %157 = add i32 %156, 140
  %158 = load ptr, ptr %150, align 4
  %159 = getelementptr i8, ptr %158, i32 %157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %154) #14, !srcloc !8
  br label %181

160:                                              ; preds = %140
  %161 = getelementptr i8, ptr %3, i32 -8
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr i8, ptr %3, i32 -68
  %164 = load i32, ptr %163, align 4
  %165 = shl i32 %164, 6
  %166 = add i32 %165, 132
  %167 = getelementptr inbounds %struct.imxdma_engine, ptr %5, i32 0, i32 2
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr i8, ptr %168, i32 %166
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %162) #14, !srcloc !8
  %170 = getelementptr i8, ptr %3, i32 140
  %171 = load i32, ptr %170, align 4
  %172 = load i32, ptr %163, align 4
  %173 = shl i32 %172, 6
  %174 = add i32 %173, 140
  %175 = load ptr, ptr %167, align 4
  %176 = getelementptr i8, ptr %175, i32 %174
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %171) #14, !srcloc !8
  br label %181

177:                                              ; preds = %140
  %178 = load ptr, ptr %5, align 4
  %179 = getelementptr i8, ptr %3, i32 -68
  %180 = load i32, ptr %179, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.imxdma_xfer_desc, i32 noundef %180) #15
  br label %310

181:                                              ; preds = %160, %143
  %182 = load ptr, ptr %2, align 4
  %183 = getelementptr i8, ptr %182, i32 -72
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 13
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 5
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds %struct.scatterlist, ptr %186, i32 0, i32 4
  %190 = load i32, ptr %189, align 4
  %191 = tail call i32 @llvm.umin.i32(i32 %188, i32 %190) #14
  %192 = icmp eq i32 %188, -1
  br i1 %192, label %195, label %193

193:                                              ; preds = %181
  %194 = sub i32 %188, %191
  store i32 %194, ptr %187, align 4
  br label %195

195:                                              ; preds = %193, %181
  %196 = load i32, ptr %141, align 4
  %197 = icmp eq i32 %196, 2
  %198 = getelementptr inbounds %struct.scatterlist, ptr %186, i32 0, i32 3
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr i8, ptr %182, i32 -68
  %201 = load i32, ptr %200, align 4
  %202 = shl i32 %201, 6
  br i1 %197, label %203, label %208

203:                                              ; preds = %195
  %204 = add i32 %202, 132
  %205 = getelementptr inbounds %struct.imxdma_engine, ptr %184, i32 0, i32 2
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr i8, ptr %206, i32 %204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 %199) #14, !srcloc !8
  br label %213

208:                                              ; preds = %195
  %209 = add i32 %202, 128
  %210 = getelementptr inbounds %struct.imxdma_engine, ptr %184, i32 0, i32 2
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr i8, ptr %211, i32 %209
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 %199) #14, !srcloc !8
  br label %213

213:                                              ; preds = %208, %203
  %214 = load i32, ptr %200, align 4
  %215 = shl i32 %214, 6
  %216 = add i32 %215, 136
  %217 = getelementptr inbounds %struct.imxdma_engine, ptr %184, i32 0, i32 2
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr i8, ptr %218, i32 %216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 %191) #14, !srcloc !8
  br label %220

220:                                              ; preds = %213, %105
  %221 = load ptr, ptr %2, align 4
  %222 = getelementptr i8, ptr %221, i32 -96
  %223 = getelementptr i8, ptr %221, i32 -72
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr i8, ptr %221, i32 -68
  %226 = load i32, ptr %225, align 4
  %227 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !13
  %228 = shl nuw i32 1, %226
  %229 = getelementptr inbounds %struct.imxdma_engine, ptr %224, i32 0, i32 2
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr i8, ptr %230, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %228) #14, !srcloc !8
  %232 = load ptr, ptr %229, align 4
  %233 = getelementptr i8, ptr %232, i32 8
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #14, !srcloc !9
  %235 = xor i32 %228, -1
  %236 = and i32 %234, %235
  %237 = load ptr, ptr %229, align 4
  %238 = getelementptr i8, ptr %237, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %236) #14, !srcloc !8
  %239 = shl i32 %226, 6
  %240 = add i32 %239, 140
  %241 = load ptr, ptr %229, align 4
  %242 = getelementptr i8, ptr %241, i32 %240
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %242) #14, !srcloc !9
  %244 = or i32 %243, 16385
  %245 = load ptr, ptr %229, align 4
  %246 = getelementptr i8, ptr %245, i32 %240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %244) #14, !srcloc !8
  %247 = getelementptr inbounds %struct.imxdma_engine, ptr %224, i32 0, i32 8
  %248 = load i32, ptr %247, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %309, label %250

250:                                              ; preds = %220
  %251 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 13
  %252 = load ptr, ptr %251, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %309, label %254

254:                                              ; preds = %250
  %255 = load ptr, ptr %223, align 4
  %256 = getelementptr inbounds %struct.imxdma_engine, ptr %255, i32 0, i32 8
  %257 = load i32, ptr %256, align 4
  %258 = icmp eq i32 %257, 2
  br i1 %258, label %259, label %309

259:                                              ; preds = %254
  %260 = load i32, ptr %222, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %309, label %262

262:                                              ; preds = %259
  %263 = tail call ptr @sg_next(ptr noundef nonnull %252) #14
  store ptr %263, ptr %251, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %309, label %265

265:                                              ; preds = %262
  %266 = load ptr, ptr %2, align 4
  %267 = getelementptr i8, ptr %266, i32 -72
  %268 = load ptr, ptr %267, align 4
  %269 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 5
  %270 = load i32, ptr %269, align 4
  %271 = getelementptr inbounds %struct.scatterlist, ptr %263, i32 0, i32 4
  %272 = load i32, ptr %271, align 4
  %273 = tail call i32 @llvm.umin.i32(i32 %270, i32 %272) #14
  %274 = icmp eq i32 %270, -1
  br i1 %274, label %277, label %275

275:                                              ; preds = %265
  %276 = sub i32 %270, %273
  store i32 %276, ptr %269, align 4
  br label %277

277:                                              ; preds = %275, %265
  %278 = getelementptr inbounds %struct.imxdma_desc, ptr %0, i32 0, i32 6
  %279 = load i32, ptr %278, align 4
  %280 = icmp eq i32 %279, 2
  %281 = getelementptr inbounds %struct.scatterlist, ptr %263, i32 0, i32 3
  %282 = load i32, ptr %281, align 4
  %283 = getelementptr i8, ptr %266, i32 -68
  %284 = load i32, ptr %283, align 4
  %285 = shl i32 %284, 6
  br i1 %280, label %286, label %291

286:                                              ; preds = %277
  %287 = add i32 %285, 132
  %288 = getelementptr inbounds %struct.imxdma_engine, ptr %268, i32 0, i32 2
  %289 = load ptr, ptr %288, align 4
  %290 = getelementptr i8, ptr %289, i32 %287
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 %282) #14, !srcloc !8
  br label %296

291:                                              ; preds = %277
  %292 = add i32 %285, 128
  %293 = getelementptr inbounds %struct.imxdma_engine, ptr %268, i32 0, i32 2
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr i8, ptr %294, i32 %292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %295, i32 %282) #14, !srcloc !8
  br label %296

296:                                              ; preds = %291, %286
  %297 = load i32, ptr %283, align 4
  %298 = shl i32 %297, 6
  %299 = add i32 %298, 136
  %300 = getelementptr inbounds %struct.imxdma_engine, ptr %268, i32 0, i32 2
  %301 = load ptr, ptr %300, align 4
  %302 = getelementptr i8, ptr %301, i32 %299
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %302, i32 %273) #14, !srcloc !8
  %303 = load ptr, ptr %229, align 4
  %304 = getelementptr i8, ptr %303, i32 %240
  %305 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %304) #14, !srcloc !9
  %306 = or i32 %305, 16388
  %307 = load ptr, ptr %229, align 4
  %308 = getelementptr i8, ptr %307, i32 %240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %308, i32 %306) #14, !srcloc !8
  br label %309

309:                                              ; preds = %296, %262, %259, %254, %250, %220
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %227) #14, !srcloc !14
  br label %310

310:                                              ; preds = %309, %177, %50, %44, %39, %1
  %311 = phi i32 [ 0, %309 ], [ -22, %177 ], [ -22, %1 ], [ -16, %50 ], [ -16, %44 ], [ -16, %39 ]
  ret i32 %311
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imxdma_tx_submit(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -72
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.imxdma_engine, ptr %5, i32 0, i32 5
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %8 = getelementptr i8, ptr %3, i32 -40
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %3, i32 -32
  %11 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  %15 = getelementptr i8, ptr %3, i32 -28
  %16 = load ptr, ptr %15, align 4
  store ptr %9, ptr %15, align 4
  store ptr %10, ptr %9, align 4
  store ptr %16, ptr %11, align 4
  store volatile ptr %9, ptr %16, align 4
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.dma_chan, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 1) #14
  store i32 %21, ptr %18, align 4
  store i32 %21, ptr %0, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #14
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @imxdma_filter_fn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #13 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.imxdma_filter_data, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 128
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 14
  store ptr null, ptr %13, align 4
  br label %14

14:                                               ; preds = %9, %2
  ret i1 %8
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

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
!8 = !{i64 4633941}
!9 = !{i64 4634359}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2153117656, i64 2153118143, i64 2153117693, i64 2153117749, i64 2153117783, i64 2153117807, i64 2153117848, i64 2153117869, i64 2153117897, i64 2153117931}
!12 = !{i8 0, i8 2}
!13 = !{i64 779035, i64 779096}
!14 = !{i64 782052}
!15 = !{i64 2153118592}
